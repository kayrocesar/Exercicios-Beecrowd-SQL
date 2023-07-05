-- beecrowd SQL | 2607 Cidades em Ordem Alfabética


-- Todos os meses a empresa pede um relatório das cidades que os fornecedores estão cadastrados.
-- Dessa vez não vai ser diferente, faça uma consulta no Banco de Dados que 
-- retorne todas as cidades dos fornecedores, mas em ordem alfabética.

-- OBS: Você não deve mostrar cidades repetidas.

-- Para isso exiba somente o maior e o menor preço da tabela produtos.

CREATE DATABASE CidadesemOrdemAlfabetica;

USE CidadesemOrdemAlfabetica;

CREATE TABLE providers (
    id numeric PRIMARY KEY,
    name varchar(100),
    street varchar(100),
    city varchar(100),
    state char(2)
);

-- inserindo nas tabelas 

INSERT INTO providers (id, name, street, city, state) VALUES
    (1, 'Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
    (2, 'Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
    (3, 'Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
    (4, 'Guilherme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
    (5, 'Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
    (6, 'Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');



-- Realizando consulta conforme enunciado 
SELECT DISTINCT city FROM providers ORDER BY city ASC;
    
    
