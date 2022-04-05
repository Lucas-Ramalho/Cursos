USE filmes_db;


-- 1 Utilizando a base de dados filmes_db, queremos saber, por um lado, os títulos e nomes dos gêneros de todas as séries registradas.

SELECT series.titulo, generos.nome  FROM series
LEFT JOIN generos
ON series.genero_id = generos.id;

-- 2 Por outro lado, precisamos listar os títulos dos episódios juntamente com os nomes e sobrenomes dos atores que atuam em cada um deles.

SELECT episodios.id, episodios.titulo, CONCAT(atores.nome, ' ', atores.sobrenome) AS 'Ator Episodio', series.titulo FROM episodios
INNER JOIN ator_episodio
ON episodios.id = ator_episodio.episodio_id
INNER JOIN atores
ON ator_episodio.ator_id = atores.id
INNER JOIN temporadas
ON episodios.temporada_id = temporadas.id
INNER JOIN series
ON temporadas.serie_id = series.id
ORDER BY episodios.titulo;

-- 3 Para o nosso próximo desafio, precisamos obter todos os atores ou atrizes (nome e sobrenome) que trabalharam em qualquer filme de Harry Potter.

SELECT DISTINCT CONCAT(atores.nome, ' ', atores.sobrenome) AS 'Nome Ator' FROM atores
INNER JOIN ator_filme
ON atores.id = ator_filme.ator_id
INNER JOIN filmes
ON ator_filme.movie_id = filmes.id
WHERE filmes.titulo LIKE '%HARRY POTTER%';

-- 4 Faça uma consulta  que mostre a quantidade  de filmes por gênero.

SELECT generos.nome AS 'Genero', COUNT(filmes.id) AS 'Filmes por Genero'FROM filmes
INNER JOIN generos
ON filmes.genero_id = generos.id
GROUP BY generos.nome;