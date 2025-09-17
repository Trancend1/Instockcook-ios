import SwiftUI

struct FridgeMain: View {
    @StateObject private var viewModel = FridgeViewModel.shared
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
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.color1)
                        .padding(32)
                    
                    Spacer()
                    
                    Button {
                        viewModel.isPresentingFridge = true
                    } label: {
                        Text("Add")
                            .fontWeight(.bold)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .foregroundStyle(.color1)
                            .background(Color.color1.opacity(0.2))
                            .cornerRadius(20)
                    }
                    .padding(32)
                }
                
                // Content
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
                        ForEach(viewModel.selectedIngredients.indices, id: \.self) { index in
                            // Use Binding to allow direct updates
                            IngredientsList(ingredient: $viewModel.selectedIngredients[index])
                                .listRowSeparator(.hidden)
                                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                    Button(role: .destructive) {
                                        withAnimation {
                                            let ingredientToDelete = viewModel.selectedIngredients[index]
                                            viewModel.deleteIngredient(ingredientToDelete)
                                        }
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                    }
                    .padding(EdgeInsets(top: -30, leading: -10, bottom: 0, trailing: -10))
                    .scrollContentBackground(.hidden)
                    .refreshable {
                        // Pull to refresh - reload data from UserDefaults
                        viewModel.reloadFromStorage()
                        viewModel.debugPrint()
                    }
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
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        showModal = true
                    } label: {
                        Image(systemName: "frying.pan")
                    }
                    .foregroundStyle(.color1)
                    
                    Button {
                        showFavorites = true
                    } label: {
                        Image(systemName: "heart")
                    }
                    .foregroundStyle(.color1)
                    .padding(.trailing, 10)
                }
               
            }
            
            // MARK: - Sheets & Navigation
            .sheet(isPresented: $showModal) {
                ToolsAdd(isPresented: $showModal)
                    .presentationDragIndicator(.visible)
            }
            .sheet(isPresented: $showFavorites) {
                Favorite()
                    .environmentObject(recipeViewModel)
                    .presentationDragIndicator(.visible)
            }
            .sheet(isPresented: $viewModel.isPresentingFridge) {
                FridgeField(selectedIngredients: $viewModel.selectedIngredients)
                    .environmentObject(viewModel)
                    .presentationDragIndicator(.visible)
            }
            .navigationDestination(isPresented: $goToRecipes) {
                RecipeView() // Tidak perlu lagi meneruskan resep via binding
                    .environmentObject(recipeViewModel)
                    .navigationTitle("Recipes")
                    .navigationBarTitleDisplayMode(.inline)
                    .accentColor(.color1)
                    // Panggil fungsi saat view muncul
                    .onAppear {
                        recipeViewModel.filterAndSortRecipes(
                            ingredients: viewModel.selectedIngredients,
                            tools: toolsViewModel.selectedTools
                        )
                    }
            }
        }
        .fontWeight(.semibold)
        .environmentObject(viewModel)
        .environmentObject(toolsViewModel)
        .environmentObject(recipeViewModel)
        .onAppear {
            
            viewModel.reloadFromStorage()
            print("🔄 FridgeMain appeared, current ingredients: \(viewModel.selectedIngredients.count)")
            viewModel.debugPrint()
        }
        .tint(.color1)
    }
}

#Preview {
    FridgeMain()
        .environmentObject(FridgeViewModel.shared)
}
