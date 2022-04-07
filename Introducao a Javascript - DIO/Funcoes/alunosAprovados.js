const alunos = [
    {
        nome: "Lucas",
        nota: 10,
        turma:"A"
    },
    {
        nome: "Joao",
        nota: 4,
        turma:"A"
    },
    {
        nome: "Pedro",
        nota: 6,
        turma:"A"
    }
];


// function alunosAprovados(arr, media){
//     let aprovados = []
;
//     for(let i =0; i < arr.length; i++) {

//         if(arr[i].nota >= media){
//             aprovados.push(arr[i].nome);
//         }
//     }
//     return aprovados;
// }


function alunosAprovados(arr, media){
    let aprovados = [];

    for(let i =0; i < arr.length; i++) {

        const {nota, nome} = arr[i];

        if(nota >= media){
            aprovados.push(nome);
        }
    }
    return aprovados;
}

console.log(alunosAprovados(alunos, 5));