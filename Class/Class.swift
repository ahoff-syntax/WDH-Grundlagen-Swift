//
//  Class.swift
//  WDH-Swift-Grundlagen


import Foundation

//Class:
// - Bauplan eines Objekts
// - Referenztyp (Reference Type): Kopien einer Instanz verweisen auf die originale Instanz
// -> wird eine Kopie verändert, verändern sich alle Kopien


class Dog {
    let name: String
    var age: Int
    let breed: String
    var weight: Double
    
    init(name: String, age: Int, breed: String, weight: Double) {
        self.name = name
        self.age = age
        self.breed = breed
        self.weight = weight
    }
    
    func birthday() {
        age += 1
    }
    
    func feed() {
        weight *= 1.02
    }
    
}


//Vererbung

class Labrador: Dog {
    override init(name: String, age: Int, breed: String, weight: Double) {
        super.init(name: name, age: age, breed: breed, weight: weight)
    }
    
    override func feed() {
        weight *= 1.1
    }
    
    func fetchBall() {
        print("Rennt dem Ball hinterher")
    }
}
