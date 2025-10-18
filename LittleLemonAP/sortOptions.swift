//
//  sortOptions.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-19.
//

import Foundation

enum sortOption: String, CaseIterable, Identifiable{
    
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetical = "A-Z"
    
    var id: String { rawValue }
}
