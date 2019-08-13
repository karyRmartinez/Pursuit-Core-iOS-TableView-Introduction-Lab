//
//  ViewController.swift
//  TableViewIntroductionLab
//
//  Created by Benjamin Stone on 8/6/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableView: UITableView!
    var amountOfTask = Task.allTasks
    
    
    let completed = Task.allTasks
    let inProgress = Task.allTasks
    let notStarted = Task.allTasks
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amountOfTask.count
        switch section {
        case 0:
            return completed.count
        case 1:
            return inProgress.count
        case 2:
            return notStarted.count
        default:
            return 0
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "yay completed"
        case 1:
            return "still in progress"
        default:
            return "not started yet"
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Tasks")
        if indexPath.section == 0 {
            cell?.textLabel?.text = amountOfTask[indexPath.row].name   }
        return (cell ?? nil)!
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        // Do any additional setup after loading the view.
    }

}

