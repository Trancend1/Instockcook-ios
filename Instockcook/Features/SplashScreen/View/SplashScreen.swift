//
//  SplashScreen.swift
//  Instockcook
//
//  Created by Mac on 14/09/25.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        ZStack {
            Color(.screen)
                .ignoresSafeArea()
            Image("splash")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
            
                .onAppear {
                    // Delay splash screen 2 detik
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isActive = true
                    }
                }
            // Setelah splash, pindah ke onboarding atau main
                    .fullScreenCover(isPresented: $isActive) {
                        if hasSeenOnboarding {
                            MyFridge()
                        } else {
                            OnboardingView()
                        }
                    }
        }
    }
}
#Preview {
    SplashScreenView()
}
