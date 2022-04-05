// Array invertido

/* 
Crie a função imprimirInverso que pega um Array como um argumento 
e imprime cada elemento em ordem reversa no console 
(você não precisa inverter o Array).

*/

arr = ['Lucas','Raquel','Ana','Maria','Jose']

function imprimirInverso (a){
    console.log(a)
    console.log(a.pop())
    console.log(a.pop())
    console.log(a.pop())
    console.log(a.pop())
    console.log(a.pop())
}   

//imprimirInverso(arr)


/* 
Crie a função inverter que 
recebe um Array como argumento e retorna um novo invertido.
*/


function inverso (a){
    console.log(a)
    novoArray = []
    novoArray.unshift(a.shift())
    novoArray.unshift(a.shift())
    novoArray.unshift(a.shift())
    novoArray.unshift(a.shift())
    novoArray.unshift(a.shift())
    console.log(novoArray)
}
   
//inverso(arr)


// Somar Array()

let arrNumero = [2, 4, 4]

function somarArray (array){
    let soma = 0
    soma += array[0]
    soma += array[1]
    soma += array[2]

    return console.log(soma)
}

//somarArray(arrNumero)


// Simulacao Array.join()

let arrStr = ['L', 'u', 'c', 'a', 's']

function simularJoin(array){
    let resultStr = ""
    resultStr += array[0]
    resultStr += array[1]
    resultStr += array[2]
    resultStr += array[3]
    resultStr += array[4]

    return console.log(resultStr)
}

//simularJoin(arrStr)


// Colecoes de Filmes

let arrFilmes = ["star wars", "matrix",  "mr. robot", "o preço do amanhã",  "a vida é bela"]


function converteMaiuscula(array){
    let arrFilmes2 = []
    arrFilmes2.push(array[0].toUpperCase())
    arrFilmes2.push(array[1].toUpperCase())
    arrFilmes2.push(array[2].toUpperCase())
    arrFilmes2.push(array[3].toUpperCase())
    arrFilmes2.push(array[4].toUpperCase())
    
    return console.log(arrFilmes2)
}

//converteMaiuscula(arrFilmes)


let arrFilmesAnimacao = ["Toy Story", "Procurando Nemo", "Kung-fu Panda", "Wally", "Fortnite"]

function unirArraysFilmes(array1, array2){
    let arrayUnido = []
    let games = ""
    arrayUnido.push(array1[0])
    arrayUnido.push(array1[1])
    arrayUnido.push(array1[2])
    arrayUnido.push(array1[3])
    arrayUnido.push(array1[4])
    arrayUnido.push(array2[0])
    arrayUnido.push(array2[1])
    arrayUnido.push(array2[2])
    arrayUnido.push(array2[3])
    arrayUnido.push(array2[4])
    games = arrayUnido.pop()
    console.log("O título " + games +" foi excluido pois na verdade é um Game" )
    console.log("=========LISTA DE FILMES ATUALIZADA============")
    return console.log(arrayUnido)
}

// unirArraysFilmes(arrFilmes, arrFilmesAnimacao)

const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];

function comparaNotas (array1, array2) {
    if (array1[0] != array2[0]) {
        console.log("Notas diferentes")
    } else if (array1[1] != array2[1]) {
        console.log("Notas diferentes")
    }   else if (array1[2] != array2[2]) {
        console.log("Notas diferentes")
    } else if (array1[3] != array2[3]) {
        console.log("Notas diferentes")
    } else if (array1[4] != array2[4]) {
        console.log("Notas diferentes")
    } else if (array1[5] != array2[5]) {
        console.log("Notas diferentes")
    } else if (array1[6] != array2[6]) {
        console.log("Notas diferentes")
    } else if (array1[7] != array2[7]) {
        console.log("Notas diferentes")
    } else if (array1[8] != array2[8]) {
        console.log("Notas diferentes")
    } else 
    {
        console.log("notas iguais")
    }
}   

comparaNotas(asiaScores, euroScores)