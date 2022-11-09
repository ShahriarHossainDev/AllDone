//
//  DashboardView.swift
//  AllDone
//
//  Created by Shishir_Mac on 8/11/22.
//

import SwiftUI

struct DashboardView: View {
    let user: AppUser
    
    var body: some View {
        VStack {
            Text("Dashboard View")
            Button {
                AuthViewModel.shared.signOut()
            } label: {
                Text("Log Out")
            }

        } // VStack
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
