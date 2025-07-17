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
                .padding(.bottom, 50)
            }
            .frame(width: 350, height: 650, alignment: .center)
            .border(.red)
            .padding(.top, 200)
            VStack{
                Button("Log In"){}
                
                
                Button("Create account"){
                    // open new view
                }
            }
            
            
        }
        
        
        
    }
}

#Preview {
    logInView()
}
