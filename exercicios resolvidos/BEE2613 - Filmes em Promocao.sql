-- beecrowd SQL | 2613 Filmes em Promoção

-- Antigamente a locadora fez um evento em que vários filmes estavam em promoção, queremos saber que filmes eram esses.

 -- Seu trabalho para nós ajudar é selecionar o ID e o nome dos filmes cujo preço for menor que 2.00.

CREATE DATABASE FilmesemPromocao;

USE FilmesemPromocao;


-- criando tabelas 

create table PRICES(
	id int AUTO_INCREMENT,
	categorie	character varying (255),
	value 	decimal (10,2),
	CONSTRAINT PK_PRICES PRIMARY KEY (id)
)AUTO_INCREMENT=1;

create table MOVIES(
	id   int AUTO_INCREMENT,
	name	character varying (255),
	id_prices int,
    CONSTRAINT PK_MOVIES PRIMARY KEY (id),
	CONSTRAINT FK_MOVIES_PRICES FOREIGN KEY(id_prices) REFERENCES PRICES(id)
)AUTO_INCREMENT=1;




 
-- inserindo nas tabelas 

INSERT INTO MOVIES (name, id_prices)
VALUES ('Batman', 3),
       ('The Battle of the Dark River', 3),
       ('White Duck', 5),
       ('Breaking Barriers', 4),
       ('The Two Hours', 2);

INSERT INTO prices ( categorie, value)
VALUES ( 'Releases', 3.50),
       ( 'Bronze Seal', 2.00),
       ( 'Silver Seal', 2.50),
       ( 'Gold Seal', 3.00),
       ( 'Promotion', 1.50);


-- Realizando consulta conforme enunciado 
-- selecionar o ID e o nome dos filmes cujo preço for menor que 2.00.

SELECT M.id,M.name FROM MOVIES M
INNER JOIN PRICES P 
ON M.id_prices=P.id 
AND P.value<2;
    
    
