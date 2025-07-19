//
//  logInView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/16/25.
//

import SwiftUI

struct logInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack{
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
            VStack{
                Form{
                    TextField("username", text: $username)
                    TextField("password", text: $password)
                    
                }
                .scrollContentBackground(.hidden)
                .padding()
                
                VStack{
                    Button("Log In"){}
                    
                    
                    Button("Create account"){
                        // open new view
                    }
                }
                .foregroundStyle(.white)
            }
            .frame(width: 350, height: 250, alignment: .center)
       
            Spacer()
            
            
            
        }
        
        
        
    }
}

#Preview {
    logInView()
}
