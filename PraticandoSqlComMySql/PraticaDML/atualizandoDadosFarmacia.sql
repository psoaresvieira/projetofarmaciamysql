USE farmacia;

-- Atualizando dados
SELECT * FROM produtos;
UPDATE produtos SET preco = '4.16', id_tipo = 1, id_fabricante = 1 WHERE id = 2;

UPDATE produtos_compra SET quantidade = 6 WHERE id = 2;

SELECT * FROM produtos_compra;