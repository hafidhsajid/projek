-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2020 at 05:05 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `idPelamar` int(11) NOT NULL,
  `idPosisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `idPelamar`, `idPosisi`) VALUES
(1, 1, 1),
(18, 82, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomerhp` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `dataCV` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`id`, `nama`, `nomerhp`, `email`, `message`, `dataCV`) VALUES
(1, 'hafidhsajid', '089999999', '', NULL, ''),
(4, 'nama', '089999', 'email@email.com', 'null', 'tset'),
(19, 'asdf', 'asdf', 'asdf@email.com', 'test messagecccc', 'result.wav'),
(26, 'test', 'test', 'sadf@gmailcom', '', ''),
(46, 'cobak lagi', '1281832912321', '', '', ''),
(47, 'cobak lagi lagii', '1281832912321', '', '', ''),
(48, 'cobak lagi lagii', '1281832912321', '', '', ''),
(53, 'aukk ahhh', '1281832912321', '', '', ''),
(54, 'aukk ahhh', '1281832912321', '', '', ''),
(57, 'testing lagi', '888888888', '', '', ''),
(59, 'qualiti cobak', '8888888888', '', '', ''),
(60, 'testi', '181u92', '', '', ''),
(61, 'testi', '181u92', '', '', ''),
(62, 'testilagiii', '181u92', '', '', ''),
(79, 'percobaan ini', '88881231', '', '', ''),
(80, 'UI UX 7', '938192381', '', '', ''),
(81, 'ini sistem analis', '213133123', '', '', ''),
(82, 'cobakkk', '12312312321312', 'asdf@email.com', 'ini message', '');

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id` int(11) NOT NULL,
  `namaJabatan` varchar(255) NOT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id`, `namaJabatan`, `Deskripsi`) VALUES
(1, 'Frontend Developer', 'Frontend Developer'),
(2, 'Backend Developer', 'Backend Developer'),
(3, 'IOS Developer', 'IOS Developer'),
(4, 'Android Developer', 'Android Developer'),
(5, 'System Analyst', 'System Analyst'),
(6, 'Security Enginering', 'Security Enginering'),
(7, 'UI/UX Designer', 'UI/UX Designer'),
(8, 'Quality Assurance (QA)', 'Quality Assurance (QA)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPelamar` (`idPelamar`),
  ADD KEY `idPosisi` (`idPosisi`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `daftar_ibfk_1` FOREIGN KEY (`idPelamar`) REFERENCES `pelamar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `daftar_ibfk_2` FOREIGN KEY (`idPosisi`) REFERENCES `posisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
