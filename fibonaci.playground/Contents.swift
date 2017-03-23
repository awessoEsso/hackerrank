//: Playground - noun: a place where people can play

import UIKit

// 0, 1, 1, 2, 3, 5, 8, 13, 21

// Le résultat de la fonction Fibonaci doit être la somme des 2 résultats précédents

func fibonaci(number: Int) -> [Int]{
    
    var base = [0,1]
    
    if(number == 1)
    {
        return base
    }
    
    for i in 2...number{
        let result = base[i-1] + base[i-2]
        base.append(result)
    }
    return base
}

func recFibonaci(number: UInt)-> UInt{
    let base: UInt = 1
    
    if(number <= 1)
    {
        return number
    }

     return (recFibonaci(number: number-1) + recFibonaci(number: number-2))
}


print(fibonaci(number: 15))
print(recFibonaci(number: UInt(15)))