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
                }
            }
            .frame(maxHeight: 600)
            .padding(25)
            .padding(.top,40)
            VStack{
                
                VStack{
                    
                    Image("gymImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 405, height: 210)
                        .clipped()
                        
                    
                    ZStack{
                        Rectangle(
                        )
                        .fill(.ultraThinMaterial)
                        .background(isUserCheckedIn ? .green.opacity(0.3) : .red.opacity(0.3))
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        
                        
                        
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
                    .padding(.top, 20)
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

                .frame(width: 400, height: 400)
                
            }
            
            .background(.white)

            
        }
        
//        .background(Color("darkBlue"))
        .background(
                    LinearGradient(
                        colors: [Color("darkBlue") , .coral], // Array of colors for the gradient
                        startPoint: .topLeading,   // Starting point of the gradient
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

