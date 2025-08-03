//
//  IntroView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/26/25.
//

import SwiftUI

struct IntroView: View {
    @State private var onAppear = false
    var body: some View {
        ZStack{
            Color.darkBlue
                .ignoresSafeArea()

                
                
                Image("logo")
                    .resizable()
                    .scaledToFit()

        }
        .scaleEffect(onAppear ? 1: 1.5)
//                .opacity(onAppear ? 1.0: 0.0)
                .onAppear{
                    withAnimation(.easeOut(duration: 1.0)){
                        onAppear = true
                    }
                }
        
    }
}

#Preview {
    IntroView()
}
