USE emarket;

-- -------------------------------

/* 

Faça uma consulta sobre o faturamento do e-market. Inclua as seguintes informações:
- ID da fatura OK
- data da fatura OK
- nome da empresa de correio (O id da empresa consta da tabela faturas no campo FormaEnvio) OK
- nome do cliente OK
- categoria do produto vendido OK
- nome do produto(Você chega ao produto consultando os detalhes da fatura) OK
- preço unitário OK
- quantidade OK

*/

SELECT * from CLIENTES;
SELECT * from FATURAS;

SELECT f.FaturaId, DATE_FORMAT(f.DataFatura, '%d/%m/%Y') AS 'Data da Fatura', 
cor.Empresa AS 'Empresa Correio', 
cli.Empresa AS 'Nome Cliente', 
prod.ProdutoNome, 
cat.CategoriaNome, 
det.PrecoUnitario, det.Quantidade
FROM faturas AS f
INNER JOIN correios AS cor ON f.FormaEnvio = cor.CorreioID
INNER JOIN clientes AS cli ON f.ClienteID = cli.ClienteID
INNER JOIN detalhefatura AS det ON f.FaturaId = det.FaturaId
INNER JOIN produtos AS prod ON det.Produtoid = prod.ProdutoID
INNER JOIN categorias AS cat ON prod.CategoriaID = cat.CategoriaID;


-- -----------------------------------------------------------------------------------------------

-- Relatórios II parte II - INNER, LEFT e RIGHT JOIN

-- 1 Liste todas as categorias junto com informações sobre seus produtos. Incluir todas as categorias, mesmo que não tenham produtos.

SELECT cat.CategoriaNome, Cat.Descricao,
prod.ProdutoNome, prod.PrecoUnitario, prod.UnidadesEstoque 
FROM categorias AS cat
LEFT JOIN produtos AS prod
ON cat.CategoriaID = prod.CategoriaID;


-- 2 Liste as informações de contato de clientes que nunca compraram no emarket.

SELECT cli.Empresa AS 'Cliente', CONCAT('Sr(a) ', cli.contato, ' - ', cli.Titulo) AS Contato_Empresa, cli.Endereco, cli.Cidade, cli.Pais, cli.Telefone,
IFNULL(COUNT(FaturaID),0) AS Quantidade_Compras
FROM clientes AS cli
LEFT JOIN faturas AS fat
ON cli.ClienteID = fat.ClienteID
GROUP BY cli.ClienteID
HAVING Quantidade_Compras = 0;

/* 3 Faça uma lista de produtos. Para cada um, indique seu nome, categoria e as informações de contato de seu fornecedor. 
Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.*/

SELECT prod.ProdutoNome,
cat.CategoriaNome,
prov.Empresa AS Forncedor, 
CONCAT('Sr(a). ', prov.Contato, ' - ', prov.Titulo) AS Contato_Empresa, 
CONCAT('End: ', prov.Endereco, 'Cidade: ', prov.Cidade, ' Pais: ', prov.Pais, ' - CEP: ', prov.CodigoPostal) AS Endereco,
prov.Telefone
FROM produtos AS prod
LEFT JOIN categorias AS cat
ON prod.CategoriaID = cat.CategoriaID
LEFT JOIN provedores AS prov
ON prod.ProvedorID = prov.ProvedorID;



-- 4 Para cada categoria, liste o preço unitário médio de seus produtos.

SELECT cat.CategoriaNome,
IFNULL(ROUND(AVG(prod.PrecoUnitario),2),0) AS 'Preço unitário médio'
FROM categorias AS cat
LEFT JOIN produtos AS prod
ON cat.CategoriaID = prod.CategoriaID
GROUP BY cat.CategoriaID;


-- 5 Para cada cliente, indique a última nota fiscal de compra. Inclua clientes que nunca compraram no e-market.

SELECT * FROM faturas;

SELECT cli.Empresa,
IFNULL(MAX(fat.FaturaID),'Sem Fatura') AS Últim_fatura_emitida
FROM clientes AS cli
LEFT JOIN faturas AS fat
ON cli.ClienteID = fat.ClienteID
GROUP BY cli.ClienteID
ORDER BY Últim_fatura_emitida DESC;


/* 6 Todas as faturas têm uma empresa de correio associada (envio).
Gere uma lista com todas as empresas de correio e o número de faturas correspondentes. Execute a consulta usando RIGHT JOIN.*/

SELECT * FROM faturas;

SELECT c.Empresa,
COUNT(f.FaturaId) AS Quantidade_Faturas
FROM faturas AS f
RIGHT JOIN correios AS c
ON f.FormaEnvio = c.CorreioID
GROUP BY c.Empresa;
	
