//
//  LoginView.swift
//  AllDone
//
//  Created by Shishir_Mac on 4/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20) {
                    EmailTextField(text: $email)
                    
                    PasswordSecureField(text: $password, placeholder: "Password")
                } // VStack
                .padding(.horizontal, 32)
            } // VStack
        } // ZStack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
