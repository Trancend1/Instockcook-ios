//
//  RecipeView.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeView: View {
    @State var recipes: [Recipe]
    var selectedIngredients: [Ingredient]   
    
    var body: some View {
        // filter disini
        let filteredRecipes = recipes.filter(by: selectedIngredients)
        
        NavigationView {
            ScrollView {
                if filteredRecipes.isEmpty {
                    Text("Tidak ada resep yang cocok 😢")
                        .padding()
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)]) {
                        DescResepModal(recipes: filteredRecipes)
                    }
                }
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(
            recipes: Recipe.all,
            selectedIngredients: [
                Ingredient(name: "nasi putih", quantity: 0, unit: "", image: "🍚"),
                Ingredient(name: "bawang putih", quantity: 0, unit: "", image: "🧄"),
                Ingredient(name: "telur ayam", quantity: 0, unit: "", image: "🥚")
            ]
        )
    }
}

