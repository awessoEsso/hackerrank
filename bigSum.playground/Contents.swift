//: Playground - noun: a place where people can play

import UIKit

let s = "2 3"
let ss = "2 4"
let sss = "16 32 96"


let factorsOfX = ss.components(separatedBy: " ").map({Int($0)!})
let xIsFactorOf = sss.components(separatedBy: " ").map({Int($0)!})
var countAll = 0

func areFactorOf(value: Int, list: [Int]) -> Bool {
    var result = true
    var i = 0
    while(result && i<list.count){
        result = value % list[i] == 0 ? true:false
        i += 1
    }
    return result
}

func isFactorOf(value: Int, list: [Int]) -> Bool {
    var result = true
    var i = 0
    while(result && i<list.count){
        result = list[i] % value == 0 ? true:false
        i += 1
    }
    return result
}

for i in 1...100{
    if(areFactorOf(value: i, list: factorsOfX) && isFactorOf(value: i, list: xIsFactorOf)){
        countAll += 1
    }
}

print(countAll)