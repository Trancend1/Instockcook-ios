//
//  RecipeDetail.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    @State private var selectedTab: RecipeTab = .details
    
    var ingredients: [String] {
        recipe.ingredients
            .split(separator: ",")
            .map { String($0).trimmingCharacters(in: .whitespaces) }
    }
    
    var steps: [String] {
        recipe.steps
            .split(separator: "\n")
            .map { String($0).trimmingCharacters(in: .whitespaces) }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Gambar
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(16)
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 220)
                        .cornerRadius(16)
                        .overlay(
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.gray)
                        )
                }
                
                // Judul
                Text(recipe.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.color1)
                
                // Deskripsi
                Text(recipe.description)
                    .font(.body)
                    .foregroundColor(.primary)
                
                // Picker
                UnderlinePicker(selectedTab: $selectedTab)
                                    .padding(.horizontal)
                
                Divider()
                
                // Konten sesuai tab
                if selectedTab == .details {
                    VStack(alignment: .leading, spacing: 8) {
                        // Ingredients pakai style dari model
                        HStack {
                            Text("Ingredients")
                                .font(.title3.bold())
                        }
                        
                        ForEach(recipe.parsedIngredients) { ingredient in
                            IngredientsList(ingredient: .constant(ingredient))
                        }
                        Spacer()
                        HStack {
                            Text("Tools")
                                .font(.title3.bold())
                                .foregroundColor(.color1)
                            Spacer()
                            Text("\(ingredients.count) item")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 5)
                        
                        ForEach(recipe.parsedIngredients, id: \.name) { ingredient in
                            HStack {
                                Image(systemName: "")
                                    
                                Text(ingredient.name)
                            }
                            .padding(.vertical, 5)
                        }
                    }
                    .padding(.top, 8)
                } else {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                            HStack(alignment: .top, spacing: 12) {
                                Circle()
                                    .fill(.color1)
                                    .frame(width: 28, height: 28)
                                    .overlay(Text("\(index+1)").foregroundColor(.white))
                                
                                Text(step)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    .padding(.top, 8)
                }
                
            }
            .padding()
        }
        .navigationTitle("Detail Recipes")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetail(recipe: Recipe.all[0])
        }
    }
}

