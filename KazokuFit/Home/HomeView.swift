//
//  HomeView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/24/25.
//
import SwiftData
import SwiftUI

struct HomeView: View {
    let userManager: UserManager
    @Bindable var session: SessionManager
    
    @State private var isLogInViewOpen = false
    @State private var isConfirmationDialogVisible = false
    @State private var isUserCheckedIn = false
    var body: some View {
        ScrollView{
            VStack{
                if session.currentUser != nil {
                    
                    
                    Text(session.currentUser?.firstName ?? "User")
                        .foregroundStyle(.white)
                        .font(.system(size: 28))
                    //                        Spacer()
                    //
                    //                        Image(systemName: "circle")
                    //                        // User's photo
                }
                else {
                    Text("Welcome")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .padding()
                    
                }
            }
            .frame(maxWidth: .infinity, minHeight: 120, alignment: .bottomLeading)

            .padding(.leading)
            .padding(.top,30)
            
            VStack{
                ZStack{
                    
                    
                    
                    
                    VStack{
                        VStack{
                            Image("gymImage")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                            
                        }
                        .mask(LinearGradient(gradient: Gradient(stops: [
                            .init(color: .black, location: 0.5),
                            .init(color: .clear, location: 1),
                            .init(color: .black, location: 0),
                            .init(color: .clear, location: 1)
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        
                        VStack{
                            Button(isUserCheckedIn ? "Enjoy your workout": "Check In"){
                                isConfirmationDialogVisible.toggle()
                                //
                            }
                            .controlSize(.extraLarge)
                            .buttonBorderShape(.capsule)
                            .buttonStyle(.bordered)
                            .tint((isUserCheckedIn ? .green.opacity(0.8) : .red))
//                            .foregroundStyle(isUserCheckedIn ? .green.opacity(0.8) : .red)
                            .confirmationDialog("Check In", isPresented: $isConfirmationDialogVisible){
                                Button("Check In"){
                                    withAnimation{
                                        isUserCheckedIn.toggle()
                                    }
                                    
                                }
                                
                                
                                Button("Cancel", role:.cancel){}
                            }
                            
                            
                            
                            
                            
                            .frame(minWidth: 400, minHeight: 100)
                            .foregroundStyle(.white)
                            
                        }
                        
                        
                        
                        
                        VStack{
                            HStack{
                                
                                
                                MainButtonSelectionView(subjectSelected: "Weights", isLoginViewOpen: isLogInViewOpen)
                                
                                
                                MainButtonSelectionView(subjectSelected: "Calisthenics",isLoginViewOpen: false)
                            }
                            
                            HStack{
                                MainButtonSelectionView(subjectSelected: "Stretching",isLoginViewOpen: false)
                                
                                MainButtonSelectionView(subjectSelected: "What to eat?",isLoginViewOpen: false)
                            }
                            
                        }
                        .buttonStyle(.plain)
                        .font(.callout)
                        .foregroundStyle(.black)
                        
                        .frame(maxWidth: .infinity, minHeight: 200)
                        
                    }
                    .frame(height: 600)
                    
                    //            .background(.white)
                    
                    
                    
                }
                
            }
            
        }
        
  
        .background(
            LinearGradient(
                colors: [Color("coral") , .white], // Array of colors for the gradient
                startPoint: .top,   // Starting point of the gradient
                endPoint: .bottomTrailing  // Ending point of the gradient
            )
            
        )
        
        .edgesIgnoringSafeArea(.all)
        
        .sheet(isPresented: $isLogInViewOpen){
            LogInView(userManager: userManager, session: session)
        }
    }
    
}

#Preview {
    let dummyModelContext = try! ModelContainer(for: User.self).mainContext
    
    let userManager = UserManager(model: dummyModelContext)
    let session = SessionManager()
    return HomeView(userManager: userManager, session: session)
}

