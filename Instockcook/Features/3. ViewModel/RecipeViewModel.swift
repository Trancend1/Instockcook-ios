import SwiftUI

final class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = Recipe.all

    var favoriteRecipes: [Recipe] {
        recipes.filter { $0.favorite }
    }

    func toggleFavorite(for recipe: Recipe) {
        if let idx = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[idx].favorite.toggle()
        }
    }

    func setFavorite(_ isFav: Bool, for recipe: Recipe) {
        if let idx = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[idx].favorite = isFav
        }
    }
}
