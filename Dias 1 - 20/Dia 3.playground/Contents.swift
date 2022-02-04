import UIKit

// Operações aritmeticas básicas

// Soma: +

let PrimeiraPartida = 14
let SegundaPartida = 10

let Final = PrimeiraPartida + SegundaPartida

print(Final)

// Subtração -

let PrimeiroMes = 900
let SegundoMes = 700

let Diferença = PrimeiroMes - SegundoMes

print(Diferença)

// Divisão /

let Pirulitos = 10
let Alunos = 4

let Divisão = Pirulitos / Alunos

print("Cada aluno irá receber \(Divisão) pirulitos")

// Multiplicação

let Dois = 2
let Multiplicação = 1080

let resultado = Dois * Multiplicação

print("O resultado da multiplicação é \(resultado)")

// Operator Overloading

// As operações depedem do tipo delas, ou seja. Não podemos adicionar uma Int em uma String

// Podemos fazer operações com strings também

let haters = "Odiadores vão "
let hate = "odiar"

let Gamers = haters + hate

print(Gamers)

// Atalhos para operações.

// Ao combinarmos as operações com "=" criamos um atalho que permite escrever menos código

var Prova = 9

Prova -= 3

print("Por ter colado o aluno levou uma penalização de 3 pontos e ficou com \(Prova)")

// Isso novamente vale para tudo

let user = "Henrique"

var Saudação = "Olá \(user) bom "

Saudação += "dia"

print(Saudação)

// Operadores de Igualdade

// é igual a "=="

let cestas = 10
let cestas2 = 8

cestas == cestas2

// não é igual a "!="

cestas != cestas2

// Operadores de Comparação

// Maior

cestas > cestas2
cestas2 >= cestas

// Menor

cestas < cestas2
cestas2 <= cestas2

// Funcionam com Strings também, por terem uma ordem alfabetica.

let nome = "Henrique"
let sobrenome = "Marques"

nome > sobrenome

// Condições

let carta1 = 9
let carta2 = 14

if carta1 + carta2 >= 21 {
    print("Vinte um! eu ganhei")
} else {
    print("Perdi :(")
}

// Podemos escrever condições mais complexas também

if carta1 >= 9 {
    print("Já comecei com sorte")
} else if carta1 + carta2 == 21 {
    print("Ganhei, deu 21")
} else {
    print("Perdi")
}

// Operadores de condições

// e = "&&"

let idade = 19
let idade2 = 8

if idade > 18 && idade2 > 18 {
    print("Ambos são maiores de idade")
} else {
    print("Um ou ambos são menores de idade")
}

// ou = "| |"

if idade > 18 || idade2 > 18 {
    print("Maiores de idade")
}

// && necessita que ambos sejam verdadeiros para prosseguir

// || necessita que apenas um seja verdadeiro para prosseguir

// Apesar de ser raro, devemos saber o que é o operador ternário

// Em que combina três elementos para fazer outro elemento

let carta3 = 10
let carta4 = 1

print(carta3 == carta4 ? "As cartas são iguais" : "As cartas são diferentes")

// E mais um artefício para economizar linhas de código, já que que podemos fazer o mesmo normalmente

if carta3 == carta4 {
    print("As cartas são iguais")
} else {
    print("As cartas são diferentes")
}

// Caso tiververmos muitas condições if e else podemos usar o switch

let tempo = "Chuva"


switch tempo {
case "Chuva":
    print("Leve o guarda chuva, pode chover 🌧")
case "Ensolarado":
    print("Leve o protetor solar 🧴")
    fallthrough
default:
    print("Tenha um bom dia")
    
}

// Caso quisermos que continue executando usamos o fallthrough


// Operadores de Range

// Existindo ...< e ...

// É útil usando junto com o switch

let prova = 5

switch prova {
case 0..<5:
    print("Você foi mal na prova e tirou \(prova) :(")
case 5...7:
    print("Você foi ok na prova e tirou \(prova)")
case 7...10:
    print("Você foi muito bem na prova e tirou \(prova)")
default:
    print("Parabéns você concluio a prova")
}

