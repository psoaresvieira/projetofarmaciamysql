USE farmacia;

# Inserindo dados de teste - DML

-- Tipos Produtos
INSERT INTO tipos_produto (tipo) 
VALUES ('Remedios'),
('Cosmeticos'),
('Diversos');

-- Fabricantes
INSERT INTO fabricantes (fabricante) 
VALUES ('Roche'),
('Vitalis'),
('Palmolive');

-- Medicos
INSERT INTO medicos (nome, crm) 
VALUES ('Alfredo Muniz', '123123SP'),
('Fernanda Ailva', '3423423MG'),
('Julieta Santana', '56546SC');

-- Clientes
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
VALUES ('Felicity Jones','Rua da Paz, 34', '(11) 2345-8899', '34.567-098', 'Santos', '234.789.433-98'),
('Angelina Jolie','Rua do Ipiranga, 456', '(21) 7544-3234', '56.654-567', 'Rio de Janeiro', '345.678.234-12'),
('Ricardo Chavez','Rua Certa, 678', '(21) 2678-3984', '12.4569-223', 'Planaltina', '786.123.445-31');
    
-- Produtos
INSERT INTO produtos (produto, designacao, composicao, preco, id_tipo, id_fabricante) 
VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1, 1),
('Sabonete', 'Limpeza', 'Sei lah', '3.56', 2, 2),
('Protetor Solar', 'Protetor Solar', 'Soro de abacate', '98.12', 2, 1);

-- Vendas
 INSERT INTO vendas (id_cliente, data) 
 VALUES (1, '2019-03-10'),
(2, '2019-04-15'),
(1, '2019-05-18');
 
-- Produtos Compra
INSERT INTO produtos_compra (id_venda, id_produto, quantidade)
VALUES (1, 1, 2),
(1, 2, 3),
(2, 3, 1);

-- Receitas Medicas
INSERT INTO receitas_medica (id_produto_venda, id_medico, receita)
VALUES (1, 1, 'receita1.pdf'),
(3, 2, 'receita2.pdf');

SELECT * FROM produtos;
