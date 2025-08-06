//
//  KazokuFitApp.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/5/25.
//
import SwiftData
import SwiftUI

@main
struct KazokuFitApp: App {
    var body: some Scene {
        WindowGroup {
            let container = try! ModelContainer(for: User.self)
            let userManager = UserManager(model: container.mainContext)
            ContentView(userManager: userManager)
                .modelContainer(for: User.self)
        }
        
    }
        
}
