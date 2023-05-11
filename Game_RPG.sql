CREATE DATABASE db_generation_game;

USE db_generation_game;

CREATE TABLE tb_classes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  nivel INT NOT NULL,
  ataque INT NOT NULL,
  defesa INT NOT NULL,
  vida INT NOT NULL,
  id_classe INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo)
VALUES ('Guerreiro', 'Corpo-a-Corpo'),
       ('Arqueiro', 'Distância'),
       ('Mago', 'Magia'),
       ('Ladino', 'Furtividade'),
       ('Sacerdote', 'Suporte');

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, vida, id_classe) 
VALUES ('Cairus', 10, 3000, 1500, 100, 1),
       ('Galadriel', 8, 2000, 800, 100, 2),
       ('Pretolf', 12, 4000, 2000, 100, 3),
       ('Sith', 3, 500, 100, 100, 4),
       ('Lipidian', 5, 1000, 500, 100, 4),
       ('Ramenon', 7, 1500, 1200, 100, 1),
       ('Arwen', 9, 2500, 1500, 100, 2),
       ('Misticys', 4, 800, 200, 100, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.nivel, tb_classes.nome AS classe, tb_classes.tipo
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_classes.nome AS classe, tb_classes.tipo
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';