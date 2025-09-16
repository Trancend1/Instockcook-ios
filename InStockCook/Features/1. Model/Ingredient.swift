//
//  Ingredients.swift
//  InStockCOOK
//
//  Created by Mac on 10/09/25.
//

import Foundation
import SwiftUICore

struct Ingredient: Identifiable{
    var id: UUID = UUID()
    var name: String
    var quantity: Double
    var unit: String
    var image: String
    var color: Color = Color.random()
}



extension Ingredient {
    static let DataIngredient: [Ingredient] = [
        Ingredient(name: "Beras", quantity: 0, unit: "gr", image: "🌾"),
        Ingredient(name: "Minyak Goreng", quantity: 0, unit: "ml", image: "🛢️"),
        Ingredient(name: "Gula Pasir", quantity: 0, unit: "gr", image: "🍬"),
        Ingredient(name: "Garam", quantity: 0, unit: "gr", image: "🧂"),
        Ingredient(name: "Merica Bubuk", quantity: 0, unit: "gr", image: "🌶️"),
        Ingredient(name: "Kaldu Bubuk", quantity: 0, unit: "gr", image: "🥣"),
        Ingredient(name: "Kecap Manis", quantity: 0, unit: "ml", image: "🥢"),
        Ingredient(name: "Saus Sambal", quantity: 0, unit: "ml", image: "🌶️"),
        Ingredient(name: "Saus Tomat", quantity: 0, unit: "ml", image: "🍅"),
        Ingredient(name: "Tepung Terigu", quantity: 0, unit: "gr", image: "🥖"),
        Ingredient(name: "Tepung Maizena", quantity: 0, unit: "gr", image: "🌽"),
        Ingredient(name: "Santan Instan", quantity: 0, unit: "ml", image: "🥥"),
        Ingredient(name: "Bawang Putih", quantity: 0, unit: "siung", image: "🧄"),
        Ingredient(name: "Bawang Merah", quantity: 0, unit: "siung", image: "🧅"),
        Ingredient(name: "Bawang Bombay", quantity: 0, unit: "buah", image: "🧅"),
        Ingredient(name: "Cabe Rawit", quantity: 0, unit: "gr", image: "🌶️"),
        Ingredient(name: "Cabe Merah", quantity: 0, unit: "gr", image: "🌶️"),
        Ingredient(name: "Cabe Hijau", quantity: 0, unit: "gr", image: "🌶️"),
        Ingredient(name: "Jahe", quantity: 0, unit: "gr", image: "🫚"),
        Ingredient(name: "Kunyit", quantity: 0, unit: "gr", image: "🟠"),
        Ingredient(name: "Lengkuas", quantity: 0, unit: "gr", image: "🌱"),
        Ingredient(name: "Serai", quantity: 0, unit: "batang", image: "🌿"),
        Ingredient(name: "Daun Salam", quantity: 0, unit: "lembar", image: "🍃"),
        Ingredient(name: "Daun Jeruk", quantity: 0, unit: "lembar", image: "🍃"),
        Ingredient(name: "Daun Bawang", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Seledri", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Ketumbar Bubuk", quantity: 0, unit: "gr", image: "🌿"),
        Ingredient(name: "Jinten Bubuk", quantity: 0, unit: "gr", image: "🌿"),
        Ingredient(name: "Cengkeh", quantity: 0, unit: "pcs", image: "🌸"),
        Ingredient(name: "Kayu Manis", quantity: 0, unit: "gr", image: "🌳"),
        Ingredient(name: "Pala Bubuk", quantity: 0, unit: "gr", image: "🥧"),
        Ingredient(name: "Telur Ayam", quantity: 0, unit: "pcs", image: "🥚"),
        Ingredient(name: "Telur Puyuh", quantity: 0, unit: "pcs", image: "🥚"),
        Ingredient(name: "Tahu Putih", quantity: 0, unit: "pcs", image: "🍱"),
        Ingredient(name: "Tahu Kuning", quantity: 0, unit: "pcs", image: "🍱"),
        Ingredient(name: "Tempe", quantity: 0, unit: "papan", image: "🍱"),
        Ingredient(name: "Ayam Dada Fillet", quantity: 0, unit: "gr", image: "🍗"),
        Ingredient(name: "Ayam Paha", quantity: 0, unit: "gr", image: "🍗"),
        Ingredient(name: "Daging Sapi Cincang", quantity: 0, unit: "gr", image: "🥩"),
        Ingredient(name: "Ikan Lele", quantity: 0, unit: "gr", image: "🐟"),
        Ingredient(name: "Ikan Nila", quantity: 0, unit: "gr", image: "🐟"),
        Ingredient(name: "Ikan Kembung", quantity: 0, unit: "gr", image: "🐟"),
        Ingredient(name: "Udang Kupas", quantity: 0, unit: "gr", image: "🦐"),
        Ingredient(name: "Cumi", quantity: 0, unit: "gr", image: "🦑"),
        Ingredient(name: "Bakso Sapi", quantity: 0, unit: "pcs", image: "🍡"),
        Ingredient(name: "Sosis Ayam", quantity: 0, unit: "pcs", image: "🌭"),
        Ingredient(name: "Bayam", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Kangkung", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Sawi Hijau", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Sawi Putih", quantity: 0, unit: "gr", image: "🥬"),
        Ingredient(name: "Kol", quantity: 0, unit: "buah", image: "🥬"),
        Ingredient(name: "Wortel", quantity: 0, unit: "gr", image: "🥕"),
        Ingredient(name: "Buncis", quantity: 0, unit: "gr", image: "🫛"),
        Ingredient(name: "Kacang Panjang", quantity: 0, unit: "gr", image: "🫘"),
        Ingredient(name: "Timun", quantity: 0, unit: "buah", image: "🥒"),
        Ingredient(name: "Tomat", quantity: 0, unit: "buah", image: "🍅"),
        Ingredient(name: "Terong Ungu", quantity: 0, unit: "buah", image: "🍆"),
        Ingredient(name: "Labu Siam", quantity: 0, unit: "buah", image: "🎃"),
        Ingredient(name: "Kentang", quantity: 0, unit: "gr", image: "🥔"),
        Ingredient(name: "Jagung Manis", quantity: 0, unit: "buah", image: "🌽"),
        Ingredient(name: "Paprika Merah", quantity: 0, unit: "buah", image: "🫑"),
        Ingredient(name: "Paprika Hijau", quantity: 0, unit: "buah", image: "🫑"),
        Ingredient(name: "Paprika Kuning", quantity: 0, unit: "buah", image: "🫑"),
        Ingredient(name: "Jintan", quantity: 0, unit: "sdt", image: "🫚")
    ]
}
extension Color {
    static func random() -> Color {
        let hue = Double.random(in: 0...1)
        let saturation = Double.random(in: 0.3...0.5)
        let brightness = Double.random(in: 0.85...1.0)
        return Color(hue: hue, saturation: saturation, brightness: brightness)
            .opacity(0.3)
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
