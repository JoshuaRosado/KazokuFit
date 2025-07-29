//
//  IntroView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/26/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack{
            Color.darkBlue
                .ignoresSafeArea()
            
            VStack{
                Text("Welcome")
                
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
            }
        }
        
    }
}

#Preview {
    IntroView()
}
