import SwiftUI

struct ToolsListView: View {
    @ObservedObject var viewModel: ToolsViewModel
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button("Add Tools"){
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                AddToolsModal(viewModel: viewModel, isPresented: $showModal)
            }
        }
    }
}

#Preview {
    ToolsListView(viewModel: ToolsViewModel())
}

// Ganti Ke UI MyFridge
