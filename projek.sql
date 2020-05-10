-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2020 pada 22.00
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar`
(
  `id` int
(11) NOT NULL,
  `idPelamar` int
(11) NOT NULL,
  `idPosisi` int
(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`
id`,
`idPelamar
`, `idPosisi`) VALUES
(1, 1, 1),
(19, 19, 5),
(20, 83, 5),
(21, 84, 2),
(22, 4, 1),
(23, 19, 3),
(24, 26, 2),
(25, 85, 5),
(28, 80, 7),
(29, 81, 5),
(30, 59, 8),
(31, 86, 1),
(32, 87, 3),
(83, 101, 1),
(92, 101, 1),
(93, 102, 1),
(102, 101, 1),
(103, 102, 1),
(104, 103, 1),
(113, 101, 1),
(114, 102, 1),
(115, 103, 1),
(116, 104, 1),
(125, 101, 1),
(126, 102, 1),
(127, 103, 1),
(128, 104, 1),
(129, 105, 1),
(138, 101, 1),
(139, 102, 1),
(140, 103, 1),
(141, 104, 1),
(142, 105, 1),
(143, 106, 1),
(152, 101, 1),
(153, 102, 1),
(154, 103, 1),
(155, 104, 1),
(156, 105, 1),
(157, 106, 1),
(158, 107, 1),
(167, 101, 1),
(168, 102, 1),
(169, 103, 1),
(170, 104, 1),
(171, 105, 1),
(172, 106, 1),
(173, 107, 1),
(174, 108, 1),
(183, 101, 1),
(184, 102, 1),
(185, 103, 1),
(186, 104, 1),
(187, 105, 1),
(188, 106, 1),
(189, 107, 1),
(190, 108, 1),
(191, 109, 1),
(200, 101, 1),
(201, 102, 1),
(202, 103, 1),
(203, 104, 1),
(204, 105, 1),
(205, 106, 1),
(206, 107, 1),
(207, 108, 1),
(208, 109, 1),
(209, 110, 1),
(218, 101, 1),
(219, 102, 1),
(220, 103, 1),
(221, 104, 1),
(222, 105, 1),
(223, 106, 1),
(224, 107, 1),
(225, 108, 1),
(226, 109, 1),
(227, 110, 1),
(228, 111, 1),
(237, 101, 1),
(238, 102, 1),
(239, 103, 1),
(240, 104, 1),
(241, 105, 1),
(242, 106, 1),
(243, 107, 1),
(244, 108, 1),
(245, 109, 1),
(246, 110, 1),
(247, 111, 1),
(248, 112, 1),
(257, 101, 1),
(258, 102, 1),
(259, 103, 1),
(260, 104, 1),
(261, 105, 1),
(262, 106, 1),
(263, 107, 1),
(264, 108, 1),
(265, 109, 1),
(266, 110, 1),
(267, 111, 1),
(268, 112, 1),
(269, 113, 1),
(278, 101, 1),
(279, 102, 1),
(280, 103, 1),
(281, 104, 1),
(282, 105, 1),
(283, 106, 1),
(284, 107, 1),
(285, 108, 1),
(286, 109, 1),
(287, 110, 1),
(288, 111, 1),
(289, 112, 1),
(290, 113, 1),
(291, 114, 1),
(300, 101, 1),
(301, 102, 1),
(302, 103, 1),
(303, 104, 1),
(304, 105, 1),
(305, 106, 1),
(306, 107, 1),
(307, 108, 1),
(308, 109, 1),
(309, 110, 1),
(310, 111, 1),
(311, 112, 1),
(312, 113, 1),
(313, 114, 1),
(314, 115, 1),
(323, 101, 1),
(324, 102, 1),
(325, 103, 1),
(326, 104, 1),
(327, 105, 1),
(328, 106, 1),
(329, 107, 1),
(330, 108, 1),
(331, 109, 1),
(332, 110, 1),
(333, 111, 1),
(334, 112, 1),
(335, 113, 1),
(336, 114, 1),
(337, 115, 1),
(338, 116, 1),
(347, 101, 1),
(348, 102, 1),
(349, 103, 1),
(350, 104, 1),
(351, 105, 1),
(352, 106, 1),
(353, 107, 1),
(354, 108, 1),
(355, 109, 1),
(356, 110, 1),
(357, 111, 1),
(358, 112, 1),
(359, 113, 1),
(360, 114, 1),
(361, 115, 1),
(362, 116, 1),
(363, 117, 1),
(372, 101, 1),
(373, 102, 1),
(374, 103, 1),
(375, 104, 1),
(376, 105, 1),
(377, 106, 1),
(378, 107, 1),
(379, 108, 1),
(380, 109, 1),
(381, 110, 1),
(382, 111, 1),
(383, 112, 1),
(384, 113, 1),
(385, 114, 1),
(386, 115, 1),
(387, 116, 1),
(388, 117, 1),
(389, 118, 1),
(398, 101, 1),
(399, 102, 1),
(400, 103, 1),
(401, 104, 1),
(402, 105, 1),
(403, 106, 1),
(404, 107, 1),
(405, 108, 1),
(406, 109, 1),
(407, 110, 1),
(408, 111, 1),
(409, 112, 1),
(410, 113, 1),
(411, 114, 1),
(412, 115, 1),
(413, 116, 1),
(414, 117, 1),
(415, 118, 1),
(416, 119, 1),
(425, 101, 1),
(426, 102, 1),
(427, 103, 1),
(428, 104, 1),
(429, 105, 1),
(430, 106, 1),
(431, 107, 1),
(432, 108, 1),
(433, 109, 1),
(434, 110, 1),
(435, 111, 1),
(436, 112, 1),
(437, 113, 1),
(438, 114, 1),
(439, 115, 1),
(440, 116, 1),
(441, 117, 1),
(442, 118, 1),
(443, 119, 1),
(444, 120, 1),
(453, 101, 1),
(454, 102, 1),
(455, 103, 1),
(456, 104, 1),
(457, 105, 1),
(458, 106, 1),
(459, 107, 1),
(460, 108, 1),
(461, 109, 1),
(462, 110, 1),
(463, 111, 1),
(464, 112, 1),
(465, 113, 1),
(466, 114, 1),
(467, 115, 1),
(468, 116, 1),
(469, 117, 1),
(470, 118, 1),
(471, 119, 1),
(472, 120, 1),
(473, 121, 1),
(482, 101, 1),
(483, 102, 1),
(484, 103, 1),
(485, 104, 1),
(486, 105, 1),
(487, 106, 1),
(488, 107, 1),
(489, 108, 1),
(490, 109, 1),
(491, 110, 1),
(492, 111, 1),
(493, 112, 1),
(494, 113, 1),
(495, 114, 1),
(496, 115, 1),
(497, 116, 1),
(498, 117, 1),
(499, 118, 1),
(500, 119, 1),
(501, 120, 1),
(502, 121, 1),
(503, 122, 1),
(512, 101, 1),
(513, 102, 1),
(514, 103, 1),
(515, 104, 1),
(516, 105, 1),
(517, 106, 1),
(518, 107, 1),
(519, 108, 1),
(520, 109, 1),
(521, 110, 1),
(522, 111, 1),
(523, 112, 1),
(524, 113, 1),
(525, 114, 1),
(526, 115, 1),
(527, 116, 1),
(528, 117, 1),
(529, 118, 1),
(530, 119, 1),
(531, 120, 1),
(532, 121, 1),
(533, 122, 1),
(534, 123, 1),
(535, 124, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelamar`
--

