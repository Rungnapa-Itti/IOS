//
//  ViewController.swift
//  Navigation
//
//  Created by iOS Dev on 6/7/2562 BE.
//  Copyright © 2562 iOS Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    @IBAction func TouchInside(_ sender: Any) {
         self.performSegue(withIdentifier: "Nextpage2manual", sender: self)
    }
    
    
    @IBAction func nextPageByCodeTouchup(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Page2"){
            self.present(vc, animated: true , completion: nil)
        }else{
            print("Page is missing")
        }
    }
    @IBAction func backToPage1(seg:UIStoryboardSegue!){
        
    }
}

