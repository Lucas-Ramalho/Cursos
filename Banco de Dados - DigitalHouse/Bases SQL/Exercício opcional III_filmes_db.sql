-- Funções de agregação, GROUP BY e HAVING

-- 1: Quantos filmes estão registrados?

SELECT COUNT(id) FROM filmes;

-- Resposta: 21 filmes

-- 2: Quantos filmes têm entre 3 e 7 prêmios?

SELECT COUNT(id) FROM filmes
WHERE premios BETWEEN 3 AND 7;

-- Resposta: 8 filmes

-- Quantos filmes têm entre 3 e 7 prêmios e classificação superior a 7?


SELECT COUNT(id) FROM filmes
WHERE premios BETWEEN 3 AND 7 AND avaliacao > 7;

-- Resposta: 8 filmes

-- Crie uma lista da tabela de filmes, mostre um relatório da quantidade de filmes por id. do gênero.

SELECT genero_id, COUNT(id) FROM filmes
GROUP BY(genero_id);

-- Na consulta anterior, liste apenas os gêneros que têm como soma de prêmios um número maior que 5.

SELECT genero_id, COUNT(id), SUM(premios) FROM filmes
GROUP BY(genero_id)
HAVING SUM(premios) > 5
ORDER BY SUM(premios) DESC


