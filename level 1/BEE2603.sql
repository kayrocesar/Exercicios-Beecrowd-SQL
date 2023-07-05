-- beecrowd SQL | 2603 Endereço dos Clientes

-- A empresa fará um evento comemorando os 20 anos de mercado, e 
-- para isso faremos uma grande comemoração na cidade de Porto Alegre. Queremos também convidar 
-- todos os nossos clientes que estão cadastrados nessa cidade.

-- O seu trabalho é nos passar os nomes e os endereços dos clientes 
-- que moram em 'Porto Alegre', para entregar os convites pessoalmente.

CREATE DATABASE EnderecodosClientes;

USE EnderecodosClientes;

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(100),
    street varchar(100),
    city varchar(100),
    state char(2),
    credit_limit bigint
);


 
-- inserindo nas tabelas 

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
    (1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
    (2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
    (3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
    (4, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00),
    (5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);


-- Realizando consulta conforme enunciado 

SELECT name, street 
FROM customers WHERE city = 'Porto Alegre';
    
    
    
