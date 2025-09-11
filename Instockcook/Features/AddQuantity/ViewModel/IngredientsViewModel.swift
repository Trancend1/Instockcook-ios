import Foundation

class IngredientViewModel: ObservableObject {
    @Published var ingredients: [Ingredient] = [] {
        didSet {
            saveIngredients()
        }
    }
    
    @Published var selectedIngredient: Ingredient? = nil
    
    init() {
        getIngredients()
    }
    
    // Simpan ke local storage
    private func saveIngredients() {
        if let data = try? JSONEncoder().encode(ingredients) {
            UserDefaults.standard.set(data, forKey: "ingredients")
        }
    }
    
    // Ambil dari local storage
    private func getIngredients() {
        if let data = UserDefaults.standard.data(forKey: "ingredients"),
           let storedIngredients = try? JSONDecoder().decode([Ingredient].self, from: data) {
            ingredients = storedIngredients
        } else {
            // default data pertama kali
            ingredients = [
                Ingredient(name: "Beras", quantity: 0, unit: "gr"),
                Ingredient(name: "Minyak Goreng", quantity: 0, unit: "ml")
            ]
        }
    }
}

