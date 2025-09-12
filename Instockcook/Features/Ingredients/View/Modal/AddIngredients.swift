//
//  AddIngredients.swift
//  Instockcook
//
//  Created by Mac on 12/09/25.
//

import SwiftUI

struct AddIngredients: View {
    @Binding var ingredient: Ingredient
    @Environment(\.dismiss) private var dismiss
    
    @State private var quantityString: String = ""
    @FocusState private var isQuantityFieldFocused: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        HStack {
                            Text("Nama Bahan")
                                .foregroundColor(.primary)
                            Spacer()
                            Text(ingredient.name)
                                .foregroundColor(.primary)
                        }
                        
                        HStack {
                            Text("Quantity (\(ingredient.unit))")
                                .foregroundColor(.primary)
                            Spacer()
                            TextField("Masukkan kuantitas", text: $quantityString)
                                .multilineTextAlignment(.trailing)
                                .keyboardType(.numberPad)
                                .focused($isQuantityFieldFocused)
                                .foregroundColor(.primary)
                        }
                    }
                }
                
                .navigationTitle(ingredient.quantity > 0 ? "Edit Quantity" : "Add Quantity")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                        .tint(.color1)
                        .fontWeight(.semibold)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Save") {
                            if let newQuantity = Int(quantityString), newQuantity > 0 {
                                ingredient.quantity = newQuantity
                                print("Quantity Saved: \(ingredient.quantity)")
                            }
                            dismiss()
                        }
                        .disabled(quantityString.isEmpty)
                        .tint(.color1)
                        .fontWeight(.semibold)
                    }
                }
                .onAppear {
                    if ingredient.quantity > 0 {
                        self.quantityString = "\(ingredient.quantity)"
                    } else {
                        self.quantityString = ""
                    }
                    isQuantityFieldFocused = true
                }
            }
        }
    }
}

#Preview {
    AddIngredients(ingredient: .constant(Ingredient.DataIngredient.first!))
}
