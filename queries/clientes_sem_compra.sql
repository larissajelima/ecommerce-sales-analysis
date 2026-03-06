SELECT 
c.cliente_id,
c.nome
FROM clientes c
LEFT JOIN pedidos p
ON c.cliente_id = p.cliente_id
WHERE p.pedido_id IS NULL;