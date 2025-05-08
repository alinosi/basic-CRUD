-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2025 at 02:03 AM
-- Server version: 8.0.37
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`, `role`) VALUES
(1, 'intiaja', '$2y$10$SSSklwAf/fAkbWt5wYaCQOR3xiq4HYNrdgrNbrvIJblK/rFXPlWK.', '2023-08-26 01:47:28', '2023-08-26 01:47:28', 'super_admin'),
(2, 'admininaja', '$2y$10$2K7DcD4CRESPYN4PAw.pXeIIiHHlkAMVCSRcUIGyJ3MzWP4GMMhN2', '2023-08-26 01:47:28', '2023-08-26 01:47:28', 'admin'),
(3, 'sponsoraja', '$2y$10$pLkmZfdIjJT9QsVHVLQd3.d9n1hoojn0ISj2U1a8tg7bjDbVdWC9i', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'sponsor'),
(4, 'competitionaja', '$2y$10$nmY0r7a0fnGsEhxGbNGQ1udZeDjCM3sqqzMoD4rCQVZMhAS7pXN2S', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'competition'),
(5, 'seminaraja', '$2y$10$JMpieoFAd/S1fHtOzcRMJOcKcLaClSx/xey1lvNaliWlNgjdpLIVm', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'seminar'),
(6, 'buddiesaja', '$2y$10$XCws/njPZ.cHCPhCUwhJ7OOxIpJmx.A8vOuLAkBPlWZsdEsoidxNC', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'buddies'),
(7, 'medparaja', '$2y$10$ktSVriyr.oGRSu5WC0NNteZcCKXg.U1rhyJEQm4Ul03uzXahy300.', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'medpar'),
(8, 'marketingaja', '$2y$10$ffsynoZEOceaEtc5CaIyu.MCptNELoz1MhPtdVkRdRrpGA3YktnyW', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'marketing'),
(9, 'designaja', '$2y$10$5HN102nSSUbDEr0F3cTXbOFwbrvJtaXNtSZ59vyg/L69OnxE6Q5bm', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'design'),
(10, 'videophotoaja', '$2y$10$DwUb9JWysxN6.Ku2T/dpyequx/aQcli7HMnHG4e7M.q7tGIcFiu3a', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'vidphot'),
(11, 'publicationaja', '$2y$10$LCS2HA7RjH.VzomFxa/mf.GI4Fnxzq2za2FHtn/ifpQ6SoeqsafAC', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'public'),
(12, 'bazaaraja', '$2y$10$cYPVKVY0WWvTp3HEJeLu1.ebLnB.eJtuo89FS5UELtqA3Rt7vI4wi', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'bazar'),
(13, 'consumptionaja', '$2y$10$hrT.b47iuKhbzsb.3b/6meX.uVWfqTs0NFmM8HfNwV1w/x7LH4TlK', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'consumption'),
(14, 'logisticaja', '$2y$10$0wZLSobccnHxfXbH5ErrludWXv6X7hc03GnDFAQAsjt8/FsdpHgYO', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'logistic'),
(15, 'admaja', '$2y$10$hbYfCI/ntggW5lSdZ2Jhl.qJGWudUDVIhA9Pbvmvdl3QA0QSQvwPi', '2023-08-26 01:47:29', '2023-08-26 01:47:29', 'adm');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa2022s`
--

