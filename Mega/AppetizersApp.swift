//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI
import GoogleMaps

@main
struct AppetizersApp: App {
    
    init() {
        // Регистрируем ваш API-ключ до создания любых View
        GMSServices.provideAPIKey("AIzaSyCQA1xuzMtnLc95UZlbS6_eMB9Sk5tvRlY")
    }
    
    var order = OrderModel()

    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}


