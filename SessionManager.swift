//
//  SessionManager.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 8/7/25.
//

import Foundation
import SwiftData

@Observable
class SessionManager: ObservableObject{
    var currentUser: User? = nil
    
    func login(user: User) {
            self.currentUser = user
        }
    func logout() {
            self.currentUser = nil
        }
}
