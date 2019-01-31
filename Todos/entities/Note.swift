//
//  Note.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class Note: CustomStringConvertible {
    
    var id: Int
    
    var title: String
    
    var noteDescription: String
    
    var createdAt: String

    var description: String {
        return """
        Title: \(title)
        Description: \(noteDescription)
        Created at: \(createdAt)
        """
    }
    
    init (id: Int, title: String, noteDescription: String, createdAt: String) {
        self.id = id
        self.title = title
        self.noteDescription = noteDescription
        self.createdAt = createdAt
    }
}
