/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 500.

Faça um select que retorne os produtos com o valor menor do que 500.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
tamanho char,
estoque int,
preco decimal(8,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, tamanho, estoque, preco)
VALUES ("Camiseta", 'M', 20, 150.00);

INSERT INTO tb_produtos (nome, tamanho, estoque, preco)
VALUES ("Calça", 'G', 12, 250.00);

INSERT INTO tb_produtos (nome, tamanho, estoque, preco)
VALUES ("Saia", 'M', 45, 180.00);

INSERT INTO tb_produtos (nome, tamanho, estoque, preco)
VALUES ("Jaqueta", 'G', 8, 550.00);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 280.00 WHERE id =2;

