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
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isCreateAccountViewShowing = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                Spacer()
                Form{
                    
                    TextField("username", text: $email)
                    TextField("password", text: $password)
                    
                    
                }
                .scrollContentBackground(.hidden)
                .frame(width: 350, height: 200)
                .padding()
                
                
                Button("Log In"){
                    do {
                        let user = try userManager.loginUser(email: email, password: password)
                        print("Welcome, \(user.firstName)")
                    } catch {
                        print("Login failer: \(error.localizedDescription)")
                    }
                }
                    .padding(.top, -25)
                    .buttonStyle(.borderedProminent)
                
                
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
            CreateAccountView(userManager: userManager)
        }
    }
}

#Preview {
    
    let dummyModelContext = try! ModelContainer( for: User.self).mainContext
    let userManager = UserManager(model: dummyModelContext)
    return LogInView(userManager: userManager)
}
