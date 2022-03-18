/*Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.

Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date,
funcao varchar(255) NOT NULL,
salario decimal(8,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, data_nascimento, funcao, salario)
VALUES ("João", "1994-07-27", "Dev JAVA Jr", 3000.00);

INSERT INTO tb_funcionarios (nome, data_nascimento, funcao, salario)
VALUES ("Maria", "1998-12-05", "Gerente", 4000.00);

INSERT INTO tb_funcionarios (nome, data_nascimento, funcao, salario)
VALUES ("Jose", "2002-07-15", "Secretario", 1500.00);

INSERT INTO tb_funcionarios (nome, data_nascimento, funcao, salario)
VALUES ("Joana", "2000-02-25", "Faxineira", 1150.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1200.00 WHERE id = 4;

