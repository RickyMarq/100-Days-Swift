import UIKit

var greeting = "Hello, playground"

// Arrays

// São coleções de valores que guardam um só valor:

let Dan = "Dan Auerbach"
let Patrick = "Patrick Carney"

let TheBlackKeys = [Dan, Patrick]

TheBlackKeys[0]

// Sets

// É parecido com Arrays, só que os itens serão guardados em ordem aleatória e os valores não podem aparecer 2x vezes

let Country = Set(["Johnny Cash", "Patsy Cline", "Jim Reeves"])

// Note que o cantor Jim Reeves aparece primeiro na lista, mesmo tendo sido colocado por último

// Caso acidentalmente criarmos uma duplicata ela será ignorada

let Country2 = Set(["Johnny Cash", "Johnny Horton", "Johnny Cash"])

// Como vimos, a duplicata de Johnny Cash foi ignorada :(

// Tuplas

// São parecidas com Arrays, só que não podemos adicionar ou remover items e mudar o tipo dos valores

let Aha = (Singer: "Morten Harket", Guitarist: "Paul Waaktaar", Keyboardist: "Magne Furuholmen")

// Tuplas Podem ser Lidas da seguinte forma

Aha.0
Aha.Keyboardist

// Arrays vs Sets vs Tuples

// Apesar de serem extremamente parecidas cada uma tem sua hora de usar

// Específico: uma coleção fixa onde todos os valores devem estar corretos e na ordem: Tuplas

let Endereço = (Rua: "Bonifacio Cubas", Casa: 213, Cidade: "São Paulo")

// Único: Coleção de valores único que podem ser checados com rapidez: Set

let Radiohead = Set(["Thorn", "Jonny", "Colin", "Ed Obrien", "Philip"])

// Duplicata: Se precisar de uma coleção que podem conter duplicatas e a ordem importa devemos usar Arrays

let Paramore = ["Hayley Williams", "Zac Farro", "Taylor York"]

let IsLoggedin = [true]

// Dicionários

// Guardam valores assim como as Arrays, entretanto podemos acessar da maneira que quisermos


let GêneroMusical = [
    "Morten Harket" : "Pop",
    "Hayley Williams" : "Rock",
    "Johnny Cash" : "Country",
    "Thorn" : "Alternativo"
]

GêneroMusical["Johnny Cash"]

// Vírgula: Array | Dois Pontos: Dicionário

// Podemos declarar um valor padrão caso não exista uma definição

GêneroMusical["Jim Reeves", default: "Desconhecido"]

// Jim Reeves é um cantor do country ;)

let prices = [
    "Milk" : 1,
    "Pespsi" : 2
]


