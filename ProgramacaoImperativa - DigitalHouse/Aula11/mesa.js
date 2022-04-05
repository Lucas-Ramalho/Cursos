let filmes = ["star wars", "totoro", "rocky", "pulp fiction", "chaves"]
let arrFilmesAnimacao = ["Toy Story", "Procurando Nemo", "Kung-fu Panda", "Wally", "Fortnite"]



function convertMai(array) {
    array[0] = array[0].toUpperCase()
    array[1] = array[1].toUpperCase()
    array[2] = array[2].toUpperCase()
    array[3] = array[3].toUpperCase()
    return array
}

//console.log(filmes)
//console.log(convertMai(filmes))



function convertMaius(array1, array2){
    let arrayNovo = []
    let nEhFilme = ""
    for (let i = 0; i < array2.length; i++) { 
            arrayNovo.push(array1[i].toUpperCase())
            arrayNovo.push(array2[i].toUpperCase())
            nEhFilme = arrayNovo.pop()
    }
    return arrayNovo
}

//console.log(convertMaius(filmes, arrFilmesAnimacao))



const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];


function comparaClassificacao(a, b){
    let arrayComparador = []
    for (let i = 0; i < a.length; i++){
        arrayComparador.push(a[i] === b[i])
    }
    for (let i=0; i < arrayComparador.length; i++){
        if (arrayComparador[i] == true){
            arrayComparador[i] = "Igual"
        } else {
            arrayComparador[i] = "Diferente"
        }
    }
    
    return arrayComparador
} 

//console.log(comparaClassificacao(asiaScores, euroScores))





// Bonus Extra

// 1 - Qual seria a maneira ideal de representar cada participante com suas pontuações

let participanteA = [5, 8, 4, 9, 5];
let participanteB = [8, 7, 8, 6, 8];
let participanteC = [7, 5, 10, 8, 3];


function pontuacaoMedia(participante){
    let media = 0
    for (let i = 0; i < participante.length; i++) {
        media += participante[i]    
    }
    
    return media / participante.length
}   

//console.log(pontuacaoMedia(participanteA))

function pontuacaoMaior(participante){
    let pontuacao = 0
    for (let i = 0; i < participante.length; i++){
        if (participante[i] > pontuacao) {
            pontuacao = participante[i]
        }
    }
    return pontuacao
}  



//console.log(pontuacaoMaior(participanteC))

function competicao(participante1, participante2, participante3) {
    for (let i = 0; i < 3; i++){
        let media = 0
        let maior = 0
        if (pontuacaoMedia(i) > media) {
            media = i
        }
        if (pontuacaoMaior(i) > maior) {
            maior = i
        }
    } 
    return console.log("na modalidade de maior média o vencedor foi o: " + i + ". Na modalidade de maior nota o vencedor foi o: " + i)
}

//competicao(participanteA, participanteB, participanteC)

function competicao(participante1, participante2, participante3) {
    
    if (pontuacaoMedia(participante1) > pontuacaoMedia(participante2) || pontuacaoMedia(participante3)) {
        console.log("Participante 1 tem maior média")
    } else if (pontuacaoMedia(participante2) > pontuacaoMedia(participante1) || pontuacaoMedia(participante3)) {
        console.log("Participante 2 tem maior média")
    } else {
        console.log("Participante 3 tem maior média")
    }


    if (pontuacaoMaior(participante1) > pontuacaoMaior(participante2) || pontuacaoMedia(participante3)) {
        console.log(participante1)
    } else if (pontuacaoMaior(participante2) > pontuacaoMaior(participante1) || pontuacaoMedia(participante3)) {
        console.log(participante2)
    } else {
        console.log(participante3)
    }
    
}

// competicao(participanteA, participanteB, participanteC)