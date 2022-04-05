USE universoleitura;


INSERT INTO associados (cod_id, rg, nome, sobrenome, endereco, cidade, estado)
VALUES (1, 4835417,'Lucas', 'Ramalho', 'rua das catarinas', 'Piracicaba', 'SP'),
		(2, 1324547,'Maria', 'Ramos', 'rua dois', 'Piracicaba', 'SP'),
        (3, 6669818,'Raquel', 'Silva', 'rua tres', 'Porto', 'RJ'),
        (4, 5788145,'Joana', 'Souza', 'rua quatro', 'Rio Claro', 'MG'),
        (5, 5453584,'Carlos', 'Matos', 'rua dois', 'Rio Claro', 'SP');
        
SELECT * FROM exemplares;

INSERT INTO telefones 
VALUES (1,'1215-25482',1),
		(2,'555-99925482',1),
        (3,'454548-545128',2),
        (4,'454822-58282',3),
        (5,'4548521-15848',3),
        (6,'454818-1545458',4),
        (7,'85858-25482',5),
        (8,'22558-25482',5);
        
INSERT INTO autores
VALUES (1,'DiCaprio','Leonardo');

INSERT INTO editoras
VALUES (1,'editora chumbo grosso','5555-59556'),
		(2, 'editora só amor', '585994-52247'),
        (3,'editora encantamento', '4548548-545454');
        
INSERT INTO livros
VALUES (1,'12325422158181','Romeu e Julieta', '1900/10/19',1,'1901/11/21',3),
        (2,'852154551224','Imperador', '1950/01/19',1,'1951/12/21',2),
        (3,'54581218151','Shereck', '1960/02/19',1,'1941/11/21',1),
        (4,'25498538755','Procurando Nemo', '1980/03/19',1,'1931/12/21',1),
        (5,'8522416661','Harry Potter', '1990/04/19',1,'1921/11/21',3);
        
        
INSERT INTO exemplares
VALUES (1,5,0),
		(2,4,1),
        (3,3,0),
        (4,2,0),
        (5,1,1);
INSERT INTO emprestimos
VALUES (1, 4,'2021/08/19',20,'2021/09/19');

UPDATE emprestimos
SET codAssoc = 1
WHERE codigo_id = 4;

INSERT INTO emprestimos
VALUES (2, 4,'2021/08/19',20,'2021/09/19'),
		(3, 4,'2021/09/19','2021/10/19','2021/10/19'),
		(4, 4,'2021/10/19','2021/11/19','2021/11/19'),
        (5, 4,'2021/11/19','2021/12/19','2021/12/19');
        
SELECT * FROM associados;

INSERT INTO emprestimo_exemplares
VALUES (1, 1, 1),
		(2,5, 2),
		(3, 3, 3);
        
DELETE FROM associados WHERE cod_id = 4;

UPDATE associados 
SET endereco = 'rua das flores, 860'
WHERE cod_id = 3;
        