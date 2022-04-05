// 1. Repetir como um papagaio

console.log('====== Repetir o Olá mundo =========')
for (let i = 0; i<=4; i++) {
    console.log('Ola mundo')
}


// 2. Contando números impares
console.log('====== imprimir numeros impares =========')
for (let i=0; i<=10; i++) {
    if (i % 2 != 0){
        console.log(i)
    }
}


// 3. Criando a tabuada
console.log("=========Tabuada=============")
for (let i=0; i<=10; i++) {
    for (let x=0; x<=10; x++){
        console.log(i + " * " + x + " = " + i*x)
    }
}