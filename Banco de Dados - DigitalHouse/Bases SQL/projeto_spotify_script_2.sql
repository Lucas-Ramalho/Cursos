USE projeto_spotify;

-- 1 ok

-- 2 

SELECT * FROM cancao
WHERE titulo LIKE '%z%';

-- 3

 SELECT * FROM cancao
 WHERE titulo LIKE '_a%s';
 
 -- 4
 SELECT idPlaylist AS 'Id Playlist', idusuario AS 'Id Usuário', titulo AS 'Título', qtdcancoes AS 'Quantidade Canções', idestado AS 'Id Estado', Datacriacao AS 'Data Criação', Dataexclusao AS 'Data Exclusão' 
 FROM playlist
 ORDER BY qtdcancoes DESC
 LIMIT 1;
 
 -- 5
 
 SELECT * FROM usuario
 ORDER BY Data_nac DESC
 LIMIT 5 OFFSET 10;
 
 -- 6
 SELECT * FROM cancao
 ORDER BY qtdreproducao DESC
 LIMIT 5;
 
 -- 7 
 
 SELECT * FROM album
 ORDER BY titulo ASC;
 
 -- 8 
 
 SELECT * FROM album
 WHERE imagemcapa IS NULL
 ORDER BY titulo ASC;
 
 -- -------------------------------------------
 
 -- 9
 
 SELECT * FROM pais	;
 SELECT * FROM tipousuario;
 SELECT * FROM usuario;
 
 -- -----
 
 INSERT INTO usuario (idUsuario, Nomeusuario, NomeCompleto, senha, Data_nac, sexo, Cod, Pais_idPais)
 VALUES (20, 'novousuariodespotify@gmail.com', 'Elmer Santos ', 'S4321m', '1991-11-15','M', 'B4129ATF',9);
 
 
 -- 10
 SELECT * FROM genero;
 SELECT * FROM generoxcancao
 WHERE IdGenero = 9;
 
 SELECT * FROM cancao;
 
 DELETE Idcancao FROM generoxcancao
 WHERE IdGenero = 9;
 
 -- Genero POP = id 9
 
 -- Nao consegui
 
 -- 11
 
 SELECT * FROM artista;
 
 UPDATE artista
 SET imagem = 'Imagem em Falta'
 WHERE imagem = 'null';
 
 -- nao consegui
 
 
 
 
 
 
 
 
 