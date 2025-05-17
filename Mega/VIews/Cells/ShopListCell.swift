//
//  AppitizerListCell.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct ShopListCell: View {
    var shop: ShopModel
    var body: some View {
        HStack {
            Image(shop.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading) {
                Text(shop.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(shop.address)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ShopListCell(shop: MockDataShops.sampleShop)
}
