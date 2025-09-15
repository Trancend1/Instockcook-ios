//
//  UnderlinePicker.swift
//  Instockcook
//
//  Created by Mac on 13/09/25.
//

import SwiftUI

enum RecipeTab: String, CaseIterable {
    case details = "Details"
    case step = "Steps"
}

// 2) UnderlinePicker non-generic (menggunakan RecipeTab)
struct UnderlinePicker: View {
    @Binding var selectedTab: RecipeTab
    var bodyColor: Color = .color1
    @Namespace private var underlineAnim

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 0) {
                ForEach(RecipeTab.allCases, id: \.self) { tab in
                    Button {
                        withAnimation(.easeInOut) {
                            selectedTab = tab
                        }
                    } label: {
                        VStack(spacing: 4) {
                            Text(tab.rawValue)
                                .font(.system(size: 20, weight: selectedTab == tab ? .bold : .regular))
                                .foregroundColor(selectedTab == tab ? bodyColor : .gray)
                                .padding(.vertical, 8)

                            if selectedTab == tab {
                                Rectangle()
                                    .fill(bodyColor)
                                    .frame(height: 3)
                                    .matchedGeometryEffect(id: "underline", in: underlineAnim)
                            } else {
                                Color.clear.frame(height: 3)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
