import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.backgroundTop, .backgroundMiddle, .backgroundBottom]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("RecipeBox Style")
                    .font(.title)
                    .foregroundColor(.textPrimary)
                
                Button(action: {}) {
                    Text("Add Recipe")
                        .foregroundColor(.textWhite)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brandOrange)
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 2)
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ContentView()
}
