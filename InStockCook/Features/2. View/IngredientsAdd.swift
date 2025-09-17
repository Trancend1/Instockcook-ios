import SwiftUI

struct IngredientsAdd: View {
    @Binding var ingredient: Ingredient
    @Environment(\.dismiss) private var dismiss
    
    @State private var quantityString: String = ""
    @FocusState private var isQuantityFieldFocused: Bool
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Nama Bahan")
                        Spacer()
                        Text(ingredient.name)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Quantity (\(ingredient.unit))")
                        Spacer()
                        TextField("0", text: $quantityString)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.decimalPad)
                            .focused($isQuantityFieldFocused)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 100)
                    }
                } header: {
                    Text("Ingredient Details")
                } footer: {
                    Text("Enter the quantity you have available")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle(ingredient.quantity > 0 ? "Edit Quantity" : "Add Quantity")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundStyle(.color1)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        saveQuantity()
                    }
                    .disabled(!isValidInput())
                    .foregroundStyle(isValidInput() ? .color1 : .gray)
                }
            }
            .onAppear {
                setupInitialQuantity()
            }
            .alert("Invalid Input", isPresented: $showAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                Text("Please enter a valid number greater than 0")
            }
        }
    }
    
    private func setupInitialQuantity() {
        if ingredient.quantity > 0 {
            quantityString = ingredient.quantity.fixQty
        } else {
            quantityString = ""
        }
        
        // Focus on text field after a small delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            isQuantityFieldFocused = true
        }
    }
    
    private func isValidInput() -> Bool {
        guard let quantity = Double(quantityString.trimmingCharacters(in: .whitespacesAndNewlines)) else {
            return false
        }
        return quantity > 0
    }
    
    private func saveQuantity() {
        let trimmedString = quantityString.trimmingCharacters(in: .whitespacesAndNewlines)
        guard let newQuantity = Double(trimmedString), newQuantity > 0 else {
            showAlert = true
            return
        }
        
        // Update the binding directly
        ingredient.quantity = newQuantity
        print("💾 Updated \(ingredient.name) quantity to: \(newQuantity)")
        
        dismiss()
    }
}

#Preview {
    PreviewWrapper()
}

struct PreviewWrapper: View {
    @State private var sampleIngredient = Ingredient(
        name: "Beras",
        quantity: 0,
        unit: "gr",
        image: "🌾"
    )

    var body: some View {
        IngredientsAdd(ingredient: $sampleIngredient)
    }
}

