
-- Categorias e Produtos

-- 1

SELECT * FROM categorias;

-- 2

SELECT CategoriaNome AS `Nome`,Descricao FROM categorias;

-- 3

SELECT * FROM produtos;

-- 4

SELECT * FROM produtos
WHERE Descontinuado = 1;

-- Resposta: Não existe produtos descontinuados

-- 5 

SELECT * FROM produtos
WHERE ProvedorID = 8;

-- 6

SELECT * FROM produtos
WHERE PrecoUnitario BETWEEN 10 AND 22;

-- 7

SELECT * FROM produtos
WHERE UnidadesEstoque < NivelReabastecimento;

-- 8 

SELECT * FROM produtos
WHERE UnidadesEstoque < NivelReabastecimento AND UnidadesPedidas = 0;

-- '30', 'Nord-Ost Matjeshering', '13', '8', '10 - 200 g glasses', '25.89', '10', '0', '15', '0'

-- ---------------------------------------------------------------------------------------------------------------------------------------------------

-- Clientes

-- 1
SELECT Empresa, Contato, Titulo AS `Cargo`, Pais FROM clientes
ORDER BY Pais;

-- 2
SELECT Empresa, Contato, Titulo AS `Cargo`, Pais FROM clientes
WHERE Titulo LIKE '%Owner%'
ORDER BY Pais;

-- 3
SELECT Empresa, Contato, Titulo AS `Cargo`, Pais, Telefone FROM clientes
WHERE Contato LIKE 'C%';

-- ------------------------------------------------------------------------------------------------------------------------------

-- Faturas

-- 1 
SELECT * FROM faturas 
ORDER BY DataFatura ASC;

-- 2 
SELECT * FROM faturas 
WHERE PaisEnvio = 'USA' AND FormaEnvio <> 3
ORDER BY DataFatura ASC;

-- 3 

SELECT * FROM faturas 
WHERE ClienteID = 'GOURL'
ORDER BY DataFatura ASC;

-- Resposta: Sim

-- 4

SELECT * FROM faturas 
WHERE EmpregadoID = 2 OR EmpregadoID = 3 OR EmpregadoID = 5 OR EmpregadoID = 8 OR EmpregadoID = 9;


-- QUERIES 1 -  PARTE II

-- Produtos

-- 1 
SELECT * FROM produtos
ORDER BY PrecoUnitario DESC;

-- 2 
SELECT * FROM produtos
ORDER BY PrecoUnitario DESC
LIMIT 5;

-- 3
SELECT * FROM produtos
ORDER BY UnidadesEstoque DESC
LIMIT 10;


-- DetalheFatura

-- 1
SELECT FaturaId, ProdutoID AS `Produto`, Quantidade FROM detalhefatura;

-- 2
SELECT FaturaId, ProdutoID AS `Produto`, Quantidade FROM detalhefatura
ORDER BY Quantidade DESC;

-- 3
SELECT FaturaId, ProdutoID AS `Produto`, Quantidade FROM detalhefatura
WHERE Quantidade BETWEEN 50 AND 100
ORDER BY Quantidade DESC;

-- 4 
SELECT FaturaId AS `Numero da Fatura`, ProdutoID AS `Produto`, PrecoUnitario * Quantidade AS `Total` FROM detalhefatura
WHERE Quantidade BETWEEN 50 AND 100
ORDER BY Quantidade DESC;



-- Extras

-- 1
SELECT * FROM clientes
WHERE Pais = 'Brazil' OR Pais = 'Mexico' OR Titulo LIKE 'Sales%';


-- 2 

SELECT * FROM clientes
WHERE Empresa LIKE 'A%';

-- 3 
SELECT Cidade, Contato AS 'Nome e Sobrenome', Titulo AS 'Cargo' FROM clientes
WHERE Cidade = 'Madrid';

-- 4
SELECT * FROM faturas
WHERE FaturaId BETWEEN 10000 AND 10500;

-- 5
SELECT * FROM faturas
WHERE FaturaId BETWEEN 10000 AND 10500 OR ClienteID LIKE 'B%' ;

-- 6 
SELECT * FROM faturas
WHERE CidadeEnvio = 'Vancouver' OR FormaEnvio = 3;

-- 7
SELECT * FROM empregados;

SELECT EmpregadoID AS 'Identificação do Funcionario',Nome, Sobrenome FROM empregados
WHERE Sobrenome = 'Buchanan';

-- 8
SELECT * FROM faturas
WHERE EmpregadoID = 5


















