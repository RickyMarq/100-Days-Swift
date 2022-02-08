import UIKit

// Escrevendo funções

// Funções nos permitem re-usar um código, podendo repeti-la em outros lugares


// func NomeDaFunção () {}
func Help () {
    let message = "Olá, seja bem vindo(a)"
    
    print(message)
}

// Agora Podemos usar a função "Olá" em qualquer parte do nosso app

Help()

// Aceitando Parâmetros

// Modificam o modo como um parâmetro se comportamento



func sqaure (number: Int) {
    print(number * number)
}

sqaure(number: 5)

// Retornando valores

// Assim como funções conseguem receber dados elas podem enviar também

func square (sq : Int) -> Int {
    return sq * sq
}

// Como eu mesmo percebi, não é necessário declara o print ao usar parâmetros

func Olá(_ pessoa: String) {
    print("Olá \(pessoa)")
    
}

Olá("Henrique")

// Apensar de ser mais fácil de ler isso é prejudical ao trabalhar em projetos grande e/ou empresas pois ficar difícil de se saber o que tal função faz.

// Etiquetas em funções

// É usada para estabelecer um parâmetro interno e externo, o interno para ser usado dentro da função, o externo fora.

func TheStrokes (to band: String) {
    print(band)
}

TheStrokes(to: "Julian Casablancas")

// Como visto o parâmetro "band" foi usado dentro e o "to" fora.

// Parâmetros Padrão

// Podemos endereçar um valor padrão a um parâmetro simplesmente usando o "="

func saudação(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Olá, \(person)")
    } else {
        print("Vish, é o \(person) de novo")
    }
}

saudação("Henrique", nicely: false)

// Exemplo mais fácil:

func GtaV(name: String, cheat: Bool = false) {
    
    if cheat {
        print("Vou jogar na legalidade")
    } else {
        print("Cansei, vou ativar o cheat")
    }
}

GtaV(name: "Gta", cheat: false)

// Funções Variáveis

// São funções que aceitam o mesmo parâmetro varias vezes do mesmo tipo

func quadrado(Lados: Int...) {
    for Lados in Lados {
        print("\(Lados) quadrado são \(Lados * Lados) lados")
    }
}

quadrado(Lados: 1, 2, 3, 4, 5)

// Ao invés de ser 1 como um int normal ele é 0 ou milhões de números.

// Funções "Jogáveis"

// Podemos usar funções para lidar com erros também, por isso, usamos o "throw"

// Primeiramente definimos um erro

enum ErroSenha: Error {
    case obvious
}

func Senha(_ password: String) throws -> Bool {
    if password == "password" {
        throw ErroSenha.obvious
    }
    return true
}

// DO / Try / Catch

// do começa uma seção de códigos que podem dar um erro

// try é usado antes que volte um erro

// catch é a maneira que iremos lidar com esses erros


do {
    try Senha("password")
    print("Essa senha é boa")
} catch {
    print("Você não pode usar essa senha")
}

 // Caso algum erro ocorra já no do o swift joga automaticamente no catch


// Funções Inout

// Todos os parâmetros passados para uma função são constantes, entretanto se quisermos podemos passar um inout

// Inout: Parâmetro muda dentro da função

func doubleinPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleinPlace(number: &myNum)


