import SwiftUI

struct ToolsList: View {
    @ObservedObject var viewModel: ToolsViewModel
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button("Add Tools"){
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                ToolsAdd(viewModel: viewModel, isPresented: $showModal)
            }
        }
    }
}

#Preview {
    ToolsList(viewModel: ToolsViewModel())
}

// Ganti Ke UI MyFridge
