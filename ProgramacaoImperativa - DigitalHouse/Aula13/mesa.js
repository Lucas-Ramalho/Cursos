

// 2 - 
 // Uma vez decidido qual será o tipo de dados para representar as contas das
// contas, crie uma conta de teste e verifique se as propriedades mencionadas
// acima são criadas corretamente.

let correntista = {
    nrConta: "12345",
    tpConta: "Conta Corrente",
    saldoConta: "100.10",
    titular: "Juca Ramos"
}
//console.log(correntista)

// 3 - 
// Agora que sabemos como representar usuários e suas contas, o cliente nos
// forneceu uma lista de contas que devemos ser capazes de criar. Para isso,
// devemos gerar uma função construtora que facilite a criação das contas
// bancárias correspondentes mais rapidamente.


function ContrDados(numero, tipo, saldo, titular){
    this.nrConta = numero;
    this.tipo = tipo;
    this.saldo = saldo;
    this.titular = titular;
}


// 4 - 
// A partir dos 10 usuários, gereuma lista onde todos eles convergem (lista de
// objetos)


let lista = []
lista.push(new ContrDados("5486273622","Conta Corrente", 27771, "Abigael Natte"))
lista.push(new ContrDados("1183971869","Conta Poupanca", 8675, "Ramon Connelui"))
lista.push(new ContrDados("9582019689","Conta Poupanca", 27363, "Jarret Lafuente"))
lista.push(new ContrDados("1761924656","Conta Poupanca", 32415, "Ansel 4444"))
lista.push(new ContrDados("7401971607","Conta Poupanca", 18789, "Jacki Shurmer"))
lista.push(new ContrDados("630841470","Conta Corrente", 28776, "Jobi Matus"))
lista.push(new ContrDados("4223508636","Conta Corrente", 217, "Tomasin Latour"))
lista.push(new ContrDados("185979521","Conta Poupanca", 25994, "Lonnie Verheijen"))
lista.push(new ContrDados("3151956165","Conta Corrente", 7601, "Alonso Wannan"))
lista.push(new ContrDados("2138105881","Conta Poupanca", 33196, "Bendite Hugget"))

//console.log(lista)

// 5 - 
// Também nos pedem a criação de um objeto literal chamado banco que terá
// uma propriedade chamada clientes, ele será composto pela lista de objetos
// gerados no ponto anterior.


let banco1 = {
    clientes: lista,
}

//console.log(banco1.clientes[0].titular)


// 6 -
// o objeto do banco criará um método chamado consultarCliente que receberá um
// nome (titular) por parâmetro e deve pesquisar na lista de contas e retornar ao
// objeto do cliente que corresponde a esse nome inserido.

let banco2 = {
    clientes: lista,
    consultarCliente2: function(nome){
        let i = 0
        while (i<this.clientes.length){
            if (nome == this.clientes[i].titular) {
                console.log(this.clientes[i])
            }
            i++
  
        }
    } 
}

// banco2.consultarCliente2("Alonso Wannan")


// 7 - 
// Crie outro método chamado depósito que receberá como parâmetros, o titular
// da conta e uma quantidade de dinheiro para depositar. O método deve chegar
// à conta correspondente e, em seguida, adicionar a quantidade de dinheiro para
// depositar o saldo da conta, então você deve dar um aviso pelo console com a
// mensagem "Depósito realizado, seu novo saldo é: xxX"; .



let banco3 = {
    clientes: lista,
    deposito: function(titular, valor){
        let i = 0
        while (i<this.clientes.length){
            if (titular == this.clientes[i].titular){
                console.log('=====SALDO ANTERIOR ======')
                console.log(this.clientes[i])
                this.clientes[i].saldo += valor
                console.log('=====Depósito realizado, seu novo saldo é: ' + this.clientes[i].saldo + ' =======' )
                console.log(this.clientes[i])
            }
            i++
        }
    }
}

//banco3.deposito("Alonso Wannan", 80000 )


// 8-
// Crie um último método chamado saque que também receberá dois
// parâmetros, o titular da conta e o valor a ser extraído. O método deve obter a
// conta correspondente e subtrair o valor do saldo atual. Caso o resultado seja
// inferior a 0, você deve imprimir uma mensagem através do console de "Fundos
// insuficientes ";,caso contrário você deve imprimir ";Extração feita com sucesso, seu
// novo saldo é: xxx";

let banco4 = {
    clientes: lista,
    saque: function(titular, valor){
        let i = 0
        while (i<this.clientes.length){
            if (titular == this.clientes[i].titular){
                console.log('=====SALDO ANTERIOR ======')
                console.log(this.clientes[i])
                let novoSaldo = this.clientes[i].saldo -= valor
                if (novoSaldo < 0){
                    console.log('Fundos Insuficientes')
                }
                else {
                    console.log('=====Extração feita com sucesso, seu novo saldo é: ' + novoSaldo + ' =======' )
                    console.log(this.clientes[i])
                }
                
                
            }
            i++
        }
    }
}

//banco4.saque("Alonso Wannan", 5000 )


//Bônus Extra

let array = [{nome: "Lean", idade: 27}, {nome: "Eze", idade: 49}]


novoArray = []


console.log(novoArray)
console.log(array)