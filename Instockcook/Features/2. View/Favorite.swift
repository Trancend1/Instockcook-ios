import SwiftUI

struct Favorite: View {
    @EnvironmentObject var recipeViewModel: RecipeViewModel
    @Environment(\.dismiss) private var dismiss

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(Array(recipeViewModel.recipes.enumerated()), id: \.element.id) { index, recipe in
                        if recipe.favorite {
                            ZStack(alignment: .topTrailing) {
                                RecipeCard(recipe: $recipeViewModel.recipes[index])
                                
                                Button(action: {
                                    recipeViewModel.toggleFavorite(for: recipe)
                                }) {
//                                    Image(systemName: recipe.favorite ? "heart.fill" : "heart")
//                                        .foregroundColor(.red)
//                                        .padding(8)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Favorites")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") { dismiss() }
                }
            }
        }
    }
}
