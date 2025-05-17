//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [AppetizerModel] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false 
    @Published var isShowingDetailed = false
    @Published var selectedAppetizer: ShopModel?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false 
                switch result {
                case .success(let appetizers):
                    self?.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self?.alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        self?.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self?.alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        self?.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }

}
