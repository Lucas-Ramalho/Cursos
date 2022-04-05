CREATE DATABASE IF NOT EXISTS Spotify
DEFAULT CHARSET = 'utf8mb4'
DEFAULT COLLATE = 'utf8mb4_general_ci';
USE Spotify;

CREATE TABLE IF NOT EXISTS Usuario
(
	nUsuarioID INT UNSIGNED AUTO_INCREMENT,
    strNomeusuario 	VARCHAR(45) NULL,
    dtNascimento DATE NULL,
    strSexo CHAR(1),
    strEmail VARCHAR(150) NULL,
    strSenha VARCHAR(45),
    CONSTRAINT PK_Usuario_nUsuarioID PRIMARY KEY (nUsuarioID)

);

INSERT INTO Usuario
VALUES  (DEFAULT, 'Lucas', '1994-10-19', 'M', 'lucasramalho@mail', 'senha'),
		(DEFAULT, 'Joao', '1994-10-20', 'M', 'lucasramalho@gmail', 'senha2'),
        (DEFAULT, 'Jose', '1994-10-21', 'F', 'lucasramalho@ymail', 'senha3');

CREATE TABLE IF NOT EXISTS Artista
(
	nArtistaID INT UNSIGNED AUTO_INCREMENT,
    strNome VARCHAR(45) NULL,
    CONSTRAINT PK_Artista_nArtistaID PRIMARY KEY (nArtistaID)
);

INSERT INTO Artista
VALUES  (DEFAULT, 'Tom', 'Holland'),
		(DEFAULT, 'Mai', 'lland'),
		(DEFAULT, 'Tome', 'Hand');
        
CREATE TABLE Genero
(
	nGeneroID INT UNSIGNED AUTO_INCREMENT,
    strGenero VARCHAR(45),
    PRIMARY KEY (nGeneroID)
);


