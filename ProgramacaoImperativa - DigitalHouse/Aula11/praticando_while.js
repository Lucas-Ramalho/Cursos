

/* 
let i = 0

console.log("=======Numeros impares=========")
while (i <= 100){
    if (i % 2 != 0){
        console.log(i)
    }
    i++
}

let x = 0

*/

/* 
console.log("=======Numeros Pares=========")
while (x<=100){
    if (x  % 2 == 0){
        console.log(x)
    }
    x++
}

*/

// ==================================== //
function numerosFunc (x) {
    let a = x
    let i = 0
    while(i <=a) {
        if (i % 2 != 0){
            console.log("numeros impares = " + i)
            i++
        }
        
        if (i % 2 == 0){
            console.log("numeros pares = " + i)
            i++
        }
       
    }

}

numerosFunc(10)


// Média de notas turma //

