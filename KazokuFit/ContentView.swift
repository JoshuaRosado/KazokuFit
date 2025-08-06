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
    
    
    var body: some View {
        OpeningView(userManager: userManager)
    }
}


#Preview {

        let dummyModelContext = try! ModelContainer(for: User.self).mainContext
        
        let userManager = UserManager(model: dummyModelContext)
        
      return  ContentView(userManager: userManager)
    
}
