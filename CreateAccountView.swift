//
//  CreateAccountView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/21/25.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack{
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
            VStack{
                Form{
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    TextField("Email", text: $email)
                    TextField("Password", text: $password)
                    TextField("Confirm Password", text: $password)
                    

              
                }
                .scrollContentBackground(.hidden)
                .padding()
                
                VStack{
                    
                    
                    
                    Button("Create account"){
                        // open new view
                    }
                    Button("Log In"){}
                }
                .foregroundStyle(.white)
            }
            .frame(width: 350, height: 400, alignment: .center)
       
            Spacer()
            
            
            
        }
    }
}

#Preview {
    CreateAccountView()
}
