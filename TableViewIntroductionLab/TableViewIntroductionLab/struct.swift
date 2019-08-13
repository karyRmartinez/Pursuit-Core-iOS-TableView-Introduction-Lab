//
//  struct.swift
//  TableViewIntroductionLab
//
//  Created by Kary Martinez on 8/12/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation


func getNotStarted() -> [Task] {
    func getNotStarted() -> [Task] {
        return Task.allTasks.filter({ (Task) -> Bool in Task.status == .notStarted
            
        })
    }
    return getNotStarted()
}


func getInProgress() -> [Task] {
    func getInProgress() -> [Task] {
        return Task.allTasks.filter({ (Task) -> Bool in Task.status == .inProgress
            
        })
    }
    return getNotStarted()
}

func getCompleted() -> [Task] {
    func getCompleted() -> [Task] {
        return Task.allTasks.filter({ (Task) -> Bool in Task.status == .completed })
    }
    return getCompleted()
}

