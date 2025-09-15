import SwiftUI

final class RecipeViewModel: ObservableObject {
    @AppStorage("recipes") private var savedRecipesData: String = "[]"
    @Published var recipes: [Recipe] = []

    init() {
        loadRecipes()
    }

    // MARK: - Encode & Decode
    private func loadRecipes() {
        if let data = savedRecipesData.data(using: .utf8),
           let decoded = try? JSONDecoder().decode([Recipe].self, from: data),
           !decoded.isEmpty {
            self.recipes = decoded
        } else {
            self.recipes = Recipe.all
        }
    }

    private func saveRecipes() {
        if let data = try? JSONEncoder().encode(recipes) {
            savedRecipesData = String(data: data, encoding: .utf8) ?? "[]"
        }
    }

    // MARK: - Favorite Logic
    var favoriteRecipes: [Recipe] {
        recipes.filter { $0.favorite }
    }

    func toggleFavorite(for recipe: Recipe) {
        if let idx = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[idx].favorite.toggle()
            saveRecipes()
        }
    }

    func setFavorite(_ isFav: Bool, for recipe: Recipe) {
        if let idx = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[idx].favorite = isFav
            saveRecipes()
        }
    }
}
