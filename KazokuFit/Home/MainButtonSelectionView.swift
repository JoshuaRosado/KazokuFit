//
//  MainButtonSelectionView.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 7/7/25.
//

import SwiftUI

struct MainButtonSelectionView: View {
    @State var subjectSelected: String
    @State var isLoginViewOpen: Bool?
    var body: some View {
            ZStack{
                Circle()
                    .fill(.thinMaterial)
                    
                    .shadow(color: Color(.gray).opacity(0.2) ,radius: 2, x: 0, y: -2)
                    
  
                Button(subjectSelected){
                    isLoginViewOpen?.toggle()
                    
                }
                
                
            
        }
            .frame(maxWidth: 150 , maxHeight: 150)
            .padding(15)
    }
}

#Preview {
    MainButtonSelectionView(subjectSelected: "Boxing", isLoginViewOpen: false)
}
