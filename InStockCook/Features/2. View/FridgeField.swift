import SwiftUI

struct FridgeField: View {
    @Binding var selectedIngredients: [Ingredient]
    @State private var draftSelected: [Ingredient] = []
    @State private var draftAll: [Ingredient] = []
    @State private var editingIngredient: Ingredient?
    @State private var searchText: String = ""
    @EnvironmentObject var fridgeViewModel: FridgeViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                selectedSection
                allSection
            }
            .scrollContentBackground(.hidden)
            .background(Color.white)
            .navigationTitle("Add Ingredients")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                        .foregroundStyle(.color1)
                        .fontWeight(.semibold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        selectedIngredients = draftSelected
                        searchText = "" // reset
                        dismiss()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(draftSelected.isEmpty ? .gray : .color1)
                    .disabled(draftSelected.isEmpty)
                }
            }
            .sheet(item: $editingIngredient) { ingredient in
                if let idx = draftSelected.firstIndex(where: { $0.id == ingredient.id }) {
                    IngredientsAdd(ingredient: $draftSelected[idx])
                        .presentationDetents([.fraction(0.5), .medium ])

                        .presentationDragIndicator(.visible)
                }
            }

            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: Text("Search ingredients...")
            )
            .onAppear {
                loadDrafts()
                searchText = ""
                setupSearchBar()
            }
        }
    }
    
    @ViewBuilder
    private var selectedSection: some View {
        if !draftSelected.isEmpty {
            Section("Selected") {
                ForEach(draftSelected.indices, id: \.self) { idx in
                    let binding = $draftSelected[idx]
                    
                    IngredientsList(isFromRecipeDetail: false, ingredient: binding)
                        .listRowSeparator(.hidden)
                        .onTapGesture { editingIngredient = binding.wrappedValue }
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                moveIngredientToAll(at: idx)
                            } label: {
                                Label("Remove", systemImage: "minus.circle")
                            }
                        }
                        .onChange(of: binding.wrappedValue.quantity) { oldValue, newValue in
                            if newValue == 0 {
                                moveIngredientToAll(at: idx)
                            }
                        }
                }
            }
            .headerProminence(.increased)
        }
    }
    
    private var allSection: some View {
        Section("Available Ingredients") {
            let filtered = draftAll.filter { searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText) }
            
            if filtered.isEmpty {
                if searchText.isEmpty {
                    Text("All ingredients have been selected")
                        .foregroundColor(.secondary)
                        .italic()
                } else {
                    ContentUnavailableView.search(text: searchText)
                }
            } else {
                ForEach(draftAll.indices, id: \.self) { idx in
                    if searchText.isEmpty || draftAll[idx].name.localizedCaseInsensitiveContains(searchText) {
                        let binding = $draftAll[idx]
                        IngredientsList(isFromRecipeDetail: false, ingredient: binding)
                            .listRowSeparator(.hidden)
                            .onTapGesture {
                                // Move to selected when tapped
                                moveIngredientToSelected(at: idx)
                            }
                            .onChange(of: binding.wrappedValue.quantity) { oldValue, newQuantity in
                                if newQuantity > 0 {
                                    moveIngredientToSelected(at: idx)
                                }
                            }
                    }
                }
            }
        }
        .headerProminence(.increased)
    }
    
    private func loadDrafts() {
        // Create copies to avoid reference issues
        draftSelected = selectedIngredients.map { ingredient in
            let copy = ingredient
            return copy
        }
        
        let selectedIDs = Set(draftSelected.map { $0.id })
        draftAll = Ingredient.DataIngredient.compactMap { baseIngredient in
            if !selectedIDs.contains(baseIngredient.id) {
                var copy = baseIngredient
                copy.quantity = 0 // Reset quantity for unselected
                return copy
            }
            return nil
        }
        
        draftAll.sort { $0.name < $1.name }
        draftSelected.sort { $0.name < $1.name }
        
        print("🔄 Loaded drafts - Selected: \(draftSelected.count), Available: \(draftAll.count)")
    }
    
    private func moveIngredientToSelected(at index: Int) {
        guard index < draftAll.count else { return }
        
        let ingredient = draftAll.remove(at: index)
        var selectedIngredient = ingredient
        if selectedIngredient.quantity == 0 {
            selectedIngredient.quantity = 1 // Set default quantity
        }
        
        draftSelected.append(selectedIngredient)
        draftSelected.sort { $0.name < $1.name }
        
        print("➡️ Moved \(ingredient.name) to selected")
    }
    
    private func moveIngredientToAll(at index: Int) {
        guard index < draftSelected.count else { return }
        
        var ingredient = draftSelected.remove(at: index)
        ingredient.quantity = 0 // Reset quantity
        
        draftAll.append(ingredient)
        draftAll.sort { $0.name < $1.name }
        
        print("⬅️ Moved \(ingredient.name) to available")
    }
    
    private func setupSearchBar() {
        let textFieldAppearance = UISearchTextField.appearance()
        textFieldAppearance.backgroundColor = UIColor(Color.clear)
        textFieldAppearance.textColor = UIColor.darkGray
        textFieldAppearance.tintColor = UIColor.systemGreen
    }
}

struct FridgeField_Previews: PreviewProvider {
    static var previews: some View {
        @State var selectedIngredients: [Ingredient] = [
            Ingredient(name: "Telur Ayam", quantity: 6, unit: "pcs", image: "🥚"),
            Ingredient(name: "Ayam Paha", quantity: 500, unit: "gr", image: "🍗")
        ]
        
        NavigationStack {
            FridgeField(selectedIngredients: $selectedIngredients)
                .environmentObject(FridgeViewModel.shared)
        }
    }
}
