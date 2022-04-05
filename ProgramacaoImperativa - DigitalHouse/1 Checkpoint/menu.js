
let menu = ['Pipoca', 'Macarrão', 'Carne', 'Feijão', 'Brigadeiro']
let padrao = 0



// Funcao para determinar o tempo padrao:

function tempoPadrao(prato){
    switch (prato){
        case 'Pipoca':
            padrao = 10;
            break;
        case 'Macarrão':
            padrao = 8;
            break;
        case 'Carne':
            padrao = 15;
            break;
        case 'Feijão':
            padrao = 12;
            break;
        case 'Brigadeiro':
            padrao = 8;
            break    
    }
}

// Funcao do microondas

function microondas(prato, tempo){ 
    if (menu.includes(prato)) {
        tempoPadrao(prato)
        if(tempo < padrao){
            console.log('tempo Insuficiente')
        } else if(tempo > padrao * 3){
            console.log('kabum!')
        } else if (tempo > padrao * 2){
            console.log('Sua comida queimou!')
        } else {
            console.log('Prato pronto, bom apetite')
        }
    } else {
        console.log('Prato inexistente')
    }
}


// Informar o Prato e o Tempo
microondas('Brigadeio', 17)