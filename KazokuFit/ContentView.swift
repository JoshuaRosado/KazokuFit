//
//  ContentView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/5/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    let userManager : UserManager
    @StateObject private var session = SessionManager()
    
    
    var body: some View {
        Group{
            if session.isLoggedIn{
                HomeView(userManager: userManager, session: session)
            } else{
                
                OpeningView(userManager: userManager, session: session)
            }
        }
        
        
    }
    
    
}
    
    #Preview {
        let dummyModelContext = try! ModelContainer(for: User.self).mainContext
        let userManager = UserManager(model: dummyModelContext)
        return ContentView(userManager: userManager)
    }
