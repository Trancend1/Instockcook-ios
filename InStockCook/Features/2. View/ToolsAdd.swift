import SwiftUI

struct ToolsAdd: View {
    @EnvironmentObject var viewModel: ToolsViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List {
                Section {
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
            //            .listStyle(PlainListStyle())
            .listStyle(InsetGroupedListStyle())
            .padding(.top, -35) // sesuaikan nilai
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
    ToolsAdd(isPresented: .constant(true))
        .environmentObject(ToolsViewModel())
}
