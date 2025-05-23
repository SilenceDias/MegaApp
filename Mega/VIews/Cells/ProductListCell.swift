//
//  ProductListCell.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 17.05.2025.
//

import SwiftUI

struct ProductListCell: View {
    var product: ProductModel
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.imageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 50, height: 50)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(6)
                case .failure:
                    Image(systemName: "food-placeholder")
                        .frame(width: 50, height: 50)
                @unknown default:
                    EmptyView()
                }
            }
            
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(product.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProductListCell(product: MockDataProducts.sampleProduct)
}

