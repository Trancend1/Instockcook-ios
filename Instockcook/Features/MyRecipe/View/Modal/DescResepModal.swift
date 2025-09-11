//
//  DescResepModal.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct DescResepModal: View {
    @State var recipes: [Recipe]
    @State var selectedRecipe: Recipe? = nil
    
    var body: some View {
        ForEach(recipes) { recipe in
            RecipeCard(recipe: recipe)
                .onTapGesture {
                    selectedRecipe = recipe
                }
        }
        .sheet(item: $selectedRecipe) { recipe in
            RecipeDescription(recipe : recipe)
                .presentationDragIndicator(.visible)
        }
    }
}

struct RecipeDescResepModal_Previews: PreviewProvider {
    static var previews: some View {
        DescResepModal(recipes: [])
    }
}
