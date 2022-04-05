// nativo
const fs = require('fs');
const path = require('path');

let caminhoArquivo = path.join('./Aula14/prova.txt');

//fs.writeFileSync(caminhoArquivo, "Prova 20aaa1")

fs.appendFileSync(caminhoArquivo, "Testando o uso do appendddddddsssa")