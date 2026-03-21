-- Objetivo: analisar concentração de receita por cliente (regra 80/20)

WITH perfil AS (
    SELECT
        cliente_id,
        SUM(valor_total) AS total_gasto
    FROM pedidos
    GROUP BY cliente_id
),
ordenado AS (
    SELECT
        cliente_id,
        total_gasto,
        SUM(total_gasto) OVER () AS faturamento_total,
        SUM(total_gasto) OVER (ORDER BY total_gasto DESC) AS faturamento_acumulado
    FROM perfil
)
SELECT
    cliente_id,
    total_gasto,
    faturamento_acumulado,
    ROUND(faturamento_acumulado * 100.0 / faturamento_total, 2) AS percentual_acumulado,
    CASE 
        WHEN (faturamento_acumulado * 100.0 / faturamento_total) <= 80 THEN 'top_80_percent'
        ELSE 'restante'
    END AS grupo_pareto
FROM ordenado
ORDER BY total_gasto DESC;
