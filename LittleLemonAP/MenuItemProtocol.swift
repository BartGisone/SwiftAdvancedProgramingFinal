//
//  MenuItemProtocol.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation

protocol MenuItemProtocol{
    var id: UUID{ get }
    var price: Double { get }
    var title: String { get }
    var menuCatagory: MenuCatagory { get }
    var ordersCount: Int { get set}
    var ingredients: [Ingredient] { get set }
    
}
