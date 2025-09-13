//
//  Home.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

//import SwiftUI
//
//struct Home: View {
//    @State private var navigate = false
//
//    var body: some View {
//        NavigationStack {
//            VStack {
//                Button("Generate Recipes") {
//                    // Aksi tambahan
//                    print("Button tapped!")
//                    navigate = true
//                }
//                .padding(.horizontal, 20)
//                .padding(.vertical, 10)
//                .foregroundStyle(.white)
//                .background(.green)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//            }
//            .navigationTitle("My Fridge")
//            .navigationDestination(isPresented: $navigate) {
//                RecipeView(recipes: Recipe.all, selectedIngredients: <#[Ingredient]#>)
//            }
//        }
//    }
//}
//
//
//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
