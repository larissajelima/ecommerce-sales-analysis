-- Objetivo: identificar os clientes com maior faturamento

SELECT
    c.cliente_id,
    c.nome,
    SUM(p.valor_total) AS faturamento_total
FROM clientes c
JOIN pedidos p
    ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nome
ORDER BY faturamento_total DESC;
