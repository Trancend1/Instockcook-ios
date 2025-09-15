import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.backgroundTop, .backgroundMiddle, .backgroundBottom]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Spacer()
                
                Image("awal1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                
                
                Text("Welcome to InStockCook")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.bottom, 8)
                
                Text("Aplikasi yang akan membantumu menemukan resep masakan berdasarkan bahan-bahan dan alat masak yang kamu punya!")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
                Spacer()
                
                Button(action: {
                    hasSeenOnboarding = true
                }) {
                    Text("Mulai")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.brandOrange)
                        .cornerRadius(16)
                        .padding(.horizontal, 24)
                }
            }
            .padding()
        }
    }
}

#Preview {
    OnboardingView()
}

