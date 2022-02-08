import UIKit

let dia = 4
print("Olá mundo, hoje é o dia \(dia) do desafio de 100 dias")

// For Loops

// Definição: O código roda até que ele seja falso

// O mais comum é o "For Loop" que vai sobre arrays e ranges

// For in com range

let dez = 1...5

for number in dez {
    print("O número é \(number)")
}

// For in com Arrays

let albums = ["El camino", "Brothers", "Delta Kream", "Turn Blue"]

for album in albums {
    print("\(album) de The Black Keys está disponível no Apple Music")
}

// While Loops

// Roda o código enquanto ele for válido.

var number = 5

while number <= 10 {
    print(number)
    
    number += 1
}

// Repeat Loop

// É pouco usada, mas vale a pena saber

// Ele é idêntico ao while loop, apenas que a condição vem por último

// Ao trabalhar com loops lembre-se sempre de usar "var"


var jujoba = 9

repeat {
    print(jujoba)
    jujoba += 1
} while jujoba < 10


// Saindo de Loops

// Podemos sair de um loop usando o "break" que irá impedir que qualquer parte abaixo dele seja executada

var contagem = 5

while contagem >= 0 {
    print(contagem)
    break
    //contagem -= 1
}

// O break impede que a contagem regressiva ocorra !


// Saindo de vários Loops

// Para fazer isso usamos o "OuterLoop" e o "Break"

// O break quebra apenas um Loop e em caso espeíficos precisamos quebrar mais de um.

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print(product)
        
        if product == 50 {
            print("aaa")
            break outerLoop
        }
    }
}
    
// Continue: Caso quisermos podemos apenar continuar um loop e executar o resto do que usar um break

for i in 1...5 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// Loops Infinitos

// É comum provocar o acontecimento de loops infinitos usando o while, usamos em todos os apps de iphone para que quando ele comece a rodar até o usuário parar

// São feitos usando o while true

var zig = 0
while true {
    print("")
    zig += 1
    
    if zig  == 20 {
        break
    }
}

// Lembramos de sempre colocar o break para que não criemos um loop enterno que é impossível de sair


