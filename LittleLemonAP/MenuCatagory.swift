//
//  MenuCatagory.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-17.
//

import Foundation

enum MenuCatagory: String, CaseIterable, Identifiable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
    
    var id: String { rawValue }
    
}
