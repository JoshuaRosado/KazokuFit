//
//  User.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 8/3/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model

class User {
    var firstName: String
    var lastName : String
    var password: String
    // Attribute(.unique) It does not allow a duplicate email (each user with unique email)
    @Attribute(.unique) var email: String
    
    init(firstName: String, lastName: String, password: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        self.email = email
    }
}
