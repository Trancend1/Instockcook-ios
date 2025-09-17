//
//  SplashScreen.swift
//  Instockcook
//
//  Created by Mac on 14/09/25.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.backgroundTop, .backgroundMiddle, .backgroundBottom]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea()
            Image("splash")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
            
                .onAppear {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isActive = true
                    }
                }
            
                .fullScreenCover(isPresented: $isActive) {
                    if hasSeenOnboarding {
                        FridgeMain()
                    } else {
                        OnboardingView()
                    }
                }
        }
    }
}
#Preview {
    SplashScreen()
}
