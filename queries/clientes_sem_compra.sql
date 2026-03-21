-- Objetivo: identificar clientes cadastrados que nunca realizaram compras

SELECT
    c.cliente_id,
    c.nome,
    c.cidade
FROM clientes c
LEFT JOIN pedidos p
    ON c.cliente_id = p.cliente_id
WHERE p.cliente_id IS NULL;
