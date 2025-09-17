//
//  Ingredients.swift
//  InStockCOOK
//
//  Created by Mac on 10/09/25.
//

import Foundation
import SwiftUI

import SwiftUI

struct Ingredient: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var quantity: Double
    var unit: String
    var image: String
    var color: ColorData

    init(id: UUID = UUID(), name: String, quantity: Double, unit: String, image: String, color: ColorData? = nil) {
        self.id = id
        self.name = name
        self.quantity = quantity
        self.unit = unit
        self.image = image
        self.color = color ?? ColorData(color: .randomPastel()) 
    }

    struct ColorData: Codable, Equatable {
        var red: Double
        var green: Double
        var blue: Double
        var alpha: Double

        init(color: Color) {
            let uiColor = UIColor(color)
            var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
            uiColor.getRed(&r, green: &g, blue: &b, alpha: &a)
            red = Double(r)
            green = Double(g)
            blue = Double(b)
            alpha = Double(a)
        }

        var swiftUIColor: Color {
            Color(red: red, green: green, blue: blue, opacity: alpha)
        }
    }
}


extension Ingredient {
    static let DataIngredient: [Ingredient] = [
        // Bahan Pokok & Bumbu Dasar
                Ingredient(name: "Beras", quantity: 0, unit: "gr", image: "🌾"),
                Ingredient(name: "Nasi Putih", quantity: 0, unit: "gr", image: "🍚"),
                Ingredient(name: "Minyak Goreng", quantity: 0, unit: "ml", image: "🛢️"),
                Ingredient(name: "Gula Pasir", quantity: 0, unit: "gr", image: "🍬"),
                Ingredient(name: "Garam", quantity: 0, unit: "gr", image: "🧂"),
                Ingredient(name: "Merica Bubuk", quantity: 0, unit: "gr", image: "🌶️"),
                Ingredient(name: "Kaldu Bubuk", quantity: 0, unit: "gr", image: "🥣"),
                Ingredient(name: "Kecap Manis", quantity: 0, unit: "ml", image: "🥢"),
                Ingredient(name: "Saus Sambal", quantity: 0, unit: "ml", image: "🌶️"),
                Ingredient(name: "Saus Tiram", quantity: 0, unit: "ml", image: "🦪"),
                Ingredient(name: "Saus Tomat", quantity: 0, unit: "ml", image: "🍅"),
                Ingredient(name: "Tepung Terigu", quantity: 0, unit: "gr", image: "🥖"),
                Ingredient(name: "Tepung Maizena", quantity: 0, unit: "gr", image: "🌽"),
                Ingredient(name: "Santan", quantity: 0, unit: "ml", image: "🥥"),
                
                // Bumbu & Rempah
                Ingredient(name: "Bawang Putih", quantity: 0, unit: "siung", image: "🧄"),
                Ingredient(name: "Bawang Merah", quantity: 0, unit: "siung", image: "🧅"),
                Ingredient(name: "Bawang Bombay", quantity: 0, unit: "buah", image: "🧅"),
                Ingredient(name: "Cabai Rawit", quantity: 0, unit: "buah", image: "🌶️"),
                Ingredient(name: "Cabai Merah", quantity: 0, unit: "buah", image: "🌶️"),
                Ingredient(name: "Cabai Hijau", quantity: 0, unit: "buah", image: "🌶️"),
                Ingredient(name: "Terasi", quantity: 0, unit: "gr", image: "🦐"),
                Ingredient(name: "Ketumbar", quantity: 0, unit: "sdt", image: "🌿"),
                Ingredient(name: "Jintan", quantity: 0, unit: "sdt", image: "🌿"),
                Ingredient(name: "Lengkuas", quantity: 0, unit: "ruas", image: "🫚"),
                Ingredient(name: "Serai", quantity: 0, unit: "batang", image: "🌱"),
                Ingredient(name: "Daun Salam", quantity: 0, unit: "lembar", image: "🍃"),
                Ingredient(name: "Daun Jeruk", quantity: 0, unit: "lembar", image: "🍋"),
                Ingredient(name: "Kunyit", quantity: 0, unit: "ruas", image: "🫚"),
                Ingredient(name: "Jahe", quantity: 0, unit: "ruas", image: "🫚"),
                Ingredient(name: "Kemiri", quantity: 0, unit: "butir", image: "🌰"),
                Ingredient(name: "Gula Merah", quantity: 0, unit: "gr", image: "🟤"),

                // Protein
                Ingredient(name: "Ayam", quantity: 0, unit: "gr", image: "🍗"),
                Ingredient(name: "Daging Sapi", quantity: 0, unit: "gr", image: "🥩"),
                Ingredient(name: "Telur Ayam", quantity: 0, unit: "butir", image: "🥚"),
                Ingredient(name: "Ikan Tenggiri", quantity: 0, unit: "gr", image: "🐟"),
                Ingredient(name: "Cumi Asin", quantity: 0, unit: "gr", image: "🦑"),
                Ingredient(name: "Udang", quantity: 0, unit: "gr", image: "🍤"),
                Ingredient(name: "Tahu Putih", quantity: 0, unit: "buah", image: "⚪"),
                Ingredient(name: "Tempe", quantity: 0, unit: "papan", image: "🟫"),
                Ingredient(name: "Sosis", quantity: 0, unit: "buah", image: "🌭"),
                Ingredient(name: "Bakso", quantity: 0, unit: "buah", image: "🍢"),
                Ingredient(name: "Teri Medan", quantity: 0, unit: "gr", image: "🐟"),

                // Sayuran & Bahan Lainnya
                Ingredient(name: "Kangkung", quantity: 0, unit: "ikat", image: "🥬"),
                Ingredient(name: "Tauge", quantity: 0, unit: "gr", image: "🌱"),
                Ingredient(name: "Kol", quantity: 0, unit: "gr", image: "🥬"),
                Ingredient(name: "Tomat", quantity: 0, unit: "buah", image: "🍅"),
                Ingredient(name: "Wortel", quantity: 0, unit: "buah", image: "🥕"),
                Ingredient(name: "Daun Bawang", quantity: 0, unit: "batang", image: "🌿"),
                Ingredient(name: "Seledri", quantity: 0, unit: "batang", image: "🌿"),
                Ingredient(name: "Labu Siam", quantity: 0, unit: "buah", image: "🍈"),
                Ingredient(name: "Terong", quantity: 0, unit: "buah", image: "🍆"),
                Ingredient(name: "Kacang Panjang", quantity: 0, unit: "batang", image: "🫛"),
                Ingredient(name: "Jagung Manis", quantity: 0, unit: "buah", image: "🌽"),
                Ingredient(name: "Kembang Kol", quantity: 0, unit: "buah", image: "🥦"),
                Ingredient(name: "Sawi Putih", quantity: 0, unit: "gr", image: "🥬"),
                Ingredient(name: "Timun", quantity: 0, unit: "buah", image: "🥒"),
                Ingredient(name: "Mie Gandum", quantity: 0, unit: "gr", image: "🍝"),
                Ingredient(name: "Mie Instan", quantity: 0, unit: "bungkus", image: "🍜"),
                Ingredient(name: "Makaroni", quantity: 0, unit: "gr", image: "🍝"),
                Ingredient(name: "Kentang", quantity: 0, unit: "buah", image: "🥔"),
                Ingredient(name: "Nangka Muda", quantity: 0, unit: "gr", image: "🍈"),
                Ingredient(name: "Nangka", quantity: 0, unit: "gr", image: "🍈"),
                Ingredient(name: "Pisang Kepok", quantity: 0, unit: "buah", image: "🍌"),
                Ingredient(name: "Pisang Raja", quantity: 0, unit: "buah", image: "🍌"),
                Ingredient(name: "Kelapa Parut", quantity: 0, unit: "gr", image: "🥥"),
                Ingredient(name: "Kelapa Muda", quantity: 0, unit: "gr", image: "🥥"),
                Ingredient(name: "Kacang Tanah", quantity: 0, unit: "gr", image: "🥜"),
                Ingredient(name: "Bihun", quantity: 0, unit: "gr", image: "🍜"),
                Ingredient(name: "Soun", quantity: 0, unit: "gr", image: "🍜"),
                Ingredient(name: "Lontong", quantity: 0, unit: "buah", image: "🍙"),
                Ingredient(name: "Cuka", quantity: 0, unit: "ml", image: "🍶"),
                Ingredient(name: "Pangsit Goreng", quantity: 0, unit: "lembar", image: "🥟"),
                Ingredient(name: "Tepung Tapioka", quantity: 0, unit: "gr", image: "⚪"),
                Ingredient(name: "Keju Parut", quantity: 0, unit: "gr", image: "🧀")
    ]
}

