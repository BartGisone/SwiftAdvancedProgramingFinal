//
//  MenuItem.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation

class MenuItem: MenuItemProtocol, Identifiable {
    
    let id: UUID
    let title: String
    let price: Double
    let menuCatagory: MenuCatagory
    var ordersCount: Int
    var ingredients: [Ingredient]
    
    init(id: UUID = UUID(), title: String, price: Double, menuCatagory: MenuCatagory, ordersCount: Int = 0, ingredients: [Ingredient]) {
        self.id = id
        self.title = title
        self.price = price
        self.menuCatagory = menuCatagory
        self.ordersCount = ordersCount
        self.ingredients = ingredients
    }
    
}
