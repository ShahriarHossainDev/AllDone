//
//  CustomSecureTextField.swift
//  AllDone
//
//  Created by Shishir_Mac on 4/11/22.
//

import SwiftUI

struct CustomSecureTextField: View {
    
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
                    .autocapitalization(.none)
            } // HStack
        } // ZStack
    }
}

struct CustomSecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            CustomSecureTextField(text: .constant(""), placeholder: Text("Password"))
        }
    }
}
