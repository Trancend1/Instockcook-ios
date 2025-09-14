//
//  DescResepModal.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct DescResepModal: View {
    @State var recipes: [Recipe]
    @State private var selectedIndex: Int? = nil
    
    var body: some View {
        ForEach(Array(recipes.enumerated()), id: \.element.id) { index, recipe in
            RecipeCard(recipe: recipe)
                .onTapGesture {
                    selectedIndex = index
                }
        }
        .sheet(item: $selectedIndex) { index in
            RecipeDescription(recipe: $recipes[index])
                .presentationDragIndicator(.visible)
        }
    }
}

extension Int: Identifiable {
    public var id: Int { self }
}

struct RecipeDescResepModal_Previews: PreviewProvider {
    static var previews: some View {
        DescResepModal(recipes: Recipe.all)
    }
}

//import SwiftUI
//
//struct DescResepModal: View {
//    @State var recipes: [Recipe]
//    @State var selectedRecipe: Int? = nil
//    
//    var body: some View {
//        ForEach(recipes) { recipe in
//            RecipeCard(recipe: recipe)
//                .onTapGesture {
//                    selectedRecipe = recipe
//                }
//        }
//        .sheet(item: $selectedRecipe) { index in
//            RecipeDescription(recipe : $recipes[index])
//                .presentationDragIndicator(.visible)
//        }
//    }
//}
//
//struct RecipeDescResepModal_Previews: PreviewProvider {
//    static var previews: some View {
//        DescResepModal(recipes: [])
//    }
//}
