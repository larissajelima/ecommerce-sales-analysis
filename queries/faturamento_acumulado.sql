-- Objetivo: analisar o faturamento acumulado ao longo do tempo

SELECT
    data_pedido,
    ROUND(SUM(valor_total), 2) AS faturamento_diario,
    ROUND(SUM(SUM(valor_total)) OVER (ORDER BY data_pedido), 2) AS faturamento_acumulado
FROM pedidos
GROUP BY data_pedido
ORDER BY data_pedido;
