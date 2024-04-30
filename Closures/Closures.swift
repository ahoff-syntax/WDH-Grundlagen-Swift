//
//  Closures.swift
//  WDH-Swift-Grundlagen
//
//  Created by Anna Hoff on 30.04.24.
//

import Foundation

//Closures:
//- ähnlich zu Funktionen
//- Lambdas
//- können in Variablen gespeichert werden
//- Können als Parameter übergeben werden


var dict = ["John" : 25, "Alice" : 30, "Bob" : 28]

func closures() {
    
    //Funktion vs Closure
    func printNameFunction(name: String) {
        print(name)
    }
    printNameFunction(name: "John")
    
    let printNameClosure: (String) -> Void = { name in
        print(name)
    }
    
    //let printNameClosure: (String) -> Void 
    // printNameClosure = { name in
    //      print(name)
    // }
    
    printNameClosure("John")
    
    
    //Verwendung
    let names = dict.keys
    
    names.forEach({ name in
        print(name)
    })
    
    let printer: (String) -> Void = { name in
        print(name)
    }
    
    names.forEach(printer)
    
    
    //Funktion, die eine Closure als Argument bekommt
    
    func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) {
        print(operation(a, b))
    }
    
    //Closures
    let addition: (Int, Int) -> Int = { a, b in
        a + b
    }
    let subtraktion: (Int, Int) -> Int = { $0 - $1 }
    let multiplikation: (Int, Int) -> Int = { $0 * $1 }
    
    
    performOperation(a: 5, b: 4, operation: addition)
    performOperation(a: 5, b: 4, operation: subtraktion)
    performOperation(a: 5, b: 4, operation: multiplikation)
    
//---------------------------------------
    //Higher Order Functions
    //- Funktionen, die Funktionen als Argumente enthält oder Funktionen als Ergebnis liefert
    
    var numbers: [Int] = [7, 11, 5, 9, 2, 1, 4]
    
    //filter
    let evenNumbers: [Int] = numbers.filter({$0 % 2 == 0})
    let evenNumbers2 = numbers.filter{ num in num % 2 == 0}
    
    //contains
    let contains = numbers.contains(where: {$0 == 2})
    
    
    //sorted

    let sortedNumbers = numbers.sorted(by: {$0 < $1})
    
    //sort
    numbers.sort()
    
    
    //map
    
    let doubledNumbers: [Int] = numbers.map({$0 * 2})
    
}
