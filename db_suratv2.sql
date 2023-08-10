-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 10 Agu 2023 pada 08.29
-- Versi server: 5.7.33
-- Versi PHP: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suratv2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id` char(36) COLLATE utf8mb4_bin NOT NULL,
  `nama_bidang` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id`, `nama_bidang`, `created_at`, `updated_at`) VALUES
('0627251b-0e2f-4609-be16-b8abce89ff6c', 'UPTB Aset', '2023-01-06 01:53:53', '2023-01-06 01:53:53'),
('1f30e9ae-9f1a-4026-86d7-9384ae70241b', 'TU - (SEKERTARIAT)', '2023-01-06 01:53:28', '2023-01-12 05:17:59'),
('348e3315-b868-4eb1-8c1e-7f6d24857cca', 'PAMDAL', '2023-01-12 08:25:26', '2023-01-12 08:25:35'),
('454adcee-d791-40dc-adb5-bf4d029e7736', 'UPTB Perbendaharaan', '2023-01-06 01:53:46', '2023-01-06 01:58:03'),
('4805423b-8d94-4c42-ac73-2b71dbe7c843', 'Akuntansi', '2023-01-06 01:53:39', '2023-01-06 01:53:39'),
('5f187f13-c645-4ccd-b027-ac85e56e9f54', 'Arsip', '2023-01-06 01:53:48', '2023-01-06 01:53:48'),
('741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8', 'BEKK', '2023-01-06 01:53:33', '2023-01-06 01:53:33'),
('79530810-bc72-4bcd-9d45-a9180151abf6', 'BMD', '2023-01-06 01:53:36', '2023-01-06 01:53:36'),
('988226b4-0cd4-4547-a218-25dd9c436520', 'Program - (SEKERTARIAT)', '2023-01-06 01:52:51', '2023-01-12 05:17:53'),
('a35a9250-06e4-4d2e-bb23-605e6642f165', 'Pimpinan', '2023-01-06 02:45:52', '2023-01-06 02:45:52'),
('c639a8a5-9159-4c17-9b59-427865c6b4ed', 'Lainnya', '2023-01-12 08:25:39', '2023-01-12 08:25:39'),
('e2c0325b-1ecb-453d-992a-37ddfeaff82d', 'Anggaran', '2023-01-06 01:53:43', '2023-01-06 01:53:43'),
('f60b5439-5d63-4c1e-8f28-9e4940619244', 'Keuangan - (SEKERTARIAT)', '2023-01-06 01:53:25', '2023-01-12 05:17:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribusi`
--

CREATE TABLE `distribusi` (
  `id` int(11) NOT NULL,
  `tujuan` int(10) UNSIGNED NOT NULL,
  `smund_id` int(11) UNSIGNED DEFAULT NULL,
  `smumum_id` int(11) UNSIGNED DEFAULT NULL,
  `status_baca` enum('unread','read','') NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `distribusi`
--

INSERT INTO `distribusi` (`id`, `tujuan`, `smund_id`, `smumum_id`, `status_baca`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 10, 'unread', '2017-08-20 06:54:06', '2017-08-20 06:54:06'),
(2, 2, 2, NULL, 'unread', '2017-08-20 18:06:25', '2017-08-20 18:06:25'),
(3, 5, 3, NULL, 'unread', '2017-08-20 18:07:20', '2017-08-20 18:07:20'),
(4, 9, 4, NULL, 'unread', '2017-08-20 18:08:04', '2017-08-20 18:08:04'),
(5, 7, 5, NULL, 'unread', '2017-08-20 18:09:22', '2017-08-20 18:09:22'),
(6, 12, 6, NULL, 'unread', '2017-08-20 18:09:50', '2017-08-20 18:09:50'),
(7, 4, 7, NULL, 'unread', '2017-08-20 18:10:19', '2017-08-20 18:10:19'),
(8, 13, 8, NULL, 'unread', '2017-08-20 18:10:38', '2017-08-20 18:10:38'),
(9, 4, 9, NULL, 'unread', '2017-08-20 18:11:12', '2017-08-20 18:11:12'),
(10, 8, 9, NULL, 'unread', '2017-08-20 18:11:12', '2017-08-20 18:11:12'),
(11, 2, 10, NULL, 'unread', '2017-08-20 18:11:43', '2017-08-20 18:11:43'),
(12, 1, 11, NULL, 'read', '2017-08-20 18:12:09', '2017-08-20 18:53:55'),
(13, 2, NULL, 1, 'unread', '2017-08-20 18:18:47', '2017-08-20 18:18:47'),
(14, 2, NULL, 2, 'unread', '2017-08-20 18:20:33', '2017-08-20 18:20:33'),
(15, 7, NULL, 2, 'unread', '2017-08-20 18:20:33', '2017-08-20 18:20:33'),
(16, 4, NULL, 3, 'unread', '2017-08-20 18:21:18', '2017-08-20 18:21:18'),
(17, 8, NULL, 3, 'unread', '2017-08-20 18:21:19', '2017-08-20 18:21:19'),
(18, 2, NULL, 4, 'unread', '2017-08-20 18:21:58', '2017-08-20 18:21:58'),
(19, 8, NULL, 4, 'unread', '2017-08-20 18:21:58', '2017-08-20 18:21:58'),
(20, 2, NULL, 5, 'unread', '2017-08-20 18:23:01', '2017-08-20 18:23:01'),
(21, 8, NULL, 5, 'unread', '2017-08-20 18:23:01', '2017-08-20 18:23:01'),
(22, 2, NULL, 6, 'unread', '2017-08-20 18:23:27', '2017-08-20 18:23:27'),
(23, 1, NULL, 7, 'read', '2017-08-20 18:23:57', '2017-08-20 18:27:51'),
(24, 12, NULL, 8, 'unread', '2017-08-20 18:24:35', '2017-08-20 18:24:35'),
(25, 6, NULL, 9, 'unread', '2017-08-20 18:25:08', '2017-08-20 18:25:08'),
(26, 7, NULL, 9, 'unread', '2017-08-20 18:25:08', '2017-08-20 18:25:08'),
(27, 1, 12, NULL, 'unread', '2017-08-21 00:38:06', '2017-08-21 00:38:06'),
(28, 4, 12, NULL, 'unread', '2017-08-21 00:38:07', '2017-08-21 00:38:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_surat_keluar`
--

CREATE TABLE `file_surat_keluar` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('proggress','unread','read','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_surat_keluar`
--

INSERT INTO `file_surat_keluar` (`id`, `staff_bagian`, `perihal`, `file`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', 'Pengambilan Data', 'upload/file_surat/1.jpg', 'read', '2017-08-19 00:21:38', '2017-08-19 00:42:36'),
(2, 'KA.SUBAG TATA USAHA (TU)', 'standar satuan harga bahan T.A 2017', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:32:38', '2017-08-20 19:08:24'),
(3, 'KA.SUBAG TATA USAHA (TU)', 'Ttg. penunjukan tenaga pendukung swaklah perencanaan program', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:35:19', '2017-08-20 21:47:04'),
(4, 'KA.SUBAG TATA USAHA (TU)', 'usulan kenaikan pangkat pilihan jafung tertentu', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:37:15', '2017-08-20 21:47:04'),
(5, 'KA.SUBAG TATA USAHA (TU)', 'surat cuti bersalin ahdelena', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:38:19', '2017-08-20 21:46:10'),
(6, 'KA.SUBAG TATA USAHA (TU)', 'permohonan observasi awal', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:39:18', '2017-08-20 21:46:09'),
(7, 'KA.SUBAG TATA USAHA (TU)', 'permohonan pindah tugas', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:40:14', '2017-08-20 21:46:07'),
(10, 'KA.SUBAG TATA USAHA (TU)', 'ttg. pemb. tim/ inventarisasi BMN berupa rumah negara gol.1 dan non status dst.', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:43:07', '2017-08-20 21:46:06'),
(11, 'KA.SUBAG TATA USAHA (TU)', 'surat perjanjian kerja an. sulistya puspita rahayu, S.T', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:44:55', '2017-08-20 21:46:04'),
(12, 'KA.SUBAG TATA USAHA (TU)', 'und. peserta pembinaan generasi muda PUPR anti korupsi & narkoba Gel. III-V', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:47:02', '2017-08-20 21:46:03'),
(13, 'KA.SUBAG TATA USAHA (TU)', 'und. rapat dalam rangka hari air', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:48:00', '2017-08-20 21:46:01'),
(14, 'KA.SUBAG TATA USAHA (TU)', 'permohonan peminjaman tempat kegiatan', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:49:19', '2017-08-20 21:45:58'),
(15, 'KA.SUBAG TATA USAHA (TU)', 'ttg. penunjukan petugas/ pekerja penunjang kegiatan utk. kegiatan lab. mekanika dst.', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:50:53', '2017-08-20 21:45:57'),
(16, 'KA.SUBAG TATA USAHA (TU)', 'pelaksanaan pengawasan dan pengendalian (WASDAPAL) BMN', 'upload/file_surat/1.txt', 'read', '2017-08-20 18:53:01', '2017-08-20 21:45:51'),
(17, 'KA.SUBAG TATA USAHA (TU)', 'Perihal', 'upload/file_surat/1.txt', 'read', '2017-08-20 23:25:44', '2023-08-09 07:32:04'),
(18, 'KA.SUBAG TATA USAHA (TU)', 'Pesanan spare part dan pemeliharaan suku cadang unit kandis roda 4', 'upload/file_surat/surat.JPG', 'proggress', '2017-08-20 23:38:15', '2017-08-20 23:38:15'),
(19, 'KA.SUBAG TATA USAHA (TU)', 'Bar internal data BMN dst', 'upload/file_surat/SURAT DINAS PU.jpg', 'proggress', '2017-08-20 23:40:17', '2017-08-20 23:40:17'),
(20, 'KA.SUBAG TATA USAHA (TU)', 'Penyusunan RKP 2017 penembusan puk akhir 2015 dan puk awal 2016 dan penyusunan pk ta 2016', 'upload/file_surat/SURAT DINAS PU.jpg', 'proggress', '2017-08-20 23:42:22', '2017-08-20 23:42:22'),
(21, 'KA.SUBAG TATA USAHA (TU)', 'spt.an.ir. gede suardiari.dalam rangka pengumpulan data hujan terkait banjir di bima', 'upload/file_surat/SURAT DINAS PU.jpg', 'proggress', '2017-08-20 23:44:06', '2017-08-20 23:44:06'),
(22, 'KA.SUBAG TATA USAHA (TU)', 'Pesanan barang alat tulis kantor', 'upload/file_surat/SURAT DINAS PU.jpg', 'proggress', '2017-08-20 23:44:57', '2017-08-20 23:44:57'),
(23, 'KA.SUBAG TATA USAHA (TU)', 'penangananan banjir d bima', 'upload/file_surat/SURAT DINAS PU.jpg', 'proggress', '2017-08-21 00:40:21', '2017-08-21 00:40:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan`
--

CREATE TABLE `golongan` (
  `uuid` char(36) COLLATE utf8mb4_bin NOT NULL,
  `nama_golongan` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `golongan`
--

INSERT INTO `golongan` (`uuid`, `nama_golongan`, `created_at`, `updated_at`) VALUES
('0d566aec-3701-4c00-9cb8-7ed7b63832e3', 'Pengatur Muda', '2023-01-05 02:37:46', '2023-01-05 02:37:46'),
('262834f6-d889-4631-8559-c90779bd00b7', 'Penata Tingkat I', '2023-01-05 02:38:22', '2023-01-05 02:38:22'),
('2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', 'Penata Muda', '2023-01-05 02:38:09', '2023-01-05 02:38:09'),
('3099cdfb-19dd-4eb0-8ce9-c986459bad4f', 'Pengatur Muda Tingkat I', '2023-01-05 02:37:52', '2023-01-05 02:37:52'),
('3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'Penata', '2023-01-05 02:38:18', '2023-01-05 02:38:18'),
('43c5be61-e633-48f6-90b6-decacb955fc8', 'Pembina Utama', '2023-01-05 02:38:42', '2023-01-10 01:52:17'),
('4836081e-9f16-491e-8bb8-9d473b004c7e', 'Pembina Utama Madya', '2023-01-05 02:38:38', '2023-01-10 01:52:21'),
('7d3eb832-db8e-4b53-8bdb-3045ead025b4', 'Pembina Tingkat I', '2023-01-05 02:38:33', '2023-01-05 02:38:33'),
('7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'Penata Muda Tingkat I', '2023-01-05 02:38:15', '2023-01-05 02:38:15'),
('9fd0fb38-c19d-43f7-8955-b09a95de1506', 'Pengatur Tingkat I', '2023-01-05 02:38:05', '2023-01-05 02:38:05'),
('b47c00ea-6f91-4ede-9559-88217c96e8b9', 'Juru Muda Tingkat I', '2023-01-05 02:37:35', '2023-01-05 02:37:35'),
('b6b51f6f-3132-496a-88e0-1130065a0d72', 'Pengatur', '2023-01-05 02:37:57', '2023-01-05 02:37:57'),
('be18b481-0779-4563-9eb3-24e48a5a3f5c', 'Juru Tingkat I', '2023-01-05 02:37:42', '2023-01-05 02:37:42'),
('c350dcb2-9b4d-495e-a499-ca0c62334b2b', 'Juru Muda', '2023-01-05 02:37:25', '2023-01-05 02:37:25'),
('d0b1c422-fdb6-4c8f-99ca-70e4b909a700', 'Pembina', '2023-01-05 02:38:28', '2023-01-05 02:38:28'),
('d2cf0ead-eaec-402b-a616-e798dc05cfb6', 'Juru', '2023-01-05 02:37:37', '2023-01-05 02:37:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_20_051137_admin', 1),
(2, '2017_04_20_051137_tbl_smumum', 1),
(3, '2017_04_20_051137_tbl_smund', 1),
(4, '2017_04_20_051138_tbl_disposisi', 1),
(5, '2017_04_20_051141_tbl_filesk', 1),
(6, '2017_04_20_100626_tbl_distribusi', 1),
(7, '2017_04_29_062016_tbl_sksppd', 1),
(8, '2017_04_29_062330_tbl_skbws', 1),
(9, '2017_04_29_062430_tbl_sksatker', 1),
(10, '2017_04_29_062458_tbl_skppkttl', 1),
(11, '2017_04_29_062531_tbl_sms', 1),
(12, '2017_04_29_062554_tbl_sksppdttl', 1),
(13, '2017_05_17_063341_tbl_divisi', 1),
(14, '2017_05_30_125201_user', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `uuid` char(36) COLLATE utf8mb4_bin NOT NULL,
  `nama_pangkat` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`uuid`, `nama_pangkat`, `created_at`, `updated_at`) VALUES
('154abb69-b672-45fd-8397-0d96afbe9766', 'II/A', '2023-01-05 02:35:47', '2023-01-05 02:35:47'),
('254f8ec9-5441-4749-acf9-da7b5043875e', 'III/A', '2023-01-05 02:36:04', '2023-01-05 02:36:04'),
('462ee31c-1842-4137-824f-dd3cdee91b47', 'IV/D', '2023-01-05 02:36:45', '2023-01-05 02:36:45'),
('5eaf3f64-8340-468f-a89e-7f467a1dadfd', 'I/B', '2023-01-05 02:34:05', '2023-01-05 02:34:05'),
('64798051-9fcc-4fa0-8805-cb656e71bf7f', 'I/A', '2023-01-05 02:33:57', '2023-01-05 02:33:57'),
('66758bf3-3a4e-495e-b86d-ac9e505b6060', 'II/B', '2023-01-05 02:35:50', '2023-01-05 02:35:50'),
('7972c67a-4415-4568-b76f-5a022dfac1f7', 'IV/A', '2023-01-05 02:36:31', '2023-01-05 02:36:31'),
('940e6151-1354-4960-98c8-8082515c3055', 'I/D', '2023-01-05 02:35:42', '2023-01-05 02:35:42'),
('a63b9995-0e49-4867-9b25-028fbbb195c8', 'IV/E', '2023-01-05 02:36:49', '2023-01-05 02:36:49'),
('a65b2c45-0752-47e7-9425-46da8f40b992', 'IV/B', '2023-01-05 02:36:36', '2023-01-05 02:36:36'),
('b58eb1f4-55a4-4cae-9709-b50565c2a073', 'II/D', '2023-01-05 02:35:59', '2023-01-05 02:35:59'),
('bb42d0b6-bdd4-428c-b094-4c964f9fb288', 'III/D', '2023-01-05 02:36:20', '2023-01-05 02:36:20'),
('c2df4423-fcab-4825-8ba8-648aecd9976b', 'II/C', '2023-01-05 02:35:55', '2023-01-05 02:35:55'),
('d74dea2c-343b-48df-8af9-0376f1a442ed', 'I/C', '2023-01-05 02:35:35', '2023-01-05 02:35:35'),
('e41a0095-9859-4792-b54e-c77a528f861d', 'IV/C', '2023-01-05 02:36:41', '2023-01-05 02:36:41'),
('e9a45da9-c277-48f2-b12d-e1ea560660f7', 'III/B', '2023-01-05 02:36:09', '2023-01-05 02:36:09'),
('fe7ea2cc-0cb9-47c2-a88f-8683db745262', 'III/C', '2023-01-05 02:36:14', '2023-01-05 02:36:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_pegawai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` enum('pegawai','kaban','kabag','kasubag','sekban') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pegawai',
  `jabatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `initial_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_kerja_golongan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diklat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pendidikan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rekening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_rekening` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` int(11) NOT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kenaikan_pangkat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batas_pensiun` int(11) DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `pangkatUuid` char(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `golonganUuid` char(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bidangUuid` char(36) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `jenis_pegawai`, `name`, `tempat_lahir`, `tanggal_lahir`, `nama_jabatan`, `jabatan`, `initial_jabatan`, `masa_kerja_golongan`, `diklat`, `pendidikan`, `no_sk`, `no_rekening`, `nama_rekening`, `umur`, `jenis_kelamin`, `agama`, `kenaikan_pangkat`, `batas_pensiun`, `foto`, `url`, `createdAt`, `updatedAt`, `pangkatUuid`, `golonganUuid`, `bidangUuid`) VALUES
('0282d54a-de97-4adf-8a6a-32ef4d0aaae3', '197407142009011001', 'pns', 'L. RESTU ATMULYADI, S.Sos', 'Puyung Loteng', '1974-07-14', 'kasubag', 'Kasubag. Umum [Struktural Jabatan Pengawas]( 06-10-2021 )', 'Sekretariat - Umum', '17 thn,\r\n5 bln', '-', 'Sarjana Ilmu Administrasi Universitas Muhammadiyah( 1998 )', NULL, NULL, NULL, 47, 'pria', 'islam', '-', 2032, '84f36ce0570c395d693210b50a341d96.jpg', 'http://localhost:5000/images/84f36ce0570c395d693210b50a341d96.jpg', '2023-01-12 09:26:50', '2023-01-12 04:07:57', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('044dede6-7d8e-40a0-b456-ad630f0b700f', '198504162010011002', 'pns', 'HAERUL FACHRI', 'Kenawa Loteng', '1985-04-16', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '16 thn,\r\n0 bln', 'Diklat Prajabatan Golongan I dan II ( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2011 )', 'SMA IPS SMU Negeri 3 Mataram( 2003 )', NULL, NULL, NULL, 36, 'pria', 'islam', '1 Oktober 2023', 2043, '1ac45046afa644142082e61e02d60e7f.jpg', 'http://localhost:5000/images/1ac45046afa644142082e61e02d60e7f.jpg', '2023-01-12 09:26:48', '2023-01-12 04:29:59', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('048ea851-c358-4df2-8484-eb778526ef37', '198212312008011028', 'pns', 'MAWARDI', 'Pohgadinfg Lotim', '1982-12-31', 'pegawai', 'Peng administrasi[Fungsional Umum -]( 01-06-2019 )', NULL, '19 thn,\r\n0 bln', '-', 'SMA IPS SMUN 1( 2001 )', NULL, NULL, NULL, 39, 'pria', 'islam', 'Monday, April 1, 2024', 2039, '16bdced3cbf08a216e2effeb910b2fc4.jpg', 'http://localhost:5000/images/16bdced3cbf08a216e2effeb910b2fc4.jpg', '2023-01-12 09:26:50', '2023-01-12 04:20:20', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('04adc547-a833-4204-9eeb-53e726defe92', '198212312008012021', 'pns', 'WARNI JUITA, SE', 'Batuyang Lotim', '1982-12-31', 'pegawai', 'Bendahara Pengeluaran SKPD\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', NULL, '14 thn,\r\n0 bln', '-', 'Sarjana Akuntansi STEKNAS( 2005 )', NULL, NULL, NULL, 39, 'wanita', 'islam', '1 Oktober 2024', 2051, 'a7c675bfc0f7eb69520701423bd2f447.jpg', 'http://localhost:5000/images/a7c675bfc0f7eb69520701423bd2f447.jpg', '2023-01-12 09:26:50', '2023-01-12 04:24:42', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('04b50e82-29d7-4bd8-a633-2cb7261640c7', '197806242009011003', 'pns', 'IDUL ADHA', 'Sesela Lobar', '1978-06-24', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '14 thn,\r\n4 bln', '-', 'SMA IPS Paket C Ikhtiar Bersama( 2005 )', NULL, NULL, NULL, 43, 'pria', 'islam', 'Tuesday, April 1, 2025', 2029, '4f5fc65cfab469c8182354f3071c1f0b.jpg', 'http://localhost:5000/images/4f5fc65cfab469c8182354f3071c1f0b.jpg', '2023-01-12 09:26:48', '2023-01-12 04:48:20', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('05110DF4-D018-95C6-5844-0746CAFEF9BE', NULL, 'kontrak', 'Muhmmad Fadli, S.Pd', 'Semalang', '1991-01-20', 'pegawai', 'Tenaga Sopir', NULL, '5 thn, 0 bln', NULL, 'Sarjana Pendidikan IKIP Mataram (2015)', '910/39.a/BPKAD/2020', '001.22.19493.10-8', 'Bank NTB Syariah', 31, 'pria', 'islam', NULL, NULL, '0c7c7e49a6670afafae652695710e293.jpg', 'http://localhost:5000/images/0c7c7e49a6670afafae652695710e293.jpg', '2023-01-12 13:49:49', '2023-01-12 08:51:55', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('0a40a5d8-771d-43aa-8a11-275ceef3861c', '196408021991031007', 'pns', 'Drs. SAMSUL RIZAL, MM', 'Mataram', '1964-08-02', 'kaban', 'Kepala Badan Pengelolaan Keuangan Dan Aset Daerah\r\n[Struktural Jabatan Pimpinan Tinggi Pratama]\r\n( 20-03-2020 )', 'Kepala Badan', '29 thn,\r\n10 bln', 'SPAMA\r\n( Diklat Pim.Tk.III )\r\n[ - ]\r\n( 2003 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2013 )', NULL, NULL, NULL, 57, 'pria', 'islam', '-', 2024, 'dc5a95203c617225e505a96a2f2f8c0d.jpg', 'http://localhost:5000/images/dc5a95203c617225e505a96a2f2f8c0d.jpg', '2023-01-12 09:26:50', '2023-01-12 04:21:42', 'e41a0095-9859-4792-b54e-c77a528f861d', '4836081e-9f16-491e-8bb8-9d473b004c7e', 'a35a9250-06e4-4d2e-bb23-605e6642f165'),
('0D22C99E-C713-F9CF-E7F9-65359A7F7C29', NULL, 'kontrak', 'L. Muhammad Sukran Lana', '-', '-', 'pegawai', 'Tenaga Kebersihan', NULL, '5 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '015.02.00340.27-4', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, '3db71def23c45a11e880808dd0fbaca4.jpg', 'http://localhost:5000/images/3db71def23c45a11e880808dd0fbaca4.jpg', '2023-01-12 13:49:49', '2023-01-12 08:24:33', NULL, NULL, '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('1141166a-b6e9-4621-961a-d6d5b32d91d3', '197109112007012017', NULL, 'SRI HUSMIANI, SE', 'Gunung Sari Lobar', '1971-09-11', 'pegawai', 'Pranata Kearsipan [Fungsional Umum -] ( 01-01-2021 )', NULL, '22 thn, 00 bln', '-', 'Sarjana Manajemen Keuangan STIE 45 ( 2009 )', NULL, NULL, NULL, 51, 'wanita', 'islam', '1 April 2024', 2029, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:46:37', '2023-01-13 02:46:37', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('11c9138b-1cf3-4255-aa51-d374ef767630', '197312252006041013', 'pns', 'EDY SUMANTRI, ST, MM', 'Sumbawa Besar', '1973-12-25', 'kasubag', 'Kepala Seksi Pemanfaatan Aset pada UPTB Balai Pemanfaatan Dan Pengamanan Aset Daerah\r\n[Struktural Jabatan Pengawas]\r\n( 06-02-2020 )', 'UPTB Aset - Seksi Pemanfaatan Aset', '20 thn,\r\n3 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2014 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2004 )', NULL, NULL, NULL, 48, 'pria', 'islam', '1 Oktober 2021', 2031, '544605dea917b177302f3d76d9e8b349.jpg', 'http://localhost:5000/images/544605dea917b177302f3d76d9e8b349.jpg', '2023-01-12 09:26:50', '2023-01-12 03:58:59', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('131214dc-cd7b-4d44-a12d-a1d97acf35d8', '197806052009011001', 'pns', 'LALU ARI BARDIANSAH, S.Adm', 'Mataram', '0197-06-05', 'pegawai', 'Analis Dara Laporan Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '15 thn,\r\n10 bln', '-', 'Diploma III Pariwisata-( 1900 )', NULL, NULL, NULL, 43, 'pria', 'islam', '1 Oktober 2024', 2044, 'e5e1f4300e5d0e7db0bde7649e39fb9b.jpg', 'http://localhost:5000/images/e5e1f4300e5d0e7db0bde7649e39fb9b.jpg', '2023-01-12 09:26:50', '2023-01-12 04:26:19', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('14064207-ff88-4f40-a3fe-b58315dff94c', '197403012008011011', 'pns', 'ERY YUSRI IMAM SANTOSO', 'Mataram', '1974-03-01', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 17-06-2020 )', NULL, '19 thn,\r\n9 bln', '-', 'Diploma III Manajemen Keuangan dan Perbankan Akademi Manajemen Mataram( 1996 )', NULL, NULL, NULL, 47, 'pria', 'islam', 'Monday, April 1, 2024', 2034, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 09:26:50', '2023-01-13 02:07:15', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('142782EC-1056-D51B-0935-949936973E6A', NULL, 'kontrak', 'Nanik Puji Astuti. A.Md', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2028', '2320523691', 'Bank BCA', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('143AD7DC-CB91-269B-31CC-0C55B9654917', NULL, 'kontrak', 'L. M. Gunawan', 'Majeluk Mataram', '1979-09-14', 'pegawai', 'Tenaga Keamanan', NULL, '10 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19470.10-6', 'Bank NTB Syariah', 43, 'pria', 'islam', NULL, NULL, 'd2857c70be814545fb0a61c068740a82.jpg', 'http://localhost:5000/images/d2857c70be814545fb0a61c068740a82.jpg', '2023-01-12 13:49:48', '2023-01-12 08:28:02', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('14fcb20e-7f70-438c-8f83-56f49bdff5d8', '196810191989021002', 'pns', 'Drs. MUHAMMAD ANWAR', 'Selong Lotim', '1968-10-19', 'kabag', 'Kepala UPTB Balai Pemanfaatan Dan Pengamanan Aset Daerah\r\n[Struktural Jabatan Administrator]\r\n( 04-05-2020 )', 'UPTB Pemanfaatan Aset', '26 thn,\r\n11 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat III (Diklat PIM Tk. III)\r\n( Diklat Pim.Tk.III )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2014 )', 'Sarjana Ilmu Ekonomi Studi Pembangunan Universitas Islam Al-Azhar( 1994 )', NULL, NULL, NULL, 53, 'pria', 'islam', '-', 2026, '49614ebe94dd9c59ecbab11cc6fcf066.jpg', 'http://localhost:5000/images/49614ebe94dd9c59ecbab11cc6fcf066.jpg', '2023-01-12 09:26:50', '2023-01-12 03:54:48', 'a65b2c45-0752-47e7-9425-46da8f40b992', '7d3eb832-db8e-4b53-8bdb-3045ead025b4', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('159f07b9-0749-484e-bc96-f6ddbd5e3995', '196408021991031007', 'pns', 'YULI HARTINI', 'Ampenan Mataram', '1996-07-01', 'pegawai', 'Pengumpul Data \r\n[Fungsional Umum]\r\n(01-04-2020)', NULL, '19 thn,\r\n02 bln', '-', 'SMU\r\nIPS\r\n\r\n( 2000 )', NULL, NULL, NULL, 40, 'wanita', 'islam', 'Tuesday, April 1, 2025', 2027, 'b69cdb6fd5640592268681f2ecccaa22.jpg', NULL, '2023-01-12 09:26:50', '2023-01-12 09:26:50', NULL, NULL, NULL),
('160ACDB3-5511-2933-6F0B-434ED8C05C7F', NULL, 'kontrak', 'Muhamad Soufi', 'Langkek Bue', '1981-12-31', 'pegawai', 'Tenaga Kebersihan', NULL, '8 thn, 0 bln', NULL, 'SMA Negeri 1 Kopang', '910/39.a/BPKAD/2020', '001.22.19469.10-7', 'Bank NTB Syariah', 33, 'pria', 'islam', NULL, NULL, 'c9b09d305791c49d439da20743805c7f.jpg', 'http://localhost:5000/images/c9b09d305791c49d439da20743805c7f.jpg', '2023-01-12 13:49:48', '2023-01-12 08:59:59', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('162be1f3-994f-4b8c-a9bd-d11b50df27fe', '197510062007012020', 'pns', 'NI MADE SUARTINI, SE', 'Mataram', '1975-10-06', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '13 thn,\r\n0 bln', '-', 'Sarjana Manajemen Universitas Saraswati( 1998 )', NULL, NULL, NULL, 46, 'wanita', 'hindu', 'Tuesday, April 1, 2025', 2035, 'fcf4af70e26bf4de73e23ae180271467.jpg', 'http://localhost:5000/images/fcf4af70e26bf4de73e23ae180271467.jpg', '2023-01-12 09:26:50', '2023-01-12 04:43:49', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('1710e16d-0c9b-4be0-bb20-18709d129cb0', '198408142014022001', 'pns', 'IDA IRAWATI, SE', 'Jakarta', '1984-08-14', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 30-11-2015 )', NULL, '6 thn,\r\n11 bln', 'Pendidikan dan Pelatihan Prajabatan Golongan III\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2014 )', 'Sarjana Akuntansi Universitas Mataram( 2010 )', NULL, NULL, NULL, 37, 'wanita', 'islam', '1 Oktober 2023', 2051, '9d6f206af87579fca17e37cf0303401b.jpg', 'http://localhost:5000/images/9d6f206af87579fca17e37cf0303401b.jpg', '2023-01-12 09:26:50', '2023-01-12 04:18:25', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('178F5667-43E7-760D-9C2B-FA43D718FE5D', NULL, 'kontrak', 'Rika Ulpha Wulandari, SE', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '814/ 125 /BKD/2020', '001.22.50093.01-2', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:50', '2023-01-12 13:49:50', NULL, NULL, NULL),
('17A12AE5-6A94-D72D-AD07-CEC1DC8A0F3D', NULL, 'kontrak', 'Maulana Ardiansyah, A.Md.Kom', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/38/BPKAD/2020', '08.58.687.031', 'Bank Mandiri', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:49', '2023-01-12 13:49:49', NULL, NULL, NULL),
('17b1e2da-50b5-4442-b048-1a77042fe248', '197003272008011013', 'pns', 'HAFIFI', 'Dasan Agung Mataram', '1970-03-27', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 29-09-2016 )', NULL, '20 thn,\r\n0 bln', '-', 'SMA A.2/Biologi Sma Muhammadiyah( 1989 )', NULL, NULL, NULL, 51, 'pria', 'islam', 'Monday, April 1, 2024', 2030, 'b7369f158da5d163779fe67fe7730396.jpg', 'http://localhost:5000/images/b7369f158da5d163779fe67fe7730396.jpg', '2023-01-12 09:26:50', '2023-01-12 03:49:59', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('19e2867c-cc0f-4d66-b5ff-4c7a77ef60fb', '197910222010011004', 'pns', 'LALU BAHRI, A.Md, S.Adm', 'Sikur Lotim', '1979-10-22', 'pegawai', 'Pengumpul dan Pengolah Data\r\n[Fungsional Umum -]\r\n( 16-06-2020 )', NULL, '14 thn,\r\n6 bln', 'Diklat Prajabatan Golongan I dan II\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2011 )', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2014 )', NULL, NULL, NULL, 42, 'pria', 'islam', 'Monday, April 1, 2024', 2040, 'aa8418552e0b196bf10ac3811a5b8873.jpg', 'http://localhost:5000/images/aa8418552e0b196bf10ac3811a5b8873.jpg', '2023-01-12 09:26:50', '2023-01-12 04:03:53', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('1a5ee094-9a58-4fa5-81e7-0ef2b2eb3a59', '197212312007011148', 'pns', 'MAHMUR', 'Pohgadinfg Lotim', '1972-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '17 thn,\r\n0 bln', '-', 'SMA Kejuruan Koperasi SMEAN 2( 1992 )', NULL, NULL, NULL, 49, 'pria', 'islam', 'Saturday, April 1, 2023', 2031, 'dc9f7430983860acf2663e509f50ce4c.jpg', 'http://localhost:5000/images/dc9f7430983860acf2663e509f50ce4c.jpg', '2023-01-12 09:26:50', '2023-01-12 03:42:10', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('1A77CFAD-954E-277D-C206-B8E98586273A', NULL, 'kontrak', 'Ratmaje Syahdan, S.Pd, MM', 'Teniki', '1986-12-31', 'pegawai', 'Operator Komputer', NULL, '10 thn, 0 bln', NULL, 'Magister Manajemen Universitas Mataram(2015)', '910/39.a/BPKAD/2020', '001.22.19736.10-8', 'Bank NTB Syariah', 36, 'pria', 'islam', NULL, NULL, 'e8d595cc5bb6c1d4548a1aaa7fa68fd7.jpg', 'http://localhost:5000/images/e8d595cc5bb6c1d4548a1aaa7fa68fd7.jpg', '2023-01-12 13:49:50', '2023-01-12 06:31:10', NULL, NULL, '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('1af1e0d9-9c23-4f4a-aaf0-6958aacfe029', '196604041990031011', 'pns', 'RAIDI, S.Sos', 'Lobar', '1966-04-04', 'pegawai', 'Analis Aset Daerah\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '19 thn,\r\n10 bln', '-', 'Sarjana Administrasi Negara STIA Mataram( 2003 )', NULL, NULL, NULL, 55, 'pria', 'islam', 'Friday, April 1, 2022', 2024, 'ea93c68ed913b22bc238e740b5d52e18.jpg', 'http://localhost:5000/images/ea93c68ed913b22bc238e740b5d52e18.jpg', '2023-01-12 09:26:50', '2023-01-12 03:56:29', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('1CADBB99-6F78-F5AE-5626-8028B7DF6D77', NULL, 'kontrak', 'Baiq Heny Adiwinarni, A.Md', 'Mataram', '1985-05-11', 'pegawai', 'PTT', NULL, '-', NULL, 'Diploma I Manajemen Administrasi Akademi Sekretari dan manajemen mataram (2004)', '814/ 125 /BKD/2020', '001.02.00195.31-4', 'Bank NTB Syariah', 37, 'wanita', 'islam', NULL, NULL, 'e495e6f04fc5b39f8dffa2af6205d305.jpg', 'http://localhost:5000/images/e495e6f04fc5b39f8dffa2af6205d305.jpg', '2023-01-12 13:49:50', '2023-01-12 06:35:40', NULL, NULL, 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('1CCDFA8F-973C-5336-9517-88389DE9EED9', NULL, 'kontrak', 'Ahmad Salhadi', 'Durian, Loteng', '1979-10-11', 'pegawai', 'Tenaga Kebersihan', NULL, '15 thn, 0 bln', NULL, 'SMAN 5 Mataram', '910/39.a/BPKAD/2020', '001.22.19461.10-5', 'Bank NTB Syariah', 43, 'pria', 'islam', NULL, NULL, '0b990dde09c79ea78bf3b46bc9962ce8.jpg', 'http://localhost:5000/images/0b990dde09c79ea78bf3b46bc9962ce8.jpg', '2023-01-12 13:49:49', '2023-01-12 08:56:19', NULL, NULL, 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('1e5934b6-dbdd-4e92-b4c5-9416e9eb2a08', '197207201991032002', NULL, 'SRI YULIANTI', 'Semamung', '1972-07-20', 'pegawai', 'Penyusun Rencana Pengadaan Sarana dan Prasarana [Fungsional Umum -] ( 01-01-2020 )', NULL, '24 thn, 10 bln', '-', 'SMA Kejuruan - Sekolah Perawat Kesehatan ( 1990 )', NULL, NULL, NULL, 50, 'wanita', 'islam', '-', 2030, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:35:51', '2023-01-13 02:35:51', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('1e60c1ce-ac4b-43f2-9063-3beaee412f48', '196712311990032057', 'pns', 'BAIQ HUSNIATI, S. Adm', 'Lobar', '1967-12-31', 'pegawai', 'Analis Perbendaharaan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '25 thn,\r\n10 bln', '-', 'Sarjana Ilmu Administrasi STIA Mataram( 2009 )', NULL, NULL, NULL, 54, 'wanita', 'islam', '-', 2025, '2578907ee6b4389817e9b7044c14eee7.jpg', 'http://localhost:5000/images/2578907ee6b4389817e9b7044c14eee7.jpg', '2023-01-12 09:26:50', '2023-01-12 04:46:43', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('21d17b8a-3457-442d-ab1d-5d7856a75b69', '197712102005012016', 'pns', 'DESTA DAMUHARTI, S.E., M.Ak', 'Abian Tubuh Mataram', '1977-12-10', 'kasubag', 'Kepala Sub Bidang Akuntansi dan Pelaporan Sektor Sosial dan Budaya pada Bidang Akuntansi Dan Pelaporan BPKAD Provinsi NTB\n[Struktural Jabatan Pengawas]\n( 22-04-2021 )', 'Akuntansi - Sektor Sosial & Budaya', '16 thn,\r\n0 bln', 'Pendidikan dan Latihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2016 )', 'Pasca Sarjana, Magister Akuntansi Universitas Mataram ( 2012 )', NULL, NULL, NULL, 44, 'wanita', 'kristen', 'Friday, April 1, 2022', 2035, '299b4e77afe50c5d13e6264914881e9a.jpg', 'http://localhost:5000/images/299b4e77afe50c5d13e6264914881e9a.jpg', '2023-01-12 09:26:50', '2023-01-12 02:09:25', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('234CBDAC-9F3C-9234-618A-11155E0E19B4', NULL, 'kontrak', 'Lalu Abdillah', 'Mambalan, Lombok Barat', '1984-06-01', 'pegawai', 'Tenaga Kebersihan', NULL, '15 thn, 0 bln', NULL, 'Diploma III Teknik Informatika Amikom Mataram(2012)', '910/39.a/BPKAD/2020', '001.22.62609.10-7', 'Bank NTB Syariah', 36, 'pria', 'islam', NULL, NULL, '2fa02fbbd25cd69d49e54bb85a7668f9.jpg', 'http://localhost:5000/images/2fa02fbbd25cd69d49e54bb85a7668f9.jpg', '2023-01-12 13:49:49', '2023-01-12 08:31:19', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('24728be9-6c37-4e4d-a3f8-67c4f5fca7c8', '198004152005011012', 'pns', 'MUHAMMAD BAIHAKI, S.E', 'Labuapi Lobar', '1980-04-15', 'kabag', 'Kepala Bidang Akuntansi dan Pelaporan\r\n[Struktural Jabatan Administrator]\r\n( 29-03-2019 )', 'Akutansi', '16 thn,\r\n0 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat III (Diklat PIM Tk. III)\r\n( Diklat Pim.Tk.III )\r\n[ Badan Pengembangan Sumberdaya Manusia Daerah ]\r\n( 2019 )', 'Sarjana Akuntansi Universitas Mataram ( 2003 )', NULL, NULL, NULL, 41, 'pria', 'islam', 'Saturday, April 1, 2023', 2038, '0539ed7cbd68115775c00b0290d6273f.jpg', 'http://localhost:5000/images/0539ed7cbd68115775c00b0290d6273f.jpg', '2023-01-12 09:26:50', '2023-01-12 02:10:00', '7972c67a-4415-4568-b76f-5a022dfac1f7', '7d3eb832-db8e-4b53-8bdb-3045ead025b4', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('24b7d98b-c93a-4bf6-a683-842f5b41388c', '198405112005011001', 'pns', 'YAN SYAHRONI, S.Adm, MM', 'Praya Loteng', '1984-05-11', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 21-07-2016 )', NULL, '11 thn,\r\n0 bln', '-', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2020 )', NULL, NULL, NULL, 37, 'pria', 'islam', 'Tuesday, April 1, 2025', 2030, '3e923a9622ba684a4c1ae3be7f2911e4.jpg', 'http://localhost:5000/images/3e923a9622ba684a4c1ae3be7f2911e4.jpg', '2023-01-12 09:26:50', '2023-01-12 04:03:14', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('267D9CA6-0333-D62D-1DCB-615C728A70CC', NULL, 'kontrak', 'Hairi', 'Sayang Lauk', '1977-04-20', 'pegawai', 'Tenaga Keamanan', NULL, '10 thn, 0 bln', NULL, 'Madrasah Aliyah (1996)', '910/39.a/BPKAD/2020', '001.22.19467.10-9', 'Bank NTB Syariah', 45, 'pria', 'islam', NULL, NULL, 'e7ea08cb507b33c16ae30c431e234eb7.jpg', 'http://localhost:5000/images/e7ea08cb507b33c16ae30c431e234eb7.jpg', '2023-01-12 13:49:48', '2023-01-12 08:50:01', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('285985ba-7adf-4b23-badc-bed8439505b6', '196408021991031007', 'pns', 'SUPRIADI', 'Renteng', '1973-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 13-04-2017 )', NULL, '22 thn,\r\n9 bln', '-', 'SMA Kejuruan\r\nPendidikan Guru Agama\r\nMadrasah Aliyah\r\n( 1991 )', NULL, NULL, NULL, 48, 'pria', 'islam', 'Monday, April 1, 2024', 2031, 'e78ab5edc12d000ee2242204e6a744e1.jpg', NULL, '2023-01-12 09:26:50', '2023-01-12 09:26:50', NULL, NULL, NULL),
('2a5ffb93-2ac8-4d21-a8e8-8de4fc3e05e0', '198912312014021002', 'pns', 'MAHDAN, SH', 'Dasan Agung Mataram', '1976-04-11', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '11 thn,\r\n0 bln', '-', 'SMA Kejuruan Pendidikan Guru Agama Madrasah Aliyah Negeri No.1( 1996 )', NULL, NULL, NULL, 45, 'pria', 'islam', 'Monday, April 1, 2024', 2022, '7b20d194eb5ec9460047561bffd57014.jpg', 'http://localhost:5000/images/7b20d194eb5ec9460047561bffd57014.jpg', '2023-01-12 09:26:50', '2023-01-12 03:50:33', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('2c127d36-c151-4a43-81ce-dfa779fc9063', '199407302016091001', 'pns', 'LALU MUH. IRFIN WIRA LAZUARDY, S.STP', 'Loteng', '1994-07-30', 'pegawai', 'Analis Laporan Akuntabilitas Kinerja pada Sub Bagian Umum, Sekretariat Badan Pengelolaan Keuangan Dan Aset Daerah\r\n[Fungsional Umum -]\r\n( 24-08-2020 )', NULL, '4 thn,\r\n4 bln', '-', 'Diploma IV Politik Pemerintahan Institut Pemerintahan Dalam Negeri( 2016 )', NULL, NULL, NULL, 27, 'pria', 'islam', 'Tuesday, April 1, 2025', 2042, '237fdea2033b0f92b71cc0b0bd12780a.jpg', 'http://localhost:5000/images/237fdea2033b0f92b71cc0b0bd12780a.jpg', '2023-01-12 09:26:50', '2023-01-12 04:49:49', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '988226b4-0cd4-4547-a218-25dd9c436520'),
('2c7a3b86-6806-4e39-aa5b-10829990650d', '198103312005011008', 'pns', 'AHMAD EFFENDI, SE', 'Ampenan Mataram', '1981-03-31', 'pegawai', 'Bendahara Penerimaan SKPKD\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', NULL, '11 thn, 0 bln', '-', 'Sarjana Akuntansi Universitas Terbuka ( 2016 )', NULL, NULL, NULL, 40, 'pria', 'islam', '1 Oktober 2025', 2034, '92e8261440d699568943d8dc5b384765.jpg', 'http://localhost:5000/images/92e8261440d699568943d8dc5b384765.jpg', '2023-01-12 09:26:50', '2023-01-12 02:16:06', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('2ca19348-a756-480b-abd9-9b2eb690de28', '196908022007011031', 'pns', 'AGUS SUMARDI, SE', 'Cakranegara Mataram', '1969-08-02', 'pegawai', 'Analis Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '23 thn,\r\n8 bln', '-', 'Sarjana Manajemen Fakultas Ekonomi Universitas Mataram( 1995 )', NULL, NULL, NULL, 52, 'pria', 'islam', '-', 2027, '5a5bc2693c8cf1829862ca9e615e9f31.jpg', 'http://localhost:5000/images/5a5bc2693c8cf1829862ca9e615e9f31.jpg', '2023-01-12 09:26:50', '2023-01-12 04:04:37', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('2e1a3aa2-ffbd-4920-bfe0-60c70d2fd266', '198809102007012001', 'pns', 'RADEN RARA HENNYTA KUSUMANINGRUM, S.IP', 'Yogyakarta', '1988-09-10', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '11 thn,\r\n3 bln', '-', 'Sarjana Manajemen Pemerintahan Institut Pemerintahan Dalam Negeri( 2009 )', NULL, NULL, NULL, 33, 'wanita', 'islam', '-', 2046, '0278f748679bb31fbbec323fae409161.jpg', 'http://localhost:5000/images/0278f748679bb31fbbec323fae409161.jpg', '2023-01-12 09:26:50', '2023-01-12 03:57:02', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('2e7338f0-1bb4-4030-9a78-34c312f083e3', '197712312009011003', 'pns', 'AS\'AD', 'Padamara Lotim', '1977-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '17 thn,\r\n8 bln', '-', 'SMA Ilmu Agama MAN 1( 1996 )', NULL, NULL, NULL, 44, 'pria', 'islam', 'Tuesday, April 1, 2025', 2039, 'b1e93b0458e6d0967addc89484762493.jpg', 'http://localhost:5000/images/b1e93b0458e6d0967addc89484762493.jpg', '2023-01-12 09:26:50', '2023-01-12 04:50:35', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '988226b4-0cd4-4547-a218-25dd9c436520'),
('32C21982-07DF-8570-A650-CD5AF3E19D8B', NULL, 'kontrak', 'Muhrim', 'Lombas', '1980-12-31', 'pegawai', 'Tenaga Kebersihan', NULL, '15 thn, 0 bln', NULL, 'SMUN 1 Kopang', '910/39.a/BPKAD/2020', '001.22.09001.02-4', 'Bank NTB Syariah', 42, 'pria', 'islam', NULL, NULL, '339f55f9d5d2c7c8b300773158823169.jpg', 'http://localhost:5000/images/339f55f9d5d2c7c8b300773158823169.jpg', '2023-01-12 13:49:49', '2023-01-12 09:06:30', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736'),
('36f706fe-415e-44ba-8e65-e61243d61c6f', '199105012014062002', 'pns', 'BAIQ MEYDA NINDI ANJANI, S.STP', 'Mataram', '1991-05-01', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 31-10-2018 )', NULL, '6 thn,\r\n7 bln', '-', 'Diploma IV Pembangunan dan PemberdayaanInstitut Pemerintahan Dalam Negeri( 2014 )', NULL, NULL, NULL, 30, 'wanita', 'islam', '1 Oktober 2023', 2042, '86272fd66f377eab1e651f4e6a070036.jpg', 'http://localhost:5000/images/86272fd66f377eab1e651f4e6a070036.jpg', '2023-01-12 09:26:50', '2023-01-12 04:57:04', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('386a5dad-586c-4c4d-b013-7041f14fa6c8', '196503271986032014', 'pns', 'Hj. BAIQ LILIK YOESVIE ANDAYANI', 'Mataram', '1965-03-27', 'pegawai', 'Pengolah Data [Fungsional Umum -]( 04-09-2015 )', NULL, '34 thn,\r\n10 bln', 'Pendidikan dan Pelatihan Administrasi Umum (DIKLAT ADUM)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Pendidikan dan Pelatihan Pemerintah Provinsi Nusa Tenggara ]\r\n( 1996 )', 'SMA IPA SMAN- 1( 1984 )', NULL, NULL, NULL, 56, 'wanita', 'islam', '-', 2024, 'a81fa7ee4fc5feced45a1000c01a2fe0.jpg', 'http://localhost:5000/images/a81fa7ee4fc5feced45a1000c01a2fe0.jpg', '2023-01-12 09:26:50', '2023-01-12 03:45:40', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('398f72e6-20b9-4aa1-9cfd-0fa01b0fc0b1', '196812311993032063', 'pns', 'NI WAYAN MUDIANI, SE', 'Susut', '1968-12-31', 'pegawai', 'Analis Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '22 thn,\r\n10 bln', '-', 'Sarjana Manajemen Keuangan Stie 45( 2004 )', NULL, NULL, NULL, 53, 'wanita', 'hindu', '-', 2026, '989f47dae5a2fcefcb21c0fe7a6fa939.jpg', 'http://localhost:5000/images/989f47dae5a2fcefcb21c0fe7a6fa939.jpg', '2023-01-12 09:26:50', '2023-01-12 04:05:47', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('3a427f2f-1183-4058-b5e2-5bc27de30f24', '198012252009012002', NULL, 'EMA MARYATI, SE', 'Teros Lotim', '1980-12-25', 'pegawai', 'Analis Perencanaan Anggran [Fungsional Umum -] ( 01-01-2021 )', NULL, '15 thn, 11 bln', '-', 'Sarjana Manajemen SDM Unram ( 2013 )', NULL, NULL, NULL, 42, 'wanita', 'islam', '1 April 2024', 2038, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:44:56', '2023-01-13 02:44:56', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('3B5B786E-EC15-D696-77C1-901E0A689C0F', NULL, 'kontrak', 'Azmi Embara Muspa', '-', '-', 'pegawai', 'null', NULL, 'null', NULL, 'null', '910/02/BPKAD/2026', '1610006635234', 'Bank Mandiri', 0, 'pria', 'islam', NULL, NULL, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 13:49:48', '2023-01-13 02:03:41', NULL, NULL, 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('3b98401b-2c0e-449a-a331-0d92a1c1ac4e', '197810132008012017', 'pns', 'ATNILA ERYTHRINA, SE, M.Ec.Dev', 'Mataram', '1978-10-13', 'pegawai', 'Pengumpul dan Pengolah Data pada UPTB Balai Pemanfaatan dan Pengamanan Aset Daerah\r\n[Fungsional Umum -]\r\n( 01-01-2019 )', NULL, '13 thn,\r\n0 bln', '-', 'Sarjana Magister Ekonomi Pembangunan Universitas Gadjah Mada( 2018 )', NULL, NULL, NULL, 43, 'wanita', 'islam', 'Monday, April 1, 2024', 2032, 'a5134755cca6a2203cacbeee59882feb.jpg', 'http://localhost:5000/images/a5134755cca6a2203cacbeee59882feb.jpg', '2023-01-12 09:26:50', '2023-01-12 03:58:16', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('3D4B8835-AC85-29FB-47DC-FC259F8BF13C', NULL, 'kontrak', 'Septina Marliyani, SE', 'Mataram', '1991-09-03', 'pegawai', 'Tenaga Administrasi', NULL, '8 Thn, 0 bln', NULL, 'Sarjana Ekonomi Universitas mataram (2013)', '910/24/BPKAD/2020', '001.22.19465.10-0', 'Bank NTB Syariah', 31, 'wanita', 'islam', NULL, NULL, 'bc149205def130c1349c030e90e26133.jpg', 'http://localhost:5000/images/bc149205def130c1349c030e90e26133.jpg', '2023-01-12 13:49:49', '2023-01-12 06:23:59', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('401dffdd-fcc8-455e-aa26-a9b397f35629', '199201122014062001', 'pns', 'SURMAYANTI ISNAENI, S.IP', 'Nyurlembang Lobar', '1992-01-12', 'pegawai', 'Pengolah Data [Fungsional Umum -]( 04-09-2015 )', NULL, '6 thn,\r\n7 bln', '-', 'Diploma IV Manajemen Keuangan Institut Pemerintahan Dalam Negeri( 2014 )', NULL, NULL, NULL, 29, 'wanita', 'islam', '1 Oktober 2022', 2049, '1beddb8ce8117060a488e6868381b98b.jpg', 'http://localhost:5000/images/1beddb8ce8117060a488e6868381b98b.jpg', '2023-01-12 09:26:50', '2023-01-12 02:23:34', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('40d61d28-db1b-4dc2-b2b6-defc4a4d525d', '198102042009011001', 'pns', 'AGUS SALIM ASHARI', 'Mataram', '1981-02-04', 'pegawai', 'Pengadministrasi Data\r\n[Fungsional Umum -]\r\n( 30-12-2016 )', NULL, '16 thn,\r\n8 bln', '-', 'SMA IPS SMUN 1( 1999 )', NULL, NULL, NULL, 40, 'pria', 'islam', 'Tuesday, April 1, 2025', 2031, 'ce0ef697b59da36709a47f4df7b71f42.jpg', 'http://localhost:5000/images/ce0ef697b59da36709a47f4df7b71f42.jpg', '2023-01-12 09:26:50', '2023-01-12 04:43:09', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('424d0ba1-50db-4c44-8551-c28fc4ca8588', '198609272009011004', 'pns', 'YURI AL AMIN, A.Md,S. Adm', 'Bima', '1986-09-27', 'pegawai', 'Fungsional Arsiparis Ahli Muda [Fungsional Arsiparis Ahli Muda]( 20-11-2017 )', NULL, '10 thn,\r\n0 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2014 )', NULL, NULL, NULL, 35, 'pria', 'islam', 'Monday, April 1, 2024', 2038, '6018aedf7a721fbd6be6aab3fe12ac6e.jpg', 'http://localhost:5000/images/6018aedf7a721fbd6be6aab3fe12ac6e.jpg', '2023-01-12 09:26:50', '2023-01-12 03:41:09', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('4263EECB-2794-B541-B1CA-E5F4C65852F4', NULL, 'kontrak', 'Fauziatul Hayati, S.I.Kom', 'Lhokseumawe', '1990-01-28', 'pegawai', 'Tenaga Administrasi', NULL, '7 Thn, 0 bln', NULL, 'Sarjana Ilmu Komunikasi Universitas 45 Mataram (2019)', '910/39.a/BPKAD/2020', '001.22.19734.10-1', 'Bank NTB Syariah', 32, 'wanita', 'islam', NULL, NULL, '4c4345f7c0e9c2f485d7a0c8e0075395.jpg', 'http://localhost:5000/images/4c4345f7c0e9c2f485d7a0c8e0075395.jpg', '2023-01-12 13:49:50', '2023-01-12 06:21:27', NULL, NULL, 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('435c4114-496f-4c70-9892-d9a5a4a909c1', '199306042015071002', 'pns', 'DENNY KURNIAWAN PUTRA, S.STP', 'Selong Lotim', '1993-06-04', 'pegawai', 'Analis Pembinaan Pelaksanaan Anggaran\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', NULL, '5 thn,\r\n6 bln', '-', 'Diploma IV Politik Pemerintahan Institut Pemerintahan Dalam Negeri( 2015 )', NULL, NULL, NULL, 28, 'pria', 'islam', '1 Oktober 2023', 2050, 'd3906aa81751960823e34794c21dd584.jpg', 'http://localhost:5000/images/d3906aa81751960823e34794c21dd584.jpg', '2023-01-12 09:26:50', '2023-01-12 02:33:17', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('442a83e0-2a59-4cee-83c4-03fcc9706bcf', '198501012008012013', 'pns', 'ISTIQOMAH', 'Rumbuk Lotim', '1985-01-01', 'pegawai', 'Penga dministrasi [Fungsional Umum -]( 29-08-2017 )', NULL, '16 thn,\r\n0 bln', '-', 'SMA IPS Paket C Al - Akhyar( 2005 )', NULL, NULL, NULL, 36, 'wanita', 'islam', 'Monday, April 1, 2024', 2036, 'ead4882101d9fce584a1d5a53e972f59.jpg', 'http://localhost:5000/images/ead4882101d9fce584a1d5a53e972f59.jpg', '2023-01-12 09:26:48', '2023-01-12 04:40:16', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('44c5626c-d8a8-4a44-b4d9-48b4acc8a0e8', '197705072009011002', 'pns', 'JUNAIDI', 'Ampenan Mataram', '1977-05-07', 'pegawai', 'Peng administrasi[Fungsional Umum -]( 04-09-2015 )', NULL, '17 thn,\r\n10 bln', '-', 'SMP\r\n-\r\nPaket B Al-Ikhlas\r\n( 2011 )', NULL, NULL, NULL, 44, 'pria', 'islam', '-', 2035, 'b19bb00797c202db4c39387d656f7e57.jpg', 'http://localhost:5000/images/b19bb00797c202db4c39387d656f7e57.jpg', '2023-01-12 09:26:48', '2023-01-12 04:19:35', '154abb69-b672-45fd-8397-0d96afbe9766', '0d566aec-3701-4c00-9cb8-7ed7b63832e3', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('45B31FAD-BC2B-7841-747F-CE9E4FD179D6', NULL, 'kontrak', 'Ilman Marsad, S.Pd', 'Bore', '1990-12-31', 'pegawai', 'Tenaga Kebersihan', NULL, '4 thn, 0 bln', NULL, 'Sarjana Pendidikan Universitas Muhammadiyah Mataram(2016)', '910/39.a/BPKAD/2020', '001.22.19468.10-3', 'Bank NTB Syariah', 32, 'pria', 'islam', NULL, NULL, '9269cd2be495a2332b5ec6830931f2f2.jpg', 'http://localhost:5000/images/9269cd2be495a2332b5ec6830931f2f2.jpg', '2023-01-12 13:49:49', '2023-01-12 09:01:05', NULL, NULL, '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('46446220-e750-4471-85dd-be2da0b6d1a0', '199211162015071001', 'pns', 'LALU ISNA SYAMSURI, S.STP', 'Sengkol Loteng', '1992-11-16', 'pegawai', 'Analis Pembinaan Pelaksanaan Anggaran [Fungsional Umum -]( 01-01-2021 )', NULL, '5 thn, 6 bln', '-', 'Diploma IV\r\nManajemen Sumber Daya Aparatur\r\nInstitut Pemerintahan Dalam Negeri\r\n( 2015 )', NULL, NULL, NULL, 29, 'pria', 'islam', '1 Oktober 2023', 2052, '02e9febf61129f67468ec4d5e2e7ddab.jpg', 'http://localhost:5000/images/02e9febf61129f67468ec4d5e2e7ddab.jpg', '2023-01-12 09:26:50', '2023-01-12 02:26:40', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('47de9b4f-b10c-482e-872e-ed83260bddcb', '197907122009012001', 'pns', 'TUTI ULYATIN, SE', 'Penede Gondor Lotim', '1979-07-12', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '11 thn,\r\n7 bln', '-', 'SMA-SMUN 4 ( 1997 )', NULL, NULL, NULL, 42, 'wanita', 'islam', 'Monday, April 1, 2024', 2032, '83066384aca2103da61e7736fdd11c39.jpg', 'http://localhost:5000/images/83066384aca2103da61e7736fdd11c39.jpg', '2023-01-12 09:26:50', '2023-01-12 04:38:43', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('4c571bc8-1b78-4fae-a0e2-8713512f950c', '197007272009011004', 'pns', 'LALU SURYANATA, SE, MM', 'Selong Lotim', '1970-07-27', 'kasubag', 'Kepala Sub Bidang Anggaran Sektor Sosial Ekonomi pada Bidang Anggaran\r\n[Struktural Jabatan Pengawas]\r\n( 06-10-2021 )', 'Anggaran - Sektor Sosial Ekonomi', '16 thn,\r\n0 bln', '-', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2015 )', NULL, NULL, NULL, 51, 'pria', 'islam', 'Tuesday, April 1, 2025', 2028, '5b753ae15f43037cc864c1cae11f9631.jpg', 'http://localhost:5000/images/5b753ae15f43037cc864c1cae11f9631.jpg', '2023-01-12 09:26:50', '2023-01-12 02:28:45', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('4d98ed64-3c47-43d2-a4da-f79955bd0539', '199211092014061002', NULL, 'KHAIRUL FALAH SUKMA HARYADI,S.IP,M.Ec.Dev', 'Anjani Lotim', '1991-11-09', 'pegawai', 'Analis Klasifikasi Barang [Fungsional Umum -] ( 01-01-2021 )', NULL, '08 thn, 04 bln', '-', 'Magister Ekonomika Pembangunan Universitas Gadjah Mada (2019}', NULL, NULL, NULL, 31, 'pria', 'islam', '1 Oktober 2026', 2049, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:42:18', '2023-01-13 02:42:18', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('4E68B8FC-D7F8-8C3D-6239-75278CB935BB', NULL, 'kontrak', 'L. Muhamad Fauzi Imansyah, SE.I', 'Mataram', '1993-02-01', 'pegawai', 'Tenaga Akuntansi', NULL, '- thn, - bln', NULL, 'Magister Ekonomi Universitas Islam Negeri Mataram(2021)', '910/39.a/BPKAD/2020', '006.02.00318.31-4', 'Bank NTB Syariah', 30, 'pria', 'islam', NULL, NULL, '6a77d8d44d819924caa49d4ef57abb2f.jpg', 'http://localhost:5000/images/6a77d8d44d819924caa49d4ef57abb2f.jpg', '2023-01-12 13:49:49', '2023-01-12 08:10:09', NULL, NULL, '79530810-bc72-4bcd-9d45-a9180151abf6'),
('4ffda328-f0a8-4193-86e0-8909cc4ba73a', '198003092005011007', 'pns', 'L. MALIK FIRMANSYAH', 'Mataram', '1980-03-09', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '16 thn,\r\n0 bln', '-', 'SMA A.3/Ilmu Sosial Smun 3( 1998 )', NULL, NULL, NULL, 41, 'pria', 'islam', 'Saturday, April 1, 2023', 2037, '78d6e18808d420f9d9165e7dc96663ec.jpg', 'http://localhost:5000/images/78d6e18808d420f9d9165e7dc96663ec.jpg', '2023-01-12 09:26:50', '2023-01-12 04:06:20', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('5037e6fb-affc-454b-aad6-304867cd028f', '196601211985032004', 'pns', 'ROESITA, S. IP', 'Lobar', '1966-01-21', 'pegawai', 'Analis Tata Usaha\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '27 thn,\r\n10 bln', '-', 'Sarjana Ilmu Pemerintahan Universitas 45( 2005 )', NULL, NULL, NULL, 55, 'pria', 'islam', '-', 2024, '16a85f71c8afe707fafa79cdab8899e8.jpg', 'http://localhost:5000/images/16a85f71c8afe707fafa79cdab8899e8.jpg', '2023-01-12 09:26:50', '2023-01-12 04:57:39', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('50730cfb-7e43-4bb4-bcef-36fcd7c903fe', '197710072007012015', 'pns', 'BAIQ NURFITRIAWATI, S.Sos', 'Balungadang Praya', '10/07/77', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '15 thn,\r\n0 bln', '-', 'Sarjana Ilmu Administrasi Universitas Nw( 2003 )', NULL, NULL, NULL, 44, 'wanita', 'islam', 'Tuesday, April 1, 2025', 2028, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 09:26:50', '2023-01-13 02:03:07', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('553139bf-dfdb-4a64-ba3e-5cc0e2ac6561', '197606302008011012', 'pns', 'M. RUSLI, SE', 'Mataram', '1976-06-30', 'kasubag', 'Kepala Sub Seksi Pengelolaan Kas pada UPTB Pelayanan dan Perbendaharaan BPKAD Provinsi NTB\r\n[Struktural Jabatan Pengawas]\r\n( 22-04-2021 )', 'UPTB Perbend - Seksi Pengelolaan Kas', '20 thn,\r\n3 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Pengembangan Sumber Daya Manusia Daerah ]\r\n( 2019 )', 'Sarjana Ekonomi Pembangunan Universitas Mataram ( 2000 )', NULL, NULL, NULL, 45, 'pria', 'islam', '-', 2034, 'b05518588c01563815359ed8d36428d4.jpg', 'http://localhost:5000/images/b05518588c01563815359ed8d36428d4.jpg', '2023-01-12 09:26:50', '2023-01-12 02:17:55', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('56915c8d-27b5-40b8-8da4-91c13ff2c1c5', '196312311996031019', 'pns', 'LIA AYU LESTARI, SE', 'Mataram', '0198-12-15', 'pegawai', 'Analis Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '10 thn,\r\n0 bln', 'Diklat Prajabatan Golongan III\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2012 )', 'Sarjana Ekonomi Akuntansi Universitas Mataram( 2007 )', NULL, NULL, NULL, 39, 'wanita', 'islam', 'Saturday, April 1, 2023', 2041, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 09:26:50', '2023-01-13 02:37:13', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('56D4EFF1-A491-B651-AFEB-332DCBAE910E', NULL, 'kontrak', 'Lalu Agus Hariyadi', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2024', '002.02.27048.41-3', 'Bank BSI Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('581e27e1-3b74-4953-a1fb-161cdc09fca0', '197112311993031031', 'pns', 'MUHAMMAD PAUZI, SE', 'Rempung, Lotim', '1971-12-31', 'kabag', 'Kepala UPTB Pelayanan Perbendaharaan [Struktural Jabatan Administrator] ( 06-02-2020 )', 'UPTB Perbendaharaan', '22 thn, 10 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2014 )', 'Sarjana Ilmu Ekonomi Studi Pembangunan Universitas Islam Al-Azhar ( 2002 )', NULL, NULL, NULL, 50, 'pria', 'islam', '-', 2031, '3d541fdcd68280c685b18e9a78d14767.jpg', 'http://localhost:5000/images/3d541fdcd68280c685b18e9a78d14767.jpg', '2023-01-12 05:11:12', '2023-01-12 05:11:12', '7972c67a-4415-4568-b76f-5a022dfac1f7', 'd0b1c422-fdb6-4c8f-99ca-70e4b909a700', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('5997eafb-994f-4a85-9b1f-8ddf8d9c2282', '197905032009011008', 'pns', 'DENY RAHARJA', 'Lotim', '1979-05-03', 'pegawai', 'Peng administrasi[Fungsional Umum -]( 04-09-2015 )', NULL, '17 thn,\r\n01 bln', '-', 'SMU IPA( 1998 )', NULL, NULL, NULL, 42, 'pria', 'islam', 'Tuesday, April 1, 2025', 2037, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 09:26:48', '2023-01-13 02:05:28', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('5a6a20a3-380b-42a3-a4db-53f95eb04ff8', '197209012007011022', 'pns', 'AHMADI', 'Mataram', '1972-09-01', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '21 thn,\r\n9 bln', '-', 'SMA A.2/Biologi SMA Nasional( 1992 )', NULL, NULL, NULL, 49, 'pria', 'islam', 'Saturday, April 1, 2023', 2031, '52864e6720c5ecd6e888ee862e903f25.jpg', 'http://localhost:5000/images/52864e6720c5ecd6e888ee862e903f25.jpg', '2023-01-12 09:26:50', '2023-01-12 02:48:59', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('5C691BBC-B3C8-23F1-6AE6-EAA2E5320761', NULL, 'kontrak', 'Ahnan Efendi', 'Semalang', '1988-06-05', 'pegawai', 'Tenaga Sopir', NULL, '10 thn, 0 bln', NULL, 'Ilmu Sosial SMAN 1 Kopang (2007)', '910/39.a/BPKAD/2020', '001.22.19133.10-1', 'Bank NTB Syariah', 34, 'pria', 'islam', NULL, NULL, '0780d2517af0adce7faa411f1a88a082.jpg', 'http://localhost:5000/images/0780d2517af0adce7faa411f1a88a082.jpg', '2023-01-12 13:49:49', '2023-01-12 09:07:56', NULL, NULL, '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('5d651a92-cf06-48f6-b2d7-6a95cddb15b8', '197803202009011002', 'pns', 'LALU AKHDIYAT ALIYANSAH, SE', 'Selong, Lotim', '1978-03-20', 'kasubag', 'Kepala Seksi Pengamanan Aset pada UPTB Balai Pemanfaatan dan Pengamanan Aset Daerah BPKAD Provinsi NTB [Struktural Jabatan Pengawas] ( 22-04-2021 )', 'UPTB Aset - Seksi Pengamanan Aset', '18 thn, 6 bln', '-', 'Sarjana Akuntansi Universitas Gajayana ( 2001 )', NULL, NULL, NULL, 43, 'pria', 'islam', '-', 2036, '7727118677555d8245fa76e91c18ce7d.jpg', 'http://localhost:5000/images/7727118677555d8245fa76e91c18ce7d.jpg', '2023-01-12 05:15:34', '2023-01-12 05:15:34', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('5e874ca1-8951-4bc4-9124-b1a85976d5cd', '198304132010012012', 'pns', 'EKA SINTALA DEWI ANJANI, SE,M.Ak', 'Mataram', '1983-04-13', 'kabag', 'Kepala Bidang Anggaran', 'Anggaran', '11 thn,\r\n0 bln', '-', 'Pasca Sarjana Akuntansi Universitas Mataram( 2015 )', NULL, NULL, NULL, 38, 'wanita', 'islam', 'Friday, April 1, 2022', 2041, 'c5c0af627ac33385fecb832f2462c9a4.jpg', 'http://localhost:5000/images/c5c0af627ac33385fecb832f2462c9a4.jpg', '2023-01-12 09:26:50', '2023-01-12 02:21:59', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('5f737740-35af-46c0-b2b3-61bae3081e2a', '197908302009011005', 'pns', 'LALU RUDI KURNIAWAN', 'Selong Lotim', '1979-08-30', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '16 thn,\r\n10 bln', '-', 'SMA A.4/Ilmu Bahasa SMUN 1( 1998 )', NULL, NULL, NULL, 42, 'pria', 'islam', 'Tuesday, April 1, 2025', 2039, '0e9af422987354ec2a516ef55cc60bd5.jpg', 'http://localhost:5000/images/0e9af422987354ec2a516ef55cc60bd5.jpg', '2023-01-12 09:26:50', '2023-01-12 04:13:27', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('5ff3f336-8e3d-4e2f-8ee2-0677f8549e3a', '197004132007011020', 'pns', 'M. SYAFII', 'Ampenan Mataram', '1970-04-13', 'pegawai', 'Penga dministrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '13 thn,\r\n0 bln', '-', 'SMA A.3/Ilmu Sosial Sma Nw( 1991 )', NULL, NULL, NULL, 51, 'pria', 'islam', 'Friday, April 1, 2022', 2042, '91396f32d2a96efe5f950d2c926e9703.jpg', 'http://localhost:5000/images/91396f32d2a96efe5f950d2c926e9703.jpg', '2023-01-12 09:26:50', '2023-01-12 03:40:23', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('60D36106-26E1-B444-05B0-915FF047EC34', NULL, 'kontrak', 'Ahmad Yadi', 'Sakra', '1984-10-10', 'pegawai', 'Tenaga Kebersihan', NULL, '10 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '002.22.20360.10-3', 'Bank NTB Syariah', 36, 'pria', 'islam', NULL, NULL, '8cea031197d1b76071255d0d2c6c9651.jpg', 'http://localhost:5000/images/8cea031197d1b76071255d0d2c6c9651.jpg', '2023-01-12 13:49:48', '2023-01-12 09:02:58', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('61b3fb53-e9ad-4006-afab-f6e2df1a343c', '197412102009011002', 'pns', 'BADRUL MUNIR, A.Md', 'Kr.Genteng Pagutan Mataram', '1974-12-10', 'pegawai', 'Pengadministrasi Keuangan\r\n[Fungsional Umum -]\r\n( 13-04-2017 )', NULL, '14 thn,\r\n9 bln', '-', 'Diploma III Manajemen Informatika-( 1900 )', NULL, NULL, NULL, 47, 'pria', 'islam', 'Tuesday, April 1, 2025', 2031, '42f941565e5cb87534dbbaa01e2f2acf.jpg', 'http://localhost:5000/images/42f941565e5cb87534dbbaa01e2f2acf.jpg', '2023-01-12 09:26:50', '2023-01-12 04:27:47', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('6328166a-076b-4a24-8eb2-9ae4df6a78f7', '198607252010011009', NULL, 'M. JULHAM RINALDI, S.Pt, M.Ak', 'Mataram', '1986-07-25', 'pegawai', 'Analis Keuangan [Fungsional Umum -] ( 01-01-2020 )', NULL, '12 thn, 03 bln', '-', 'Pasca Sarjana Magister Akuntansi Universitas Mataram ( 2018 )', NULL, NULL, NULL, 36, 'pria', 'islam', '-', 2039, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:26:39', '2023-01-13 02:26:39', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('65123669-FB80-E79A-FD87-EB4A4AD41F90', NULL, 'kontrak', 'Eky Galih Gunanda, S.Kom', 'Dasan Lekong', '1995-01-05', 'pegawai', 'Tenaga Teknologi & Informasi', NULL, '2 Thn, 5 bln', NULL, 'Sarjana Teknik Informatika STMIK Bumigora Mataram(2018)', '910/02/BPKAD/2030', '001.02.05828.31-9', 'Bank NTB Syariah', 28, 'pria', 'islam', NULL, NULL, 'c3459a1517b2aadeb70b4b17d94c4acc.jpg', 'http://localhost:5000/images/c3459a1517b2aadeb70b4b17d94c4acc.jpg', '2023-01-12 13:49:48', '2023-01-12 06:39:30', NULL, NULL, '988226b4-0cd4-4547-a218-25dd9c436520'),
('65385662-35A6-A12B-60C9-65B590B33207', NULL, 'kontrak', 'Rima Susmiati', 'Batuyang', '1990-06-06', 'pegawai', 'Tenaga Administrasi', NULL, '- thn, 0 bln', NULL, 'SMAN 1 Pringgabaya Ilmu Sosial', '910/39.a/BPKAD/2020', '001.22.19460.10-0', 'Bank NTB Syariah', 32, 'wanita', 'islam', NULL, NULL, 'bac78d0252970a77f35efee974a6ea39.jpg', 'http://localhost:5000/images/bac78d0252970a77f35efee974a6ea39.jpg', '2023-01-12 13:49:50', '2023-01-12 08:17:55', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736');
INSERT INTO `pegawai` (`id`, `nip`, `jenis_pegawai`, `name`, `tempat_lahir`, `tanggal_lahir`, `nama_jabatan`, `jabatan`, `initial_jabatan`, `masa_kerja_golongan`, `diklat`, `pendidikan`, `no_sk`, `no_rekening`, `nama_rekening`, `umur`, `jenis_kelamin`, `agama`, `kenaikan_pangkat`, `batas_pensiun`, `foto`, `url`, `createdAt`, `updatedAt`, `pangkatUuid`, `golonganUuid`, `bidangUuid`) VALUES
('665f2eac-a3df-4efb-b95f-45c1e6eb9bd8', '199410062015072001', 'pns', 'BAIQ AYUNINGSIH, S.STP, MM', 'Lotim', '1994-10-06', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 31-07-2019 )', NULL, '5 thn,\r\n6 bln', 'Pendidikan dan Pelatihan Prajabatan Golongan III (Diklat Prajab III)\r\n( - )\r\n[ Badan Pengembangan Sumberdaya Manusia ]\r\n( 2015 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2019 )', NULL, NULL, NULL, 27, 'wanita', 'islam', 'Saturday, April 1, 2023', 2045, '45b94bad2ee88951fbf4a0e7e636c695.jpg', 'http://localhost:5000/images/45b94bad2ee88951fbf4a0e7e636c695.jpg', '2023-01-12 09:26:50', '2023-01-12 04:09:24', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('6888715d-29ec-4d05-aa48-55a4f54b0088', '197411212008011008', 'pns', 'MUHAMMAD HAMDI, ST', 'Mataram', '1974-11-21', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 30-12-2016 )', NULL, '15 thn,\r\n9 bln', '-', 'Sarjana Teknik Sipil Universitas Mataram ( 2000 )', NULL, NULL, NULL, 47, 'pria', 'islam', 'Monday, April 1, 2024', 2037, 'dc70bf0581cfb089016d3d0e1c60689d.jpg', 'http://localhost:5000/images/dc70bf0581cfb089016d3d0e1c60689d.jpg', '2023-01-12 09:26:50', '2023-01-12 02:18:47', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('68b4cad3-74bf-4dfb-af87-4810b5a552cb', '197812272011012001', 'pns', 'SITI RAMLAH, SE, MM', 'Mataram', '1978-12-27', 'kasubag', 'Kepala Sub Bidang Evaluasi APBD Kabupaten/Kota Wilayah II pada Bidang Bina Dan Evaluasi Keuangan Kabupaten/Kota\n[Struktural Jabatan Pengawas]\n( 06-02-2020 )', 'BEKK - Evaluasi APBD Kab/Kota', '10 thn,\r\n0 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Pengembangan Sumber Daya Manusia Daerah ]\r\n( 2018 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2016 )', NULL, NULL, NULL, 43, 'wanita', 'islam', 'Friday, April 1, 2022', 2036, 'da6ade52c7f16e1945bc65a9a3f6fae9.jpg', 'http://localhost:5000/images/da6ade52c7f16e1945bc65a9a3f6fae9.jpg', '2023-01-12 09:26:50', '2023-01-12 04:07:12', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('6a06c5df-5927-4215-979c-d37fe4abcd00', '197312312007011082', 'pns', 'LL. HAMZAH, S.Sos', 'Sakra Lotim', '1973-12-31', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 16-11-2017 )', NULL, '15 thn,\r\n9 bln', '-', 'Sarjana Administrasi Negara Universitas Nahdlatul Wathan( 2005 )', NULL, NULL, NULL, 48, 'pria', 'islam', 'Tuesday, April 1, 2025', 2039, '4fd82eed20238017dce047d960de4681.jpg', 'http://localhost:5000/images/4fd82eed20238017dce047d960de4681.jpg', '2023-01-12 09:26:50', '2023-01-12 04:40:56', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('6a16e15f-f429-4b5a-8cdc-47beb5f49e92', '197408172008011023', 'pns', 'ABDUL WAHID', 'Mendagi Lobar', '1974-08-17', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '17 thn,\r\n0 bln', '-', 'SMA IPS SMU Paket C( 2003 )', NULL, NULL, NULL, 47, 'pria', 'islam', '1 Oktober 2023', 2040, '59631e6177ab3d66ee3e202668c79639.jpg', 'http://localhost:5000/images/59631e6177ab3d66ee3e202668c79639.jpg', '2023-01-12 09:26:48', '2023-01-12 06:18:20', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('6c48c042-a305-4800-8ab4-8c9c3684294f', '196312311996031019', 'pns', 'NILA TRISNA SYANTHI, SE', 'Lombok Timur', '1987-06-26', 'kasubag', 'Kepala Sub Bidang Penatausahaan dan Pembinaan BMD pada Bidang Pengelolaan Barang Milik Daerah\n[Struktural Jabatan Pengawas]\n( 11-03-2019 )', 'BMD - Penatausahaan dan Pembinaan BMD', '08 thn, 02 bln', 'Diklat Prajabatan Golongan III\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2014 )', 'Sarjana Akuntansi UNRAM( 2010 )', NULL, NULL, NULL, 35, 'wanita', 'islam', '1 April 2026', 2045, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 09:26:50', '2023-01-13 02:32:52', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('6ce42643-0cb7-47b9-ba08-ad42a420ad1e', '196912312009011007', 'pns', 'LALU NURUDIN HASIM', 'Langkek Bue Loteng', '1969-12-31', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '17 thn,\r\n8 bln', '-', 'SMA KejuruanTata Niaga SMEAN 1( 1987 )', NULL, NULL, NULL, 52, 'pria', 'islam', 'Tuesday, April 1, 2025', 2037, '8d3a51fdebd1c927c2df852d6c9ecdb6.jpg', 'http://localhost:5000/images/8d3a51fdebd1c927c2df852d6c9ecdb6.jpg', '2023-01-12 09:26:50', '2023-01-12 03:48:43', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('6f2fbf38-8650-4108-8a43-fd0078b4315f', '198308142010011002', 'pns', 'RIDWAN A. KADIR', 'Sesela Lobar', '1983-08-14', 'pegawai', 'Peng administrasi[Fungsional Umum -]( 03-02-2020 )', NULL, '16 thn,\r\n0 bln', '-', 'SMA IPS MA Nahdlatul Wathan Belencong( 2001 )', NULL, NULL, NULL, 38, 'pria', 'islam', 'Friday, April 1, 2022', 2043, '999cacf4ebde89d92b87cc34769583ae.jpg', 'http://localhost:5000/images/999cacf4ebde89d92b87cc34769583ae.jpg', '2023-01-12 09:26:50', '2023-01-12 04:54:24', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('7041acb5-1f4a-4611-9cfe-14be320b9cbf', '197801162009012003', 'pns', 'ASTUTI ZUBAITI, A.Md', 'Mataram', '1978-01-16', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '16 thn,\r\n0 bln', '-', 'Diploma III Manjemen Akuntansi Akademi Manajemen Mataram( 2001 )', NULL, NULL, NULL, 43, 'wanita', 'islam', 'Tuesday, April 1, 2025', 2026, '5354eccc0dcf67fe759650249a896600.jpg', 'http://localhost:5000/images/5354eccc0dcf67fe759650249a896600.jpg', '2023-01-12 09:26:50', '2023-01-12 04:39:30', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('71707d07-099c-4c31-997c-e56580bbe16d', '198012312008011022', 'pns', 'BASRI, S. Adm', 'Lombas', '1980-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '14 thn,\r\n9 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2017 )', NULL, NULL, NULL, 41, 'pria', 'islam', '1 Oktober 2023', 2029, 'a0d5b8d4d63fbe3ce770f6231e334da0.jpg', 'http://localhost:5000/images/a0d5b8d4d63fbe3ce770f6231e334da0.jpg', '2023-01-12 09:26:50', '2023-01-12 04:58:11', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('71d961cc-1cf6-4bb1-90dd-f43344e18abb', '198112132009011005', 'pns', 'KHAIRIL TARMIZI', 'Biletepung Lobar', '1981-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '16 thn,\r\n11 bln', '-', 'SMA IPS SMUN 1( 2001 )', NULL, NULL, NULL, 40, 'pria', 'islam', 'Tuesday, April 1, 2025', 2035, 'd867ba5646612e263642afd2ee86d96d.jpg', 'http://localhost:5000/images/d867ba5646612e263642afd2ee86d96d.jpg', '2023-01-12 09:26:50', '2023-01-12 04:30:47', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('7488eea6-9a0c-48cc-9e11-7edce5022d5b', '198102072009011001', 'pns', 'HERMAN', 'Kr. Mas-mas Mataram', '1981-02-07', 'pegawai', 'Pengemudi\r\n[Fungsional Umum -]\r\n( 20-01-2020 )', NULL, '16 thn,\r\n6 bln', '-', 'SMA\r\n-\r\n-\r\n( 1900 )', NULL, NULL, NULL, 40, 'pria', 'islam', 'Friday, April 1, 2022', 2028, 'd775c682d679df96ae70741dd6c063ee.jpg', 'http://localhost:5000/images/d775c682d679df96ae70741dd6c063ee.jpg', '2023-01-12 09:26:50', '2023-01-12 05:00:39', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('765125CD-3B2B-FED8-E913-F6E0B992A873', NULL, 'kontrak', 'Muhammad Adrian Maulana', 'Rempung', '2001-05-18', 'pegawai', 'Tenaga Akuntansi', NULL, '1 thn, 0 bln', NULL, 'Teknik Mesin SMKN 1 SELONG((2019)', '800/01/Perbend-P.Sbw/2020', '004.02.01200.27-0', 'Bank NTB Syariah', 21, 'pria', 'islam', NULL, NULL, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 13:49:49', '2023-01-12 08:15:45', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736'),
('76bcdeeb-5df2-4e65-b3a3-f9310f9522d9', '197103092010011002', 'pns', 'LALU MANAP GUNAWAN, SE', 'Praya Loteng', '1971-03-09', 'pegawai', 'Analis Barang Milik Daerah\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '16 thn,\r\n8 bln', '-', 'Sarjana Akuntansi STIE Jaya Negara( 1997 )', NULL, NULL, NULL, 50, 'pria', 'islam', 'Friday, April 1, 2022', 2029, '6ed96a7dd1e760b51491ed50db501675.jpg', 'http://localhost:5000/images/6ed96a7dd1e760b51491ed50db501675.jpg', '2023-01-12 09:26:50', '2023-01-12 04:14:45', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('7781e877-7ce9-479a-9df5-33fa37b55452', '197811242008011014', 'pns', 'ZAM ZAM PRAYADIGUNA', 'Kr.Genteng Pagutan Mataram', '1978-11-24', 'pegawai', 'Bendahara Penerimaan SKPD [Fungsional Umum -]( 01-01-2021 )', NULL, '20 thn,\r\n0 bln', '-', 'SMA IPS Madrasah Aliyah Negeri No.2( 1998 )', NULL, NULL, NULL, 43, 'pria', 'islam', 'Thursday, April 1, 2021', 2039, '02e046f555955b1ca6f4f0ba32bd6fc5.jpg', 'http://localhost:5000/images/02e046f555955b1ca6f4f0ba32bd6fc5.jpg', '2023-01-12 09:26:50', '2023-01-12 03:51:24', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('785D67DA-FAAB-B28A-9E49-8F7F931F7125', NULL, 'kontrak', 'Firman Satriawan', 'karang Kelong', '1990-08-29', 'pegawai', 'Tenaga Kebersihan', NULL, '5 thn, 0 bln', NULL, 'Teknik Kelistrikan SMKN 3 Mataram(2013)', '910/39.a/BPKAD/2020', '001.22.19462.10-9', 'Bank NTB Syariah', 32, 'pria', 'islam', NULL, NULL, '8dc35e2d8d57030dfb11c00950105f8c.jpg', 'http://localhost:5000/images/8dc35e2d8d57030dfb11c00950105f8c.jpg', '2023-01-12 13:49:48', '2023-01-12 08:58:26', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('7af4fd98-e8b3-4f63-9363-7da0da03833d', '197506232009011001', 'pns', 'LALU KURNIADI YUNIAR, S. Adm', 'Selong Lotim', '1975-06-23', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '11 thn,\r\n10 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Administrasi( 2007 )', NULL, NULL, NULL, 46, 'pria', 'islam', 'Monday, April 1, 2024', 2029, '1f54190bfa16971a6385e597ecadda1b.jpg', 'http://localhost:5000/images/1f54190bfa16971a6385e597ecadda1b.jpg', '2023-01-12 09:26:50', '2023-01-12 04:14:13', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('7c849372-d129-42e4-86b7-91000bc89d0e', '198102102005011010', 'pns', 'M. SYAMSUL HADI, SE', 'Rensing Lotim', '1981-02-10', 'kasubag', 'Kepala Sub Bagian Keuangan pada Sekretariat Badan Pengelolaan Keuangan dan Aset Daerah\n[Struktural Jabatan Pengawas]\n( 31-03-2017 )', 'Sekretariat - Keuangan', '16 thn,\r\n0 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2016 )', 'Sarjana Akuntansi Universitas Mataram( 2003 )', NULL, NULL, NULL, 40, 'pria', 'islam', '-', 2039, 'a05ce7eb35aabf526fc23c4f2b139ec7.jpg', 'http://localhost:5000/images/a05ce7eb35aabf526fc23c4f2b139ec7.jpg', '2023-01-12 09:26:50', '2023-01-12 04:24:10', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('7D7B8B92-3260-D71F-3444-6D3A2C3A3C24', NULL, 'kontrak', 'Adam Ramahdan Tayib Napis\r\n', '-', '-', 'pegawai', 'Tenaga Administrasi', NULL, '7 thn, 0 bln', NULL, '-', NULL, NULL, NULL, 0, 'pria', 'islam', NULL, NULL, 'a199c9170c6d864b1d34b756476d7138.jpg', 'http://localhost:5000/images/a199c9170c6d864b1d34b756476d7138.jpg', '2023-01-13 09:57:49', '2023-01-13 02:00:33', NULL, NULL, '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('7e609f16-3578-42c8-9abb-6ec441f465a9', '197312312007011114', NULL, 'L. MUHAMAD SIDIK,S.Adm', 'Kuripan', '1973-12-31', 'pegawai', 'Analis Rencana Program dan Kegiatan [Fungsional Umum -] ( 18-11-2022 )', NULL, '22 thn, 02 bln', '-', 'S1. Ilmu Pemerintahan ( 2018 )', NULL, NULL, NULL, 49, 'wanita', 'islam', '1 Oktober 2026', 2031, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:52:30', '2023-01-13 02:52:30', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('80f8cd54-1620-499d-b48e-d14b720172c9', '196912311989031039', NULL, 'Drs. ERVAN ANWAR, MM', 'Lotim', '1969-12-12', 'kabag', 'Kepala Bidang Pengelolaan Barang Milik Daerah [Struktural Jabatan Administrator] ( 06-10-2021 )', 'BMD', '28 thn, 0 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat III (Diklatpim Tk. III)\r\n( Diklat Pim.Tk.III )\r\n[ Badan DIKLAT ]\r\n( 2005 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram ( 2013 )', NULL, NULL, NULL, 53, 'pria', 'islam', '-', 2027, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:17:55', '2023-01-13 02:17:55', 'a65b2c45-0752-47e7-9425-46da8f40b992', '7d3eb832-db8e-4b53-8bdb-3045ead025b4', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('8167c563-ba98-4ac6-892c-c99b888049a9', '196612311993031137', 'pns', 'SAEFUDIN', 'Kenawa Loteng', '1966-12-31', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '22 thn,\r\n10 bln', '-', 'SMA IPA SMAN 1( 1988 )', NULL, NULL, NULL, 55, 'pria', 'islam', '-', 2034, '5edee54b5e8af4c02c3b6f857fd2e42a.jpg', 'http://localhost:5000/images/5edee54b5e8af4c02c3b6f857fd2e42a.jpg', '2023-01-12 09:26:50', '2023-01-12 04:11:07', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('8239053a-e8d2-420d-be90-6e554c489dbf', '196810191989021002', 'pns', 'LALU SATRIYAWIRYASANTANA', 'Lotim', '1971-09-27', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '17 thn,\r\n01 bln', '-', 'SMK\r\n-\r\n\r\n( 1993 )', NULL, NULL, NULL, 50, 'pria', 'islam', '-', 2035, 'e78ab5edc12d000ee2242204e6a744e1.jpg', NULL, '2023-01-12 09:26:48', '2023-01-12 09:26:48', NULL, NULL, NULL),
('84cd7026-426b-4a6f-ae23-3fe3ad9f62b5', '196408021991031007', 'pns', 'LALU ADRYAN SAPUTRAWAN', 'Sakra Lotim', '1985-01-21', 'pegawai', 'Pengolah Data pada Bidang Anggaran\r\n[Fungsional Umum -]\r\n( 06-04-2020 )', NULL, '16 thn,\r\n0 bln', '-', 'SMA Kejuruan\r\nMekanisasi Pertanian\r\nSMK Negeri I Sakra\r\n( 2002 )', NULL, NULL, NULL, 36, 'pria', 'islam', 'Saturday, April 1, 2023', 2032, 'e78ab5edc12d000ee2242204e6a744e1.jpg', NULL, '2023-01-12 09:26:48', '2023-01-12 09:26:48', NULL, NULL, NULL),
('867d2fa3-236c-470a-9f12-a33ce2f4b991', '198309302009011006', 'pns', 'HENDRA YANTO', 'Mataram', '1983-09-30', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '13 thn,\r\n0 bln', '-', 'SMA IPS Paket C( 2006 )', NULL, NULL, NULL, 38, 'pria', 'islam', 'Tuesday, April 1, 2025', 2037, 'c9ad5d9a368ac4464cc22bd2a824d49e.jpg', 'http://localhost:5000/images/c9ad5d9a368ac4464cc22bd2a824d49e.jpg', '2023-01-12 09:26:48', '2023-01-12 04:35:32', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('878ee9b2-84ee-4c97-b35b-a7758115462e', '197609041996032003', 'pns', 'SYAMSIAH', 'Utan Sumbawa', '1976-09-04', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 01-01-2019 )', NULL, '19 thn,\r\n10 bln', '-', 'SMA A.3/Ilmu Sosial Sma Muhamadiyah( 1995 )', NULL, NULL, NULL, 45, 'wanita', 'islam', '1 Oktober 2025', 2039, 'e66ffc2a9b3ad8bd670506d7f9245876.jpg', 'http://localhost:5000/images/e66ffc2a9b3ad8bd670506d7f9245876.jpg', '2023-01-12 09:26:50', '2023-01-12 04:59:38', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('88b20a05-ae3d-4840-82c4-964193229aae', '197904242009011004', 'pns', 'FAISAL RAHMAN, SE', 'Mataram', '1979-04-24', 'kasubag', 'Kepala Sub Bidang Akuntansi dan Pelaporan Sektor Ekonomi pada Bidang Akuntansi dan Pelaporan BPKAD Provinsi NTB [Struktural Jabatan Pengawas] ( 22-04-2021 )', 'Akuntansi - Sektor Ekonomi', '12 thn, 0 bln', '-', 'Sarjana Akuntansi Universitas Muhammadiyah ( 2003 )', NULL, NULL, NULL, 42, 'pria', 'islam', '-', 2037, '772b403c12e323e068dbeb08fce30690.jpg', 'http://localhost:5000/images/772b403c12e323e068dbeb08fce30690.jpg', '2023-01-12 05:13:10', '2023-01-12 05:13:10', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('8A590FCE-C8FD-ED0E-DC59-8B99C1DACFB6', NULL, 'kontrak', 'M. Zahdi, S.Pd', 'Rembiga', '1981-03-21', 'pegawai', 'Tenaga Keamanan', NULL, '6 thn, 0 bln', NULL, 'Sarjana Pendidikan Islam Institut Agama Islam Negeri Mataram(2007)', '910/39.a/BPKAD/2020', '001.22.19712.10-2', 'Bank NTB Syariah', 31, 'pria', 'islam', NULL, NULL, 'b8a6f36b9f05e6986e7772e29f88c763.jpg', 'http://localhost:5000/images/b8a6f36b9f05e6986e7772e29f88c763.jpg', '2023-01-12 13:49:48', '2023-01-13 01:55:51', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('8cdb1897-69db-46e3-a6a8-fa6d5417c710', '198302112010012003', 'pns', 'FATMAWATI', 'Teros Lotim', '1983-02-11', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '16 thn,\r\n10 bln', 'Diklat Prajabatan Golongan I dan II\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2011 )', 'SMA IPA SMUN 3( 2001 )', NULL, NULL, NULL, 38, 'wanita', 'islam', 'Friday, April 1, 2022', 2041, 'fe5844cc6addc81f31a540e963e02485.jpg', 'http://localhost:5000/images/fe5844cc6addc81f31a540e963e02485.jpg', '2023-01-12 09:26:50', '2023-01-12 04:15:31', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('8d059f98-c84c-43a2-8909-e95896091801', '197507272009011003', 'pns', 'AHMAD SURYADI, SE', 'Majeluk Mataram', '1975-07-27', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '12 thn,\r\n10 bln', '-', 'SMA Kejuruan Perkantoran SMEAN 1( 1994 )', NULL, NULL, NULL, 46, 'pria', 'islam', '1 Oktober 2023', 2042, '83992591f2c12709cc736ab91e067e9a.jpg', 'http://localhost:5000/images/83992591f2c12709cc736ab91e067e9a.jpg', '2023-01-12 09:26:50', '2023-01-12 04:48:55', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('8db5d19b-96d9-4e75-9bb6-fb02e849b260', '198103272010012003', 'pns', 'ZUHARIA MARDIYANTI, SE', 'Mataram', '1981-03-27', 'kasubag', 'Kepala Sub Bagian Tata Usaha pada UPTB Pelayanan dan Perbendaharaan BPKAD Provinsi NTB\r\n[Struktural Jabatan Pengawas]\r\n( 22-04-2021 )', 'UPTB Perbend - Tata Usaha', '16 thn,\r\n0 bln', '-', 'Sarjana Manajemen Keuangan Sekolah Tinggi Ilmu Ekonomi Malangkucecwara( 2004 )', NULL, NULL, NULL, 40, 'wanita', 'islam', 'Friday, April 1, 2022', 2039, '86365bb951c16a5ead683fdcee40fac4.jpg', 'http://localhost:5000/images/86365bb951c16a5ead683fdcee40fac4.jpg', '2023-01-12 09:26:50', '2023-01-12 04:36:44', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('8E1B9302-D64F-FFA0-E8D1-5A23D9254D14', NULL, 'kontrak', 'Priyatna Pratama Saputra', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/39.a/BPKAD/2020', '001.22.19472.10-4', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('94465513-4CCD-2C24-71C4-4959317716DD', NULL, 'kontrak', 'Sopian Hariadi', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2025', '002.02.27048.38-0', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('980deea6-393c-4969-9078-5fc11d1fd695', '197408122007012026', 'pns', 'SARIPATUN, SE', 'Utan Sumbawa', '1974-08-12', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 21-04-2016 )', NULL, '15 thn,\r\n9 bln', '-', 'Sarjana Akuntansi Sekolah Tinggi Ilmu Ekonomi Nasional ( 2014 )', NULL, NULL, NULL, 47, 'wanita', 'islam', 'Monday, April 1, 2024', 2030, '49e5c121fad9dd462a91a029ddc37947.jpg', 'http://localhost:5000/images/49e5c121fad9dd462a91a029ddc37947.jpg', '2023-01-12 09:26:50', '2023-01-12 02:14:38', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('984e03c1-a5b5-468d-8d52-7aa3a1c23ee2', '198103152006041013', 'pns', 'YUL HADIANSYAH, SE, MM', 'Bima', '1981-03-15', 'kasubag', 'Kepala Sub Bagian Program pada Sekretariat Badan Pengelolaan Keuangan Dan Aset Daerah\r\n[Struktural Jabatan Pengawas]\r\n( 06-02-2020 )', 'Sekretariat - Program', '14 thn,\r\n9 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Pengembangan Sumber Daya Manusia Daerah ]\r\n( 2018 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2011 )', NULL, NULL, NULL, 40, 'pria', 'islam', 'Friday, April 1, 2022', 2039, '845bda781462599e9e403b5a3caa6fca.jpg', 'http://localhost:5000/images/845bda781462599e9e403b5a3caa6fca.jpg', '2023-01-12 09:26:50', '2023-01-12 04:55:10', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '988226b4-0cd4-4547-a218-25dd9c436520'),
('9a376cac-006a-45cb-9635-f57f79896f66', '196912312008011013', 'pns', 'YE ALI, S.Sos', 'Lombok Timur', '1969-12-31', 'kasubag', 'Kepala Sub Bidang Rencana Kebutuhan dan Pengadaan BMD pada Bidang Pengelolaan Barang Milik Daerah\r\n[Struktural Jabatan Pengawas]\r\n( 22-04-2021 )', 'BMD - Rencana Kebutuhan dan Pengadaan', '13 thn,\r\n03 bln', 'Diklat Prajabatan Golongan II\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2009 )', 'Sarjana Ilmu Administrasi Negara STIA  Mataram( 1997 )', NULL, NULL, NULL, 52, 'pria', 'islam', 'Monday, April 1, 2024', 2044, 'c0ef07a67d82cd4481a120f495b87524.jpg', 'http://localhost:5000/images/c0ef07a67d82cd4481a120f495b87524.jpg', '2023-01-12 09:26:50', '2023-01-12 03:47:24', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('9A37E3E6-C73D-CD5B-BAFD-823B2A816580', NULL, 'kontrak', 'Khaerul Afryadi', '-', '-', 'pegawai', 'Tenaga Kebersihan', NULL, 'null', NULL, 'null', '910/39.a/BPKAD/2020', '001.22.19473.10-8', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 13:49:50', '2023-01-12 08:07:39', NULL, NULL, '79530810-bc72-4bcd-9d45-a9180151abf6'),
('9a9678cb-d538-48fc-9f33-2015ce335fab', '197210161996032005', 'pns', 'LALE RIA ARYANI, S.E', 'Tanjung KLU', '1972-10-16', 'kasubag', 'Kepala Sub Bidang Pengolahan Data Dan Pembinaan Keuangan Kabupaten/Kota pada Bidang Bina Dan Evaluasi Keuangan Kabupaten/Kota\r\n[Struktural Jabatan Pengawas]\r\n( 06-02-2020 )', 'BEKK - Pengolahan Data dan Pembinaan Keuangan', '22 thn,\r\n10 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2015 )', 'Sarjana Akuntansi STIA 45 Mataram( 1997 )', NULL, NULL, NULL, 49, 'wanita', 'islam', '-', 2030, '89878c45c9dd3662704ebe63540917bf.jpg', 'http://localhost:5000/images/89878c45c9dd3662704ebe63540917bf.jpg', '2023-01-12 09:26:50', '2023-01-12 04:02:29', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('9b2116a3-a1af-4c70-b9f7-5fd1f6021a31', '196507121994031013', 'pns', 'AHMAD PURQAN, SE.,M.AP', 'Lotim', '1965-07-12', 'kabag', 'Kepala Bidang Bina Dan Evaluasi Keuangan Kabupaten/Kota\r\n[Struktural Jabatan Administrator]\r\n( 04-05-2020 )', 'BEKK', '26 thn,\r\n10 bln', 'Pendidikan dan Latihan Kepemimpinan Tingkat III (Diklat PIM Tk. III)\r\n( Diklat Pim.Tk.III )\r\n[ Badan DIKLAT ]\r\n( 2005 )', 'Pasca Sarjana Magister Administrasi Publik Universitas Brawijaya( 2007 )', NULL, NULL, NULL, 56, 'pria', 'islam', '-', 2023, '85d5434015f10953305820a8794c1368.jpg', 'http://localhost:5000/images/85d5434015f10953305820a8794c1368.jpg', '2023-01-12 09:26:50', '2023-01-12 04:01:42', 'a65b2c45-0752-47e7-9425-46da8f40b992', '7d3eb832-db8e-4b53-8bdb-3045ead025b4', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('9b741d2e-6d73-45a5-837d-7d8294e2077c', '197604182007011012', 'pns', 'EDI SUPRAYANTO, S. Adm', 'Praya Loteng', '1976-04-18', 'pegawai', 'Pengadministrasi Umum\r\n[Fungsional Umum -]\r\n( 22-01-2018 )', NULL, '9 thn,\r\n0 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2011 )', NULL, NULL, NULL, 45, 'pria', 'islam', 'Thursday, April 1, 2021', 2026, '8141679af3a1f7901b21958ec0484524.jpg', 'http://localhost:5000/images/8141679af3a1f7901b21958ec0484524.jpg', '2023-01-12 09:26:50', '2023-01-12 04:52:22', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '988226b4-0cd4-4547-a218-25dd9c436520'),
('9d49e2e9-b570-4888-8e32-30288a1ba703', '198506242011011022', 'pns', 'M. GUNTUR, S.Pi', 'Mataram', '1985-06-24', 'pegawai', 'Pemeriksa Laporan dan Transaksi keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '10 thn,\r\n0 bln', '-', '-', NULL, NULL, NULL, 36, 'pria', 'islam', 'Monday, April 1, 2024', 2036, '71189c67438b421ddaf49b3f66419797.jpg', 'http://localhost:5000/images/71189c67438b421ddaf49b3f66419797.jpg', '2023-01-12 09:26:50', '2023-01-12 04:44:26', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('9e8d6eb4-695e-4558-8fe1-e2f92447b69d', '197406131994022001', 'pns', 'MISKAH, S. Adm', 'Karang Baru Mataram', '1974-06-13', 'pegawai', 'Analis Data Laporan Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '21 thn,\r\n11 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2009 )', NULL, NULL, NULL, 47, 'wanita', 'islam', 'Friday, April 1, 2022', 2032, '46cc36e679fc3402c7b150f67e3d4909.jpg', 'http://localhost:5000/images/46cc36e679fc3402c7b150f67e3d4909.jpg', '2023-01-12 09:26:50', '2023-01-12 04:28:30', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('9f65d23f-f1a3-41e6-8afb-64e052c61536', '197211072008011011', 'pns', 'HUSNUL PIKRI, S.Sos', 'Ranggagata', '1972-11-07', 'kasubag', 'Kepala Sub Bidang Pemeliharaan dan Penghapusan BMD pada Bidang Pengelolaan Barang Milik Daerah\n[Struktural Jabatan Pengawas]\n( 11-03-2019 )', 'BMD - Pemeliharaan dan Pengapusan', '18 thn,\r\n0 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2001 )', NULL, NULL, NULL, 49, 'pria', 'islam', '-', 2030, '589f60d5bd1d67a27ca82af05bdf6124.jpg', 'http://localhost:5000/images/589f60d5bd1d67a27ca82af05bdf6124.jpg', '2023-01-12 09:26:50', '2023-01-12 04:16:11', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('a0431486-e84f-4cbe-a159-db2ff0d59184', '196812312007011239', 'pns', 'MUSTIADI, S.AP', 'Sakra Lotim', '1968-12-31', 'pegawai', 'Fungsional Analis Kepegawaian Pelaksana Lanjutan\r\n[Fungsional Analis Kepegawaian Pelaksana Lanjutan]\r\n( 29-08-2017 )', NULL, '11 thn,\r\n7 bln', '-', 'Sarjana Administrasi Publik Stia Muhammadiyah( 2004 )', NULL, NULL, NULL, 53, 'pria', 'islam', '1 Oktober 2023', 2038, '9df9c68a59dd20d938d1eac3dd192f40.jpg', 'http://localhost:5000/images/9df9c68a59dd20d938d1eac3dd192f40.jpg', '2023-01-12 09:26:50', '2023-01-12 04:55:56', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('a463a36d-6fcd-427e-ac96-8bd45748016d', '196812312008011104', NULL, 'SAHDI, S. Sos', 'Batu Kembar', '1968-12-31', 'pegawai', 'Analis Data Laporan Keuangan [Fungsional Umum -] ( 01-01-2020 )', NULL, '18 thn, 5 bln', '-', 'Sarjana Ilmu Administrasi Negara STIA Mataram ( 1999 )', NULL, NULL, NULL, 54, 'pria', 'islam', '-', 2026, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:21:15', '2023-01-13 02:21:15', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('A8082AC3-6C3C-B55E-7FB3-560BBD332841', NULL, 'kontrak', 'Muhanim', 'Montong Rangah', '1988-09-12', 'pegawai', 'Tenaga Keamanan', NULL, '10 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19490.10-6', 'Bank NTB Syariah', 34, 'pria', 'islam', NULL, NULL, 'e857915fc7ab3346bd5f575267ab889e.jpg', 'http://localhost:5000/images/e857915fc7ab3346bd5f575267ab889e.jpg', '2023-01-12 13:49:48', '2023-01-12 08:28:54', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('a8810c13-968d-4ae2-b437-1d56cf754f35', '198604142011012010', 'pns', 'MELLINDA ASTRIA, ST', 'Mataram', '1986-04-14', 'pegawai', 'Analis Pengelola Kekayaan Daerah\r\n[Fungsional Umum]\r\n( 01-01-2020 )', NULL, '10 thn,\r\n0 bln', 'Diklat Prajabatan Golongan III\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2012 )', 'Sarjana Teknik Elektro Universitas Mataram( 2010 )', NULL, NULL, NULL, 35, 'wanita', 'islam', '1 Oktober 2024', 2037, 'cb646117f8629774d7af8179ee6e8dcf.jpg', 'http://localhost:5000/images/cb646117f8629774d7af8179ee6e8dcf.jpg', '2023-01-12 09:26:50', '2023-01-12 03:57:41', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('a8e6d5d0-561f-4cd0-84ff-27d723b82ab9', '199309132016091003', NULL, 'ADYATMA YUDHA SUBRATA, S.STP', 'Mataram', '1993-09-13', 'pegawai', 'Analis Perencanaan Program [Fungsional Umum -] ( 11-08-2022 )', NULL, '06 thn, 00 bln', '-', 'Diploma IV Pembangunan dan Pemberdayaan IPDN ( 2016 )', NULL, NULL, NULL, 29, 'pria', 'islam', '1 Oktober 2025', 2051, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:51:02', '2023-01-13 02:51:02', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('AB34A947-0939-D159-0AFF-26BFC9167F2C', NULL, 'kontrak', 'Sarjan', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/39.c/BPKAD/2020', '001.22.18142.10-4', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('ab672982-6b5b-4d88-8895-9fb49b937b27', '198609122005012002', 'pns', 'HAIRUNNISAH', 'Mataram', '1986-09-12', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '16 thn,\r\n0 bln', '-', 'S-1 Administrasi Negara STIA Mataram( 2020 )', NULL, NULL, NULL, 35, 'wanita', 'islam', 'Tuesday, April 1, 2025', 2044, '1cc814fd5d0b72d313c791194fe88e16.jpg', 'http://localhost:5000/images/1cc814fd5d0b72d313c791194fe88e16.jpg', '2023-01-12 09:26:50', '2023-01-12 03:52:07', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('AEDCEC2A-9070-7491-7439-E0825B73AC04', NULL, 'kontrak', 'Loly Marissa Pratami', 'Alas', '2000-03-20', 'pegawai', 'Tenaga Administrasi', NULL, '1 thn, 0 bln', NULL, 'SMAN 7 Mataram', '910/02/BPKAD/2027', '001.02.08344.27-0', 'Bank NTB Syariah', 21, 'wanita', 'islam', NULL, NULL, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 13:49:48', '2023-01-13 02:15:54', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736'),
('b0a2b823-0a52-46f9-98d4-76749fd3c968', '199305302016091002', 'pns', 'ALFATH ZULHIANSYAH,S.STP', 'Bima', '1993-05-30', 'pegawai', 'Analis Pajak/Retribusi Daerah\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '04 thn,\r\n01 bln', '-', 'Diploma IV Politik PemerintahanInstitut Pemerintahan Dalam Negeri( 2016 )', NULL, NULL, NULL, 28, 'pria', 'islam', 'Tuesday, April 1, 2025', 2036, 'aab6ea60d4ef2235780e4ba9e79a37f7.jpg', 'http://localhost:5000/images/aab6ea60d4ef2235780e4ba9e79a37f7.jpg', '2023-01-12 09:26:50', '2023-01-12 04:52:55', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '988226b4-0cd4-4547-a218-25dd9c436520'),
('b15ea471-9025-4620-9259-8ddd0a5252a6', '197012311989031014', 'pns', 'SOLIHIN', 'Mataram', '1970-12-31', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 30-12-2016 )', NULL, '24 thn,\r\n3 bln', '-', 'SMA A.3/Ilmu Sosial SMAN-2( 1991 )', NULL, NULL, NULL, 51, 'pria', 'islam', '-', 2024, '7ac835d795fdcc20974a8df4faab2eab.jpg', 'http://localhost:5000/images/7ac835d795fdcc20974a8df4faab2eab.jpg', '2023-01-12 09:26:50', '2023-01-12 04:29:16', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('b18b1365-f5b0-40b1-a421-5912ac39eb58', '196609151990031011', 'pns', 'MUHAMAD JUWAINI', 'Mataram', '1966-09-15', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '25 thn,\r\n10 bln', '-', 'SMA A.3/Ilmu Sosial Sman( 1985 )', NULL, NULL, NULL, 56, 'pria', 'islam', '-', 2024, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 09:26:50', '2023-01-13 02:39:41', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('B336A4B9-F533-607E-9A6B-6EEC8F843151', NULL, 'kontrak', 'Muhakiki', 'Taman', '1989-08-02', 'pegawai', 'Tenaga Teknik Mesin', NULL, '5 thn, 0 bln', NULL, 'Teknik Listrik Pemakaian SMKN 3 Mataram(2009)', '910/39.a/BPKAD/2020', '504.02.00186.31-4', 'Bank NTB Syariah', 33, 'pria', 'islam', NULL, NULL, '0a4c716180ba3abb7da4932a8de9131c.jpg', 'http://localhost:5000/images/0a4c716180ba3abb7da4932a8de9131c.jpg', '2023-01-12 13:49:48', '2023-01-12 09:04:19', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('b34d326c-c93b-4a4a-9507-52d15827db09', '198108292005012016', 'pns', 'AYU MULYATI, S.E. MM', 'Ampenan Mataram', '1981-08-29', 'kasubag', 'Kepala Sub Bidang Evaluasi APBD Kabupaten/Kota Wilayah I pada Bidang Bina Dan Evaluasi Keuangan Kabupaten/Kota\r\n[Struktural Jabatan Pengawas]\r\n( 06-02-2020 )', 'BEKK - Evaluasi APBD Kab/Kota', '16 thn,\r\n0 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2015 )', 'Pasca Sarjana Magister Manajemen Universitas Mataram( 2010 )', NULL, NULL, NULL, 40, 'wanita', 'islam', 'Tuesday, April 1, 2025', 2039, '6af40713015f4db7883b7e66e4619554.jpg', 'http://localhost:5000/images/6af40713015f4db7883b7e66e4619554.jpg', '2023-01-12 09:26:50', '2023-01-12 04:10:33', '7972c67a-4415-4568-b76f-5a022dfac1f7', 'd0b1c422-fdb6-4c8f-99ca-70e4b909a700', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('b34d9ea9-5f9d-4287-94d3-48ba7384b7c5', '197910172009012003', NULL, 'INDRA WAHYUNI, SE.,M.Ak', 'Mataram', '1979-10-17', 'kasubag', 'Kepala Sub Bidang Akuntansi dan Pelaporan Sektor Infrastruktur pada Bidang Akuntansi dan Pelaporan BPKAD Provinsi NTB [Struktural Jabatan Pengawas] ( 22-04-2021 )', 'Akuntansi - Sektor Infrastruktur', '12 thn, 03 bln', '-', 'Pasca Sarjana Magister Akuntansi Universitas Mataram ( 2015 )', NULL, NULL, NULL, 43, 'wanita', 'islam', '1 April 2025', 2037, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:24:16', '2023-01-13 02:24:16', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('b37d27f9-0df4-4150-9fbe-4763a3e8a60a', '198302112010012003', 'pns', 'FATMAWATI', 'Teros, Lotim', '1983-02-11', 'pegawai', 'Pengadministrasi [Fungsional Umum -] ( 04-09-2015 )', NULL, '16 thn, 10 bln', 'Diklat Prajabatan Golongan I dan II\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2011 )', 'SMA IPA SMUN 3 ( 2001 )', NULL, NULL, NULL, 38, 'wanita', 'islam', 'Friday, April 1, 2022', 2041, '2332d11a30c2c1d5fbe4826057daa5e0.jpg', 'http://localhost:5000/images/2332d11a30c2c1d5fbe4826057daa5e0.jpg', '2023-01-12 04:33:10', '2023-01-12 04:33:10', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('b6525d26-420f-43d3-8cd0-9558d8b4c449', '198106292010012004', NULL, 'NINA YUNI MARLISA, SE', 'Sidoarjo', '1981-06-29', 'pegawai', 'Kasubag Tata Usaha [Struktural -] ( 14-10-2022 )', NULL, '18 thn, 00 bln', '-', 'Sarjana Ekonomi Akuntansi Universitas Malang ( 2003 )', NULL, NULL, NULL, 41, 'wanita', 'islam', '-', 2039, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:28:36', '2023-01-13 02:28:36', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('b698608a-9cf5-46a6-bc6d-855b3a413197', '197212092008012010', 'pns', 'BAIQ WIRESARI, A.Md', 'Pengembur', '1972-12-09', 'pegawai', 'Peng administrasi Data [Fungsional Umum -]( 30-12-2016 )', NULL, '17 thn,\r\n0 bln', '-', 'Diploma III Manajemen Akuntansi Akademi Manajemen Mataram( 1994 )', NULL, NULL, NULL, 49, 'wanita', 'islam', 'Monday, April 1, 2024', 2036, '100985f2e09c9429ac014121ae5cda80.jpg', 'http://localhost:5000/images/100985f2e09c9429ac014121ae5cda80.jpg', '2023-01-12 09:26:50', '2023-01-12 02:20:38', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('B70203D0-6253-43B0-D1F6-8CD0B102EEBA', NULL, 'kontrak', 'Sukriawan', 'Lombas Dasan Baru', '1983-10-04', 'pegawai', 'Tenaga Keamanan', NULL, '15 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19476.10-1', 'Bank NTB Syariah', 47, 'pria', 'islam', NULL, NULL, '52a976163d22633a427e6a72c631d25f.jpg', 'http://localhost:5000/images/52a976163d22633a427e6a72c631d25f.jpg', '2023-01-12 13:49:48', '2023-01-12 08:26:44', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('B9A2D28E-4FBB-ACF6-0557-9F5B2F73C027', NULL, 'kontrak', 'Ahmad Nadji, S.Kom', 'Makkah', '1992-07-17', 'pegawai', 'Operator Komputer', NULL, '7 thn, 0 bln', NULL, 'Sarjana Teknik Informatika STMIK Bumigora(2016)', '910/39.a/BPKAD/2020', '001.22.19738.10-6', 'Bank NTB Syariah', 31, 'pria', 'islam', NULL, NULL, '2f6f60e1d442b6886c696542c28cf3b3.jpg', 'http://localhost:5000/images/2f6f60e1d442b6886c696542c28cf3b3.jpg', '2023-01-12 13:49:50', '2023-01-12 06:42:01', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('BA83835E-D931-178F-F458-9C82CE20A9BE', NULL, 'kontrak', 'Hendriyanto', '-', '-', 'pegawai', 'Tenaga Keamanan', NULL, '10 thn, 0 bln', NULL, '0', '910/39.a/BPKAD/2020', '001.22.19457.10-4', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, '5bdcb40ed94fab782fcf9b886a6f9d92.jpg', 'http://localhost:5000/images/5bdcb40ed94fab782fcf9b886a6f9d92.jpg', '2023-01-12 13:49:48', '2023-01-12 09:01:47', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('bab0dc74-8a95-4da6-8712-7b9dd3b9ae5b', '198103202005011011', 'pns', 'MUHAMMAD FATONI, S.Sos', 'Mataram', '1981-03-20', 'pegawai', 'Bendahara Pengeluaran SKPKD\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', NULL, '8 thn,\r\n9 bln', '-', 'Sarjana Administrasi Negara( 2013 )', NULL, NULL, NULL, 40, 'pria', 'islam', '1 Oktober 2022', 2050, 'dd8f3f1eeed5b2b9b7d0b6f0ea331231.jpg', 'http://localhost:5000/images/dd8f3f1eeed5b2b9b7d0b6f0ea331231.jpg', '2023-01-12 09:26:50', '2023-01-12 04:27:09', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('BB29BDD8-9129-694F-9B09-B21906B622BA', NULL, 'kontrak', 'Helza Luvia Hendriani', 'Kebumen', '2000-02-13', 'pegawai', 'Tenaga Administrasi', NULL, '1 thn, 6 bln', NULL, 'SMA 1 IPS Negeri Sumbawa', '910/02/BPKAD/2023', '7150469095', 'Bank BSI Syariah', 21, 'wanita', 'islam', NULL, NULL, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 13:49:48', '2023-01-13 02:09:14', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736'),
('bc408b69-592d-44dc-84e0-7dee3ab60685', '197601312009011001', 'pns', 'SYARIFUDDIN ASMAYA, A.Md', 'Mataram', '1976-01-31', 'pegawai', 'Operator Komputer pada UPTB Pemanfaatan dan Pengamanan Aset Daerah\r\n[Fungsional Umum -]\r\n( 16-11-2017 )', NULL, '15 thn,\r\n4 bln', '-', 'Diploma III Teknik Informatika( 1900 )', NULL, NULL, NULL, 45, 'pria', 'islam', '1 Oktober 2023', 2029, 'a2e1ed1dcf5510044e6d03e455997a77.jpg', 'http://localhost:5000/images/a2e1ed1dcf5510044e6d03e455997a77.jpg', '2023-01-12 09:26:50', '2023-01-12 03:53:42', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('BCD62B03-F8F0-1EA3-7FDC-CC9CC8470718', NULL, 'kontrak', 'Lalu Satria Efendi', '-', '-', 'pegawai', 'Tenaga Kebersihan', NULL, '10 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19471.10-1', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, '7ffb29aaaf47e41e768ac8f33e8ae089.jpg', 'http://localhost:5000/images/7ffb29aaaf47e41e768ac8f33e8ae089.jpg', '2023-01-12 13:49:49', '2023-01-12 08:22:56', NULL, NULL, '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('C28F5DB3-6E64-C5F2-0B56-B4B1EA926BB0', NULL, 'kontrak', 'Sugia Ayu Febriani', 'Mataram', '1998-02-24', 'pegawai', 'Operator Komputer', NULL, '4 thn, 0 bln', NULL, 'SMK Administrasi Perkantoran SMA 1 Mataram (2016)', '910/39.a/BPKAD/2020', '001.02.00168.31-6', 'Bank NTB Syariah', 24, 'wanita', 'islam', NULL, NULL, 'f1834909714026bdffee037536516138.jpg', 'http://localhost:5000/images/f1834909714026bdffee037536516138.jpg', '2023-01-12 13:49:50', '2023-01-12 06:27:59', NULL, NULL, '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('c39cc373-897b-4976-84b7-557a144b8e3e', '197711032010011001', 'pns', 'RIZQI HERMAWAN, SE', 'Lawang Malang', '0197-11-03', 'kasubag', 'Kepala Seksi Pengeluaran Kas pada UPTB Pelayanan dan Perbendaharaan BPKAD Provinsi NTB\r\n[Struktural Jabatan Pengawas]\r\n( 22-04-2021 )', 'UPTB Perbend - Pengeluaran Kas', '16 thn,\r\n5 bln', '-', 'Sarjana Ekonomi Akuntansi Universitas Widya Gama( 2002 )', NULL, NULL, NULL, 44, 'pria', 'islam', 'Friday, April 1, 2022', 2035, 'e9f6a49c7512229febc5ad7d94f4d851.jpg', 'http://localhost:5000/images/e9f6a49c7512229febc5ad7d94f4d851.jpg', '2023-01-12 09:26:50', '2023-01-12 04:47:37', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('c4465429-a15c-4941-97aa-1583637ee4cc', '197105212008011003', 'pns', 'SARDI, S. Adm', 'Kopang Loteng', '1971-05-21', 'pegawai', 'Penga dministrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '13 thn,\r\n6 bln', '-', 'SMA A.4/Ilmu Bahasa SMAN 1( 1989 )', NULL, NULL, NULL, 50, 'pria', 'islam', '1 Oktober 2023', 2033, '94a808a2c0c1708e76b5838b0b6729fb.jpg', 'http://localhost:5000/images/94a808a2c0c1708e76b5838b0b6729fb.jpg', '2023-01-12 09:26:50', '2023-01-12 04:08:37', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('c6cb5fba-294b-441f-8207-1d317169f1f5', '198401152008011003', 'pns', 'I WAYAN BAGUS METU, SE', 'Mataram', '1984-01-15', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '13 thn,\r\n5 bln', '-', 'Sarjana\r\nAkuntansi\r\nSTIE 45 Mataram\r\n( 2016 )', NULL, NULL, NULL, 37, 'pria', 'islam', '1 Oktober 2023', 2034, 'fb7d5f152886690548c9bebe8e6c7529.jpg', 'http://localhost:5000/images/fb7d5f152886690548c9bebe8e6c7529.jpg', '2023-01-12 09:26:50', '2023-01-12 02:10:20', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('cbbaf059-9226-4134-a409-3f54c277aa83', '197304052008011021', 'pns', 'AHMAD ISNAINI', 'Karang Bata', '1973-04-05', 'pegawai', 'Penga dministrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '20 thn,\r\n0 bln', '-', 'SMA A.4/Ilmu Bahasa SMAN 2( 1992 )', NULL, NULL, NULL, 48, 'pria', 'islam', 'Monday, April 1, 2024', 2028, '640f6422939ea9ac00e8399ffdc31ac0.jpg', 'http://localhost:5000/images/640f6422939ea9ac00e8399ffdc31ac0.jpg', '2023-01-12 09:26:50', '2023-01-12 03:43:03', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '5f187f13-c645-4ccd-b027-ac85e56e9f54'),
('CDB3A82C-46E3-FFA4-8565-E2812017F5EE', NULL, 'kontrak', 'Marhaeni', 'Gegutu Reban', '1981-04-21', 'pegawai', 'Tenaga Akuntansi', NULL, '- thn, - bln', NULL, 'SMKN 2 Mataram', '814/ 125 /BKD/2020', '001.22.08987.02-5', 'Bank NTB Syariah', 42, 'wanita', 'islam', NULL, NULL, '4c0a1f711fcd51a0b68d08a00312f806.jpg', 'http://localhost:5000/images/4c0a1f711fcd51a0b68d08a00312f806.jpg', '2023-01-12 13:49:50', '2023-01-12 08:02:07', NULL, NULL, '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('CDCA1760-242A-358E-741E-46598CD1A631', NULL, 'kontrak', 'Alfan Darma Wanda', 'Pajangan', '1998-11-11', 'pegawai', 'Tenaga Kebersihan', NULL, '5 thn, 0 bln', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19474.10-2', 'Bank NTB Syariah', 24, 'pria', 'islam', NULL, NULL, '824e7ff8b99e17c0ba12dfd9382cf180.jpg', 'http://localhost:5000/images/824e7ff8b99e17c0ba12dfd9382cf180.jpg', '2023-01-12 13:49:49', '2023-01-12 08:53:30', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('ce9e2e55-782e-49c4-ba12-5d7dc688ff9c', '197909042011011002', 'pns', 'SOFIAN HADI, S. Kom', 'Mataram', '1979-09-04', 'kasubag', 'Kepala Sub Bidang Anggaran Sektor Infrastruktur pada Bidang Anggaran\r\n[Struktural Jabatan Pengawas]\r\n( 06-02-2020 )', 'Anggaran - sektor Infrastruktur', '10 thn,\r\n0 bln', 'Diklat Prajabatan Golongan III\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2012 )', 'SarjanaTeknik Informatika STMIK Bumigora Mataram( 2006 ) ', NULL, NULL, NULL, 42, 'pria', 'islam', 'Tuesday, April 1, 2025', 2033, '5a74d01d8d4a3357878d302b4e7f68a6.jpg', 'http://localhost:5000/images/5a74d01d8d4a3357878d302b4e7f68a6.jpg', '2023-01-12 09:26:50', '2023-01-12 02:24:44', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('cf65776e-e044-4811-8c89-ccc8b4b4b8d9', '197205152008011015', 'pns', 'LUK LUK IL MARJAN', 'Mataram', '1972-05-15', 'pegawai', 'Pengadministrasi pada UPTB Unit Pengelola Islamic Center\r\n[Fungsional Umum -]\r\n( 29-08-2017 )', NULL, '19 thn,\r\n0 bln', '-', 'SMA A.2/Biologi Sma Muhammadiyah( 1991 )', NULL, NULL, NULL, 49, 'pria', 'islam', 'Monday, April 1, 2024', 2036, '15590ac88e383ca52ed98888fe718295.jpg', 'http://localhost:5000/images/15590ac88e383ca52ed98888fe718295.jpg', '2023-01-12 09:26:50', '2023-01-12 03:49:23', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('CFFD88FD-92E9-F829-A8AA-DF7DF27F0347', NULL, 'kontrak', 'Mely Aulia Yuliardini, A.Md', '-', '-', 'pegawai', 'Tenaga Administrasi', NULL, 'null', NULL, 'null', '910/39.a/BPKAD/2020', '001.22.19514.10-8', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, 'ef96ab7d000acdebec0d58a73a69a231.jpg', 'http://localhost:5000/images/ef96ab7d000acdebec0d58a73a69a231.jpg', '2023-01-12 13:49:50', '2023-01-12 08:05:24', NULL, NULL, '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('d0afbd74-c006-4240-96df-d1f1a430a025', '199709192018082001', NULL, 'BQ. NURUL AZIZA KAMAL, S.IP', 'Loteng', '1997-09-19', 'pegawai', 'Analis Pemeriksa Anggaran [Fungsional Umum -] ( 01-01-2021 )', NULL, '04 thn, 02 bln', '-', 'S1. Ilmu Pemerintahan - - ( 2018 )', NULL, NULL, NULL, 25, 'wanita', 'islam', '1 Oktober 2026', 2055, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-13 02:54:15', '2023-01-13 02:54:15', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('d1f9a0c5-87fd-48ec-ae69-cea82516eab4', '197612312008011032', 'pns', 'KARYANO', 'Kr. Pande', '1976-12-31', 'pegawai', 'Operator Komputer\r\n[Fungsional Umum -]\r\n( 13-04-2017 )', NULL, '19 thn,\r\n0 bln', '-', 'SMA IPS Sman Cakranegara ( 1995 )', NULL, NULL, NULL, 45, 'pria', 'islam', 'Monday, April 1, 2024', 2040, '85c2fdf3c83a0992110ef1e2c94acfd1.jpg', 'http://localhost:5000/images/85c2fdf3c83a0992110ef1e2c94acfd1.jpg', '2023-01-12 09:26:50', '2023-01-12 05:08:47', 'b58eb1f4-55a4-4cae-9709-b50565c2a073', '9fd0fb38-c19d-43f7-8955-b09a95de1506', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('d2d9d80c-50d9-43ec-8b9f-dbfca533c043', '198412312009011015', 'pns', 'HANAPI, SE', 'Medana Lotim', '1984-12-31', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 04-09-2015 )', NULL, '11 thn,\r\n6 bln', '-', 'Sarjana Ekonomi Pembangunan UNIZAR( 2017 )', NULL, NULL, NULL, 37, 'pria', 'islam', '1 Oktober 2023', 2039, 'b6a3ab5cb3f4649bcd097d40c65330c2.jpg', 'http://localhost:5000/images/b6a3ab5cb3f4649bcd097d40c65330c2.jpg', '2023-01-12 09:26:50', '2023-01-12 04:23:14', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', 'f60b5439-5d63-4c1e-8f28-9e4940619244');
INSERT INTO `pegawai` (`id`, `nip`, `jenis_pegawai`, `name`, `tempat_lahir`, `tanggal_lahir`, `nama_jabatan`, `jabatan`, `initial_jabatan`, `masa_kerja_golongan`, `diklat`, `pendidikan`, `no_sk`, `no_rekening`, `nama_rekening`, `umur`, `jenis_kelamin`, `agama`, `kenaikan_pangkat`, `batas_pensiun`, `foto`, `url`, `createdAt`, `updatedAt`, `pangkatUuid`, `golonganUuid`, `bidangUuid`) VALUES
('d4083345-4668-4c06-a6b3-9febb68d2aff', '197001091990032003', 'pns', 'ENDANG WAHYUNINGSIH, S. Adm', 'Semarang', '1970-01-09', 'kasubag', 'Bendahara Pengeluaran Pembantu pada UPTB Balai Pemanfaatan Dan Pengamanan Aset Daerah\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', 'UPTB Aset - Bendahara Pengeluaran', '25 thn,\r\n10 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Ilmu Administrasi( 2008 )', NULL, NULL, NULL, 51, 'wanita', 'islam', '-', 2028, 'eadba297872ba40155e69b605595f35d.jpg', 'http://localhost:5000/images/eadba297872ba40155e69b605595f35d.jpg', '2023-01-12 09:26:50', '2023-01-12 03:56:00', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('d49d5f28-13c8-44cc-9af3-e59966894557', '197005252007011035', 'pns', 'SUHERMAN MAHILI, SH', 'Mataram', '1970-05-25', 'pegawai', 'Pengolah Data\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '14 thn,\r\n0 bln', '-', 'Sarjana Ilmu Hukum Universitas 45( 2002 )', NULL, NULL, NULL, 51, 'pria', 'islam', 'Tuesday, April 1, 2025', 2042, '852d5249220d16d1964d3cefba44926a.jpg', 'http://localhost:5000/images/852d5249220d16d1964d3cefba44926a.jpg', '2023-01-12 09:26:50', '2023-01-12 05:01:27', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '79530810-bc72-4bcd-9d45-a9180151abf6'),
('D83B170F-5720-E76C-8FDB-FC36F258ED1A', NULL, 'kontrak', 'Windawati, SE', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/11/BPKAD/2020', '006.22.14431.10-1', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:49', '2023-01-12 13:49:49', NULL, NULL, NULL),
('DA6CC609-0A9A-468B-83E2-9ED9E852B531', NULL, 'kontrak', 'Lalu Arsani Aryadi, S.IP', 'Selong', '1988-10-30', 'pegawai', 'Operator Komputer', NULL, '7 Thn, 0 bln', NULL, 'Sarjana Ilmu Sosial dan Politik Universitas Muhammadiyah Yogyakarta(2011)', '910/39.a/BPKAD/2020', '001.22.19737.10-2', 'Bank NTB Syariah', 34, 'pria', 'islam', NULL, NULL, '3e780b2d453b79aa88a036e77488d8ea.jpg', 'http://localhost:5000/images/3e780b2d453b79aa88a036e77488d8ea.jpg', '2023-01-12 13:49:50', '2023-01-12 06:38:00', NULL, NULL, '988226b4-0cd4-4547-a218-25dd9c436520'),
('dc2f1113-141d-4ed8-ad73-ca7db6e70476', '198606162011011010', 'pns', 'YUDDA SANCOKO, A.Md', 'Mataram', '1986-06-16', 'pegawai', 'Penyusun Rencana Kegiatan dan Anggaran [Fungsional Umum -]( 01-01-2021 )', NULL, '08 thn,\r\n03 bln', 'Diklat Prajabatan Golongan I dan II\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan Provinsi NTB ]\r\n( 2012 )', 'Diploma III Manajemen Informatika AMIKOM Mataram( 2009 )', NULL, NULL, NULL, 35, 'pria', 'islam', 'Saturday, April 1, 2023', 2030, '41014b78539299c971836edef01537bf.jpg', 'http://localhost:5000/images/41014b78539299c971836edef01537bf.jpg', '2023-01-12 09:26:50', '2023-01-12 03:44:25', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '988226b4-0cd4-4547-a218-25dd9c436520'),
('de8657ea-968a-4b67-95f5-db2a7baa2cb9', '197101081994022002', 'pns', 'YUSTINA SULISTYANINGRUM, S.Adm', 'Purwarejo', '1971-01-08', 'pegawai', 'Analis Data Laporan Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '21 thn,\r\n11 bln', '-', 'Sarjana Ilmu Administrasi STIA Mataram ( 2008 )', NULL, NULL, NULL, 50, 'wanita', 'islam', '-', 2029, '420dc178ecd0e6e7f757412b23e97820.jpg', 'http://localhost:5000/images/420dc178ecd0e6e7f757412b23e97820.jpg', '2023-01-12 09:26:50', '2023-01-12 02:13:36', 'bb42d0b6-bdd4-428c-b094-4c964f9fb288', '262834f6-d889-4631-8559-c90779bd00b7', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('e016e40f-e624-4207-8fb9-bdc5dc1b7977', '198406272010012004', 'pns', 'ERIKA YUNIAR', 'Mataram', '1984-06-27', 'pegawai', 'Peng administrasi [Fungsional Umum -]( 29-09-2016 )', NULL, '16 thn,\r\n9 bln', 'Penatausahaan Keuangan Daerah\r\n( - )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2014 )', 'SMA IPS SMU Negeri 2( 2001 )', NULL, NULL, NULL, 37, 'wanita', 'islam', 'Friday, April 1, 2022', 2043, '89c0b2c3ffe1917d21dbe0efa4ee4e80.jpg', 'http://localhost:5000/images/89c0b2c3ffe1917d21dbe0efa4ee4e80.jpg', '2023-01-12 09:26:50', '2023-01-12 04:25:19', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', 'f60b5439-5d63-4c1e-8f28-9e4940619244'),
('E158AAE5-310B-C451-51A2-BF6BE4D7CAA2', NULL, 'kontrak', 'Saripudin', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/39.a/BPKAD/2020', '001.22.19475.10-6', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:49', '2023-01-12 13:49:49', NULL, NULL, NULL),
('E23E1263-2A6F-DAED-AD1F-0D8031792FA2', NULL, 'kontrak', 'Larisa Shafa Fairuz', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2031', '001.02.11200.27-0', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('E2ADB061-5E66-BE4D-3751-CB27C139935D', NULL, 'kontrak', 'Asteria Ewinda Pratiwi Azhar, S.Pd', 'Narmada', '1994-06-21', 'pegawai', 'Tenaga Administrasi', NULL, '5 Thn, 0 Bln', NULL, 'Sarjana pendidikan', '910/39.a/BPKAD/2020', '001.22.19732.1-02', 'Bank NTB Syariah', 29, 'wanita', 'islam', NULL, NULL, '491661266a2a33dc78a48ce6f74dea0f.jpg', 'http://localhost:5000/images/491661266a2a33dc78a48ce6f74dea0f.jpg', '2023-01-12 13:49:50', '2023-01-12 06:17:52', NULL, NULL, 'e2c0325b-1ecb-453d-992a-37ddfeaff82d'),
('E5D21E0C-4AB7-D3AD-2610-B21B19EC1291', NULL, 'kontrak', 'Sinanggi Eka Ismayanti, SE', 'Mataram', '1993-06-11', 'pegawai', 'Tenaga Akuntansi', NULL, '- thn, - bln', NULL, 'Sarjana Ekonomi STIE AMM(2015)', '910/11/BPKAD/2020', '001.22.63062.10-4', 'Bank NTB Syariah', 30, 'wanita', 'islam', NULL, NULL, 'b69cdb6fd5640592268681f2ecccaa22.jpg', 'http://localhost:5000/images/b69cdb6fd5640592268681f2ecccaa22.jpg', '2023-01-12 13:49:49', '2023-01-12 08:17:35', NULL, NULL, '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('E9AF8A4A-F07A-51CE-078E-EFBF9440471E', NULL, 'kontrak', 'Septarian Widiasari, SE', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/11/BPKAD/2020', '006.22.14428.10-3', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:49', '2023-01-12 13:49:49', NULL, NULL, NULL),
('ECC0E6A4-A1B3-4537-82CE-67F670F63300', NULL, 'kontrak', 'Azmi Syakirin', '-', '-', 'pegawai', 'null', NULL, 'null', NULL, 'null', '910/02/BPKAD/2022', '001.02.01063.31-1', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 13:49:48', '2023-01-13 02:04:15', NULL, NULL, 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('ED5B4BB7-9FE9-A569-82CD-CB834B7A1B8D', NULL, 'kontrak', 'Ahmad Jaelani', 'Sayang - Sayang', '1996-02-24', 'pegawai', 'Tenaga Kebersihan ', NULL, '0 thn, 0 bln', NULL, '-', '910/39.b/BPKAD/2020', '001.02.89008.27-3', 'Bank NTB Syariah', 27, 'pria', 'islam', NULL, NULL, '09c560e1b4afc751b9916fac5e7f1e6e.jpg', 'http://localhost:5000/images/09c560e1b4afc751b9916fac5e7f1e6e.jpg', '2023-01-12 13:49:48', '2023-01-12 08:20:52', NULL, NULL, '454adcee-d791-40dc-adb5-bf4d029e7736'),
('ede06aba-731b-40a9-a1d3-47289f1d193d', '198401312008011004', 'pns', 'IDA BAGUS PUTU BANJAR KENITEN, SE', 'Mataram', '1984-01-31', 'pegawai', 'Peng administrasi[Fungsional Umum -]( 04-09-2015 )', NULL, '13 thn,\r\n5 bln', '-', 'Sarjana Akuntansi STIE 45( 2008 )', NULL, NULL, NULL, 37, 'pria', 'hindu', 'Monday, April 1, 2024', 2032, '9a7926de5f7c1a386709f7b99a6bb3ea.jpg', 'http://localhost:5000/images/9a7926de5f7c1a386709f7b99a6bb3ea.jpg', '2023-01-12 09:26:50', '2023-01-12 04:45:47', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('efb17482-abfe-4824-a754-28e7c55c1174', '197609112008011012', NULL, 'FAIZ, S.Sos', 'Bima', '1976-09-11', 'pegawai', 'Penyusun Rencana Kegiatan dan Anggaran [Fungsional Umum -] ( 01-01-2021 )', NULL, '15 thn, 08 bln', '-', 'Sarjana Ilmu Sosial Universitas NW ( 2005 )', NULL, NULL, NULL, 46, 'pria', 'islam', '1 April 2024', 2034, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-13 02:48:57', '2023-01-13 02:48:57', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'c639a8a5-9159-4c17-9b59-427865c6b4ed'),
('F0621527-EFDE-A5D5-84F9-C2D9AA7D2BE0', NULL, 'kontrak', 'Meidy Gumi Chalika, S.kom', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2032', '1610031519957', 'Bank Mandiri', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('f1b64d78-12aa-4090-bb20-a50532151a09', '197409202007011015', 'pns', 'MUHSININ, S. Adm', 'Monjok Mataram', '1974-09-20', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '19 thn,\r\n6 bln', '-', 'SMA A.4/Ilmu Bahasa SMAN 2( 1993 )', NULL, NULL, NULL, 47, 'pria', 'islam', 'Monday, April 1, 2024', 2047, '3e6479e091e958466b8893aa99b6df63.jpg', 'http://localhost:5000/images/3e6479e091e958466b8893aa99b6df63.jpg', '2023-01-12 09:26:50', '2023-01-12 04:45:04', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('F3251621-CF62-6600-F5CE-D993F4170B4F', NULL, 'kontrak', 'Mareta Anindita Putri', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2033', '1610007405306', 'Bank Mandiri', 0, 'wanita', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL),
('f3b0c832-2f21-4b34-a4b0-964451d70eb8', '198205012009011003', 'pns', 'HARIYONO, SH', 'Kopang Loteng', '1982-05-01', 'pegawai', 'Pengumpul dan Pengolah Data pada UPTB Balai Pemanfaatan dan Pengamanan Aset Daerah\r\n[Fungsional Umum -]\r\n( 16-11-2017 )', NULL, '13 thn,\r\n3 bln', '-', 'Sarjana Ilmu Hukum Universitas Islam Al-Azhar( 2016 )', NULL, NULL, NULL, 39, 'pria', 'islam', 'Tuesday, April 1, 2025', 2034, '787afa34c4dbf936fb3e4fefd9fe04c0.jpg', 'http://localhost:5000/images/787afa34c4dbf936fb3e4fefd9fe04c0.jpg', '2023-01-12 09:26:50', '2023-01-12 03:52:48', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('f3fc619a-2c8b-4a9f-8de6-7a0a604d2c22', '198412312010011003', 'pns', 'SYAIFUL RAHMAN, SE', 'Bila Kembar Lotim', '1984-12-31', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '11 thn,\r\n0 bln', '-', 'Sarjana Manajemen Keuangan Skolah Tinggi Ilmu Ekonomi 45 ( 2012 )', NULL, NULL, NULL, 37, 'pria', 'islam', 'Tuesday, April 1, 2025', 2032, '4d7823ac0eff75648977d2b036f40eda.jpg', 'http://localhost:5000/images/4d7823ac0eff75648977d2b036f40eda.jpg', '2023-01-12 09:26:50', '2023-01-12 02:11:10', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '4805423b-8d94-4c42-ac73-2b71dbe7c843'),
('F486D0DA-9BD6-C265-FFB7-561BDA589B84', NULL, 'kontrak', 'Nurhasanah', '-', '-', 'pegawai', 'Operator Komputer', NULL, '- thn, - bln', NULL, 'null', '910/39.a/BPKAD/2020', '001.22.19464.10-7', 'Bank NTB Syariah', 0, 'wanita', 'islam', NULL, NULL, 'daf001d8db02933f2ce249c40c113e35.jpg', 'http://localhost:5000/images/daf001d8db02933f2ce249c40c113e35.jpg', '2023-01-12 13:49:50', '2023-01-12 08:10:25', NULL, NULL, '79530810-bc72-4bcd-9d45-a9180151abf6'),
('f48f0416-43ea-4eee-bfa1-fb08340739a5', '198112312008011014', 'pns', 'BAHRUDIN, S. Adm', 'Punia Saba Mataram', '1981-12-31', 'pegawai', 'Pengadministrasi pada UPTB Unit Pengelola Islamic Center\r\n[Fungsional Umum -]\r\n( 13-04-2017 )', NULL, '12 thn,\r\n0 bln', '-', 'SMP\r\n-\r\nSmp Negeri 5\r\n( 1996 )', NULL, NULL, NULL, 40, 'pria', 'islam', 'Monday, April 1, 2024', 2032, '69633599d08501911e969dc3f46a7af9.jpg', 'http://localhost:5000/images/69633599d08501911e969dc3f46a7af9.jpg', '2023-01-12 09:26:50', '2023-01-12 05:16:33', '254f8ec9-5441-4749-acf9-da7b5043875e', '2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('f5073297-fc96-4328-bc5f-2a1a77f47710', '197403072010011002', 'pns', 'MADE SUNATRA PUTRAYASA, ST', 'Banyuning Buleleng', '1974-03-07', 'pegawai', 'Analis Pendaftaran Hak Tanan dan Guna Ruang [Fungsional Umum -]( 01-01-2020 )', NULL, '16 thn,\r\n0 bln', '-', 'SarjanaTeknik Sipil Universitas Singaraja(2000)', NULL, NULL, NULL, 47, 'pria', 'hindu', 'Friday, April 1, 2022', 2032, '31358364a9957cf1cfbe379ea25c1934.jpg', 'http://localhost:5000/images/31358364a9957cf1cfbe379ea25c1934.jpg', '2023-01-12 09:26:50', '2023-01-12 03:46:35', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('F5237A68-B749-B887-9B87-5573FF98118A', NULL, 'kontrak', 'Samsul Hakim, SE', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/11/BPKAD/2020', '001.22.19458.10-8', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:49', '2023-01-12 13:49:49', NULL, NULL, NULL),
('F706F52A-8064-2D13-8913-6657A27124D5', NULL, 'kontrak', 'Nikmatun Aeni, A.Md', 'Narmada', '1993-05-12', 'pegawai', 'Tenaga Kebersihan', NULL, '5 thn, 0 bln', NULL, 'Diploma III Akuntansi Universitas Mataram(2014)', '910/39.a/BPKAD/2020', '001.22.19463.10-3', 'Bank NTB Syariah', 30, 'wanita', 'islam', NULL, NULL, 'bac766a31dbfd44624d59041973eca83.jpg', 'http://localhost:5000/images/bac766a31dbfd44624d59041973eca83.jpg', '2023-01-12 13:49:49', '2023-01-12 08:12:23', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('f77f80c8-21cc-4f6f-a661-d48896dd15a0', '198208222009012002', 'pns', 'MARIATUN', 'Dasan Agung Mataram', '1982-08-22', 'pegawai', 'Bendahara Pengeluaran Pembantu pada UPTB Pelayanan dan Perbendaharaan\r\n[Fungsional Umum -]\r\n( 01-01-2021 )', NULL, '13 thn,\r\n10 bln', '-', 'SMP\r\n-\r\n-\r\n( 1900 )', NULL, NULL, NULL, 39, 'wanita', 'islam', 'Monday, April 1, 2024', 2041, 'c73f715a15ce9002e8b954e24140c1f1.jpg', 'http://localhost:5000/images/c73f715a15ce9002e8b954e24140c1f1.jpg', '2023-01-12 09:26:48', '2023-01-12 04:41:40', 'c2df4423-fcab-4825-8ba8-648aecd9976b', 'b6b51f6f-3132-496a-88e0-1130065a0d72', '454adcee-d791-40dc-adb5-bf4d029e7736'),
('f8321a82-58d9-4881-bb08-ded0a9a4e35b', '197401032007012012', 'pns', 'RINI SUKRISMIARTI, S. Adm', 'Mataram', '1974-01-03', 'pegawai', 'Pengadministrasi\r\n[Fungsional Umum -]\r\n( 04-09-2015 )', NULL, '15 thn,\r\n9 bln', '-', 'Sarjana Ilmu Administrasi Negara Sekolah Tinggi Administrasi( 2013 )', NULL, NULL, NULL, 47, 'wanita', 'islam', 'Monday, April 1, 2024', 2042, 'c22e8b59f1bb906153a4f93b816eb4f2.jpg', 'http://localhost:5000/images/c22e8b59f1bb906153a4f93b816eb4f2.jpg', '2023-01-12 09:26:50', '2023-01-12 03:47:54', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '0627251b-0e2f-4609-be16-b8abce89ff6c'),
('f96bff91-9e11-422b-a0b6-3e273fab7047', '197501081993011001', 'pns', 'BOWO SUSATYO, S.Sos, MT', 'Ampenan', '1975-01-08', 'sekban', 'Sekretaris Badan Pengelolaan Keuangan dan Aset Daerah [Struktural Jabatan Administrator]', NULL, '24 thn,\r\n00 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2016 )', 'Pasca Sarjana\r\nMagister Perencanaan Kota dan Daerah\r\nUniversitas Gadjah Mada\r\n( 2003 )', NULL, NULL, NULL, 46, 'pria', 'islam', '-', 2033, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 09:26:50', '2023-01-12 07:57:32', 'a65b2c45-0752-47e7-9425-46da8f40b992', '7d3eb832-db8e-4b53-8bdb-3045ead025b4', 'a35a9250-06e4-4d2e-bb23-605e6642f165'),
('F9D94CA1-279F-3421-CB12-3F139DBF6932', NULL, 'kontrak', 'Yudistira Efendi', '-', '-', 'pegawai', 'Tenaga Keamanan', NULL, '-', NULL, '-', '910/39.a/BPKAD/2020', '001.22.19516.10-6', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, '2a48990d68b1e77c782fd12339402439.jpg', 'http://localhost:5000/images/2a48990d68b1e77c782fd12339402439.jpg', '2023-01-12 13:49:48', '2023-01-13 01:54:15', NULL, NULL, '348e3315-b868-4eb1-8c1e-7f6d24857cca'),
('f9e86425-0b49-4540-a142-ce1a687214d8', '198607252010011009', 'pns', 'M. JULHAN RINALDI, S.Pt, M.Ak', 'Mataram', '1986-07-25', 'pegawai', 'Analis Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '11 thn,\r\n0 bln', '-', 'Pasca Sarjana Magister Akuntansi Universitas Mataram( 2018 )', NULL, NULL, NULL, 35, 'pria', 'islam', 'Friday, April 1, 2022', 2044, '0bb60e9e0305bacc2f696a858fe8e8d8.jpg', 'http://localhost:5000/images/0bb60e9e0305bacc2f696a858fe8e8d8.jpg', '2023-01-12 09:26:50', '2023-01-12 04:11:53', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('FBE02046-AC21-5300-806D-39FF17F05F55', NULL, 'kontrak', 'L. Muchmad Reza Hidayat, SE', 'Mataram', '1998-03-14', 'pegawai', 'Operator Komputer', NULL, '1 thn, 6 bln', NULL, 'Sarjana Ekonomi Universitas Mataram(2019)', '910/02/BPKAD/2021', '001.02.85404.31-6', 'Bank NTB Syariah', 23, 'pria', 'islam', NULL, NULL, 'e78ab5edc12d000ee2242204e6a744e1.jpg', 'http://localhost:5000/images/e78ab5edc12d000ee2242204e6a744e1.jpg', '2023-01-12 13:49:48', '2023-01-13 02:14:02', NULL, NULL, '79530810-bc72-4bcd-9d45-a9180151abf6'),
('fd8e48f0-2cbc-4b36-9b59-85106af656f3', '196812312007011258', 'pns', 'MUNGGAH, SE', 'Lendang Damai', '1968-12-31', 'pegawai', 'Pengurus Barang\r\n[Fungsional Umum -]\r\n( 01-01-2016 )', NULL, '12 thn,\r\n0 bln', '-', 'Sarjana Ekonomi Pembangunan Universitas Islam Al-Azhar( 2001 )', NULL, NULL, NULL, 53, 'pria', 'islam', 'Tuesday, April 1, 2025', 2040, '842b7d502e55749759bab27bced72f20.jpg', 'http://localhost:5000/images/842b7d502e55749759bab27bced72f20.jpg', '2023-01-12 09:26:50', '2023-01-12 04:56:29', 'e9a45da9-c277-48f2-b12d-e1ea560660f7', '7f84bdda-a908-4f9e-a976-3ee533fb70fd', '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('FE772B3A-EF44-CAC2-37A3-802110EE0D8F', NULL, 'kontrak', 'Lalu Muhmmad Galih Pria Sejati.SE', 'Mataram', '1994-04-11', 'pegawai', 'Operator Komputer', NULL, '4 thn, 0 bln', NULL, 'Sarjana Manajemen STIE Perbanas Surabaya', '910/39.a/BPKAD/2020', '001.02.00224.21-5', 'Bank NTB Syariah', 29, 'pria', 'islam', NULL, NULL, '4bbb07e1711cb892c43b0dee2a547f40.jpg', 'http://localhost:5000/images/4bbb07e1711cb892c43b0dee2a547f40.jpg', '2023-01-12 13:49:50', '2023-01-12 06:43:36', NULL, NULL, '1f30e9ae-9f1a-4026-86d7-9384ae70241b'),
('feb6af59-ddfb-43c1-a5f6-9612c8b25581', '197312311993121004', 'pns', 'LALU JANAWIRMAN, S. Adm', 'Janapria Loteng', '1973-12-31', 'pegawai', 'Analis Keuangan\r\n[Fungsional Umum -]\r\n( 01-01-2020 )', NULL, '22 thn,\r\n1 bln', '-', 'SMA A.3/Ilmu Sosial SMAN Korpri( 1992 )', NULL, NULL, NULL, 48, 'pria', 'islam', 'Friday, April 1, 2022', 2031, 'f7053e6c0531ddfb23a1b4ec59729f88.jpg', 'http://localhost:5000/images/f7053e6c0531ddfb23a1b4ec59729f88.jpg', '2023-01-12 09:26:50', '2023-01-12 04:05:14', 'fe7ea2cc-0cb9-47c2-a88f-8683db745262', '3f98df91-9ec5-45a1-aee8-3a078355a0d8', '741b3b5a-2cf3-490a-b7d4-7fd8cffb2de8'),
('FF843DD2-0FD5-7244-0458-213EA3C1B4A7', NULL, 'kontrak', 'Lalu Muhammad yudha Facheza', '-', '-', 'pegawai', NULL, NULL, NULL, NULL, NULL, '910/02/BPKAD/2029', '001.02.00649.31-0', 'Bank NTB Syariah', 0, 'pria', 'islam', NULL, NULL, NULL, NULL, '2023-01-12 13:49:48', '2023-01-12 13:49:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skbws`
--

CREATE TABLE `skbws` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skbws`
--

INSERT INTO `skbws` (`id`, `staff_bagian`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `filesk_id`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KU', '2/UM.02.07/BWS NT I/002/2017', '2', 2, '2017-08-20 19:01:06', '2017-08-20 19:01:06'),
(2, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '3/003/KPTS/BWS-NT I/2017', '3', 3, '2017-08-20 19:15:06', '2017-08-20 19:15:06'),
(3, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '4/KP.03.02/BWS NT I/2017', '4', 4, '2017-08-20 19:22:49', '2017-08-20 19:22:49'),
(4, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '5/SC/BWS NT /2017', '5', 5, '2017-08-20 21:01:11', '2017-08-20 21:01:11'),
(5, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'PD', '6/PD.02.04-AS/BWS NT I/2017', '6', 6, '2017-08-20 21:05:08', '2017-08-20 21:05:08'),
(6, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '7/KP.03.04-AS/BWS-NT I/007/2017', '7', 7, '2017-08-20 21:11:55', '2017-08-20 21:11:55'),
(7, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '10/KPTS/BWS NT I/2017', '10', 10, '2017-08-20 21:13:46', '2017-08-20 21:13:46'),
(8, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'IK', '11/IK.02.04-AS/SPK-TL/Sat.BWS-NTI/2017', '11', 11, '2017-08-20 21:15:52', '2017-08-20 21:15:52'),
(9, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'UM', '12/UM.02.06-AS/BWS NT I/2017', '12', 12, '2017-08-20 21:18:00', '2017-08-20 21:18:00'),
(10, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'UM', '13/UM.02.06.AS/2017', '13', 13, '2017-08-20 21:19:17', '2017-08-20 21:19:17'),
(11, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'PR', '14/PR.01.04-AS/BWS NT I/2017', '14', 14, '2017-08-20 21:28:22', '2017-08-20 21:28:22'),
(12, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'KP', '15/KPTS/Sat. BWS NT I/2017', '15', 15, '2017-08-20 21:30:06', '2017-08-20 21:30:06'),
(13, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'PW', '16/PW.01.02-AS/BWS NT I/2017', '16', 16, '2017-08-20 21:33:06', '2017-08-20 21:33:52'),
(14, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'HK', '17/HK.01.04/VI/17', '17', 17, '2017-08-20 23:33:47', '2017-08-20 23:33:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skppd`
--

CREATE TABLE `skppd` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skppd`
--

INSERT INTO `skppd` (`id`, `staff_bagian`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `filesk_id`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'PD', '21/PD.01.04/VIII/17', '21', 21, '2017-08-20 23:47:04', '2017-08-20 23:47:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skppdttl`
--

CREATE TABLE `skppdttl` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skppdttl`
--

INSERT INTO `skppdttl` (`id`, `staff_bagian`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `filesk_id`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'UM', '22/UM.02.04/VIII/17', '22', 22, '2017-08-20 23:48:56', '2017-08-20 23:48:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skppkttl`
--

CREATE TABLE `skppkttl` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skppkttl`
--

INSERT INTO `skppkttl` (`id`, `staff_bagian`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `filesk_id`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'UM', '18/UM.12.04/VIII/17', '18', 18, '2017-08-20 23:50:09', '2017-08-20 23:50:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sksatker`
--

CREATE TABLE `sksatker` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sksatker`
--

INSERT INTO `sksatker` (`id`, `staff_bagian`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `filesk_id`, `created_at`, `updated_at`) VALUES
(1, 'KA.SUBAG TATA USAHA (TU)', '2017-08-21', 'PD', '20/PD.24.14/VIII/17', '20', 20, '2017-08-20 23:51:52', '2017-08-20 23:51:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `smumum`
--

CREATE TABLE `smumum` (
  `id` int(10) UNSIGNED NOT NULL,
  `tgl_terima` date NOT NULL,
  `asal_surat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diteruskan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_disposisi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_smumum` enum('proggress','unread','read','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `smumum`
--

INSERT INTO `smumum` (`id`, `tgl_terima`, `asal_surat`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `diteruskan`, `isi_disposisi`, `status_smumum`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2017-01-03', 'ISOLV', '2016-12-05', 'PL', 'SPP-CTR/0112016/WW', 'pengenalan Produk', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\"]', 'mohon di cek / dipelajari sesuai kebutuhan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:13:25', '2017-08-20 18:16:06'),
(2, '2017-01-03', 'KADES POTO - SUMBAWA', '2017-01-03', 'SI', '692.1/01/DS-PT/1/2017', 'usulan pengamanan tebing bronjong parapel & pemasangan talud', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\",\"KA.SNVT PELAKSANAAN JARINGAN SUMBER AIR NT I (PJSA)\"]', 'mohon di cek dan diusulkan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:16:05', '2017-08-20 18:16:12'),
(3, '2017-01-03', 'CAMAT PALIBELO', '2017-12-26', 'PR', '610/319/06.F/2016', 'Usulan tambahan marcu', '[\"KASI OPERASI & PEMELIHARAAN (OP)\",\"KA.SNVT PELAKSANAAN JARINGAN PEMANFAATAN AIR NT I (PJPA)\"]', 'mohon untuk diusulkan untuk prioritas', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:18:10', '2017-08-20 18:16:18'),
(4, '2017-01-03', 'KADES BEBER LOTENG', '2017-01-01', 'PR', '-', 'Proposal: Rehab saluran DAM mertak wareng', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\",\"KA.SNVT PELAKSANAAN JARINGAN PEMANFAATAN AIR NT I (PJPA)\"]', 'mohon untuk dicek dan diprog sesuai kewenangan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:22:57', '2017-08-20 18:16:00'),
(5, '2017-01-03', 'KADES BUNUT BAOK', '2017-01-02', 'PR', '-', 'proposal: Rehab normalisasi DAM Tangluk bunut baok', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\",\"KA.SNVT PELAKSANAAN JARINGAN PEMANFAATAN AIR NT I (PJPA)\"]', 'mohon untuk di cek dan di prog. sesuai kewenangan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:25:41', '2017-08-20 18:15:50'),
(6, '2017-01-03', 'KADES SANTONG - KLU', '2016-12-19', 'PR', '021/PAMDES-BB/STG/XII/2016', 'Permohonan bantuan dana', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\"]', 'di cek tolong bisa di programkan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:29:21', '2017-08-20 18:15:38'),
(7, '2017-01-04', 'FAJRI SANTOSO', '2017-01-04', 'KP', '-', 'Permohonan pindah data', '[\"KA.SUBAG TATA USAHA (TU)\"]', 'Bag. Kepegawaian (P. Yamin, P.Udin) tolong proses sesuai prosedur', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:41:05', '2017-08-20 18:15:13'),
(8, '2016-12-27', 'BUPATI SUMBAWA BARAT', '2017-01-04', 'TN', '593/530/ASET', 'Permohonan pinjam pakai tanah', '[\"KA.SUBAG TATA USAHA (TU)\",\"PEJABAT PELAPORAN\"]', 'Bag. BMN tolong di mnitor proses selanjutnya', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:43:29', '2017-08-20 18:15:02'),
(9, '2017-01-04', 'LURAH TANJUNG KARANG', '2016-12-27', 'SI', '104/TJK/XII/2016', 'Bantuan pemasangan & pembukaan bronjong', '[\"KA.SATKER OP SDA (SATKER OP SDA)\",\"KA.SNVT PELAKSANAAN JARINGAN SUMBER AIR NT I (PJSA)\"]', 'mohon bisa di bantu penanganannya', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 04:52:30', '2017-08-20 18:14:57'),
(10, '2017-01-04', 'PPK BENDUNGAN III', '2016-12-26', 'IK', 'UM.01.03-AS/PB.III/1367/2016', 'Perpanjangan pinjam pakai atas BMN', '[\"KASI PELAKSANAAN (PELAK)\"]', 'mohon dimontor pelaks. kegiatan di lapangan', 'read', 'upload/file_suratmasuk/SURAT DINAS PU.jpg', '2017-08-20 05:11:15', '2017-08-20 18:14:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `smund`
--

CREATE TABLE `smund` (
  `id` int(10) UNSIGNED NOT NULL,
  `tgl_terima` date NOT NULL,
  `asal_surat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `kd_klasifikasi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diteruskan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_disposisi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_smund` enum('proggress','unread','read','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `smund`
--

INSERT INTO `smund` (`id`, `tgl_terima`, `asal_surat`, `tgl_surat`, `kd_klasifikasi`, `no_surat`, `perihal`, `diteruskan`, `isi_disposisi`, `status_smund`, `gambar`, `created_at`, `updated_at`) VALUES
(2, '2017-01-05', 'INACID', '2017-08-01', 'UM', '-', 'Kongres rapat anggota tahunan & Seminar Nasional INACID - Jambi 10-11 Maret 2017', NULL, NULL, 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:24:13', '2017-08-20 18:13:01'),
(3, '2017-01-05', 'SEKDA NTB', '2017-01-04', 'UM', '005/006/BPBD-RR/I/2017', 'Und. Raker rencana aksi penanggulangan banjir bandang bima', '[\"KA.SATKER BWS NT I (SATKER BWS)\"]', 'akan dihadiri oleh kepala balai', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:28:01', '2017-08-20 18:14:04'),
(4, '2017-01-11', 'DIRJEN SDA', '2017-01-10', 'UM', 'UM.02.06-AS/028', 'Rekonsiliasi dan penyusunan laporan keuangan sistem akuntansi instansi dst.', '[\"KA.SNVT PEMBANGUNAN BENDUNGAN NT I (PB NT I)\"]', 'agar dihadiri petugas yang diminta', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:30:59', '2017-08-20 18:14:16'),
(5, '2017-01-16', 'DPU & PENATAAN RUANG', '2017-01-17', 'UM', '005/334/PUPR-LB/04/2017', 'Sosialisasi hasil penyusunan rencana air minum kab. Lobar', '[\"KA.SNVT PELAKSANAAN JARINGAN SUMBER AIR NT I (PJSA)\"]', 'P. Mahsun (BMN) konsultasikan kallau . Ka Balai apa bisa dilanjutkan', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:33:49', '2017-08-20 18:14:09'),
(6, '2017-01-17', 'LPJK PROV NTB', '2017-01-18', 'UM', '02/LPJK.NTB/P/I/2017', 'Permohonan pinjam pakai bangunan', '[\"PEJABAT PELAPORAN\"]', 'p. mahsun (BMN): konsultasikan ke ka balai apa bisa di lanjut', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:36:11', '2017-08-20 18:13:56'),
(7, '2017-01-19', 'DIRJEN SDA', '2017-01-18', 'UM', 'UM.02.06-AB.1/18', 'Sosialisasi eprocedurement dan pembahasan permasalahan pengadaan barang / jasa, dst.', '[\"KASI OPERASI & PEMELIHARAAN (OP)\"]', 'tugaskan orang untuk menghadiir acara tsb', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:40:06', '2017-08-20 18:13:27'),
(8, '2017-01-17', 'SEKJEN KEMENTRIAN PUPR', '2017-01-19', 'UM', 'UM.02.06-SB/18', 'Peningkatan pemahaman auditor internal di unit hidrologi dan kualitas air', '[\"UNIT LAYANAAN PENGADAAN (ULP)\"]', 'p. erwin rosdianto: berangkat mengahadiri acara tersebut', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-19 07:43:55', '2017-08-20 18:13:13'),
(9, '2017-01-20', 'PUSAT AT AB', '2017-01-19', 'UM', 'UM.02.06-AK/41', 'Undangan penyusunan prog. air baku', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\",\"KA.SNVT PELAKSANAAN JARINGAN PEMANFAATAN AIR NT I (PJPA)\"]', 'mohon untuk hadir pada acara tersebut dan siapkan data - data yang diperlukan', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-20 02:55:59', '2017-08-20 18:13:06'),
(10, '2017-01-23', 'KOREM 162 / WIRA BHAKTI', '2017-01-23', 'UM', 'B/99/5/2017', 'Undangan UPB US Swapang tahun 2017', '[\"KASI PROGRAM & PERENCANAAN UMUM (PROG PU)\"]', 'mohon untuk hadir pada acara tsb', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-20 03:00:08', '2017-08-20 18:12:51'),
(11, '2017-01-23', 'SETDA PROV. NTB', '2017-01-20', 'UM', '005/062/BPBD.NTB/2017', 'Und. Pem. rencana aksi pasca banjir bandang di kota bima', '[\"KA.SUBAG TATA USAHA (TU)\"]', 'mohon untuk di tindak lanjuti dan dihadiri acara tsb', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-20 04:08:12', '2017-08-20 18:12:38'),
(12, '2017-08-21', 'STMIK Bumigora Mataram', '2017-08-19', 'PD', '100/STMIK/VIII/2017', 'SEMINAR IT 2017', '[\"KA.SUBAG TATA USAHA (TU)\",\"KASI OPERASI & PEMELIHARAAN (OP)\"]', 'mohon di hadiri acara tersebut', 'read', 'upload/file_suratundangan/SURAT DINAS PU.jpg', '2017-08-21 00:32:32', '2017-08-21 00:38:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','pimpinan','agendaris','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisi_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `level`, `divisi_id`, `username`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
('1', 'Denda Afriliani', 'admin', '15', 'agendaris', '$2y$10$FUFoKlBMOJZq7SbvtfJ7Ruegxb8Pv7.d7Hi.Aflm8PcRtzfuZQHDq', 'upload/profile/Denda Afriliani_1410330034.JPG', 'EsAQsgOk9GN208L3ltteW3jAUN2AhVU05HnCsclob7kKzbShpY9he8d5Xuwi', '2017-06-03 05:41:30', '2017-08-16 08:12:06'),
('10', 'Guntur Febrian', 'admin', '4', 'guntur', '$2y$10$Lj731awkQvHOCVObfXrpFOR635Ci/OrDQABvMjizBwaJ2AllMshRm', 'asset(\'assets/images/profile.png\')', NULL, '2017-08-11 01:25:52', '2017-08-11 01:25:52'),
('4', 'Administrator', 'admin', '1f30e9ae-9f1a-4026-86d7-9384ae70241b', 'admin', '$2y$10$x5wXUpWci25pfScZbqIdjOu3GAdiZUYK7I9huvLMtiEy/BU67RXkO', 'upload/profile/profile.png', 'kWuxO3YYHmq4TD2629NffoEjVZ9wzhNbU98v1J4ba4VjmvvHDyy10uGJ6Jo8', '2017-06-01 13:13:36', '2017-08-11 00:43:44'),
('5', 'Ir. Suryo Edi Purnomo', 'admin', '14', 'ketua', '$2y$10$J6/V7gJoyOLLNslxKFFf7.028OKYFq/hSrDYsBQXozkusXLQtMNRi', 'upload/profile/profile.png', 'pgz0bV341esU4FbSOIBloU3zkRdBPti7xbqNSYcgWhc9hWGqePNyZ7wzj7rl', '2017-06-07 20:55:34', '2017-08-11 00:52:17'),
('6', 'Agus Susanto', 'admin', '1', 'tu', '$2y$10$p6CD/gN4UAoc67MXYqvAD.3elHjiL7y94k.Ec3OT4DcIbBJJOCW.2', 'upload/profile/B612_20161116_150138.jpg', 'ZP1YvT2S0t4f32l5qSK2oyujVv3oklV8gZqWKoJPJQuTMJ34zqHCDM3yHTDq', '2017-06-11 23:22:40', '2017-08-11 00:53:16'),
('7', 'Linda Lestari', 'admin', '16', 'arsip', '$2y$10$pznWuAoPFzCkXJlKuMebM.lvdL1cqXwSzmZuZybEwkh.01i1tzsMy', 'upload/profile/profile.png', 'vt9oarGGe3YE87nwPrEVVn7hTQXcu4YpFMn0tkFlsjAFnWDRaihwzVt7jCU5', '2017-06-30 20:39:36', '2017-08-11 00:53:50'),
('8', 'bang mo', 'admin', '11', 'uang', '$2y$10$VJc7kq7qGon2Lyao1wAbPOqmziSl887O.z7h/Qh7tTU1YxjFmL2OW', 'asset(\'assets/images/profile.png\')', 'Xes6Jn3fp2FEKshV4iGzVNOFQpv3WrSDKZy6a2wx8PkTK6MzfQMK0JTHJvNz', '2017-08-11 00:59:08', '2018-04-27 11:20:59'),
('9', 'Surya Rinjani', 'admin', '2', 'surya', '$2y$10$fiWHHdpCD0lKe.7QGZ2Fc.aBmjBY3gRxHO5yr7ydFh5AbS7/O2A2G', 'asset(\'assets/images/profile.png\')', NULL, '2017-08-11 01:14:03', '2017-08-11 01:14:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smund_id` (`smund_id`),
  ADD KEY `smumum_id` (`smumum_id`),
  ADD KEY `tujuan` (`tujuan`);

--
-- Indeks untuk tabel `file_surat_keluar`
--
ALTER TABLE `file_surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`uuid`);

--
-- Indeks untuk tabel `skbws`
--
ALTER TABLE `skbws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_skbws_filesk_id_foreign` (`filesk_id`);

--
-- Indeks untuk tabel `skppd`
--
ALTER TABLE `skppd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_skppd_filesk_id_foreign` (`filesk_id`);

--
-- Indeks untuk tabel `skppdttl`
--
ALTER TABLE `skppdttl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_skppdttl_filesk_id_foreign` (`filesk_id`);

--
-- Indeks untuk tabel `skppkttl`
--
ALTER TABLE `skppkttl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_skppkttl_filesk_id_foreign` (`filesk_id`);

--
-- Indeks untuk tabel `sksatker`
--
ALTER TABLE `sksatker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_sksatker_filesk_id_foreign` (`filesk_id`);

--
-- Indeks untuk tabel `smumum`
--
ALTER TABLE `smumum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `smund`
--
ALTER TABLE `smund`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisi_id` (`divisi_id`),
  ADD KEY `divisi_id_2` (`divisi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `file_surat_keluar`
--
ALTER TABLE `file_surat_keluar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `skbws`
--
ALTER TABLE `skbws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `skppd`
--
ALTER TABLE `skppd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `skppdttl`
--
ALTER TABLE `skppdttl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `skppkttl`
--
ALTER TABLE `skppkttl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sksatker`
--
ALTER TABLE `sksatker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `smumum`
--
ALTER TABLE `smumum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `smund`
--
ALTER TABLE `smund`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `distribusi`
--
ALTER TABLE `distribusi`
  ADD CONSTRAINT `smumum_id` FOREIGN KEY (`smumum_id`) REFERENCES `smumum` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `smund_id` FOREIGN KEY (`smund_id`) REFERENCES `smund` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tujuan` FOREIGN KEY (`tujuan`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `skbws`
--
ALTER TABLE `skbws`
  ADD CONSTRAINT `tbl_skbws_filesk_id_foreign` FOREIGN KEY (`filesk_id`) REFERENCES `file_surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `skppd`
--
ALTER TABLE `skppd`
  ADD CONSTRAINT `tbl_skppd_filesk_id_foreign` FOREIGN KEY (`filesk_id`) REFERENCES `file_surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `skppdttl`
--
ALTER TABLE `skppdttl`
  ADD CONSTRAINT `tbl_skppdttl_filesk_id_foreign` FOREIGN KEY (`filesk_id`) REFERENCES `file_surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `skppkttl`
--
ALTER TABLE `skppkttl`
  ADD CONSTRAINT `tbl_skppkttl_filesk_id_foreign` FOREIGN KEY (`filesk_id`) REFERENCES `file_surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sksatker`
--
ALTER TABLE `sksatker`
  ADD CONSTRAINT `tbl_sksatker_filesk_id_foreign` FOREIGN KEY (`filesk_id`) REFERENCES `file_surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
