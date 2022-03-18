/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 

Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;

Faça um select que retorne o/as estudantes  com a nota maior do que 7.

Faça um select que retorne o/as estudantes  com a nota menor do que 7.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255),
idade int,
curso varchar(255),
media decimal(4,2),
PRIMARY KEY(id)
);

INSERT INTO tb_alunos (nome, idade, curso, media)
VALUES ("Pablo", 25, "JAVA", 7);

INSERT INTO tb_alunos (nome, idade, curso, media)
VALUES ("Paola", 19, "Python", 9);

INSERT INTO tb_alunos (nome, idade, curso, media)
VALUES ("Rafaela", 28, "C++", 5);

INSERT INTO tb_alunos (nome, idade, curso, media)
VALUES ("Rodolfo", 30, "JavaScript", 4);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE media > 7;

SELECT * FROM tb_alunos WHERE media < 7;

UPDATE tb_alunos SET media = 8 WHERE id = 2;