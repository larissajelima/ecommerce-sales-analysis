-- Objetivo: criar ranking de clientes por valor gerado

WITH perfil AS (
    SELECT
        cliente_id,
        SUM(valor_total) AS total_gasto
    FROM pedidos
    GROUP BY cliente_id
)
SELECT
    cliente_id,
    total_gasto,
    ROW_NUMBER() OVER (ORDER BY total_gasto DESC) AS ranking_cliente
FROM perfil
ORDER BY total_gasto DESC;
