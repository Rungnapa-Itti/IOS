import UIKit

var v = 10
type(of:v)
var a:Int
type(of: a)
print("----------------")

var b = 10
print("----------------")

var s = "Hello"
type(of: s)
print("----------------")

var my_i = 10
// i = "String"  , It can't do it.
print("----------------")

let c = 10
print(c)
// c = 9 , Let can't change value.
var c_1 = 2
print(c_1)
c_1 = 3 // Var can change value but same type
print(c_1)
print("----------------")

var arr_a = [2,3,4,5]
var arr_b = [2,3,4,5]
var arr_c = [2,3,5]
arr_b == arr_a
print(arr_b)
arr_b == arr_c
print(arr_c)
arr_c = arr_b
print(arr_c)

print(arr_c)
arr_c[2] = 10 // change value
print("\(arr_c)") // to string or change type of value
var test = "\(arr_c)"
type(of: test)

type(of: arr_c)
print(arr_b)
print("----------------")

var no_v:Float? // edit form var no_v : Float
print(no_v)
print("----------------")

let parkingSpace = [13:"Alice",12:"Bob"]
print(parkingSpace[13])
print(parkingSpace[27]) // hasn't value is nil or null
print("----------------")

let parkingSpace_ = [13:"Alice","Bob":20] as [AnyHashable : Any]
print(parkingSpace_[13])
print(parkingSpace_[20])
print("----------------")

class TestLet{
    var x = 10
}
let t = TestLet()
t.x = 10
// t = TestLet() can't do it
print("----------------")

var no_a : Float? // ? can set is nil or null
print(no_a)
no_a = 10
print(no_a)
print("----------------")

var no_v2 : Float?
print(no_v2)
var var_v : Float? // edit from var_v : Float because var_v hasn't set value cause error
var_v = no_v2
print("----------------")

var no_v3 : Float?
no_v3 = 10
no_v3 = no_v3! + 1 // this is a solution of no_v3 + 1
no_v3 = no_v3 ?? <#default value#> + 1// this is a solution of no_v3 + 1
print("----------------")

// ! if in future isn't nil or null.
// ? if in future will has  nil or null
// if you use (!) and in future has nil will causing run time error.
var no_v4 : Float?
no_v4 = 10
no_v4 = no_v4! + 1
var var_v4 = no_v4!
print(no_v4)
print(var_v4)
print("----------------")

var no_v5 : Float!
print(no_v5)
no_v5 = 10
print(no_v5)
print("----------------")

var no_v6 : Float!
print(no_v6)
var var_v6:Float!
var_v6 = no_v6
print("----------------")

var no_v7 : Float!
no_v7 = 10
no_v7 = no_v7 + 1
print("----------------")

var no_v8 : Float!
no_v8 = 10
no_v8 = no_v8! + 1
var var_v8 = no_v8!
print(no_v8)
print(var_v8)







