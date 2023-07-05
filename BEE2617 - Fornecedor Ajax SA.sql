-- beecrowd SQL 2617 - Fornecedor Ajax SA

-- O setor financeiro encontrou alguns problemas na entrega de um dos nossos fornecedores, a entrega dos produtos não condiz com a nota fiscal.
-- Seu trabalho é exibir o nome dos produtos e o nome do fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax SA’.


CREATE DATABASE FORNECEDOR_PRODUTOS;

USE FORNECEDOR_PRODUTOS;


-- criando tabelas 

create table providers(
	id   numeric  primary key,
	name	character varying (255),
	street	character varying (255),
	city	character varying (255),
	state	char (2)
);


create table products(
	id 	    numeric primary key,
	name	character varying (255),
	amount	numeric,
	price	numeric,
	id_providers numeric,
    FOREIGN KEY(id_providers) REFERENCES providers(id)
);

-- inserindo nas tabelas 

insert into products (id,name,amount,price,id_providers) values
	(1,'Blue Chair',30,300.00,5),
	(2,'Red Chair',50,2150.00,1),
	(3,'Disney Wardrobe',400,829.50,4),
	(4,'Blue Toaster',20,9.90,3),
	(5,'Solar Panel',30,3000.25,4);
    
insert into providers (id,name,street,city,state) values 
	(1,'Ajax SA','Presidente Castelo Branco','Porto Alegre','RS'),
	(2,'Sansul SA','Av Brasil','Rio de Janeiro','RJ'),
	(3,'South Chairs','Av Moinho','Santa Maria','RS'),
	(4,'Elon Electro','Apolo','São Paulo','SP'),
	(5,'Mike Electro','Pedro da Cunha','Curitiba','PR');
    
-- Realizando consulta conforme enunciado 

SELECT products.name,providers.name
FROM providers
INNER JOIN products
ON providers.id = products.id_providers 
AND providers.name = 'Ajax SA';
    
    
    
