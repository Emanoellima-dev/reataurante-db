CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  email VARCHAR(255) NOT NULL
);

-- Tabela de mesas
CREATE TABLE mesas (
  id_mesa SERIAL PRIMARY KEY,
  capacidade INTEGER NOT NULL,
  disponibilidade BOOLEAN NOT NULL
);

-- Tabela de pedidos
CREATE TABLE pedidos (
  id_pedido SERIAL PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_mesa INT,
  data_pedido TIMESTAMP NOT NULL,
  status_pedido VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY (id_mesa) REFERENCES mesas(id_mesa)
);

-- Tabela de itens do menu
CREATE TABLE itens_menu (
  id_item SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de pedidos de itens do menu
CREATE TABLE pedidos_itens_menu (
  id_pedido INT NOT NULL PRIMARY KEY,
  id_item INT NOT NULL,
  quantidade INT NOT NULL,
  preco_unitario DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
  FOREIGN KEY (id_item) REFERENCES itens_menu(id_item)
);

-- tabela clientes
INSERT INTO clientes (nome, telefone, email) VALUES
('João Silva', '(11) 99999-1234', 'joao.silva@email.com'),
('Maria Santos', '(21) 98888-5678', 'maria.santos@email.com'),
('Carlos Oliveira', '(31) 97777-9012', 'carlos.oliveira@email.com'),
('Ana Pereira', '(19) 99666-3456', 'ana.pereira@email.com'),
('Pedro Costa', '(27) 98555-7890', 'pedro.costa@email.com'),
('Juliana Almeida', '(85) 97444-1234', 'juliana.almeida@email.com'),
('Fernando Souza', '(48) 96333-5678', 'fernando.souza@email.com'),
('Camila Rocha', '(51) 95222-9012', 'camila.rocha@email.com'),
('Lucas Lima', '(61) 94111-3456', 'lucas.lima@email.com'),
('Amanda Mendes', '(62) 93000-7890', 'amanda.mendes@email.com'),
('Rafael Gonçalves', '(67) 92999-1234', 'rafael.goncalves@email.com'),
('Patrícia Nunes', '(98) 91888-5678', 'patricia.nunes@email.com'),
('Marcos Ribeiro', '(99) 90777-9012', 'marcos.ribeiro@email.com'),
('Isabela Castro', '(83) 89666-3456', 'isabela.castro@email.com'),
('Gustavo Martins', '(81) 88555-7890', 'gustavo.martins@email.com'),
('Letícia Carvalho', '(84) 87444-1234', 'leticia.carvalho@email.com'),
('Roberto Fernandes', '(79) 86333-5678', 'roberto.fernandes@email.com'),
('Tatiane Araújo', '(73) 85222-9012', 'tatiane.araujo@email.com'),
('Diego Correia', '(71) 84111-3456', 'diego.correia@email.com'),
('Mariana Cardoso', '(68) 83000-7890', 'mariana.cardoso@email.com');

-- tabela itens_menu
INSERT INTO itens_menu (nome, descricao, preco) VALUES
('Pizza Margherita', 'Pizza clássica com molho de tomate, mussarela e manjericão.', 45.00),
('Hambúrguer Artesanal', 'Hambúrguer de carne bovina, queijo cheddar, alface e tomate.', 30.00),
('Sushi Sashimi', 'Sashimi de salmão fresco, servido com molho shoyu e wasabi.', 60.00),
('Lasanha à Bolonhesa', 'Lasanha com molho à bolonhesa e queijo gratinado.', 35.00),
('Salada Caesar', 'Salada com alface romana, croutons, queijo parmesão e molho Caesar.', 25.00),
('Frango Grelhado', 'Filé de frango grelhado, servido com arroz e legumes.', 28.00),
('Risoto de Cogumelos', 'Risoto cremoso com cogumelos frescos e queijo parmesão.', 40.00),
('Bife à Parmegiana', 'Bife empanado com molho de tomate e queijo derretido.', 38.00),
('Tacos Mexicanos', 'Tacos de carne moída, alface, queijo e molho picante.', 22.00),
('Sopa de Cebola', 'Sopa de cebola gratinada com queijo derretido.', 18.00),
('Carpaccio de Carne', 'Finas fatias de carne crua, temperadas com azeite e parmesão.', 50.00),
('Macarrão Carbonara', 'Macarrão com molho à base de ovos, queijo parmesão e bacon.', 32.00),
('Peixe Grelhado', 'Filé de peixe grelhado, acompanhado de purê de batatas.', 42.00),
('Ceviche de Camarão', 'Camarão marinado em limão, cebola roxa e coentro.', 48.00),
('Feijoada Completa', 'Feijoada com linguiça, carne seca e acompanhamentos.', 55.00),
('Tiramisu', 'Sobremesa italiana com café, mascarpone e biscoitos.', 20.00),
('Cheesecake de Morango', 'Cheesecake com calda de morango.', 18.00),
('Sorvete Artesanal', 'Sorvete de baunilha, chocolate ou morango.', 12.00),
('Água Mineral', 'Água mineral sem gás.', 5.00),
('Refrigerante', 'Refrigerante de cola, guaraná ou laranja.', 8.00);

-- tabela mesas
INSERT INTO mesas (capacidade, disponibilidade) VALUES
(2, TRUE),
(4, TRUE),
(6, FALSE),
(4, TRUE),
(2, TRUE),
(4, FALSE),
(6, TRUE),
(8, TRUE),
(4, FALSE),
(4, TRUE),
(2, FALSE),
(4, TRUE),
(6, TRUE),
(4, TRUE),
(4, FALSE),
(2, TRUE),
(10, TRUE),
(4, TRUE),
(6, FALSE),
(4, TRUE);

-- tabela pedidos
INSERT INTO pedidos (id_cliente, id_mesa, data_pedido, status_pedido) VALUES
(3, 2, '2024-03-15 18:30:00', 'Concluído'),
(7, NULL, '2024-03-20 19:15:00', 'Em andamento'),
(12, 5, '2024-02-28 13:45:00', 'Concluído'),
(19, 7, '2024-04-10 20:00:00', 'Cancelado'),
(5, 1, '2024-01-05 12:00:00', 'Concluído'),
(14, 9, '2024-03-01 14:20:00', 'Concluído'),
(8, NULL, '2024-04-12 21:30:00', 'Em andamento'),
(2, 4, '2023-12-10 19:45:00', 'Concluído'),
(11, 12, '2024-02-14 20:15:00', 'Concluído'),
(6, 3, '2024-03-30 18:00:00', 'Em andamento'),
(17, NULL, '2024-04-05 19:10:00', 'Cancelado'),
(9, 8, '2024-01-20 13:00:00', 'Concluído'),
(1, 6, '2024-03-25 12:30:00', 'Concluído'),
(4, 10, '2024-02-10 21:00:00', 'Concluído'),
(13, NULL, '2024-04-15 18:45:00', 'Em andamento'),
(20, 15, '2023-11-15 20:30:00', 'Concluído'),
(10, 11, '2024-03-10 14:00:00', 'Concluído'),
(15, NULL, '2024-04-01 19:20:00', 'Cancelado'),
(18, 14, '2024-02-05 19:00:00', 'Concluído'),
(16, 13, '2024-03-05 13:15:00', 'Em andamento'),
(7, 17, '2024-01-12 20:45:00', 'Concluído'),
(3, NULL, '2024-04-14 18:15:00', 'Em andamento'),
(5, 16, '2023-12-25 14:30:00', 'Concluído'),
(12, 19, '2024-03-18 19:30:00', 'Concluído'),
(9, NULL, '2024-04-08 20:10:00', 'Em andamento'),
(14, 18, '2024-02-22 12:45:00', 'Concluído'),
(2, 20, '2024-03-08 21:15:00', 'Cancelado'),
(6, 4, '2024-01-30 13:30:00', 'Concluído'),
(11, NULL, '2024-04-16 19:45:00', 'Em andamento'),
(8, 5, '2024-03-12 18:20:00', 'Concluído');

-- pedidos_itens_menu
INSERT INTO pedidos_itens_menu (id_pedido, id_item, quantidade, preco_unitario) VALUES
(1, 1, 2, 45.00),   -- Pizza Margherita x2
(1, 20, 3, 8.00),    -- Refrigerante x3
(2, 3, 1, 60.00),    -- Sushi Sashimi
(3, 5, 1, 25.00),    -- Salada Caesar
(3, 7, 2, 40.00),    -- Risoto x2
(4, 9, 4, 22.00),    -- Tacos Mexicanos x4
(5, 2, 1, 30.00),    -- Hambúrguer
(6, 15, 1, 55.00),   -- Feijoada
(7, 18, 2, 12.00),   -- Sorvete x2
(8, 12, 1, 32.00),   -- Macarrão Carbonara
(9, 4, 2, 35.00),    -- Lasanha x2
(10, 6, 1, 28.00),   -- Frango Grelhado
(11, 8, 1, 38.00),   -- Bife à Parmegiana
(12, 10, 2, 18.00),  -- Sopa de Cebola x2
(13, 11, 1, 50.00),  -- Carpaccio
(14, 13, 1, 42.00),  -- Peixe Grelhado
(15, 14, 3, 48.00),  -- Ceviche x3
(16, 16, 1, 20.00),  -- Tiramisu
(17, 17, 2, 18.00),  -- Cheesecake x2
(18, 19, 4, 5.00),   -- Água Mineral x4
(19, 1, 1, 45.00),   -- Pizza Margherita
(20, 3, 2, 60.00),   -- Sushi x2
(21, 5, 1, 25.00),   -- Salada Caesar
(22, 7, 1, 40.00),   -- Risoto
(23, 9, 2, 22.00),   -- Tacos x2
(24, 2, 1, 30.00),   -- Hambúrguer
(25, 4, 1, 35.00),   -- Lasanha
(26, 6, 3, 28.00),   -- Frango x3
(27, 8, 1, 38.00),   -- Bife à Parmegiana
(28, 10, 2, 18.00),  -- Sopa de Cebola x2
(29, 12, 1, 32.00),  -- Macarrão Carbonara
(30, 14, 1, 48.00);  -- Ceviche