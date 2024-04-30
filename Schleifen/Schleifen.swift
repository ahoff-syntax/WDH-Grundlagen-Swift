//
//  Schleifen.swift
//  WDH-Swift-Grundlagen
//
//  Created by Anna Hoff on 30.04.24.
//

import Foundation

var dict = ["John" : 25, "Alice" : 30, "Bob" : 28]

var array = [1,2,3,4,5,6]

func schleifen() {
    
    //for in
    
    for number in 1...10 {
        //print(number)
    }
    
    for (name, age) in dict {
        //print("\(name) ist \(age) Jahre alt.")
    }
    
    for entry in dict {
        //print("\(entry.key), \(entry.value)")
    }
    
    for num in array {
        //print(num)
    }
    
    
    print("While:")
    //while
    var counter = 50
    
    while counter <= 10 {
        print(counter)
        counter += 1
    }
    
    
    print("Repeat: ")
    //repeat while
    
    var counter2 = 50
    
    repeat {
        print(counter2)
        counter2 += 1
    } while (counter2 <= 10)
    
    
}
