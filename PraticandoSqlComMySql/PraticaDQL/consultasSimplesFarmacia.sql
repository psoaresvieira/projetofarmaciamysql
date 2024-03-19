USE farmacia;
# Realizando consultas simples

-- Tipos Produtos
SELECT * FROM tipos_produto;
SELECT id, tipo FROM tipos_produto;
SELECT id, tipo FROM tipos_produto ORDER BY id DESC;

-- Produtos 
SELECT * FROM produtos WHERE preco > 100;

-- Fabricantes 
SELECT * FROM fabricantes;
SELECT id, fabricante FROM fabricantes ORDER BY fabricante;
-- Médicos 
SELECT * FROM medicos;
SELECT crm, nome FROM medicos ORDER BY crm;

-- Clientes
SELECT * FROM clientes;
SELECT nome, localidade FROM clientes ORDER BY localidade DESC;

-- Vendas
SELECT * FROM vendas;
SELECT id, id_cliente FROM vendas ORDER BY id;

-- Produtos Compra
SELECT * FROM produtos_compra;
SELECT id, quantidade FROM produtos_compra ORDER BY quantidade;
SELECT * FROM produtos_compra WHERE quantidade > 2;

-- Receitas Médica
SELECT * FROM receitas_medica;
SELECT * FROM receitas_medica WHERE id_medico = 1;