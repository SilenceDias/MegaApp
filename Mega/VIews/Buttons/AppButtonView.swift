//
//  AppButtonView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct AppButtonView: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .padding()
            .frame(width: 250, height: 50)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    AppButtonView(title: "")
}
