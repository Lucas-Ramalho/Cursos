CREATE DATABASE mypersonaldatabase;
USE mypersonaldatabase;

CREATE TABLE contole_gastos(
	id_gasto INT PRIMARY KEY AUTO_INCREMENT,
    tipo_gastos VARCHAR(50) NOT NULL,
    descricao_gasto VARCHAR(100) NOT NULL,
    valor_gasto DECIMAL(6,2) NOT NULL,
    usuario VARCHAR(25) NOT NULL,
    data_gasto DATE NOT NULL
);

SELECT * FROM contole_gastos;

CREATE TABLE usuario (
	id_usuario INT NOT NULL,
    nome_usuario VARCHAR(20) NOT NULL,
    sexo_usuario VARCHAR(10) NOT NULL
);

DROP TABLE IF EXISTS usuario;

ALTER TABLE contole_gastos
ADD sexo_usuario VARCHAR(25);

ALTER TABLE contole_gastos
MODIFY valor_gasto DECIMAL(5,2) NOT NULL;

ALTER TABLE contole_gastos
DROP sexo_usuario;

# ================================================================================================================= #

INSERT INTO contole_gastos
VALUES (DEFAULT, 'PAGAMENTO', 'PAGAMENTO DE AGUA', 175.25, 'Raquel', 1994/10/19);

SELECT * FROM contole_gastos;

INSERT INTO contole_gastos
VALUES (2, 'PAGAMENTO', 'PAGAMENTO CARTAO', 500.25, 'Lucas', '2000/10/25');

SELECT * FROM contole_gastos;

UPDATE contole_gastos
SET usuario = 'Raquel', data_gasto = '1994/01/01'
WHERE id_gasto = 0;

UPDATE contole_gastos
SET data_gasto = '1994/10/19'
WHERE id_gasto = 1;

DELETE FROM contole_gastos WHERE id_gasto = 2;

#===================================================================================================#

USE musimundos;

SELECT id, sobrenome, nome, data_nascimento, cidade, estado, pais, email 
FROM empregados
WHERE cidade = 'Calgary'
ORDER BY nome DESC;

#===================================================================================================#




