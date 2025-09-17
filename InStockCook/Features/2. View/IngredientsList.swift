import SwiftUI

// Wrapper untuk handle non-binding case
struct IngredientsAddWrapper: View {
    let ingredient: Ingredient
    let viewModel: FridgeViewModel
    @State private var localIngredient: Ingredient
    @Environment(\.dismiss) private var dismiss
    
    init(ingredient: Ingredient, viewModel: FridgeViewModel) {
        self.ingredient = ingredient
        self.viewModel = viewModel
        self._localIngredient = State(initialValue: ingredient)
    }
    
    var body: some View {
        IngredientsAdd(ingredient: $localIngredient)
            .onChange(of: localIngredient) { oldValue, newValue in
                // Update viewModel when local ingredient changes
                if newValue.quantity != oldValue.quantity {
                    viewModel.updateIngredientQuantity(for: ingredient, newQuantity: newValue.quantity)
                }
            }
    }
}

struct IngredientsList: View {
    @State private var isPresentingAdd = false
    var isFromRecipeDetail: Bool = false
    
    // Support both Binding and non-Binding usage
    private let ingredient: Ingredient
    private let ingredientBinding: Binding<Ingredient>?
    private let isBinding: Bool
    
    @EnvironmentObject var viewModel: FridgeViewModel
    
    // For Binding usage (preferred)
    init(isFromRecipeDetail: Bool = false, ingredient: Binding<Ingredient>) {
        self.isFromRecipeDetail = isFromRecipeDetail
        self.ingredient = ingredient.wrappedValue
        self.ingredientBinding = ingredient
        self.isBinding = true
    }
    
    // For non-Binding usage (legacy support)
    init(ingredient: Ingredient, isFromRecipeDetail: Bool = false) {
        self.isFromRecipeDetail = isFromRecipeDetail
        self.ingredient = ingredient
        self.ingredientBinding = nil
        self.isBinding = false
    }
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(ingredient.color.swiftUIColor)
                    .frame(width: 32, height: 32)
                    .overlay(Text(ingredient.image).font(.system(size: 20)))
                
                Text(ingredient.name)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.leading, 10)
                
                Spacer()
                
                if ingredient.quantity > 0 {
                    Text("\(ingredient.quantity.fixQty) \(ingredient.unit)")
                        .foregroundColor(.color1)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(Color.color1.opacity(0.15))
                        )
                } else {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.color1)
                        .padding(.horizontal, 13)
                        .font(.system(size: 20, weight: .regular))
                }
            }
            
            Rectangle()
                .frame(height: 1)
                .padding(.vertical, 4)
                .foregroundColor(Color.gray.opacity(0.2))
        }
        .padding(.vertical, -3)
        .contentShape(Rectangle())
        .onTapGesture {
            if !isFromRecipeDetail {
                isPresentingAdd = true
            }
        }
        .sheet(isPresented: $isPresentingAdd) {
            Group {
                if isBinding, let binding = ingredientBinding {
                    IngredientsAdd(ingredient: binding)
                } else {
                    // For non-binding case, create a temporary binding
                    IngredientsAddWrapper(ingredient: ingredient, viewModel: viewModel)
                }
            }
            .presentationDetents([.medium])
            .presentationDragIndicator(.visible)
        }
    }
}
