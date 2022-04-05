USE emarket;

/* 
Consultas

1. Liste os clientes que fizeram compras durante 1996.
A lista deve conter as seguintes colunas:
Nome e sobrenome. 
O título é todo maiúsculo.
*/

SELECT clientes.Contato AS 'Nome e Sobrenome', UPPER(clientes.Titulo) AS 'TÍTULO', DATE_FORMAT(faturas.DataFatura, '%d/%m/%Y') AS 'Data da Fatura'FROM clientes
INNER JOIN faturas
ON clientes.ClienteID = faturas.ClienteID
WHERE YEAR(faturas.DataFatura) = 1996;


/* 

2. Liste as faturas para as quais a remessa foi para uma cidade diferente da cidade do cliente. Considere apenas os clientes do Reino Unido.
A listagem deve incluir:
O número da fatura completando com zeros principais 8 itens. Por exemplo, 00001234
A data da fatura no formato YYYY-MM-DD. Por exemplo, 1996-12-01
Para a cidade do cliente

*/

SELECT clientes.Contato, clientes.Cidade AS 'Cidade do Cliente', 
CONCAT('000', faturas.FaturaId) AS 'Fatura', faturas.CidadeEnvio, 
DATE_FORMAT(faturas.DataFatura, '%Y-%m-%d') AS 'Data da Fatura' 
FROM clientes
INNER JOIN faturas
ON clientes.ClienteID = faturas.ClienteID
WHERE clientes.Cidade = 'London'
AND faturas.CidadeEnvio <> 'London';

