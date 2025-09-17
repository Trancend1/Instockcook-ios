//
//  FridgeField.swift
//  Instockcook
//
//  Created by Mac on 12/09/25.
//

import SwiftUI

struct FridgeField: View {
    let pastelColors: [Color] = [
        Color(red: 0.96, green: 0.80, blue: 0.80), // pastel pink
        Color(red: 0.80, green: 0.90, blue: 0.96), // pastel blue
        Color(red: 0.82, green: 0.94, blue: 0.84), // pastel green
        Color(red: 0.99, green: 0.94, blue: 0.80), // pastel yellow
        Color(red: 0.93, green: 0.82, blue: 0.96), // pastel purple
        Color(red: 0.95, green: 0.87, blue: 0.80), // pastel peach
        Color(red: 0.88, green: 0.92, blue: 0.76), // pastel lime
        Color(red: 0.84, green: 0.84, blue: 0.96), // pastel lavender blue
        Color(red: 0.96, green: 0.84, blue: 0.88), // pastel rose
        Color(red: 0.78, green: 0.92, blue: 0.90), // pastel aqua
        Color(red: 0.90, green: 0.88, blue: 0.96), // pastel lilac
        Color(red: 0.98, green: 0.88, blue: 0.76), // pastel apricot
        Color(red: 0.86, green: 0.95, blue: 0.86)  // pastel mint
    ]
    @Binding var selectedIngredients: [Ingredient]
    @State private var draftSelected: [Ingredient] = []
    @State private var draftAll: [Ingredient] = []
    @State private var editingIngredient: Ingredient?
    @State private var searchText: String = ""
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
                        .padding()
                    
                }
                ToolbarItem(placement: .principal) {
                    Text("Add Ingredients")
                        .font(.system(size: 20, weight: .medium))
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        selectedIngredients = draftSelected
                        searchText = "" // reset \
                        dismiss()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(draftSelected.isEmpty ? .gray : .color1)
                    .disabled(draftSelected.isEmpty)
                    .padding()
                    
                }
                
            }
            .sheet(item: $editingIngredient) { ingredient in
                if let idx = draftSelected.firstIndex(where: { $0.id == ingredient.id }) {
                    IngredientsAdd(ingredient: $draftSelected[idx])
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),prompt: Text("Search ingredients...")
                .foregroundColor(.gray))
            .onAppear {
                loadDrafts()
                searchText = ""
                let textFieldAppearance = UISearchTextField.appearance()
                textFieldAppearance.backgroundColor = UIColor(Color.clear)
                    textFieldAppearance.textColor = UIColor.darkGray
                    textFieldAppearance.tintColor = UIColor.systemGreen
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
                                if let removeIndex = draftSelected.firstIndex(where: { $0.id == binding.wrappedValue.id }) {
                                    var removed = draftSelected.remove(at: removeIndex)
                                    removed.quantity = 0
                                    draftAll.append(removed)
                                    draftAll.sort { $0.name < $1.name }
                                }
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                        .onChange(of: binding.wrappedValue.quantity) { oldValue, newValue in
                            if newValue == 0 {
                                if let mIdx = draftSelected.firstIndex(where: { $0.id == binding.wrappedValue.id }) {
                                    let moved = draftSelected.remove(at: mIdx)
                                    draftAll.append(moved)
                                    draftAll.sort { $0.name < $1.name }
                                }
                            }
                        }
                }
            }
            .headerProminence(.increased)
        }
    }
    private var allSection: some View {
        Section("Ingredients") {
            let filtered = draftAll.filter { searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText) }
            if filtered.isEmpty {
                ContentUnavailableView.search(text: searchText)
            } else {
                ForEach(draftAll.indices, id: \.self) { idx in
                    if searchText.isEmpty || draftAll[idx].name.localizedCaseInsensitiveContains(searchText) {
                        let binding = $draftAll[idx]
                        IngredientsList(isFromRecipeDetail: false, ingredient: binding)
                            .listRowSeparator(.hidden)
                            .onChange(of: binding.wrappedValue.quantity) { oldValue, newQuantity in
                                if newQuantity > 0 {
                                    if let index = draftAll.firstIndex(where: { $0.id == binding.wrappedValue.id }) {
                                        let moved = draftAll.remove(at: index)
                                        draftSelected.append(moved)
                                        draftSelected.sort { $0.name < $1.name }
                                    }
                                }
                            }
                    }
                }
            }
        }
        .headerProminence(.increased)
    }
    private func loadDrafts() {
        draftSelected = selectedIngredients
        let selectedIDs = Set(draftSelected.map { $0.id })
        draftAll = Ingredient.DataIngredient.filter { !selectedIDs.contains($0.id) }
        draftAll.sort { $0.name < $1.name }
        draftSelected.sort { $0.name < $1.name }
    }
}

struct FridgeField_Previews: PreviewProvider {
    static var previews: some View {
        // Sample data for ingredients that are already selected
        @State var selectedIngredients: [Ingredient] = [
            Ingredient(name: "Telur Ayam", quantity: 6, unit: "pcs", image: "🥚"),
            Ingredient(name: "Ayam Paha", quantity: 500, unit: "gr", image: "🍗")
        ]
        
        NavigationStack {
            FridgeField(selectedIngredients: $selectedIngredients)
        }
    }
}
