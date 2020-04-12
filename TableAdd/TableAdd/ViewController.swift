//
//  ViewController.swift
//  TableAdd
//
//  Created by Milk on 19/7/2562 BE.
//  Copyright © 2562 Milk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var StudentData:[StudentData] = []
    var studentData = StudentData()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        studentData.add(student: Student(firstname: "a", lastname: "b", year: 3))
        studentData.add(student: Student(firstname: "a", lastname: "b", year: 3))
        studentData.add(student: Student(firstname: "a", lastname: "b", year: 3))
    }
   
    
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentData.total()
    }
    
    
    
    func tableView(_ tableView: UITableView , cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        cell.textLabel?.text = studentData.getAt(index: 0).firstname
        cell.detailTextLabel?.text = studentData.getAt(index: 0).lastname
        
        return cell
        
    }
    
    
    
    
    
    
    }


