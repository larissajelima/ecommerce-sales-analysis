WITH cidades AS (
SELECT 
c.cidade,
COUNT(DISTINCT c.cliente_id) AS total_clientes,
COALESCE(SUM(p.valor_total),0) AS faturamento_total,
COALESCE(AVG(p.valor_total),0) AS ticket_medio_cidade
FROM clientes c
LEFT JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.cidade
)

SELECT
cidade,
total_clientes,
faturamento_total,
ticket_medio_cidade,
ROUND(faturamento_total * 100.0 / SUM(faturamento_total) OVER (),2) AS participacao_pct,
RANK() OVER (ORDER BY faturamento_total DESC) AS ranking_faturamento
FROM cidades;