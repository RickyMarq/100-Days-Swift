import UIKit

// Closures

// O Swift nos permite usar funções como qaulquer outro tipo com String ou Inteiros

let dirgigindo = {
    print("Estou dirigindo")
}

// Nos permitindo chama-las como funções também

dirgigindo()

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

