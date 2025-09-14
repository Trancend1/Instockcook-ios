//
//  RecipeView.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeView: View {
    @Binding var recipes: [Recipe]
    var selectedIngredients: [Ingredient]
    
    var filteredRecipes: [Recipe] {
            // jika kamu punya extension .filter(by:), ganti baris ini:
            recipes // -> recipes.filter(by: selectedIngredients)
        }

    
    var body: some View {
        // filter disini
//        let filteredRecipes = recipes.filter(by: selectedIngredients)
        
        NavigationView {
            ScrollView {
                if filteredRecipes.isEmpty {
                    Text("Tidak ada resep yang cocok 😢")
                        .padding()
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
//                        ForEach(Array(filteredRecipes.enumerated()), id: \.element.id) { _, recipe in
//                                if let index = recipes.firstIndex(where: { $0.id == recipe.id }) {
//                                    RecipeCard(recipe: $recipes[index])
//                                }
//                            }
                        ForEach($recipes, id: \.id) { $recipe in
                                            RecipeCard(recipe: $recipe)
                                        }
                    }
                }
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(
            recipes: .constant(Recipe.all),
            selectedIngredients: [
                Ingredient(name: "nasi putih", quantity: 0, unit: "", image: "🍚"),
                Ingredient(name: "bawang putih", quantity: 0, unit: "", image: "🧄"),
                Ingredient(name: "telur ayam", quantity: 0, unit: "", image: "🥚")
            ]
        )
    }
}

