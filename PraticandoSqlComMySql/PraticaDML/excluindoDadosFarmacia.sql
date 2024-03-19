USE farmacia;

-- Apagando dados 
SELECT * FROM produtos_compra;

SELECT * FROM receitas_medica;

DELETE FROM receitas_medica WHERE id_produto_venda = 3;

DELETE FROM produtos_compra WHERE id = 3;