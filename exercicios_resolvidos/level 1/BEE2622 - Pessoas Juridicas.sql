-- beecrowd SQL | 2622 -  Pessoas Jurídicas

--  O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. 
--  Para isso você deve exibir o nome dos clientes que sejam pessoa jurídica.


CREATE DATABASE Pessoas_Juridicas;

USE Pessoas_Juridicas;


-- criando tabelas 

create table customers(
	id   numeric  primary key,
	name	character varying (255),
	street	character varying (255),
	city	character varying (255),
	state	char (2),
    credit_limit numeric
);


create table legal_person(
	id_customers numeric,
	cnpj	char (18),
	contact	character varying (25),
    FOREIGN KEY(id_customers) REFERENCES customers(id)
);


 
-- inserindo nas tabelas 

insert into customers (id, name, street, city, state, credit_limit) values
    (1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
    (2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
    (3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
    (4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
    (5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
    (6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

insert into legal_person (id_customers, cnpj, contact) values
    (4, '85883842000191', '99767-0562'),
    (5, '47773848000117', '99100-8965');


-- Realizando consulta conforme enunciado 

SELECT C.name FROM customers C
JOIN legal_person L
ON L.id_customers = C.id;
    
    
    
