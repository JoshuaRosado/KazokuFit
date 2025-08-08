//
//  SessionManager.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 8/7/25.
//

import Foundation
import SwiftData

@Observable
class SessionManager{
    var currentUser: User? = nil
    var isLogIn: Bool {
        currentUser != nil
    }
}
