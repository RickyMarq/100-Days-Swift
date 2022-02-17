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

 
