

import UIKit

var str:String = "Hello, playground"

let a:Int = 10 // constant
var b:Int = 10
let c:Bool = true

if (a < 4 && b < 4) || c != true {
    print("only if a is less than 4")
}
else {
    print("a isn't less than 4")
}


// NEW TUTORIAL

var someCharacter:Character = "a"

switch someCharacter {
    case "a":
        print("is an A")
        
    case "b", "c":
        print("is a B or a C")
        
    default:
        print("somefallback")
}

// NEW TUTORIAL


