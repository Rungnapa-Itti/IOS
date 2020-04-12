//
//  ViewController.swift
//  memo
//
//  Created by Milk on 26/7/2562 BE.
//  Copyright © 2562 Milk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let db = Database.getSharedInstance()
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var topicTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loadButtonTouch() {
        let result = db.getNote(recordID: Int (self.idTextField.text!)!)
        topicTextField.text = result.topic
        contentTextView.text = result.content
    }
    @IBAction func addButtonTouch() {
        let id = db.addNote(topic: topicTextField.text! , content: contentTextView.text)
        self.idTextField.text = "\(id)"
    }
    

}

