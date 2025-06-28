-- =========================
-- BANCO DE DADOS - SISTEMA PARA LIVRARIA/CAFETERIA
-- Tabelas: produtos, pedidos
-- Autor: Alessandra Medeiros
-- Data: 28/06/2025
-- =========================

-- Tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    estoque INTEGER NOT NULL
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo dados na tabela produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Expresso', 4.50, 50),
('Livro: Aprendendo SQL', 39.90, 20),
('Bolo de Chocolate', 6.00, 30);

-- Inserindo dados na tabela pedidos
INSERT INTO pedidos (produto_id, quantidade, data) VALUES
(1, 2, '2025-06-28'),
(2, 1, '2025-06-27'),
(3, 3, '2025-06-26');
