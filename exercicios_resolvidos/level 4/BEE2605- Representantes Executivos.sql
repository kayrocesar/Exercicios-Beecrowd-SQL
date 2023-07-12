--  beecrowd SQL | 2605 Representantes Executivos

-- O setor financeiro precisa de um relatório sobre os fornecedores dos produtos que vendemos.
-- Os relatórios contemplam todas as categorias, mas por algum motivo, os fornecedores dos produtos cuja categoria é a executiva, não estão no relatório.

-- Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.

CREATE DATABASE RepresentantesExecutivos;

USE RepresentantesExecutivos;

CREATE TABLE PROVIDERS (
    id INT  AUTO_INCREMENT,
    name varchar(100),
    street varchar(100),
    city varchar(100),
    state char(2),
    CONSTRAINT PRIMARY KEY PK_PROVIDERS(id) 
) AUTO_INCREMENT=1;

CREATE TABLE CATEGORIES (
    id INT  AUTO_INCREMENT,
    name varchar(100),
    CONSTRAINT PRIMARY KEY PK_CATEGORIES(id) 
) AUTO_INCREMENT=1;


CREATE TABLE PRODUCTS(
    id INT AUTO_INCREMENT,
    name varchar(100),
    amount bigint,
    price decimal(10,2),
    id_providers INT,
    id_categories INT,
	CONSTRAINT PRIMARY KEY PK_PRODUCTS(id),
    CONSTRAINT FOREIGN KEY FK_PRODUCTS_PROVIDERS(id_providers) REFERENCES PROVIDERS(id),
    CONSTRAINT FOREIGN KEY FK_PRODUCTS_CATEGORIES(id_categories) REFERENCES CATEGORIES(id)
) AUTO_INCREMENT=1;



-- inserindo nas tabelas 
INSERT INTO PRODUCTS (name, amount, price, id_providers, id_categories)
VALUES
    ('Two-door wardrobe', 100, 800, 6, 8),
    ( 'Dining table', 1000, 560, 1, 9),
    ( 'Towel holder', 10000, 25.50, 5, 1),
    ( 'Computer desk', 350, 320.50, 4, 6),
    ( 'Chair', 3000, 210.64, 3, 6),
    ( 'Single bed', 750, 460, 1, 2);

INSERT INTO PROVIDERS (name, street, city, state)
VALUES
    ('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
    ('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
    ('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
    ('Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
    ('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
    ('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');
    
INSERT INTO CATEGORIES (name)
VALUES
    ('old stock'),
    ('new stock'),
    ('modern'),
    ('commercial'),
    ('recyclable'),
    ('executive'),
    ('superior'),
    ('wood'),
    ('super luxury'),
    ('vintage');


-- Realizando consulta conforme enunciado 

SELECT PRODUCTS.name, PROVIDERS.name FROM PRODUCTS
INNER JOIN PROVIDERS
ON PRODUCTS.id_providers = PROVIDERS.id AND PRODUCTS.id_categories = 6;
    
