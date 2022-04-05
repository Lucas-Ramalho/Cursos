

// let numeros = [10, 8, 7, 99, 0, 1, 6]



// console.log(numeros.sort())


// var z=0
// for (var i=20; i<50; i+=10){
//     z+=i;
// }

// console.log(z)


// let x=5;
// let y= x++ + ++x;
// console.log("y= "+y);

// x=3;
// y=x*(x+1)*x++;
// x=5;
// y=3;
// y*=x+1

// console.log('x= '+x);
// console.log('y= ' +y)


// for (var i=0; i<50; i+=10){
//     console.log(i)
// }

// console.log(i)

var frutas = new Array("banana", "laranja", "limao");
frutas.shift();
frutas.splice(1,1,"uva");
for (var i=0; i < frutas.length; i++){
    console.log(frutas[i] + " | ")
}