USE farmacia;
# Consultas Complexas

-- Vendas
-- 1: Trazendo as vendas
SELECT * FROM vendas;
-- 2: Colocar o nome do cliente nas vendas
SELECT v.id AS 'Id Venda', cli.nome AS 'Cliente', v.data AS 'Data Venda'FROM vendas AS v, clientes AS cli WHERE v.id_cliente = cli.id;
-- 3: Trazer o produtos compra
SELECT * FROM produtos_compra;
-- 4: Valor Total Venda
SELECT v.id 'Venda', cli.nome AS 'Cliente',
SUM(prod.preco * pc.quantidade) AS 'Total do Produto Compra',
v.data AS 'Data da venda'
FROM produtos_compra AS pc, produtos AS prod, vendas AS v, clientes AS cli
WHERE v.id = pc.id_venda AND prod.id = pc.id_produto AND cli.id = v.id_cliente
GROUP BY v.id;