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


