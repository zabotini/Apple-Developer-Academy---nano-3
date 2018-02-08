//
//  TaskRegister.swift
//  nano3
//
//  Created by Rafael Zabotini on 07/02/18.
//  Copyright © 2018 Rafael Zabotini. All rights reserved.
//

import Foundation

enum TaskCategory: Int {
    case entertainement = 1, study, future, random
}

class TaskRegister {
    var taskName: String
    var taskDescription: String
    var taskCategory: TaskCategory
    //    var taskDeadLine: Int
    
    //    init(name: String, description: String, category: TaskCategory, deadLine: Int) {
    init(name: String, description: String, category: TaskCategory) {
        taskName = name
        taskDescription = description
        taskCategory = category
        //        taskDeadLine = deadLine
    }
}
