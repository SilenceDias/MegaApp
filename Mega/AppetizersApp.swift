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
        GMSServices.provideAPIKey("AIzaSyAa2C7covQhlaG0-nDzHYXHEgxAimrLOec")
    }
    
    var order = OrderModel()

    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}


