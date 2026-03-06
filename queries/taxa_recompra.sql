WITH pedidos_por_cliente AS (
SELECT
cliente_id,
COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY cliente_id
)

SELECT
COUNT(*) AS total_clientes,
SUM(CASE WHEN quantidade_pedidos > 1 THEN 1 ELSE 0 END) AS clientes_recorrentes,
SUM(CASE WHEN quantidade_pedidos > 1 THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS taxa_recompra
FROM pedidos_por_cliente;