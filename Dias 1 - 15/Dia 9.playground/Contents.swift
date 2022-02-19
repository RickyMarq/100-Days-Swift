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
    
