-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 02:33 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('40409c1a-dc24-4843-89a8-0ca907affc25', 'Pusingg', 'Pusing'),
('4385b08b-dec0-11e8-8f46-3065ec3048a3', 'Bodrex', 'Obat Panas'),
('4e644015-dec0-11e8-8f46-3065ec3048a3', 'Tolak Angin', 'Obat Masuk angin'),
('64db66e1-968b-4670-8c88-9c8256a03b98', 'Mixagrip', 'Penyakit'),
('68f56d72-deb7-11e8-8f46-3065ec3048a3', 'Paracetamol', 'Panas'),
('a3bbbc4b-81d6-464a-ae66-5325cc635c35', 'Syahwat', 'Strong'),
('d6e5c988-1312-4ff8-95d6-af6863e3c2e9', 'Paramex', 'Batuk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
