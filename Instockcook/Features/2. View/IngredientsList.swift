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
                    .frame(width: 32, height: 32)
                    .overlay(Text(ingredient.image).font(.system(size: 20)))
                
                Text(ingredient.name)
                    .font(.body)
                    .fontWeight(.medium)
                
                Spacer()
                
                if ingredient.quantity > 0 {
                    Text("\(ingredient.quantity) \(ingredient.unit)")
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
                .foregroundStyle(Color.gray.opacity(0.2))
        }
        
        .padding(.vertical, 4)
        .contentShape(Rectangle())
        .onTapGesture {
            if !isFromRecipeDetail {
                    isPresentingAdd = true
                }
        }
        .sheet(isPresented: $isPresentingAdd) {
            IngredientsAdd(ingredient: $ingredient)
        }

    }
}
//struct IngredientsList: View {
//    @State private var isPresentingAdd = false
//    @Binding var ingredient: Ingredient
//    
//    var body: some View {
//        HStack {
//            RoundedRectangle(cornerRadius: 6)
//                .fill(Color(.systemGray6))
//                .frame(width: 32, height: 32)
//                .overlay(Text(ingredient.image).font(.system(size: 20)))
//            
//            Text(ingredient.name)
//                .font(.body)
//            
//            Spacer()
//            
//            if ingredient.quantity > 0 {
//                Text("\(ingredient.quantity) \(ingredient.unit)")
//                    .foregroundColor(.green)
//                    .font(.subheadline)
//                    .padding(.horizontal, 6)
//                    .padding(.vertical, 2)
//                    .background(
//                        RoundedRectangle(cornerRadius: 6)
//                            .fill(Color.green.opacity(0.15))
//                    )
//            } else {
//                Image(systemName: "square.dashed")
//                    .foregroundColor(.primary)
//            }
//        }
//        .padding(.vertical, 4)
//        .contentShape(Rectangle()) // 🔑 bikin seluruh row bisa ditap
//        .onTapGesture {
//            isPresentingAdd = true
//        }
//        .sheet(isPresented: $isPresentingAdd) {
//            AddIngredients(ingredient: $ingredient)
//        }
//    }
//}
