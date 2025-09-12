//
//  RecipeView.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeView: View {
    @State var recipes: [Recipe]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)]) {
                    DescResepModal(recipes: recipes)
                }
            }
            
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipes: Recipe.all)
    }
}

