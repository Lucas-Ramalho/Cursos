
let arrFilmesAnimacao = ["Toy Story", "Procurando Nemo", "Kung-fu Panda", "Wally", "Fortnite"]

let arrFilmes = ["star wars", "matrix",  "mr. robot", "o preço do amanhã",  "a vida é bela"]



function recebeDoisArray(array1, array2) {
    
    for (index = 0; index < array2.length; index++) {
      array1.push(array2[index]);
    }
    return array1;
  }

  //console.log (recebeDoisArray(arrFilmesAnimacao,arrFilmes));



 let teste =  [
    'Igual',     'Igual',
    'Igual',     'Diferente',
    'Igual',     'Igual',
    'Diferente', 'Diferente',
    'Diferente'
  ]

 // console.log(teste.length)