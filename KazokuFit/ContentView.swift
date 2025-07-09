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
                .frame(minWidth: 400, minHeight: 200)
                .background(.teal)
                
                VStack{
                    Button("Check In"){
                        
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    
                }
                .frame(minWidth: 400, minHeight: 200)
 
                .border(.black)
                
                
                VStack{
                    HStack{
                        
                        MainButtonSelectionView(subjectSelected: "Weights")
                        
                        MainButtonSelectionView(subjectSelected: "Calisthenics")
                    }
                    .padding()
                    HStack{
                        MainButtonSelectionView(subjectSelected: "Stretching")
                        
                        MainButtonSelectionView(subjectSelected: "What to eat?")
                    }
                    .padding()
                }
                
                .font(.callout)
                .foregroundStyle(.black)
                .border(.black)
                .frame(width: 400, height: 400)
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
