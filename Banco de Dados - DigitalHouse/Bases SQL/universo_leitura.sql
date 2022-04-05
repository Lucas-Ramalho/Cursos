CREATE DATABASE UniversoLeitura;
USE UniversoLeitura;

CREATE TABLE associados(
	cod_id INT,
	rg CHAR(7),
	nome VARCHAR(50),
	sobrenome VARCHAR(50),
	endereco VARCHAR(150),
	cidade VARCHAR(50),
	estado VARCHAR(2),
    PRIMARY KEY (cod_id)
);

CREATE TABLE telefones(
	telefone_id INT NOT NULL,
	telefone_socio VARCHAR(100),
	codAssoci INT,
    PRIMARY KEY (telefone_id),
    FOREIGN KEY (codAssoci) REFERENCES associados(cod_id)
);

CREATE TABLE livros(
	cod_id 	INT NOT NULL,
    cod_ISBN VARCHAR(13),
    titulo VARCHAR(200),
    ano_criacao DATE,
    cod_autor INT,
    ano_publicacao DATE,
    cod_editora INT,
    PRIMARY KEY (cod_id),
    FOREIGN KEY (cod_autor) REFERENCES autores(codigo_id),
    FOREIGN KEY (cod_editora) REFERENCES editoras(codigo_id)
    );
    
CREATE TABLE autores(
	codigo_id INT NOT NULL,
	sobrenome VARCHAR(100),
	nome VARCHAR (100),
    PRIMARY KEY (codigo_id)
);

CREATE TABLE editoras(
	codigo_id INT,
	razao_social VARCHAR (150),
	telefone VARCHAR(100),
    PRIMARY KEY (codigo_id)
);

CREATE TABLE emprestimos (
	codigo_id INT NOT NULL,
	codAssoc INT,
	data_emprestimo DATE,
	prazo_devolucao DATE,
	data_devolucao DATE,
    PRIMARY KEY (codigo_id),
    FOREIGN KEY (codAssoc) REFERENCES associados(cod_id)
);


CREATE TABLE emprestimo_exemplares(
	codigo INT NOT NULL,
    cod_emprestimo INT,
    cod_exemplar INT,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cod_emprestimo) REFERENCES emprestimos(codigo_id),
    FOREIGN KEY (cod_exemplar) REFERENCES exemplares(codigo_exemplar)
);



CREATE TABLE exemplares(
	codigo_exemplar INT NOT NULL,
    cod_livro int,
    sinistro BOOL,
    PRIMARY KEY (codigo_exemplar),
    FOREIGN KEY (cod_livro) REFERENCES livros(cod_id)
);
ALTER TABLE emprestimo_exemplares