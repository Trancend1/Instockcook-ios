//
//  FridgeisField.swift
//  Instockcook
//
//  Created by Mac on 12/09/25.
//

import SwiftUI

struct FridgeIsField: View {

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
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        selectedIngredients = draftSelected
                        searchText = "" // reset \
//                        searchText
                        dismiss()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(draftSelected.isEmpty ? .gray : .color1)
                    .disabled(draftSelected.isEmpty)
                }
            }
            .sheet(item: $editingIngredient) { ingredient in
                if let idx = draftSelected.firstIndex(where: { $0.id == ingredient.id }) {
                    AddIngredients(ingredient: $draftSelected[idx])
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            .onAppear {
                loadDrafts()
                searchText = "" // reset searchText ketika view muncul
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
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
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
