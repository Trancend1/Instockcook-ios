import SwiftUI

struct ToolsAdd: View {
    @ObservedObject var viewModel: ToolsViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Tools")
                        .font(.headline)
                        .foregroundStyle(Color(.color1))
                        .textCase(nil)) {
                            ForEach(viewModel.filteredTools) { tool in
                                HStack {
                                    Text(tool.name)
                                    Spacer()
                                    Button(action: {
                                        viewModel.toggleSelection(for: tool)
                                    }) {
                                        Image(systemName: tool.isSelected ? "checkmark.square.fill" : "square")
                                            .foregroundColor(Color(.color1))
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                        }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Add Tools", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    isPresented = false
                }
                    .tint(.color1)
                    .fontWeight(.semibold),
                trailing: Button("Save") {
                    print("Selected tools: \(viewModel.tools.filter { $0.isSelected }.map { $0.name })")
                    isPresented = false
                }
                    .tint(.color1)
                    .fontWeight(.semibold)
            )
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

#Preview {
    ToolsAdd(viewModel: ToolsViewModel(), isPresented: .constant(true))
}
