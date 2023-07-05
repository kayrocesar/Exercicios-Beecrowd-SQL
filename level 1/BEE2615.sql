-- beecrowd SQL | 2615 Expandindo o Negocio


-- A locadora tem objetivos de criar várias franquias espalhadas pelo Brasil. 
-- Para isso queremos saber em quais cidades nossos clientes moram.

-- Para você nos ajudar selecione o nome de todas as cidades onde a locadora tem clientes
-- Mas por favor, não repita o nome da cidade.


CREATE DATABASE ExpandindooNegocio;

USE ExpandindooNegocio;

CREATE TABLE CUSTOMERS (
    id numeric PRIMARY KEY,
    name varchar(100),
    street varchar(100),
    city varchar(100)

);

-- inserindo nas tabelas 

INSERT INTO customers (id, name, street, city)
VALUES
    (1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
    (2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
    (3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
    (4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia'),
    (5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
    (6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');




-- Realizando consulta conforme enunciado 
SELECT DISTINCT city FROM CUSTOMERS;
    
    
