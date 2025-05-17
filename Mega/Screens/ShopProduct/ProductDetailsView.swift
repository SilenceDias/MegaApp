//
//  ProductDetailsView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 17.05.2025.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var order: OrderModel
    let product: ProductModel
    @Binding var isShowingDetail: Bool

    var body: some View {
        // Оборачиваем в NavigationStack, чтобы NavigationLink работал
        NavigationStack {
            VStack {
                AsyncImage(url: URL(string: product.imageURL)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: 300, height: 225)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 225)
                            .clipped()
                            .cornerRadius(6)
                    case .failure:
                        Image(systemName: "food-placeholder")
                            .frame(width: 300, height: 225)
                    @unknown default:
                        EmptyView()
                    }
                }

                VStack(spacing: 16) {
                    Text(product.name)
                        .font(.title)
                        .bold()
                    Text(product.description)
                        .font(.title3)
                        .padding()
                }

                Spacer()

                Button {
                    order.add(product)
                } label: {
                    AppButtonView(title: "$\(product.price, specifier: "%.2f") - Купить")
                }
                .padding(.bottom, 30)
            }
            .frame(width: 300, height: 525)
            .background(Color(.systemBackground))
            .cornerRadius(20)
            .shadow(color: .black, radius: 40)
            .overlay(
                Button {
                    isShowingDetail = false
                } label: {
                    DismissButton()
                }
                , alignment: .topTrailing
            )
            .navigationBarHidden(true) // прячем стандартную навигацию
        }
    }
}

#Preview {
    ProductDetailsView(product: MockDataProducts.sampleProduct, isShowingDetail: .constant(true))
}
