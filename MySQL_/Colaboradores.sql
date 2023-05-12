select @@version;

create database db_colaboradores;

use db_colaboradores;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome, cargo, departamento, salario) VALUES
('Cleitin Oliveira', 'Desenvolvedor', 'TI', 3000.00),
('Patrícia Abravanel', 'Analista de Marketing', 'Marketing', 2500.00),
('Rodrigo Rodrigues Ribeiro Ribeirinho', 'Gerente de Vendas', 'Vendas', 4000.00),
('Beatriz Argamassa Pandolfo', 'Assistente Administrativo', 'Administração', 1800.00),
('Avestruz Souza Camargo', 'Analista de RH', 'Recursos Humanos', 2200.00);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 3500.00 WHERE id = 1;