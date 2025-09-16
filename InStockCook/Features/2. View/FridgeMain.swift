import SwiftUI

struct FridgeMain: View {
    @StateObject private var viewModel = FridgeViewModel()
    @StateObject private var toolsViewModel = ToolsViewModel()
    @StateObject private var recipeViewModel = RecipeViewModel()
    
    @State private var showModal = false
    @State private var showFavorites = false
    @State private var goToRecipes = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                // Header
                HStack(alignment: .top) {
                    Text("Ingredients")
                        .textCase(nil)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.color1)
                        .padding(20)
                    
                    Spacer()
                    Button{
                        viewModel.isPresentingFridge = true
                    } label: {
                        Text("Add")
                            .fontWeight(.bold)
                            .padding(.horizontal,15)
                            .padding(.vertical,5)
                            .foregroundStyle(.color1)
                            .background(Color.color1.opacity(0.2))
                            .cornerRadius(20)
                    }
                    .textCase(nil)
                    .fontWeight(.bold)
                    .padding(20)
                    
                }
                
                // Konten
                if viewModel.selectedIngredients.isEmpty {
                    Spacer()
                    VStack {
                        Image("EmptyFridge")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160)
                            .padding(.bottom, 12)
                        Text("Kosong nih, klik Add!")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                } else {
                    List {
                        ForEach($viewModel.selectedIngredients) { $ingredient in
                            IngredientsList(ingredient: $ingredient)
                                .listRowSeparator(.hidden)
                                .onTapGesture {
                                    viewModel.editingIngredient = ingredient
                                }
                                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                    Button(role: .destructive) {
                                        viewModel.deleteIngredient(ingredient)
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                            .background(.red)
                                    }
                                }
                        }
                    }
                    .padding(EdgeInsets(top: -30, leading: -10, bottom: 0, trailing: -10))
                    .scrollContentBackground(.hidden)
                }
                
                // Generate Button
                Button {
                    goToRecipes = true
                } label: {
                    Text("Generate Recipe")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .foregroundStyle(.white)
                }
                .background(
                    (viewModel.selectedIngredients.count < 3 || toolsViewModel.selectedTools.isEmpty)
                    ? Color.gray.opacity(0.4)
                    : Color.color1
                )
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
                .disabled(viewModel.selectedIngredients.count < 3 || toolsViewModel.selectedTools.isEmpty)
            }
            .background(Color.white)
            .navigationTitle("My Fridge")
            //            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        showModal = true
                    } label: {
                        Image(systemName: "frying.pan")
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.color1)
                    
                    
                    Button {
                        showFavorites = true
                    } label: {
                        Image(systemName: "heart")
                    }
                    .fontWeight(.bold)
                    .foregroundStyle(.color1)
                    .padding(.trailing,10)
                    
                }
            }
            // Modal Add Tools
            .sheet(isPresented: $showModal) {
                ToolsAdd(viewModel: toolsViewModel, isPresented: $showModal)
                    .presentationDragIndicator(.visible)
            }
            // Modal Favorite
            .sheet(isPresented: $showFavorites) {
                Favorite()
                    .environmentObject(recipeViewModel)
                    .presentationDragIndicator(.visible)
            }
            // Modal Add Ingredients
            .sheet(isPresented: $viewModel.isPresentingFridge) {
                FridgeField(selectedIngredients: $viewModel.selectedIngredients)
                    .presentationDragIndicator(.visible)
            }
            // Modal Edit Quantity
            .sheet(item: $viewModel.editingIngredient) { ingredient in
                if let index = viewModel.selectedIngredients.firstIndex(where: { $0.id == ingredient.id }) {
                    IngredientsAdd(ingredient: $viewModel.selectedIngredients[index])
                        .presentationDetents([.medium/*, .large*/])
                        .presentationDragIndicator(.visible)
                    
                }
            }
            // Navigate to Recipes
            .navigationDestination(isPresented: $goToRecipes) {
                RecipeView(recipes: $recipeViewModel.recipes,
                           selectedIngredients: viewModel.selectedIngredients)
                .environmentObject(recipeViewModel)
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
//        .tint(.color1)
        .fontWeight(.semibold)
    }
}

#Preview {
    FridgeMain()
}
