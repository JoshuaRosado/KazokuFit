//
//  UserManager.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 8/3/25.
//

import Foundation
import SwiftData

class UserManager{
    
    // Create a "Personal Assistant" = ModelContext
    // That writes down data when a user creates and account
    // And looks for data to be validated when a user is trying to login
    
    let model: ModelContext
    
    init(model: ModelContext) {
        self.model = model
    }
    
    func createUser(firstName: String, lastName: String, password: String, email: String) throws {
        
        // Creating new user with the data submitted by user
        let newUser = User(firstName: firstName, lastName: lastName, password: password, email: email)
        // Have the Personal Assistant write this data down
        model.insert(newUser)
        // Try saving the new user's data
        try model.save()
        
    }
}
