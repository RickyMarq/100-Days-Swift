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

/* Usando closures como parâmetros quando retonram valores
 
Estávamos usando Void que significa "Não aceita parâmetros e não retorna nada"

Podemos retirar o void e colocar qualquer tipo de dado para forçar ele a retornar um valor

*/

func Pizza(action: (String) -> String) {
    print("Eu vou fazer uma pizza")
    let _ = action("Calabresa")
    print("Eu fiz uma pizza de calabresa")
}

Pizza { (action: String) -> String in
    return "Eu fiz uma pizza de \(action)"
    
}

print("---Atalhos para funções---")

Pizza {
    ("Eu vou preparar uma pizza de \($0)")
}

// Ao invés de fazer todo o processo da linha 29 até 30 podemos fazer o da 36 até 38.

// Nos dirigindo ao parâmetros com $0 até o parâmetro esperado.

print("---Clousures com multiplos parâmetros---")

func Pizza2(ação: (String, String) -> String ) {
    print("Vou fazer outra Pizza")
    let sabor = ação("Frango", "Catupiry")
    print(sabor)
}

Pizza2 {
    "Vou fazer uma pizza de \($0) com \($1)"
}

// Como vimos, nesta função temos 2 parâmetros além de termos chamando tal closure com o máximo de atalhos possíveis
    
print("---Retornando valores com funções---")

// Do mesmo jeito como podemos passar closure em funções podemos retirar a closure dentro de uma função.

// 1: -> Especifíca o retorno da função 2: -> Especifíca o retorno da clousure

func viajar() -> (String) -> Void {
    return {
        print("Eu vou para \($0)")
    }
}

// Agora podemos chamar a função para pegar a closure de volta aí chamar a função.

var resultado = viajar()
resultado("Austrália")

print("---Capturando Valores---")

// Se usarmos valores externos junto a uma closure o swift o guarda, mesmo que ele não exista mais.

// A captura de valores ocorre quando criamos valores dentro de uma closure.

func travel2() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter) eu vou para \($0)")
        counter += 1
    }
}

let result2 = travel2()
result2("Londres")

