WITH quantidade_pedidos AS (
    SELECT
        cliente_id,
        COUNT(*) AS quantidade_pedidos
    FROM pedidos
    GROUP BY cliente_id
),
base AS (
    SELECT
        COUNT(*) AS total_clientes,
        SUM(CASE WHEN quantidade_pedidos > 1 THEN 1 ELSE 0 END) AS clientes_recorrentes
    FROM quantidade_pedidos
)
SELECT
    total_clientes,
    clientes_recorrentes,
    ROUND(clientes_recorrentes * 100.0 / total_clientes, 2) AS taxa_recompra_percentual
FROM base;
