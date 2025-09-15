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
            Group {
                if recipeViewModel.recipes.filter({ $0.favorite }).isEmpty {
                    VStack(spacing: 12) {
                        Image(.favorite)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray.opacity(0.6))
                            .padding()
                        
                        Text("Yuk, tambahin resep favoritmu!")
                            .font(.headline)
                            .foregroundColor(.gray.opacity(0.8))
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(Array(recipeViewModel.recipes.enumerated()), id: \.element.id) { index, recipe in
                                if recipe.favorite {
                                    ZStack(alignment: .topTrailing) {
                                        RecipeCard(recipe: $recipeViewModel.recipes[index])
                                        
                                        Button(action: {
                                            recipeViewModel.toggleFavorite(for: recipe)
                                        }) {
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                    .tint(.color1)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}
