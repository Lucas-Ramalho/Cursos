let listaNumeros = [1, 2, 3, 4, 5, 6];

// map

let listaNumeroTriplo = listaNumeros.map(function(valor, index){
    return valor * 3;
});

console.log(listaNumeroTriplo);



// filter

let numeroPar = listaNumeros.filter(function(valor, index){
    return valor % 2 === 0
})

console.log(numeroPar);


// reduce

let listaNumerossomados = listaNumeros.reduce(function(resultado, valor){
    return resultado + valor;
});

console.log(listaNumerossomados);


// forEach

listaNumeros.forEach(function(valor, index){
    console.log("O valor é: " + valor + " e a sua posição é: " + index);
});
    
