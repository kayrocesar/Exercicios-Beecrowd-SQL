--  beecrowd SQL | 2606 Categorias

-- Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido 
-- por parte do antigo DBA.

-- Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria 
-- inicie com 'super'.

CREATE DATABASE Categorias;

USE Categorias;

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
    id_categories INT,
	CONSTRAINT PRIMARY KEY PK_PRODUCTS(id),
    CONSTRAINT FOREIGN KEY FK_PRODUCTS_CATEGORIES(id_categories) REFERENCES CATEGORIES(id)
) AUTO_INCREMENT=1;



-- inserindo nas tabelas 

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
    

INSERT INTO PRODUCTS (name, amount, price,id_categories)
VALUES
  ('Lampshade', 100, 800, 4),
  ('Table for painting', 1000, 560, 9),
  ('Notebook desk', 10000, 25.50, 9),
  ('Computer desk', 350, 320.50, 6),
  ('Chair', 3000, 210.64, 9),
  ('Home alarm', 750, 460, 4);


-- Realizando consulta conforme enunciado 

SELECT PRODUCTS.id, PRODUCTS.name FROM PRODUCTS
INNER JOIN CATEGORIES 
ON CATEGORIES.id = PRODUCTS.id_categories AND CATEGORIES.name LIKE 'super%';

    
