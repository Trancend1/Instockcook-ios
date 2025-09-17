import SwiftUI

struct RecipeView: View {

    @EnvironmentObject var recipeViewModel: RecipeViewModel
    
    var body: some View {
        ScrollView {
            // Gunakan filteredRecipes yang sudah diproses
            if recipeViewModel.filteredRecipes.isEmpty {
                Text("Tidak ada resep yang cocok 😢")
                    .padding()
            } else {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                    ForEach(recipeViewModel.filteredRecipes, id: \.id) { recipe in
                        RecipeCard(recipe: .constant(recipe))
                    }
                }
                .padding(.horizontal, 25)
            }
        }
        .navigationTitle("Recipes")
        .navigationBarTitleDisplayMode(.inline)
    }
}
