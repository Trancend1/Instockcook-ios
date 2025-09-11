import SwiftUI

struct ContentViewAddQuantity: View {
    @StateObject var viewModel = IngredientViewModel()
    
    var body: some View {
        List {
            ForEach($viewModel.ingredients) { $ingredient in
                HStack {
                    Text(ingredient.name)
                    Spacer()
                    Text("\(ingredient.quantity)\(ingredient.unit)")
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    viewModel.selectedIngredient = ingredient
                }
            }
        }
        .sheet(item: $viewModel.selectedIngredient) { selected in
            if let index = viewModel.ingredients.firstIndex(where: { $0.id == selected.id }) {
                AddQuantity(ingredient: $viewModel.ingredients[index])
            }
        }
    }
}

#Preview {
    ContentViewAddQuantity()
}

