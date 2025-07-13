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
                        .foregroundStyle(.white)
                        .font(.system(size: 28))
                    Spacer()
                    
                    Image(systemName: "circle")
                    // User's photo
                }
                .padding(25)
                .padding(.top,40)
                VStack{
                    Image("gymImage")
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 400, height: 250)
                
                
                ZStack{
                    Circle(
                        )
                    .fill(.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 2, y: -2)
                        .frame(width: 100, height: 100)
                        
                    
                    Button("Check In"){
                    }
                }
                
                .frame(minWidth: 400, minHeight: 75)
                .padding(.top)

               
 
                

                VStack{
                    HStack{
                        
                        MainButtonSelectionView(subjectSelected: "Weights")
                        
                        MainButtonSelectionView(subjectSelected: "Calisthenics")
                    }
                    
                    HStack{
                        MainButtonSelectionView(subjectSelected: "Stretching")
                        
                        MainButtonSelectionView(subjectSelected: "What to eat?")
                    }
                    
                }
                .buttonStyle(.plain)
                .font(.callout)
                .foregroundStyle(.black)

                .frame(width: 400, height: 300)
                
            }
            
        }
        .background(Color("darkBlue"))

        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
