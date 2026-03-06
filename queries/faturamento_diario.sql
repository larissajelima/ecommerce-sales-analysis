SELECT 
data_pedido,
SUM(valor_total) AS faturamento_dia
FROM pedidos
GROUP BY data_pedido
ORDER BY data_pedido;