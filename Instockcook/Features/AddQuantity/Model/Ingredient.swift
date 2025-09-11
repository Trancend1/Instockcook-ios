//
//  AddIngredients.swift
//  Instockcook
//
//  Created by Mac on 11/09/25.
//

import Foundation

struct Ingredient: Identifiable, Codable{
    let id: String = UUID().uuidString
    var name: String
    var quantity: Int
    var unit: String
}

