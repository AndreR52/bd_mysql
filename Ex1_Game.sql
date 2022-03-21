/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

DROP DATABASE db_generation_game_online;
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
arma varchar(255),
magia boolean,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagem (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
defesa bigint NOT NULL,
melee_atack bigint,
range_atack bigint,
magic_atack bigint,
classe_id bigint NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (classe, arma, magia)
VALUES ("Guerreiro", "Espada", false),
("Caçador", "Arco e Flecha", false),
("Lutador", "Punho", false),
("Clerigo", "Maça", true);
INSERT INTO tb_classe (classe, magia)
VALUES ("Mago", true);

INSERT INTO tb_personagem (nome, defesa, melee_atack, classe_id)
VALUES ("Vallen", 1500, 2000, 1),
("Orion", 2500, 1000, 1),
("Bruce", 1200, 2300, 3);

INSERT INTO tb_personagem (nome, defesa, range_atack, classe_id)
VALUES ("Elisa", 800, 2700, 2);

INSERT INTO tb_personagem (nome, defesa, melee_atack, magic_atack, classe_id)
VALUES ("Vanessa", 2000, 1300, 500, 4);

INSERT INTO tb_personagem (nome, defesa, magic_atack, classe_id)
VALUES ("Nicaela", 600, 3000, 4),
("Rufus", 600, 1800, 5),
("Talude", 700, 3000, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE melee_atack > 2000 or range_atack > 2000 or magic_atack > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "V%";

SELECT nome, defesa, defesa, melee_atack, range_atack, magic_atack, 
tb_classe.classe, tb_classe.arma, tb_classe.magia FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id 
WHERE classe_id = 1;

