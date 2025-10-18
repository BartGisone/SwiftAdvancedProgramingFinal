//
//  MenuItemsDetailsView.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-17.
//


import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {

                Image("LittleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .padding(.top)

                Text(item.title)
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Price:")
                        .font(.headline)
                    
                    Text(String(format: "$%.2f", item.price))
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Ordered:")
                        .font(.headline)
                        
                        Text("\(item.ordersCount)")
                            .font(.body)
                            .foregroundColor(.secondary)
                        
                    }


                VStack(alignment: .leading, spacing: 4) {
                    Text("Ingredients")
                        .font(.headline)

                    ForEach(item.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient.rawValue)")
                            .font(.body)
                    }
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
