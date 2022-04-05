
// nativo
const fs = require('fs');
let dados = fs.readFileSync(__dirname + '/dados.txt', 'utf-8');
console.log(dados)





// importado
let moment = require('moment');
let data = moment().format('MMMM do YY')

console.log(data)


//criado
const receitaf = require('./receita/index')
console.log(receitaf)