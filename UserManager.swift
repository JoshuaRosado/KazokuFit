//
//  UserManager.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 8/3/25.
//
import CryptoKit
import Foundation
import SwiftData



// Create the possible Errors and insert them into an "enum" named UserManagerError
enum UserManagerError: Error, LocalizedError {
    case userAlreadyExists
    case userNotFound
    case incorrectPassword
    case invalidEmailFormat
    case emptyFields
    case weakPassword
    
    // return a string with the errorDescription.
    // User switch to attach the string with each one of our cases from the UserManagerError
    var errorDescription: String? {
        switch self {
        case .userAlreadyExists: return "An account with this email already exists."
        case .userNotFound: return " No account found with this email."
        case .incorrectPassword: return "Incorrect password."
        case .invalidEmailFormat: return "PLease enter a valid email address."
        case .emptyFields : return " All fields are required"
        case .weakPassword: return " Password must be at least 6 characters"
        }
    }
}




class UserManager{
    
    // Create a "Personal Assistant" = ModelContext
    // That writes down data when a user creates and account
    // And looks for data to be validated when a user is trying to login
    
    let model: ModelContext
    
    init(model: ModelContext) {
        self.model = model
    }
    
    func createUser(firstName: String, lastName: String, password: String,confirmPassword: String, email: String ) throws {
        
        guard !firstName.isEmpty, !lastName.isEmpty, !password.isEmpty, !email.isEmpty else {
            throw UserManagerError.emptyFields
            
        }
            guard isValidEmail(email) else {
                throw UserManagerError.invalidEmailFormat
            }
        
            guard password.count >= 6 else {
                throw UserManagerError.weakPassword
            }
        
        if try userExists(email: email) {
            throw UserManagerError.userAlreadyExists
        }
    
        
        // Creating new user with the data submitted by user
        let newUser = User(firstName: firstName, lastName: lastName, password: hashPassword(password),confirmPassword: confirmPassword, email: email)
        // Have the Personal Assistant write this data down
        model.insert(newUser)
        // Try saving the new user's data
        try model.save()
        
    }
    func hashPassword(_ password: String) -> String {
        let digest = SHA256.hash(data: Data(password.utf8))
        return digest.compactMap { String(format: "%02x", $0) }.joined()
    }
    
    func loginUser(email: String, password: String) throws -> User {
        guard !email.isEmpty, !password.isEmpty else {
            throw UserManagerError.emptyFields
        }
        
        guard isValidEmail(email) else {
            throw UserManagerError.invalidEmailFormat
        }
        
        let descriptor = FetchDescriptor<User>(predicate: #Predicate { $0.email == email})
        let users = try model.fetch(descriptor)
        
        guard let user = users.first else {
               throw UserManagerError.userNotFound //
           }

           guard user.password == hashPassword(password) else {
               throw UserManagerError.incorrectPassword //
           }
        
        return user
    }
    
    private func userExists(email: String) throws -> Bool {
        let descriptor = FetchDescriptor<User>(predicate: #Predicate { $0.email == email})
        let users = try model.fetch(descriptor)
        return !users.isEmpty
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return NSPredicate( format: "Self Matches %@", emailFormat).evaluate(with: email)
    }
}
