USE musimundos;

/*  
Usando a base musmundos_V2, execute as seguintes consultas
*/

-- 1 - Selecione o nome dos artistas (tabelas artistas) com nome de seus albuns (tabela albuns) ordenado por id do artista

SELECT artistas.nome, albuns.titulo FROM artistas
INNER JOIN albuns
ON artistas.id = albuns.id_artista
ORDER BY artistas.id;

-- 2 - Selecione o nome do cliente (clientes) e suas faturas (faturas), porem somente as faturas com valor maior de 5 ordenados pelo valor da fatura decrescente

SELECT CONCAT(clientes.nome, ' ', clientes.sobrenome) AS 'Nome do Cliente', faturas.id, faturas.valor_total, DATE_FORMAT(faturas.data_fatura,'%d/ %m/ %Y') AS 'Data da Fatura'  FROM clientes
INNER JOIN faturas
ON clientes.id = faturas.id_cliente
WHERE faturas.valor_total > 5
ORDER BY faturas.valor_total DESC;


-- 3 Selecione o nome das cancoes (tabela cancoes) e o tipo de arquivo (tabela tipos_de_arquivos) e exiba o nome da cancao e o tipo ordenado pelo id da cancao


SELECT cancoes.id, cancoes.nome AS 'Nome da Canção', tipos_de_arquivo.nome AS 'Tipo de Arquivo' FROM cancoes
INNER JOIN tipos_de_arquivo
ON cancoes.id_tipo_de_arquivo = tipos_de_arquivo.id
ORDER BY cancoes.id;
