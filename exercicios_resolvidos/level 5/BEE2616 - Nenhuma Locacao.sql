-- beecrowd SQL | 2616 Nenhuma Locação

-- A locadora pretende fazer uma promoção para os clientes que ainda não fizeram nenhuma locação.

-- Seu trabalho é nos entregar o ID e o nome dos clientes que não realizaram nenhuma locação. Ordene a saída por ID

CREATE DATABASE NenhumaLocacao;

USE NenhumaLocacao;


-- criando tabelas 

create table CUSTOMERS(
	id int AUTO_INCREMENT,
	name	character varying (255),
	street	character varying (255),
    city	character varying (255),
	CONSTRAINT PK_CUSTOMERS PRIMARY KEY (id)
)AUTO_INCREMENT=1;

create table LOCATIONS(
	id   int AUTO_INCREMENT,
    locations_date DATE,
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

INSERT INTO LOCATIONS (locations_date, id_customers)
VALUES ('2016-10-09', 3),
       ('2016-09-02', 1),
       ('2016-08-02', 4),
       ('2016-09-02', 2),
       ('2016-03-02', 6),
       ('2016-04-04', 4);



-- Realizando consulta conforme enunciado
-- Seu trabalho é nos entregar o ID e o nome dos clientes que não realizaram nenhuma locação. Ordene a saída por ID


SELECT C.id, C.name FROM CUSTOMERS C
WHERE C.id NOT IN (SELECT id_customers FROM LOCATIONS)
ORDER BY C.id;
    
