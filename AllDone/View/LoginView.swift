//
//  LoginView.swift
//  AllDone
//
//  Created by Shishir_Mac on 4/11/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
            } // VStack
        } // ZStack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
