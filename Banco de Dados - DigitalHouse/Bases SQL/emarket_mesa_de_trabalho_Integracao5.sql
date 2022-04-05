USE emarket;

/*
1. Para cada empresa de correio, calcule o transporte total. Inclua todas as empresas de correio, mesmo que não tenham realizado nenhuma operação.
*/


SELECT correios.Empresa, ROUND(SUM(IFNULL(faturas.Transporte,0)),2) AS 'Transporte Total' FROM correios
LEFT JOIN faturas
ON correios.CorreioID = faturas.FormaEnvio
GROUP BY correios.Empresa;




/*
2. Liste as informações de contato (ou, endereço, etc.) dos clientes que não fizeram compras.
 Exiba as informações no formato considerado mais adequado. Por exemplo: <endereço> (CP: < CEP>) 
*/

SELECT clientes.Contato, clientes.Endereco, clientes.Cidade, clientes.Telefone, faturas.FaturaId FROM clientes
LEFT JOIN faturas
ON clientes.ClienteID = faturas.ClienteID
WHERE FaturaId IS NULL;



/*
3. Liste as categorias e seus produtos, incluindo as categorias para as quais não há produtos no banco de dados.
Para nomes de produtos, onde mix ou Chef diz, substituí-lo por MIX ou CHEF, respectivamente. Por exemplo: Em vez de Filo Mix, coloque Mix Edge.

*/

SELECT categorias.CategoriaID, categorias.CategoriaNome, categorias.Descricao,
-- Encadeamento do replace
REPLACE (
	REPLACE(produtos.ProdutoNome,'Mix','MIX'),'Chef','CHEF'
) AS 'Produto Nome'
FROM categorias
LEFT JOIN produtos
ON categorias.CategoriaID = produtos.CategoriaID;
