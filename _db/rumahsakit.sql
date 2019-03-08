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
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('3923c778-c1b9-44a1-a7ac-4141c7832752', 'Dr. Obat', 'membuat Parah', 'Jl, Menuju rumah sakit', '8988775765'),
('392ab91a-3cbf-4ac3-ba61-f74f2844b217', 'Dr. Penyakit', 'Membuat Sembuh', 'Jl. Menuju Penyakit', '90283092803'),
('42d95bcc-c28a-4ff6-b955-5fc46a4fa95d', 'Dr. Penyembuh', 'Membuat Nambah Sakit', 'Jl. Menuju Penyebuh penyakit', '897283723');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('49b6f554-7883-421f-97e5-c0a34b2d51bd', 'Poli 3A', 'K.Lt.VIV'),
('82e590d4-5193-4929-a81a-6db7334514a2', 'Poli 1', 'G.Lt.2'),
('83d14079-259b-4658-9008-31fb6c361371', 'Poli 2V', 'L.Lt.VV'),
('d58f52a3-c549-475b-9a22-bacedd2f1869', 'Poli 2', 'G.Lt.3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(8) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('00dd5291-de9c-11e8-8f46-3065ec3048a3', 'Bangaz', 'bangaz', '07e8f42d179f1f8dff90c3bf3904961b42cd50d2', '2'),
('eee81eaf-de9b-11e8-8f46-3065ec3048a3', 'bangdz', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
