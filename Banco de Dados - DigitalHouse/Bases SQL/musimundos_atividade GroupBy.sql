USE musimundos;

-- 1 A quantidade de clientes do Brasil é:

SELECT COUNT(pais) FROM clientes
WHERE pais = 'Brazil';

-- 2 : Faça uma consulta ao banco de dados que mostre a identificação do 
-- gênero e o número de músicas que possui. O número que você obteve como resultado do 
-- número de músicas do gênero com id = 6 foi:

SELECT COUNT(id) FROM cancoes
WHERE id_genero = 6;

-- 3 :  Faça uma consulta ao nosso banco de dados que some o total de todas as notas fiscais emitidas pela empresa. O resultado encontrado foi:

SELECT SUM(valor_total) FROM faturas;


-- 4 : Obtenha uma lista de todos os álbuns e sua duração média (milissegundos). O número da média obtida para o álbum 4 foi:

SELECT AVG(duracao_milisegundos) FROM cancoes
WHERE id_album = 4;


-- 5 : Faça uma consulta ao banco de dados e informe qual é o arquivo de música com o menor peso em bytes.

SELECT MIN(bytes) FROM cancoes;

-- 6 Faça uma consulta ao banco de dados que nos traga por cliente_id a soma total de suas faturas. Filtre aqueles em que a soma do total é > 45. 
-- Qual é a soma total do cliente com id = 6?


SELECT id_cliente, SUM(valor_total) FROM faturas
WHERE id_cliente = 6
GROUP BY id_cliente;



