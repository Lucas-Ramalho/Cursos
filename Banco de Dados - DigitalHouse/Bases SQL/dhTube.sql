CREATE DATABASE IF NOT EXISTS dhtube
DEFAULT CHARSET = 'latin1'
DEFAULT COLLATE = 'latin1_general_ci'
;

USE dhtube;


-- -------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `playlist`(
	`idPlaylist` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45),
    `dataCriacao` DATETIME,
    `privado` SMALLINT,
    `Usuario_idUsuario` INT,
    CONSTRAINT `pk_idPlaylist_playlist` PRIMARY KEY(`idPlaylist`),
    CONSTRAINT `fk_idUsuario`FOREIGN KEY(`Usuario_idUsuario`) REFERENCES `usuario`(`idUsuario`)
);
    
CREATE TABLE IF NOT EXISTS `usuario`(
	`idUsuario` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45),
    `email` VARCHAR(45),
    `senha` VARCHAR(45),
    `dataNascimento` DATETIME,
    `cep` VARCHAR(45),
    `pais_idPais` INT,
    `avatar_idAvatar` INT,
    CONSTRAINT `pk_idUsuario_usuario` PRIMARY KEY(`idUsuario`),
    CONSTRAINT `fk_pais_idPais` FOREIGN KEY(`pais_idPais`) REFERENCES `pais`(`idPais`),
    CONSTRAINT `fk_avatar_idAvatar` FOREIGN KEY(`avatar_idAvatar`) REFERENCES `avatar`(`idAvatar`)
);

CREATE TABLE IF NOT EXISTS `playlist_video`(
	`video_idvideo` INT,
    `Playlist_idPlaylist` INT,
    CONSTRAINT `video_idvideo` FOREIGN KEY(`video_idvideo`) REFERENCES `video`(`idvideo`),
	CONSTRAINT `Playlist_idPlaylist` FOREIGN KEY(`Playlist_idPlaylist`) REFERENCES `playlist`(`idPlaylist`)
);

CREATE TABLE IF NOT EXISTS `pais`(
	`idPais` INT NOT NULL,
    `nome` VARCHAR(100),
    CONSTRAINT `idPais` PRIMARY KEY(`idPais`)
);


CREATE TABLE IF NOT EXISTS `avatar`(
	`idAvatar` INT,
    `nome` VARCHAR(45),
    `urlimagem` VARCHAR(100),
     CONSTRAINT `idAvatar` PRIMARY KEY(`idAvatar`)
);

CREATE TABLE IF NOT EXISTS `canal`(
	`IdCanal` INT,
    `nome` VARCHAR(45),
    `descricao` TEXT,
    `dataCriacao` DATETIME,
    `usuario_idUsuario` INT,
    CONSTRAINT `IdCanal` PRIMARY KEY(`IdCanal`),
    CONSTRAINT `usuario_idUsuario` FOREIGN KEY(`usuario_idUsuario`) REFERENCES `usuario`(`idUsuario`)
);

CREATE TABLE IF NOT EXISTS `video`(
	`idVideo` INT,
    `Usuario_idUsuario` INT,
    `titulo` VARCHAR(100),
    `descricao` TEXT,
    `tamanho` DOUBLE,
    `nomeArquivo`  VARCHAR(100),
    `duracao` DOUBLE,
    `imagem` VARCHAR(100),
    `qtdReproducoes` INT,
    `qtdLikes` INT,
    `qtdDislikes` INT,
    `privado` SMALLINT,
    `dataPublicacao` DATETIME,
     CONSTRAINT `idVideo` PRIMARY KEY(`idVideo`),
     CONSTRAINT `canal_idUsuario` FOREIGN KEY(`usuario_idUsuario`) REFERENCES `usuario`(`idUsuario`)
);

