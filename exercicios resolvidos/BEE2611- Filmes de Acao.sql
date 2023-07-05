--  beecrowd SQL | 2611 Filmes de Ação

 -- Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. 
 -- Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
 
CREATE DATABASE FILMESACAO;

USE FILMESACAO;

-- Criando a tabela
CREATE TABLE GENRES(
    id INT AUTO_INCREMENT,
    description varchar(100),
	CONSTRAINT PRIMARY KEY PK_GENRES(id)
) AUTO_INCREMENT=1;

CREATE TABLE MOVIES(
    id INT AUTO_INCREMENT,
    name varchar(100),
    id_genres INT,
	CONSTRAINT PRIMARY KEY PK_PRODUCTS(id),
    CONSTRAINT FOREIGN KEY FK_PRODUCTS_GENRES(id_genres) REFERENCES GENRES(id)
) AUTO_INCREMENT=1;



-- inserindo nas tabelas

INSERT INTO GENRES (description)
VALUES
  ('Animation'),
  ('Horror'),
  ('Action'),
  ('Drama'),
  ('Comedy');


INSERT INTO MOVIES (name, id_genres)
VALUES
  ('Batman', 3),
  ('The Battle of the Dark River', 3),
  ('White Duck', 1),
  ('Breaking Barriers', 4),
  ('The Two Hours', 2);

  



-- Realizando consulta conforme enunciado 

-- Exibir o valor médio do preço dos produtos com dois precisão de duas casas após o ponto.

SELECT M.id, M.name FROM MOVIES M
INNER JOIN GENRES G
ON M.id_genres = G.id AND G.description = 'Action';

    
