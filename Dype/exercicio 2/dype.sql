-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Jan-2018 às 19:04
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dype`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `nome`) VALUES
(1, 'Juciano 01'),
(3, 'Juciano 03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_trabalho`
--

CREATE TABLE `pessoa_trabalho` (
  `id_pessoa_trabalo` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_trabalho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_trabalho`
--

INSERT INTO `pessoa_trabalho` (`id_pessoa_trabalo`, `id_pessoa`, `id_trabalho`) VALUES
(1, 3, 0),
(2, 1, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalho`
--

CREATE TABLE `trabalho` (
  `id_trabalho` int(11) NOT NULL,
  `titulo` varchar(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `hora_cadastro` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trabalho`
--

INSERT INTO `trabalho` (`id_trabalho`, `titulo`, `data_cadastro`, `hora_cadastro`) VALUES
(0, '1', '2017-03-08', '08:00:00'),
(1, '1', '2017-05-08', '08:00:00'),
(2, '2', '2017-06-08', '08:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Indexes for table `pessoa_trabalho`
--
ALTER TABLE `pessoa_trabalho`
  ADD PRIMARY KEY (`id_pessoa_trabalo`);

--
-- Indexes for table `trabalho`
--
ALTER TABLE `trabalho`
  ADD PRIMARY KEY (`id_trabalho`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pessoa_trabalho`
--
ALTER TABLE `pessoa_trabalho`
  MODIFY `id_pessoa_trabalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
