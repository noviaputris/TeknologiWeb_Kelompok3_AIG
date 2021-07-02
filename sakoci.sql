-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 12:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakoci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123'),
('noviaps', 'aku123'),
('samsatcimahi', 'terserah12345');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `ID` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID`, `hari`, `jam`, `lokasi`) VALUES
(1, 'Senin', '09.00 - 13.30', 'Kelurahan Melong Blok IV'),
(2, 'Selasa', '09.00 - 13.30', 'Kelurahan Melong Blok IV'),
(3, 'Rabu', '09.00 - 13.30', 'Bundaran HI Leuwigajah'),
(4, 'Kamis', '09.00 - 13.30', 'Kelurahan Melong Blok IV'),
(5, 'Jumat', '09.00 - 11.00', 'Alun-alun Cimahi'),
(6, 'Sabtu', '09.00 - 11.00', 'Kelurahan Melong Blok IV');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` varchar(10) NOT NULL,
  `no_kendaraan` varchar(25) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `tahun_pembuatan` varchar(10) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `no_rangka` varchar(25) NOT NULL,
  `no_mesin` varchar(25) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `warna_tnkb` varchar(25) NOT NULL,
  `no_bpkb` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id`, `no_kendaraan`, `merk`, `tahun_pembuatan`, `tipe`, `jenis`, `no_rangka`, `no_mesin`, `warna`, `warna_tnkb`, `no_bpkb`) VALUES
('D-001', 'D 3061 SAW', 'HONDA', '2016', 'X1B02N04L0', 'SEPEDA MOTOR', 'MH1JFP128GK390320', 'JFP1E23806064', 'HITAM', 'HITAM', '007143003'),
('D-002', 'D 6917 SGG', 'HONDA', '2006', 'NF1000SLD', 'SEPEDA MOTOR', 'MHIB41146K486269', 'HB4EI34C54', 'HITAM', 'HITAM', 'M08401293');

-- --------------------------------------------------------

--
-- Table structure for table `krisar`
--

CREATE TABLE `krisar` (
  `id` int(10) NOT NULL,
  `subjek` varchar(26) NOT NULL,
  `pesan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pajak`
--

CREATE TABLE `pajak` (
  `id` varchar(10) NOT NULL,
  `no_kendaraan` varchar(25) NOT NULL,
  `nama_pemilik` varchar(30) NOT NULL,
  `biaya_pokok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pajak`
--

INSERT INTO `pajak` (`id`, `no_kendaraan`, `nama_pemilik`, `biaya_pokok`) VALUES
('P-001', 'D 3061 SAW', 'Erik Von D. Einzbern', 189000),
('P-002', 'D 6917 SGG', 'Ceu Edoh', 147000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_kendaraan`);

--
-- Indexes for table `krisar`
--
ALTER TABLE `krisar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kendaraan` (`no_kendaraan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pajak`
--
ALTER TABLE `pajak`
  ADD CONSTRAINT `pajak_ibfk_1` FOREIGN KEY (`no_kendaraan`) REFERENCES `kendaraan` (`no_kendaraan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
