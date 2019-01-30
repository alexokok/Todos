//
//  Record.swift
//  Todos
//
//  Created by Alexey Mazaev on 29/01/2019.
//  Copyright © 2019 Alexey Mazaev. All rights reserved.
//

import Foundation

protocol Record {
    
    var id: Int { get }
    
    var description: String { get set }
    
    var createdAt: String { get }
    
    func getInformationAboutRecord() -> String
}
