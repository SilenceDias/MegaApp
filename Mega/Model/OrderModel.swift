//
//  OrderModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 15.05.2025.
//

import SwiftUI

final class OrderModel: ObservableObject {
    
    @Published var items: [ProductModel] = []
    
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    
    func add(_ appetizer: ProductModel) {
        items.append(appetizer)
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
