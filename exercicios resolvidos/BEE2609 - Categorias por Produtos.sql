--  beecrowd SQL | 2609 ProdutosporCategorias
-- Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido 
-- por parte do antigo DBA.

-- Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.

-- Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.

CREATE DATABASE ProdutosporCategorias;

USE ProdutosporCategorias;

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
  ('wood'),
  ('luxury'),
  ('vintage'),
  ('modern'),
  ('super luxury');

INSERT INTO PRODUCTS (name, amount, price, id_categories)
VALUES 
  ('Two-doors wardrobe', 100,800,1),
  ('Dining table',1000,560,3),
  ('Towel holder',10000,25.50,4),
  ('Computer desk',350,320.50,2),
  ('Chair',3000,210.64,4),
  ('Single bed',750,460,1);


-- Realizando consulta conforme enunciado 

SELECT P.name, SUM(P.amount) FROM PRODUCTS P
INNER JOIN CATEGORIES CAT
ON P.id_categories= CAT.id 
GROUP BY P.name;

    
