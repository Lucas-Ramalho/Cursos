let pessoa = {
    nome: "Lucas",
    idade: 21,
    altura: 1.80
}

//let json = JSON.stringify(pessoa);

//console.log(json)

//let objetoDeNovo = JSON.parse(json);

//console.log(objetoDeNovo)


let listaCompras = ["pao", "presunto", "queijo"]

let json = JSON.stringify(listaCompras)
console.log(json)

let arrayDenovo = JSON.parse(json)

console.log(arrayDenovo)


