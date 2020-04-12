//
//  text.swift
//  testApp
//
//  Created by Milk on 4/10/2562 BE.
//  Copyright © 2562 ku. All rights reserved.
//

import Foundation
class Text {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func setName(name:String)  {
        self.name = name
        print("setName : \(name)")
    }
    
    func getName() -> String {
        return name
    }
}
