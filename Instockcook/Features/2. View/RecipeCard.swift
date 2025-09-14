import SwiftUI

// Let's create a new file called RecipeCard.swift
struct RecipeCard: View {
    var recipe: Recipe
    @State private var selectedRecipe: Recipe? = nil

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
            
            Text(recipe.title)
                .font(.callout)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 8)
                .lineLimit(2)
        }
        .frame(width: 150)
        .frame(height: 175)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
        .onTapGesture {
            selectedRecipe = recipe
        }
        .sheet(item: $selectedRecipe) { recipe in
            // Assuming RecipeDetail exists
            NavigationView {
                RecipeDetail(recipe: recipe)
                    .padding(20)
            }
            .presentationDragIndicator(.visible)
        }
    }
}
