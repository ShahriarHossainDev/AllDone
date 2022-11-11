//
//  BlackView.swift
//  AllDone
//
//  Created by Shishir_Mac on 10/11/22.
//

import SwiftUI

struct BlackView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
        }
    }
}

struct BlackView_Previews: PreviewProvider {
    static var previews: some View {
        BlackView()
    }
}
