//
//  AddIngredientsViewModel.swift
//  InStockCOOK
//
//  Created by Mac on 12/09/25.
//

import Foundation

class FridgeViewModel: ObservableObject {
    @Published var selectedIngredients: [Ingredient] = []
    @Published var editingIngredient: Ingredient? = nil
    @Published var isPresentingFridge: Bool = false
    
    func addIngredient(_ ingredient: Ingredient) {
        selectedIngredients.append(ingredient)
    }
    
    func deleteIngredient(_ ingredient: Ingredient) {
        if let index = selectedIngredients.firstIndex(where: { $0.id == ingredient.id }) {
            selectedIngredients.remove(at: index)
        }
    }
    
    func updateIngredient(_ ingredient: Ingredient) {
        if let index = selectedIngredients.firstIndex(where: { $0.id == ingredient.id }) {
            selectedIngredients[index] = ingredient
        }
    }
}

