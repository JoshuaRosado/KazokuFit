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
                    .fill(.blue)
                    .frame(maxWidth: 120 , maxHeight: 120)
                    .shadow(radius: 10, x: 2, y: 2)
  
                Text(subjectSelected)
                    .foregroundStyle(.secondary)
            
        }
    }
}

#Preview {
    MainButtonSelectionView(subjectSelected: "Boxing")
}