CREATE TABLE `pelamar`
(
  `id` int
(11) NOT NULL,
  `nama` varchar
(255) NOT NULL,
  `nomerhp` varchar
(50) NOT NULL,
  `email` varchar
(255) NOT NULL,
  `message` text,
  `dataCV` varchar
(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelamar`
--

INSERT INTO `pelamar` (`
id`,
`nama
`, `nomerhp`, `email`, `message`, `dataCV`) VALUES
(1, 'hafidhsajid', '089999999', 'email@gmai.com', 'test message', 'testcv.pdf'),
(4, 'nama', '089999', 'nama@email.com', 'gvdtfhjkljhgfdsdfghjklkjhgfdfghuibhijoifjsdfjfdjsflasjfakl;sdjaf;jfwjfoewjoiofajesofjdsafjdlkfjdslkfjdklfajfdskjfdhskljfashkjfhfkasdjafdsjfsdjfdsjfdskjfadsjsdjoifjoiwdfsj', 'testcv.pdf'),
(19, 'asdf', 'asdf', 'asdf@email.com', 'test messagecccc', 'result.wav'),
(26, 'test', 'test', 'email@email.com', 'test message', 'testcv.pdf'),
(48, 'cobak lagi lagii', '1281832912321', 'email@email.com', 'test message', 'testcv.pdf'),
(54, 'aukk ahhh', '1281832912321', 'email@email.com', 'test message', 'testcv.pdf'),
(57, 'testing lagi', '888888888', 'email@email.com', 'test message', 'testcv.pdf'),
(59, 'qualiti cobak', '8888888888', 'email@email.com', 'test message', 'testcv.pdf'),
(61, 'testi', '181u92', 'email@email.com', 'test message', 'testcv.pdf'),
(79, 'percobaan ini', '88881231', 'email@email.com', 'test message', 'testcv.pdf'),
(80, 'UI UX 7', '938192381', 'email@email.com', 'test message', 'testcv.pdf'),
(81, 'ini sistem analis', '213133123', 'email@email.com', 'test message', 'testcv.pdf'),
(83, 'asdf', 'asdf', 'asdf@email.com', 'testt', 'testcv.pdf'),
(84, 'asdfsasfd', '0989785643', 'asdf@email.com', '', 'testcv.pdf'),
(85, 'And', '1414124901802', 'asdf@email.com', 'Cobak message', 'testcv.pdf'),
(86, 'coba daftar ke Frontend Dev', '0855733455364', 'asdf@email.com', '', 'testcv.pdf'),
(87, 'IOS DEV', '3132131232121', 'ios@developer.com', '', 'testcv.pdf'),
(101, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(102, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(103, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(104, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(105, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(106, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(107, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(108, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(109, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(110, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(111, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(112, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(113, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(114, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(115, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(116, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(117, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(118, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(119, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(120, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(121, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(122, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'SMBD_TI2D_10_HAFIDH SAJID M_1841720105.pdf'),
(123, 'cobalagi', '4554456654466', 'asdf@email.com', 'coba lagi', 'testcv.pdf'),
(124, 'Abdulloh', '08993505391', 'hafidhsajid@gmail.com', 'test message', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisi`
--

CREATE TABLE `posisi`
(
  `id` int
(11) NOT NULL,
  `namaJabatan` varchar
(255) NOT NULL,
  `Deskripsi` varchar
(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posisi`
--

INSERT INTO `posisi` (`
id`,
`namaJabatan
`, `Deskripsi`) VALUES
(1, 'Frontend Developer', 'Frontend Developer'),
(2, 'Backend Developer', 'Backend Developer'),
(3, 'IOS Developer', 'IOS Developer'),
(4, 'Android Developer', 'Android Developer'),
(5, 'System Analyst', 'System Analyst'),
(6, 'Security Enginering', 'Security Enginering'),
(7, 'UI/UX Designer', 'UI/UX Designer'),
(8, 'Quality Assurance (QA)', 'Quality Assurance (QA)'),
(9, 'Project Manager', 'ini adalah Deskripsinya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
ADD PRIMARY KEY
(`id`),
ADD KEY `idPelamar`
(`idPelamar`),
ADD KEY `idPosisi`
(`idPosisi`);

--
-- Indeks untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
ADD PRIMARY KEY
(`id`);

--
-- Indeks untuk tabel `posisi`
--
ALTER TABLE `posisi`
ADD PRIMARY KEY
(`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `daftar`
--
ALTER TABLE `daftar`
ADD CONSTRAINT `daftar_ibfk_1` FOREIGN KEY
(`idPelamar`) REFERENCES `pelamar`
(`id`) ON
DELETE CASCADE ON
UPDATE CASCADE,
ADD CONSTRAINT `daftar_ibfk_2` FOREIGN KEY
(`idPosisi`) REFERENCES `posisi`
(`id`) ON
DELETE CASCADE ON
UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
