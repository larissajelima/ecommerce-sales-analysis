-- Objetivo: analisar valor e comportamento dos clientes
-- Métricas: quantidade de pedidos, total gasto, ticket médio, ranking e classificação

WITH perfil AS (
    SELECT
        cliente_id,
        COUNT(*) AS quantidade_pedidos,
        SUM(valor_total) AS total_gasto,
        ROUND(SUM(valor_total) * 1.0 / COUNT(*), 2) AS ticket_medio_cliente
    FROM pedidos
    GROUP BY cliente_id
)
SELECT
    cliente_id,
    quantidade_pedidos,
    total_gasto,
    ticket_medio_cliente,
    ROW_NUMBER() OVER (ORDER BY total_gasto DESC) AS ranking_cliente,
    CASE 
        WHEN total_gasto >= 600 THEN 'alto_valor'
        WHEN total_gasto >= 300 THEN 'medio_valor'
        ELSE 'baixo_valor'
    END AS categoria_cliente
FROM perfil
ORDER BY total_gasto DESC;
