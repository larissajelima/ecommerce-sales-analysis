WITH faturamento AS (
SELECT 
data_pedido,
SUM(valor_total) AS faturamento_dia
FROM pedidos
GROUP BY data_pedido
)

SELECT
data_pedido,
faturamento_dia,
SUM(faturamento_dia) OVER (ORDER BY data_pedido) AS faturamento_acumulado
FROM faturamento;