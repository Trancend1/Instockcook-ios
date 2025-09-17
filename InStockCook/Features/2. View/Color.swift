import SwiftUI

extension Color {
    // MARK: - Background Gradient
    static let backgroundTop = Color(hex: "#F0FFF0") // Hijau Pucat
    static let backgroundMiddle = Color(hex: "#D9F2D9") // Hijau Mint
    static let backgroundBottom = Color(hex: "#C1E0C1") // Hijau Sage
    
    // MARK: - Primary Branding
    static let brandPrimary = Color(hex: "#346856") // Hijau Hutan
    static let brandSecondary = Color(hex: "#5B8D6B") // Hijau Moss
    
    // MARK: - Text Colors
    static let textPrimary = Color(hex: "#1D3326") // Hijau Gelap
    static let textSecondary = Color(hex: "#4D4D4D") // Abu-abu Gelap
    static let textMuted = Color(hex: "#92A99E") // Abu-abu Hijau
    static let textWhite = Color(hex: "#FFFFFF") // Putih
    
    // MARK: - Functional UI Colors
    static let uiSuccess = Color(hex: "#69A95B")// Hijau Alpukat (untuk Sukses)
    static let uiInfo = Color(hex: "#7CA1C3")// Biru Pudar (untuk Info)
    static let uiWarning = Color(hex: "#B55F5F") // Merah Bata (untuk Peringatan)
    
    // MARK: - Food Accent Colors
    static let foodAvocado = Color(hex: "#7AC74F")//Hijau Alpukat
    static let foodHoney = Color(hex: "#D1A600")//Kuning Mustard
    static let foodTomato = Color(hex: "#C65353")//Merah Tomat
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
