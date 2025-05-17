//
//  ContentView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: OrderModel
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
                .badge(order.items.count)
            
            GMaps()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
