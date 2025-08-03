//
//  logInView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/16/25.
//

import SwiftUI

struct LogInView: View {
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
                
                
                Button("Log In"){}
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
    }
}

#Preview {
    LogInView()
}
