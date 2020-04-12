//
//  ViewControllertest.swift
//  testApp
//
//  Created by Milk on 10/10/2562 BE.
//  Copyright © 2562 ku. All rights reserved.
//

import UIKit

class ViewControllertest: UIViewController {
    @IBOutlet weak var labelgetValue: UILabel!
    @IBAction func getValue(_ sender: Any) {
        self.labelgetValue.text = person.getName()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
