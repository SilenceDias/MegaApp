//
//  OrderView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: OrderModel
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(order.items) { appetizer in
                        ProductListCell(product: appetizer)
                    }
                    .onDelete(perform: { indexSet in
                        order.deleteItems(at: indexSet)
                    })
                }
                .listStyle(.plain)
                
                Button {
                    
                } label: {
                    AppButtonView(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                }
                .padding(.bottom, 20)
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               title: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            
            .navigationTitle("🛒 Order")
        }
    }
}

#Preview {
    OrderView()
}
