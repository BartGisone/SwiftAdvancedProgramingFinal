//
//  MockMenuData.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation

let mockFoodItems: [MenuItem] = (1...12).map { index in
    MenuItem(
        title: "Food Item \(index)",
        price: Double.random(in: 8.0...15.0),
        menuCatagory: .food,
        ingredients: [.pasta, .tomatoSauce]
    )
}

let mockDrinkItems: [MenuItem] = (1...8).map { index in
    MenuItem(
        title: "Drink Item \(index)",
        price: Double.random(in: 2.0...6.0),
        menuCatagory: .drink,
        ingredients: [.carrot]
    )
}

let mockDessertItems: [MenuItem] = (1...4).map { index in
    MenuItem(
        title: "Dessert Item \(index)",
        price: Double.random(in: 4.0...8.0),
        menuCatagory: .dessert,
        ingredients: [.broccoli]
    )
}



