//
//  ContentView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isConfirmationDialogVisible = false
    @State private var isUserCheckedIn = false
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
                .frame(width: 400, height: 200)
                .padding(.top, 25)
                .padding(.bottom, 25)
                
                
                
                ZStack{
                    Rectangle(
                        )
                    .fill(.ultraThinMaterial)
                    .background(isUserCheckedIn ? .green.opacity(0.3) : .red.opacity(0.3))
                    .frame(width: 400, height: 70)
                        
                    
                    Button(isUserCheckedIn ? "Enjoy your workout": "Check In"){
                        isConfirmationDialogVisible.toggle()
//
                    }
                    .confirmationDialog("Check In", isPresented: $isConfirmationDialogVisible){
                        Button("Check In"){
                            withAnimation{
                                isUserCheckedIn.toggle()
                            }
                            
                        }
                        Button("Cancel", role:.cancel){}
                    }
                }
                
                .frame(minWidth: 400, minHeight: 75)
                .foregroundStyle(.white)
                .padding(.top, 60)

               
 
                

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
            .padding(.top,10)
            
        }
        .background(Color("darkBlue"))

        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
