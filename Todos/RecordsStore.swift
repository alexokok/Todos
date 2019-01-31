//
//  RecordController.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class RecordsStore {
    
    private var notes: [Note] = [Note]()
    private var todos: [Todo] = [Todo]()
    
    func add(note: Note) {
        notes.append(note)
    }
    
    func add(todo: Todo) {
        todos.append(todo)
    }
    
    func update(note: Note) {
        if let index = notes.indexOf(note) {
            notes[index] = note
        }
    }
    
    func update(todo: Todo) {
        if let index = todos.indexOf(todo) {
            todos[index] = todo
        }
    }
    
    func delete(note: Note) {
        if let index = notes.indexOf(note) {
            notes.remove(at: index)
        }
    }
    
    func delete(todo: Todo) {
        if let index = todos.indexOf(todo) {
            todos.remove(at: index)
        }
    }
    
    func printTodos() {
        if todos.isEmpty {
            print("Todos list is empty")
            return
        }
        
        print("Todos count: \(todos.count)")
        for todo in todos {
            print(todo)
            print("\n")
        }
    }
    
    func printNotes() {
        if notes.isEmpty {
            print("Notes list is empty")
            return
        }
        
        print("Notes count: \(notes.count)")
        for note in notes {
            print(note)
            print("\n")
        }
    }
}


extension Array where Element: Todo {
    func indexOf(_ todo: Todo) -> Int? {
       return firstIndex { $0.id == todo.id }
    }
    
    func notFinished() -> [Todo]? {
        return filter { $0.finishAt == nil }
    }
}

extension Array where Element: Note {
    func indexOf(_ note: Note) -> Int? {
        return firstIndex { $0.id == note.id}
    }
}
