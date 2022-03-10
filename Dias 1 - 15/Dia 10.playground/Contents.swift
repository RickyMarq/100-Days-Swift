import UIKit

print("-- Classes --")

/*
 
Classes such as Structs let's us create data types with methods and properties
 
 But, Classes have a feature called inheritance which lets us build another class in the foundations of another
 */


// * Classes always need to have a created initializer, they don't have a default such as Structs

class Dog {
    var name: String
    var Breed: String
    
    func makenoise() {
        print("Woof")
    }
    
    
    init(name: String, Breed: String) {
        self.name = name
        self.Breed = Breed
    }
}

print("-- Classes Inheritance --")

class Pulga: Dog {
    
    override func makenoise() {
        print("hm")
    }
}

// The new class inherits the properties of the "Dog" class

Pulga(name: "Pulga", Breed: "Doggo")

print("-- Overriding Methods --")

// Child classes can replace parents methods with "override"

// In the example, i override the makenoise func in the child class

print("-- Final Classes --")

// Sometimes it's cool to "block" other developers to change your parent class

final class Niceclass {
    var name: String
    
    
    init(name: String) {
        self.name = name
    }
}

// The "final" prefix in my class protects from anyone override or change behavior

print("-- Copying Objects --")

/* The third difference from classes and structs is about copying

 When we create a struct and copy it the copy is different from the original

 Classes are different, both the original and the copy are the same so changing one, changes the other.
 
 */

class singer {
    var name = "Josh Homme"
}

var Sing = singer()
print(Sing.name)

// Now, its gonna change

var singercopy = Sing
singercopy.name = "Alex Turner"

print(singercopy.name)

print(Sing.name)

// As you see, we changed the value of the "name"

// If we did it the same thing with structs it will repeat the same thing 2 times

print("-- Deinitializers --")

// The fourth difference of structs and classes is "deinitializers", a property that run code when a instance of a class is destroyed

class Person {
    var name = "Henrique"
    
    init() {
        print("\(name) is alive ")
    }
    
    func greeting() {
        print("Hello, \(name)")
    }
    
    deinit {
        print("\(name) it's no long here")
    }
}

Person()

// Classes have deinitializers cause of the complex copy properties, in big apps it's hard to tell when exactly when the class is destroyed.

print("-- Mutability --")

// The final difference it's how classes deal with constants

// If you have a constant struct but a var property the var cannot mutate, cause the struct is constant

class singer3 {
    var name = "Thom yorke"
}

let singer2 = singer3()
singer2.name = "Hayley Willians"

print(singer2.name)

// It changed the singer name :)


