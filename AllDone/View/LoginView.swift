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
        
        NavigationView {
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
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        } // Button
                    } // HStack
                    
                    Button {
                        
                    } label: {
                        AuthenticateButton(text: "Sign In")
                            .padding()
                    } // Button
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: SignupView().navigationBarHidden(true),
                        label: {
                            HStack{
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                Text("Sign UP")
                                    .font(.system(size: 14, weight: .semibold))
                            } // HStack
                            .foregroundColor(.white)
                        }
                    ) // NavigationLink
                        .padding(.bottom, 16)
                    
                } // VStack
                .padding(.top, -44)
            } // ZStack
        } // NavigationView
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
