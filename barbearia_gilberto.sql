USE barbearia_gilberto;

DROP TABLE IF EXISTS agendamentos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS servicos;

CREATE TABLE servicos (
    id INT NOT NULL AUTO_INCREMENT,
    nome_servico VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE agendamentos (
    id INT NOT NULL AUTO_INCREMENT,
    data_agendamento DATE NOT NULL,
    clientes_id INT NOT NULL,
    servicos_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (clientes_id) REFERENCES clientes (id),
    FOREIGN KEY (servicos_id) REFERENCES servicos (id)
);

INSERT INTO clientes (nome, sobrenome, endereco) VALUES
('Andre', 'Iacono', 'Rua 1'),
('Gilberto', 'Menezes', 'Rua Renascer 10');

INSERT INTO servicos (nome_servico, preco) VALUES
('Corte Degrade', 50.00),
('Barba Completa', 35.00),
('Corte + Barba', 75.00),
('Corte Navalhado', 60.00),
('Pintura', 90.00);

INSERT INTO agendamentos (data_agendamento, clientes_id, servicos_id) VALUES
('2026-09-02', 1, 1),
('2026-09-03', 1, 5);
