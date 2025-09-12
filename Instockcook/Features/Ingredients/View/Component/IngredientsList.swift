//
//  ListIngredients.swift
//  Instockcook
//
//  Created by Mac on 12/09/25.
//

import SwiftUI

struct IngredientsList: View {
    @State private var isPresentingAdd = false
    @Binding var ingredient: Ingredient
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color(.systemGray6))
                .frame(width: 32, height: 32)
                .overlay(Text(ingredient.image).font(.system(size: 20)))
            
            Text(ingredient.name)
                .font(.body)
            
            Spacer()
            
            if ingredient.quantity > 0 {
                Text("\(ingredient.quantity) \(ingredient.unit)")
                    .foregroundColor(.color1)
                    .font(.subheadline)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.green.opacity(0.15))
                    )
                
            } else {
                Button {
                    isPresentingAdd = true
                } label: {
                    Image(systemName: "square.dashed")
                        .foregroundColor(.primary)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.vertical, 4)
        .sheet(isPresented: $isPresentingAdd) {
            AddIngredients(ingredient: $ingredient)
        }
    }
}
