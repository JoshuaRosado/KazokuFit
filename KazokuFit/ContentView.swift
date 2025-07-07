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
            VStack{
                HStack{
                    Text("User's Name")
                        .font(.system(size: 28))
                    Spacer()
                    Image(systemName: "circle")
                    // User's photo
                }
                VStack{
                    Image(systemName: "globe")
                }
                .frame(minWidth: 400, minHeight: 300)
                .background(.teal)
                
                Button("Scan In"){
                    
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .frame(width: 200, height: 300)
                
                
                Spacer()
                VStack{
                    Button("Weights"){
                        
                    }
                    .buttonStyle(.bordered)
                    Button("Calisthenics"){
                        
                    }
                    Button("Stretching"){
                        
                    }
                    Button("Food"){
                        
                    }
                }
                .font(.callout)
                .foregroundStyle(.black)
                
                .padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
