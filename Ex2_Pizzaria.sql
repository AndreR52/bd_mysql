/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT,
tamanho varchar(255) NOT NULL,
pedacos int NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tamanho, pedacos)
VALUES ("Grande", 8),
("Médio", 6),
("Pegueno", 4),
("Brotinho", 1);

CREATE TABLE tb_pizza (
id bigint AUTO_INCREMENT,
sabor varchar(255),
borda_recheada boolean,
preco decimal(8,2),
categoria_id bigint NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, borda_recheada, preco, categoria_id)
VALUE ("Muçarela", false, 45.00, 1),
("Calabresa", true, 50.00, 1),
("Portuguesa", false, 35.00, 2),
("4 Queijos", true, 30.00, 3),
("Frango e Catupiry", false, 10.00, 4),
("Lombo", TRUE, 15.00, 4);

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco FROM tb_pizza;

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco FROM tb_pizza 
WHERE preco >= 45;

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco FROM tb_pizza 
WHERE preco BETWEEN 29 AND 60;

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco FROM tb_pizza 
WHERE sabor LIKE "%c%";

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco, 
tb_categoria.tamanho, tb_categoria.pedacos FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;

Select sabor, IF(borda_recheada, 'true', 'false') borda_recheada, preco, 
tb_categoria.tamanho, tb_categoria.pedacos FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id WHERE tb_categoria.pedacos = 8;

 