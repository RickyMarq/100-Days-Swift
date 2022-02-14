import UIKit

// Closures

/* Closures são blocos de código que guardam funcionalidade e podemos re-passar em todo o código.

 A definição mais exata seria: "Aqui está um funcionalidade, mas não precisa usar agora"

Usamos para:
 
Rodar um código quando uma animação termina

Rodar um código quando um download termina
 
Roda um código quando o user selecionou uma opção no menu.

*/

let dirgigindo = { (lugar: String) in
    print("Estou dirigindo até a \(lugar)")
}

dirgigindo("Praia")

// Os parâmetros ficam dentro de chaves no clousures para não confundir o swift.

// Closures que aceitem parâmetros

let escutando = { (banda: String, música: String) in
    print("Estou escutando \(banda) no momento minha preferida é \(música)")
}

escutando("Radiohead", "Jigsaw falling into Place")

// A sintaxe é um pouco diferente, mas é assim que se faz.

// Retornando Valores com Closures

let música = { (grupo: String, album: String) -> String in
    return "Você ja ouviu \(album) ? é um album do \(grupo)"
}

let menssagem = música("The Black Keys", "Brothers")
print(menssagem)

// Caso queiramos criar uma função que retorne um valor, mas não aceite parâmetros fazemos.

let pagamento = { () -> Bool in
    if pagamento() {
        print("Yay, finalmente")
    } else {
        print("Força, só mais alguns dias...")
    }
    return true
}

// Para que usamos closures como parâmetros

/*

 Quando fazemos algum pedido para a siri precisamos usar closures pois ao rodar o código e retornar uma closure o app fará isso com rapidez, não deixando a interface da siri travada como seria caso não fizessemos isto.
 
 O mesmo para requisiões de internet, usamos closures para: "Quando terminar, rode isto"
 
 Fazer isso nos permite não congelar a interface do usuário.

*/

// Trailing Closure

func animate(duration: Double, animations: () -> Void ) {
    print("Começando uma animação de \(duration) segundos")
    animations()
}

// Trailing Closures nos permite deixar essa função que é bem comum mais enxuta

animate(duration: 3, animations: {
    print("Animação")

})
