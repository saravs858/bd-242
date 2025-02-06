-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 05/02/2025 às 18:22
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydatabase`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `id` int NOT NULL,
  `nome` text,
  `nome_ultimo` varchar(100) DEFAULT NULL,
  `nome_primeiro` varchar(100) DEFAULT NULL,
  `telefone` text,
  `endereco_pt1` varchar(255) DEFAULT NULL,
  `endereco_pt2` varchar(255) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `limite_credito` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_CLIENTES`
--

INSERT INTO `TB_CLIENTES` (`id`, `nome`, `nome_ultimo`, `nome_primeiro`, `telefone`, `endereco_pt1`, `endereco_pt2`, `cidade`, `estado`, `codigo_postal`, `pais`, `funcionario_id`, `limite_credito`) VALUES
(1, 'Brenno Nogueira da Silva', 'Silva', 'Brenno', '85998765432', 'Av. Beira-Mar, 1500', 'Sala 306', 'Fortaleza', 'CE', '60165-121', 'Brasil', 1, 50000),
(2, 'Leandro Teofilo Barbosa', 'Barbosa', 'Leandro', '11987654321', 'Rua das Rosas, 250', 'Apto 102', 'São Paulo', 'SP', '04563-002', 'Brasil', 2, 25000),
(3, 'Pedro Lucas Liam', 'Liam', 'Pedro', '31998543210', 'Av. do Contorno, 6500', 'Loja 12', 'Belo Horizonte', 'MG', '30110-929', 'Brasil', 3, 75000),
(4, 'Carla Moda Feminina', 'Santos', 'Carla', '21998765432', 'Rua das Acácias, 100', 'Loja 3', 'Rio de Janeiro', 'RJ', '22640-100', 'Brasil', 4, 30000),
(5, 'Fernandes Supermercado', 'Fernandes', 'Ricardo', '71987432109', 'Av. Paralela, 1234', 'Centro Comercial', 'Salvador', 'BA', '41820-770', 'Brasil', 5, 100000),
(6, 'Oliveira Construções', 'Oliveira', 'Thiago', '41987654321', 'Rua XV de Novembro, 500', 'Sala 204', 'Curitiba', 'PR', '80420-090', 'Brasil', 6, 90000),
(7, 'Juliana Beauty Center', 'Mendes', 'Juliana', '81998765432', 'Rua Padre Carapuceiro, 777', 'Sala 303', 'Recife', 'PE', '51020-280', 'Brasil', 7, 45000),
(8, 'Tech Solutions LTDA', 'Costa', 'Mariana', '51998765432', 'Rua 24 de Outubro, 1111', 'Sala 304', 'Porto Alegre', 'RS', '90510-002', 'Brasil', 8, 150000),
(9, 'Lucas Informática', 'Pereira', 'Lucas', '85999876543', 'Av. Santos Dumont, 1592', 'Sala 503', 'Fortaleza', 'CE', '60140-160', 'Brasil', 1, 55000),
(10, 'Elo Comércio Internacional', 'Martins', 'Paula', '11988765432', 'Rua Gomes de Carvalho, 1507', '10º Andar', 'São Paulo', 'SP', '04547-005', 'Brasil', 2, 200000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHES_PEDIDO`
--

CREATE TABLE `TB_DETALHES_PEDIDO` (
  `pedido_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `quantidade_pedida` int DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `numero_linha_pedido` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_DETALHES_PEDIDO`
--

INSERT INTO `TB_DETALHES_PEDIDO` (`pedido_id`, `produto_id`, `quantidade_pedida`, `preco_unitario`, `numero_linha_pedido`) VALUES
(2, 2, 3, 5.99, 1),
(2, 8, 1, 2599.99, 2),
(3, 3, 2, 299.99, 1),
(3, 4, 1, 119.99, 2),
(4, 7, 1, 4299.99, 1),
(4, 9, 1, 399.99, 2),
(5, 5, 1, 149.99, 2),
(5, 11, 1, 699.99, 1),
(6, 10, 2, 119.99, 2),
(6, 12, 1, 349.99, 1),
(7, 3, 1, 5999.99, 2),
(7, 13, 1, 2599.99, 1),
(8, 6, 1, 399.99, 1),
(8, 12, 1, 349.99, 2),
(9, 2, 1, 2599.99, 2),
(9, 14, 1, 1899.99, 1),
(10, 8, 1, 1299.99, 2),
(10, 15, 1, 49.99, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `id` int NOT NULL,
  `cidade` text,
  `phone` text,
  `endereco_pt1` text,
  `endereco_pt2` text,
  `estado` text,
  `pais` text,
  `codigo_postal` text,
  `territorio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_ESCRITORIOS`
--

INSERT INTO `TB_ESCRITORIOS` (`id`, `cidade`, `phone`, `endereco_pt1`, `endereco_pt2`, `estado`, `pais`, `codigo_postal`, `territorio`) VALUES
(1, 'Fortaleza', '998751234', 'Fortaleza, Aldeota', 'Av. Santos Dumont, 1592, 5° andar, sala 503', 'Ceará', 'Brasil', '60140-160', 'Região Litorânea do Município de Fortaleza'),
(2, 'São Paulo', '11988765432', 'São Paulo, Vila Olímpia', 'Rua Gomes de Carvalho, 1507, 10º andar', 'São Paulo', 'Brasil', '04547-005', 'Região Sudeste'),
(3, 'Rio de Janeiro', '21998712345', 'Rio de Janeiro, Barra da Tijuca', 'Av. das Américas, 5000, Bloco 6, Sala 303', 'Rio de Janeiro', 'Brasil', '22640-100', 'Região Metropolitana do Rio de Janeiro'),
(4, 'Recife', '81998765432', 'Recife, Boa Viagem', 'Rua Padre Carapuceiro, 777, 3º andar', 'Pernambuco', 'Brasil', '51020-280', 'Região Metropolitana de Recife'),
(5, 'Curitiba', '41987654321', 'Curitiba, Batel', 'Av. do Batel, 1868, Sala 202', 'Paraná', 'Brasil', '80420-090', 'Região Sul'),
(6, 'Salvador', '71987432109', 'Salvador, Caminho das Árvores', 'Rua Alceu Amoroso Lima, 470, Sala 805', 'Bahia', 'Brasil', '41820-770', 'Região Metropolitana de Salvador'),
(7, 'Belo Horizonte', '31987654321', 'Belo Horizonte, Savassi', 'Av. do Contorno, 6594, Sala 402', 'Minas Gerais', 'Brasil', '30110-929', 'Região Sudeste'),
(8, 'Porto Alegre', '51998765432', 'Porto Alegre, Moinhos de Vento', 'Rua 24 de Outubro, 1111, Sala 304', 'Rio Grande do Sul', 'Brasil', '90510-002', 'Região Metropolitana de Porto Alegre');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FUNCIONARIOS`
--

CREATE TABLE `TB_FUNCIONARIOS` (
  `id` int NOT NULL,
  `nome_ultimo` varchar(100) DEFAULT NULL,
  `nome_primeiro` varchar(100) DEFAULT NULL,
  `extensao` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `escritorio_id` int DEFAULT NULL,
  `relatorios_para_funcionario_id` int DEFAULT NULL,
  `trabalho` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_FUNCIONARIOS`
--

INSERT INTO `TB_FUNCIONARIOS` (`id`, `nome_ultimo`, `nome_primeiro`, `extensao`, `email`, `escritorio_id`, `relatorios_para_funcionario_id`, `trabalho`) VALUES
(1, 'Fechine', 'Basilio', '530', 'bfechine@gmail.com', 2, NULL, 'Gerente de Vendas'),
(2, 'Nascimento', 'Ismael', '780', 'ismael.nascimento@gmail.com', 1, 1, 'Analista de Suporte'),
(3, 'Silva', 'Ana', '300', 'ana.silva@empresa.com', 3, 2, 'Coordenadora de Marketing'),
(4, 'Oliveira', 'Roberto', '400', 'roberto.oliveira@empresa.com', 4, 1, 'Analista de Finanças'),
(5, 'Santos', 'Mariana', '720', 'mariana.santos@empresa.com', 2, NULL, 'Especialista em Recursos Humanos'),
(6, 'Pereira', 'Lucas', '980', 'lucas.pereira@empresa.com', 5, 4, 'Desenvolvedor Full Stack'),
(7, 'Melo', 'Juliana', '150', 'juliana.melo@empresa.com', 6, 3, 'Analista de Dados'),
(8, 'Costa', 'Fernanda', '540', 'fernanda.costa@empresa.com', 7, NULL, 'Gerente de Projetos'),
(9, 'Lima', 'Ricardo', '810', 'ricardo.lima@empresa.com', 8, 5, 'Consultor Comercial'),
(10, 'Martins', 'Camila', '210', 'camila.martins@empresa.com', 1, 3, 'Design UX/UI'),
(11, 'Alves', 'Bruno', '350', 'bruno.alves@empresa.com', 4, 6, 'Analista de Infraestrutura'),
(12, 'Sousa', 'Paulo', '620', 'paulo.sousa@empresa.com', 2, 7, 'Engenheiro de Software');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHAS_PRODUTOS`
--

CREATE TABLE `TB_LINHAS_PRODUTOS` (
  `id` int NOT NULL,
  `descricao` text,
  `descricao_html` longtext,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_LINHAS_PRODUTOS`
--

INSERT INTO `TB_LINHAS_PRODUTOS` (`id`, `descricao`, `descricao_html`, `image`) VALUES
(1, 'Eletrodomésticos', '<p>Produtos para facilitar sua vida na cozinha e no lar</p>', 'eletrodomesticos.jpg'),
(2, 'Móveis', '<p>Design moderno e conforto para sua casa</p>', 'moveis.jpg'),
(3, 'Eletrônicos', '<p>As melhores opções em tecnologia para você</p>', 'eletronicos.jpg'),
(4, 'Moda', '<p>Roupas e acessórios com estilo para todas as ocasiões</p>', 'moda.jpg'),
(5, 'Beleza e Cuidados Pessoais', '<p>Produtos para você se cuidar e se sentir bem</p>', 'beleza_cuidados.jpg'),
(6, 'Esporte e Lazer', '<p>Equipamentos e acessórios para suas atividades favoritas</p>', 'esporte_lazer.jpg'),
(7, 'Alimentos e Bebidas', '<p>Variedade e qualidade para sua alimentação</p>', 'alimentos_bebidas.jpg'),
(8, 'Automotivo', '<p>Peças e acessórios para cuidar do seu veículo</p>', 'automotivo.jpg'),
(9, 'Brinquedos', '<p>Diversão garantida para crianças de todas as idades</p>', 'brinquedos.jpg'),
(10, 'Pet Shop', '<p>Cuidados e acessórios para o bem-estar do seu pet</p>', 'pet_shop.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PAGAMENTOS`
--

INSERT INTO `TB_PAGAMENTOS` (`id`, `cliente_id`, `data_pagamento`, `valor`) VALUES
(1, 2, '2025-01-10', 2999.99),
(2, 1, '2024-12-28', 5999.99),
(4, 5, '2025-01-09', 799.99),
(5, 3, '2025-01-12', 4299.99),
(6, 7, '2025-01-15', 119.99),
(7, 4, '2024-12-20', 1299.99),
(8, 6, '2024-12-30', 3499.99),
(9, 9, '2024-12-18', 2499.99),
(10, 8, '2024-12-22', 499.99);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDOS`
--

CREATE TABLE `TB_PEDIDOS` (
  `id` int NOT NULL,
  `data_pedido` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `status` text,
  `comentarios` text,
  `cliente_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PEDIDOS`
--

INSERT INTO `TB_PEDIDOS` (`id`, `data_pedido`, `data_entrega`, `data_envio`, `status`, `comentarios`, `cliente_id`) VALUES
(1, '2024-12-27', '2025-01-10', '2025-01-02', 'A caminho', 'O produto está com leve risco no canto inferior esquerdo, mas nada que interfira no seu funcionamento.', 2),
(2, '2024-12-15', '2024-12-28', '2024-12-20', 'Entregue', 'O pedido chegou antes do prazo estimado e em ótimas condições.', 1),
(3, '2025-01-05', '2025-01-12', '2025-01-07', 'Processando', 'Aguardando confirmação de pagamento.', 3),
(4, '2024-12-30', '2025-01-08', '2025-01-03', 'Cancelado', 'Cliente solicitou cancelamento após atraso no envio.', 4),
(5, '2024-12-18', '2024-12-29', '2024-12-23', 'Entregue', 'Produto entregue sem problemas.', 5),
(6, '2024-12-21', '2025-01-03', '2024-12-26', 'A caminho', 'Enviado após pequena alteração no endereço.', 6),
(7, '2025-01-01', '2025-01-09', '2025-01-04', 'Processando', 'Enviado com desconto especial para cliente premium.', 7),
(8, '2024-11-20', '2024-11-28', '2024-11-25', 'Entregue', 'Produto conforme descrito, sem danos.', 8),
(9, '2024-12-10', '2024-12-18', '2024-12-15', 'Entregue', 'Pedido entregue no prazo, muito satisfeito.', 9),
(10, '2024-11-30', '2024-12-12', '2024-12-05', 'A caminho', 'Pedido em trânsito, sem atualizações de status.', 10),
(11, '2024-12-14', '2024-12-23', '2024-12-19', 'Entregue', 'Produto chegou em perfeito estado, excelente!', 6),
(12, '2024-12-23', '2024-12-30', '2024-12-25', 'Cancelado', 'Cliente solicitou alteração no pedido.', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `id` int NOT NULL,
  `nome` text,
  `linha_produto_id` int DEFAULT NULL,
  `escala` text,
  `fornecedor` text,
  `descricao` text,
  `quantidade_estoque` int DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `msrp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUTOS`
--

INSERT INTO `TB_PRODUTOS` (`id`, `nome`, `linha_produto_id`, `escala`, `fornecedor`, `descricao`, `quantidade_estoque`, `preco`, `msrp`) VALUES
(1, 'Geladeira Frost Free 400L', 1, '1:1', 'Electrolux', 'Geladeira com compartimento extra frio e prateleiras ajustáveis', 50, 2999.99, 3499.99),
(2, 'Tomate cereja', 6, '1:1', 'Tomates Agro Familiar', 'Tomate cereja direto da agricultura familiar, todos fresquinhos', 234, 5.99, 8.99),
(3, 'Bola de Futebol Oficial', 6, '1:1', 'Adidas', 'Bola aprovada para competições oficiais', 75, 299.99, 399.99),
(4, 'Ração Premium para Gatos 3kg', 10, '1:1', 'Purina', 'Alimentação completa e balanceada para gatos adultos', 400, 119.99, 159.99),
(5, 'Smartphone Galaxy S22', 3, '1:1', 'Samsung', 'Celular de última geração com câmera avançada e tela AMOLED', 100, 5999.99, 6499.99),
(6, 'Iphone 16', 3, '1:1', 'Apple', 'Celular de última geração com câmera avançada', 100, 8999.99, 9999.99),
(7, 'Notebook Dell Inspiron 15', 3, '1:1', 'Dell', 'Notebook potente com tela de 15.6 polegadas Full HD', 80, 4299.99, 4799.99),
(8, 'Cafeteira Expresso Automática', 1, '1:1', 'Philco', 'Cafeteira expresso com várias opções de bebidas', 45, 999.99, 1299.99),
(9, 'Sofá 3 Lugares Reclinável', 2, '1:1', 'Tok&Stok', 'Sofá confortável com revestimento premium', 30, 2599.99, 3199.99),
(10, 'Fritadeira Air Fryer 4L', 1, '1:1', 'Mondial', 'Fritadeira sem óleo com capacidade para 4 litros', 100, 399.99, 499.99),
(11, 'Tênis de Corrida Performance BR1', 6, '1:1', 'Olympicos', 'Tênis leve e confortável para alto desempenho', 150, 699.99, 849.99),
(12, 'Relógio Inteligente Fitband', 3, '1:1', 'Xiaomi', 'Smartwatch com monitoramento de atividades e batimentos cardíacos', 120, 349.99, 449.99),
(13, 'Mesa de Jantar Madeira Maciça', 2, '1:1', 'Casatema', 'Mesa resistente com design elegante para 6 lugares', 20, 1899.99, 2499.99),
(14, 'Perfume Masculino 100ml', 5, '1:1', 'Boticário', 'Fragrância elegante e duradoura para todas as ocasiões', 200, 149.99, 199.99),
(15, 'Creme Hidratante Corporal 200ml', 5, '1:1', 'Nivea', 'Creme hidratante para pele macia e suave', 500, 29.99, 39.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`);

--
-- Índices de tabela `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD PRIMARY KEY (`pedido_id`,`produto_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `escritorio_id` (`escritorio_id`),
  ADD KEY `relatorios_para_funcionario_id` (`relatorios_para_funcionario_id`);

--
-- Índices de tabela `TB_LINHAS_PRODUTOS`
--
ALTER TABLE `TB_LINHAS_PRODUTOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`id`,`cliente_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linha_produto_id` (`linha_produto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `TB_LINHAS_PRODUTOS`
--
ALTER TABLE `TB_LINHAS_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD CONSTRAINT `TB_CLIENTES_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `TB_FUNCIONARIOS` (`id`);

--
-- Restrições para tabelas `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD CONSTRAINT `TB_DETALHES_PEDIDO_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `TB_PEDIDOS` (`id`),
  ADD CONSTRAINT `TB_DETALHES_PEDIDO_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `TB_PRODUTOS` (`id`);

--
-- Restrições para tabelas `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD CONSTRAINT `TB_FUNCIONARIOS_ibfk_1` FOREIGN KEY (`escritorio_id`) REFERENCES `TB_ESCRITORIOS` (`id`),
  ADD CONSTRAINT `TB_FUNCIONARIOS_ibfk_2` FOREIGN KEY (`relatorios_para_funcionario_id`) REFERENCES `TB_FUNCIONARIOS` (`id`);

--
-- Restrições para tabelas `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD CONSTRAINT `TB_PAGAMENTOS_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD CONSTRAINT `TB_PEDIDOS_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD CONSTRAINT `TB_PRODUTOS_ibfk_1` FOREIGN KEY (`linha_produto_id`) REFERENCES `TB_LINHAS_PRODUTOS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
