const somar = (n1, n2) => n1 + n2

const calculadora = (nA, nB, operacao) => operacao(nA, nB)

console.log(calculadora(10, 20, somar))

console.log(calculadora(10, 20, (n1, n2) => n1 - n2))