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
    if age < 18{
        print("Zu jung")
    } else if age > 18 {
        print("Zu alt")
    } else {
        print("18 Jahre alt.")
    }
    
    //Ternary Operator
    age > 18 ? print("Älter als 18") : print("18 oder jünger")
    age > 18 ? print("Älter als 18") : (age < 18 ? print("Jünger als 18") : print("18 Jahre alt"))
    
    
    //guard
    guard age >= 18 else {
        print("Zu jung")
        return
    }
    print("Alt genug")
    
    
    //guard let
    
    guard let johnsAgeGuard = ageJohn else {
        print("Nil")
        return
    }
    
    
    //if let
    if let johnsAgeIf = ageJohn {
        print("\(johnsAgeIf) Jahre alt.")
    } else {
        print("Nil")
    }
    
    print(johnsAgeGuard)
    //print(johnsAgeIf)
    
    
    //Switch
    switch age {
    case 18:
        print("18 Jahre alt")
    case let age where age < 18:
        print("Jünger als 18")
    case 19...20:
        print("19 oder 20")
    case _ where age > 20:
        print("Älter als 20")
    default:
        print("Ungültiges Alter")
    }
    
}
