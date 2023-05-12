select @@version;

create database db_quitanda;

use db_quitanda;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    PRIMARY KEY (id)
);
insert into tb_produtos (nome,quantidade,preco) values ("melancia",100,12.00);
insert into tb_produtos (nome,quantidade,preco) values ("laranja",80,8.00);
insert into tb_produtos (nome,quantidade,preco) values ("morango",120,15.00);
insert into tb_produtos (nome,quantidade,preco) values ("banana",30,5.00);
insert into tb_produtos (nome,quantidade,preco) values ("manga",50,4.00);
insert into tb_produtos (nome,quantidade,preco) values ("kiwi",105,14.00);

select * from tb_produtos;

select nome from tb_produtos;

select nome,preco from tb_produtos;

select * from tb_produtos where id = 2;

select * from tb_produtos where preco >= 10.00;

select * from tb_produtos where preco >= 10.00 and quantidade <=100;

update tb_produtos set preco = 5.00 where id = 1;

delete from tb_produtos where id = 2;

alter table tb_produtos modify preco decimal(6,2);

ALTER TABLE tb_produtos ADD observacao varchar(255);

alter table tb_produtos drop observacao;

alter table tb_produtos change nome nomeproduto varchar(255);

select @@version;

create database db_quitanda;

use db_quitanda;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    PRIMARY KEY (id)
);
insert into tb_produtos (nome,quantidade,preco) values ("melancia",100,12.00);
insert into tb_produtos (nome,quantidade,preco) values ("laranja",80,8.00);
insert into tb_produtos (nome,quantidade,preco) values ("morango",120,15.00);
insert into tb_produtos (nome,quantidade,preco) values ("banana",30,5.00);
insert into tb_produtos (nome,quantidade,preco) values ("manga",50,4.00);
insert into tb_produtos (nome,quantidade,preco) values ("kiwi",105,14.00);

select * from tb_produtos;

select nome from tb_produtos;

select nome,preco from tb_produtos;

select * from tb_produtos where id = 2;

select * from tb_produtos where preco >= 10.00;

select * from tb_produtos where preco >= 10.00 and quantidade <=100;

update tb_produtos set preco = 5.00 where id = 1;

delete from tb_produtos where id = 2;

alter table tb_produtos modify preco decimal(6,2);

ALTER TABLE tb_produtos ADD observacao varchar(255);

alter table tb_produtos drop observacao;

alter table tb_produtos change nome nomeproduto varchar(255);

SELECT * FROM tb_produtos ORDER BY nomeproduto ASC;

SELECT * FROM tb_produtos ORDER BY nomeproduto DESC;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 16.00;

SELECT * FROM tb_produtos WHERE preco IN (5.00, 14.00, 10.00);

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "m%";

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "M_l%";

CREATE TABLE tb_categoria (
	id bigint auto_increment,
    descricao varchar(255) not null,
    primary key(id)
);

INSERT INTO tb_categoria (descricao) VALUES ("Fruta");
INSERT INTO tb_categoria (descricao) VALUES ("Verdura");
INSERT INTO tb_categoria (descricao) VALUES ("Legume");

SELECT * FROM tb_categoria;

ALTER TABLE tb_produtos ADD categoria_id bigint;

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id);

INSERT INTO tb_produtos(nomeproduto,quantidade,preco,categoria_id) VALUES ("Pitanga",10,15.00,1);
INSERT INTO tb_produtos(nomeproduto,quantidade,preco,categoria_id) VALUES ("Couve",15,4.00,2);
INSERT INTO tb_produtos(nomeproduto,quantidade,preco,categoria_id) VALUES ("Brocolis",20,3.00,3);

SELECT nomeproduto,quantidade,preco FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nomeproduto,quantidade,preco FROM tb_produtos LEFT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nomeproduto,quantidade,preco FROM tb_produtos RIGHT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;