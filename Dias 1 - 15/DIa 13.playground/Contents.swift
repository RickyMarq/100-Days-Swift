import UIKit

print("-- Variable and Constants --")

// In swift we have 2x ways to store data, constants and variables

// Obviously variables have a variable value and constants cannot change

// Have constants seems pointless, but the perform a important tool such as optimization

let image = UIImageView()
image.isUserInteractionEnabled = true

// Or, with variables

var name = "Henrique"

// PS: We don't need to call "var" to change it value

name = "Felipe"

print("-- Types of Data --")

// Swift have severals ways to hold data:

// Written Data: String

let n: String = "Rick"

// Whole Number: Int

let nu: Int = 8

// Fractional Numbers: Double

let pi: Double = 3.14

// Yes, we know that exists a second fractional type called float, but float is less accurate compared to Doubles, sooo it's safe to say that it's better use Doubles.

// Values that might be true or not: Booleans

// With booleans we can assign if somethings it's true or false:

let imnice: Bool = true

print("-- Operators --")

// It's math that we all learned, but now it's just more complex and boring :D, just kidding

var numb = 10

numb - 5 // Subtract
numb * 2 // Multiply
numb / 2 // Divide
numb + 1 // Add

print(numb)

// But this is just simple math, and if you notice, it's not changed the value

// For this exists the += / -= / *= / /=

// In English will you be like, make this operation THEN, assign to the value

numb += 2

print(numb)

// Look, it changed the final value


// Using this kind of operators we can do whatever we want

var first = "Henrique"
var middle = "Marques"

var full = first + "Marques" + middle

// Sure, swift support others mathematics statments, such as %, ^ and etc.

print("-- Comparison Operators --")

// > (greater than)

// >= (greater or equal than)

// < (less than)

// <= (less or equal than)

var a = 5

numb <= a

// One important statment is "==" which means it's equal to

// And Not = !

print("-- String Interpolation --")

// it's the act to put a string inside another string

let na = "Henrique"

var greeting = "Hello, my name is \(na)"

print("-- Arrays --")

// Arrays let's us store a group of value in a single colletion, then access with an index value

var Singers = ["Julian Casablancas", "Alex Turner", "Josh Homme", "Hayley Willians"]

// Accessing

Singers[0]
Singers[3]

// Type Annotations it's here too.

// Let's imagine that you want a array that can hold any kind of data

let Geez: [Any] = ["Julian", 5, false, "God, what a mess array"]

// Array Operators

var MoreSingers = ["Morten Harket", "Chris Martin"]

var Favourites: Any = Singers += MoreSingers


print("-- Dicionaries --")

// Dictionares can store multiple data such as Arrays, but with dictionaries we can access a value with a specific key that we set it

var imaginaryband = ["Singer": "Chris Marin", "Drummer": "Matt Helders", "Keyboard": "Magnum Furehelman"]

// Witch Dictionaries it's simples to call something

imaginaryband["Drummer"]

print("-- Conditional Statments --")

// Sometimes you want that your code will only run if somethings it's true or false, soo:

var action = "Watching"
var nn = "Henrique"

if action == "Code" {
    print("Just more 5 miuntes until i finish 😬")
} else if action == "tired" {
    print("I'm tired man, sorry")
} else {
    print("I don't have anything to do, let's go see the new Batman movie?")
}

// Swift will check the condition and use the code that we written if this happened

// Swift can evaluate many conditions in the same line

var StayOutTooLate = true
var MyParentsgonnaquestion = true

if StayOutTooLate && MyParentsgonnaquestion {
    print("Sorry mom, i lost the bus")
}

print("-- Loops --")

// It's simple, some block of code gonna be repeated until you stop

// For in Loop

for i in 1...5 {
    print("\(i)")
}

// Another Example

for i in 1..<3 {
    print("I'm sorry, i'm tired to think of someting to put in this String, but the number is \(i)")
}

// If we don't want use the value

for _ in 1..<2 {
    print("I'm tired, please cut me some slack :)")
}

// Looping over Arrays

var songs = ["Howlin for You", "Sun Always Shines on TV", "Wink"]

for song in songs {
    print("I like \(song) it's a good song")
}

// Inner Loops

// Yes, we can write loops inside another's loops

// While Loops

// It repeats the code until becomes false

var i = 2

while i < 10 {
    print("\(i)")
    i += 1
if i == 10 {
    break
    }
}

// Break it's a tool that we use it to "break" a loop whenever we want.

// Continue: Stop the loop and continues the execution

print("-- Switch --")

// With switch we can provide many cases if something happen

var albums = 5

switch albums {
case 1:
    print("Whatever people say, i'm not")
case 2:
    print("Favourite worst nightmare")
case 3:
    print("Humbug")
case 4:
    print("Suck it and See")
case 5:
    print("AM")
case 6:
    print("Tranquility Base Hotel + Casino")
default:
    print("Nah, Arctic Monkeys it's good independently for the album")
}


