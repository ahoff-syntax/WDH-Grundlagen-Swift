//
//  Schleifen.swift
//  WDH-Swift-Grundlagen
//
//  Created by Anna Hoff on 30.04.24.
//

import Foundation

var dict = ["John" : 25, "Alice" : 30, "Bob" : 28]

func mainSchleifen() {
    
    //for in
    for number in 1...10 {
        print(number)
    }
    
    for entry in dict {
        print("\(entry.value) ist \(entry.key) Jahre alt.")
    }
    
    for (key, value) in dict {
        print("\(key) ist \(value) Jahre alt.")
    }
    
    //repeat
    var counter = 0
    
    while counter <= 10 {
        print(counter)
        counter += 1
    }
    
    
    //repeat while
    
    repeat {
        print(counter)
        counter += 1
    } while (counter <= 10)
}
