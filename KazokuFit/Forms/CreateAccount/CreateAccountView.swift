//
//  CreateAccountView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/21/25.
//

import SwiftData
import SwiftUI

struct CreateAccountView: View {
    
    let userManager: UserManager // Injected UserManager
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var showingLogInView = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                Spacer()
                Form{
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    SecureField("Confirm Password", text: $password)
                    

              
                }
                .frame(width: 350, height: 300)
                .scrollContentBackground(.hidden)
                .padding()
                
                
                Button("Create account"){
                    
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                VStack{
 
                    Button("Already have an account?"){
                        
                        showingLogInView.toggle()
                       
                    }
                    .padding(.bottom)
                }
                .foregroundStyle(.white)
            }
            .frame(width: 350, height: 800, alignment: .center)

            
            
            
        }
    }
}

#Preview {
    let dummyModelContext = try! ModelContainer(for: User.self).mainContext
    let userManager = UserManager(model: dummyModelContext)
    return CreateAccountView(userManager: userManager)
}
