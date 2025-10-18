//
//  MenuItemTests.swift
//  LittleLemonAPTests
//
//  Created by Bart Gisone on 2025-10-20.
//

import XCTest
@testable import LittleLemonAP

final class MenuItemTests: XCTestCase {

    func testMenuItemTitleInitialization() {
        let expectedTitle = "Pasta with Tomato Sauce"
        let menuItem = MenuItem(title: expectedTitle, price: 9.99, menuCatagory: .food, ingredients: [.tomatoSauce, .pasta])

        XCTAssertEqual(menuItem.title, expectedTitle, "Menu item title should be initialized correctly.")
    }

    func testMenuItemIngredientsInitialization() {
        let expectedIngredients: [Ingredient] = [.spinach, .broccoli, .carrot]
        let menuItem = MenuItem(title: "Veggie Platter", price: 12.50, menuCatagory: .food, ingredients: expectedIngredients)

        XCTAssertEqual(menuItem.ingredients, expectedIngredients, "Menu item ingredients should be initialized correctly.")
    }
}
