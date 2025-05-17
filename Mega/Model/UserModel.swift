//
//  UserModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import Foundation


struct UserModel: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
