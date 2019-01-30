//
//  Note.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class Note: Record {
    var id: Int
    
    var title: String
    
    var description: String
    
    var createdAt: String
    
    init (id: Int, title: String, description: String, createdAt: String) {
        self.id = id
        self.title = title
        self.description = description
        self.createdAt = createdAt
    }
    
    func getInformationAboutRecord() -> String {
        return """
        Title: \(title)
        Description: \(description)
        Created at: \(createdAt)
        """
    }
    
}
