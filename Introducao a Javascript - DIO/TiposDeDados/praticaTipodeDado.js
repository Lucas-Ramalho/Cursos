// ATIVIDADES

//1
// PALINDROMO

// solucao 1:
// o metodo de string split ira separar as letras da palavra
// com elas separadas é formado um array, sendo possível assim, 
// utilizar o método reverse, e com elas invertidas, utilizamos o 
// metodo join para uni-las novamente.


function verificaPalindromo(string){
    if(!string) return "string inexistente";

    return string.split("").reverse().join("") === string;
}

console.log(verificaPalindromo("outro"));

// solucao 2
function verificaPalindromo2(string){
    if(!string) return "string inexistente";

    for(let i=0; i <string.length / 2; i++){
        if(string[i] !== string[string.length -1 - i]){
            return false;
        }
    }

    return true;
}

console.log(verificaPalindromo2("ovo"))



//2
//ATIVIDADE SUBSTITUI PARES

function substituPares(arr){
    for(let i=0; i<arr.length; i++){   
        if(arr[i] === 0){ 
            console.log("Você já é zero!!")
        } else if (arr[i] %2 === 0){
            console.log(`substituindo ${arr[i]} por PAZ`)
            arr[i] = "PAZ";
        }
    } 
    return arr;
}

let arr = [0, 2, 5, 6, 81, 100, 83, 105, 192, 191];

console.log(substituPares(arr))
