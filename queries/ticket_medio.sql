-- Objetivo: calcular o ticket médio geral dos pedidos
-- Métricas: quantidade de pedidos, faturamento total e ticket médio

SELECT
    COUNT(*) AS quantidade_pedidos,
    ROUND(SUM(valor_total), 2) AS faturamento_total,
    ROUND(SUM(valor_total) * 1.0 / COUNT(*), 2) AS ticket_medio
FROM pedidos;
