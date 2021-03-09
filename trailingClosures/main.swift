//
//  main.swift
//  trailingClosures
//
//  Created by Larry Mcdowell on 3/1/21.
//

import Foundation

func newFunction(insideFx: (String) -> String){
    print("Just going to say")
    print("The answer is \(insideFx("hello"))")
    print("Just then!")
}

func runIt(inStr:String)->String {
    return inStr + " added"
}



var funcArray = [()->()]()
funcArray.append {
    print("hello")
}
funcArray.append {
    print(" there")
}
funcArray.append {
    print("again")
}

newFunction(insideFx: runIt)

for myFun in funcArray{
    myFun()
}
funcArray[1]()

var funcDict = [String: ()->()]()
funcDict.updateValue({print("first")}, forKey: "first")
funcDict.updateValue({print("this is the second function")}, forKey: "second")
funcDict.updateValue({print("this is the extra function")}, forKey: "extra")
print("\(funcDict.values.count)")
funcDict.randomElement()?.value() //retrieve random function
funcDict.removeValue(forKey: "extra")
print("\(funcDict.values.count)")
funcDict["second"]!()



