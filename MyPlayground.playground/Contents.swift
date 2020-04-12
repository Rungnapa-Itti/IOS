import UIKit
//class main{
//    var str = "Hello, playground"
//    var dictionary:[String:Test] = [:]
//
//    func test()  {
//        print(dictionary.count)
//        dictionary.a = dictionary["name"]?.setName(name: "milk")
//        print(dictionary.count)
//        for (name,fullname) in dictionary{
//            print("name : \(name)")
//            print("fullname : \(fullname)")
//
//        }
//    }
//
//
//}
//
//class Test{
//    private var name:String
//    private var nickname:String
//    init() {
//            self.name = ""
//            self.nickname = ""
//    }
//    func setName(name:String)  {
//        self.name = name
//    }
//    func setNickName(nickname:String)  {
//        self.nickname = nickname
//    }
//
//    func getName() -> String {
//        return name
//    }
//
//    func getNickName() -> String {
//        return nickname
//    }
//}
var dict = Dictionary<String, Array<Int>>()

print("\(dict)")
// [:]

dict["A"] = [101]
dict["B"] = [201]
dict["C"] = [301]

if var arr = dict["A"] {
    arr.append(102)
    dict["A"] = arr
} else {
    dict["A"] = [101]
}

dict["B"]!.append(202)

dict["C"]! += [302,303]

print("\(dict)")

print("\(dict["C"])")
// ["A": [101, 102], "B": [201, 202], "C": [301, 302, 303]]


// nil
