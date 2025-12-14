//
//  AuthTextField.swift
//  KazokuFit
//
//  Created by Joshua Rosado Olivencia on 12/14/25.
//

import SwiftUI

struct AuthTextField: View {
    let title: String
    let systemImage: String
    @Binding var text: String
    var isSecure: Bool = false

    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .foregroundStyle(.gray)

            if isSecure {
                SecureField(title, text: $text)
            } else {
                TextField(title, text: $text)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray.opacity(0.2), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.05), radius: 5, y: 3)
    }
}


