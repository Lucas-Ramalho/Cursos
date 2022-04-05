
CREATE TABLE categoria (
	categoria_id INT,
    nome VARCHAR(50),
    imagem VARCHAR(500),
    PRIMARY KEY (categoria_id)
);

CREATE TABLE produtos (
	produtos_id INT,
    categoria INT,
    nome VARCHAR(50),
    descricao VARCHAR(150),
    imagem VARCHAR(500),
    valor DECIMAL(6,2),
    PRIMARY KEY (produtos_id),
    FOREIGN KEY (categoria) REFERENCES categoria(categoria_id)
);

CREATE TABLE pedidos(
	pedidos_id INT,
    cliente INT,
    produto INT,
    quantidade SMALLINT,
    preco_total DECIMAL(6,2),
    PRIMARY KEY (pedidos_id),
    FOREIGN KEY (cliente) REFERENCES usuario(usuario_id),
    FOREIGN KEY (produto) REFERENCES produtos(produtos_id)
);

CREATE TABLE conta(
	conta_id INT,
    data_conta DATE,
    horario TIME,
    pedidos INT,
    VALOR DECIMAL(6,2),
    PRIMARY KEY (conta_id),
    FOREIGN KEY (pedidos) REFERENCES pedidos(pedidos_id)
);


CREATE TABLE usuario(
	usuario_id INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(75),
    cpf CHAR(11),
    nr_celular VARCHAR(25),
    email VARCHAR(100),
    PRIMARY KEY (usuario_id)
);
