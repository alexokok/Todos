//
//  RecordController.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

class RecordsStore {
    
    private enum RecordType {
        case note, todo, def
    }
    
    
    var records: [Record]
    init() {
        records = [Record]()
    }
    
    func showAllRecords() {
        if records.isEmpty {
            print("no records in list of records")
            return
        }
        
        print("----- All records in list ------")
        for record in records {
            print("""
                ------------ \(getRecordType(record: record)) --------------
                \(record.getInformationAboutRecord())
                --------------------------------
                """)
        }
    }
    
    func addRecord(record: Record) {
        records.append(record)
    }
    
    func updateRecord(newRecord: Record) {
        if let index = records.firstIndex(where: { $0.id == newRecord.id}) {
            records[index] = newRecord
        }
    }
    
    func removeRecord(record: Record) {
        if let index = records.firstIndex(where: {$0.id == record.id }) {
            records.remove(at: index)
        }
    }
    
    func showAllTodos() {
        let todos = getRecordsByType(recordsType: .todo)
        if todos.isEmpty {
            print("Todos list is empty")
            return
        }
        
        print("---------- All todos ---------")
        for todo in todos {
            print(todo.getInformationAboutRecord())
            print("--------------------------")
        }
    }
    
    func showNotFinishedTodos() {
        let todos = getRecordsByType(recordsType: .todo)
        if todos.isEmpty {
            print("All todos complete")
            return
        }
        
        print("---------- All todos that not finished ---------")
        for todo in todos {
            if (todo as! Todo).finishAt == nil {
                print(todo.getInformationAboutRecord())
                print("--------------------------")
            }
        }
    }
    
    func showAllNotes() {
        let notes = getRecordsByType(recordsType: .note)
        if notes.isEmpty {
            print("Notes is empty")
        }
        
        print("---------- All notes ---------")
        for record in records {
            if getRecordType(record: record) == .note {
                print(record.getInformationAboutRecord())
                print("--------------------------------")
            }
        }
    }
    
    private func getRecordsByType(recordsType: RecordType) -> [Record] {
        return records.filter({getRecordType(record: $0) == recordsType})
    }
    
    private func getRecordType(record: Record) -> RecordType {
        switch record{
        case is Todo:
            return .todo
        case is Note:
            return .note
        default:
            return .def
        }
    }
}
