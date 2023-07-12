--  beecrowd SQL | 2610 Valor Médio dos Produtos

--  Na empresa que você trabalha está sendo feito um levantamento sobre os valores dos produtos
--  que são comercializados.

-- Para ajudar o setor que está fazendo esse levantamento você deve calcular e 
-- exibir o valor médio do preço dos produtos.

-- OBS: Mostrar o valor com dois números após o ponto.

CREATE DATABASE ValorMediodosProdutos;

USE ValorMediodosProdutos;

-- Criando a tabela

CREATE TABLE PRODUCTS(
    id INT AUTO_INCREMENT,
    name varchar(100),
    amount bigint,
    price decimal(10,2),
	CONSTRAINT PRIMARY KEY PK_PRODUCTS(id)
) AUTO_INCREMENT=1;



-- inserindo na tabela

INSERT INTO PRODUCTS (name, amount, price)
VALUES 
  ('Two-doors wardrobe',100,800),
  ('Dining table',1000,560),
  ('Towel holder',10000,25.50),
  ('Computer desk',350,320.50),
  ('Chair',3000,210.64),
  ('Single bed',750,460);


-- Realizando consulta conforme enunciado 

-- Exibir o valor médio do preço dos produtos com dois precisão de duas casas após o ponto.
SELECT ROUND(AVG(price),2) FROM PRODUCTS;
    
