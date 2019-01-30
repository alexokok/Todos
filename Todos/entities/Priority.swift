//
//  Priority.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

enum Priority {
    case high, meduim, low
    
    func getDescription() -> String{
        switch self {
        case .high:
            return "High"
        case .meduim:
            return "Medium"
        default:
            return "Low"
        }
    }
}
