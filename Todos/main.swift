//
//  main.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation


func initRecordsStore() -> RecordsStore {
    let recordsStore = RecordsStore()
    
    recordsStore.add(todo: Todo(id: 0, todoDescription: "Mi first todo", priority: .low, createdAt: "Jan. 30 2019"))
    recordsStore.add(note: Note(id: 1, title: "Mi first note", noteDescription: "It's my first note yay!", createdAt: "Jan. 30 2019"))
    return recordsStore
}

let recordsStore = initRecordsStore()


let todo = Todo(id: 2, todoDescription: "need more coding on Swift", priority: .high, createdAt: "Jan. 30 2019")
let note = Note(id: 4, title: "New note ",noteDescription: "Just new note about nothing", createdAt: "Jan, 31, 2019")


recordsStore.add(note: note)
recordsStore.printNotes()

recordsStore.add(todo: todo)
recordsStore.printTodos()

todo.finishAt = "Feb. 1 2019"

recordsStore.update(todo: todo)
recordsStore.printTodos()

recordsStore.delete(note: note)
recordsStore.printNotes()
