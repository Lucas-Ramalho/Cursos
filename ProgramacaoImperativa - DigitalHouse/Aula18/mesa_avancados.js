
let zeroACem = []

for (i = 0; i <= 100; i++){
    zeroACem.push(i)
}

console.log(zeroACem)



let loopPares = zeroACem.map(function(numero) {
    if ((zeroACem[i] + numero) % 2 == 0) {
        console.log('O numero ' + (zeroACem[i] + numero) + ' é par')
    } else {
        console.log(zeroACem[i])
    }
})

loopPares(5); // chamada da função para TESTAR o resultado

// ESCOLHER UMA ESTRUTURA DE LAÇO DE REPETIÇÃO --> métodos avançados de array
// O LOOP PRECISA MOSTRAR OS NÚMEROS DE 0 A 100

// opções: WHILE, FOR, FOREACH, DO WHILE

// DENTRO DO LOOP
// MOSTRAR O NÚMERO - CONTADOR
// CASO o (contador+numero) % == 0 
// x = (contador+numero)
// CASO TRUE - "O número x é par"
// CASO FALSE - mostra o contador




function arrayHandler(array1, array2) {
    if (array1.length == array2.length) {
        for (i = 0; i < array1.length; i++){
            console.log('Oi eu sou ' + array1[i] + ' e eu sou ' + array2[i])
        } 
    } else {
        console.log('Os arrays são de tamanho diferente')
    }
           
}
        
// arrayHandler([1, 2, 3], ["o", "l", "á"]);


// TESTAR se os tamanhos dos arrays são iguais
// CASO true
// FAZ AÇÃO DA FUNÇÃO
        
// ESTRUTURA DE REPETIÇÃO QUE CONSIGA PASSAR POR TODO ARRAY - método avançado
// em cada posição, mostra na tela "Eu sou array1[contador] e eu sou array2[contador]"
        
// CASO false
// mostrar na tela que tamanho é diferente e não faz a ação da função