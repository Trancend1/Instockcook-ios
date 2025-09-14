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
                    // 👇 Placeholder kalau kosong
                    VStack(spacing: 12) {
                        Image(systemName: "heart.slash")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.gray.opacity(0.6))

                        Text("Belum ada resep favorit")
                            .font(.headline)
                            .foregroundColor(.gray.opacity(0.8))

//                        Text("Tambahkan resep ke favorit dengan klik ikon hati ❤️")
//                            .font(.subheadline)
//                            .foregroundColor(.gray.opacity(0.6))
//                            .multilineTextAlignment(.center)
//                            .padding(.horizontal, 30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    // 👇 Isi favorite
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(Array(recipeViewModel.recipes.enumerated()), id: \.element.id) { index, recipe in
                                if recipe.favorite {
                                    ZStack(alignment: .topTrailing) {
                                        RecipeCard(recipe: $recipeViewModel.recipes[index])
                                        
                                        Button(action: {
                                            recipeViewModel.toggleFavorite(for: recipe)
                                        }) {
                                            // kalau mau tombol remove dari fav
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.red.opacity(0.8))
                                                .font(.title2)
                                                .padding(6)
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
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") { dismiss() }
                }
            }
        }
    }
}
