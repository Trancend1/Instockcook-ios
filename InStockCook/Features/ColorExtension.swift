import SwiftUI

extension Color {
    static func random() -> Color {
        let hue = Double.random(in: 0...1)
        let saturation = Double.random(in: 0.3...0.5)
        let brightness = Double.random(in: 0.85...1.0)
        return Color(hue: hue, saturation: saturation, brightness: brightness)
            .opacity(0.3)
    }
}
