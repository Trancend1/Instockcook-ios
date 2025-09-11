import SwiftUI

struct AddQuantity: View {
    @Environment(\.dismiss) var dismiss
    @Binding var ingredient: Ingredient
    @State private var quantityString: String = ""
    @FocusState private var isQuantityFieldFocused: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Nama Bahan")
                        Spacer()
                        Text(ingredient.name)
                    }
                    
                    HStack {
                        Text("Quantity (\(ingredient.unit))")
                        Spacer()
                        TextField("Masukkan kuantitas", text:$quantityString)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                            .focused($isQuantityFieldFocused)
                    }
                }
            }
            .navigationTitle("Edit Quantity")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .tint(Color("color1"))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        if let newQuantity = Int(quantityString) {
                            ingredient.quantity = newQuantity
                        }
                        dismiss()
                    }
                    .disabled(quantityString.isEmpty)
                    .tint(Color("color1"))
                }
            }
            .onAppear {
                quantityString = "\(ingredient.quantity)"
                isQuantityFieldFocused = true
            }
        }
    }
}

