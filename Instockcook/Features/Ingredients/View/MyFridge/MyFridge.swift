import SwiftUI

struct MyFridge: View {
    @StateObject private var viewModel = FridgeViewModel()
    @StateObject private var toolsViewModel = ToolsViewModel()
    @State private var showModal = false
    @State private var goToRecipes = false
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section(
                        header: HStack {
                            Text("Ingredients")
                                .textCase(nil)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.color1)
                            Spacer()
                            Button("Add") {
                                viewModel.isPresentingFridge = true
                            }
                            .textCase(nil)
                            .fontWeight(.semibold)
                            .foregroundStyle(.color1)
                        }
                    ) {
                        if viewModel.selectedIngredients.isEmpty {
                            VStack {
                                Spacer(minLength: 200)
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
                            .frame(maxWidth: .infinity)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                        } else {
                            ForEach($viewModel.selectedIngredients) { $ingredient in
                                IngredientsList(ingredient: $ingredient)
                                    .listRowSeparator(.hidden)
                                    .onTapGesture {
                                        viewModel.editingIngredient = ingredient
                                    }
                                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                                        Button(role: .destructive) {
                                            viewModel.deleteIngredient(ingredient)
                                        } label: {
                                            Label("Delete", systemImage: "trash")
                                        }
                                    }
                            }
                        }
                    }
                }
                
                Button {
                    goToRecipes = true
                } label: {
                    Text("Generate Resep")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            (viewModel.selectedIngredients.count < 3 || toolsViewModel.selectedTools.isEmpty)
                            ? Color.gray.opacity(0.4)
                            : Color.color1
                        )
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                .disabled(viewModel.selectedIngredients.count < 3 || toolsViewModel.selectedTools.isEmpty)

            }
            .scrollContentBackground(.hidden)
            .background(Color.white)
            .navigationTitle("My Fridge")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Tools") {
                        showModal = true
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.color1)
                    .padding(20)
                }
            }
            .sheet(isPresented: $showModal) {
                AddToolsModal(viewModel: toolsViewModel, isPresented: $showModal)
            }
            .sheet(isPresented: $viewModel.isPresentingFridge) {
                FridgeIsField(selectedIngredients: $viewModel.selectedIngredients)
            }
            .sheet(item: $viewModel.editingIngredient) { ingredient in
                if let index = viewModel.selectedIngredients.firstIndex(where: { $0.id == ingredient.id }) {
                    AddIngredients(ingredient: $viewModel.selectedIngredients[index])
                }
            }
            .navigationDestination(isPresented: $goToRecipes) {
                RecipeView(
                    recipes: Recipe.all,
                    selectedIngredients: viewModel.selectedIngredients
                )
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    MyFridge()
}
