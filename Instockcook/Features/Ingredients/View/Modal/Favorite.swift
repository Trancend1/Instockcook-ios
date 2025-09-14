import SwiftUI

struct Favorite: View {
    var body: some View {
        NavigationView {
            List {
                Text("Resep A")
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.white)
                Text("Resep B")
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.white)
                Text("Resep C")
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.white)
            }
            .scrollContentBackground(.hidden)   // hapus default list background
            .background(Color.white)            // putihkan area list
            .navigationTitle("Favorites")
        }
        .background(Color.white)                // putihkan root NavigationView
    }
}

#Preview {
    Favorite()
}
