
//
//  AppitizerListCell.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct AppitizerListCell: View {
    var appetizer: AppetizerModel
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$ \(appetizer.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppitizerListCell(appetizer: MockData.sampleAppetizer)
}
