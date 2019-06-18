-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2019 pada 11.15
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_survey`
--

CREATE TABLE `hasil_survey` (
  `id` int(10) NOT NULL,
  `kuesioner_id` int(5) DEFAULT NULL,
  `jawaban_id` int(5) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `nilai` int(5) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tahapan_id` int(5) DEFAULT NULL,
  `unsur_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_survey`
--

INSERT INTO `hasil_survey` (`id`, `kuesioner_id`, `jawaban_id`, `jawaban`, `nilai`, `waktu`, `email`, `tahapan_id`, `unsur_id`) VALUES
(1, 1, 21, 'Sangat Setuju', 1, '2019-06-12 03:39:01', 'uconbeton@gmail.com', 1, 1),
(2, 2, 26, 'Setuju', 2, '2019-06-12 03:39:01', 'uconbeton@gmail.com', 1, 1),
(3, 3, 30, 'Setuju', 2, '2019-06-12 03:39:01', 'uconbeton@gmail.com', 1, 1),
(4, 4, 34, 'Setuju', 2, '2019-06-12 03:39:01', 'uconbeton@gmail.com', 1, 2),
(5, 5, 38, 'Setuju', 2, '2019-06-12 03:39:01', 'uconbeton@gmail.com', 1, 2),
(16, 1, 21, 'Sangat Setuju', 1, '2019-06-17 03:50:56', 'adonnya@example.com', 1, 1),
(17, 2, 27, 'Tidak Setuju', 3, '2019-06-17 03:50:56', 'adonnya@example.com', 1, 1),
(18, 3, 31, 'Tidak Setuju', 3, '2019-06-17 03:50:56', 'adonnya@example.com', 1, 1),
(19, 4, 34, 'Setuju', 2, '2019-06-17 03:50:56', 'adonnya@example.com', 1, 1),
(20, 5, 39, 'Tidak Setuju', 3, '2019-06-17 03:50:56', 'adonnya@example.com', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(225) NOT NULL,
  `sts` int(5) DEFAULT NULL,
  `tahapan_id` int(5) DEFAULT NULL,
  `unsur_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kuesioner`
--

INSERT INTO `kuesioner` (`id`, `pertanyaan`, `sts`, `tahapan_id`, `unsur_id`) VALUES
(1, 'Informasi mengenai persyaratan pelayanan telah diumumkan secara terbuka (di tempat umum yang mudah diakses atau dilihat). Enumerator menjustifikasi berdasarkan observasi.', NULL, 1, 1),
(2, 'Informasi mengenai persyaratan pelayanan tersebut telah sangat jelas, mudah dipahami(tidak membingungkan, disertai dengan contoh dsb).', NULL, 1, 1),
(3, 'Persyaratan administratif untuk mendapatkan pelayanan tersebut sangat mudah untuk dipenuhi (tidak menyulitkan).', NULL, 1, 1),
(4, 'Persyaratan teknis untuk mendapatkan pelayanan tersebut sangat mudah untuk dipenuhi(tidak menyulitkan).', NULL, 1, 1),
(5, 'Informasi mengenai prosedur pelayanan telah diumumkan secara terbuka (di tempat umum yang mudah diakses atau dilihat ). Enumerator menjustifikasi berdasarkan observasi.', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuesioner_jawaban`
--

CREATE TABLE `kuesioner_jawaban` (
  `id` int(10) NOT NULL,
  `kuesioner_id` int(11) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `nilai` int(5) DEFAULT NULL,
  `urut` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kuesioner_jawaban`
--

INSERT INTO `kuesioner_jawaban` (`id`, `kuesioner_id`, `jawaban`, `nilai`, `urut`) VALUES
(21, 1, 'Sangat Setuju', 1, 0),
(22, 1, 'Setuju', 2, 1),
(23, 1, 'Tidak Setuju', 3, 2),
(24, 1, 'Sangat Tidak Setuju', 4, 3),
(25, 2, 'Sangat Setuju', 1, 0),
(26, 2, 'Setuju', 2, 1),
(27, 2, 'Tidak Setuju', 3, 2),
(28, 2, 'Sangat Tidak Setuju', 4, 3),
(29, 3, 'Sangat Setuju', 1, 0),
(30, 3, 'Setuju', 2, 1),
(31, 3, 'Tidak Setuju', 3, 2),
(32, 3, 'Sangat Tidak Setuju', 4, 3),
(33, 4, 'Sangat Setuju', 1, 0),
(34, 4, 'Setuju', 2, 1),
(35, 4, 'Tidak Setuju', 3, 2),
(36, 4, 'Sangat Tidak Setuju', 4, 3),
(37, 5, 'Sangat Setuju', 1, 0),
(38, 5, 'Setuju', 2, 1),
(39, 5, 'Tidak Setuju', 3, 2),
(40, 5, 'sangat Tidak Setuju', 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahapan`
--

CREATE TABLE `tahapan` (
  `id` int(5) NOT NULL,
  `tahapan` varchar(255) DEFAULT NULL,
  `sts` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahapan`
--

INSERT INTO `tahapan` (`id`, `tahapan`, `sts`) VALUES
(1, 'Tahapan Pertama yah', 1),
(2, 'Tahapan Yang Ke Dua', 0),
(3, 'Tahapan Yang Ketiga', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur`
--

CREATE TABLE `unsur` (
  `id` int(2) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unsur`
--

INSERT INTO `unsur` (`id`, `nama`) VALUES
(1, 'Persyaratan'),
(2, 'Prosedur'),
(3, 'Waktu Pelayanan'),
(4, 'Biaya Pelayanan'),
(5, 'Produk Spesifikasi Jenis Pelayanan'),
(6, 'Kompetensi Pelaksana'),
(7, 'Perilaku Pelaksana'),
(8, 'Maklumat Pelayanan'),
(9, 'Penanganan Pengaduan, Saran, dan Masukan'),
(10, 'Aspek Penunjang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tahap` varchar(10) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `status_pernikahan` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `pengeluaran` varchar(100) DEFAULT NULL,
  `usia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `no_hp`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `tahap`, `updated_at`, `jenis_kelamin`, `pendidikan`, `agama`, `status_pernikahan`, `pekerjaan`, `pengeluaran`, `usia`) VALUES
(1, 'Reed Wolff', '0878777787877', 'ryan.descreate@gmail.com', '2019-05-22 01:58:22', '$2y$10$LJnrTIagmzU3GikKcAW1ie.JaF6LRdRcI6IfBeU28qz/ZqHYeEvc.', 'h28XANP5hGBciU2GGkCAUbPlRDAjw7LWmNKvfUIsD3jeiJosN3hK1g1mpffs', '2019-03-25 20:54:50', NULL, '2019-05-20 22:43:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Mr. Noe Lemke', NULL, 'riyan.destriawan@gmail.com', '2019-05-22 01:58:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JaNPLdUD5k', '2019-03-25 20:54:50', NULL, '2019-03-25 20:54:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'adonnya', '087871603798', 'adonnya@example.com', '2019-06-17 04:15:51', '$2y$10$4QkfpaRIHV0kdDHzQKTzzebJURv/PfxQMX7sOI1nFnZ6qG/eUnxW6', 'ki3Ie9I5btZgNwK2wfpOUzkXqiLcxTVEm11ADa6M23WUohuEcIALf1Ymx581', '2019-05-18 23:00:18', '1', '2019-06-16 20:50:56', 'Perempuan', 'Tidak Sekolah / Tdk Tamat SD', 'Lainnya', 'Menikah', 'sffdsfsd', '2343244', NULL),
(235, 'furqon', '0878787877877', 'email@gmail.com', '2019-06-11 03:51:26', '$2y$10$aep1FlxZY1nsdvl/g5YFyOSi6KXPnAW9YpjiozJkpL.pgwzKG2irq', 'lt7XbGECJgSDdWlXO51JC48D20TKFtONpSlpDn9dU65j5JIZtaoWvTLTBiMk', '2019-05-20 22:16:23', '1', '2019-06-10 20:50:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'furkon fajri', '0878787877877', 'uconbeton@gmail.com', '2019-05-21 07:03:11', '$2y$10$MinK5lijhuyuSX4esyN5G.qXI44v4.6lyhkJoqSIqL.5KYNlACEQS', NULL, '2019-05-20 22:22:15', NULL, '2019-05-20 22:22:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'laravel', '0878787877877', 'betonucon@gmail.com', '2019-05-29 03:44:10', '$2y$10$mFBagznu42k28OH1sMejSuE84AzLt5JKHY46h45M9DHndSnx2vVnK', NULL, '2019-05-28 20:44:10', NULL, '2019-05-28 20:44:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'afgan', '0878787877877', 'uconbeton@gmail.com', '2019-06-17 03:04:53', '$2y$10$pY6NHRi5xI3q.O3W9AU/juj/QnB82kNxGJQgp/cgfkV4GHEH11QBe', NULL, '2019-06-16 20:04:09', NULL, '2019-06-16 20:04:53', 'Laki-laki', 'SLTA', 'Islam', 'Belum Menikah', 'sffdsfsd', '2343244', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_copy`
--

CREATE TABLE `users_copy` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_copy`
--

INSERT INTO `users_copy` (`id`, `name`, `no_hp`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reed Wolff', '0878777787877', 'daniela.carroll@example.com', '2019-05-21 05:43:36', '$2y$10$LJnrTIagmzU3GikKcAW1ie.JaF6LRdRcI6IfBeU28qz/ZqHYeEvc.', 'h28XANP5hGBciU2GGkCAUbPlRDAjw7LWmNKvfUIsD3jeiJosN3hK1g1mpffs', '2019-03-25 20:54:50', '2019-05-20 22:43:36'),
(3, 'Mr. Noe Lemke', NULL, 'fernando.brekke@example.com', '2019-03-25 20:54:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JaNPLdUD5k', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(4, 'Tanner Botsford', NULL, 'powlowski.korey@example.org', '2019-03-25 20:54:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SJbaFW6dWW', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(5, 'Bridget D\'Amore', NULL, 'amely.howell@example.org', '2019-03-25 20:54:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PMmBm0BJwz', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(6, 'Arvel Wilkinson MD', NULL, 'bosco.anthony@example.org', '2019-03-25 20:54:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j48F33024k', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(7, 'Ms. Alysha O\'Reilly V', NULL, 'oral.kris@example.net', '2019-03-25 20:54:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pIHxEqfpPt', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(8, 'Favian Parisian', NULL, 'jayce83@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dLoOtLumvk', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(9, 'Johnathan Emard', NULL, 'asha68@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M2gDCqBRsh', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(10, 'Jaqueline Johns', NULL, 'haag.devonte@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HHcuMzk9Xw', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(11, 'Mr. Jovan Fay', NULL, 'rkoss@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5hOhxthffk', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(12, 'Bernard Ledner', NULL, 'barrows.pearline@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OUmbRuplf8', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(13, 'Dr. Fiona Lang II', NULL, 'lkuhlman@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 's2V2PFkyTN', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(14, 'Genoveva Nolan DVM', NULL, 'frida08@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cYEevXu6pH', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(15, 'Jolie Conroy', NULL, 'dmiller@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aCLd8M7DrN', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(16, 'Prof. Alec Armstrong', NULL, 'kailey.sipes@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SRoaJD7S73', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(17, 'Dr. Myrtle Fay', NULL, 'uvon@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3HyLVUagVd', '2019-03-25 20:54:50', '2019-03-25 20:54:50'),
(18, 'Bernie Torphy', NULL, 'izaiah69@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AHqccAdsAQ', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(19, 'Hertha Funk', NULL, 'iokeefe@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g8WKiReyl9', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(20, 'Lucienne Leannon', NULL, 'patience.armstrong@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VTaztamFbp', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(21, 'Terrell Thiel', NULL, 'isai38@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BkLeoCJMiq', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(22, 'Micaela Greenfelder', NULL, 'jo.kozey@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'u0KDlXubEM', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(23, 'Grant Stark', NULL, 'justine.reichel@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CxrJjIzA4P', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(24, 'Gabriel Runte II', NULL, 'gdonnelly@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e7uzwgaMIi', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(25, 'Murray Tromp Jr.', NULL, 'ofunk@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LqBVWjT4YG', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(26, 'Rosalee Rice', NULL, 'schroeder.shania@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YCRQ8FcdAz', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(27, 'Grover Lesch', NULL, 'rhoda61@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KlybYtj6Bg', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(28, 'Mr. Hayley Boyer', NULL, 'kathleen20@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'm7d1vXFeNF', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(29, 'Nina Gutkowski', NULL, 'donna50@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p942ih73Ur', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(30, 'Braeden Schaefer', NULL, 'waelchi.carolyn@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'la4mIhX8Rp', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(31, 'Giles Walsh Jr.', NULL, 'lindsay57@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LWVOjL8aMC', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(32, 'Darby Fadel', NULL, 'emmanuelle32@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UHn5JGP9aB', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(33, 'Ivy Leannon', NULL, 'kutch.mathew@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FHXbz0LOyo', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(34, 'Oma Hayes', NULL, 'jarret.crooks@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BpqRWGfjGP', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(35, 'Colby Lebsack', NULL, 'koch.briana@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 's8NKSdJSWn', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(36, 'Miss Dakota Pollich I', NULL, 'horace.kuphal@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KuAIrnvVjv', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(37, 'Marisa Sporer', NULL, 'angelita82@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 's3anO8I87y', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(38, 'Miss Kari Schamberger', NULL, 'jermaine59@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fm93AL34y9', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(39, 'Mr. Frederik Considine', NULL, 'sschneider@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8u3iDzXQOn', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(40, 'Consuelo Lemke MD', NULL, 'ahintz@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Br1wEJpMv6', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(41, 'Augustus Johnston IV', NULL, 'koepp.maxine@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X8dLv40mgK', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(42, 'Cooper Stanton', NULL, 'haley.shemar@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bSF9Y86FPy', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(43, 'Julianne Klocko', NULL, 'margarita.moore@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YyIrY6R3sI', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(44, 'Laverne Kovacek', NULL, 'douglas.wintheiser@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GEFXa0nPBa', '2019-03-25 20:54:51', '2019-03-25 20:54:51'),
(45, 'Mr. Giovanny Botsford DVM', NULL, 'violette74@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5PPhFBO4Ng', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(46, 'Dedric Bayer', NULL, 'strosin.edmond@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '70TjIANTY1', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(47, 'Blanca Hills', NULL, 'robel.morris@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cx7vuHLrvl', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(48, 'Kenneth Stoltenberg', NULL, 'ywintheiser@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XdJv1wcqcd', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(49, 'Jeanie Jast V', NULL, 'timmy80@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BNgdqugmr2', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(50, 'Mr. Sylvan O\'Keefe DDS', NULL, 'assunta88@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ENdzteYIWs', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(51, 'Ms. Kallie Macejkovic III', NULL, 'lessie.jenkins@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rerbo1pLkp', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(52, 'Prof. Libbie White', NULL, 'jarod92@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PngwQ1WrSC', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(53, 'Brando Heathcote MD', NULL, 'nharvey@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SamLUnCSN8', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(54, 'Prof. Joel Cummings MD', NULL, 'allie20@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v4r7MVa0mf', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(55, 'Hildegard Lubowitz', NULL, 'marc.schumm@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'boKeXWM8Rg', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(56, 'Miss Vilma Roob', NULL, 'jaydon34@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HGirQhjqz8', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(57, 'Cassidy Wyman', NULL, 'mia12@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'l8JGgzhd4q', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(58, 'Marcia Schaden', NULL, 'mitchell.theresia@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZRu4b74ojy', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(59, 'Ms. Ada Monahan', NULL, 'gibson.cleora@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 's3s0v2i9DM', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(60, 'Aron Kozey DDS', NULL, 'soreilly@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A0vFjp9FOb', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(61, 'Brent Weissnat', NULL, 'sbechtelar@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1AlxA8DLvs', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(62, 'Darron Waters', NULL, 'lilly.franecki@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cpUCNqq12E', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(63, 'Sebastian Farrell', NULL, 'vito63@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dzZPlu7666', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(64, 'Prof. Krystina Barrows I', NULL, 'upton.unique@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5F1rcAETl2', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(65, 'Krystel Lockman', NULL, 'wcrist@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZTn8HoZsdY', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(66, 'Dr. Ellis Jenkins', NULL, 'deangelo08@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZIqWEx9mxj', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(67, 'Fredrick Kassulke', NULL, 'schuyler.boehm@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yd4qe2xPE1', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(68, 'Amaya Klein', NULL, 'vickie56@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KfxyvAydL0', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(69, 'Alexander Schmitt', NULL, 'payton37@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FRnKMGG8qm', '2019-03-25 20:54:52', '2019-03-25 20:54:52'),
(70, 'Delia Stoltenberg', NULL, 'eward@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nh0gDFbQxW', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(71, 'Dr. Christiana Simonis', NULL, 'donnelly.julian@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M9oa5R2GjN', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(72, 'Ashly Kertzmann DVM', NULL, 'ursula39@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'w9yxjvsQ6G', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(73, 'Haskell Legros', NULL, 'lindgren.daphnee@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wuubIRIS0D', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(74, 'Jordane Bashirian Sr.', NULL, 'jessica39@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OnBnx8T3Wj', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(75, 'Astrid Hintz Sr.', NULL, 'johnnie00@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M2AXFfRDVl', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(76, 'Lucinda Okuneva', NULL, 'fcrooks@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9TdqvMZxfP', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(77, 'Ms. Anya O\'Connell', NULL, 'scarlett86@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F2qtIYlCb0', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(78, 'Monty McClure', NULL, 'clotilde96@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7B6B1TV1WN', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(79, 'Mr. Ibrahim Jast', NULL, 'quitzon.shyann@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'frXZgAZenh', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(80, 'Mr. Dean Swift Jr.', NULL, 'fred37@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zATsWqNKK7', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(81, 'Shawn Larson', NULL, 'tristian81@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'udKcjfwYiF', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(82, 'Miss Isabella Johnson', NULL, 'beulah.mraz@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '92vhylWZYr', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(83, 'Naomie Feest', NULL, 'tyrell.dickens@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RM4isCD7RJ', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(84, 'Catherine Armstrong MD', NULL, 'nienow.roy@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HZ529KPRlM', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(85, 'Arlie Hartmann III', NULL, 'mclaughlin.hayden@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zVZ8N9rmN2', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(86, 'Torrance Stoltenberg', NULL, 'konopelski.dejah@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SI5liUe4Or', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(87, 'Mr. Christ Keebler II', NULL, 'hintz.luna@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3Zbug48pF7', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(88, 'Prof. Jaqueline Stracke', NULL, 'warren.hansen@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0EgPl2JJnv', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(89, 'Kenyon Willms', NULL, 'crona.jonas@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BgDqghRy8i', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(90, 'Olga Gusikowski', NULL, 'daphney85@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IEs0rm0J0o', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(91, 'Madonna Kovacek', NULL, 'qhintz@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a8040Rbiyt', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(92, 'Freida Ritchie', NULL, 'robel.rowland@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vvi5c29OsP', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(93, 'Litzy Jacobs', NULL, 'aisha88@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Du8gfUjpq9', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(94, 'Arlie Will', NULL, 'wmurray@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WlJWKmTKcF', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(95, 'Violet Predovic', NULL, 'rau.emely@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nV6puhrnCZ', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(96, 'Dr. Dalton Jacobi', NULL, 'conn.daron@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rww7z6pPuV', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(97, 'Shanie Lind', NULL, 'manuel74@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FwPYFJHWOB', '2019-03-25 20:54:53', '2019-03-25 20:54:53'),
(98, 'Marina Dach', NULL, 'bennie.king@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ys6UCIaf8O', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(99, 'Ocie Murphy I', NULL, 'icarroll@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cb8rkRJ1g7', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(100, 'Prof. Jaron Muller', NULL, 'bret.spinka@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XBU16FtkuR', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(101, 'Harmon Zulauf', NULL, 'emmie.brown@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'w6JX8Zjin8', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(102, 'Dena Klein', NULL, 'xrutherford@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EGtowMEPFi', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(103, 'Adriana Bashirian Jr.', NULL, 'breana.mcglynn@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'klpRy180c9', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(104, 'Mariela Langworth', NULL, 'kihn.vergie@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fbF2YyM3iX', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(105, 'Allan Jerde', NULL, 'lauryn76@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rJHhiz5FA9', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(106, 'Cesar Bergnaum', NULL, 'jast.rosendo@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rOO7tFyIIQM5aPEZSThzJuBwWMShZ3ovqBf5En8hDy2kKVDRLoup0sXA98wi', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(107, 'Ms. Retta Lemke', NULL, 'gerhold.giuseppe@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ndfXqV6Jh0', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(108, 'Dr. Hassie Stroman DDS', NULL, 'nils.hermann@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OQr0SqYwYn', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(109, 'Amelia Green DVM', NULL, 'lernser@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VUwxgQWE4Q', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(110, 'Ms. Astrid Watsica MD', NULL, 'raquel13@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '82HFUEomaa', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(111, 'Brianne Beahan', NULL, 'enola97@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wp8kDApCxg', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(112, 'Christ Hills', NULL, 'pswift@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rEUowdwRIE', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(113, 'Lelah Lockman', NULL, 'agustina01@example.com', '2019-05-17 08:40:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0AhvfvYlXEa7D47JqnfPJ8WreqvkimjI6Y2TCodpiwvy8Cka2rDHhZxTUVTM', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(114, 'Prof. Marcella Gleichner', NULL, 'haleigh85@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gxWoWM3EnK', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(115, 'Mortimer Johns', NULL, 'devin21@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7SZwo5iu0s', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(116, 'Casper Yundt', NULL, 'paris90@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uMieP0Dk2B', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(117, 'Yvette Zulauf', NULL, 'rogers.mayert@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9EVawwbxO5', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(118, 'Leonie Sawayn', NULL, 'hamill.luisa@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YZROUbIjzS', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(119, 'Tiana Franecki', NULL, 'madonna.klocko@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OnJd8YOAuZ', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(120, 'Jackie Stokes Sr.', NULL, 'klakin@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UT1ed5YSMU', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(121, 'Prof. Keon Dicki', NULL, 'thompson.malinda@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'azpZDHuiDS', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(122, 'Emilie Abshire', NULL, 'donald64@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zNZoyjGAso', '2019-03-25 20:54:54', '2019-03-25 20:54:54'),
(123, 'Manuel Rutherford', NULL, 'pmacejkovic@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mfOCjTdMMb', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(124, 'Miss Sunny Green', NULL, 'sabryna.brown@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kiLv77P7IM', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(125, 'Luz Gislason', NULL, 'rchamplin@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fFB1nS0EUG', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(126, 'Davion Bauch', NULL, 'jritchie@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jkzHxOgSol', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(127, 'Frankie Reilly', NULL, 'rprice@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'R1FUo9Qgix', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(128, 'Prof. Octavia Koch', NULL, 'ygleason@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NsiLgJfXF6', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(129, 'Alana Prosacco', NULL, 'udickens@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BGTbLr97wj', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(130, 'Darryl Glover', NULL, 'sammie.cole@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EcZIZUErGB', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(131, 'Isobel Hermiston', NULL, 'oreilly.sylvia@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ygYUzIV6qB', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(132, 'Jamarcus Bins', NULL, 'michelle39@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PWkYt9qEKZ', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(133, 'Rupert Littel V', NULL, 'shakira52@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8yGfbTG2Od', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(134, 'Dr. Filiberto Haag', NULL, 'kristian.leannon@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'N0RBJbEx0n', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(135, 'Cielo Homenick', NULL, 'whuels@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FGfq8aDvry', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(136, 'Leo Lubowitz', NULL, 'keagan.olson@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GRsRV5GY0q', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(137, 'Kian Schamberger', NULL, 'robel.christa@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YGzJnu5Gel', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(138, 'Dr. Selena DuBuque MD', NULL, 'obrakus@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cATMMY9QWL', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(139, 'Emily Heathcote DDS', NULL, 'oleannon@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '753rVD1oSU', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(140, 'Lysanne Frami MD', NULL, 'ike.schowalter@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L2J58AChzy', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(141, 'Kody Hintz', NULL, 'casper.yvette@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g71Vz4f5pz', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(142, 'Mrs. Elisa Bahringer MD', NULL, 'leon.paucek@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'f9N4YUoGLv', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(143, 'Estell Kulas', NULL, 'kaleigh33@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KFJyPWBrAZ', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(144, 'Carole Deckow IV', NULL, 'xpaucek@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'E6lNRMABqm', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(145, 'Orrin Rath Jr.', NULL, 'damore.merle@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eUBSvZzIkj', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(146, 'Gus Gutkowski', NULL, 'king.bianka@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SB8PtNkwsK', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(147, 'Genevieve Casper II', NULL, 'schaden.clair@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BCQVuHR2oc', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(148, 'Amira Heidenreich', NULL, 'eudora.nader@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yazL9OWcpX', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(149, 'Mrs. Keara Thompson DDS', NULL, 'winston.douglas@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D7YfrlfOVs', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(150, 'Mckenna Ondricka', NULL, 'rwelch@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vjuUdAPD4L', '2019-03-25 20:54:55', '2019-03-25 20:54:55'),
(151, 'Joel Hettinger', NULL, 'brisa.daugherty@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QQX2zW7UAP', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(152, 'Dr. Leonel Lubowitz I', NULL, 'jnikolaus@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AvZGiNLlhM', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(153, 'Dee Stark', NULL, 'sabina.klein@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TtZgLnMacO', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(154, 'Golda Schiller IV', NULL, 'kendrick.pouros@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jA7tO9px5I', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(155, 'Alison Gottlieb', NULL, 'kessler.raheem@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gDLrkUgY9Q', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(156, 'Miss Laila Fadel DVM', NULL, 'stacy36@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HoGk5DY5Vx', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(157, 'Jocelyn Windler', NULL, 'ara41@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oKFiwjkVli', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(158, 'Dr. Janessa Cummerata IV', NULL, 'jsmith@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UNHx8AjgVl', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(159, 'Luna Paucek', NULL, 'kennedy73@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p2gTe0ifaX', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(160, 'Dr. Nils Wintheiser', NULL, 'jblick@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RZGC6ZqiJG', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(161, 'Celestine Fisher', NULL, 'vivian79@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'w4Nm4qJuJx', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(163, 'Leslie King', NULL, 'cordelia39@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uXc7o9cJv5', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(164, 'Kiley Jakubowski DDS', NULL, 'aracely56@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KJEQTrpgXS', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(165, 'Nigel Murazik', NULL, 'gbrekke@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EUWWZyB3BY', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(166, 'Dr. Kane Walker', NULL, 'maxie.frami@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Nf3G6haF8W', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(167, 'Bernita Schmeler', NULL, 'qstamm@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lmSxC1310T', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(168, 'Dr. Rogers Walker', NULL, 'camryn.yundt@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'At7G0156kt', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(169, 'Mallie Waters', NULL, 'obogisich@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'C3Ml8qGhi6', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(170, 'Prof. Leonel Cassin III', NULL, 'ikonopelski@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bfEse4aipI', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(171, 'Eldon Zboncak', NULL, 'sienna56@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FJzlM9A0oR', '2019-03-25 20:54:56', '2019-03-25 20:54:56'),
(172, 'Eldridge Paucek', NULL, 'kdenesik@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'colfJAcbEp', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(173, 'Dave Kassulke III', NULL, 'pschneider@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SGqDidHR68', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(174, 'Anya Monahan V', NULL, 'sheila79@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VuNqmXl936', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(175, 'Dr. Abner Kreiger Jr.', NULL, 'kaia.king@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'p6XPQMoefj', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(176, 'Matilde Runolfsdottir', NULL, 'west.adelle@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aJi6O6OEaO', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(177, 'Dale Yost', NULL, 'romaguera.marcos@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OzPskrYXEb', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(178, 'Vallie Kub', NULL, 'isabel.huels@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2p6UoSLvIq', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(179, 'Dion Turner', NULL, 'hoberbrunner@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vSAFRLmjPi', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(180, 'Brad Heidenreich', NULL, 'merlin21@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vgyCzp1uFD', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(181, 'Kariane Ritchie Sr.', NULL, 'gia.schowalter@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EnUmCCRNxW', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(182, 'Lexi Ernser', NULL, 'rubie.hettinger@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YSw56Jt58W', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(183, 'Clyde Little', NULL, 'hhomenick@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kor0jvEJyX', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(184, 'Miss Shanna Heaney', NULL, 'fwolff@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hbnBXzSxxZ', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(185, 'Leda Strosin', NULL, 'ericka70@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'voRSgpV9vK', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(186, 'Cornelius Pollich', NULL, 'amiya18@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X2jYPVVWJn', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(187, 'Ashleigh Tremblay DDS', NULL, 'allie26@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lSHUy5VL9K', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(188, 'Mrs. Effie Halvorson', NULL, 'stracke.aiyana@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GtDWxQaMom', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(189, 'Rhett Jacobson', NULL, 'stanton.lang@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AUitrPYor7', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(190, 'Elian Gutmann', NULL, 'sreichert@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Zj7FwpW8tM', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(191, 'Kassandra Luettgen', NULL, 'koepp.caleigh@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jI3WNWcUa0', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(192, 'Alexa Rutherford Jr.', NULL, 'cmurazik@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SseyEiHcqB', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(193, 'Mr. Eliezer Ratke V', NULL, 'jones.joelle@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gCPLopUfSA', '2019-03-25 20:54:57', '2019-03-25 20:54:57'),
(194, 'Yasmin Bernier', NULL, 'soreilly@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Sxt00a9su2', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(195, 'Terry Willms', NULL, 'eli04@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bANm1WloXb', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(196, 'Willy Kilback', NULL, 'uwunsch@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BWDViEQPv3', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(197, 'Miss Thalia Price DDS', NULL, 'antwan.willms@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z0bID2gu6y', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(198, 'Annabelle Torphy Jr.', NULL, 'rosalind51@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'r9amGjFHJk', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(199, 'Natalia Casper', NULL, 'sbraun@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O4hNaMHBZh', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(200, 'Judd Rosenbaum', NULL, 'vbarton@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xzYVSYke8M', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(201, 'Marguerite Hettinger', NULL, 'arlie.walker@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xm4MFlMcFL', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(202, 'Mr. Soledad Stiedemann', NULL, 'ksauer@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wXvO1EG1CJ', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(203, 'Murl Bednar', NULL, 'maggio.pietro@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'f2sXkYFyMg', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(204, 'Myra Hahn', NULL, 'stracke.summer@example.com', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8HVvc4Hfte', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(205, 'Darrick Cassin', NULL, 'sipes.floyd@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NDhxzjNzbm', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(206, 'Elinor Rohan', NULL, 'camilla.thiel@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yk7UD711NX', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(207, 'Mr. Leopoldo Kutch', NULL, 'hartmann.treva@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bqklYRBWvr', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(208, 'Jazmin Pfeffer', NULL, 'elmer66@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9lWoeOEJQ5', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(209, 'Charlene Jenkins DVM', NULL, 'yledner@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v3GdrsRkcc', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(210, 'Carlie McClure', NULL, 'dietrich.nia@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e5DtwMp89n', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(211, 'Mrs. Kacie Pagac PhD', NULL, 'hauck.deon@example.net', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g8UCFp5YQI', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(212, 'Austen Smitham', NULL, 'fmedhurst@example.org', '2019-03-25 20:54:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DGZWxRsE6h', '2019-03-25 20:54:58', '2019-03-25 20:54:58'),
(222, 'furqon Fajri', NULL, 'uconbeton@gmail.com', '2019-05-14 08:10:40', '$2y$10$sQnjloW65Bp6H/qeDifEO.p2vlxmZi0XD8Bhr1x/3MrwImAWlCxQO', 'xy43igbIJ0EaUKTnN526cWm7IrVkc1tlIsSXHhJjM8nfzhad3gd1WEIlq59a', '2019-04-21 20:43:02', '2019-04-21 20:43:02'),
(223, 'logi Nursultan', NULL, 'login.muhammad@krakatausteel.com', '2019-05-14 08:10:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lYYjLJVlvSoiD1RzlqdTeJPC7jsxhmkEoLyMoTaju2m8t4V4wy4gXHE8aqwG', '2019-04-21 20:45:06', '2019-04-21 20:45:06'),
(224, 'afgan', NULL, 'admin@example.com', '2019-05-14 08:10:40', '$2y$10$frGV3p/k3LjCu4Zw/4GH1Oud5JLNLHftA2vPh5amKHnjS7TD/BRKG', 'dQCXxOBWj2daserYtPfhpbTVwKZSB8RLkwoyv2VUEhiOiqBOjgiqpDRzNmhp', '2019-04-28 19:48:32', '2019-04-28 19:48:32'),
(225, 'afgan', NULL, 'uconbetonv@gmail.com', '2019-05-14 08:10:40', '$2y$10$ez0AYE9KzLfq5mwgXAgsMezDX1QXvyB8kh86h751Jm6zYT5ZM936.', NULL, '2019-04-28 20:13:41', '2019-04-28 20:13:41'),
(226, 'afgan', NULL, 'admin@gmail.com', '2019-05-14 08:10:40', '$2y$10$d9BZmJeJLeSs2/YbSM7k0O3iLbLnJaY3M9gYGMrAT53kh5emmBq86', 'Xo76Eh8Gum8G8DxjMT5K1tswipdW6UN9IgGf6xKBaRgOCeG19TyE6Ii3cgL0', '2019-04-28 20:14:37', '2019-04-28 20:14:37'),
(227, 'Rahmadhani', NULL, 'triastanto@gmail.com', '2019-05-14 08:10:40', '$2y$10$6buY4iCgA5.5JAeL3jBXSupWBUXeystlztryP6NDiL2aLz2iwFAxW', 'E1fUlh6PiOcCyBiDojvxQ8blgCqJp7q7dxyGXuGRn9FpRkiVvVK5wYDZGFGo', '2019-05-02 19:43:32', '2019-05-02 19:43:32'),
(228, 'logi Nursultan', NULL, 'login@gmail.com', '2019-05-14 08:10:40', '$2y$10$Ws32A6632Rp3VwQJSZ1dO.fSoYCEthFRTl5SzmLDzEavO1pGpNpLy', 'VokUO00VwQymPW2iwLImxsWCe6cg5zSZ667p8nre6Bt9dwP7WJrwcUuDhqxE', '2019-05-03 00:31:20', '2019-05-03 00:31:20'),
(229, 'afgan', NULL, 'ucon@gmail.com', '2019-05-14 08:10:40', '$2y$10$hKzOCemLyBRcu4VXgj3QVO3HxxtbytyYhXm19Sz7g.PexeOU16pOa', 'k8ijSEmXnk4XK9KHlYjopbVrtWcZbrDO0CxhzII01aGJuqAvKAFzqzQhQpDe', '2019-05-05 18:30:41', '2019-05-05 18:30:41'),
(230, 'beni', NULL, 'beni@gmail.com', '2019-05-14 08:10:40', '$2y$10$.am8qijaabmcDETkLPKPpe1APunG4OKZ/JcGT2SDvwdVG.LVgKHaG', 'IjsyAPErvmHMgA5KNvGJYNBLwnQ83WsY2Agr8Rfydt7WUJl5fgSExrOnsvrl', '2019-05-05 19:33:47', '2019-05-05 19:33:47'),
(231, 'laravel', '087871603795', 'kurobn@example.com', '2019-05-17 09:02:04', '$2y$10$yc31vWlOF9kWnDQGKoEdTuS4L4znYv9tJC45Ik6ZS1f4ANN.eku1e', '47clAFBX6xkmXvWGUWoIAKEgO7vNJZe4bBRrzwyVuUTjVXHQpBARSnBeJJGg', '2019-05-17 01:59:35', '2019-05-17 01:59:35'),
(232, 'eeeeee', NULL, 'danielas.carroll@example.com', '2019-05-17 09:03:22', '$2y$10$8hxEBcPxeFyqvS/7iUuayeKZVSfKvdJA.npMu59wdEnyd33EoD5d6', 'QSmRTcTKvPk4OSiNqIeYHQson1CpKVpXKnGmkDoReh2nUEAiKq2weajtrsx3', '2019-05-17 02:02:15', '2019-05-17 02:02:15'),
(233, 'wwwww', '087871603795', 'daniela.cwarroll@example.com', '2019-05-17 09:05:29', '$2y$10$CoIidHGnv8mks1RvQtxJW.TkJiVWjuhbk46DIrKDe11k0WaTU332O', 'mjoEkp7xxFgcFXpSJFxQoXF2LwUgSVL6If7O93jUYvboq51aNQUHOx7IM32v', '2019-05-17 02:03:40', '2019-05-17 02:03:40'),
(234, 'adonnya', '087871603798', 'adonnya@example.com', '2019-05-21 02:40:15', '$2y$10$4QkfpaRIHV0kdDHzQKTzzebJURv/PfxQMX7sOI1nFnZ6qG/eUnxW6', '7FtPi0zzpe7ks3YfcAeDlMwVxSc6ZauLGTnjZF9P9XdY8tJAy0cCUO3ST1CM', '2019-05-18 23:00:18', '2019-05-18 23:00:18'),
(235, 'furqon', '0878787877877', 'email@gmail.com', '2019-05-21 05:16:23', '$2y$10$aep1FlxZY1nsdvl/g5YFyOSi6KXPnAW9YpjiozJkpL.pgwzKG2irq', NULL, '2019-05-20 22:16:23', '2019-05-20 22:16:23'),
(236, 'furkon fajri', '0878787877877', 'uconbeton@gmail.com', '2019-05-21 07:03:11', '$2y$10$MinK5lijhuyuSX4esyN5G.qXI44v4.6lyhkJoqSIqL.5KYNlACEQS', NULL, '2019-05-20 22:22:15', '2019-05-20 22:22:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hasil_survey`
--
ALTER TABLE `hasil_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuesioner_jawaban`
--
ALTER TABLE `kuesioner_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahapan`
--
ALTER TABLE `tahapan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Indeks untuk tabel `users_copy`
--
ALTER TABLE `users_copy`
  ADD PRIMARY KEY (`id`,`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hasil_survey`
--
ALTER TABLE `hasil_survey`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kuesioner_jawaban`
--
ALTER TABLE `kuesioner_jawaban`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tahapan`
--
ALTER TABLE `tahapan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT untuk tabel `users_copy`
--
ALTER TABLE `users_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
