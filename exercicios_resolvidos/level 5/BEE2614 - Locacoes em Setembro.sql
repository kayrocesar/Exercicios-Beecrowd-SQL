-- beecrowd SQL | 2614 Locações de Setembro

-- A vídeo locadora está fazendo seu relatório semestral e 
-- precisa da sua ajuda. Basta você selecionar o nome dos clientes e a data de locação,
-- das locações realizadas no mês de setembro de 2016.

CREATE DATABASE LocacaoSetembro;

USE LocacaoSetembro;


-- criando tabelas 

create table CUSTOMERS(
	id int AUTO_INCREMENT,
	name	character varying (255),
	street	character varying (255),
    city	character varying (255),
	CONSTRAINT PK_CUSTOMERS PRIMARY KEY (id)
)AUTO_INCREMENT=1;

create table RENTALS(
	id   int AUTO_INCREMENT,
	rentals_date DATE,
	id_customers int,
    CONSTRAINT PK_RENTALS PRIMARY KEY (id),
	CONSTRAINT FK_RENTALS_CUSTOMERS FOREIGN KEY(id_customers) REFERENCES CUSTOMERS(id)
)AUTO_INCREMENT=1;




 
-- inserindo nas tabelas 

INSERT INTO CUSTOMERS (name, street, city)
VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
       ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
       ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
       ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
       ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
       ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


INSERT INTO RENTALS ( categorie, value)
VALUES ( 'Releases', 3.50),
       ( 'Bronze Seal', 2.00),
       ( 'Silver Seal', 2.50),
       ( 'Gold Seal', 3.00),
       ( 'Promotion', 1.50);

INSERT INTO RENTALS (rentals_date, id_customers)
VALUES ('2016-09-10', 3),
       ('2016-02-09', 1),
       ('2016-02-08', 4),
       ('2016-02-09', 2),
       ('2016-02-03', 6);

-- Realizando consulta conforme enunciado 
--  Selecionar o nome dos clientes e a data de locação das locações realizadas no mês de setembro de 2016.
-- No MYSQL:

SELECT C.name, R.rentals_date FROM CUSTOMERS C
INNER JOIN RENTALS R
ON R.id_customers = C.id
AND YEAR(rentals_date) = '2016' 
AND MONTH(rentals_date) = '09';
    
-- No POSTGRESQL:
-- SELECT C.name, R.rentals_date
-- FROM customers C
-- INNER JOIN rentals R ON R.id_customers = C.id
-- WHERE EXTRACT(YEAR FROM R.rentals_date) = 2016 AND EXTRACT(MONTH FROM R.rentals_date) = 9;

    
