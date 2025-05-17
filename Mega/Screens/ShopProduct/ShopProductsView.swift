//
//  ShopProductsView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 17.05.2025.
//

import SwiftUI

struct ShopProductsView: View {
    let shop: ShopModel
    @StateObject var viewModel = ProductViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(shop.products, id: \.id) { product in
                    ProductListCell(product: product)
                        .onTapGesture {
                            viewModel.isShowingDetailed = true
                            viewModel.selectedAppetizer = product
                        }
                    
                }
                .navigationTitle("Shops")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 40)
                    }                }
                .disabled(viewModel.isShowingDetailed ?  true : false)
            }
            .blur(radius: viewModel.isShowingDetailed ?  20 : 0)
            
            if viewModel.isShowingDetailed {
                ProductDetailsView(product: viewModel.selectedAppetizer!,
                                   isShowingDetail: $viewModel.isShowingDetailed)
            }
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    ShopProductsView(shop: MockDataShops.sampleShop)
}


