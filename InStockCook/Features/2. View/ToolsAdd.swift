import SwiftUI

struct ToolsAdd: View {
    @ObservedObject var viewModel: ToolsViewModel
    @Binding var isPresented: Bool

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(viewModel.filteredTools) { tool in
                        HStack {
                            Text(tool.name)
                                .font(.system(size: 18))
                            Spacer()
                            Image(systemName: tool.isSelected ? "checkmark.square.fill" : "square")
                                .font(.system(size: 22))
                                .foregroundColor(tool.isSelected ? .color1 : .secondary)
                        }
                        .padding(.vertical,6)
                        .padding(.horizontal, 10)
                        .contentShape(Rectangle())
                        .onTapGesture { viewModel.toggleSelection(for: tool) }
                        .listRowSeparator(.visible)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .scrollContentBackground(.hidden)
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Add Tools")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { isPresented = false }
                        .foregroundStyle(.color1)
                        .fontWeight(.semibold)
                        .padding()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        // simpan perubahan
                        isPresented = false
                    }
                    .foregroundStyle(.color1)
                    .fontWeight(.semibold)
                    .padding()
                }
            }
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: Text("Search tools..."))
        }
    }
}


#Preview {
    ToolsAdd(viewModel: ToolsViewModel(), isPresented: .constant(true))
}
