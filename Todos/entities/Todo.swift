//
//  Todo.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class Todo: CustomStringConvertible {
    
    enum Priority {
        case high, meduim, low
    }
    
    var id: Int
    
    var priority: Priority
    
    var todoDescription: String
    
    var createdAt: String
    
    var finishAt: String?
    
    var description: String {
        return """
        Description: \(todoDescription)
        Created at: \(createdAt)
        Finish at: \(finishAt ?? " - ")
        Priority: \(priority.getDescription())
        """
    }
    
    init(id: Int, todoDescription: String, priority: Priority, createdAt: String) {
        self.id = id
        self.todoDescription = todoDescription
        self.priority = priority
        self.createdAt = createdAt
        self.finishAt = nil
    }
}

extension Todo.Priority {
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
