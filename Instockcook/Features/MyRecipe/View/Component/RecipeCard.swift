//
//  RecipeCard.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeCard: View {
    var recipe : Recipe
    
    var body: some View {
        VStack(spacing: 8) {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 107)
                    .frame(width: 127)
                    .clipped()
                    .cornerRadius(16)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.gray.opacity(0.6))
                    .frame(width: 127, height: 107)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
            }
            
            // Judul
            
            Text(recipe.title)
                .font(.callout)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 8)
                .lineLimit(2)
            //                Image(systemName: "heart")
            
        }
        .frame(width: 150) // lebar kartu
        .frame(height: 175)
        //        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}

