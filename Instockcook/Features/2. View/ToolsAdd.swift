import SwiftUI

struct ToolsAdd: View {
    @ObservedObject var viewModel: ToolsViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                TextField("Search", text: $viewModel.searchText)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                // List
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
                .background(Color(.white))
                .listStyle(InsetGroupedListStyle())
            }
            .background(Color(.white))
            .navigationBarTitle("Add Tools", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    isPresented = false
                },
                trailing: Button("Save") {
                    print("Selected tools: \(viewModel.tools.filter { $0.isSelected }.map { $0.name })")
                    isPresented = false
                }
            )
            .foregroundStyle(.color1)
            .fontWeight(.semibold)
        }
        .background(Color(.white))
    }
}

#Preview {
    ToolsAdd(viewModel: ToolsViewModel(), isPresented: .constant(true))
}
