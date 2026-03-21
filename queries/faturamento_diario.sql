-- Objetivo: calcular o faturamento total por dia

SELECT
    data_pedido,
    ROUND(SUM(valor_total), 2) AS faturamento_diario
FROM pedidos
GROUP BY data_pedido
ORDER BY data_pedido;
