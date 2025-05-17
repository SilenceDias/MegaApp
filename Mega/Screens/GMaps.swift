//
//  GMaps.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 17.05.2025.
//

import SwiftUI

struct GMaps: View {
    var body: some View {
        // Например, центрируем на Алматы
        GoogleMapView(
            latitude: 51.08942928204394,
            longitude: 71.40708259397854,
            zoom: 13.0
        )
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    GMaps()
}
