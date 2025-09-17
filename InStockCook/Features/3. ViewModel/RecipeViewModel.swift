import SwiftUI

final class RecipeViewModel: ObservableObject {
    @AppStorage("recipes") private var savedRecipesData: String = "[]"
    @Published var recipes: [Recipe] = Recipe.all // Ini adalah daftar resep lengkap
    @Published var filteredRecipes: [Recipe] = [] 


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
    
    func filterAndSortRecipes(ingredients: [Ingredient], tools: [Tool]) {
        // Jalankan logika yang berat di background thread
        DispatchQueue.global(qos: .userInitiated).async {
            
            // Logika filtering dan sorting yang sama seperti sebelumnya
            let selectedIngredientNames = ingredients.map { $0.name.lowercased() }
            let selectedToolNames = tools.map { $0.name.lowercased() }
            
            let filtered = Recipe.all.compactMap { recipe -> (Recipe, Double, Double, Double)? in
                let recipeIngredients = recipe.parsedIngredients.map { $0.name.lowercased() }
                let recipeTools = recipe.parsedTools.map { $0.lowercased() }
                
                let ingredientMatchCount = Double(selectedIngredientNames.filter { recipeIngredients.contains($0) }.count)
                let toolMatchCount = Double(selectedToolNames.filter { recipeTools.contains($0) }.count)
                
                let totalIngredients = Double(recipeIngredients.count)
                let totalTools = Double(recipeTools.count)
                let ingredientMatchRatio = totalIngredients > 0 ? ingredientMatchCount / totalIngredients : 0
                let toolMatchRatio = totalTools > 0 ? toolMatchCount / totalTools : 0
                
                let minIngredientMatchCount = 3.0
                let minToolMatchCount = 1.0
                
                if ingredientMatchCount >= minIngredientMatchCount && toolMatchCount >= minToolMatchCount {
                    return (recipe, ingredientMatchCount, ingredientMatchRatio, toolMatchRatio)
                }
                return nil
            }
            
            let sorted = filtered.sorted { (item1, item2) -> Bool in
                let (_, ingCount1, ingRatio1, toolRatio1) = item1
                let (_, ingCount2, ingRatio2, toolRatio2) = item2
                
                if ingCount1 != ingCount2 {
                    return ingCount1 > ingCount2
                } else if ingRatio1 != ingRatio2 {
                    return ingRatio1 > ingRatio2
                } else {
                    return toolRatio1 > toolRatio2
                }
            }
            
            let finalRecipes = sorted.map { $0.0 }
            
            // Update UI di main thread setelah selesai
            DispatchQueue.main.async {
                self.filteredRecipes = finalRecipes
            }
        }
    }
}

