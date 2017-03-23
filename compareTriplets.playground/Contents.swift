//: Playground - noun: a place where people can play

import UIKit


let alice = "5 6 7"
let bob = "3 6 10"


var arrayA = Array(alice.characters)
var arrayB = Array(bob.characters)


for i in 0...2{
    if arrayA[i] == " " {
        arrayA.remove(at: i)
    }
}

for i in 0...2{
    if arrayB[i] == " " {
        arrayB.remove(at: i)
    }
}

print(arrayA, arrayB)


var alicePoints = 0
var bobPoints = 0

let A = [5, 6, 7]
let B = [3, 6, 10]

for i in 0...2{
    if A[i] > B[i] {
        alicePoints += 1
    }else{
        if A[i] < B[i] {
            bobPoints += 1
        }
    }
}

print(alicePoints, bobPoints)

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
