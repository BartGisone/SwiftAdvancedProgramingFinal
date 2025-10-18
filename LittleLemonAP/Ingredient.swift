//
//  Ingredient.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation

enum Ingredient: String, CaseIterable, Identifiable{
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomatoSauce = "Tomato Sauce"
    
    var id: String { rawValue }
}
