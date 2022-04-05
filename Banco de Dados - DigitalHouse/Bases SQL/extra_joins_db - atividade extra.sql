USE extra_joins;

-- ---------------------------------------------------------------------------

/* 
1 - Obtenha os artistas que atuaram em um ou mais filmes.
*/

SELECT * FROM artista;
SELECT * FROM artista_filmes;
SELECT * FROM filmes;

SELECT CONCAT(a.nome, ' ', a.sobrenome) AS 'Artistas',
COUNT(f.id) AS Quantidade_Filmes
FROM artista AS a
INNER JOIN artista_filmes AS af
ON a.id = af.artista_id
INNER JOIN filmes AS f
ON af.filme_id = f.id
GROUP BY a.id
ORDER BY Quantidade_Filmes DESC;

/* 2 - Obtenha os filmes onde mais de um artista participou de acordo com nosso banco de dados.*/

SELECT f.titulo,
COUNT(a.id) AS Quantidade_Artista
FROM filmes AS f
INNER JOIN artista_filmes AS af
ON f.id = af.filme_id
INNER JOIN artista AS a
ON af.artista_id = a.id
GROUP BY f.titulo
HAVING Quantidade_Artista > 1;

-- 3 - Pegue aqueles artistas que já atuaram em um filme, mesmo aqueles que ainda não o fizeram, de acordo com nosso banco de dados.

SELECT CONCAT(a.nome, ' ', a.sobrenome) AS 'Artistas',
IFNULL(COUNT(f.id),0) AS Quantidade_Filmes
FROM artista AS a
LEFT JOIN artista_filmes AS af
ON a.id = af.artista_id
LEFT JOIN filmes AS f
ON af.filme_id = f.id
GROUP BY a.id
ORDER BY Quantidade_Filmes ASC;

-- 4 - Obtenha filmes que não foram atribuídos a artistas em nosso banco de dados.

SELECT f.titulo,
IFNULL(COUNT(a.id),0) AS Quantidade_Artista
FROM filmes AS f
LEFT JOIN artista_filmes AS af
ON f.id = af.filme_id
LEFT JOIN artista AS a
ON af.artista_id = a.id
GROUP BY f.titulo
HAVING Quantidade_Artista = 0;


-- 5 - Pegue aqueles artistas que não atuaram em um filme, de acordo com nosso banco de dados.

SELECT DISTINCT CONCAT(a.nome, ' ', a.sobrenome) AS 'Artistas',
IFNULL(COUNT(f.id),0) AS Quantidade_Filmes
FROM artista AS a
LEFT JOIN artista_filmes AS af
ON a.id = af.artista_id
LEFT JOIN filmes AS f
ON af.filme_id = f.id
GROUP BY a.id
HAVING Quantidade_Filmes = 0;

-- 6 - Obtenha os artistas que atuaram em dois ou mais filmes de acordo com nosso banco de dados.

SELECT DISTINCT CONCAT(a.nome, ' ', a.sobrenome) AS 'Artistas',
IFNULL(COUNT(f.id),0) AS Quantidade_Filmes
FROM artista AS a
LEFT JOIN artista_filmes AS af
ON a.id = af.artista_id
LEFT JOIN filmes AS f
ON af.filme_id = f.id
GROUP BY a.id
HAVING Quantidade_Filmes >= 2;

-- 7 Obtenha os filmes que têm um ou mais artistas atribuídos, mesmo aqueles que ainda não foram atribuídos a um artista em nosso banco de dados.

SELECT f.titulo,
IFNULL(COUNT(a.id),0) AS Quantidade_Artista
FROM filmes AS f
LEFT JOIN artista_filmes AS af
ON f.id = af.filme_id
LEFT JOIN artista AS a
ON af.artista_id = a.id
GROUP BY f.titulo
HAVING Quantidade_Artista >= 0
ORDER BY Quantidade_Artista DESC