import UIKit

print("---Structs---")

// Structs nos permite criar nossos próprios tipos, por exemplo. Podemos criar 3 Strings e um booleano todos juntos/

struct rock {
    var TBK = "The Black Keys"
    var PR = "Paramore"
    var AM = "Arctic Monkeys"
    var QOSA = "Queens of Stone Age"
    var RockisGood: Bool = true
    var vazio: String
}

// Podemos adicionar elementos a ela também.

var LP = rock(vazio: "Linkin Park")


print(LP.AM)

// Outro exemplo

struct pedido {
    var IDClinete: Int
    var prato: String
}

let Pedido = pedido(IDClinete: 007, prato: "Vésper")

print(Pedido)

print("---Propriedades Computadas---")

struct Esportes {
    var name: String
    var eOlimpíadas: Bool
    
    var Olimpíadas: String {
        if eOlimpíadas {
            return "\(name) é um esporte olímpico"
        } else {
            return "\(name) não é um esporte olímpico"
        }
    }
}

// Aqui existem 1 propriedade que guardam Strings isso se chama Propriedades guardadas.

// Diferente das propriedades computadas que rodam código para descobrir seu valor

// Propriedades computadas sempre devem ter o seu tipo exposto, e devem ser retornadas não printadas.

let xadrez = Esportes(name: "Xadrez", eOlimpíadas: false)

print(xadrez.Olimpíadas)

print("Observadores de propriedades")

// Nos permite rodar um código antes ou depois de qualquer propriedade mudar

struct Progresso {
    var tarefa: String
    var porcentagem: Int {
     
        didSet {
            print("\(tarefa) está com \(porcentagem)%")
        }
    }
}

var progresso = Progresso(tarefa: "Encriptar", porcentagem: 0)

progresso.porcentagem = 10
progresso.porcentagem = 20
progresso.porcentagem = 50
progresso.porcentagem = 70
progresso.porcentagem = 90
progresso.porcentagem = 100

// A Propriedade didSet nos permite observar uma propriedade computada.

print("---Métodos---")

// Podemos alocar funções dentro de um Struct e isso se chama métodos.

struct Cidade {
    var população: Int
    
    func imposto() -> Int {
        return população * 1000
    }
}

let SãoPaulo = Cidade(população: 200_000_000)
print(SãoPaulo.imposto())


// A função imposto é um parâmetro do Struct Cidade.

print("---Métodos Mutáveis---")

// É possível criar métodos mutáveis dentro de um Struct para quando o método muda o valor de uma propriedade

struct Pessoa {
    var nome: String
    
    mutating func Anonimato() {
        nome = "Anônimo"
    }
}

var Nome = Pessoa(nome: "Henrique")
Nome.Anonimato()

print("---Propriedades e Métodos de Strings---")

let nome2: String = "Henrique Marques"

// Com as propriedades e métodos de strings podemos manipula-las da maneira que quisermos.

print(nome2.count)
print(nome2.hashValue)

// Podendo ficar cada vez mais complexo

var phone = "Iphone"
phone.hasPrefix("I")

print("---Propriedades e Métodos de Arrays---")

// Arrays assim como Strings são structs

var brinquedos = ["Woody"]

// Adicionar

brinquedos.append("Buzz")

print(brinquedos)


