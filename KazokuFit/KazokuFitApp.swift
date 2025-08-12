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

    let container: ModelContainer

    init() {
        do {
            container = try ModelContainer(for: User.self)
        } catch {
            fatalError("❌ Failed to create ModelContainer: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            let userManager = UserManager(model: container.mainContext)
            ContentView(userManager: userManager)
                .modelContainer(container) 
        }
    }
}
