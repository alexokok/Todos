//
//  Todo.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class Todo: Record {
    var id: Int
    
    var priority: Priority
    
    var description: String
    
    var createdAt: String
    
    var finishAt: String?
    
    init(id: Int, description: String, priority: Priority, createdAt: String) {
        self.id = id
        self.description = description
        self.priority = priority
        self.createdAt = createdAt
        self.finishAt = nil
    }
    
    func getInformationAboutRecord() -> String {
        return """
        Description: \(description)
        Created at: \(createdAt)
        Finish at: \(finishAt ?? " - ")
        Priority: \(priority.getDescription())
        """
    }
}
