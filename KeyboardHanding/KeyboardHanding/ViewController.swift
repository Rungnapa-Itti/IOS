//
//  ViewController.swift
//  KeyboardHanding
//
//  Created by Milk on 13/7/2562 BE.
//  Copyright © 2562 Milk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topTextField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    
    @IBAction func doneButtonTouch(_ sender: Any) {
        self.textView.resignFirstResponder()
    }
    
    
    @IBAction func didEndOnExit(_ sender: UITextField) {
        print("End On Exit")
    }
}

extension ViewController : UITextViewDelegate{
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        print("textViewShouldEndEditing")
        return true
    }
}


