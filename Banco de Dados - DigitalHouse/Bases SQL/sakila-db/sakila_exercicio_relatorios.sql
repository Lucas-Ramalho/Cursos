USE sakila;

-- -----------------

/* 
1 - Obtenha o nome e o sobrenome dos primeiros 5 atores disponíveis, use Alias para exibir os nomes das colunas com a primeira letra maiúscula.
*/

SELECT first_name AS 'First_Name', last_name AS 'Last_Name' FROM actor;

/* 
2 - Obtenha uma lista que inclua nome, sobrenome e e-mail dos clientes inativos. 
	Use Alias para exibir os nomes das colunas com a primeira letra maiúscula.
*/

SELECT first_name AS 'First_Name', last_name AS 'Last_Name', email AS 'Email', customer.active AS 'Active' FROM customer
WHERE customer.active = 0;


/* 
3 - Obtenha uma lista de filmes, incluindo título, ano e descrição dos filmes que têm uma duracao_locacao maior que cinco. 
Classificar por duracao_locacao descendente e use Alias para exibir os nomes das colunas com a primeira letra maiúscula.
*/

SELECT title AS 'Title', release_year AS 'Release_Year', description AS 'Description', rental_duration AS 'Rental_duration' 
FROM film
WHERE rental_duration > 5
ORDER BY rental_duration DESC;


/* 
4 - Obtenha uma lista de aluguéis que foram feitos durante o mês de Maio de 2005. 
	Inclua todas as colunas disponíveis no resultado.
*/

SELECT * FROM rental
WHERE DATE_FORMAT(rental_date, '%m/%Y') = '05/2005';


-- -------------------------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------------------------

/* 
1 - Obtenha o valor TOTAL de locações, use um Alias para mostrá-lo em uma coluna chamada "Quantidade";
*/

SELECT count(rental_id) AS 'Quantidade' FROM rental;

/* 
2 - Obtenha a soma TOTAL de todos os pagamentos, use um Alias para mostrá-lo em uma coluna chamada "TOTAL", uma coluna com a quantidade de locações com o alias "Quantidade" 
e uma coluna indicando o "Valor Médio ”por locação;
*/

SELECT sum(amount) AS 'Total', count(rental_id) AS 'Quantidade', avg(amount) AS 'Valor Médio' FROM payment;

/* 
3 -Gere um relatório que responda à pergunta: quais são os dez clientes que mais dinheiro gastam e quantas locações fizeram?
*/

SELECT CONCAT(customer.first_name, ' ', customer.last_name) AS 'Nome Cliente', 
COUNT(payment.rental_id) AS 'Quantidade Empréstimos', 
SUM(payment.amount) AS 'Pagamento Total' FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id
ORDER BY SUM(payment.amount) DESC
LIMIT 10;

/* 
4 -Gere um relatório que mostre: identificação do cliente, quantidade  de locações e valor total de todos os 
clientes que gastaram mais de $ 150 em locações.
*/

SELECT CONCAT(customer.first_name, ' ', customer.last_name) AS 'Nome Cliente', 
COUNT(payment.rental_id) AS 'Quantidade Empréstimos', 
SUM(payment.amount) AS 'Pagamento Total' FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id
HAVING SUM(payment.amount) > 150
ORDER BY SUM(payment.amount) ASC;


/* 
5 - Gere um relatório que mostre por mês o valor das locações e a quantidade de locações para o ano de 2005.
*/

SELECT * FROM payment;
SELECT * FROM rental;


SELECT DATE_FORMAT(r.rental_date, '%m/%Y') AS 'Mês de Locação', 
COUNT(r.rental_id) AS 'Quantidade de Locações',
SUM(p.amount) AS 'Valor Total Locações'
FROM rental AS r
INNER JOIN payment AS p
ON r.rental_id = p.rental_id
WHERE DATE_FORMAT(r.rental_date, '%Y') = '2005'
GROUP BY DATE_FORMAT(r.rental_date, '%m/%Y');


