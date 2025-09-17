import SwiftUI

struct ToolsList: View {
    @EnvironmentObject var viewModel: ToolsViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Button("Add Tools") {
                isPresented = true
            }
            .sheet(isPresented: $isPresented) {
                ToolsAdd(isPresented: $isPresented)
            }
        }
    }
}

#Preview {
    ToolsList(isPresented: .constant(true))
        .environmentObject(ToolsViewModel())  
}
