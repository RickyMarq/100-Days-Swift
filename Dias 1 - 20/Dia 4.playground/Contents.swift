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

