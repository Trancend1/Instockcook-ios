import Foundation
import SwiftUI

public class FridgeViewModel: ObservableObject {
    static let shared = FridgeViewModel()
    
    @Published var selectedIngredients: [Ingredient] = [] {
        didSet {
            saveIngredients()
        }
    }
    @Published var isPresentingFridge = false
    @Published var editingIngredient: Ingredient?
    
    private let userDefaults = UserDefaults.standard
    private let ingredientsKey = "savedIngredients"
    
    private init() {
        loadSavedIngredients()
    }
    
    func addIngredient(_ ingredient: Ingredient) {
        if !selectedIngredients.contains(where: { $0.id == ingredient.id }) {
            selectedIngredients.append(ingredient)
            print("✅ Added ingredient: \(ingredient.name) - \(ingredient.quantity) \(ingredient.unit)")
        }
    }
    
    func deleteIngredient(_ ingredient: Ingredient) {
        selectedIngredients.removeAll { $0.id == ingredient.id }
        print("🗑️ Deleted ingredient: \(ingredient.name)")
    }
    
    func updateIngredientQuantity(for ingredient: Ingredient, newQuantity: Double) {
        if let index = selectedIngredients.firstIndex(where: { $0.id == ingredient.id }) {
            selectedIngredients[index].quantity = newQuantity
            print("📝 Updated \(ingredient.name) quantity to: \(newQuantity)")
        } else {
            // If ingredient not found in selected, add it
            var newIngredient = ingredient
            newIngredient.quantity = newQuantity
            addIngredient(newIngredient)
        }
    }
    
    func updateIngredient(_ updatedIngredient: Ingredient) {
        if let index = selectedIngredients.firstIndex(where: { $0.id == updatedIngredient.id }) {
            selectedIngredients[index] = updatedIngredient
            print("🔄 Updated ingredient: \(updatedIngredient.name)")
        } else if updatedIngredient.quantity > 0 {
            // Add if not exists and has quantity
            selectedIngredients.append(updatedIngredient)
        }
    }
    
    // MARK: - Persistence with UserDefaults
    private func saveIngredients() {
        do {
            let data = try JSONEncoder().encode(selectedIngredients)
            userDefaults.set(data, forKey: ingredientsKey)
            userDefaults.synchronize()
            print("💾 Saved \(selectedIngredients.count) ingredients to UserDefaults")
        } catch {
            print("❌ Failed to save ingredients: \(error.localizedDescription)")
        }
    }
    
    private func loadSavedIngredients() {
        guard let data = userDefaults.data(forKey: ingredientsKey) else {
            print("📱 No saved ingredients found - starting fresh")
            selectedIngredients = []
            return
        }
        
        do {
            let loadedIngredients = try JSONDecoder().decode([Ingredient].self, from: data)
            selectedIngredients = loadedIngredients
            print("📂 Loaded \(selectedIngredients.count) ingredients from UserDefaults")
        } catch {
            print("❌ Failed to load ingredients: \(error.localizedDescription)")
            selectedIngredients = []
        }
    }
    
    // Force refresh from UserDefaults (useful for debugging)
    func reloadFromStorage() {
        loadSavedIngredients()
        objectWillChange.send()
    }
    
    // Clear all data (useful for debugging)
    func clearAllIngredients() {
        selectedIngredients = []
        userDefaults.removeObject(forKey: ingredientsKey)
        print("🧹 Cleared all ingredients")
    }
    
    // Debug function
    func debugPrint() {
        print("\n🔍 === DEBUG FRIDGE VIEWMODEL ===")
        print("Selected ingredients count: \(selectedIngredients.count)")
        for (index, ingredient) in selectedIngredients.enumerated() {
            print("  \(index + 1). \(ingredient.name): \(ingredient.quantity.fixQty) \(ingredient.unit)")
        }
        
        // Check what's actually stored in UserDefaults
        if let data = userDefaults.data(forKey: ingredientsKey) {
            do {
                let storedIngredients = try JSONDecoder().decode([Ingredient].self, from: data)
                print("💾 UserDefaults contains \(storedIngredients.count) ingredients")
            } catch {
                print("❌ UserDefaults data corrupted: \(error)")
            }
        } else {
            print("💾 No data in UserDefaults")
        }
        print("=================================\n")
    }
}
