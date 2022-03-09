import UIKit

print("---Inicializadores---")

// Inicializadores são métodos especiais que nos permitem criar stucts de forma diferente.

struct User {
    var username: String
    
    init() {
        username = "Anônimo"
        print("Criando usuário anônimo")
    }
}

 

let tbk = [
    "Drums": "Patrick",
    "Voice": "Dan"
]

tbk["Drums"]

let tbk2 = ["Dan", "Patrick"]

tbk2[0]

let aha = (Singer: "Morten", Guitarist: "Paul", Keyboardist: "Magne")

print(aha)


let quatro = 1..<5

for number in quatro {
    print("O número é \(number)")
}


let albums = ["Brothers", "Turn Blue"]

for album in albums {
    print("\(album) de The Black Keys está disponível no Apple Music")
}
    
print("-- Referring to the curretn instance --")

// Inside methods we can call a constant called "self"

// Its useful when you create a initializers that have the same name as your property

struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born in 2002")
        self.name = name
    }
}

var Henrique = Person(name: "Henrique")

print("-- Lazy Properties --")

// It's a perfomance optimization tool, lazy properties only are called when the are needed

//lazy var LoginButton: UIButton = {
//
//    let button = UIButton()
//    return button
//}()

// Besides the error, this is a valid use of lazy

// I created a button programmatically

print("-- Static properties and methods --")

// It's a propertie that is always the same in the instances of the struct, static

struct url {
    static let URL = "Chuchu.com.br"
}

// A good example of use of a static propertie is when you need to store a common funcionality across the app

print("-- Acess Control --")

// Acess control lets us restrict which code can use properties and methods

struct ID {
    var name: String
    private var id: Int
    public var color: String
}

// A private restricts the use of the id var only for the ID struct
// The public otherwise can be acessed for everyone


print("What's the point of acess control ?")

// Acess control, "controls" when a value should be used or acessed it's useful when is a risky value
