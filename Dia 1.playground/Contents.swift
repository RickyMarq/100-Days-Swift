import UIKit

// Variáveis

// Declaramos uma variável fazendo o seguinte:

var peixe = "Peixe Beta"

// Por ser uma 'variável' ela é mutável

peixe = "Peixe Espada"

// Strings e Inegers

// Quando criamos uma variável no swift cada uma delas carrega um tipo específico

// Um texto carrega o tipo String e números o tipo Int

var idade = 19

// A var idade é um Int

// Ao colocarmos "" o tipo é automaticamente uma String

var idade2 = "19"

// idade2 é uma string

// Strings de várias linhas

var str1 = """
Olá eu sou
uma
String
De várias
Linhas
Bip Bop
"""

// Caso não queira fazer várias linhas:

var str2 = """
Olá eu sou \
uma \
String
"""

// Double e Booleanos

// Doubles guardam valores quebrados:

var pi = 3.14

// Booleanos guardam valores verdadeiros ou falsos

var isConnected = true

// Interpolação de Strings

// Nos permite colocar vairáveis e até códigos dentro de uma String:

var user = "Henrique"

var isLoggedIn = "Parabéns, \(user) você logou com sucesso"

// Constantes

// Constantes são valores não podem ser mudados:

let Henrique = "Marques"

// Type Annotations

// Podemos especificar de qual tipo uma variável é

let nome: String = "Felipe"




