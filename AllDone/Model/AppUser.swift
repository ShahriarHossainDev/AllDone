//
//  AppUser.swift
//  AllDone
//
//  Created by Shishir_Mac on 7/11/22.
//

import FirebaseFirestoreSwift

struct AppUser: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let uid: String
    let firstName: String
    let lastName: String
    let email: String
    
    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
    
}