extension Color {
    /// Random pastel consistent
    static func randomPastel() -> Color {
        let colors: [Color] = [
            Color(red: 0.96, green: 0.80, blue: 0.80),
            Color(red: 0.80, green: 0.90, blue: 0.96),
            Color(red: 0.82, green: 0.94, blue: 0.84),
            Color(red: 0.99, green: 0.94, blue: 0.80),
            Color(red: 0.93, green: 0.82, blue: 0.96),
            Color(red: 0.95, green: 0.87, blue: 0.80),
            Color(red: 0.88, green: 0.92, blue: 0.76),
            Color(red: 0.84, green: 0.84, blue: 0.96),
            Color(red: 0.96, green: 0.84, blue: 0.88),
            Color(red: 0.78, green: 0.92, blue: 0.90),
            Color(red: 0.90, green: 0.88, blue: 0.96),
            Color(red: 0.98, green: 0.88, blue: 0.76),
            Color(red: 0.86, green: 0.95, blue: 0.86)
        ]
        return colors.randomElement() ?? .gray
    }

    func toHex() -> String {
        if let components = UIColor(self).cgColor.components {
            let r = Float(components[0])
            let g = Float(components[1])
            let b = Float(components[2])
            return String(format: "#%02lX%02lX%02lX",
                          lroundf(r * 255),
                          lroundf(g * 255),
                          lroundf(b * 255))
        }
        return "#FFFFFF"
    }

    static func fromHex(_ hex: String) -> Color {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexSanitized.hasPrefix("#") { hexSanitized.removeFirst() }

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let r = Double((rgb & 0xFF0000) >> 16) / 255.0
        let g = Double((rgb & 0x00FF00) >> 8) / 255.0
        let b = Double(rgb & 0x0000FF) / 255.0

        return Color(red: r, green: g, blue: b)
    }
}

extension Double {
    var fixQty: String {
        if self.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", self)
        } else {
            return String(format: "%.1f", self)
        }
    }
}
