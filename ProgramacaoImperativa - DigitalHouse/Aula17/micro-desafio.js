
// Crie um array de números pares, e utilizando a função .map() nesse array, 
// crie um novo array com apenas números ímpares.

let pares = [0, 2, 4, 6, 8, 10]

let impares = pares.map(function(valor){
    return valor + 1
})

console.log(impares)


// Crie um array de nomes, que possua dois índices com o nome Maria. 
// Utilize o .filter() para obter apenas esses dois índices com o nome Maria.

let listaNomes = ['Maria Joaquina', 'Lucas', 'Joao', 'Maria Celia', 'Ricardo', 'Ana', 'Marcelo', 'Raquel']


let nomeFiltrado = listaNomes.filter(function(str){
    return str.includes('Maria') 
})

console.log(nomeFiltrado)


// Crie um array de números e utilize a função .reduce() para 
// devolver uma string com os números formatados.


let arrayNumeros = [1, 5, 9, 3, 7]

let strFormatado = arrayNumeros.reduce(function(acumulador, valor){
    return acumulador + " - " + valor
})

console.log(strFormatado)


// Crie um array de animais, após isso passe por cada índice utilizando o 
// .forEach() e imprima a frase “O animal é NOME_DO_ANIMAL”.


let arrayAnimais = ['Cachorro', 'Gato', 'Girafa', 'Macaco', 'Rato', 'Leão']

arrayAnimais.forEach(function(str){
    console.log("O animal é: " + str) 
})



