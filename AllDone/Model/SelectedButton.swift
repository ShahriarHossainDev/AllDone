//
//  SelectedButton.swift
//  AllDone
//
//  Created by Shishir_Mac on 7/11/22.
//

import Foundation
import SwiftUI

enum SelectedButton: String {
    case all = "All"
    case groceries = "Groceries"
    case work = "Work"
    case school = "School"
    case home = "Home"
    case personal = "Personal"
    case extra = "Extra"
    
    func getValue() -> String {
        return self.rawValue
    }
    
}
