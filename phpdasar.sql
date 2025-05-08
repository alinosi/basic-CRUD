-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Apr 2025 pada 01.56
-- Versi server: 8.0.37
-- Versi PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` char(10) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `semester` int NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jurusan`, `email`, `semester`, `Gambar`) VALUES
(1, 'anton', '1234567891', 'Sistem Informasi', 'anton12@gmail.com', 7, '669a6a74df520.png'),
(2, 'notna antropeda', '7213649120', 'Teknik Geomatika', 'notna21@gmail.com', 7, 'notna.png'),
(3, 'danil', '7635218921', 'Teknik Informatika', 'danil99@gmail.com', 5, 'danil.png'),
(4, 'zuba', '7346219837', 'Teknik kebut semalam', 'zubarrr10101@gmail.com', 5, '669a6a90c1fb7.png'),
(5, 'juan', '1287642122', 'Teknik Pangan', 'juan88@gmai.com', 3, '669a6a7f8ce8d.png'),
(81, 'farel ganus', '7682912376', 'Teknik Fisika', 'farel3333@gmail.com', 3, '669a6b1978a7d.png'),
(82, 'zuba', '0903128275', 'Pertanian', 'arululul33@gmail.com', 3, '669a6be0691d9.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
