import UIKit

// Closures

// O Swift nos permite usar funções como qaulquer outro tipo com String ou Inteiros

let dirigindo = {
    print("Estou dirigindo")
}

// Nos permitindo chama-las como funções também

// O nome disso é closures

// Closures que aceitem parâmetros

let escutando = { (banda: String, música: String) in
    print("Estou escutando \(banda) no momento minha preferida é \(música)")
}

escutando("Radiohead", "Jigsaw falling into Place")

// A sintaxe é um pouco diferente, mas é assim que se faz.

// Retornando Valores com Closures

let música = { (grupo: String, música: String) -> String in
    return "Você ja ouviu \(música) ? ela é do \(grupo)"
}

let menssagem = música("The Black Keys", "Chop and Change")
print(menssagem)

// Closures como parâmetros

// Podemos assim usar uma closure dentro de uma fuction

func viagem (Ação: () -> Void) {
    print("Estou me preparando")
    Ação()
    print("Eu cheguei")
}

viagem(Ação: dirigindo)

// Trailing Closure Syntax

func travel (Action: () -> Void) {
    print("Estou me preparando")
    Action()
}

travel {
    print("Rio de janeiro")
}

// Isso é muito comum no swift

// Por conta do último paâmetro ser uma closure podemos eliminar o ()


