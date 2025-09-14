//
//  RecipeDescription.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeDescription: View {
    @Binding var recipe: Recipe
    
    var body: some View {
        NavigationView{
            RecipeDetail(recipe: $recipe)
                .padding(20)
        }
    }
}

