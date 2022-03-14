import UIKit

print("-- Handling missing data --")

// Swift has a feature called "Optionals" which we can create a nil value with every kind of types

var myAge: Int?

// We simply create a nil with a question mark before the type

print("-- Unwrapping Optionals --")

// Use optinals can be very dangerous sometimes, i mean, it's not safe to use a string.count with a string that dosn't have any value

var str: String?

//str.count

// For that exists a feature called "Unwrap" which literraly unwraps a nil value to make sure it have a value that can be used

// The saffest way to unwrap a value is with a if let

if let _ = str {
    print(" we have a value :) ")
} else {
    print("str dosn't have a value")
}

// Using if let we discorved that str dosn't have any value


print("-- Unwrapping with guard --")

// guard let will unwrap an optinal, but if it finds a nil it expects you exit a funcion, loop.

// The major difference between if let and guard let is that your unwrapped value remains useable after the guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("Error")
        return
    }
    
    print("Hello, \(unwrapped)")
}


print("-- Force Unwrapping --")

// Sometimes we have 100% of certain that a value isn't nil, so on we can use force unwrapping

var joj = "2"

let num = Int(joj)!

// ONLY USE FORCE UNWRAPPING WHEN YOU HAVE 100% OF CERTAIN THAT A VALUE ISN'T NIL.

// Force unwrapping it's a auto crash when the value is nil

var sh: String?

//sh!

print("-- Implicitly Unwrapped Optinals --")

// Implicitly unwrapped optinals are just like regular optinals, but they don't need to be unwrapped to be used

// Implicitly unwrapped are created by adding a exclamation mark

let age: Int!

print("-- Nil Coalescing --")

// Nil coalescing unwraps an optinal and returns the value inside, if there is one sure.

// if the value is nil it will return a default value

func user(for id: Int) -> String? {
    if id == 1 {
        return "Ricky Marq"
    } else {
        return nil
    }
}

user(for: 1)
user(for: 4)

// Nil coalescing lets us unwrap but we can provide a default value if the value is nil

// For example, if we want to build a chat app that saves the draft message
 
//let saveData = loadSavedData() ?? ""

print("-- Optional Chaining --")

// if we want to acess for example a dictionary and some of the values is nil we can use optinal chaining

let names = ["Henrique", "Paul", "AA"]

let name = names.first?.uppercased()

// The question mark it's the optinal chaining. If firsts returs nil then swift won't uppercased

// With optional chaining swift let's us dig several layes of optinals in a sigle line of code

print("-- Optional Try --")

// It's used with functions

print("Try?")

// It changes a trowing function into a function that returns a optional

// it substitute the do,try and catch

enum PasswordwordError: Error {
    case obvious
}

func checkPassword (_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordwordError.obvious
    }
    return true
}

if let result = try? checkPassword("ricky123") {
    print("password \(result)")
} else {
    print("Error")
}

// The other alternative is try!, which you can use when you have sure that a funcion won't fail

//try! checkPassword("password")

print("-- Failable initializers --")

// When we learn about unwrap we use this example:

let z = "2"
let nu = Int(z)

// This is a failable initializer, an initializer that might work or not and just return a nil if something goes wrong.

// We can create class and structs like this using init?()

// Failable initializers give us the opportunity to return a object for the default position, such to check if a password it's to short or check if the choosen nickname it's already taken.

print("-- Typecasting --")

// Typecasting let's us tell to swift which object is an A and an B

// we use as?

class animal {}

class weirdfishes: animal {}

class dog: animal {
    func makenoise() {
        print("Bark!")
    }
}

let pets = [weirdfishes(), dog()]

// we need to use type cast to return correctly the makenoise func

for pet in pets {
    if let dog = pet as? dog {
        dog.makenoise()
    }
}
