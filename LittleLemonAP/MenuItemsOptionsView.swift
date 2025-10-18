//
//  MenuItemsOptionsView.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-17.
//

import SwiftUI

struct MenuItemsOptionsView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("SELECTED CATAGORIES")){
                    ForEach(MenuCatagory.allCases){
                        catagory in
                        Text(catagory.rawValue)
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(sortOption.allCases){
                        sort in Text(sort.rawValue)
                    }
                }
            }
            .navigationTitle("Options")
        }
    }
}

#Preview {
    MenuItemsOptionsView()
}
