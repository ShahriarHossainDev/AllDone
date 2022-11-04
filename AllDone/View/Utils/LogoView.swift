//
//  LogoView.swift
//  AllDone
//
//  Created by Shishir_Mac on 4/11/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("AllDone")
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.semibold)
        } // VStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            LogoView()
        }
    }
}
