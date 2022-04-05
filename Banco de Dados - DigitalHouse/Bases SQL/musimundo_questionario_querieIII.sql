USE musimundos;

/* 
Faça uma consulta no banco de dados onde mostre todos os registros que contenham músicas com seus gêneros, 
E que o compositor seja Willie Dixon, E que tenham o gênero Blues. A 2ª música encontrada foi:
*/

SELECT cancoes.id, cancoes.nome, cancoes.compositor, generos.nome FROM cancoes
INNER JOIN generos
ON cancoes.id_genero = generos.id
WHERE cancoes.compositor = 'Willie Dixon'
AND generos.nome = 'Blues';


/* 
Faça uma consulta ao nosso banco de dados que nos retorna as únicas músicas que possuem gênero rock. 
Qual é a música que aparece em quarto lugar?
*/

SELECT cancoes.id, cancoes.nome, cancoes.compositor, generos.nome FROM cancoes
INNER JOIN generos
ON cancoes.id_genero = generos.id
WHERE generos.nome = 'Rock';

/* 
Faça uma consulta ao nosso banco de dados que nos traga o título do álbum e o autor, 
para saber se o que estamos vendendo está correto.
Qual o título do álbum que aparece na posição número 10?
*/

SELECT albuns.titulo, artistas.nome FROM albuns
INNER JOIN artistas
ON albuns.id_artista = artistas.id
WHERE artistas.nome = 'Deep Purple';

/* 
Faça uma consulta que retorne o nome das músicas e o tipo de arquivo "MPEG audio file".
Qual o nome da músca que aparece na posição número 4?
*/


SELECT cancoes.nome, tipos_de_arquivo.nome FROM cancoes
INNER JOIN tipos_de_arquivo
ON cancoes.id_tipo_de_arquivo = tipos_de_arquivo.id
WHERE tipos_de_arquivo.nome = 'MPEG audio file';


/* 
Faça uma consulta na tabela empregados. O cargo que aparece na 3a. posição é:
*/

SELECT DISTINCT titulo FROM empregados;

/* 
Ranking cancoes: Faça uma consulta com o nome de todas as músicas que estão em uma lista de reprodução, e
 o nome da lista de reprodução a que pertencem.Observação! Tenhamos cuidado para não repetir os nomes das músicas.
 Para esta consulta, teremos que usar informações das tabelas cancoes, 
cancoes_playlists e playlists. O título da música na 5a. posição é:
*/

SELECT DISTINCT cancoes.nome, playlists.nome FROM cancoes
INNER JOIN cancoes_playlists
ON cancoes.id = cancoes_playlists.id_cancao
INNER JOIN playlists
ON cancoes_playlists.id_playlist = playlists.id;


/* 
Ranking cancoes 2: O departamento de desenvolvimento da Musimundos está preparando a parte do aplicativo em que acessamos uma determinada música.
Eles nos dizem que um texto específico deve aparecer abaixo da imagem da música:
"A música" (nome do tema) "foi composta por" (compositor do tema).Faça uma consulta ao nosso banco de dados que nos traga o nome e o compositor de cada música, 
sem repetições, adicionando o texto acima. O primeiro resultado é:
*/

SELECT DISTINCT CONCAT('A música ', nome, ' foi composta por ', compositor) AS 'Musicas e Compositores' FROM cancoes;



/* 
Faturas: Faça uma consulta ao banco de dados que nos traga a primeira coluna não nula que 
encontrar entre as colunas estado_cobranca, pais_cobranca e cep_cobranca. 
O primeiro resultado obtido é:
*/

SELECT COALESCE(estado_cobranca, pais_cobranca, cep_cobranca) AS 'primeiro não nulo' FROM faturas;

/* 
 Idade Empregados: Faça uma consulta no banco de dados que mostre a diferença entre sua data de nascimento
 e a data de contratação.Digite a terceira diferença que você obteve. 
 DICA: Lembre-se de que DATEDIFF () retorna a diferença entre as datas expressas em DIAS. 
 Levando isso em consideração e sabendo que um ano tem 365 dias, como você faria a consulta?Para ajudá-lo, apresentamos a função FLOOR (),
 que arredonda qualquer número para casas decimais.
*/

SELECT nome, data_nascimento, data_contratacao, FLOOR(DATEDIFF(data_contratacao, data_nascimento)/365) AS 'Diferença Nascimento x Contratação'FROM empregados;

/* 
 Última fatura: Faça uma consulta ao banco de dados que traga todas as faturas do cliente número 2 solicitadas por sua data e extraia o mês.
 Qual foi o mês da sua última fatura?
*/

SELECT id_cliente, data_fatura, EXTRACT(MONTH FROM data_fatura) AS 'Mês fatura' FROM faturas
WHERE id_cliente = 2
ORDER BY data_fatura DESC;

