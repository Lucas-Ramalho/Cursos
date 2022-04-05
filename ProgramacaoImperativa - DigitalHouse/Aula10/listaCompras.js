let listaCompras = ['Arroz', 'Feijão', 'Ovo', 'Macarrao', 'Alface']
console.log(listaCompras)

console.log('O método join adiciona um delimitador, indicado dentro do parentes, se nada preenchido por padrao é a virgula')
let joinlistaCompras = listaCompras.join("-")
console.log(joinlistaCompras)

console.log('O método pop, remove o útlimo item do array, pode-se adicionar esse item em uma variavel')
let ultimolistaCompras = listaCompras.pop()
console.log(ultimolistaCompras)

console.log('O método push, adiciona um novo objeto no final do array')
listaCompras.push('Café')
console.log(listaCompras)

console.log('O método shift, exclui o primeiro objeto do array')
let primeiroItem = listaCompras.shift()
console.log(primeiroItem)

console.log('O método unshift, adiciona um novo objeto no inicio do array')
listaCompras.unshift('Chocolate')
console.log(listaCompras)