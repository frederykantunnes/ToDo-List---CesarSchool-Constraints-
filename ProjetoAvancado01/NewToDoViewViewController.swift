//
//  NewToDoViewViewController.swift
//  ProjetoAvancado01
//
//  Created by Frederyk Antunnes on 04/07/20.
//  Copyright © 2020 Frederyk Antunnes. All rights reserved.
//

import UIKit

class NewToDoViewViewController: UIViewController {
    
    
    @IBOutlet weak var task: UITextField!
    @IBOutlet weak var details: UITextField!
    
    var taskName : String?
    var taskDetails : String?
    var taskIndex : Int = -1
    var edit = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "New Task";
        
        if (taskIndex != -1){
            let tasks = UserDefaults.standard.array(forKey: "tasks")
            let taskedit = tasks?[taskIndex] as! Array<String>;
            task.text = taskedit[0]
            details.text = taskedit[1]
            edit = true
        }
        else{
            taskName = ""
            taskDetails = ""
        }
        
        // Do any additional setup after loading the view.
    }


    @IBAction func save(_ sender: Any) {
        
        
        taskName = task?.text ?? ""
        if(taskName == nil || taskName?.trimmingCharacters(in:.whitespacesAndNewlines) == ""){
            return
        }
        taskDetails = details?.text ?? ""
            
        if(edit){
            let task = [taskName, taskDetails]
            var tasks = UserDefaults.standard.array(forKey: "tasks") ?? []
            tasks[taskIndex] = task
            UserDefaults.standard.set(tasks, forKey: "tasks")
        }
        else{
            let task = [taskName, taskDetails]
            var tasks = UserDefaults.standard.array(forKey: "tasks") ?? []
            tasks.append(task)
            UserDefaults.standard.set(tasks, forKey: "tasks")
        }
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
