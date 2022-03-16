import UIKit

print("-- Properties --")

// Structs and Classes are "types", they have their own variables and constants and these are called properties

// Properties lets us attach values to our types

struct Person {
    var name: String
    var age: Int
    var course: String
    
    func printgreeting() {
        print("Hello, my name is \(name) i have \(age) years old and i'm doing \(course) course")
    }
}


let Henrique = Person(name: "Henrique", age: 19, course: "100 days of swift")
Henrique.printgreeting()


// Property Observers

// With this swift let's us run a property when is about to be changed or already changed.

// There are two kinds of property observers - WillSet - DidSet

struct Person2 {
    var clothes: String {
    willSet {
        updateUI(msg: "I'm gonna change from \(clothes) to \(newValue)")
    }
    
    didSet {
        updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    func updateUI(msg: String) {
        print(msg)
    }
    
}

var henrique = Person2(clothes: "Black shirt")
henrique.clothes = "Red flannel"

// Computed Properties

struct Person3 {
    var age: Int
    
    var ageinDogYear: Int {
        get {
            return age * 7
        }
    }
}

var underdog = Person3(age: 19)
underdog.ageinDogYear

print("-- Static Properties and Methods --")

// Swift let's us create properties and methods that belong to a type

// We use this with "Static"

struct TheBlackKeys {
    static var singer = "Dan Aurbach"
    static var drummer = "Patrick Carney"
    
    var myfavouriteSong: String
    var favouriteaslbum: String

}

let rick = TheBlackKeys(myfavouriteSong: "Weight of Love", favouriteaslbum: "All of them are good")
print(rick.favouriteaslbum)
print(rick.myfavouriteSong)

// Dan and Patrick are part of the Black Keys but the favourite song and album dosn't

print("-- Acess Control --")

// Acess Control let's us specify how data inside structs and classes should be exposed outside of them

// Existing 4 types:

// Public: Everyone can read and write

// Internal: Only Swift can read and write, that means that if you make a framework nobody can read

// File Private: Only Swift code in the same file can read

// Private: The property is available only inside

struct Hello {
    public var hello = "Hello"
    internal var hey = "Hey"
    fileprivate var geez = "geez"
    private var k = "🫥"
}

print("-- Polymorphism and typecasting")

// It's all about classes inheritance

class album {
    var album: String
    
    init(album: String) {
        self.album = album
    }
    
    func GetPerformance() {
        print("FODA")
    }
}

class TheblackKeys: album {
    var name = "Let's Rock"
}

// Only the parent class album have the "GetPerformance"
