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
                .padding()
                VStack{
                    Image("gymImage")
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 400, height: 250)
                
                
                VStack{
                    Button("Check In"){
                    }
                    
                    
                }
                .frame(minWidth: 400, minHeight: 100)
 
                

                VStack{
                    HStack{
                        
                        MainButtonSelectionView(subjectSelected: "Weights")
                        
                        MainButtonSelectionView(subjectSelected: "Calisthenics")
                    }
                    
                    HStack{
                        MainButtonSelectionView(subjectSelected: "Stretching")
                        
                        MainButtonSelectionView(subjectSelected: "What to eat?")
                    }
                    .padding()
                }
                
                .font(.callout)
                .foregroundStyle(.black)
//                .border(.black)
                .frame(width: 400, height: 400)
                
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
