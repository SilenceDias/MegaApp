//
//  AppetizerModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import Foundation

struct AppetizerModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [AppetizerModel]
}

struct MockData {
    static let sampleAppetizer = AppetizerModel(id: 0001, name: "Test App", description: "Test Discription uo", price: 10.0, imageURL: "", calories: 222, protein: 5, carbs: 10)
    static let sampleAppetizer1 = AppetizerModel(id: 0004, name: "Test2App", description: "Test Discription uo", price: 10.0, imageURL: "", calories: 222, protein: 5, carbs: 10)
    static let sampleAppetizer2 = AppetizerModel(id: 0003, name: "Test3 App", description: "Test Discription uo", price: 10.0, imageURL: "", calories: 222, protein: 5, carbs: 10)
    static let sampleAppetize3 = AppetizerModel(id: 0002, name: "Test4 App", description: "Test Discription uo", price: 10.0, imageURL: "", calories: 222, protein: 5, carbs: 10)
    
    static var appetizers = [sampleAppetizer, sampleAppetizer1, sampleAppetizer2, sampleAppetize3]
}
