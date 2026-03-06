SELECT 
cliente_id,
SUM(valor_total) AS total_gasto
FROM pedidos
GROUP BY cliente_id
ORDER BY total_gasto DESC
LIMIT 5;