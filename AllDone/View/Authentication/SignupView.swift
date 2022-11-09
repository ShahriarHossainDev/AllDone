//
//  SignupView.swift
//  AllDone
//
//  Created by Shishir_Mac on 4/11/22.
//

import SwiftUI

struct SignupView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20) {
                    UserTextField(text: $firstName, placeholder: "First Name")
                    UserTextField(text: $lastName, placeholder: "Last Name")
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeholder: "Password")
                        .textContentType(.newPassword)
                    PasswordSecureField(text: $confirmPassword, placeholder: "Confirm Password")
                        .textContentType(.newPassword)
                } // VStack
                .padding(.horizontal, 32)
                
                Button {
                    viewModel.register(withEmail: email, password: password, firstName: firstName, lastName: lastName)
                } label: {
                    AuthenticateButton(text: "Sign Up")
                        .padding()
                }

                Spacer()
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Text("Already have a account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    } // HStack
                    .foregroundColor(.white)
                }
                .padding(.bottom, 16)
            } // VStack
            .padding(.top, 20)
        } // ZStack
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
