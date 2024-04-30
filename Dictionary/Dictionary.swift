//
//  Dictionary.swift
//  WDH-Swift-Grundlagen
//
//  Created by Anna Hoff on 29.04.24.
//

import Foundation

//Deklaration
var dict = ["John" : 25, "Alice" : 30, "Bob" : 28]
let dictConst = ["John" : 25, "Alice" : 30, "Bob" : 28]

func dictionary() {
    
    //Values des Dictionaries
    let values = dict.values
    print(values)
    
    //Keys des Dictionaries
    let keys = dict.keys
    
    //Auf Value über den Key zugreifen
    let age: Int? = dict["John"]
    
    //Value überschreiben
    dict["John"] = 26
    
    //Neues Key-Value Paar hinzufügen
    dict["Chris"] = 35
    
    //Element aus Dictionary löschen
    dict.removeValue(forKey: "John")
    
    
    //Über Dictionary iterieren
    
    for key in dict.keys {
        print(key)
    }
    
    for age in dict.values {
        print(age)
    }
    
    for (name, age) in dict {
        print("\(name) ist \(age) Jahre alt.")
    }
    
    for entry in dict {
        print("\(entry.key), \(entry.value)")
    }
    
    
    
    //Weitere Dictionary-Operationen: isEmpty, count, contains, merge, filter, contains(where: {$0.keys == "John"})
    
}