CREATE TABLE `mahasiswa2022s` (
  `id` bigint UNSIGNED NOT NULL,
  `NIM` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa2022s`
--

INSERT INTO `mahasiswa2022s` (`id`, `NIM`, `name`, `created_at`, `updated_at`) VALUES
(1, '09031182328001', 'ALIYA FAIZA', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(2, '09031182328002', 'SHAFA AURELLIZA ARIAN', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(3, '09031182328003', 'NICOLAUS OWEN MARVELL', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(4, '09031182328004', 'AHMAD AQILA NUBALA', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(5, '09031182328005', 'JACKSON IMANUEL MANURUNG', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(6, '09031182328006', 'PUTRI RAHEL ALIFIA', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(7, '09031182328007', 'JEREMIAH ALWIN SIAHAAN', '2023-08-26 01:47:29', '2023-08-26 01:47:29'),
(8, '09031182328008', 'MUHAMMAD BAYU SAMUDRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(9, 'utf8mb4_general_ci28', 'VIOLIN JUNEYLA NANDITA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(10, '09031182328010', 'TAMARA JULIYANTI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(11, '09031182328011', 'AULIA PINKASARI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(12, '09031182328012', 'OKTAVIO THEONADY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(13, '09031182328013', 'MUTHIA RAMADHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(14, '09031182328014', 'SILVIA NABILAPUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(15, '09031182328015', 'ZWESTY QUATRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(16, '09031182328016', 'NANDA SALSABILA AZ-ZAHRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(17, '09031182328017', 'XENIA CLARISSA VALENCIA M.', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(18, '09031182328018', 'A. SALWA AURELYA PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(19, '09031182328019', 'KHANSA PUTRI AMANDA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(20, '09031182328020', 'RIA KHOIRUNNISA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(21, '09031182328021', 'ZAKIRAH SABRINA PUTRI PASHA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(22, '09031182328022', 'TRISNA ODITIA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(23, '09031182328023', 'DYMAS AHMAD FADHIL', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(24, '09031182328024', 'RIDHO PRAMANA PUTRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(25, '09031182328084', 'MAHARANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(26, '09031182328093', 'JOVANDRA ANATA MALAYADZA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(27, '09031182328097', 'MEIYIN MONICA AMILIA PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(28, '09031182328098', 'BAGUS PRIHANTORO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(29, '09031182328101', 'ULVA KHAIRUNNISYA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(30, '09031182328102', 'JUSEIA WULANDARI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(31, '09031182328108', 'KHAIRUNNISA\' ALMAUDUDY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(32, '09031182328109', 'SALSA YURINKA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(33, '09031182328115', 'R. NYI PIPIH KURNIASARI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(34, '09031282328025', 'SYIFA NAURA MILLA CELESTA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(35, '09031282328026', 'PUTI CHALISA WARDHANA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(36, '09031282328027', 'NADIA RAMADHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(37, '09031282328028', 'AN\'NUR AISYAH GHAIDAH SENJAYA MANGKUNEGARA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(38, '09031282328029', 'M. FARHAN ALHABSY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(39, '09031282328030', 'MUHAMAD RAMADHAN HERU PRADIPTA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(40, '09031282328031', 'HENRIE RAFI ARDIYANTO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(41, '09031282328032', 'CHAIRUNNISA DESTI ARZETY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(42, '09031282328033', 'JHON KEVIN ANDRIANTO SINAGA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(43, '09031282328034', 'MUHAMMAD SYAIKH AZKA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(44, '09031282328035', 'ANDIN SABILLA JANNA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(45, '09031282328036', 'M. SUANDI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(46, '09031282328037', 'M. THORIQUL FADLI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(47, '09031282328038', 'DZIDAN ADITYA GUMILANG', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(48, '09031282328039', 'MUHAMMAD IMAM HAFIDHZ RITONGA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(49, '09031282328040', 'FATHIYYAH NURUL AFIFAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(50, '09031282328041', 'AHMAD RIJAL KHAIRULLAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(51, '09031282328042', 'RAMANUDDIN JAYA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(52, '09031282328043', 'LEIDEN FAUZI YOKA SURYA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(53, '09031282328044', 'RAHMAD HIDAYAT', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(54, '09031282328045', 'GAOZHAN MUHAMMAD ZABRAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(55, '09031282328046', 'GERRI ASA SAPUTRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(56, '09031282328047', 'MEI INTAN NATASYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(57, '09031282328048', 'FIDELA TERTIA ALFINO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(58, '09031282328049', 'M. RIAN HIDAYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(59, '09031282328050', 'APRIANSYAH WAHYUDI PUTRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(60, '09031282328051', 'RIFQI FEBRIAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(61, '09031282328052', 'RIFKI ALKAZIM', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(62, '09031282328053', 'MUHAMAD ANANDITHYO AFTARUDZAKI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(63, '09031282328054', 'DIMAS AGIL KUSUMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(64, '09031282328055', 'RAFA NADIRA CATRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(65, '09031282328056', 'MUHAMMAD IQBAL DISRIANSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(66, '09031282328057', 'FAHREN AFFANDI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(67, '09031282328058', 'AHMAD FADHIL RIZQI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(68, '09031282328059', 'MUHAMMAD RAFI HERDIAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(69, '09031282328060', 'TRYA ANDINI BANOWATI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(70, '09031282328061', 'NADHILAH AL ADAWIYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(71, '09031282328062', 'RIFQI MUHAMMAD RIFAT', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(72, '09031282328063', 'M. CAHAYA AKBAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(73, '09031282328064', 'ZIKRI FIRMANSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(74, '09031282328065', 'MUHAMMAD DZAKY HASYIM', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(75, '09031282328066', 'NUR SALWA FADIA AKMAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(76, '09031282328067', 'EDO WICAKSONO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(77, '09031282328068', 'M. DAFFA JULIANSYAH SILITONGA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(78, '09031282328069', 'M. ANDRE YUNIZAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(79, '09031282328070', 'HABIL AL FARISY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(80, '09031282328071', 'MUHAMMAD FATURRAHMAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(81, '09031282328072', 'ONGKI JULIANDRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(82, '09031282328073', 'M. PUTRA WILLY NAILIS', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(83, '09031282328074', 'SELLA JUNIASTIA MARSYA SAPUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(84, '09031282328075', 'GIBRAL ABDURRAHMAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(85, '09031282328076', 'DHAFIN RIZKY TRISANDY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(86, '09031282328077', 'MSY. ANGGITA SHAFIRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(87, '09031282328078', 'APRIYADI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(88, '09031282328079', 'R.A CALLISTA SALSABILA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(89, '09031282328080', 'LYVIA VALENTINA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(90, '09031282328081', 'LEONY SANTIKA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(91, '09031282328082', 'M.RISWANDIFA PUTRA ALENKY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(92, '09031282328083', 'VINDIRA YUSEFANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(93, '09031282328085', 'MUHAMMAD EMIRSHAH YUSUF', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(94, '09031282328086', 'HAANIYAH AURELIA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(95, '09031282328087', 'M. RIZKI AL AKBAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(96, '09031282328088', 'AHMAD ZACKY RAMADHAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(97, '09031282328089', 'MUHAMMAD YUSUF', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(98, '09031282328090', 'DAFFA PRATAMA PUTRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(99, '09031282328091', 'DEKKA ANDRI CAHYA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(100, '09031282328092', 'NEISYA AZ ZAHRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(101, '09031282328094', 'OCTA DAMA YANTI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(102, '09031282328095', 'MUHAMMAD FADLI ABDUL AZIZ', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(103, '09031282328096', 'SYIFA ALFARIANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(104, '09031282328099', 'AHMAD HABIBI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(105, '09031282328100', 'FITRI AMANDA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(106, '09031282328103', 'HIKMAH NURSURYANA FADILLAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(107, '09031282328104', 'IMAM AKBAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(108, '09031282328105', 'AUDYA ANGGRAINI HASIM', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(109, '09031282328106', 'AISY INTAN HERITA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(110, '09031282328107', 'DESNA WARY YERTY PURBA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(111, '09031282328110', 'AZZAHRA DEZZA SYAHPUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(112, '09031282328111', 'ATHIYYAH NUHA ROTIFA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(113, '09031282328112', 'JOY COLLOSIAN SARAGIH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(114, '09031282328113', 'M. MUSYAWIR HALIM', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(115, '09031282328114', 'FERDIANTO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(116, '09031282328116', 'ALIFA PUTRI SHAHABIYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(117, '09031282328117', 'PERI AGUNG SEMBIRING', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(118, '09031282328174', 'M. FERDY SATRIA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(119, '09031382328118', 'SATRIA RAMADHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(120, '09031382328119', 'VANYA DWI NABILA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(121, '09031382328120', 'SALSABILA ALFATH ANNISAA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(122, '09031382328121', 'FUAD KANIFUDIN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(123, '09031382328122', 'M. RAFLY RAMDHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(124, '09031382328123', 'M RAYKAH ALAM RAMADAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(125, '09031382328124', 'RAYYA RAMADHAN SIMANGUNSONG', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(126, '09031382328125', 'LAILLA SYAL SYABILLA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(127, '09031382328126', 'RA ALIFFYAA RAMADHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(128, '09031382328127', 'MUHAMMAD RAFIF AR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(129, '09031382328128', 'CINDY DINATA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(130, '09031382328129', 'VANISA AMALIA PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(131, '09031382328130', 'KAISYAH AZZAHRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(132, '09031382328131', 'DINDA AULIKA ELFARIN ARITONANG', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(133, '09031382328132', 'ANNISA OLIVIA RAFIDAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(134, '09031382328133', 'APRILIA HERAWATI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(135, '09031382328134', 'NABILA RAMADHANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(136, '09031382328135', 'NELDIES JUWITA TIOLINE', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(137, '09031382328136', 'MUHAMMAD WAHYU HIKMALSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(138, '09031382328137', 'DHIO PRATAMA WIRANSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(139, '09031382328138', 'MOHD. RIZKY PUTRA PRATAMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(140, '09031382328139', 'SYALWA SALSABILLAH SIREGAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(141, '09031382328140', 'HALONA DAFFAKHANSA NABILA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(142, '09031382328141', 'M. NAUFAL HISYAM AYANDRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(143, '09031382328142', 'WELI RATRI HOMAUSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(144, '09031382328143', 'AZERA PRAMESTY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(145, '09031382328144', 'DYO ARYA PURNAMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(146, '09031382328145', 'MUHAMMAD AL - GHIFARY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(147, '09031382328146', 'FADIAH TUSSHOLIHA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(148, '09031382328147', 'ZACKY BAYU ISKANDAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(149, '09031382328148', 'NOVITA RAMADHINI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(150, '09031382328149', 'M. LUTHFI ALDI PRATAMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(151, '09031382328150', 'MARIZKA RIFFIY ALFIYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(152, '09031382328151', 'AULIA KHAIRUNNISA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(153, '09031382328152', 'CHRISJUANITO CLANCY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(154, '09031382328153', 'M. ILHAM FAHLEVI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(155, '09031382328154', 'ALVIN BIMA CANDRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(156, '09031382328155', 'MUHAMMAD RANDY RABBANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(157, '09031382328156', 'MERIZKA AZZAHRA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(158, '09031382328157', 'MEISYA DWI ANDINI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(159, '09031382328158', 'ADIAZ SALSABILAH PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(160, '09031382328159', 'RAHMAD FITRIANSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(161, '09031382328160', 'MAZETTO FAIQ AQILLAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(162, '09031382328161', 'EKA BAYU SATRIA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(163, '09031382328162', 'MUHAMMAD IQBALUL KHOIRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(164, '09031382328163', 'PUTRI MAHARANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(165, '09031382328164', 'IDRIS SONNY', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(166, '09031382328165', 'GHIFARI WIYATA PRAJA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(167, '09031382328166', 'NAWIRAH ATHQIYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(168, '09031382328167', 'HANIYAH FAIZAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(169, '09031382328168', 'MUHAMMAD RAIHAN AQILLAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(170, '09031382328169', 'ALYA ZALFA CHAIRUNNISA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(171, '09031382328170', 'NYIMAS PRINCESSA SYAPENI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(172, '09031382328171', 'MUHAMMAD ARGA RAFI KHAIRAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(173, '09031382328172', 'GALA DI AKBAR', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(174, '09031382328173', 'GABRIEL SEBASTIAN SANTOSO', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(175, '09031482326001', 'CAHYANI KHAIRUNNISA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(176, '09031482326002', 'RIZKY SEPTIAH PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(177, '09031482326003', 'REVA NUR RAHMADIANA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(178, '09031482326004', 'PUTRI CHANDRA IRANTI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(179, '09031482326005', 'FAJAR ALAMSYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(180, '09031482326006', 'M ROLLAN REINALDI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(181, '09031482326007', 'MUHAMMAD RIZA WIRASENA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(182, '09031482326008', 'MUHAMMAD ARIF BUDIMAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(183, '09031482326009', 'HANI JULISA PRATAMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(184, '09031482326010', 'VIKA WIDIYA ASTUTIK', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(185, '09031482326011', 'FARHANAH KENCANA MAHARANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(186, '09031482326012', 'MASAGUS MUHAMMAD FARIDZ', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(187, '09031482326013', 'FATIMAH AZZAHRAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(188, '09031482326014', 'LUTHFIYYAH MUFIDAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(189, '09031482326015', 'NURUL AMMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(190, '09031482326016', 'DYAN HERNA ANGGRAINI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(191, '09031482326017', 'NUR ATIKA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(192, '09031482326018', 'MARCELLANISA SELVIANA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(193, '09031482326019', 'REGINA PUTRI CAHYANI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(194, '09031482326020', 'ROSDIYANAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(195, '09031482326021', 'SALSABILA AL AISYAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(196, '09031482326022', 'MUHAMMAD RIZKY ALFAJRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(197, '09031482326023', 'MAULIDA HARISTINA PUTRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(198, '09031482326024', 'ALYA KUSUMA ASRI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(199, '09031482326025', 'ALIIFAH KHOIRUNNISA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(200, '09031482326026', 'IRDANIA ULY LAHMI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(201, '09031482326027', 'ADDLAN RIDHO PRATAMA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(202, '09031482326028', 'UYUUN LAHIRIAH', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(203, '09031482326029', 'MUHAMMAD KHALIFAH RAIHAN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(204, '09031482326030', 'SAMUEL IDO PUTRA WICAKSANA', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(205, '09031482326031', 'SELAMAT ALFISYAHRIN', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(206, '09031482326032', 'REFFINA RAMADHINI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(207, '09031482326033', 'BELMA ASHA RIMADINI', '2023-08-26 01:47:30', '2023-08-26 01:47:30'),
(208, '09031282227084', 'Umar Rahman Zidan', '2023-09-04 06:47:30', '2023-09-04 06:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_12_025522_create_admins_table', 1),
(6, '2022_09_03_041218_create_table_mahasiswa2022', 1),
(7, '2023_08_05_144724_add_role_to_admins_table', 1),
(8, '2023_08_12_141554_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('marixsusantooo@gmail.com', '$2y$10$s2WLN9Q3pZjqYEWkP1rZSuyAtqqUwXugiYSnb6w6hc.V0UyqqRYNi', '2023-08-26 11:10:30'),
('urzidan@gmail.com', '$2y$10$N/wAzwuQZVFTY1rzFR7CJeYZrKeK.KNkm0lRwj.i85lHfwfZpEOXS', '2023-08-27 02:59:28'),
('salsayurinka2807@gmail.com', '$2y$10$Y0dK/IRCZRtrGj4htI3Dh.15yDckFqLEW5SWZj5XF1tCikgb5J/yi', '2023-09-01 20:53:05'),
('fahleviilham06@gmail.com', '$2y$10$02bwkLJhOAh7Ix8J.plxS.avsp/CEG5GG.pRMJLZNuBMf1ZRI0Kvm', '2023-09-01 21:05:22'),
('qzwesty@gmail.com', '$2y$10$QoQI8nhDztAHr/w0QbslyOXHRjFKfbKSJpEqdhoAcd/g2uODVt2TG', '2023-09-01 21:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Umar Rahman Zidan', 'urzidan@gmail.com', '087786958008', 'iseng aja hehehe', '2023-08-26 10:51:42', '2023-08-26 10:51:42'),
(2, 'tado', 'youbemineokey1@gmail.com', '+62 896-5474-6962', 'hii kak', '2023-09-01 07:18:35', '2023-09-01 07:18:35'),
(3, 'Umar Rahman Zidan', 'urzidan@gmail.com', '087786958008', 'Untuk Umar Jangan begadang terus', '2023-11-11 19:12:42', '2023-11-11 19:12:42'),
(4, 'Umar Rahman Zidan', 'urzidan@gmail.com', '087786958008', 'Untuk Umar Jangan begadang terus', '2023-11-11 19:12:42', '2023-11-11 19:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userID` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `username`, `email`, `password`, `userID`) VALUES
(1, 'anton1234', 'anton1234@gmail.com', '$2y$10$b5k1eO5kBPzZg6uevJSQ9./JFIEyZKnCtqasjDTkcyKsycYX.MFKW', NULL),
(18, '09031282', 'nobygon265@gmail.com', '$2y$10$WpXEczX72HdU0I7smTsaPuzE/xwcxC2DwlGX.j7.gcMTyP.u6HKSC', '669122d462035'),
(19, 'thoriqnul', 'fellyciahwarani@gmail.com', '$2y$10$7xeTQGyVwZUe/RV4NikzceF0mzaYrg4SQVmtJoyd5LId/QlUpXQKS', '66912f9cf28cd'),
(20, 'anton123', 'jirjatg@gmail.com', '$2y$10$Uq2rNVf9D86MmypX7KSzfOMKE0K3Pp0stPYf32PUTXCpt.3zXnHhG', '669272808a67b'),
(21, 'fadilbayangan', 'fadilbayangan@gmail.com', '$2y$10$ITqQGrVyRlKxuX.sFwTnFu.67VkEBIcJ1NSKfjbq7ON0.BlKiCOoK', '66928f0529443'),
(22, 'khalil221', 'andris@g', '$2y$10$CgrVa2/zL50tCpwkCgeD1uvvZF5B5j9pwOXSERK7/YOr45DK147wW', '66935a472dbd4'),
(23, 'agungjunandi', 'felixzubaidah@gmail.com', '$2y$10$a1ELrYa5bANpRtOFUidnFubdvkh4gq8vQ8aDLJWsgxt7YZVoAaSu.', '66935df14f674'),
(24, 'vandika1', 'vandika1@gmail.com', '$2y$10$OnadZap503IixO66oLfage1ZI3wpgFeZyNl495KkIxTx0oUR4ndYG', '66950ec081710'),
(25, 'asadeferto', 'asade@gmail.com', '$2y$10$JBmSClx70sp4e9ZIAnKxfOdSPtL5Fy4cza6VGJ21zL6nspEIC524q', '66950fb7122d1'),
(26, 'gandus123', 'gandus123@gmail.com', '$2y$10$b5k1eO5kBPzZg6uevJSQ9./JFIEyZKnCtqasjDTkcyKsycYX.MFKW', '66952fa2937be'),
(27, 'jakabaring123', 'jakabaring123@gmail.com', '$2y$10$b5k1eO5kBPzZg6uevJSQ9./JFIEyZKnCtqasjDTkcyKsycYX.MFKW', '66952fc9e547a'),
(28, 'ganis123', 'ganis123@gmail.com', '$2y$10$kHAJVh2TeIMo1hVUf3owjeSFuFznycTZc8Rtp/85oS1SR2WcKzRqS', '6695e1f57b832'),
(30, 'gando123', 'gando123@gmail.com', '$2y$10$o6UVnX..jpyGJix/sMn9XeQrtR5ZWNKgvzplaHau1LPiYp2mLuPum', '6695e5af355db'),
(31, 'danildermawan', 'anton12345@gmail.com', '$2y$10$TJYnk.LGtIuk4utSsip5Y.g6abG4vOSnKVqPtPQQdKS6IJtksWmVC', '6705153626fe2'),
(32, 'tes12345', 'mthoriqulfadli@gmail.com', '$2y$10$Of6D8zXRpBsvGmCvWs4Khur/ATfaF3dt6qw./L5DM7COkmnwcbx5a', '67051cd5eb443'),
(33, 'tes123456', 'zlutfhi89@gmail.com', '$2y$10$vub0bscYUhBz3OBDYptmPOvqS4BdpjCYUXqJgnnHF3BduZj3VJrpy', '67051d4797fe6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIM` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_choice` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_choice` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `NIM`, `email`, `line`, `class`, `domicile`, `first_choice`, `first_reason`, `second_choice`, `second_reason`, `password`, `interview`, `identifier`, `result`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'R.a Callista Salsabila', '09031282328079', 'racallistasalsabila@gmail.com', 'nj.koya', 'SI Reg B', 'Palembang', 'Design', 'Saya senang membuat design seperti poster, dan lain sebagainya', 'Competition', 'Karena saya tertarik dengan bagian competition', '$2y$10$MkRwxHFUEkys/apdMh5q/uG9BMWWSLo3w8YaIdmM.1okAEAfvbUeS', 'Indralaya', 'KRS_KPM/202308271414.20230827_211031.jpg', NULL, NULL, '2023-08-27 07:14:10', '2023-08-27 07:14:10'),
(3, 'Zwesty Quatra', '09031182328015', 'qzwesty@gmail.com', 'nathyraa9_', 'SI Reg A', 'Palembang', 'Videography Photography', 'Karena saya menyukai photography, bagi aaya sendiri kegiatan memotret sesuatu hal yang menarik dapat membuat perasaan saya menjadi tenang dan merasa bebas.', 'Consumption', 'Lebih mudah😄', '$2y$10$VK9wViIBqqOB8zKlKMR9.uTgOpAkWFQ58lrhrnA2lQAFLoWn7B8eS', 'Palembang', 'KRS_KPM/202308280115.Screenshot_20230813-204640_Chrome.jpg', NULL, NULL, '2023-08-27 18:15:30', '2023-08-27 18:15:30'),
(4, 'Salsa Yurinka', '09031182328109', 'salsayurinka2807@gmail.com', 's4ls4yrnk4', 'SI Reg B', 'Indralaya', 'Media Partner', 'Dengan mengikuti divisi ini saya berharap akan bisa menambah relasi dengan banyak orang, terutama orang penting/pejabat yang nantinya pasti menguntungkan bagi saya di masa depan, mengasah kemampuan komunikasi saya agar lebih percaya diri dan efektif dan agar mendapat bekal ilmu bagaimana cara menjalin sebuah kerja sama dengan berbagai pihak.', 'Bazaar', 'Karena ingin menambah ilmu baru bagi saya tentang strategi dalam berbisnis/berjualan yang sebelumnya saya sangat awan dengan hal tersebut, saya harap dengan mengikuti divisi ini saya bisa lebih mengerti tentang bagaimana strategi bisnis yang tempat.', '$2y$10$2WRxD66G9ecu.qKnK0honO.M6MidBCOdkSpvmmUY1f.Vwzkwe8uCy', 'Indralaya', 'KRS_KPM/202308280254.Kpm unsri_1.jpg', 'Media Partner', NULL, '2023-08-27 19:54:17', '2023-09-15 04:44:54'),
(5, 'M. Ilham Fahlevi', '09031382328153', 'fahleviilham06@gmail.com', 'Milhamf08', 'SI Bil B', 'Palembang', 'Marketing', 'Karena saya punya ketertarikan dalam mempromosikan dan bernegosiasi sesuatu. salah satu contohnya, saya berhasil menjual beberapa barang prakarya saya pada waktu SMA di media dan lingkungan sekitar, dan alasan lain karena saya ingin mencari tahu dan belajar secara teori maupun praktikal bagaimana seorang individu terjun langsung ke dunia marketing', 'Consumption', 'Karena saya memiliki pengalaman menjadi panitia konsumsi di beberapa acara besar di SMA, salah satu kegiatannya yaitu PENSI tahunan. Menurut saya panitia konsumsi adalah salah satu kepanitian yang underrated  di dalam kegiatan', '$2y$10$w7QWUI0vO1OEVi2w84K18.FcbO2S4ixubVKXTNcnjZ5F2hOUrt68q', 'Palembang', 'KRS_KPM/202308280434.ABDF1A85-8B80-44DA-927E-9FFA27D321F9.jpeg', 'Marketing', NULL, '2023-08-27 21:34:16', '2023-09-15 05:45:59'),
(7, 'Edo Wicaksono', '09031282328067', 'edohandayani@gmail.com', '1612018725', 'SI Reg A', 'Palembang', 'Design', 'Karena saya mempunyai minat dalam bidang desain grafis dan ingin lebih mengembangkan minat tersebut', 'Videography Photography', 'walaupun tidak terlalu ahli saya menyukai hal hal tentang videografi dan fotografi', '$2y$10$p8GUDW84VKV135.mE1IX5.QfQDpyQRsf9srkXv.pO2wyBF0h/XBEG', 'Palembang', 'KRS_KPM/202308280806.CamScanner 28-08-2023 15.02_1.jpg', 'Design', NULL, '2023-08-28 01:06:30', '2023-09-15 04:43:22'),
(8, 'Nur Salwa Fadia Akmar', '09031282328066', 'nursalwafadiaakmarrr@gmail.com', 'adiaakmar25', 'SI Reg A', 'Indralaya', 'Consumption', 'Karena menarik perhatian saya hehe', 'Seminar', 'Karena selalu penasaran dan juga ingin menjadi salah satu bagian di balik layar kesuksesan kegiatan seminar.', '$2y$10$y.h6MFdCphOPdsy4JTSmLOpEvHijlGIreLMHYhu6JJGRJUicEh926', 'Indralaya', 'KRS_KPM/202308281136.Screenshot (5).png', 'Consumption', NULL, '2023-08-28 04:36:43', '2023-09-15 05:02:38'),
(9, 'Shafa Aurelliza Arian', '09031182328002', 'shafaaurelliza@gmail.com', 'aurellizaarian', 'SI Reg A', 'Indralaya', 'Design', 'Alasan saya menjadikan design sebagai pilihan pertama karena saya memiliki basic dan skill dalam bidang tersebut , saya sangat menguasai bagaimana cara mencari konsep, membuat serta memberikan keselarasan terhadap karya yang saya ciptakan menggunakan beberapa aplikasi editing, terlebih lagi sebelumnya saat di sma saya juga dipercaya sebagai bagian dari bidang design di OSIS dan kepanitiaan lainya , untuk itu disini saya ingin melanjutkan serta melatih untuk memperdalam skill/kemampuan yang saya miliki.', 'Seminar', 'Alasan saya memilih bagian dari seminar ini dikarenakan saya memiliki kertarikan serta kemampuan dalam mencari dan menyusun konsep , saya ingin menuangkan ide dan kreativitas yang menarik dari apa yang saya miliki untuk mendukung jalannya acara ini.', '$2y$10$cByGpZaKaxRwvO43vKVvzuYptYxBGC/JhNzyoszCLw1RqMx0egsJm', 'Indralaya', 'KRS_KPM/202308281333.IMG_6892.jpeg', 'Design', NULL, '2023-08-28 06:33:27', '2023-09-15 04:43:37'),
(10, 'Lailla Syal Syabilla', '09031382328125', 'laillasyalsyabilla@gmail.com', 'llasyalsya', 'SI Reg A', 'Indralaya', 'Competition', 'Karena saya ingin mencari pengalaman dan mengasah pengetahuan  tentang bagaimana membuat, menentukan , dan merencanakan suatu perlombaan serta dapat berperan penting dalam sukses nya perlombaan yang di adakan.', 'Marketing', 'Karena saya ingin belajar bagaimana Menerapkan S3 marketing dalam merancang, menyusun dan mengorganisasikan suatu acara dan perlombaan yang akan di laksanakan serta dapat mencapai target pemasaran yang telah di tentukan.', '$2y$10$Qi7vrmL7K9VatgpQbXEq0eSRTUru8vkNvZPNA5QKSqlX76feVquua', 'Indralaya', 'KRS_KPM/202308281341.KPM.jpg', NULL, NULL, '2023-08-28 06:41:48', '2023-08-28 06:41:48'),
(11, 'Oktavio Theonady', '09031182328012', 'theonadyoktavio@gmail.com', 'oktavio21', 'SI Bil B', 'Palembang', 'Seminar', 'Ingin menguji kemampuan diri untuk dapat memberikan tema dan dapat menyusun konsep acara seminar yang menarik', 'Marketing', 'Ingin belajar bersosialisasi dengan banyak orang dan dapat memberikan ide-ide yang kreatif dalam menyusun strategi pemasaran', '$2y$10$huRg8szidkAwoh7OgEgC7O0NUcwz2JGyVfZFOhkJ2FcywHuHJuN76', 'Palembang', 'KRS_KPM/202308290038.IMG_1229.jpeg', NULL, NULL, '2023-08-28 17:38:35', '2023-08-28 17:38:35'),
(12, 'Mei Intan Natasyah', '09031282328047', 'meintanatasyah@gmail.com', 'meiintan03', 'SI Reg A', 'Palembang', 'Administration', '1. Saya suka menulis.\r\n2. Saya pernah menjadi sekretaris ekskul paskibra di SMP dan SMA.\r\n3. Saya memahami sedikit tata bahasa Indonesia yang baik dan benar.\r\n4. Saya ingin terlibat kembali dalam pembuatan surat-surat terutama terlibat dalam surat-surat untuk acara SI FEST 2023.\r\n5. Saya orang yang teliti dan baik dalam membuat dan menjaga berkas-berkas yang menjasi tanggung jawab saya.', 'Marketing', '1. Saya suka mengajak orang lain.\r\n2. Saya senang apabila orang lain mengikuti ajakan saya.\r\n3. Saya ingin belajar untuk mempengaruhi orang banyak dan cara-caranya melalui SI FEST 2023 ini.\r\n4. Saya ingin mengetahui batas mana saya bisa mengajak orang lain melalui divisi pemasaran ini.\r\n5. Saya ingin memiliki pengalaman di bidang pemasaran.', '$2y$10$/BJRW2LLSCpCz.c0by6.qOMaR6G56xQEH2vWzvbOYjxwt8PHaG87O', 'Palembang', 'KRS_KPM/202308290046.Screenshot_2023-08-28-08-34-11-77_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'Administration', NULL, '2023-08-28 17:46:32', '2023-09-15 04:44:34'),
(13, 'Xenia Clarissa Valencia M.', '09031182328017', 'xenia27marpaung@gmail.com', 'xcvm2795', 'SI Reg A', 'Palembang', 'Publication', 'Publikasi adalah tindakan promosi, yang juga merupakan transparansi suatu organisasi kepada pihak lain', 'Consumption', 'Karena konsumsi adalah kebutuhan biologis manusia, yang merupakan salah satu kelancaran suatu acara,\r\nKonsumsi juga bisa menjadi bentuk promosi', '$2y$10$O5LmSCy/KYTH7mOoLm.7ZeS6PHAlsl4sOU/QNiBWfzk5XGv4hl5I.', 'Palembang', 'KRS_KPM/202308290208.inbound3496187081030021775.jpg', NULL, NULL, '2023-08-28 19:08:27', '2023-08-28 19:08:27'),
(14, 'Syalwa Salsabillah Siregar', '09031382328139', 'syalwaslsblh@gmail.com', 'Waasls', 'SI Bil B', 'Palembang', 'Logistic', 'Mendorong diri untuk menjadi pribadi yang jauh lebih bertanggung jawab, serta memperluas relasi saya sebagai mahasiswa baru di unsri.', 'Marketing', 'Mendorong diri untuk menjadi pribadi yang jauh lebih bertanggung jawab, serta memperluas relasi saya sebagai mahasiswa baru di unsri.', '$2y$10$rnW1iD1tEuFfHoZiIjIRreMvSpNvfMHNIqSRgtSZ3pBu1UhExzjN2', 'Palembang', 'KRS_KPM/202308290252.IMG-20230829-WA0008.jpg', NULL, NULL, '2023-08-28 19:52:10', '2023-08-28 19:52:10'),
(15, 'Haniyah Faizah', '09031382328167', 'haniyahfzh8@gmail.com', 'clofeyes', 'SI Bil B', 'Palembang', 'Logistic', 'dapat melatih tanggung jawab serta memanajemen  suatu tim dan dapat mengembangkan keterampilan yang berharga dalam manajemen persediaan sehingga memiliki pengalaman di awal semester ini', 'Marketing', 'dapat mengenal dan bertemu orang baru sehingga dapat berbagi pengalaman dengan orang tsb', '$2y$10$2DpuOy7a5VMG6SYlGRe5PuVkoNbb3qgM/HoZTKLqlNaLADnrS69Ka', 'Palembang', 'KRS_KPM/202308290258.IMG_1852.jpeg', NULL, NULL, '2023-08-28 19:58:11', '2023-08-28 19:58:11'),
(17, 'Irdania Uly Lahmi', '09031482326026', 'irdaniauly@gmail.com', 'irdaniayy', 'SI Bil B', 'Palembang', 'Seminar', 'dengan mengikuti divisi ini saya ingin memperbaiki cara berkomunikasi saya dalam berinteraksi terhadap orang lain. kemudian memperkuat jiwa kerja tim saya dan mengasah otak agar lebih kreatif. terakhir, yang tidak kalah penting agar dapat teman baru.', 'Design', 'karena suka desain, untuk menambah skill desain saya kemudian memperluas pengetahuan saya terkait desain dalam kepanitian. terakhir, yang tidak kalah penting agar dapat teman baru.', '$2y$10$bi.WG4LfPYy9q5V/jXYB4u6mhfB5n30G6B.4HfLhHglT0ifDDV6mi', 'Palembang', 'KRS_KPM/202308291021.kpm.jpg', NULL, NULL, '2023-08-29 03:21:43', '2023-08-29 03:21:43'),
(18, 'Dzidan Aditya Gumilang', '09031282328038', 'dzdnaditya@gmail.com', 'dzdnaditya19', 'SI Reg C', 'Palembang', 'Competition', 'ingin membuat ide baru serta menambahkan inovasi agar lebih seru dan menarik', 'Seminar', 'saya ingin meningkatkan kerja sama dalam perancangan suatu kegiatan', '$2y$10$ScaXS8izF.XhXMu1uKMXhuKN2MSz5sZOTGLtIFEsvw4girZoWkkrC', 'Palembang', 'KRS_KPM/202308291219.1000049767.jpg', 'Competition', NULL, '2023-08-29 05:19:59', '2023-09-15 05:57:03'),
(20, 'Zikri Firmansyah', '09031282328064', 'zikrifrmnsyh26@gmail.com', 'zkriif', 'SI Reg C', 'Palembang', 'Media Partner', 'Saya tertarik dan ingin belajar berkomunikasi dan membangun relasi yang baik dengan individu/kelompok untuk bekerja sama mencapai tujuan yang diinginkan bersama', 'Logistic', 'Saya ingin melatih dan meningkatkan kerja sama tim saya dalam mengelola/mengorganisir perlengkapan/keperluan acara.', '$2y$10$0Lx3bcQIsAFvsGId6mohJurtJBcSm00LpBxPs14uiuKf4edfUbc.O', 'Palembang', 'KRS_KPM/202308300016.WhatsApp Image 2023-08-30 at 07.13.49.jpeg', NULL, NULL, '2023-08-29 17:16:45', '2023-08-29 17:16:45'),
(21, 'Rifqi Febrian', '09031282328051', 'febrrif22@gmail.com', 'rifqijoe_', 'SI Reg B', 'Palembang', 'Competition', 'Karena saya tertarik di divisi ini dan saya ingin mengembangkan softskill yang saya miliki melalui divisi ini sepert leadership, kerja sama tim, berpikir kritis, dll.', 'Marketing', 'karena saya ingin menambah wawasan dan pengalaman di bidang bisnis agar kedepannya skill yang diperoleh dapat diaplikasikan dalam dunia kerja.', '$2y$10$sChnpZQSWT.6cxBC9M0YU.uXpQop2FS.iOfWbJuN6ur4.Oj0h3O1O', 'Indralaya', 'KRS_KPM/202308300301.WhatsApp Image 2023-08-29 at 19.58.37.jpeg', NULL, NULL, '2023-08-29 20:01:48', '2023-08-29 20:01:48'),
(22, 'Rahmad Hidayat', '09031282328044', 'rahmadhidayat6875@gmail.com', 'rahmad1524', 'SI Reg C', 'Indralaya', 'Sponsorship', 'ingin menambah relasi.', 'Bazaar', 'ingin menambah ilmu manajemen.', '$2y$10$qc51JmR.p0S.3LI113kpWOL4tE3KaTCp6j4HvXf5KYC/97BLtBShS', 'Indralaya', 'KRS_KPM/202308300459.Screenshot_20230707_120920_OneDrive.jpg', NULL, NULL, '2023-08-29 21:59:04', '2023-08-29 21:59:04'),
(23, 'Daffa Pratama Putra', '09031282328090', 'oggyftdaffa123@gmail.com', 'oggyftdaffa', 'SI Reg C', 'Palembang', 'Logistic', 'saya ingin belajar bagaimana bekerja dlm suatu organisasi,dan juga sepertinya logistik bekerja dilapangan yg cocok dengan saya', 'Competition', 'saya tertarik pada bagian \"menentukan lomba\".saya ada saran lomba yang mungkin akan seru jika ada', '$2y$10$Cj0vKPvfTOJGlqJeoSwW3.A7T5rbCDplxp4q/seUW2HazefhcUIri', 'Palembang', 'KRS_KPM/202308300612.Gambar WhatsApp 2023-08-30 pukul 13.12.06.jpg', NULL, NULL, '2023-08-29 23:12:54', '2023-08-29 23:12:54'),
(24, 'Marizka Riffiy Alfiyah', '09031382328150', 'marizkariffiyalfiyah@gmail.com', '005092628231220', 'SI Bil A', 'Banyuasin III', 'Seminar', 'Alasan saya ikut dalam divisi ini karena saya pernah hadir dalam sebuah acara seminar yang menurut saya acaranya kacau sekali dan menjadi salah satu pengalaman buruk bagi saya. Maka dari itu saya ingin sekali berkontribusi langsung dan terjun langsung dalam suatu acara seminar karena saya ingin mengembangkan  keterampilan saya untuk ikut andil dalam mengelola acara tersebut menjadi acara yang bisa dikenang baik bagi peserta seminar', 'Bazaar', 'Saya memiliki minat besar dalam mengatur dan melaksanakan sebuah acara. Saya percaya bahwa terlibat dalam divisi bazaar akan memberikan kesempatan besar bagi saya untuk berkreasi, berinovasi sekaligus belajar dan berkontribusi langsung dalam pembentukan sebuah acara yang berkesan bagi kebanyakan orang.', '$2y$10$XC8kDpFUm6gmJaVgbp3A3.n70bQbnmH56bo5uSj11iu14neIQmzBG', 'Palembang', 'KRS_KPM/202308301459.CamScanner 28-08-2023 23.29.jpg', NULL, NULL, '2023-08-30 07:59:33', '2023-08-30 07:59:33'),
(25, 'Muhamad Ramadhan Heru Pradipta', '09031282328030', 'diptaspeed2017@gmail.com', 'ruheru11', 'SI Reg B', 'Palembang', 'Sponsorship', 'Saya berminat bergabung dengan divisi sponsorship, karena saya merasa bahwa nyawa dari bisa jalannya seluruh dari kegiatan dari SI fest 2023 ini berasal dari dana. saya tertarik mencari tahu dengan cara bergabung secara langsung dengan divisi sponsorship bagaimana cara kita menarik perhatian sponsorship dan bagaimana berinteraksi dengan pihak sponsor. saya merasa tertarik dan tertantang untuk bergabung langsung sebagai pihak yang menjadi nyawa untuk jalannya acara besar ini', 'Buddies', 'saya tahu bahwa puncak acara dari SI fest 2023 ini adalah seminar nasional yang mana bertujuan memberikan nilai edukasi untuk para pesertanya, saya tertarik untuk bertindak langsung agar acara puncak SI fest 2023 ini bisa berjalan dengan lancar bahkan dengan akhir yang memuaskan', '$2y$10$70NqGqnHHA8YUiaxpXL1g.OcbKwXu6.w4Yzn5igeOxjV6FYNFSlpi', 'Palembang', 'KRS_KPM/202308311207.WhatsApp Image 2023-08-31 at 19.06.01.jpeg', 'Sponsorship', NULL, '2023-08-31 05:07:50', '2023-09-15 04:47:14'),
(26, 'M. Farhan Alhabsy', '09031282328029', 'farhanalhabsy2908@gmail.com', 'farhanalhabsy29', 'SI Reg B', 'Palembang', 'Marketing', 'tertarik dan ingin menambah pengalaman di bidang marketing', 'Seminar', 'mencari pengalaman', '$2y$10$F/h5zCxeUVCaNE6yVrTZbeYtv/GpFWyLbVNqyTQDMYQePOFHj.8wS', 'Palembang', 'KRS_KPM/202308311255.IMG-20230820-WA0015.jpg', 'Seminar', NULL, '2023-08-31 05:55:00', '2023-09-15 04:42:43'),
(28, 'Fahren Affandi', '09031282328057', 'poiny5198@gmail.com', 'fahrennn_', 'SI Reg A', 'indralaya', 'Logistic', 'karena saya sangat ingin berpartisipasi dalam event ini yang diselenggarakan oleh pihak himsi yang sangat keren sekali harap terima saya.', 'Consumption', 'karena saya ingin membagikan makanan kepada semua peserta yang mengikuti event sifest.', '$2y$10$KRB8kEQHykA7ltMdzmdOLeRKmDvLbR8l1RI7tWKk.jYHaSNNno.8K', 'Indralaya', 'KRS_KPM/202309010406.Gambar WhatsApp 2023-09-01 pukul 11.03.33.jpg', 'Consumption', NULL, '2023-08-31 21:06:47', '2023-09-15 05:02:48'),
(29, 'Kaisyah Azzahra', '09031382328130', 'kaisyahazzahra410@gmail.com', 'kaisyaazzahra_', 'SI Reg B', 'Indralaya', 'Marketing', 'Karena saya ingin memiliki jaringan yang luas dan mengasah skill komunikasi interpersonal saya menjadi lebih baik', 'Buddies', 'Karena saya ingin memiliki pengalaman menjadi salah satu anggota yang ikut pertisipasi untuk mempersiapkan SI Fest ini', '$2y$10$vcCQq0C9vzV4WE9GwUkHEuh02FB3K7tTvZxUhEomSifzdv9yvBG.2', 'Indralaya', 'KRS_KPM/202309010845.IMG_1554.png', NULL, NULL, '2023-09-01 01:45:57', '2023-09-01 01:45:57'),
(30, 'Annisa Olivia Rafidah', '09031382328132', 'annisaoliviarafidah@gmail.com', 'yyourisa', 'SI Reg B', 'Indralaya', 'Marketing', 'Karena saya memiliki keinginan untuk menjadi mahasiswi yang kreatif dan inovatif sehingga dapat menambah pengetahuan dan skill saya dalam dunia marketing', 'Buddies', 'Karena saya ingin mengasah kemampuan saya dalam berkomunikasi dengan orang lain dan juga saya ingin memiliki pengalaman sebagai salah satu anggota yang berpartisipasi dalam acara SI Fest ini', '$2y$10$XjOQjHBWVIUs38W.KaDZM..UkixWc1ih90swe7xAbuxKlgu5ybWOS', 'Indralaya', 'KRS_KPM/202309010846.IMG_20230901_154559.jpg', NULL, NULL, '2023-09-01 01:46:52', '2023-12-28 01:49:56'),
(31, 'Trya Andini Banowati', '09031282328060', 'tryaandini008@gmail.com', 'tryaandiniii', 'SI Reg B', 'Indralaya', 'Bazaar', 'karena ingin menambah pengalaman baru, ingin mengetahui lebih banyak tentang divisi bazar ini', 'Sponsorship', 'karena ingin menambah pengalaman baru dengan mencoba berkontribusi dalam hal sponsorhip agar lebih tahu lebih mendalam tentang divisi ini', '$2y$10$dYeBe/buDZnUKnB1tzvQ.O4ZH9CWch7941YtKmiH/5UKA3g12KsL6', 'Indralaya', 'KRS_KPM/202309010942.Screenshot_20230831_194532.jpg', NULL, NULL, '2023-09-01 02:42:26', '2023-09-01 02:42:26'),
(32, 'Jeremiah Alwin Siahaan', '09031182328007', 'jeremiahsiahaan1@gmail.com', 'jeremiah.a.s', 'SI Reg A', 'Indralaya', 'Videography Photography', 'Saya memiliki minat dalam Videography & Photography serta keinginan untuk belajar dalam mengembangkan potensi diri. Serta di dalam divisi ini saya dapat belajar serta terlibat di dalam sebuah organisasi', 'Publication', 'Saya memiliki ketertarikan dalam divisi publikasi karena divisi ini berkaitan erat dengan dokumentasi. Di dalam divisi ini saya dapat mengembangkan kemampuan dalam mengelola sosial media dan juga mengembangkan diri dalam berorganisasi', '$2y$10$V2jK0bw5Om8/SVqa0AEYV.xoG.3iMadN2exuEMgi0580LLMtORT5y', 'Indralaya', 'KRS_KPM/202309011035.KPM_Jeremiah Siahaan.jpg', 'Videography Photography', NULL, '2023-09-01 03:35:26', '2023-09-15 04:46:43'),
(33, 'Ulva Khairunnisya', '09031182328101', 'khairunnisyaulva@gmail.com', '@evarisionscarlet', 'SI Reg B', 'Apartemen Putri Unsri, Indaralaya', 'Marketing', 'Meningkatkan skill komunikasi belajar memperkenal kan suatu produk atau program ke khalayak banyak', 'Media Partner', 'Mempelajari perizinan dan pendistiribusian sebuah media ke masyarakat', '$2y$10$fnlZAiRU4HdwNrQLHPn1v.o/C0MlXI0aJ4y2RhtYIgi/uFgrOsOia', 'Indralaya', 'KRS_KPM/202309011306.IMG-20230829-WA0005.jpg', 'Media Partner', NULL, '2023-09-01 06:06:08', '2023-09-15 04:45:06'),
(34, 'Muhammad Wahyu Hikmalsyah', '09031382328136', 'wahyuhikmalsyah3@gmail.com', 'm.wahyu_hmh', 'SI Bil A', 'Palembang', 'Administration', 'Pengalaman dan kemampuan saya yang telah terbukti sebagai sekretaris di tingkat OSIS SMP-SMA dan sebagai sekretaris forum OSIS Sumatera Selatan menegaskan bahwa saya telah mengembangkan keterampilan yang sangat relevan dengan tugas-tugas yang akan saya hadapi dalam Divisi Sekretaris.', 'Consumption', 'memilih Divisi Konsumsi sebagai pilihan kedua saya akan membawa manfaat yang tak kalah penting. Saya sangat ingin menyukseskan kegiatan \"sifest\" dengan membantu melancarkan kegiatan konsumsi saat acara berlangsung.', '$2y$10$ngKST9TlMQZaPCzJfh76puj6NtfvfKyTHLgIbVypL1tTPRqFyopvu', 'Indralaya', 'KRS_KPM/202309011343.krs.jpg', NULL, NULL, '2023-09-01 06:43:44', '2023-09-01 06:43:44'),
(35, 'Azzahra Dezza Syahputri', '09031282328110', 'cyaputriw@gmail.com', '_azzahradzs', 'SI Reg B', 'Palembang', 'Marketing', 'Saya merupakan pribadi yang aktif dan komunikatif serta saya mampu mempublikasikan acara SI FEST ke banyak orang sehingga saya ingin bergabung ke divisi marketing.', 'Buddies', 'Saya ingin belajar dan berperan serta dalam berlangsungnya suatu acara dan berhubungan langsung dengan narasumber-narasumber ternama serta banyak relasi lainnya.', '$2y$10$L3wnSYpMZTFFlzAqWLo1yeWvX/88ijwmTUKU2tdxzMp300dGX3/4q', 'Palembang', 'KRS_KPM/202309011420.IMG-20230901-WA0014.jpg', 'Marketing', NULL, '2023-09-01 07:20:47', '2023-09-15 04:49:26'),
(36, 'Jackson Imanuel Manurung', '09031182328005', 'jackson.imanuelmanurung@gmail.com', '15131705', 'SI Reg A', 'Indralaya', 'Logistic', 'saya sudah pernah menjadi anggota dari devisi logistik saat event gereja dan saya  sudah merasakan keseruan ketika menjadi anggota devisi logistik. maka dari itu saya ingin merasakan keseruan itu lagi bersama mahasiswa/i Universitas Sriwijaya', 'Bazaar', 'karna saya suka menawarkan/mempromosikan sesuatu kepada orang dengan cara saya sendiri maka dari itu saya ingin masuk ke dalam devisi ini', '$2y$10$OTN6QpDLVlJbiEXRf0xitOM6BT4AxK9i2stJHceaVfRk/gtIbjmxe', 'Indralaya', 'KRS_KPM/202309011450.WhatsApp Image 2023-09-01 at 21.47.21.jpeg', 'Bazaar', NULL, '2023-09-01 07:50:38', '2023-09-15 05:01:04'),
(37, 'Sella Juniastia Marsya Saputri', '09031282328074', 'sellajuniastia17@gmail.com', 'otangemoy', 'SI Reg A', 'Indralaya', 'Administration', 'Saya ingin menambah pengalaman dan wawasan saya mengenai tata cara surat-menyurat dan hal lainnya yang berkaitan dengan divisi Administration ini.', 'Marketing', 'Saya ingin mengembangkan kembali kemampuan yang saya miliki seperti kemampuan bersosialisasi dan berkomunikasi dengan orang lain melalui kegiatan-kegiatan yang berhubungan dengan pemasaran sesuatu.', '$2y$10$I7UpxtcXhdD/soLDLTc.gO4kdsDPg8bBD99OnZxetY6Pn6x4BQ9ce', 'Indralaya', 'KRS_KPM/202309011706.KSM Semester 1.png', 'Administration', NULL, '2023-09-01 10:06:29', '2023-09-15 04:44:18'),
(38, 'Meiyin Monica Amilia Putri', '09031182328097', 'meiyinmonica@gmail.com', 'meiyinmonicaa', 'SI Reg A', 'Indralaya', 'Buddies', 'Alasan saya untuk memilih divisi ini karena saya memiliki ketertarikan pada bidang ini dimana seperti yang saya ketahui bahwa divisi buddies ini dapat melatih communication skill dan public speaking Serta dapat memberi saya kesempatan untuk belajar dalam tim Sehingga dapat meningkatkan soft skill dan hard skill dalam diri saya', 'Marketing', 'Alasan saya memilih divisi ini karena saya ingin mengetahui lebih lanjut Tentang strategi pemasaran dan ingin mengajak masyarakat khususnya siswa dan mahasiswa untuk hadir memeriahkan acara tersebut.', '$2y$10$cCupjHFtcnKXW2fXswmS7.qCdUFacUroNh6cWU1L45XLeV16wlhbe', 'Indralaya', 'KRS_KPM/202309020104.Screenshot_2023-09-02-07-58-36-04_c37d74246d9c81aa0bb824b57eaf7062.jpg', NULL, NULL, '2023-09-01 18:04:09', '2023-09-01 18:04:09'),
(39, 'Apriansyah Wahyudi Putra', '09031282328050', 'apriansyahw769@gmail.com', 'rianngo', 'SI Reg B', 'Palembang', 'Marketing', 'Saya ingin ikut dalam Sifest ini karna untuk menambah sekaligus mencari pengalaman baru untuk bekal masa depan, dan untuk mendapatkan relasi serta meningkatkan skil komunikasi yang sangat penting dalam dunia kerja', 'Competition', 'Saya ingin ikut dalam Sifest ini karna untuk menambah sekaligus mencari pengalaman baru untuk bekal masa depan, dan untuk mendapatkan relasi serta meningkatkan skil komunikasi yang sangat penting dalam dunia kerja', '$2y$10$TfbeyseoynrXKpT3zfVn7.jha0bejkSvmGFVQeWedigYDPAGNmIzG', 'Palembang', 'KRS_KPM/202309020231.IMG_20230902_092950.jpg', NULL, NULL, '2023-09-01 19:31:34', '2023-09-01 19:31:34'),
(40, 'Rifki Alkazim', '09031282328052', 'rifkialkazim064@gmail.com', 'rifkialkazim25', 'SI Reg B', 'Palembang', 'Marketing', '1.ingin mencari pengalaman\r\n2.ingin mencari relasi\r\n3.ingin lebih mengenal ekosistem yang ada di HIMSI, karena saya tertarik bergabung pada HIMSI', 'Logistic', 'Karena sudah memiliki sedikit  pengalaman di bidang tersebut', '$2y$10$8lnJvWnK/CmX7OJM1idXOexDPfTB8Jk4iiHA6dhQ4FtT5CBmc6BGe', 'Palembang', 'KRS_KPM/202309020236.1000057684.jpg', 'Marketing', NULL, '2023-09-01 19:36:25', '2023-09-15 04:48:47'),
(41, 'Habil Al Farisy', '09031282328070', 'habilalfarisy@gmail.com', 'hbl.alfarisy', 'SI Reg B', 'Indralaya', 'Marketing', 'Saya ingin ikut andil dalam mempromosikan event technology euphoria agar event ini berjalan dengan lancar dan memiliki peserta yang banyak dan berlangsung dengan meriah', 'Logistic', 'Saya ingin memberikan kontribusi berupa bantuan tenaga tambahan supaya dapat membantu event technology euphoria berjalan dengan baik dan tanpa ada kendala', '$2y$10$wGoIemeYtfz4YskH4jhNFO0Oiulz0RBGq7PPhAJYS.EumzZPL7ka6', 'Indralaya', 'KRS_KPM/202309020715.1692527552970.jpg', NULL, NULL, '2023-09-02 00:15:57', '2023-09-15 05:38:35'),
(42, 'Muhammad Rafi Herdian', '09031282328059', 'rafiherdian06@gmail.com', 'tnherdian', 'SI Reg C', 'Indralaya', 'Sponsorship', 'Ingin melatih kemampuan komunikasi dan memperluas jaringan kerja', 'Design', 'ingin mempertajam kreativitas dan kemampuan design', '$2y$10$qTIbVjTa2wIhb.VrJyq9XOLG/YlzICjGHG.Lr3YYP4AZi61UEzvnK', 'Indralaya', 'KRS_KPM/202309020751.KPM.jpg', 'Sponsorship', NULL, '2023-09-02 00:51:28', '2023-09-15 04:47:33'),
(43, 'Henrie Rafi Ardiyanto', '09031282328031', 'henrierafi@gmail.com', 'henrieman', 'SI Reg B', 'Palembang', 'Buddies', 'Saya memilih buddies, karena menurut saya divisi ini memiliki kegiatan yang asik dan menarik, selain itu saya juga ingin berkontribusi dalam jalannya seminar.', 'Sponsorship', 'Saya memilih divisi sponshorship karena, kegiatan yang dilakukan divisi ini sangat menarik dan saya juga ingin membangun relasi yang baik.', '$2y$10$JXVY/j1LbWWTulsJHlbCSeoQlkCANJH15IjRJNY2YjiqhdbTDNyli', 'Palembang', 'KRS_KPM/202309021017.CamScanner 31-08-2023 21.16_1.jpg', NULL, NULL, '2023-09-02 03:17:44', '2023-09-02 03:17:44'),
(44, 'Cindy Dinata', '09031382328128', 'cindydinataa@gmail.com', 'cindydinata.', 'SI Bil A', 'Palembang', 'Seminar', 'Karena tertarik dan ingin berkontribusi dengan tugas pokok dan fungsinya. Selain itu saya juga pernah ikut kepanitiaan di SMA bagian divisi dekorasi dan di divisi seminar ini terdapat tupoksi itu.', 'Consumption', 'Karena saya belum pernah menjabat di divisi konsumsi sebelumnya jadi saya ingin ikut serta di dalamnya dan menurut saya divisi ini tidak seberat divisi lainnya.', '$2y$10$Ypu3kw7c429cFEHaKIJjy.5kPgJ3f4UHAYvCczIKM7hoV/4e4QbIm', 'Palembang', 'KRS_KPM/202309021340.KPM_SEMENTARA_09031382328128_page-0001.jpg', NULL, NULL, '2023-09-02 06:40:39', '2023-09-02 06:40:39'),
(45, 'M. Suandi', '09031282328036', 'msuandi53@gmail.com', 'wandi0001000', 'SI Reg A', 'Indralaya', 'Marketing', 'Ingin mengembangkan dan mempelajari lebih dalam skill di bidang ini', 'Seminar', 'Ingin ikut menyukseskan acara seminar', '$2y$10$vBI4AxtF55czmQmrxP37AeKTkSdcFRS0Wucwgu4mz9jEVifU//nIK', 'Indralaya', 'KRS_KPM/202309030011.1000098474.jpg', NULL, NULL, '2023-09-02 17:11:23', '2023-09-15 05:49:49'),
(46, 'Halona Daffakhansa Nabila', '09031382328140', 'halonadn11@gmail.com', 'halonadn', 'SI Bil A', 'PALEMBANG', 'Competition', 'Memiliki minat dan antusiasme dalam mengatur berjalannya kompetisi atau lomba', 'Consumption', 'Ingin mengembangkan kemampuan mengatur anggaran kebutuhan konsumsi dalam suatu acara', '$2y$10$YQfieURa844nmgq.cTXqBeIOYFosoA5Jmd99dv6Rn9CjDJpw01uBe', 'Palembang', 'KRS_KPM/202309030243.IMG_20230903_091654.jpg', 'Consumption', NULL, '2023-09-02 19:43:54', '2023-09-15 05:02:59'),
(47, 'Ahmad Rijal Khairullah', '09031282328041', 'arijalk19@gmail.com', 'rijalkhairullah', 'SI Reg B', 'Lorong Usrah Blok E Timbangan', 'Logistic', 'Alasan yang pertama karena ingin mendapatkan pengalaman baru dengan harapan saya bergabung dengan divisi logistics ini dapat memberikan pengalaman dan keterampilan baru, di divisi ini juga akan melatih saya lebih bertanggung jawab atas barang barang yang akan yang di perlukan saat SI FEST 2023 nantinya.', 'Competition', 'Alasan saya memilih divisi competition ini adalah untuk mecari pengalaman baru dan menambah relasi menjadi lebih luas serta dapat menjadi bagian yang bertanggungjawab sebagai pelaksana lomba sehingga saya menjadi tau apa saja yang harus disiapkan dalam ajang lomba nantinya', '$2y$10$/cQZu2bjzdS9ccyhROLX0.kD8xWxzFuvhH47mb/0Vd.y5N5Lhg7CO', 'Indralaya', 'KRS_KPM/202309030608.IMG-20230903-WA0010.jpg', 'Logistic', NULL, '2023-09-02 23:08:02', '2023-09-15 04:50:19'),
(49, 'Juseia Wulandari', '09031182328102', 'juseiawulandari59@gmail.com', '@seylandr_', 'SI Reg C', 'Palembang', 'Bazaar', 'Saya tertarik terhadap divisi ini karena saya mempunyai ketertarikan dalam bidang kuliner, salah satu hobi saya adalah memasak. Selain itu, saya juga tertarik untuk tergabung dalam divisi bazaar ini karena tertarik untuk membantu menjual hasil masakan ataupun souvernir dengan tujuan supaya dapat lebih memperkenalkan acara SI Fest UNSRI 2023 agar lebih banyak dikenal masyarakat luas. Sehingga banyak yang tertarik untuk join ke acara yang akan diadakan oleh SI Fest UNSRI 2023.', 'Media Partner', 'Saya juga tertarik terhadap divisi ini karena saya ingin melatih kemampuan public speaking saya dalam bernegosiasi untuk mendapatkan media partner yang dapat membantu mensukseskan acara SI Fest UNSRI 2023 ini, supaya dapat menarik banyak audience untuk mengikuti berbagai acara yang diadakan SI Fest UNSRI, baik itu seminar ataupun kompetisi. Selain itu, tentunya divisi ini merupakan divisi yang  sangat berpengaruh juga dalam penyebaran informasi terkait SI Fest UNSRI 2023. Karena itu, saya ingin menjadi salah satu bagian penting dalam mensukseskan acara ini.', '$2y$10$hII2bHVWYboAvJaXGTpMdODvGtck6VB0CL1y7KfCATPp1fY/CDgIy', 'Indralaya', 'KRS_KPM/202309030738.KPM JUSEIA WULANDARI.jpg', 'Bazaar', NULL, '2023-09-03 00:38:54', '2023-09-15 05:00:41'),
(50, 'Fuad Kanifudin', '09031382328121', 'kanifudinfuad06@gmail.com', 'k_fuuu', 'SI Reg B', 'Indralaya', 'Logistic', 'Alasan saya memilih divisi logistik karena saya ingin ikut berpartisipasi dalam menyukseskan acara SI FEST 2023 dan  menambah pengalaman saya agar bisa lebih mengetahui dan juga lebih cakap dalam mempersiapkan segala bentuk perlengkapan logistik yang diperlukan pada saat SI FEST berlangsung.', 'Consumption', 'Saya tidak ingin ada yang kelaparan pada saat acara SI FEST', '$2y$10$zcfu.Monts4TQeebxQfbgudMTMxIOf948eEaW5HrSo4199PdCuMUa', 'Indralaya', 'KRS_KPM/202309030752.1000008787.jpg', 'Logistic', NULL, '2023-09-03 00:52:31', '2023-09-15 04:50:11'),
(51, 'Desna Wary Yerty Purba', '09031282328107', 'desnawary23@gmail.com', 'desnawaryy', 'SI Reg A', 'Indralaya', 'Buddies', 'ingin menambah pengalaman serta relasi yang luas dengan orang-orang yang berkualitas dan ingin membantu jalannya acara seminar sehingga berjalan dengan lancar', 'Bazaar', 'ingin menambah pengalaman serta relasi dan juga ingin belajar bisnis pemasaran barang/jasa', '$2y$10$u826kYeBxW.r6QLbk/scCuS53UYVgbDnI5asqRTk/W8RSj5WnQJwi', 'Indralaya', 'KRS_KPM/202309030836.20230903_153137_0000.jpg', NULL, NULL, '2023-09-03 01:36:27', '2023-09-03 01:36:27'),
(52, 'Muhammad Syaikh Azka', '09031282328034', 'azkamuhammadsyaikh@gmail.com', 'syaikhazka', 'SI Reg A', 'Indralaya', 'Videography Photography', 'Tertarik dengan pekerjaan dibalik layar dan tidak terlalu berbakat dalam public speaking', 'Design', 'Tertarik dengan perencanaan dan pengembangan design', '$2y$10$SwK94wRErow0xKJduRN7quk2RNxdcA08C.i0BL1GMFhzD5/xJjGOW', 'Indralaya', 'KRS_KPM/202309031018.IMG_20230903_171443.jpg', NULL, NULL, '2023-09-03 03:18:00', '2023-09-03 03:18:00'),
(53, 'Ridho Pramana Putra', '09031182328024', 'soparridho@gmail.com', 'otamn0507', 'SI Reg B', 'Jalan Jepang, jalan sepakat II No. 55 Rt. 007 Rw. 002 Kelurahan Alang-Alang Lebar', 'Marketing', 'Berkaitan dengan jurusan dan ada ide untuk buat konten', 'Sponsorship', 'Supaya bisa mengatur sebuah acara tertentu', '$2y$10$Ibc7SzZ8hKqOTGb2w7LbyeVngrIjgw08P1Cty9jN8IXgdg8Z6g6.y', 'Indralaya', 'KRS_KPM/202309031053.IMG_20230903_175111.jpg', NULL, NULL, '2023-09-03 03:53:58', '2023-09-03 03:53:58'),
(54, 'M. Musyawir Halim', '09031282328113', 'halimplg01@gmail.com', 'halimmmmmmm', 'SI Reg B', 'Palembang', 'Consumption', 'Karena saya suka makanan, ingin mencoba berorganisasi dan terlibat dalam acara dan ingin membantu membuat acara ini lebih baik.', 'Logistic', 'Karena saya ingin mencoba berorganisasi dan terlibat dalam acara dan ingin membantu membuat acara ini lebih baik.', '$2y$10$rC7R1OV/nKmZE/T4mn3ks.4u1qEuooWdpy3Sr.Szs0jRBWRCLo4xq', 'Indralaya', 'KRS_KPM/202309031117.IMG_20230903_171501-min.jpg', NULL, NULL, '2023-09-03 04:17:28', '2023-09-03 04:17:28'),
(55, 'M. Putra Willy Nailis', '09031282328073', 'mputrawillynailis@gmail.com', 'vinszzi', 'SI Reg A', 'Palembang', 'Competition', 'karena saya cukup berpengalaman dalam mengatur dan mengawasi pertandingan pada saat saya osis di SMA, dan juga saya pernah berpartisipasi dalem kegiatan lomba pada SI Fest 2022, jadi saya cukup tau dan ada gambaran bagaimana lomba SI Fest 2023 akan dilaksanakan', 'Logistic', 'karena saya ingin menjadi bagian dari logistik', '$2y$10$LbxWmMA0mW.FhW9R8.22mefQ.HsQO5CAmB4pE3C4y6wr7s2o88BSG', 'Palembang', 'KRS_KPM/202309040351.16937994537367795800383128689836.jpg', 'Competition', NULL, '2023-09-03 20:51:14', '2023-09-15 04:40:20'),
(57, 'Aprilia Herawati', '09031382328133', 'lieeereere@gmail.com', 'superiorrs', 'SI Bil B', 'palembang', 'Marketing', 'alasan pribadi saya karena memang ingin mengajak khalayak banyak dengan kemampuan saya dalam bidang marketing ini, dikarena saya dulu juga merupakan anggota osis dan ketua ekskul yang pernah juga mempromosikan /mengajak orang orang untuk mengikuti event yang diadakan. maka dari itu saya ingin mencoba hal baru dalam rana perkuliahan walaupun konteks \"marketing\" itu sama tetapi relasi, lingkungan baru serta event yang diadakan itu sedikit berbeda dengan masa SMA lalu masih banyak lagi juga benefit yang didapat dalam mengikuti freelance ini. nah, dari sini lah saya ingin berpartisipasi dalam menyuarakan acara si fest 2023 ini.', 'Design', 'alasannya karena saya ingin meningkatkan skill dibidang design ini dalam ranah yang setingkat lebih tinggi dari masa SMA yang pada saat itu saya ditugaskan di bidang design juga dengan berbagai kegiatan yang pernah saya lakukan seperti mendesign sertifikat, id card, tiket, paperbag, dan lain sebagainya. oleh sebab itu, saya memilih bidang ini dalam mengikuti freelance pada si fest 2023 agar dapat membantu dalam mensukseskan acara ini.', '$2y$10$xCO7CPvmX7CzVTJXdd2U3ujrjYbKIa6pZuITs2BIO83gjJy/MuQku', 'Palembang', 'KRS_KPM/202309040458.krs.jpg', 'Marketing', NULL, '2023-09-03 21:58:11', '2023-09-15 04:48:10'),
(58, 'Putri Maharani', '09031382328163', 'mhraniptr18@gmail.com', 'm4hrnii', 'SI Bil B', 'Palembang', 'Videography Photography', 'Karena saya memiliki minat pada bidang videography dan photography, serta saya juga ingin mengembangkan skill saya di bidang tersebut', 'Buddies', 'Karena saya ingin belajar bagaimana cara berkomunikasi dengan guest star dengan baik serta mengembangkan skill berkomunikasi saya', '$2y$10$g/7lCZa63sde168Yeu3I1.uK1GG0t6J4hy2BLTyv8RMcYYW2slv1C', 'Palembang', 'KRS_KPM/202309040552.20230904_125112.jpg', NULL, NULL, '2023-09-03 22:52:55', '2023-09-03 22:52:55'),
(59, 'Novita Ramadhini', '09031382328148', 'novitaramadhini8@gmail.com', 'novdrq', 'SI Bil B', 'Palembang', 'Sponsorship', 'karena tertarik dan juga penasaran, biasanya kalau lihat disetiap acara pasti ada yang namanya sponsorship sehingga jadi penasaran ingin lebih mengenal dan belajar bagaimana cara mendapatkan sebuah sponsor untuk menyelenggarakan sebuah acara/kegiatan', 'Buddies', 'karena di divisi ini bisa belajar bagaimana cara berkomunikasi satu sama lain dan dapat menjadi penghubung bersama guest star', '$2y$10$j1uuIjXW2AjzyIEvSfj0k./ejew3q3EX32nKaTXOQhtUujRw/HIra', 'Palembang', 'KRS_KPM/202309040555.IMG_20230904_125328.jpg', 'Sponsorship', NULL, '2023-09-03 22:55:01', '2023-09-15 04:47:23'),
(60, 'Imam Akbar', '09031282328104', 'imamakbar730@gmail.com', '09031282328104', 'SI Reg A', 'Indralaya', 'Marketing', 'Cukup percaya diri dengan public speaking yg telah saya asa selama SMA(jur=ips) dan mempunyai minat mendalam di bidang marketing', 'Bazaar', 'saya lumayan sering berinteraksi dengan pelanggan, dikarenakan saya sering membantu ibu saya dalam menjaga warung, dari situlah skill komunikasi dan percaya diri saya terlatih', '$2y$10$B0spAJPpzVSiPsQfILioleWskB.dqCblUzL7hIAQOUkVddheerxvO', 'Indralaya', 'KRS_KPM/202309040632.IMG_20230904_132633_nzXZOr0937_S3e2CPmP4r.jpeg', 'Bazaar', NULL, '2023-09-03 23:32:07', '2023-09-15 05:00:29'),
(62, 'Weli Ratri Homausyah', '09031382328142', 'hwellshi@gmail.com', 'welicantik', 'SI BIL B', 'Palembang', 'Marketing', 'Alasan saya memilih divisi marketing ini adalah karena yang sudah diberi tahu oleh kakak\" himsi waktu sosialisasi freelance ini bahwa kegiatan yang ada dalam divisi marketing ini salah satunya adalah mem promosi kan kegiatan ke sekolah\" yang ada di palembang, kegiatan yang membuat saya sangat tertarik untuk bergabung di divisi ini karena saya sangat suka berbicara di depan orang banyak, dengan bergabung di divisi ini saya ingin melatih keterampilan ini disini yaitu dengan berbicara di depan orang banyak di depan orang yang tidak saya kenal dan juga saya ingin mencari pengalaman selama di kuliah ini salah satunya dengan join di freelance yang ada di himsi ini.', 'Bazaar', 'Alasan saya bergabung di divisi bazar ini karena saya sangat suka berjualan yang dimana waktu SMA kemarin saya terlibat terus di dalam divisi bazar ini atau konsumsi yang dimana saya jualan bersama rekan-rekan saya di sekolah dan itu sangat menyenangkan dan saya sangat menyukainya, dari sana saya tahu bahwa saya sangat suka berjualan di khalayak umum.\r\n\r\nmakanan berat: pempek kapal selam yang sudah di goreng dan di potong menggunakan bungkus plastik mika ukuran sedang dan ada cuka yang sudah di bungkus menggunakan kantong plastik dan di dalamnya, karena dengan menjual ini orang\" bisa me makannya di siang hari ataupun siang hari.\r\n\r\nmakanan asin: sekarang lagi viral yang namanya basreng pedas daun jeruk dengan menjual ini orang\" biasanya tertarik dengan hal-hal yang viral\" seperti makanan kering satu ini karena rasanya yang enak walaupun pedas tetapi ada juga variannya yang tidak pedas yaitu original.\r\n\r\nmakanan manis: saya menyarankan untuk menjual pie susu dengan harga murah karena di manapun orang sangat suka dengan makanan ini, orang tua dan muda juga sangat menyukai ini karena rasanya yang enak dan tidak bikin orang eneg jika memakannya dalam porsi yang banyak.\r\n\r\nminuman: \r\n1. Air Putih karena dimana pun orang suka membeli ini dan terbilang murah dan juga semua orang menyukainya dan sangat dicari orang jika orang ingin membeli minuman di toko tempat terdekat yang menjual minuman.\r\n\r\n2. Es Jelly Kelapa Muda yang di taruh di dalam botol kale ukuran 250 ML yang bisa kita jual langsung dan membuat para konsumen mudah untuk menyimpannya di dalam tas maupun di pegang kapan pun.', '$2y$10$jqpcZgzBW7cfyQobJr5idOK8Mpw/CkiIvQ7Or2SfZvh7LNcSrvske', 'Palembang', 'KRS_KPM/Foto weli.jpeg', NULL, NULL, '2023-09-04 07:13:30', '2023-09-04 00:15:20'),
(63, 'M Raykah Alam Ramadan', '09031382328123', 'rakapalembang2004@gmail.com', 'raykhaalam', 'SI Bil A', 'Palembang', 'Buddies', 'Untuk meningkatkan skill dalam menjalankan sebuah event serta untuk menambah relasi dan pengalaman', 'Publication', 'Untuk menambah wawasan dalam bidang publikasi serta menambah relasi', '$2y$10$UMqKFPIWNjMaorXkc94elO1eLWC4Z35Vv5RTnDfPv463rAjfrrnZS', 'Palembang', 'KRS_KPM/202309040738.2B7CD86D-2644-40FB-BC9B-D178DF2F48B7.jpeg', 'Buddies', NULL, '2023-09-04 00:38:54', '2023-09-15 05:02:22'),
(64, 'Dyo Arya Purnama', '09031382328144', 'jangansampelupo@gmail.com', 'dyoaryap', 'SI Bil A', 'Palembang', 'Buddies', 'Ingin membantu kelancaran acara dan menjadi bagian dalam kelancaran acara', 'Publication', 'Ingin belajar tentang publikasi dan menambah relasi', '$2y$10$blkxGLFkx6JcVlMKDBFNBe8xbzFxhzyhjRPm2iGSwudDPgIUYVn8u', 'Indralaya', 'KRS_KPM/202309040746.IMG_20230904_144521.jpg', NULL, NULL, '2023-09-04 00:46:20', '2023-09-04 00:46:20'),
(65, 'Alvin Bima Candra', '09031382328154', 'alvin.bimbim25@gmail.com', 'erkao', 'SI Bil A', 'Palembang', 'Buddies', 'ingin menambah pengalaman dan wawasan dalam membantu menyelenggarakan sebuah event.', 'Competition', 'untuk menambah pengalaman dan wawasan dalam membantu menjalankan kompetisi di sebuah event', '$2y$10$FQ51Vx2p0Mji.u4OiFHJHu7fpqZU3GXXtfobeTY6YR9VVzvWo0x8i', 'Palembang', 'KRS_KPM/202309040746.20230904_144418.jpg', 'Logistic', NULL, '2023-09-04 00:46:28', '2023-09-04 00:46:28'),
(66, 'Muhammad Rafif Ar', '09031382328127', 'rafif180507@gmail.com', 'rafif18091', 'SI Bil A', 'Palembang', 'Buddies', 'Ingin mendapatkan pengalaman dan kemampuan lebih dalam handle event', 'Competition', 'Ingin mendapatkan pengalaman lebih dalam handle event competition', '$2y$10$TpWs0AiOzjjXmUNop/ftFuIfxCPZuHiWQfUn6SJ8i0pv7JWOcNDTu', 'Palembang', 'KRS_KPM/202309040746.IMG_20230904_143325.jpg', NULL, NULL, '2023-09-04 00:46:58', '2023-09-04 00:46:58'),
(67, 'Aulia Pinkasari', '09031182328011', 'pinkasariaulia@gmail.com', '4knipzy', 'SI Reg A', 'Indralaya', 'Seminar', 'Karena saya tertarik dan suka dalam bidang menata menyusun dan mendekorasi suatu acara.', 'Buddies', 'Agar lebih bisa melatih softskill saya untuk keluar dari zona nyaman.', '$2y$10$RIyJvo1Amm.FdBm3G2AUoukvGRE6bxS75hnr.3KkOLZYybxQVTbHq', 'Indralaya', 'KRS_KPM/202309040748.Krs.jpg', 'Seminar', NULL, '2023-09-04 00:48:52', '2023-09-15 04:43:07'),
(68, 'Umar Rahman Zidan', '09031282227084', 'test@gmail.com', 'test123', 'SI Reg B', 'test', 'Bazaar', 'test aja', 'Media Partner', 'test jaa', '$2y$10$4dR4aEIsKBhACXlKcBqiQ.y.6slHcLRRqYdeao88weWNqFnVbLOxW', 'Indralaya', 'KRS_KPM/202309040758.logo_sifest.png', 'Logistic', NULL, '2023-09-04 00:58:05', '2023-09-15 05:03:43'),
(69, 'Aisy Intan Herita', '09031282328106', 'aisyintan.hr@gmail.com', 'aisyntan181', 'SI REG 1B', 'Palembang', 'Marketing', 'Divisi tersebut dapat menjadi batu loncatan bagi saya dalam menambah pengalaman, relasi, mengupgrade skilll, serta membentuk personal branding serta saya ingin keluar dari zona nyaman.', 'Sponsorship', 'Sesuai dengan pilihan pertama menurut saya antara kedua divisi tersebut memiliki keterkaitan karna  bakalan bertemu banyak orang sehingga mampu melatih diri dalam publik speakinng dan mampu menciptakan pengalaman baru, dan relasi yang berkualitas.', '$2y$10$8eYqa3LKrUOFigjSqqhkYOXCbXQZM/AvxLpdRadneuyYBaOA4lTtK', 'Palembang', 'KRS_KPM/Foto aisy (1).jpg', 'Sponsorship', NULL, '2023-09-04 08:58:30', '2023-09-15 04:47:44'),
(70, 'Dhio Pratama Wiransyah', '09031382328137', 'dhyolinggau86@gmail.com', 'dhiopratama0507', 'SI Bil A', 'Palembang', 'Buddies', 'Ingin menambah relasi dan wawasan dalam berkontribusi acara besar', 'Competition', 'Ingin menambah relasi dan wawasan dalam berkontribusi acara besar', '$2y$10$IL5UZs0zA0NAMfptTUUweuFiM682erNMhC.ruU7CRsHDOKN.amJ3S', 'Palembang', 'KRS_KPM/202309040905.IMG_9650 Sedang.jpeg', 'Logistic', NULL, '2023-09-04 02:05:10', '2023-09-04 02:05:10'),
(71, 'A. Salwa Aurelya Putri', '09031182328018', 'salwaaurelyaa@gmail.com', 'salwaurelya', 'SI Reg C', 'Indralaya', 'Buddies', 'Karena saya tertarik dengan tugas yang ada di divisi buddies ini dan ingin menciptakan pengalaman baru saya di divisi buddies ini.', 'Publication', 'Karena saya pernah berpengalaman dalam mengelola instagram kelas saat sekolah sehingga saat mengetahui di divisi publication ini ada salah satu tugasnya yaitu mengelola sosial media membuat saya ingin lebih mengembangkan pengalaman saya ini dan mencoba serta menciptakan lagi pengalaman baru dari tugas-tugas lain yang ada di divisi publication Sifet.', '$2y$10$N5qLQ5xJNJ/jal2yNUKYwuM.0KKBzJCT8LpeDJRpwHgWbpNS2BHEe', 'Indralaya', 'KRS_KPM/202309041027.IMG-20230904-WA0013.jpg', NULL, NULL, '2023-09-04 03:27:56', '2023-09-04 03:27:56'),
(72, 'Silvia Nabilaputri', '09031182328014', 'silvianabila2301@gmail.com', 'silviaanabilaa', 'SI Reg A', 'Indralaya', 'Seminar', 'Karena saya tertarik dan ingin memperluas wawasan dan manambah pengalaman saya dengan mengikuti divisi ini.', 'Buddies', 'Karena saya excited dengan GS nya. Dengan mengikuti divisi buddies, saya ingin menambah pengalaman cerita dengan orang2 hebat.', '$2y$10$uU/SuYuK2j6hvqYqaN1GIeQeANR0vyZ2.ia4Hq3ZZcIAcEuorRGMq', 'Indralaya', 'KRS_KPM/202309041028.1000115103.jpg', NULL, NULL, '2023-09-04 03:28:58', '2023-09-04 03:28:58'),
(73, 'Fathiyyah Nurul Afifah', '09031282328040', 'fathafifah27@gmail.com', 'fathxyyah', 'SI Reg B', 'Indralaya', 'Design', 'soalnya aku punya ketertarikan di bidang desain. Gak cuma tertarik, aku pernah dipercaya untuk mendesain, walaupun cuma sedikitt hehehe. Intinya aku mau ngembangin diriku lagi di bidang ini, supaya lebih percaya diri sama hasil desain-desainku nantinya^^', 'Publication', 'sama hal nya dengan desain, bidang ini juga pernah aku jalanin wkwk walaupun gak formal-formal amat alias akun pribadi, aku pernah mengelola sebuah akun untuk mempublikasi karya akuu.', '$2y$10$ee0puGmiccYMoCctud5wU.flTlUnZ8U3pOKA2/mNAyWy4i0xdaFDa', 'Indralaya', 'KRS_KPM/202309041107.WhatsApp Image 2023-09-04 at 17.38.40.jpeg', 'Design', NULL, '2023-09-04 04:07:59', '2023-09-15 05:20:43'),
(74, 'Azera Pramesty', '09031382328143', 'azerapramesty20@gmail.com', 'azera8909999999', 'SI Bil A', 'lahat', 'Marketing', 'saya ingin lebih memahami dunia marketing serta, belajar menghadapi karakter berbagai orang yang berbeda latar belakang.', 'Bazaar', 'alasan memilih divisi bazaar karna saya menyukai berbagai bisnis, seperti kuliner, pakaian dan dll,', '$2y$10$7kmlHJR9QsPqPUILzJkPEuzHH3OTporFP7Nsdnyy7eCtas1Ujol4W', 'Palembang', 'KRS_KPM/202309041150.WhatsApp Image 2023-09-04 at 18.49.26.jpg', NULL, NULL, '2023-09-04 04:50:24', '2023-09-04 04:50:24'),
(75, 'Audya Anggraini Hasim', '09031282328105', 'audyanggraini12@gmail.com', 'aaudeye', 'SI Reg B', 'Palembang', 'Seminar', 'Karena ketika SMA saya sering menjadi ketua maupun anggota di divisi acara (event) jadi saya merasa sudah familiar dengan divisi event, lalu saya ingin menerapkan kembali serta mengasah kemampuan kepanitiaan yang saya punya agar bisa lebih berkembang lagi dan bermanfaat untuk acara SI Fest ini dan divisi event juga cocok dengan kepribadian saya karena saya senang menyusun, merencanakan, mengarahkan, menggerakkan dan berinteraksi dengan banyak orang.', 'Buddies', 'Karena divisi ini masih berkaitan dengan event jadi alasan saya masih sama dengan alasan pada first choice di atas.', '$2y$10$nAD/D.eX00oXJydvzv7wGuCRxx.tT.MDIibrbNqFNHstRJMBm23QK', 'Palembang', 'KRS_KPM/202309041151.KPM.jpg', NULL, NULL, '2023-09-04 04:51:51', '2023-09-04 04:51:51'),
(76, 'Rifqi Muhammad Rifat', '09031282328062', 'rifqimr73@gmail.com', '089620260472', 'SI Reg B', 'Palembang', 'Design', 'karena ingin belajar dan mendalami skill design grafis', 'Administration', 'karena mencoba hal yang baru bagi saya', '$2y$10$qL/HivFma7FSRhadN66YaOONmh7vHk/T.Oy6OK4slm5.2AwjJYIYO', 'Palembang', 'KRS_KPM/202309041153.IMG_7153.jpeg', 'Design', NULL, '2023-09-04 04:53:14', '2023-09-15 04:43:59'),
(77, 'Puti Chalisa Wardhana', '09031282328026', 'putichalisa07@gmail.com', 'putichls_wrdhn', 'SI Reg C', 'Indralaya', 'Design', 'Alasan saya memilih divisi ini karena saya ingin belajar dan mencari pengalaman tentang hal mendesain yang dimana nantinya ini menjadi dasar  atau awal untuk saya berkarya', 'Marketing', 'Alasan saya memilih divisi ini karena saya ingin belajar banyak hal tentang marketing serta melatih kemampuan publik speaking saya agar lebih baik kedepannya', '$2y$10$XGDbli5N5DlgUyiIQKTMO.RnDLaihwCHgYz4YBkw7Byr8JlJSKte2', 'Indralaya', 'KRS_KPM/202309041154.IMG_20230904_184951.jpg', NULL, NULL, '2023-09-04 04:54:42', '2023-09-04 04:54:42'),
(78, 'Salsabila Alfath Annisaa', '09031382328120', 'salsabilaalfatha@gmail.com', 'salsaalfth', 'SI Bil B', 'Palembang', 'Competition', 'karena ingin memperluas relasi, selain itu ingin keluar dari zona nyaman  dan ingin mencari pengalaman salah satu nya bisa deket dengan banyak dosen.', 'Buddies', 'karena ingin mengambil ilmu dari kakak tingkat serta mengasah soft skill bersosialisasi dengan baik sebagai penghubung guest star', '$2y$10$gZLO2kBfFM1gWUBkNS0OtupMjqlIto/R5Bv7sAHm2cSJxSTgCBJ/a', 'Palembang', 'KRS_KPM/202309041209.Screenshot_2023-09-04-12-48-37-99_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', NULL, NULL, '2023-09-04 05:09:42', '2023-09-04 05:09:42'),
(79, 'Gibral Abdurrahman', '09031282328075', 'gibral2624@gmail.com', 'kruger16a', 'SI Reg A', 'Gang Buntu, Indralaya', 'Marketing', 'Ingin mempelajari dunia marketing, dan memperbanyk relasi', 'Sponsorship', 'Meperbanyak relasi, serta mengasah kemampuan komunikasi', '$2y$10$zeUusihUhBPcWx8Vvv6dUekYVa.DugwYObd73P6E610Elap2w56nu', 'Indralaya', 'KRS_KPM/202309041225.20230904_192005.jpg', NULL, NULL, '2023-09-04 05:25:06', '2023-09-04 05:25:06'),
(80, 'Fadiah Tussholiha', '09031382328146', 'tussholihafadiah@gmail.com', 'fadiahtuss', 'SI Bil A', 'Palembang', 'Competition', 'Alasan Saya memilih divisi competiton adalah saya ingin dapat belajar banyak hal serta mendapatkan banyak pengalaman dan juga semoga dengan saya mengikuti freelance ini saya dapat meng-upgrade diri saya menjadi lebih baik', 'Seminar', 'Saya memilih divisi seminar karena ingin mendapat pengalaman baru yang berguna untuk ke depannya. dengan ikut freelance ini semoga saya dapat belajar banyak hal salah satunya adalah cara untuk memanajemen waktu seperti bagaimana cara menyusun sebuah kegiatan atau acara sehingga lebih efektif dan efesien.', '$2y$10$O.nKLoDuXhDUNtf1rqlF3.rFxCXqhJQKfzSXvRiT9hrmjQJWoINra', 'Palembang', 'KRS_KPM/202309041227.IMG_20230904_192250.jpg', NULL, NULL, '2023-09-04 05:27:17', '2023-12-28 01:46:50');
INSERT INTO `users` (`id`, `name`, `NIM`, `email`, `line`, `class`, `domicile`, `first_choice`, `first_reason`, `second_choice`, `second_reason`, `password`, `interview`, `identifier`, `result`, `remember_token`, `created_at`, `updated_at`) VALUES
(81, 'Muhammad Emirshah Yusuf', '09031282328085', 'emirshahyusuff@gmail.com', 'emir_syf', 'SI Bil A', 'Palembang', 'Seminar', 'Saya memilih divisi seminar, dikarenakan saya tertarik untuk mempelajari bagaimana menyusun dan menetukan konsep sebuah event beserta bagaimana event tersebut dijalankan.', 'Design', 'Saya memilih divisi design dikarenakan, saya memiliki hobi dalam mendesign dan ingin mendalami skill tersebut.', '$2y$10$2eNFHDAhaEW6cxI2OXsm7O2g45S8qDgKN90..qZNiHKi5mGYA6iAi', 'Palembang', 'KRS_KPM/202309041239.Foto KPM.jpeg', NULL, NULL, '2023-09-04 05:39:26', '2023-09-04 05:39:26'),
(82, 'Nicolaus Owen Marvell', '09031182328003', 'ww051205@gmail.com', 'nicolaus_owen', 'SI Bil A', 'Komp surya kebon sirih blok E1', 'Seminar', 'Ingin menambah pengalaman terkait perencanaan serta pelaksanaan kegiatan inti', 'Administration', 'Ingin menambah pengalaman dalam role admin serta tata cara pelaksanaan yang baik', '$2y$10$ChTRwYJqz85EfWq.o1VLKe2yZ86K1jMKQ7Pz4X50koJLn4.kNGub6', 'Palembang', 'KRS_KPM/202309041257.1693832156700..jpg', NULL, NULL, '2023-09-04 05:57:06', '2023-09-04 05:57:06'),
(83, 'Syifa Alfariani', '09031282328096', 'syifaalfariani87@gmail.com', 'syisyi756', 'SI Reg C', 'Indralaya', 'Bazaar', 'Saya ingin mengembangkan diri saya dalam hal membuat dan memasarkan suatu produk dan melatih rasa percaya diri,', 'Marketing', 'Karena ingin belajar banyak hal mengenai marketing dan  untuk  belajar mempromosikan suatu produk ,serta melatih rasa percaya diri', '$2y$10$g6cPQswY8Hx549cPFAssHeJUPrUF07e1nAAa5o.JAURZm0r01s7CW', 'Indralaya', 'KRS_KPM/202309041310.IMG_20230904_200952.jpg', NULL, NULL, '2023-09-04 06:10:42', '2023-09-04 06:10:42'),
(84, 'Msy. Anggita Shafira', '09031282328077', 'anggitashfr@gmail.com', 'anggitashfira', 'SI Reg C', 'Jln Kh Ahmad Dahlan Lorong gubah no 1425, Bukit kecil Palembang', 'Buddies', 'karena saya memiliki potensi untuk bekerja secara teamwork', 'Marketing', 'karena saya senang bersosialisasi dan ingin membuat konten konten untuk promosi', '$2y$10$ZCvhXqkX4o1IMbzrKAnw7eLBpdNxHzaKvQ1CGS./B2Gna29JsfW.S', 'Palembang', 'KRS_KPM/202309041327.IMG-20230904-WA0026.jpeg', 'Marketing', NULL, '2023-09-04 06:27:54', '2023-09-15 04:49:14'),
(85, 'Chairunnisa Desti Arzety', '09031282328032', 'destiarzety19@gmail.com', 'dthadid', 'SI Bil B', 'Palembang', 'Buddies', 'alasan saya memilih divisi ini karena saya ingin memperluas relasi serta menambah pengalaman, wawasan atau pengetahuan dalam suatu event, membantu saya untuk belajar bekerjasama dalam sebuah tim. dan dapat belajar mengkoordinasi, menyusun, dan membantu jalan nya acara', 'Publication', 'alasan saya memilih divisi ini karena saya merasa tertarik dan mampu akan kegiatan serta tugas yang ada di dalam divisi ini dan dapat berkerjasama dalam tim untuk bertukar pendapat mengenai konten yang akan di publikasikan', '$2y$10$aBNLpRguhA347RLA0GdiaOgAYJSs9c59ri47TQh.1WoyVwhMV67Na', 'Palembang', 'KRS_KPM/202309041345.4BA0B7C7-CC3F-4A63-A755-E8211052155D.jpg', 'Publication', NULL, '2023-09-04 06:45:28', '2023-09-15 04:45:44'),
(86, 'Haaniyah Aurelia', '09031282328086', 'haaniyahaurelia@gmail.com', 'haureliaaa', 'SI Bil B', 'Palembang', 'Publication', 'Alasan saya memilih divisi ini adalah karena saya suka berinteraksi melalui sosial media dan tertarik untuk menuangkan ide-ide saya melalui konten sosial media.', 'Buddies', 'Alasan saya memilih divisi ini adalah karena saya ingin memperluas relasi dan ingin turut andil langsung dalam berlangsungnya sebuah event, serta bekerja sama dalam tim.', '$2y$10$oi9PPmFAzYMLSGm8CNI6Y.yrtiUsqEp7cJvMXZP23du3jHeNWj0i2', 'Palembang', 'KRS_KPM/202309041356.KARTU KPM.jpg', 'Publication', NULL, '2023-09-04 06:56:35', '2023-09-15 04:45:33'),
(87, 'An\'nur Aisyah Ghaidah Senjaya Mangkunegara', '09031282328028', 'aaisyahsenjaya@gmail.com', '081294931792', 'SI Reg B', 'Indralaya', 'Seminar', 'Saya ingin mengembangkan skill \"managing\" saya. saya sendiri sudah pernah jadi bagian dari divisi \'acara\' dan saya enjoy berada di divisi acara. saya juga yakin dapat memberikan performa yang baik.', 'Design', 'Saat di SMA saya merupakan ketia divisi Design di OSIS, saya juga sudah pernah membuat  design berkaitan dengan festival. menurut saya dengan menjadi bagian dari divisi design dapat mengasah skill saya.', '$2y$10$m9mFcv/mTPPfTMryVg3b5ODU9LUU/hTy30VnZx1y5.rIec.2UbSMC', 'Palembang', 'KRS_KPM/202309041356.20230904_204653.jpg', 'Seminar', NULL, '2023-09-04 06:56:46', '2023-09-15 04:42:59'),
(88, 'Rafa Nadira Catra', '09031282328055', 'nadirarafa2@gmail.com', 'rafanadir_', 'SI Bil B', 'Palembang', 'Bazaar', 'Alasan saya memilih divisi bazaar adalah karena ketertarikan saya pada kegiatan jual beli. Saya juga sudah beberapa kali berpartisipasi dalam kegiatan bazaar yg diselenggarakan di sekolah, dan saya ingin menuangkan ide-ide jualan terutama makanan yang dapat menarik perhatian banyak orang. dan juga saya ingin menambah pengetahuan serta pengalaman dan mengexplore lebih banyak lagi mengenai divisi bazaar di dalam kegiatan SI fest ini.', 'Consumption', 'Alasan saya memilih divisi konsumsi adalah karena saya suka kuliner dan saya memiliki banyak informasi mengenai kuliner. Seperti  rekomendasi makanan di palembang dan juga  rekomendasi restoran atau toko makanan yang berkualitas dan tentunya sesuai dengan budget yang telah ditentukan. Saya juga ingin belajar dan menambah pengalaman mengatur konsumsi dalam suatu acara yang besar.', '$2y$10$FWBCOfY72ElnxRvrnyHtaef5WZoIuvd6g18J2tN87Cwvw7lVHou.2', 'Palembang', 'KRS_KPM/202309041357.E23617ED-E297-42D0-B8AA-58690DDEF95D.jpeg', 'Bazaar', NULL, '2023-09-04 06:57:43', '2023-09-15 05:39:25'),
(89, 'Adiaz Salsabilah Putri', '09031382328158', 'adiazsalsa01@gmail.com', 'salsaaaxdz', 'SI Bil B', 'Palembang', 'Buddies', 'alasan saya kenapa memilih buddies karena saya sangat tertarik dalam membantu suatu kegiatan sosial karena saya ingin lebih meningkatkan kemampuan saya dalam bersosialisasi dalam mengasah soft skill saya, serta ingin mempelajari ilmu ilmu dari kakak senior yang lebih berpengalaman untuk mencoba hal yang baru dari diri saya', 'Media Partner', 'Alasan kenapa saya memilih media partners yaitu karena saya ingin meningkatkan pulbic speaking saya sekaligus mengasah kemampuan soft skill saya dalam bersosialisasi, dan juga ini saya ingin mencoba suatu hal yang baru dan menantang bagi diri saya dengan memberanikan diri untuk memilih media partners sebagai pilihan saya', '$2y$10$i8GLAR7D4Ibg0tUwAbIYhus9W4SSp8FOkvfsN4S1auaxnJ4v0aCR6', 'Palembang', 'KRS_KPM/202309041408.IMG_20230904_131143.jpg', 'Media Partner', NULL, '2023-09-04 07:08:29', '2023-09-15 04:45:15'),
(90, 'Violin Juneyla Nandita', '09031182328009', 'violinjunaila91@gmail.com', 'nyla8009', 'SI Reg C', 'jl.opi raya perum griya sumsel sejahtera lrg sumsel IX blok p 10 jakabaring', 'Bazaar', 'saya memilih divisi bazar karena saya ingin mencari hal-hal baru dan menyukai divisi tersebut dan saya ingin belajar ber bisnis dan meningkatkan kepercayaan diri, saya yakin jika melakukan suatu hal yang di sukai dengan senang hati maka hasil yang di capaipun akan baik dan sesuai keinginan.', 'Competition', 'saya ingin meningkatkan keberanian dan kepercayaan diri serta menguji ide saya dalam mengikuti divisi competition.', '$2y$10$LmGLUleBZirXN4o2ftydZeUDiH3Qt4UMwwK8IUIgijgnORXJEVxtm', 'Palembang', 'KRS_KPM/202309041419.IMG_20230904_191924.jpg', NULL, NULL, '2023-09-04 07:19:27', '2023-09-04 07:19:27'),
(91, 'Vanisa Amalia Putri', '09031382328129', 'vanisazll30@gmail.com', 'vanisazll', 'SI Bil A', 'Jl.Macan Kumbang IX Palembang', 'Buddies', 'Karna mau berperan langsung dalam menjalankan nya keberlangsungan acara. Dan mau meningkatkan kepercayaan diri dalam berkomunikasi serta ingin menambah relasi juga. Dan untuk menantang diri sendiri dalam berkoordinasi langsung dalam kepengurusan event besar dengan baik.', 'Marketing', 'Karna mau membantu strategi pemasaran dalam keberlangsungannya acara tersebut.', '$2y$10$4vDLr8GL5hJaRUc2NGGCcuB3EYMzO9C3J5PV.WzY6A1wVUuFgppBG', 'Palembang', 'KRS_KPM/202309041433.vanisa amalia.jpg', 'Buddies', NULL, '2023-09-04 07:33:23', '2023-09-15 05:01:46'),
(92, 'Syifa Naura Milla Celesta', '09031282328025', 'syifanauramillacelestaaa@gmail.com', 'celestaa', 'SI Reg C', 'Indralaya', 'Administration', 'Ingin belajar lebih banyak lagi dibidang administrasion dan dalam pembuatan proposal dan surat menyurat', 'Buddies', 'karena saya tertarik dengan tugas yang ada divisi ini dan ingin mendapatkan pengalaman baru', '$2y$10$bw5yEI.BLOviFD0r38UIOe2uV3wtAPukcDp3leZuQt9zaCTkBV1KS', 'Indralaya', 'KRS_KPM/202309041546.WhatsApp Image 2023-09-04 at 22.54.26.jpg', NULL, NULL, '2023-09-04 08:46:56', '2023-09-04 08:46:56'),
(93, 'Fidela Tertia Alfino', '09031282328048', 'fidelaalfino2006@gmail.com', 'fidelaalfino', 'SI Reg C', 'Palembang', 'Design', '1. Alasan saya tertarik memilih divisi design untuk mengasah soft skill design saya dari kakak” yang lebih berpengalaman dan juga saya dapat belajar bahwa design ini termasuk dalam komunikasi visual yang dapat menyampaikan informasi, ide, atau pesan dengan cara yang mudah dipahami oleh orang lain. \r\n2. Saya suka mengulik design sejak smp dahulu ketika ada tugas tugas membuat poster, banner, id card seperti di aplikasi canva dan mengikuti tren design yang membuat saya bisa mengekspresikan kreativitas melalui design tersebut.\r\n3. Dengan adanya fitur design seperti di canva tersebut memungkinkan  untuk berkolaborasi dengan tim dalam proyek desain dan memberikan masukan pada desain yang sedang dikerjakan seperti yang pernah saya lakukan jika ada tugas tugas di sekolah.', 'Videography Photography', '1.Alasan saya memilih videograpghy dan photograpghy karena awal mulanya dari kegemaran saya membuat video dan mengambil foto aesthetic dimana ada perasaan puas tersendiri bagi saya ketika melihat hasilnya sesuai keinginan saya.\r\n2.Ingin belajar dan menggali ilmu lebih dalam dengan kakak kakak yang berpengalaman tentang bagaimana mengambil video yang baik, mengeditnya dan lain lain.\r\n3. Ada makna tersendiri bagi saya yaitu bahagia rasanya bisa turut serta dalam penciptaan kenangan dengan mengambil foto atau merekam video, yaitu  dapat merangkai kenangan dari momen-momen penting seperti SIFEST yang akan diadakan nanti.', '$2y$10$e9ihJ/fTdrPm5LS5tMKdYewPC7MywM7rfnnFwOTH8ssUPituXh4Jy', 'Palembang', 'KRS_KPM/202309041554.IMG_1852.jpeg', 'Videography Photography', NULL, '2023-09-04 08:54:52', '2023-09-15 04:46:53'),
(94, 'Rahmad Fitriansyah', '09031382328159', 'rhmdfitriansyah@gmail.com', 'tyas.rf', 'SI Bil A', 'Palembang', 'Buddies', '1. Networking Chances\r\n2. Access to many Information and Resources\r\n3. Opportunities for different experiences from other divisions\r\n4. Learning and Mentorship\r\n5. Impact On Decisions making', 'Marketing', 'almost same as the first choice reasons, but i got the other reasons.\r\n1. Expanding Exposure/Existence\r\n2. Building Image and Brand\r\n3. Improve Marketing Skills\r\n4. Measuring Performance in the division taken\r\n5. Working within deadlines which will make me value my time more', '$2y$10$T7HXPDuGh1nqRA435EcNC.znq3izk4gTWE9A.d7V5uEivKXKdzWSu', 'Palembang', 'KRS_KPM/202309041621.WhatsApp Image 2023-09-04 at 23.20.39.jpeg', 'Buddies', NULL, '2023-09-04 09:21:11', '2023-09-15 05:01:34'),
(95, 'Vanya Dwi Nabila', '09031382328119', 'vanyadwinabila@gmail.com', 'vanyaadwi', 'SI Bil B', 'Palembang', 'Buddies', 'Alasan saya memilih divisi buddies sebagai pilihan pertama tentunya karena divisi ini merupakan divisi yang paling menarik bagi saya, dimana pada divisi ini kita dapat terlibat secara langsung dalam jalannya sebuah acara baik berkomunikasi dengan pembicara, guest star, dan lainnya sehingga pada divisi ini kita akan mendapatkan pengalaman yang tentunya dapat membantu kita dalam memanajamen baik itu sebuah kegiatan, waktu, dan berbagai hal yang berkaitan kedepan nantinya. Selain itu tentunya saya sangat suka mencoba hal baru, terutama dengan bergabung pada divisi ini merupakan hal baru bagi saya, karena menurut saya tidak ada yang namanya penyesalan dalam mencoba yang ada hanya pengalaman.', 'Marketing', 'alasan saya memilih divisi marketing tidak jauh beda dari pilihan pertama saya, namun pada divisi ini menurut saya akan lebih mengembangkan serta belajar dan menambah pengalaman saya mengenai cara berkomunikasi yang lebih baik untuk kedepannya.', '$2y$10$7KilbOaBsByi5BjcNNGp9uRlloz71deeAgpohk8ioD8kXCGgXIXmu', 'Palembang', 'KRS_KPM/202309041641.kpm vanya_1.jpg', 'Buddies', NULL, '2023-09-04 09:41:03', '2023-09-15 05:01:54'),
(96, 'Muhamad Anandithyo Aftarudzaki', '09031282328053', 'adityaaftarudzaki@gmail.com', 'm.anandithyoalza', 'SI Reg B', 'Palembang', 'Competition', 'saya tertarik dalam menyusun dan membantu mengatur jalannya mekanisme kompetisi/lomba pada bidang ini. lalu, dari latar belakanh saya adalah seorang introvert. saya ingin keluar dari zona nyaman dan menchallange diri saya untuk aktif dalam bekerja sama (organisasi)', 'Logistic', 'seperti pada alasan pilihan pertama, saya ingin mencoba hal baru dan menantang diri saya untuk lebih aktif lagi. lalu, dengan mengikuti bidang logistic. seperti apa yang para kakak2 bilang di kelas waktu itu, bidang ini salah satu tugas nya adalah mengangkat barang. dengan tugas itu, berguna bagi saya untuk menaikkan massa otot hehehehe', '$2y$10$rBHMPYjYMfBiNMIuDwWtHujA.AMza3wPl5rN/7BRDGek4hRsv.qai', 'Palembang', 'KRS_KPM/202309041646.E08F3435-555B-4992-ABA3-D02BA60B5E57.jpeg', NULL, NULL, '2023-09-04 09:46:30', '2023-09-04 09:46:30'),
(97, 'Rayya Ramadhan Simangunsong', '09031382328124', 'gamersbeta1@gmail.com', 'thevoid6760', 'SI Bil A', 'Palembang', 'Competition', 'Menambah pengalaman dalam menjalankan sebuah perlombaan', 'Seminar', 'Menambah pengalaman dalam mengatur acara di balik layar', '$2y$10$roqT.mxAi4fng84ECSOX5eumvyeFYMFAeJdq4DVx.gyzrbIM9yzWq', 'Palembang', 'KRS_KPM/202309050050.IMG_20230822_121358.jpg', NULL, NULL, '2023-09-04 17:50:13', '2023-09-04 17:50:13'),
(98, 'Ongki Juliandra', '09031282328072', 'ongkijuliandra2@gmail.com', 'ongkijuliandra', 'SI Bil A', 'Palembang', 'Logistic', 'Karena Logistic menurut saya divisi yang cukup cocok dengan saya karena saya belum memiliki pengalaman', 'Buddies', 'Karena Divisi buddies menurut saya menarik dan dapat menambah skill dan pengalaman', '$2y$10$NolljwXXRZkgg9hgF.BYl.pYVSpX15heqnTPeDJlHWkzgvYklQ95m', 'Palembang', 'KRS_KPM/202309050154.IMG20230905085157.jpg', 'Logistic', NULL, '2023-09-04 18:54:24', '2023-09-15 04:50:59'),
(99, 'Muhammad Faturrahman', '09031282328071', 'paturbae19@gmail.com', 'paturbae', 'SI Reg C', 'Indralaya', 'Logistic', 'ingin menambah pengalaman dalam berorganisasi dan ingin turut serta menyukseskan acara SI Fest', 'Sponsorship', 'ingin menambah pengalaman dalam berorganisasi dan ingin turut serta menyukseskan acara SI Fest', '$2y$10$5lZ3c2DhIRkAs7/SaGLiI.0K0qcyogPSKGxSb.583Qt/3XwM2q3u2', 'Indralaya', 'KRS_KPM/202309050203.1693879379325866039794737486168.jpg', 'Logistic', NULL, '2023-09-04 19:03:25', '2023-09-15 04:50:44'),
(100, 'M. Rizki Al Akbar', '09031282328087', 'rizkialakbar0@gmail.com', 'ssd128gb', 'SI Reg C', 'Palembang', 'Logistic', 'Ingin memberikan kontribusi positif di divisi ini, serta meringankan beban para panitia.', 'Competition', 'Ingin memberikan kontribusi positif di divisi ini.', '$2y$10$qt7fwxpcdsB4R.KJCudUwOeJCXCWniliiSvZFOxZQWZuu9oR3RO36', 'Palembang', 'KRS_KPM/202309050308.IMG_20230905_100739.jpg', NULL, NULL, '2023-09-04 20:08:07', '2023-09-04 20:08:07'),
(101, 'Alifa Putri Shahabiyah', '09031282328116', 'alifaputrisahabia@gmail.com', 'ifaputri2628', 'SI Reg A', 'Indralaya', 'Seminar', 'Saya sendiri merupakan orang yang teratur, rapi dan tergolong perfeksionis. Sebelum melakukan sesuatu, saya terbiasa untuk mengorganisir hal tersebut, karena saya berpikir bahwa sesuatu dapat berjalan dengan baik dan mendapat hasil yang maksimal jika telah direncanakan secara matang. Saya melihat ada kesamaan antara sifat serta kebiasaan yang saya punya dengan tugas - tugas yang kiranya akan dilakukan pada divisi ini. Oleh sebab itulah, saya tertarik untuk mendaftar kedalam divisi ini sebab saya rasa saya dapat menjalankan tugas saya dengan baik apabila diterima.', 'Competition', 'Sebetulnya, alasan saya memilih divisi ini hampir sama dengan alasan saya dalam memilih divisi pertama sebelumnya. Alasannya adalah karena tugas - tugas yang nantinya akan dikerjakan dalam divisi ini cukup sejalan dengan sifat serta kebiasaan yang saya punya dalam kehidupan sehari - hari. Disamping itu, saya juga suka memikirkan ide yang kreatif dan inovatif dalam menyelesaikan suatu masalah.', '$2y$10$c7fQhjCEbpj.3ICWYdVc0uDTgmVUThE2wqhvaBPeKDEHNVH.N353G', 'Indralaya', 'KRS_KPM/202309050604.KPM_Alifa Putri Shahabiyah.jpg', 'Seminar', NULL, '2023-09-04 23:04:00', '2023-09-15 04:42:50'),
(102, 'Muhammad Fadli Abdul Aziz', '09031282328095', 'abdulfadli011@gmail.com', 'fadli1567', 'SI Reg B', 'PALEMBANG', 'Marketing', 'Ingin menambah pengalaman beorganisasi dan belajar ilmu baru', 'Logistic', 'Agar dapat mengasah skill ilmu dalam perencanaan dan juga menambah pengalaman berorganisasi', '$2y$10$0U/ELjhSxMmlcBJQknRkb.v.c/hHDM7pvuLXzNdOTc6tGNP0ySMe2', 'Palembang', 'KRS_KPM/202309050721.IMG_20230905_141903.jpg', NULL, NULL, '2023-09-05 00:21:46', '2023-09-05 00:21:46'),
(103, 'Athiyyah Nuha Rotifa', '09031282328111', 'athiyyah2201@gmail.com', 'athyeaa', 'SI Reg C', 'Palembang', 'Marketing', 'Karena saya ingin menambah pengalaman saya dan belajar strategi marketing', 'Consumption', 'Karena saya ingin menambah pengalaman saya', '$2y$10$jpcPx3XDp7p283rOjWfcPOoUgrkrLhFvnpwh3h9amd7ihyprob51y', 'Palembang', 'KRS_KPM/202309051159.Screenshot_2023-09-05-18-57-08-84.jpg', NULL, NULL, '2023-09-05 04:59:06', '2023-09-05 04:59:06'),
(104, 'Dinda Aulika Elfarin Aritonang', '09031382328131', 'dindaaulika25@gmail.com', 'dindaelfrn', 'SI Bil B', 'Palembang', 'Competition', 'Karena ingin menambah relasi, pengalaman, dan juga ingin meningkatkan soft skill', 'Seminar', 'Karena ingin menambah relasi, pengalaman, dan juga ingin meningkatkan soft skill', '$2y$10$yoCXR1/xSOV.W14qRuOfNuwmCJfn0A6hOQ/Wt3Om5d.mM.JYulu7q', 'Palembang', 'KRS_KPM/202309051237.IMG_20230905_193106.jpg', NULL, NULL, '2023-09-05 05:37:39', '2023-09-05 05:37:39'),
(105, 'Nabila Ramadhani', '09031382328134', 'nabila.r086@gmail.com', '@nadira.r088', 'SI Bil B', 'Palembang', 'Seminar', 'Ingin menambah pengalaman kegiatan selama kuliah, dan menambah relasi', 'Competition', 'Ingin menambah pengalaman kegiatan selama kuliah, dan menambah relasi', '$2y$10$Kbre/PKk2Ayv2BQR/Wk2eemzQOrEnpRtCX4aPU3RDI/80PhfHAfsS', 'Palembang', 'KRS_KPM/202309051237.E37770AE-E500-40F9-B7C6-C9522C5E0081.jpeg', 'Competition', NULL, '2023-09-05 05:37:43', '2023-09-15 04:40:47'),
(106, 'Tamara Juliyanti', '09031182328010', 'tamarajuliyanti975@gmail.com', '8tambah1', 'SI Reg A', 'Indralaya', 'Marketing', 'Alasan memilih divisi marketing karena divisi marketing adalah salah satu bagian penting dari SI FEST yang dimana orang orangnya terlihat dan saling berkenalan dengan banyak orang, ingin belajar melatih kepercayaan diri, mendapatkan ilmu pemasaran, dan karena terbayang serunya mempromosikan serta mensosialisasikan SI FEST ke banyak orang apalagi dapat memilih sekolah yang ingin didatangi.', 'Consumption', 'Alasan memilih divisi konsumsi karena divisi konsumsi kadang lebih ramah terhadap anggota baru, lebih sedikit tenaga kerja fisik, tetap dianggap divisi penting oleh orang orang karena tanpa makanan dan minuman peserta akan merasa lapar dan haus yang berdampak negatif ke penilaian mereka mengenai acara, serta ingin menikmati keseruan dalam melakukan kerja tim seperti memasak dan sebagainya.', '$2y$10$b2J8uggNVyTI5sOSGshobubFoWKfXd2jq7bXBDiVt.ZJ4G3EaifLK', 'Indralaya', 'KRS_KPM/202309051239.Screenshot_2023-09-05-19-31-59-85.jpg', NULL, NULL, '2023-09-05 05:39:09', '2023-09-05 05:39:09'),
(107, 'Nadhilah Al Adawiyah', '09031282328061', 'nadhilah0216@gmail.com', 'nadhilahal', 'SI Reg B', 'Palembang', 'Competition', 'Karena ingin menambah pengalaman, meningkatkan skill, dan menggunakan waktu saya untuk hal yang berguna', 'Videography Photography', 'Karena ingin menambah pengalaman, meningkatkan skill, dan menggunakan waktu saya untuk hal yang berguna', '$2y$10$qagakDGAKMfFT36LWKCU9.SOXcVg8ViQhv7nWxlY6NvV5sYJzhOBi', 'Indralaya', 'KRS_KPM/202309051310.2063CE81-6651-4CB7-83B3-D980C2D42CB3.jpeg', 'Competition', NULL, '2023-09-05 06:10:52', '2023-09-15 04:41:30'),
(108, 'Putri Rahel Alifia', '09031182328006', 'elrahelll01@gmail.com', 'utirahel', 'SI Reg A', 'Indralaya', 'Buddies', 'Ingin mengetahui dan berpartisipasi secara langsung bagaimana proses dibelakang layar panitia bersama guest star', 'Bazaar', 'Ingin meningkatkan skill dan ide bisnis', '$2y$10$92SHh.5J676R4fv2zbhBKuX4G1MYGhRPaLkk3GYxOXbPdoJSSjIEa', 'Indralaya', 'KRS_KPM/202309051324.20230905_202317.jpg', NULL, NULL, '2023-09-05 06:24:36', '2023-09-05 06:24:36'),
(109, 'Lyvia Valentina', '09031282328080', 'valentinalyvia@gmail.com', 'lyviav', 'SI Reg C', 'Indralaya', 'Buddies', 'Alasan saya memilih divisi Buddies adalah karena saya ingin belajar bagaimana berinteraksi langsung dengan para guest star yang nantinya akan menjadi pembicara pada SI FEST 2023 sehingga dapat melatih kepercayaan diri, saya juga ingin belajar bagaimana cara mengatur jadwal-jadwal yang akan dilaksakan oleh pembicara dan membantu kelancaran urusan pembicara selama acara nantinya, dan saya ingin menambah relasi dengan bertemu dan bekerja sama dengan anggota-anggota lain mulai dari divisi Buddies ataupun dari divisi lain.', 'Seminar', 'Alasan saya memilih divisi Seminar adalah karena saya ingin belajar dan mencari pengalman bagaimana cara mempersiapkan sebuah acara  besar seperti seminar mulai dari persiapan (pre-event), saat berlangsungnya seminar (during-event), hingga berakhirnya acara (post-event). Saya juga ingin bagaimana berkoordinasi dan bekerja sama dengan anggota-anggota lain, serta bertanggung jawab terhadap tugas yang akan diberikan.', '$2y$10$cQQXn/aP1WV7H.VIZXaXle2Fnu6xLzuZ1uAQxvFtmTcYcYiHMuCiu', 'Indralaya', 'KRS_KPM/202309051443.WhatsApp Image 2023-09-05 at 21.26.18(1).jpg', 'Buddies', NULL, '2023-09-05 07:43:05', '2023-09-15 05:02:10'),
(110, 'Jovandra Anata Malayadza', '09031182328093', 'jovandraanata@gmail.com', '@jovandraanata', 'SI Reg B', 'Palembang', 'Buddies', 'karena ingin melatih skill komunikasi dan mendapatkan pengalaman baru', 'Seminar', 'karena ingin melatih skill komukasi dan tertarik pada divisi ini', '$2y$10$M/MijfcJKVtM46UYbwNGa.Rs0iWWioeU8Nwk.aEwQcHNLcqOO7Eli', 'Palembang', 'KRS_KPM/202309051517.20230905_221510.jpg', NULL, NULL, '2023-09-05 08:17:44', '2023-09-05 08:17:44'),
(111, 'M. Cahaya Akbar', '09031282328063', 'mcahayaakbar01@gmail.com', 'mcahayaakbar2005', 'SI Bil A', 'Banyuasin', 'Videography Photography', 'sudah biasa', 'Marketing', 'ingin mencoba', '$2y$10$9h9o11y0iFnKMLwRMLNuWuueF6udU/9x9.nYdz9.UF1SVS8mxm/r2', 'Palembang', 'KRS_KPM/202309051623.IMG_20230814_141155.jpg', 'Videography Photography', NULL, '2023-09-05 09:23:08', '2023-09-15 04:47:01'),
(112, 'M. Luthfi Aldi Pratama', '09031382328149', 'mluthfialdi@gmail.com', 'luthfialdip', 'SI Bil A', 'palembang', 'Buddies', 'saya ingin belajar tentang cara menyelenggarakan event', 'Competition', 'saya ingin belajar tentang cara membuat dan menjalankan sebuah kompetisi', '$2y$10$d6iv6LD72eCDGFsSnhsXEuepNrMWgJqKEfDrN9rMcoVjk8IKU5CKy', 'Palembang', 'KRS_KPM/202309051637.7f4a7018-0ff3-49f4-a873-a70e4e0e7973.jpeg', NULL, NULL, '2023-09-05 09:37:47', '2023-09-05 09:37:47'),
(113, 'Merizka Azzahra', '09031382328156', 'merizkama14@gmail.com', 'merizkaazz', 'SI Bil A', 'Perumahan Gadang Sejahterah 5, Jl. Tanjung Barangan, Bukit Baru, Ilir Barat I, Kota Palembang', 'Bazaar', 'Alasan saya ingin bergabung di divisi ini karena saya suka memasak, dan  juga suka explore berbagai macam makanan.', 'Buddies', 'Alasan saya memilih divisi buddies adalah karena saya ingin meningkatkan skill saya melalui kegiatan-kegiatan yang nantinya akan saya jalani jika saya terpilih di divisi ini. Dengan beberapa kegiatan yang nantinya akan dijalani tentu akan membuat saya lebih banyak lagi mempelajari dan mengambil ilmunya.', '$2y$10$rj/KK2szU7vZdZHewvcQmOwJiFEgkrGqnOSt1J6eMNpyJX9FW/9nW', 'Palembang', 'KRS_KPM/202309051638.B8681D2E-009C-4C68-AFAC-8DCF6E4534B9.jpeg', 'Bazaar', NULL, '2023-09-05 09:38:29', '2023-09-15 05:01:18'),
(114, 'Leony Santika', '09031282328081', 'leony.santika54321@gmail.com', 'l9ony_', 'SI Reg B', 'Indralaya', 'Administration', 'Karena memiliki minat dalam hal kepenulisan dan bidang tersebut, lalu ingin mendapat pengalaman dalam bidang ini.', 'Sponsorship', 'Karena memiliki minat dalam sponsorship dan ingin mendapat pengalaman dalam bidang ini', '$2y$10$9drhGw6.VNTKJu33KNgbMuzSE8Mklw.Nj4Z.5GmxCz6cDR7crF212', 'Indralaya', 'KRS_KPM/202309051640.IMG_20230905_233911.jpg', 'Sponsorship', NULL, '2023-09-05 09:40:59', '2023-09-15 04:47:54'),
(115, 'Fitri Amanda', '09031282328100', 'ftriamandaaa@gmail.com', 'fitri.a29', 'SI Reg B', 'Indralaya', 'Seminar', 'Karena saya tertarik dan ingin mendalami bidang ini. Saya ingin mencari pengalaman dan belajar hal baru serta memperluas relasi dengan berkomunikasis secara langsung dengan banyak orang', 'Bazaar', 'Divisi ini dapat memungkinkan saya berinteraksi dgn banyak orang yg otomatis juga dapat menambah relasi dan  saya ingin berperan aktif dalam pengumpulan dana usaha untuk kegiatan ini.', '$2y$10$R8GyE0yDEVimF7ARGt9v/Osryo1qdZrMuKIi1oDr/nUXvmTSJ4GaK', 'Indralaya', 'KRS_KPM/202309051644.CamScanner 05-09-2023 23.43.jpg', 'Bazaar', NULL, '2023-09-05 09:44:42', '2023-12-28 02:37:06'),
(116, 'Khansa putri amanda\r\n', '09031182328019', 'khansaoca56@gmail.com', 'khansa.amndaa', 'Si Reg C', 'Indralaya', 'Bazaar', 'karna pernah berpengalaman dalam acara seperti DANUS (DANA USAHA) yang menjual berbagai makanan\r\n', 'Marketing', 'karna ingin mempelajari dan mencari pengalamn dalam proses pemasaran suatu produk\r\n', '$2y$10$mKbYoMIASARlmAkHz4Tdo.zD4Vw748UhGui.FaUsedXZpJpZz49GC', 'Indralaya', 'KRS_KPM/fotokhansa.jpg', NULL, NULL, '2023-09-07 13:07:02', '2023-09-07 06:19:12'),
(117, 'M.Riswandifa Putra Alenky\r\n', '09031282328082', 'keluargaalenky@gmail.com', 'rizz1.fa', 'Si Reg B', 'Palembang', 'Seminar', 'Dengan bergabung dalam divisi seminar, saya akan memiliki kesempatan untuk memberi ide, mengatur acara, dan bahkan mungkin menjadi moderator. Ini akan membantu saya meningkatkan keterampilan berbicara di depan publik, yang merupakan keterampilan berharga dalam dunia profesional dan sosial.\r\n', 'Logistic', 'Divisi Logistic akan memberi saya pengalaman dalam mengelola semua aspek logistik yang diperlukan untuk acara besar seperti SI FEST 2023. Ini mencakup koordinasi dengan divisi lain, mengurus kebutuhan perlengkapan, akomodasi, dan transportasi. Bergabung dengan divisi ini akan membantu saya mengembangkan keterampilan manajemen logistik yang sangat dibutuhkan dalam banyak konteks, termasuk bisnis dan organisasi lainnya.\r\n', '$2y$10$0gZmxqp5GbcOH0IinMGYJe9M0.rOd0yTZpr9zFI.Gib5X4.HlI3fG', 'Palembang', 'KRS_KPM/fotoriswan.jpg', NULL, NULL, '2023-09-08 12:44:44', '2023-09-08 05:50:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswa2022s`
--
ALTER TABLE `mahasiswa2022s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nim_unique` (`NIM`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa2022s`
--
ALTER TABLE `mahasiswa2022s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
