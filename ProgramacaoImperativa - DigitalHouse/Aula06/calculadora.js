


function adicionar(x, y) {
    return x + y
}

function subtrair(x, y) {
    return x - y
}

function multiplicar(x, y) {
    return x * y
}

function dividir(x, y) {
    return x / y
}


console.log ("-------------- Teste de Operações / Calculadora --------------")

console.log('Soma')
console.log(adicionar(10, 10))

console.log('Subtração')
console.log(subtrair(10, 10))

console.log('Multiplicacao')
console.log(multiplicar(10, 10))

console.log('Divisão')
console.log(dividir(10, 10))

console.log('Divisão')
console.log(dividir(0, 10))

// -------------------------------------------------------------//

function quadradoDoNumero(x) {
    return multiplicar(x, x)
}
console.log('Quadrado')
 console.log(quadradoDoNumero(4))


 function mediaDeTresNumeros(x, y, z) {
     let soma1 = adicionar(x, y)
     let somatotal = adicionar(soma1, z)
     return dividir(somatotal, 3)
 }
console.log('Média de 3 numeros')
console.log(mediaDeTresNumeros(10, 15, 20))


function calculaPorcentagem(x, y){
    let divis = dividir(y, 100)
    return multiplicar(x, divis)
}
console.log('Calcular porcentagem')
console.log(calculaPorcentagem(300, 15))



 function geraPercent(x, y){
    let percent = dividir(x, y)
    return multiplicar(percent, 100)
 }
 console.log('Gera porcentagem')
 console.log(geraPercent(2, 200))

