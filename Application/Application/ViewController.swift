//
//  ViewController.swift
//  Application
//
//  Created by Milk on 13/7/2562 BE.
//  Copyright © 2562 Milk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   //manual(1)
    @IBAction func nextPageCodePush(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "pageManual"){
            present(vc,animated: true, completion: nil)
        }else{
            print("There is on pageManual")
        }
    }
    //manual but not same (1)
    @IBAction func nextPageHanding(_ sender: Any) {
        if let v = self.storyboard?.instantiateViewController(withIdentifier: "PageHanding"){
            present(v,animated: true , completion: nil)
        }else{
            print("There is on PageHanding")
        }
    }
    
    
    @IBAction func unwindPage1(seg:UIStoryboardSegue!){
        
    }
}

