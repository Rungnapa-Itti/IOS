//
//  NSObject.swift
//  TableAdd
//
//  Created by Milk on 19/7/2562 BE.
//  Copyright © 2562 Milk. All rights reserved.
//

import Foundation
class StudentData{

    
    private var data:[Student] = []
    
    func add(student : Student){
        data.append(student)
    }
    func add(firstname:String , lastname:String , year:Int){
        data.append(Student(firstname : firstname , lastname : lastname , year : year))
    }
    func addAt(index:Int,student:Student){
        data.insert(student, at: index)
    }
    func getAt(index:Int) -> Student{
        return data[index]
    }
    func delete(index:Int) -> Student {
        return data.remove(at: index)
    }
    func total() -> Int {
        return data.count
    }
}
