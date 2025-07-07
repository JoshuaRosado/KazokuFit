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
                .frame(minWidth: 405, minHeight: 200)
                .background(.teal)
                
                VStack{
                    Button("Check In"){
                        
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    
                }
                .frame(minWidth: 405, minHeight: 200)
 
                .border(.black)
                
                
                Spacer()
                VStack{
                    HStack{
                        Button("Weights"){
                            
                        }
                        .buttonStyle(.bordered)
                        Button("Calisthenics"){
                            
                        }
                    }
                    HStack{
                        Button("Stretching"){
                            
                        }
                        Button("What to eat?"){
                            
                        }
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
