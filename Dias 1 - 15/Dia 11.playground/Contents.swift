import UIKit

print("-- Protocols --")

// Protocols is a tool to describe what properties or methods some value must have

// With protocols we can define how structs, classes, enums gonna work

protocol id {
    var id: String { get set }
}

// In top we created a protocol with the "id" property

struct User: id {
    var id: String
}

// In top we attributed the id protocol in the user struct
func DisplayID(displayid: id) {
    print("Your id \(displayid.id)")
}

// in top we created a func to display for the user his or her id.

print("-- Protocol Inheritance --")

// Unlike classes, protocols can inherit from multiple protocols

protocol Vations {
    func takevacation()
}

protocol Salary {
    func paided()
}

protocol MentalHeath {
    func gotopsychologist()
}

// Now we attibute all this protocols

protocol Employee: Vations, Salary, MentalHeath {
    
}

// The "Employee" has severals protocols that need to be followed to work

print("-- Why protocol Inheritance is so useful ? --")

// Imagine that you want open a tecnologic shop app

// To preserve time we can do that:

protocol Product {
    var price: Double {get set}
    var weight: Int {get set}
}

protocol OkComputer {
    var ram: Int {get set}
    var cpu: String {get set}
    var processor: String {get set}
}

// All products have a price and weight, so why type this for all produts if we can do this:

protocol notebook: Product, OkComputer {
    
}

protocol Computes: Product, OkComputer {
    
}

protocol Watches: Product {
    
}

print("-- Extensions --")

// Extensions lets us create methods for existing types such as String, Int, Double for make them do things that they don't do originally

extension Int {
    func squared() -> Int {
        return self * self
    }
}

// In top we created a Int extension that multiplies the number that have the "squared" method


var number = 2
number.squared()

extension Int {
    func divided() -> Int {
        return self / self
    }
}

var numb = 5
numb.divided()

extension Int {
    var isOdd: Bool {
        return self % 2 == 0
    }
}

numb.isOdd

print("-- Protocols Extensions --")

// Protocols what methods something should have

// Protocols extensions are like regular extensions except rather than expecting a type such a Int

let tbk = ["Patrick Carney", "Dan Auerbach"]
let aha = ["Morten", "Paul", "Magnum"]

extension Collection {
    func sumarize() {
        print("\(count)")
        
        for name in self {
            print(name)
        }
    }
}

// Note that the func dosn't returne a type.

tbk.sumarize()
tbk.sumarize()

print("-- Protocol oriented programming --")

// Protocols extensions can provide default implementations for our own protocol methods

protocol identify {
    var id: String {get set}
    func identify()
}

// Extensions lets us provide a default value for identify:

extension identify {
    func identify() {
        print("My id is \(id)")
    }
}

struct User2: identify {
    var id: String
}

let Henrique = User2(id: "Ricky")
Henrique.identify()

