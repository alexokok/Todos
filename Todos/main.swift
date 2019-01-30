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
    
    recordsStore.addRecord(record: Todo(id: 0, description: "Mi first todo", priority: .low, createdAt: "Jan. 30 2019"))
    recordsStore.addRecord(record: Note(id: 1, title: "Mi first note", description: "It's my first note yay!", createdAt: "Jan. 30 2019"))

    return recordsStore
}

let recordsStore = initRecordsStore()

recordsStore.showAllRecords()
recordsStore.showAllNotes()
recordsStore.showAllTodos()
recordsStore.showNotFinishedTodos()

let todo = Todo(id: 3, description: "need more coding on Swift", priority: .high, createdAt: "Jan. 30 2019")

recordsStore.addRecord(record: todo)
recordsStore.showNotFinishedTodos()

todo.finishAt = "Feb. 1 2019"

recordsStore.updateRecord(newRecord: todo)
recordsStore.showAllTodos()

recordsStore.removeRecord(record: todo)
recordsStore.showAllTodos()
