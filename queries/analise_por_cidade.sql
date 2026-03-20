-- Objetivo: analisar o desempenho de vendas por cidade
-- Métricas: faturamento total, quantidade de pedidos, ticket médio e participação no faturamento geral

WITH faturamento_cidade AS (
    SELECT
        c.cidade,
        COUNT(p.pedido_id) AS quantidade_pedidos,
        SUM(p.valor_total) AS faturamento_total,
        ROUND(AVG(p.valor_total), 2) AS ticket_medio
    FROM clientes c
    JOIN pedidos p
        ON c.cliente_id = p.cliente_id
    GROUP BY c.cidade
),
total_geral AS (
    SELECT
        SUM(valor_total) AS faturamento_geral
    FROM pedidos
)
SELECT
    fc.cidade,
    fc.quantidade_pedidos,
    ROUND(fc.faturamento_total, 2) AS faturamento_total,
    fc.ticket_medio,
    ROUND((fc.faturamento_total * 100.0 / tg.faturamento_geral), 2) AS participacao_percentual
FROM faturamento_cidade fc
CROSS JOIN total_geral tg
ORDER BY fc.faturamento_total DESC;
