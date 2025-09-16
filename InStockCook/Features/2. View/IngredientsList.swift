import SwiftUI

struct IngredientsList: View {
    @State private var isPresentingAdd = false
    var isFromRecipeDetail: Bool = false
    @Binding var ingredient: Ingredient
    var body: some View {
        VStack{
            HStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(ingredient.color)
                    .fill(Color.random())
                    .frame(width: 32, height: 32)
                    .overlay(Text(ingredient.image).font(.system(size: 20)))
                Text(ingredient.name)
                    .font(.body)
                    .fontWeight(.medium)
                Spacer()
                if ingredient.quantity > 0 {
                    Text("\(ingredient.quantity.fixQty) \(ingredient.unit)")
                        .foregroundColor(.color1)
                        .font(.subheadline)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(Color.color1.opacity(0.15))
                        )
                } else {
                    Image(systemName: "square.dashed")
                        .foregroundColor(.primary)
                }
            }
            Rectangle()
                .frame(height: 1)
                .padding(.vertical, 4)
                .foregroundColor(Color.gray.opacity(0.2))
        }
        .padding(.vertical,-3)
        .contentShape(Rectangle())
        .onTapGesture {
            if !isFromRecipeDetail {
                isPresentingAdd = true
            }
        }
        .sheet(isPresented: $isPresentingAdd) {
            IngredientsAdd(ingredient: $ingredient)
                .presentationDragIndicator(.visible)
        }
        
    }
}

