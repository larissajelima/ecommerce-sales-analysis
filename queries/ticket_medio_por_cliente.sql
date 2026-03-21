-- Objetivo: calcular o ticket médio por cliente

WITH perfil AS (
    SELECT
        cliente_id,
        COUNT(*) AS quantidade_pedidos,
        SUM(valor_total) AS total_gasto
    FROM pedidos
    GROUP BY cliente_id
)
SELECT
    cliente_id,
    quantidade_pedidos,
    total_gasto,
    ROUND(total_gasto * 1.0 / quantidade_pedidos, 2) AS ticket_medio_cliente
FROM perfil;
