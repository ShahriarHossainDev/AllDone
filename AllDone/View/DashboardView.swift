//
//  DashboardView.swift
//  AllDone
//
//  Created by Shishir_Mac on 8/11/22.
//

import SwiftUI

struct DashboardView: View {
    let user: AppUser
    @State var searchText: String = ""
    
    @ObservedObject var viewModel = TODOViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("- All Done -")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                Spacer()
            } // HStack
            .overlay {
                HStack {
                    Spacer()
                    Button {
                        AuthViewModel.shared.signOut()
                    } label: {
                        Text("Log Out")
                            .foregroundColor(Color(.gray))
                    }
                    .padding(.trailing)
                } //HStack
            } // overlay
            
            SearchBarView(searchText: $searchText)
                .padding()
            
        } // VStack
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
