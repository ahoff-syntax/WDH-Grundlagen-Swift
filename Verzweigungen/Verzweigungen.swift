//
//  Verzweigungen.swift
//  WDH-Swift-Grundlagen
//


import Foundation

var dict = ["John" : 25, "Alice" : 30, "Bob" : 28]

let age = 18
let ageJohn: Int? = dict["John"]

func mainVerzweigungen() {
    
    //if/else
    if age > 18 {
        print("Erwachsen")
    } else if age < 18 {
        print("Jugendlich")
    } else {
        print("18 Jahre alt")
    }
    
    //Ternary Operator
    age > 18 ? print("Älter als 18") : print("18 oder jünger ")
    age > 18 ? print("Älter als 18") : (age < 18 ? print("Jünger als 18") : print("18 Jahre alt"))
    
    
    //guard
    guard age >= 18 else {
        print("Jünger als 18")
        return
    }
    print("Erwachsen.")
    
    
    
    //guard let
    guard let johnsAgeGuard = ageJohn else {
        print("Nil")
        return
    }
   
    
    //if let
    if let johnsAgeIf = ageJohn {
        print("\(johnsAgeIf)")
    } else {
        print("Nil")
    }
    
    //print(johnsAgeIf)
    print(johnsAgeGuard)
    
    
    
    
    //Switch
    switch age {
    case 18:
        print("18 Jahre alt")
    case 19...25:
        print("Zwischen 19 und 25")
    case let newAge where age < 18:         //mit let newAge wird eine neue Variable erstellt, die dann innerhalb vom Scope benutzt werden kann
        print("Jung")
        print(newAge)
    case _ where age > 25:                  // hier wird statt let age ein Unterstrich _ verwendet, da wir die neue Variable nicht weiter brauchen
        print("Älter als 25")
    default:
        print("Ungültiges Alter")
    }
    
}
