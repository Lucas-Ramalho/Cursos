// STRINGS

const DIO = 'Digital Inovation One';
let firstName = 'Lucas';
let lastName = "Ramalho";
let fullName = `Nome completo: ${firstName} ${lastName}`;

console.log(firstName[1]);
console.log(firstName.length);
console.log(firstName.split(""));
console.log(firstName.includes("Lu"));
console.log(firstName.endsWith("s"))


// NUMBERS

let num = 100

console.log(num + 3)
console.log(num * 3)
console.log(num / 3)
console.log(num % 3)
console.log(Math.PI)


// BOLEANS
let validation = 3 === 5;
console.log(validation)
console.log(1>3)


// ARRAYS

let meuArray = ["Lucas", "Ramalho"];

meuArray.push("DoNascimento")
console.log(meuArray)


// OBJETOS

// Estrutura do tipo chave e valor

let obj = {
    nome:'Lucas',
    sobremome:'Ramalho'
}

console.log(obj)
console.log(obj.nome)