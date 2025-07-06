//
//  ContentView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            HStack{
                Text("User's Name")
                    .font(.system(size: 28))
                Spacer()
                Image(systemName: "circle")
            }
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
