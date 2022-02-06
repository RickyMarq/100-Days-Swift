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


