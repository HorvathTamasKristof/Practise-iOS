//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Tamas Horvath on 2017. 10. 28..
//  Copyright © 2017. Tamas Horvath. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}


