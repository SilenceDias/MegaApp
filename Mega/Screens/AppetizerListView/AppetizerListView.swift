//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
 
    var shops: [ShopModel] = MockDataShops.appetizers
    
    var body: some View {
        ZStack {
            NavigationView {
                List(shops, id: \.id) { shop in
                    ShopListCell(shop: shop)
                        .onTapGesture {
                            viewModel.isShowingDetailed = true
                            viewModel.selectedAppetizer = shop
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
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetailed ?  20 : 0)
            
            if viewModel.isShowingDetailed {
                DetailsView(shop: viewModel.selectedAppetizer!,
                            isShowingDetail: $viewModel.isShowingDetailed)
            }
            
            if viewModel.isLoading {
                LoadingView()
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
    AppetizerListView()
}
