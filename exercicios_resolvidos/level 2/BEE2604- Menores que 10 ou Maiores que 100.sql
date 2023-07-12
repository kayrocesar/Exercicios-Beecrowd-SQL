-- beecrowd SQL | 2604 Menores que 10 ou Maiores que 100

-- O setor financeiro da empresa 
-- precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.

CREATE DATABASE Menores10Maiores100;

USE Menores10Maiores100;


-- criando tabelas 

create table PRODUCTS(
	id int AUTO_INCREMENT,
	name	character varying (255),
	amount	int,
    price	decimal(10,2),
	CONSTRAINT PK_CUSTOMERS PRIMARY KEY (id)
)AUTO_INCREMENT=1;


-- inserindo nas tabelas 

INSERT INTO PRODUCTS (name, amount, price)
VALUES ('Two-door wardrobe', 100, 80),
       ('Dining table', 1000, 560),
       ('Towel holder', 10000, 5.50),
       ('Computer desk', 350, 100),
       ('Chair', 3000, 210.64),
       ('Single bed', 750, 99);





-- Realizando consulta conforme enunciado 
--  O setor financeiro da empresa  precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.
SELECT id , name FROM PRODUCTS 
WHERE price < 10 OR price > 100; 
    
