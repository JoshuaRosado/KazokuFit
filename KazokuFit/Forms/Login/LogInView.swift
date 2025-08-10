//
//  logInView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/16/25.
//
import SwiftData
import SwiftUI

struct LogInView: View {
    
    let userManager: UserManager // Injected UserManager
    @ObservedObject var session: SessionManager
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn = false
    @State private var errorMessage : String?
    @State private var isCreateAccountViewShowing = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                Spacer()
                Form{
                    
                    TextField("username", text: $email)
                    SecureField("password", text: $password)
                    
                    
                }
                .scrollContentBackground(.hidden)
                .foregroundStyle(.black)
                .frame(width: 350, height: 200)
                .padding()
                
                
                Button("Log In"){
                    do {
                        let user = try userManager.loginUser(email: email, password: password)
                        session.currentUser = user
                        print("Welcome, \(user.firstName)")
                        dismiss()
                    } catch {
                        errorMessage = error.localizedDescription
                    }
                }
                    .padding(.top, -25)
                    .buttonStyle(.borderedProminent)
                
                if let errorMessage = errorMessage {
                    Text(errorMessage).foregroundStyle(.red)
                }
                
                
                Spacer()
                VStack{
                    
                    Button("Create account"){
                        isCreateAccountViewShowing.toggle()
                        
                    }
                    .padding()
                    
                }
                
            }
            .foregroundStyle(.white)
            .frame(width: 350, height: 800, alignment: .center)
       
            
   
        }
        
        .fullScreenCover(isPresented: $isCreateAccountViewShowing){
            CreateAccountView(userManager: userManager, session: session)
        }
        
        .fullScreenCover(isPresented: $isLoggedIn) {
            HomeView(userManager: userManager, session: session)
        }
    }
}

#Preview {
    
    let dummyModelContext = try! ModelContainer( for: User.self).mainContext
    let userManager = UserManager(model: dummyModelContext)
    let session = SessionManager()
    return LogInView(userManager: userManager, session: session)
}
