-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 02:34 PM
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
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `nama_pasien` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('06e7890b-af9d-4458-a0bb-270fbc22ca29', '32434234', 'Cinat', 'L', 'Jl. Cinta', '235354646'),
('2cf298db-3e74-4642-b61f-31144a761bf6', '51712392002', 'dodol', 'L', 'Jl. Dodol', '0899787878'),
('2e15f37a-f63b-4840-b774-9d4991679ae0', '67623323', 'Ike', 'P', 'Jl. Ike', '086472323987'),
('6f15e393-235f-4f86-a58d-a4d317e9b3e4', '24343424', 'Koni', 'P', 'Jl. Koni', '03284237493'),
('7825ab50-8454-4c2a-b0c1-227231dcbf4b', '09283490284', 'nona', 'P', 'Jl Nona', '4545646565'),
('7c44cf81-9b2b-4340-8d87-8e53f5839d39', '32564524', 'Loli', 'P', 'Jl. Loli', '07343243434'),
('9d4a2a51-01ea-4ea3-a827-72c609247c72', '304353', 'inaa', 'L', 'Jl Inaa', '302842384093'),
('e2a71143-7842-4c47-9d88-cc56e84058d8', '3254645657', 'Indah', 'P', 'Jl. Indah', '0734343675'),
('fa81353f-85ca-401c-b02a-4a1af7f8b2e0', '4223432', 'Kuli', 'L', 'Jl. Kuli bangunan', '5345345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
