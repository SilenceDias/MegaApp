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
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               title: "You have no items in your order.\nPlease add an appetizer!")
                }
                else {
                    List {
                        ForEach(order.items) { appetizer in
                            ProductListCell(product: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.deleteItems(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    NavigationLink(destination: PaymentView()
                        .environmentObject(order)) {
                            AppButtonView(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        }
                        .padding(.bottom, 20)
                        .padding(.bottom, 20)
                }
            }
            
            .navigationTitle("🛒 Order")
        }
    }
}

#Preview {
    OrderView()
}
