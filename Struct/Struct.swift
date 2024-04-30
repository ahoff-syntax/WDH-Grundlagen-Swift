//
//  Struct.swift
//  WDH-Swift-Grundlagen



import Foundation


//Structs:
// - Organisiert und speichert Werte
// - Wertetyp (Value type): Kopien einer Instanz enthalten eigene Werte
// -> Ändert sich eine Instanz, ändert sich nur diese. Andere Instanzen bleiben gleich

struct Person {
    let name: String
    var age: Int
}

var person1 = Person(name: "John", age: 26)
var person2 = Person(name: "Alice", age: 30)

//person1.age = 27






struct Movie {
    let name: String
    let duration: Int
    let wasSeen: Bool
    
    init(name: String, duration: Int) {
        self.name = name
        self.duration = duration
        self.wasSeen = false
    }
}

let movie = Movie(name: "Harry Potter", duration: 120)

