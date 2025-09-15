//
//  RecipeDetail.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import SwiftUI

struct RecipeDetail: View {
    @Binding var recipe: Recipe
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
                HStack {
                    Text(recipe.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.color1)
                    
                    Spacer()
                    Image(systemName: recipe.favorite ? "heart.fill" : "heart")
                        .onTapGesture {
                            recipe.favorite.toggle()
                        }
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundStyle(.color1)
                }
                
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
                        HStack {
                            Text("Ingredients")
                                .font(.title3.bold())
                        }
                        
                        ForEach(recipe.parsedIngredients) { ingredient in
                            IngredientsList(isFromRecipeDetail: true, ingredient: .constant(ingredient))
                        }
                        Spacer()
                        HStack {
                            Text("Tools")
                                .font(.title3.bold())
                                .foregroundColor(.color1)
                            Spacer()
                            Text("\(recipe.parsedTools.count) item")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 5)
                        
                        ForEach(recipe.parsedTools, id: \.self) { tool in
                            HStack {
                                Image(systemName: "")
                                
                                Text(tool)
                            }
                            .padding(.vertical, 5)
                        }
                    }
                    .padding(.top, 8)
                } else {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                            HStack(alignment: .top, spacing: 12) {
                                VStack {
                                    Circle()
                                        .fill(.color1)
                                        .frame(width: 28, height: 28)
                                        .overlay(Text("\(index+1)").foregroundColor(.white))
                                    if index < steps.count - 1 {
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.3))
                                            .frame(width: 2)
                                            .padding(.vertical, -10)
                                    }
                                }
                                Text(step)
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 3)
                                    .padding(.bottom, 4)
                                
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
            RecipeDetail(recipe: .constant(Recipe.all[0]))
        }
    }
}

