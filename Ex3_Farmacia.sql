/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

DROP DATABASE db_farmacia_do_bem;

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT,
tarja varchar(255),
prescricao boolean,
retem_prescricao boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tarja, prescricao, retem_prescricao)
VALUE ("sem", false, false),
("vermelha", true, false),
("vermelha", true, true),
("preta", true, true);

CREATE TABLE tb_produto (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal (6,2),
validade date,
tipo varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, validade, tipo, categoria_id)
VALUES ("Dipirona", 3.50, "2023-08-21", "Comprimido", 1),
("Loratadina Xarope", 27.50, "2022-12-20", "Liquido", 1),
("Cloridrato de Propanolol", 9.90, "2024-02-18", "Comprimido", 2),
("Amytril", 29.90, "2024-05-02", "Comprimido", 2),
("Rivotril", 21.00, "2024-01-15", "Comprimido", 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT nome, preco, validade, tipo, tarja, if(prescricao, 'sim', 'não')prescricao, 
if(retem_prescricao, 'sim', 'não')retem_prescricao 
FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, preco, validade, tipo, tarja, if(prescricao, 'sim', 'não')prescricao, 
if(retem_prescricao, 'sim', 'não')retem_prescricao 
FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE tarja = "vermelha";


