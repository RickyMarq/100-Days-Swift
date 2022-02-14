import UIKit

// Usando closures como parâmetros que aceitam parâmetros.

func travel (action: (String) -> Void) {
    print("Estou pronto para ir")
    action ("Londres")
    print("Eu cheguei")
}

travel { (local: String) in
    print("Eu vou para \(local) de avião")
}

// Quando usamos ? - 

// Usando closures como parâmetros quando retonram valores



// Estávamos usando Void que significa "Não aceita parâmetros e não retorna nada.

// Podemos retirar o void e colocar qualquer tipo de dado para forçar ele a retornar um valor

func Pizza(action: (String) -> String) {
    print("Eu vou fazer uma pizza")
    let _ = action("Calabresa")
    print("Eu fiz uma pizza de calabresa")
}

Pizza { (action: String) -> String in
    return "Eu fiz uma pizza de \(action)"
    
}
