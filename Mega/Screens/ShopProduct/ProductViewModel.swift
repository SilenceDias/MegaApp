//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import Foundation

final class ProductViewModel: ObservableObject {
    @Published var isShowingDetailed = false
    @Published var selectedAppetizer: ProductModel?
    @Published var alertItem: AlertItem?
}
