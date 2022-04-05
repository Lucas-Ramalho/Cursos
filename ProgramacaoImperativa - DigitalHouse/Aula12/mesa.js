
// Calcular e encontrar o vencedor

const alicia = [13, 69, 32];
const bob = [12, 67, 43];

function encontrarGanhador(a, b) {
    let pontosAlicia = 0
    let pontosBob = 0
    for(let i=0; i<a.length; i++) {
        if (a[i] > b[i]){
            pontosAlicia += 1
        } 
        else if (a[i] < b[i]){
            pontosBob += 1
        }
        else {
            pontosAlicia += 0
            pontosBob += 0
        }
    }

    if (pontosAlicia > pontosBob){
        console.log("Alicia ganhou")
    }
    else if (pontosAlicia < pontosBob) {
            console.log("Bob ganhou")
    }
    else 
        {
            console.log("Deu empate")
        }
}

//encontrarGanhador(alicia,bob)





// Bonus Extra

// 1 - 
function digitalHouse(x, y){

    for (let i=0; i <= 100; i++) {
        if (i % x == 0 && i % y == 0){
            console.log("Digital House");
        }
        else if (i % y == 0){
            console.log("House")
        }
        else if (i % x == 0){
            console.log("Digital")
        }
        else
        {
            console.log(i)
        }

    }
}

//digitalHouse(2,3)


// 2 

let array = [2, 2, 2, 2, 2, 11]

function somaArray(array) {
    let soma = 0
    for (i=0; i < array.length; i++) {
            soma += array[i]
            
    }
    return console.log(soma)
}

//somaArray(array)



// 3

let mystr = ['L', 'u', 'c', 'a', 's', ' ', 'b', 'o', 'l', 'a', 'd', 'a', 'u', 'm']

function simulaJoin(mstr) {
    let resultstr = ''
    for (i = 0; i < mstr.length; i++ ) {
        resultstr += mstr[i]
    }
    return console.log(resultstr)
}

simulaJoin(mystr)
