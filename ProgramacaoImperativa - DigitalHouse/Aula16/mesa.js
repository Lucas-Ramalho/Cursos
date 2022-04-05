

let printar = (x) => console.log(x)



let fizzBuzz = (n1, n2, texto1, texto2) => {
    for (i=1; i<=100; i++) {
        if (i % n1 == 0 &&  i % n2 == 0) {
            printar(texto1 + " " + texto2)
        }
        else if (i % n1 == 0){
            printar(texto1)
        }
        else if (i % n2 == 0) {
            printar(texto2)
        }
        else 
            printar(i)
    }
}

fizzBuzz(2, 3, "Lucas", "Ramalho")


