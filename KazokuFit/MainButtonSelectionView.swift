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
                    .fill(Color("darkBlue"))
                    .shadow(color: Color(.gray).opacity(0.2) ,radius: 2, x: 0, y: -2)
                    
  
                Button(subjectSelected){
                    
                }
                .foregroundStyle(.white)
                
            
        }
            .frame(maxWidth: 120 , maxHeight: 80)
            .padding(15)
    }
}

#Preview {
    MainButtonSelectionView(subjectSelected: "Boxing")
}
