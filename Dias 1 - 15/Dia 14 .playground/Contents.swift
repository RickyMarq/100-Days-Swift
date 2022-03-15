import UIKit

print("-- Functions --")

// Functions let us make pieces of code that are reusable, functions

var password = "password"

func CheckPassword() {
    if password == "password" {
        print("Password, too cringy")
    } else {
        print("password set")
    }
}

CheckPassword()

// To ours functions accepts values we have to use parameters inside the ()

// Look that "of name" is a single parameter

// Name is internal // of is external. That means that we can only call the value from outside of the func using "of"

func albums(of name: String) {
    print("My favourite albums is \(name)")
}

albums(of: "Dropout Boogie")

// We can use the underscore to tell swift that the value don't need a external

func greeting(_ name: String) {
    print("Hello, \(name) 🥸")
}

greeting("Henrique")

// Advanceded programmers costume to use "in", "for" and "with" to call external values



// Returning Values

// We can return functions values using "->"

func albums2(of name: String ) -> Bool {
   print("\(name) is a good album ?")
    return true
}

albums2(of: "Suck it and See")

print("-- Optionals --")

// Optionals are values that don't have a value :P

var opt: String?

// When a value is a optinal we don't sure that he holds a value or not so, if we want to use it we have to unwrapp it.

if let unopt = opt {
    print("There is a value and it its \(unopt)")
} else {
    print("Don't have a value")
}


// Forcing Unwrapp Optionals

// We can force a unwrap too using the "!"

let Num: String? = "2"

print(Num!)

// You see ? We have a string but it holds a Int inside

// Implicity unwrapped Optionals

// Might contain a value or not, but don't need to be unwrapped to see

print("-- Optional Chaining --")

// Optinal Chaining lets us run code only if our optinal has a value

func albumrelease(year: Int) -> String? {
    switch year {
    case 2002: return "The big Come Up"
    case 2004: return "Rubber Factory"
    case 2010: return "Brothers"
    case 2011: return "El camino"
    case 2014: return "Turn Blue"
    case 2019: return "Let's Rock"
    case 2020: return "Delta Kream"
    case 2022: return "Dropout Boogie"
    default: return nil
    }
}

let tbk = albumrelease(year: 2014)?.uppercased()

// This code is a optinal chaining saying: if return a album name make it uppercased
print("\(tbk!)")

// Nil coalescing operator

// With this tool we can say: "Use value A if you can, but if its nil use B"

albumrelease(year: 2025) ?? "UKNOWN BROTHER"

print("-- Structs --")

// Structs are complex data types

struct person {
    var name: String
    var born: Int
    var BloodType: String
    var weight: Int
    var height: Double
}

let henrique = person(name: "Henrique", born: 2002, BloodType: "A-", weight: 65, height: 1.75)
print("My blood type is \(henrique.BloodType)")

print("-- Classes --")

// Classes are similar to Structs but they differ from some tools

// For example, in classes we have to declare a initializer for the class

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// The most awesome differ from structs it's classes can inhretance

class singer {
    var man = "Johnny Cash"
    var woman = "Patse Cline"
}

class Country: singer {
    
}
