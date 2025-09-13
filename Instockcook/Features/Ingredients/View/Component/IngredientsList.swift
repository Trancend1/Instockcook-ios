import SwiftUI

struct IngredientsList: View {
    @Binding var ingredient: Ingredient
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color(.systemGray6))
                .frame(width: 32, height: 32)
                .overlay(Text(ingredient.image).font(.system(size: 20)))
            
            Text(ingredient.name)
                .font(.body)
                .fontWeight(.medium)
            
            Spacer()
            
            if ingredient.quantity > 0 {
                Text("\(ingredient.quantity) \(ingredient.unit)")
                    .foregroundColor(.green)
                    .font(.subheadline)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.green.opacity(0.15))
                    )
            } else {
                Image(systemName: "square.dashed")
                    .foregroundColor(.primary)
            }
        }
        .padding(.vertical, 4)
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
