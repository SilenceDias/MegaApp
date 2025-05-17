//
//  DetailsView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct DetailsView: View {
    let shop: ShopModel
    @Binding var isShowingDetail: Bool

    var body: some View {
        // Оборачиваем в NavigationStack, чтобы NavigationLink работал
        NavigationStack {
            VStack {
                Image(shop.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)

                VStack(spacing: 16) {
                    Text(shop.name)
                        .font(.title)
                        .bold()
                    Text(shop.description)
                        .font(.title3)
                        .padding()
                }

                Spacer()

                // Вот он — встроенный NavigationLink вместо обычного Button
                NavigationLink {
                    ShopProductsView(shop: shop)
                } label: {
                    AppButtonView(title: "Перейти к товарам")
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
    DetailsView(shop: MockDataShops.sampleShop1, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    var body: some View {
        VStack {
            Text(title)
                .font(.caption)
            Text("\(value)")
                .font(.title3)
                .italic()
                .foregroundStyle(.secondary)
        }
    }
}
