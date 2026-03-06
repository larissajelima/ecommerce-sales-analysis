CREATE TABLE clientes (
cliente_id INT PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(100),
data_cadastro DATE
);

CREATE TABLE pedidos (
pedido_id INT PRIMARY KEY,
cliente_id INT,
data_pedido DATE,
valor_total DECIMAL(10,2),
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);