//
//  MenuItemsView.swift
//  LittleLemonAP
//
//  Created by Bart Gisone on 2025-10-17.
//
import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewViewModel()
    @State private var showingOptions = false

    private let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 3)

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {

                
                    if !viewModel.foodItems.isEmpty {
                        Text("Food")
                            .font(.title2.bold())
                            .padding(.horizontal)

                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(viewModel.foodItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack(spacing: 4) {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)

                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                            .frame(maxWidth: .infinity)
                                    }
                                    .padding(6)
                                    .background(Color(.systemBackground))
                                    .cornerRadius(8)
                                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 1)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    if !viewModel.drinkItems.isEmpty {
                        Text("Drinks")
                            .font(.title2.bold())
                            .padding(.horizontal)

                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(viewModel.drinkItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack(spacing: 4) {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)

                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                            .frame(maxWidth: .infinity)
                                    }
                                    .padding(6)
                                    .background(Color(.systemBackground))
                                    .cornerRadius(8)
                                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 1)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    if !viewModel.dessertItems.isEmpty {
                        Text("Dessert")
                            .font(.title2.bold())
                            .padding(.horizontal)

                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(viewModel.dessertItems) { item in
                                NavigationLink(destination: MenuItemDetailsView(item: item)) {
                                    VStack(spacing: 4) {
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(height: 80)

                                        Text(item.title)
                                            .font(.caption)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                            .frame(maxWidth: .infinity)
                                    }
                                    .padding(6)
                                    .background(Color(.systemBackground))
                                    .cornerRadius(8)
                                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 1)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Menu Items")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingOptions = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $showingOptions) {
                MenuItemsOptionsView()
            }
        }
    }
}
