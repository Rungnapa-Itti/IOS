//
//  ViewController.swift
//  testApp
//
//  Created by Milk on 4/10/2562 BE.
//  Copyright © 2562 ku. All rights reserved.
//

import UIKit

class ViewController:UIViewController {
    
    
    let Ctest = Text(name: "")
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var label: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func getVal(_ sender: Any) {
      
         let text: String = name.text!
        person.setName(name: text)
       
//
//       Ctest.setName(name: text)
//        print("name \(Ctest.getName())")
//        //print("\(text)")
//
//        self.label.text = text
        
   }
   

}

