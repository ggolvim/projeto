-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2024 às 01:17
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `site`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicios`
--

CREATE TABLE `servicios` (
  `Id` bigint(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicios`
--

INSERT INTO `servicios` (`Id`, `tipo`, `descricao`, `preco`) VALUES
(1, 'Depilação com lâmina', 'A depilação com lâmina é um método popular de depilação que consiste em cortar os pelos na superfície da pele. É um método prático, mas pode causar efeitos indesejados, como irritação, alergias, pelos encravados, cortes e ressecamento da pele. ', 200),
(2, 'Creme depilatório', 'é um método de remoção de pelos que consiste em aplicar uma camada do produto na região desejada, aguardar alguns minutos e remover com água e algodão.', 100),
(3, 'Depilação com Cera', 'é um método de remoção de pelos que consiste em aplicar cera na área a ser depilada, colocar uma tira de tecido ou papel por cima e puxá-la rapidamente. ', 150),
(4, 'Massagem com pedras ', 'é uma terapia milenar que consiste em aplicar pedras quentes em pontos estratégicos do corpo para proporcionar relaxamento e alívio de dores. ', 200),
(5, 'Massagem de aromater', 'é uma técnica que consiste na realização de movimentos realizados na pele, com auxílio de óleos essenciais puros, aplicados no local a ser massageado.', 350),
(6, 'Massagem esportiva', 'é uma técnica de massoterapia que pode ser indicada para atletas e pessoas que praticam atividades físicas.', 250);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` bigint(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `servicio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
