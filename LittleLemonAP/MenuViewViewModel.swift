//
//  MenuViewViewModel.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation
import SwiftUI
internal import Combine

class MenuViewViewModel: ObservableObject {
    @Published var foodItems: [MenuItem]
    @Published var drinkItems: [MenuItem]
    @Published var dessertItems: [MenuItem]

    init() {
        self.foodItems = mockFoodItems
        self.drinkItems = mockDrinkItems
        self.dessertItems = mockDessertItems
    }
}

