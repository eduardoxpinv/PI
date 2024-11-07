use pi;

INSERT INTO `doador` (`nome`, `pontos`)
VALUES
('Carlos Silva', 50),
('Ana Souza', 30),
('Bruno Oliveira', 20),
('Mariana Costa', 40),
('Pedro Rocha', 60),
('Julia Lima', 45),
('Rafael Moreira', 35),
('Larissa Nunes', 25),
('Fernanda Alves', 55),
('Lucas Martins', 10);

INSERT INTO `brinde` (`doadorID`, `pontosNecessarios`, `descricao`)
VALUES
(1, 100, 'Camiseta personalizada'),
(2, 50, 'Caneca'),
(3, 75, 'Boné exclusivo'),
(4, 150, 'Mochila'),
(5, 200, 'Livro de receitas'),
(6, 60, 'Chaveiro especial'),
(7, 80, 'Poster decorativo'),
(8, 90, 'Copo térmico'),
(9, 70, 'Caderno de anotações'),
(10, 120, 'Ecobag');

INSERT INTO `receptor` (`nome`, `estadoNecessidade`, `idUltimaDoacaoRecebida`, `dataUltimaDoacaoRecebida`)
VALUES
('Paulo Santos', 'Alto', NULL, NULL),
('Renata Lima', 'Médio', NULL, NULL),
('André Silva', 'Baixo', NULL, NULL),
('Juliana Carvalho', 'Alto', NULL, NULL),
('Rodrigo Almeida', 'Médio', NULL, NULL),
('Aline Souza', 'Alto', NULL, NULL),
('Fernanda Martins', 'Baixo', NULL, NULL),
('Carlos Oliveira', 'Médio', NULL, NULL),
('Beatriz Andrade', 'Baixo', NULL, NULL),
('Gabriel Moreira', 'Alto', NULL, NULL);

INSERT INTO `doacao` (`doadorID`, `receptorID`, `tipoItem`, `estadoItem`, `dataDoacao`)
VALUES
(1, 1, 'Alimento', 'Novo', '2023-01-10'),
(2, 2, 'Roupas', 'Usado', '2023-02-15'),
(3, 3, 'Livros', 'Novo', '2023-03-20'),
(4, 4, 'Brinquedos', 'Usado', '2023-04-25'),
(5, 5, 'Alimento', 'Novo', '2023-05-30'),
(6, 6, 'Eletrônicos', 'Usado', '2023-06-05'),
(7, 7, 'Roupas', 'Novo', '2023-07-10'),
(8, 8, 'Livros', 'Usado', '2023-08-15'),
(9, 9, 'Brinquedos', 'Novo', '2023-09-20'),
(10, 10, 'Alimento', 'Usado', '2023-10-25');

INSERT INTO `endereco` (`doadorID`, `receptorID`, `logradouro`, `numero`, `complemento`, `cidade`, `estado`, `bairro`, `cep`)
VALUES
(1, 1, 'Rua das Flores', '123', '', 'São Paulo', 'SP', 'Centro', '12345-678'),
(2, 2, 'Avenida Brasil', '456', 'Apto 10', 'Rio de Janeiro', 'RJ', 'Copacabana', '87654-321'),
(3, 3, 'Rua Amazonas', '789', '', 'Belo Horizonte', 'MG', 'Savassi', '23456-789'),
(4, 4, 'Rua Ceará', '101', 'Casa', 'Recife', 'PE', 'Boa Viagem', '34567-890'),
(5, 5, 'Avenida Paulista', '202', '', 'São Paulo', 'SP', 'Bela Vista', '45678-901'),
(6, 6, 'Rua Bahia', '303', 'Apto 3', 'Curitiba', 'PR', 'Centro', '56789-012'),
(7, 7, 'Rua Pernambuco', '404', '', 'Porto Alegre', 'RS', 'Centro', '67890-123'),
(8, 8, 'Avenida das Américas', '505', 'Sala 5', 'Fortaleza', 'CE', 'Aldeota', '78901-234'),
(9, 9, 'Rua Goiás', '606', '', 'Salvador', 'BA', 'Pituba', '89012-345'),
(10, 10, 'Avenida Amazonas', '707', 'Loja A', 'Manaus', 'AM', 'Centro', '90123-456');

INSERT INTO `contato` (`doadorID`, `receptorID`, `numero`, `email`, `ddd`, `tipo`)
VALUES
(1, 1, '999999999', 'carlos@example.com', '11', 'CEL'),
(2, 2, '988888888', 'ana@example.com', '21', 'RES'),
(3, 3, '977777777', 'bruno@example.com', '31', 'CEL'),
(4, 4, '966666666', 'mariana@example.com', '81', 'RES'),
(5, 5, '955555555', 'pedro@example.com', '11', 'CEL'),
(6, 6, '944444444', 'julia@example.com', '41', 'RES'),
(7, 7, '933333333', 'rafael@example.com', '51', 'CEL'),
(8, 8, '922222222', 'larissa@example.com', '85', 'RES'),
(9, 9, '911111111', 'fernanda@example.com', '71', 'CEL'),
(10, 10, '900000000', 'lucas@example.com', '92', 'RES');


