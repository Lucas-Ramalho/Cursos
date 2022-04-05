let pais = {
    nome: "Brasil",
    capital: "Brasilia",
    dizerNacionalidade: function(){
        return "Nasci em " + this.nome;
    },
};

console.log(pais);
console.log(pais.nome);
console.log(pais.capital);
console.log(pais["capital"]);

console.log(pais.dizerNacionalidade())



// Funcao cpmstrutora

let carro = {
    marca: "Fiat",
    modelo: "Uno",
};

function Carro(aMarca, oModelo) {
    this.marca = aMarca;
    this.modelo = oModelo;
}

//console.log(carro);

console.log(new Carro("Fiat", "Clio"));

console.log(carro)


