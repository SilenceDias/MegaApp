//
//  EmptyState.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 15.05.2025.
//

import SwiftUI

struct EmptyState: View {
    
    var imageName: String
    var title: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", title: "No order items")
}
