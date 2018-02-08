//
//  DataModel.swift
//  nano3
//
//  Created by Rafael Zabotini on 07/02/18.
//  Copyright © 2018 Rafael Zabotini. All rights reserved.
//

import Foundation

class DataModel {
    
    static let shared = DataModel()
    
    //propriedades
    private(set) var ArrayTasks = [TaskRegister]()
    
    fileprivate init() {
        
    }
    func createTask(task: TaskRegister) {
        ArrayTasks.append(task)
    }
}
