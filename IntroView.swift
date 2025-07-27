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
            RadialGradient(colors: [.darkBlue, .coral], center: .bottom, startRadius:500, endRadius:900)
                .ignoresSafeArea()
        }
        // Logo Image for intro
    }
}

#Preview {
    IntroView()
}
