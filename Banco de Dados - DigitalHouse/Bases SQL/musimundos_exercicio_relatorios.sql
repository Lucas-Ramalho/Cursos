USE musimundos;

/*

Exercício
Na base musimundos faça as seguintes operações:

Na Tabela Faturas:
*/

-- 1 - O valor da fatura mais alta cujo a cidade de cobranca é "Oslo". (MAX)

SELECT * FROM faturas
WHERE cidade_cobranca = 'Oslo'
ORDER BY valor_total DESC
LIMIT 1;

-- ou

SELECT MAX(valor_total) AS 'Maior valor total', cidade_cobranca FROM faturas
WHERE cidade_cobranca = 'Oslo';


-- 2 O valor da fatura mais baixa de todas. (MIN)

SELECT * FROM faturas
ORDER BY valor_total ASC
LIMIT 1;

-- ou

SELECT MIN(valor_total) FROM faturas;

-- 3 O valor médio das faturas que o país de cobranca é "Canada".(AVG)

SELECT AVG(valor_total) AS 'Valor Total Médio', pais_cobranca FROM faturas
WHERE pais_cobranca = 'Canada';

-- 4 A quantidade de faturas em que o pais cobranca é 'Canada'.(COUNT)

SELECT COUNT(id) AS 'Quantidade de Faturas', pais_cobranca FROM faturas
WHERE pais_cobranca = 'Canada';

-- 5 O valor total somado de todas as faturas (SUM).

SELECT SUM(valor_total) AS 'Valor total faturas' FROM faturas;

-- 6 Selecione o id, a data e o valor das faturas abaixo da média. (Subqueries e AVG)

SELECT AVG(valor_total) FROM faturas;

SELECT id AS 'identificador', data_fatura AS 'Data da Fatura', valor_total AS 'Valor Total Faturas' FROM faturas
WHERE valor_total <= (SELECT AVG(valor_total) FROM faturas)
ORDER BY valor_total DESC;

/*
Na base musimundos faça as seguintes operações:

Na tabela empregados:
*/

-- 7 A data de nascimento do funcionario mais jovem da empresa. (MAX)

SELECT * FROM empregados
ORDER BY data_nascimento DESC
LIMIT 1
;

SELECT MAX(data_nascimento) AS 'Data funcionário mais novo' FROM empregados;

-- 8 A data de nascimento do funcionario mais velho da empresa. (MIN)

SELECT * FROM empregados
ORDER BY data_nascimento ASC
LIMIT 1;

SELECT MIN(data_nascimento) AS 'Data funcionário mais velho' FROM empregados;

-- 9 Formate a data de nascimento dos funcionarios no formato ex: '02 May 2020'. (DATE_FORMART)

SELECT DATE_FORMAT(data_nascimento,'%d %M %Y') AS 'Data Formatada', nome FROM empregados;

-- Na Tabela Cancoes

-- 10 O numero de cancoes que tem como compositor 'AC/DC'.(COUNT).

SELECT COUNT(id) AS 'Quantidade Cancoes AC/DC' FROM cancoes
WHERE compositor = 'AC/DC';

-- 11 a duracao média das musicas em miisegundos. (AVG)

SELECT AVG(duracao_milisegundos) AS 'Média Duração Cancões'FROM cancoes;

-- 12 O tamanho médio em bytes das musicas, cujo compositor é 'AC/DC'(AVG)

SELECT AVG(bytes) AS 'Tamanho médio cancoes AC/DC' FROM cancoes
WHERE compositor = 'AC/DC';

/* 
Na base de dados musimundos faça as seguintes operações:

Na tabela clientes:
*/

-- 13 - Quantidade de clientes que moram na cidade de 'São Paulo'. (COUNT)

SELECT COUNT(id) AS 'Clientes São Paulo'FROM clientes
WHERE cidade = 'São Paulo';

-- 14 Quantidade clientes que moram na cidade de 'Paris'.(COUNT)

SELECT COUNT(id) AS 'Clientes Paris'FROM clientes
WHERE cidade = 'Paris';

-- 15 Quantidade de clientes que tenham e-mail do yahoo. (COUNT E LIKE)

SELECT COUNT(id) AS 'Clientes com e-mail Yahoo' FROM clientes
WHERE email LIKE '%@yahoo%';



