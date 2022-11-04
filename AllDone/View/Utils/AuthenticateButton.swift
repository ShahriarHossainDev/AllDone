//
//  AuthenticateButton.swift
//  AllDone
//
//  Created by Shishir_Mac on 5/11/22.
//

import SwiftUI

struct AuthenticateButton: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 360, height: 50)
            .background(Color.blue.opacity(0.8))
            .clipShape(Capsule())
    }
}

struct AuthenticateButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticateButton(text: "Sign In")
    }
}
