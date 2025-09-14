import SwiftUI

extension Color {
    // MARK: - Background Gradient
    static let backgroundTop = Color(hex: "#FFE5E5")     // Soft Peach / Blush
    static let backgroundMiddle = Color(hex: "#FFD6C9")  // Pastel Peach
    static let backgroundBottom = Color(hex: "#FDDDE9")  // Light Pink / Rose
    
    // MARK: - Primary Branding
    static let brandOrange = Color(hex: "#FF6A2C")       // Bright Orange
    static let brandOrangeHover = Color(hex: "#FF824D")  // Softer Orange
    
    // MARK: - Text Colors
    static let textPrimary = Color(hex: "#1A1A1A")       // Almost Black
    static let textSecondary = Color(hex: "#4D4D4D")     // Dark Gray
    static let textMuted = Color(hex: "#9A9A9A")         // Light Gray
    static let textWhite = Color(hex: "#FFFFFF")         // Pure White
    
    // MARK: - Functional UI Colors
    static let uiGreen = Color(hex: "#27AE60")           // Fresh Green (Add button)
    static let uiBlue = Color(hex: "#2D9CDB")            // Sky Blue (Links)
    static let uiRed = Color(hex: "#EB5757")             // Tomato Red (Warning)
    
    // MARK: - Food Accent Colors
    static let foodAvocado = Color(hex: "#7AC74F")       // Avocado Green
    static let foodHoney = Color(hex: "#F7B500")         // Honey Yellow
    static let foodTomato = Color(hex: "#E63946")        // Ripe Tomato Red
}

// MARK: - Hex Color Initializer
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255,
                            (int >> 8) * 17,
                            (int >> 4 & 0xF) * 17,
                            (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255,
                            int >> 16,
                            int >> 8 & 0xFF,
                            int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24,
                            int >> 16 & 0xFF,
                            int >> 8 & 0xFF,
                            int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
