function getAdmins(map){
    let admins = [];
    for([key, value] of map){
        if(value === 'Admin'){
            admins.push(key);
        }
    }
    return admins;
}

const usuarios = new Map();

usuarios.set('Lucas', 'Admin');
usuarios.set('Joao', 'Admin');
usuarios.set('Ana', 'Admin');
usuarios.set('Marcos', 'User');
usuarios.set('Raquel', 'User');

console.log(getAdmins(usuarios))