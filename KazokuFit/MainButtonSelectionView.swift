//
//  MainButtonSelectionView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/7/25.
//

import SwiftUI

struct MainButtonSelectionView: View {
    @State var subjectSelected: String
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.light)
                    .shadow(radius: 4, x: 3, y: -3)
  
                Button(subjectSelected){
                    
                }
                .foregroundStyle(.secondary)
                
            
        }
            .frame(maxWidth: 120 , maxHeight: 120)
            .padding(15)
    }
}

#Preview {
    MainButtonSelectionView(subjectSelected: "Boxing")
}
