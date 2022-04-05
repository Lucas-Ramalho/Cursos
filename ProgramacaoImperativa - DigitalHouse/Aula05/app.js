function conversorPolegada(x) {
    let a = x * 2.54;
    return console.log(a)
}
conversorPolegada(10.5);


function conversorUrl(texto) {
    let a = 'http://www.' + texto + '.com.br';
    return console.log(a)
}
conversorUrl('digitalhouse')

function conversorUrl2(texto2) {
    let a = `http://www.${texto2}.com.br`;
    return console.log(a)
}
conversorUrl2('digitalhouse2')


function exclamacao(frase) {
    let a = frase + '!';
    return console.log(a)
}
exclamacao('O rato roeu a roupa do rei de Roma')



function idadeCachorro(x) {
    let a = x * 7;
    return console.log(a)
}
idadeCachorro(10)


function salarioHora(x) {
    let a = `Seu salário por hora é de: ${x/160}`
    return console.log(a)
}
salarioHora(2500)

function calcularImc(peso,altura) {
    let imc = peso / (altura * altura)*10000;
    return console.log(imc)
}
calcularImc(80,179)


function maiuscula(texto) {
    let a = texto.toUpperCase();
    return console.log(a)
}

maiuscula('lucas')


function tipoDado(x) {
    let a = typeof(x);
    return console.log(a)
}
tipoDado(10)

function circunferencia(x) {
    let a = (x ** x) * Math.PI
    return console.log(a)
}

circunferencia(10)