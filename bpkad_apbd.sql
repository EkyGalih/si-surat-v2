-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2023 at 11:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpkad_apbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `apbd`
--

CREATE TABLE `apbd` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_anggaran_sebelum` bigint DEFAULT NULL,
  `jml_anggaran_setelah` bigint DEFAULT NULL,
  `selisih_anggaran` bigint DEFAULT NULL,
  `persen` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_anggaran` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apbd`
--

INSERT INTO `apbd` (`id`, `kode_rekening`, `nama_rekening`, `uraian`, `sub_uraian`, `jml_anggaran_sebelum`, `jml_anggaran_setelah`, `selisih_anggaran`, `persen`, `user_id`, `tahun_anggaran`, `created_at`, `updated_at`) VALUES
('0b716d1e-82f8-4941-b99e-084a64d8cfb6', '6.2.02', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', 'Penyertaan Modal Daerah', 0, 0, 0, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('0e4741b2-f718-435f-8235-70cee3b12af1', '5', 'BELANJA', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('0ea3f37a-b462-40ca-999b-a91e2a8c0fc3', '4.2.01', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', 'Pendapatan Transfer Pemerintah Pusat', 3463147644000, 3425156711263, 37990932737, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('124802e3-9302-4574-8330-600f93d9b6a1', '5.1', 'BELANJA', 'BELANJA OPERASI', NULL, 3963568056204, 3969563673149, 266827316520, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('133341e2-3cc4-4941-b680-dea76f8e578e', '6.1', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', NULL, 65000000000, 645352833596, 580352833596, '893', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('14e1a7c5-fdac-47b4-a09f-3ad8a19e8174', '6.2', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', NULL, 0, 0, 0, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('213bb43b-bc7d-42ba-8b77-f94364359474', '4.3.01', 'PENDAPATAN DAERAH', 'LAIN-LAIN PENDAPATAN DAERAH YANG SAH', 'Pendapatan Hibah', 8011907600, 30154665751, 0, '276', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('218b805c-a6be-4832-bee8-345217288653', '5', 'BELANJA', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('2850b14f-70c0-4519-8477-d1d9f52136ca', '6.3', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', 'Sisa Lebih Pembiayaan Anggaran Daerah Tahun Berkenaan', 0, 0, 0, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('29af9605-b485-4d5a-b3a3-775712a56d1a', '6.2.02', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', 'Penyertaan Modal Daerah', 10000000000, 5000000000, 5000000000, '5', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('2a54610b-e12c-4e01-8733-fea83abf9e69', '6.1.01', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', 'Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', 0, 84156506495, 54812833596, '100', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('2ca5986f-bdd8-479e-b47b-3315c317ba4e', '5.1.02', 'BELANJA', 'BELANJA OPERASI', 'Belanja Barang dan Jasa', 1875426552652, 1845891087251, 348747793023, '2', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('2e229e82-1c7c-44a4-a0e5-1f1f98eba4db', '5.3', 'BELANJA', 'BELANJA TIDAK TERDUGA', NULL, 4000000000, 3216218500, 48606843539, '20', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('30ee4db0-ac8a-4fb0-b0d2-e7332f0bdbac', '4.3', 'PENDAPATAN DAERAH', 'LAIN-LAIN PENDAPATAN DAERAH YANG SAH', NULL, 8011907600, 30154665751, 0, '276', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('336559ae-9bb0-46bf-bdd7-5e450f18193a', '4.1.01', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Pajak Daerah', 1487726538148, 1601353821000, 113627282852, '8', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('35c56ba7-45cf-4af9-9683-e471ce2eec15', '5.4.01', 'BELANJA', 'BELANJA TRANSFER', 'Belanja Bagi Hasil', 822328667500, 871506125000, 61103891596, '6', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('389083dc-64a2-4e54-9991-6fe529142476', '5.4.01', 'BELANJA', 'BELANJA TRANSFER', 'Belanja Bagi Hasil', 696041354704, 757145246300, 61103891596, '9', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('38a40273-582a-4c3d-8ccf-339f2da3b19a', '5.2.03', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Gedung dan Bangunan', 178594663157, 328734665445, 150140002288, '84', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('3a5cb6ed-3cf2-45c1-881c-74bd79438d44', '4.1.01', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Pajak Daerah', 1726235525000, 1766560250000, 113627282852, '2', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('416b046c-1d61-40be-bca7-7a9834854782', '5.1.04', 'BELANJA', 'BELANJA OPERASI', 'Belanja Subsidi', 207370800, 207370800, 1235584930, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('44324681-4668-4d11-95f8-89ed3b4b1664', '4', 'PENDAPATAN DAERAH', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('494cf0f9-06bd-4485-9e3d-1353b0a20292', '5.2.01', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Tanah', 16500000000, 9850000000, 450000000, '40', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('4de48887-fc37-44b4-94a6-72d4c29fe2cd', '5.1.05', 'BELANJA', 'BELANJA OPERASI', 'Belanja Hibah', 1396221410359, 1292085893254, 104135517105, '7', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('5021a67c-165b-4a18-85d5-d5b78d7f8a7a', '5.2', 'BELANJA', 'BELANJA MODAL', NULL, 1166222468796, 1451944671747, 473766046194, '24', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('517f3f69-8d46-4286-837f-bcfff2808610', '5.2', 'BELANJA', 'BELANJA MODAL', NULL, 774061414582, 1247827460776, 473766046194, '61', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('53c79717-81e8-403b-b0a2-7b46718abce3', '5.2.05', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Aset Tetap Lainnya', 15502493735, 39163537204, 343993612, '153', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('571301ef-7975-438c-9df8-f00ce9a7a613', '4.1.02', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Retribusi Daerah', 44103870600, 44103870600, 0, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 12:10:48'),
('582f43e6-cfd0-4631-918e-f90fe1016722', '6.2', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', NULL, 10000000000, 5000000000, 5000000000, '5', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('5b87cb71-af19-4361-b537-8186a889e107', '5.1.01', 'BELANJA', 'BELANJA OPERASI', 'Belanja Pegawai', 1522993945344, 1541661320793, 18667375449, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('5e63a242-8a18-401f-8ff4-c2fdf30d6e89', '6.1.04', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', 'Penerimaan Pinjaman Daerah', 562500000000, 562500000000, 525540000000, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('622e84ec-0b9a-42c6-b43d-fd4a9f9f2435', '5.1.05', 'BELANJA', 'BELANJA OPERASI', 'Belanja Hibah', 163274384046, 266438072228, 104135517105, '63', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('63e17415-8df9-4561-98b7-f125c85ff0ee', '6.1', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', NULL, 562500000000, 646657382495, 580352833596, '15', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('6916558a-0d2a-4c68-92b5-e483414fd577', '5.4', 'BELANJA', 'BELANJA TRANSFER', NULL, 696399442204, 758584178435, 62184736231, '9', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('6af6c720-27c0-42db-bbb9-78c6b14f2b93', '4.1.04', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Lain-lain PAD yang Sah', 740948870700, 864027925700, 208155491181, '17', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('6e9c2a5b-efb0-477d-8473-c75cc27b13c1', '4.2.02', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', 'Pendapatan Transfer Antar Daerah', 1662086000, 1662086000, 80844635, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('715b29fd-a9d6-4153-9503-e175b64e102c', '5.2.04', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Jalan, Jaringan, dan Irigasi', 239311704930, 519539906324, 274195906632, '117', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('738669f8-d1b5-4d88-a5db-9c4bcd342e97', '5.1.06', 'BELANJA', 'BELANJA OPERASI', 'Belanja Bantuan Sosial', 8921876600, 8649276600, 272600000, '3', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('76281b03-3efa-4d0c-874a-955a1f0c6896', '4.3.01', 'PENDAPATAN DAERAH', 'LAIN-LAIN PENDAPATAN DAERAH YANG SAH', 'Pendapatan Hibah', 54780903944, 54780903944, 0, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('770ab731-75ed-4273-93c7-922c8605ad0b', '4.1.02', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Retribusi Daerah', 47219957500, 47219957500, 0, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('785e5da9-c240-4640-aa5d-7290cbfa3f92', '4.2', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', NULL, 2819427922100, 2890082997350, 37910088102, '3', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('78f62ef2-b7bf-49c5-a268-ed7bed302f66', '4', 'PENDAPATAN DAERAH', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('791c60b0-ba45-4d25-9cb7-539f16aefb8a', '4.2.02', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', 'Pendapatan Transfer Antar Daerah', 1662086250, 1742930885, 80844635, '5', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('7a5f86b8-9a16-4bcb-8a15-638c7f9694e7', '5.2.05', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Aset Tetap Lainnya', 21759599494, 21415605882, 343993612, '2', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('7acde169-9316-4e13-84b9-f0f469fb3986', '5.4.02', 'BELANJA', 'BELANJA TRANSFER', 'Belanja Bantuan Keuangan', 5458087500, 5705587500, 1080844635, '5', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('88450259-10ba-490c-bdd8-f2b9816bbd67', '4.1.03', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Hasil Pengelolaan Kekayaan Daerah yang Dipisahkan', 60349184000, 60349184000, 17840577043, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('8996a4a7-8133-4b51-be1a-cc8d37bb01d2', '5.4', 'BELANJA', 'BELANJA TRANSFER', NULL, 827786755000, 877211712500, 62184736231, '6', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('909c7bd4-0de6-439c-9ca0-49b302931d7f', '6.1.01', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', 'Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', 65000000000, 119812833596, 54812833596, '84', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('94bf6b5c-6be9-46b7-9155-17a3f11bec5b', '4.1', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', NULL, 1954341221233, 2258283418223, 303942196990, '16', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('957f5c9c-d92b-470b-b94e-21f318bd75e8', '5.4.02', 'BELANJA', 'BELANJA TRANSFER', 'Belanja Bantuan Keuangan', 358087500, 1438932135, 1080844635, '302', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('97038b70-c426-4e96-b440-e143f882b6fd', '4.2.01', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', 'Pendapatan Transfer Pemerintah Pusat', 2817765836100, 2888420911350, 37990932737, '3', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('9b1b5286-175b-454b-8566-f7a56d52fe68', '5.2.03', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Gedung dan Bangunan', 552680464191, 537783332502, 150140002288, '3', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('9cb7f001-8093-470a-a1c7-8a099018541d', '5.3.01', 'BELANJA', 'BELANJA TIDAK TERDUGA', 'Belanja Tidak Terduga', 4000000000, 3216218500, 48606843539, '20', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('a23c9b6e-d52d-4700-a095-a3e3e5d49d3c', '6.1.04', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', 'Penerimaan Pinjaman Daerah', 0, 525540000000, 525540000000, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('a375a442-1683-4dd0-a297-879a85ad48ce', '4.3', 'PENDAPATAN DAERAH', 'LAIN-LAIN PENDAPATAN DAERAH YANG SAH', NULL, 54780903944, 54780903944, 0, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('a72736fd-fa58-49ba-aab3-3aab97a9b9c3', '6', 'PEMBIAYAAN', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('ab3e57c9-53d7-4dce-ba71-e988cd2822e2', '5.3', 'BELANJA', 'BELANJA TIDAK TERDUGA', NULL, 10000000000, 58606843539, 48606843539, '486', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('afb5ea4b-1168-42df-9a9d-36e45d3d0ed0', '6', 'PEMBIAYAAN', NULL, NULL, 0, 0, 0, NULL, 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('b6cc3d6c-bad7-4d28-b086-90551857edcd', '5.2.02', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Peralatan dan Mesin', 342227805940, 345607895717, 49384130886, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('bf0504d5-e0f6-420f-b774-bb8c379bb0a4', '4.1', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', NULL, 2571637450300, 2735041230300, 303942196990, '6', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('c1eadf3b-467a-41ab-91bb-f44405bd1e56', '5.1.03', 'BELANJA', 'BELANJA OPERASI', 'Belanja Bunga', 53334762864, 35868182538, 5055850083, '33', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('c2e63f16-3842-4b4d-a351-778869e8ed3c', '5.1.04', 'BELANJA', 'BELANJA OPERASI', 'Belanja Subsidi', 1631860720, 396275790, 1235584930, '76', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('ce6b1eb2-08eb-45c4-a547-56e7ce2a2c61', '5.1.03', 'BELANJA', 'BELANJA OPERASI', 'Belanja Bunga', 0, 5055850083, 5055850083, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('d4664a41-e868-427a-b6eb-f7013f07cdb5', '4.2', 'PENDAPATAN DAERAH', 'PENDAPATAN TRANSFER', NULL, 3464809730250, 3426899642148, 37910088102, '1', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('db261a24-1114-40e5-9384-0994cf3ce8bf', '5.2.01', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Tanah', 1050000000, 1500000000, 450000000, '43', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('dde63be2-69ef-486c-982f-0eda36a9b1fd', '4.1.04', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Lain-lain PAD yang Sah', 355290515419, 563446006600, 208155491181, '59', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('de4e7ada-6741-4d77-b5b1-4c4830e68728', '5.1.01', 'BELANJA', 'BELANJA OPERASI', 'Belanja Pegawai', 1861978585842, 1813478060332, 18667375449, '3', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('df6fce54-9518-4d90-b4e9-ca04a3f64ae2', '6.1.05', 'PEMBIAYAAN', 'PENERIMAAN PEMBIAYAAN', 'Penerimaan Kembali Pemberian Pinjaman Daerah', 562500000000, 876000, 84157382495, '100', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('e4146d4a-10d9-46a3-b2b0-cdac81a6cf7c', '5.1', 'BELANJA', 'BELANJA OPERASI', NULL, 4048470998641, 4315298315161, 266827316520, '7', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('e4826c21-bf3b-4ad0-bcf2-97b9aca115c7', '4.1.03', 'PENDAPATAN DAERAH', 'PENDAPATAN ASLI DAERAH PAD', 'Hasil Pengelolaan Kekayaan Daerah yang Dipisahkan', 64104210166, 46263633123, 17840577043, '28', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('f261e5e6-c984-46a1-95fe-bda1777c1e9c', '5.2.02', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Peralatan dan Mesin', 248501023243, 297885154129, 49384130886, '2', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('f66d4839-9bfa-4831-842b-f84e4d2cc684', '6.3', 'PEMBIAYAAN', 'PENGELUARAN PEMBIAYAAN', 'Sisa Lebih Pembiayaan Anggaran Daerah Tahun Berkenaan', 0, 0, 0, '0', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('f84966ba-e25d-4dbe-a8d9-7253904b2f92', '5.3.01', 'BELANJA', 'BELANJA TIDAK TERDUGA', 'Belanja Tidak Terduga', 10000000000, 58606843539, 48606843539, '486', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('fb7285fe-1045-4c3f-8ca0-efa6d02ab3e5', '5.2.04', 'BELANJA', 'BELANJA MODAL', 'Belanja Modal Jalan, Jaringan, dan Irigasi', 324096128688, 598292035320, 274195906632, '85', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('fc48d3cb-0d22-4290-b574-6acaf4cf11fc', '5.1.02', 'BELANJA', 'BELANJA OPERASI', 'Belanja Barang dan Jasa', 1118701905618, 1467449698641, 348747793023, '31', 'c760170f-f055-11ec-aceb-244bfebc253d', '2021', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('fc924277-30e2-4d1e-b255-7213832c384e', '5.1.06', 'BELANJA', 'BELANJA OPERASI', 'Belanja Bantuan Sosial', 9346400000, 7680900000, 272600000, '18', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022', '2022-11-17 09:52:41', '2022-11-17 09:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_divisi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_divisi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_divisi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `kode_divisi`, `nama_divisi`, `alias_divisi`, `created_at`, `updated_at`) VALUES
('030dcf28-8763-41c2-9359-26a36e8a814b', 'BPKAD-Sek6', 'Sekretariat', 'Sek', '2022-10-22 08:46:09', '2022-10-22 08:46:09'),
('08d960e7-9df0-4f22-8f1f-cc2dc124bb60', 'BPKAD-SBT6', 'Sub Bagian TU', 'TU', '2022-10-16 15:32:02', '2022-10-16 15:39:22'),
('2238f70e-2ed2-4ff4-a7a6-f63485ba9909', 'BPKAD-UPPA', 'UPTB Balai Pemanfaatan dan Pengamanan Aset', 'UPTB Aset', '2022-10-16 15:35:57', '2022-12-02 03:25:48'),
('332c016c-95aa-4319-a985-540074eaee8e', 'BPKAD-UP63', 'UPTB Pelayanan Perbendaharaan', 'Perben', '2022-10-16 15:35:44', '2022-12-02 03:19:14'),
('5c17284e-7efe-4c7d-b653-bb9b7a566c58', 'BPKAD-Ku63', 'Sub Koordinator Keuangan', 'Ku', '2022-11-13 09:32:34', '2022-12-02 03:19:01'),
('76a67c8c-1cad-4108-a6e0-a0765536f90b', 'BPKAD-A634', 'Bidang Akuntansi', 'AKT', '2022-10-16 15:35:04', '2022-12-02 03:27:22'),
('82252c02-5b56-46fe-91d5-00549bc691dc', 'BPKAD-BEKk', 'Bidang Bina dan Evaluasi Keuangan Kabupaten/Kota', 'BEKk', '2022-10-16 15:35:33', '2022-12-02 03:27:31'),
('838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'BPKAD-126', 'Sub Koordinator Program', 'SubBag Program', NULL, '2022-12-02 03:26:51'),
('b4d9e1c9-e319-47fe-9f11-1fc435656bc7', 'BPKAD-A634', 'Arsip', 'ARSIP', '2022-10-16 15:36:03', '2022-10-16 15:40:04'),
('bca38a19-13c9-4492-93ed-1a4c993db5c1', 'BPKAD-BA63', 'Bidang Anggaran', 'ANGGARAN', '2022-10-16 15:34:57', '2022-12-02 03:27:07'),
('e25f6439-f100-4b14-b4cd-2a2031e5da0d', 'BPKAD-BMD6', 'Barang Milik Daerah', 'BMD', '2022-10-16 15:35:22', '2022-10-16 15:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_iku`
--

CREATE TABLE `file_iku` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_kegiatan_iku_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_iku`
--

INSERT INTO `file_iku` (`id`, `nama_file`, `sub_kegiatan_iku_id`, `created_at`, `updated_at`) VALUES
('099334c0-bd36-431e-a8ff-1910456a2d27', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Perubahan RKA-SKPD yang Diverifikasi  /KEGBPKAD09-CONTOH DOKUMEN UPLOAD.pdf', '156c15d7-2756-48a1-9785-dceaa03937c9', '2022-12-06 07:15:53', '2022-12-06 07:15:53'),
('09f25d9b-e1a4-4e00-a09d-07ce0c712ebe', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Peraturan Daerah tentang Perubahan APBD dan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD/KEGBPKAD09-CONTOH DOKUMEN UPLOAD.pdf', '378f89bd-907c-4ca3-b007-1a654e0eda4b', '2022-12-05 03:17:51', '2022-12-05 03:17:51'),
('183101f1-a52c-4ae2-af91-7bb678bd7894', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Dokumen Berita Acara Penyelesaian Kasus Sengketa Aset Tanah dan Bangunan/KEGBPKAD14-app kinerja 2022.xlsx', '13309af8-c199-4f05-abec-14b3614e88f5', '2022-11-29 17:12:10', '2022-11-29 17:12:10'),
('2b21184b-d6d9-457f-b9e2-c7caae8293c5', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Standar Harga yang Disusun/KEGBPKAD14-LRA JUNI - KIRIM SINERGI.xlsx', '2e021b77-192f-447b-9b7b-a7033a0be4a6', '2022-11-29 22:36:39', '2022-11-29 22:36:39'),
('2cf664f9-e2a3-4105-ad6a-9d05b106c524', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Laporan Hasil Pengawasan dan Pengendalian Pengelolaan Barang Milik Daerah/KEGBPKAD14-CONTOH DOKUMEN UPLOAD.pdf', '3e5d19f4-5f96-4521-bfb0-e59dbdc68db2', '2022-12-05 03:12:43', '2022-12-05 03:12:43'),
('3dd48ec3-f968-4943-b878-5715a9a4ea3b', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Peraturan Daerah tentang Perubahan APBD dan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD/KEGBPKAD09-CONTOH DOKUMEN UPLOAD 2.pdf', '378f89bd-907c-4ca3-b007-1a654e0eda4b', '2022-12-05 03:24:15', '2022-12-05 03:24:15'),
('400d2fdf-8afe-4b05-b2b8-6608bc7b41b2', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Dokumen Perubahan KUA dan Perubahan PPAS yang disusun/KEGBPKAD09-KUA 2023_FINAL.pdf', 'b58f0016-8add-410a-adfc-5a06fd6fae30', '2022-11-30 08:10:22', '2022-11-30 08:10:22'),
('51a0c82c-6463-44f7-bf18-ee2e4f515476', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Kebijakan Pengelolaan Barang Milik Daerah/KEGBPKAD14-img20220819_10101516.pdf', '2a70d158-3e0c-4d16-ab01-15e41a32469c', '2022-11-29 22:31:28', '2022-11-29 22:31:28'),
('77b8dffc-df74-452a-b450-fd61cad4021d', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Dokumen Perubahan KUA dan Perubahan PPAS yang disusun/KEGBPKAD09-TOR Koordinasi dan Penyusunan Rencana Anggaran Daerah.pdf', 'b58f0016-8add-410a-adfc-5a06fd6fae30', '2022-11-30 08:11:44', '2022-11-30 08:11:44'),
('815d4757-0fed-42ae-8492-90f011d29a6e', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Kebijakan Pengelolaan Barang Milik Daerah/KEGBPKAD14-drawing icon lkpd.svg', '2a70d158-3e0c-4d16-ab01-15e41a32469c', '2022-11-29 22:32:06', '2022-11-29 22:32:06'),
('8d88a089-7710-4d55-a4e2-e2de404da710', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Dokumen Berita Acara Penyelesaian Kasus Sengketa Aset Tanah dan Bangunan/KEGBPKAD14-KUA 2023_FINAL.pdf', '13309af8-c199-4f05-abec-14b3614e88f5', '2022-12-01 13:22:48', '2022-12-01 13:22:48'),
('a1415da0-8c86-47c2-a185-2c450a9d60cc', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Perubahan RKA-SKPD yang Diverifikasi  /KEGBPKAD09-CONTOH DOKUMEN UPLOAD 2.pdf', '156c15d7-2756-48a1-9785-dceaa03937c9', '2022-12-06 07:04:53', '2022-12-06 07:04:53'),
('da249184-2ced-447e-87d2-063ed9f4e181', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Dokumen Berita Acara Penyelesaian Kasus Sengketa Aset Tanah dan Bangunan/KEGBPKAD14-2020 eky.pdf', '13309af8-c199-4f05-abec-14b3614e88f5', '2022-12-01 08:28:07', '2022-12-01 08:28:07'),
('dd81dbd0-9d95-45d0-9cbb-e4cb1d866975', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD09/Jumlah Perubahan RKA-SKPD yang Diverifikasi  /KEGBPKAD09-agenda 1.docx', '156c15d7-2756-48a1-9785-dceaa03937c9', '2022-12-15 23:27:00', '2022-12-15 23:27:00'),
('e48181c5-4acb-4cb3-8bfe-6a4e08200c82', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD10/Jumlah Dokumen yang Mendapatkan Layanan Asistensi /KEGBPKAD10-CONTOH DOKUMEN UPLOAD.pdf', '90602ac9-caa4-45ad-854d-2cc4a10f2401', '2022-12-02 13:07:31', '2022-12-02 13:07:31'),
('f5a86f7f-b8b4-4d78-8fee-534af8506d11', 'import_data/iku/sub_kegiatan/2022/KEGBPKAD14/Jumlah Dokumen Berita Acara Penyelesaian Kasus Sengketa Aset Tanah dan Bangunan/KEGBPKAD14-Biaya Pemeliharaan Jaringan 2023.xlsx', '13309af8-c199-4f05-abec-14b3614e88f5', '2022-11-29 17:12:32', '2022-11-29 17:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `formulasi`
--

CREATE TABLE `formulasi` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kinerja_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formulasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_penghitungan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisi_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formulasi`
--

INSERT INTO `formulasi` (`id`, `indikator_kinerja_id`, `formulasi`, `tipe_penghitungan`, `divisi_id`, `alasan`, `created_at`, `updated_at`) VALUES
('a23f4e7f-eb5c-49d8-9d75-a28b8c0f726b', 'a8eecf5b-d50c-4442-8b35-a20c2476faa0', 'Jumlah objek tanah dan bangunan yang sudah dimanfaatkan dibagi jumlah objek keseluruhan dikali 100%', 'Tahunan', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', 'Menjadi salah satu tugas BPKAD selaku PPBMD dan peningkatan PAD', '2022-10-17 22:53:22', '2022-10-17 22:53:22'),
('af8e1ae3-4e77-4002-9cdb-ca32cc699857', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', 'usulan penghapusan BMD yang ditindaklanjuti dibagi jumlah usulan OPD yang diterima dikali 100%', 'Tahunan', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', 'Menjadi salah satu tugas BPKAD selaku PPBMD dan tertib pengelolaan BMD', '2022-10-17 22:52:39', '2022-10-17 22:52:39'),
('c2f4e6e5-9012-4064-b068-0c2c6d350819', 'e5614cbb-60a8-494d-9cc3-f79ec1ccc571', 'Jumlah Aset Tetap Tanah dan Bangunan yang dilegalkan di tambah Jumlah Aset Tetap Tanah yang Terlegalkan dibagi Jumlah Aset Tetap Tanahdan Bangunan Pemerintah Provinsi NTB dikali 100%', 'Tahunan', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', 'Menjadi salah tugas BPKAD selaku PPBMD.', '2022-10-17 22:54:10', '2022-10-17 22:54:10'),
('ef155562-9867-45c5-812a-ade547295e6b', '3837b088-9300-4d87-8f35-ffe5724428de', 'Jumlah Perangkat Daerah yang mengimplementasikan Akuntansi Berbasis Akrual dibagi Jumlah Perangkat Daerah', 'Tahunan', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'Menjadi salah satu tugas BPKAD selaku penyusun Laporan Keuangan Pemerintah Daerah untuk mendapatkan Opini WTP.', '2022-10-17 22:52:00', '2022-10-17 22:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_golongan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id`, `nama_golongan`, `created_at`, `updated_at`) VALUES
('0d566aec-3701-4c00-9cb8-7ed7b63832e3', 'Pengatur Muda', '2023-01-04 18:37:46', '2023-01-04 18:37:46'),
('262834f6-d889-4631-8559-c90779bd00b7', 'Penata Tingkat I', '2023-01-04 18:38:22', '2023-01-04 18:38:22'),
('2973e6ce-4b11-4c04-8fc2-9492c5ca44f9', 'Penata Muda', '2023-01-04 18:38:09', '2023-01-04 18:38:09'),
('3099cdfb-19dd-4eb0-8ce9-c986459bad4f', 'Pengatur Muda Tingkat I', '2023-01-04 18:37:52', '2023-01-04 18:37:52'),
('3f98df91-9ec5-45a1-aee8-3a078355a0d8', 'Penata', '2023-01-04 18:38:18', '2023-01-04 18:38:18'),
('43c5be61-e633-48f6-90b6-decacb955fc8', 'Pembina Utama', '2023-01-04 18:38:42', '2023-01-09 17:52:17'),
('4836081e-9f16-491e-8bb8-9d473b004c7e', 'Pembina Utama Madya', '2023-01-04 18:38:38', '2023-01-09 17:52:21'),
('48927ded-67e8-11ed-afd0-244bfebc253d', 'IV/B', NULL, NULL),
('512ff834-67e8-11ed-afd0-244bfebc253d', 'III/D', NULL, NULL),
('7d3eb832-db8e-4b53-8bdb-3045ead025b4', 'Pembina Tingkat I', '2023-01-04 18:38:33', '2023-01-04 18:38:33'),
('7f84bdda-a908-4f9e-a976-3ee533fb70fd', 'Penata Muda Tingkat I', '2023-01-04 18:38:15', '2023-01-04 18:38:15'),
('9fd0fb38-c19d-43f7-8955-b09a95de1506', 'Pengatur Tingkat I', '2023-01-04 18:38:05', '2023-01-04 18:38:05'),
('b47c00ea-6f91-4ede-9559-88217c96e8b9', 'Juru Muda Tingkat I', '2023-01-04 18:37:35', '2023-01-04 18:37:35'),
('b6b51f6f-3132-496a-88e0-1130065a0d72', 'Pengatur', '2023-01-04 18:37:57', '2023-01-04 18:37:57'),
('be18b481-0779-4563-9eb3-24e48a5a3f5c', 'Juru Tingkat I', '2023-01-04 18:37:42', '2023-01-04 18:37:42'),
('c350dcb2-9b4d-495e-a499-ca0c62334b2b', 'Juru Muda', '2023-01-04 18:37:25', '2023-01-04 18:37:25'),
('d0b1c422-fdb6-4c8f-99ca-70e4b909a700', 'Pembina', '2023-01-04 18:38:28', '2023-01-04 18:38:28'),
('d2cf0ead-eaec-402b-a616-e798dc05cfb6', 'Juru', '2023-01-04 18:37:37', '2023-01-04 18:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `iku_realisasi`
--

CREATE TABLE `iku_realisasi` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_iku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran_strategis_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kinerja_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formula_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_tercapai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iku_realisasi`
--

INSERT INTO `iku_realisasi` (`id`, `kode_iku`, `sasaran_strategis_id`, `indikator_kinerja_id`, `formula_id`, `target`, `target_tercapai`, `user_id`, `created_at`, `updated_at`) VALUES
('30f08881-7f2f-4394-bf5f-5f865a23275b', '001', '80234291-662c-465f-b514-464989a9cb91', 'a8eecf5b-d50c-4442-8b35-a20c2476faa0', 'a23f4e7f-eb5c-49d8-9d75-a28b8c0f726b', '73,93', '43', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-10-24 23:51:28', '2022-10-24 23:51:28'),
('5adc3056-f6ee-43de-91ff-e3b4936e00a6', '002', '80234291-662c-465f-b514-464989a9cb91', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', 'af8e1ae3-4e77-4002-9cdb-ca32cc699857', '100', '53', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-10-24 23:51:09', '2022-10-24 23:51:09'),
('bf62fb68-dc7b-403e-864a-27eeba22e78a', '003', '80234291-662c-465f-b514-464989a9cb91', 'e5614cbb-60a8-494d-9cc3-f79ec1ccc571', 'c2f4e6e5-9012-4064-b068-0c2c6d350819', '84', '31', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-10-24 23:51:40', '2022-10-24 23:51:40'),
('fa140c28-1f2f-426f-a42d-3abca599526d', '004', '80234291-662c-465f-b514-464989a9cb91', '3837b088-9300-4d87-8f35-ffe5724428de', 'ef155562-9867-45c5-812a-ade547295e6b', '100', '65', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-10-24 23:50:57', '2022-10-24 23:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_kinerja`
--

CREATE TABLE `indikator_kinerja` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kinerja` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_indikator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indikator_kinerja`
--

INSERT INTO `indikator_kinerja` (`id`, `indikator_kinerja`, `kode_indikator`, `created_at`, `updated_at`) VALUES
('05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', 'Persentase tindak lanjut penghapusan BMDs', 'INDBPKAD01', '2022-10-17 22:49:53', '2022-10-19 05:20:13'),
('3837b088-9300-4d87-8f35-ffe5724428de', 'Persentase Perangkat Daerah yang mengimplemntasikan Akuntasi Berbasis Akrual', 'INDBPKAD02', '2022-10-17 22:49:38', '2022-10-27 23:45:40'),
('a8eecf5b-d50c-4442-8b35-a20c2476faa0', 'Persentase aset tanah dan bangunan yang termanfaatkan', 'INDBPKAD03', '2022-10-17 22:50:05', '2022-10-17 22:50:05'),
('dd10a979-6f77-11ed-8dbf-244bfebc253d', 'kegiatan umum', 'INDBPKAD05', NULL, NULL),
('e5614cbb-60a8-494d-9cc3-f79ec1ccc571', 'Persetase Aset Tetap Tanah dan Bangunan yang terlegalkan', 'INDBPKAD04', '2022-10-17 22:50:19', '2022-10-17 22:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_iku`
--

CREATE TABLE `kegiatan_iku` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kegiatan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisi_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_iku_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kinerja_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan_iku`
--

INSERT INTO `kegiatan_iku` (`id`, `nama_kegiatan`, `kode_kegiatan`, `divisi_id`, `program_iku_id`, `indikator_kinerja_id`, `tahun`, `created_at`, `updated_at`) VALUES
('01c9357e-3ad5-40de-b0e5-3c41d924d9bb', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('03ece391-f7b8-4685-afbb-8dc191133fb3', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('0465e6ed-525a-4cff-a289-9ea0c276ba0c', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('0b394186-a641-48cc-b320-8ae2d53c835f', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('0b8390aa-4f29-45db-838c-ee5a1c928b33', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('0f733876-a8bf-4f4d-9068-58bb569fbaa6', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('13bff166-f9a5-407c-8dea-33617cc90d35', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1b4a34f4-dac2-4a06-8e28-e40f3d726c18', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1da952e7-74e3-48ae-8f7c-38f6b594d0aa', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1f0c0143-3a83-45c2-8f2a-9b8fb34a946d', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1fb2a718-2d7c-45da-a23f-59f8109fdaab', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('21769223-1f37-47e7-9c95-6c33aa7864ef', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('22c30cd7-2743-4c11-b72c-716814bf8811', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('24680f70-bd69-48b1-afb3-4152c5d60937', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('285f7c37-5a7e-4217-a617-19e5cc037710', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2a6d464c-21dd-4067-87f2-55d0309bb929', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', 'KEGBPKAD06', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2b642487-5b2e-4662-b242-2774c9d06d19', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2c796f28-906d-41df-bb9f-c0622ab87448', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2ec14f20-d809-42eb-86b2-081949f90cdf', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2f003328-7dc1-48ae-8fb9-0b150cd67643', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('334ef620-9ba6-40a5-a0c2-a82d191984e7', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('359af0c8-4e91-4e77-9deb-f65bf71e24c4', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '913ffcc7-f916-4522-be03-ad9378bd1235', 'a8eecf5b-d50c-4442-8b35-a20c2476faa0', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('36e1496b-d989-48db-968d-87cad596ece5', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('39031997-04d5-4fa0-a2af-f858f604d5ae', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3b21ecab-d2d9-4a23-a0dc-a94bd4f3d21b', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3d108df9-4f1b-4c27-9412-e30f29a28beb', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('43fe1fcb-7de4-4083-ba15-679c070cebb9', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('440e2d15-4628-43db-b1a0-e03035df6af1', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4494bceb-5b85-4b06-adc8-5731ac48cb87', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4512489a-afa5-49c6-823f-f9e66bfc076d', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('49ddf616-f3fc-4ac2-870c-7fb3c17be0b3', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD15', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4bbea91d-2fb9-47e1-80ca-f00a13716150', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4dd6b590-3217-42c7-bab8-bd1503c7f36a', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('51b2365b-9edf-4fb8-aaea-03f2b2850c35', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('53dca3c7-60ad-402b-a468-df65fd939879', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('55ad4a21-448a-41a5-8ce2-b5f59214ead2', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('58249659-09b2-4bfd-8e90-d12c29992700', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5977ae92-451d-4370-8626-8817719987c9', 'Administrasi Barang Milik Daerah pada Perangkat Daerah', 'KEGBPKAD03', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5a64bd16-9bb4-4777-9103-534e505f71ea', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5d19dc1f-cf23-4780-8e29-09a5e8903b12', 'Pengelolaan Data dan Implementasi Sistem Informasi Pemerintah Daerah Lingkup Keuangan Daerah', 'KEGBPKAD13', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5eb0d0d9-1c4c-490e-a357-98a9f93fe7be', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD07', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6003af74-3ace-4500-abff-1229a1a7c7f1', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6865bfd3-1168-4519-88cd-f91e9fed821b', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('695be588-eda7-44ec-b19d-09d3fd8309e1', 'Administrasi Kepegawaian Perangkat Daerah', 'KEGBPKAD04', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6b7e83da-2b0b-4fb9-82e8-28d432cac214', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('758ad091-d22d-4d9a-acd4-2e5533eade27', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7756b93d-ec62-4c77-84e3-bd94e74c13ae', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD02', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('79ea9ab9-e506-41f4-8d06-f14601ebcdd2', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7b1ad48c-db5e-455e-bacc-4b0d5c1bd353', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7bce2f2b-5555-4827-954b-a1f279415a27', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7d26c35a-4182-4320-9466-1fc4e1267eb0', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7d48b277-563a-48bc-ae65-4e04586a26ce', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7f131b61-1753-466d-ad54-7d4b8f76c224', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('808f2a6a-08f1-4608-8f55-8df893651488', 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', 'KEGBPKAD11', '76a67c8c-1cad-4108-a6e0-a0765536f90b', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('81f4a980-c290-42b1-bdc5-d4c3f18e1d20', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('827def30-1c95-443d-b108-0b3b0759c04d', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('84a207ca-1861-4b58-a34c-b10be918ed69', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('86ee3253-2556-43f8-8781-6b993ed89719', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('87549f05-f571-4f43-bdfd-13499deaf655', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('87fa9a99-b30c-4e8b-a656-6a72f5b5577e', 'Penunjang Urusan Kewenangan Pengelolaan Keuangan Daerah', 'KEGBPKAD12', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('8a7f7a67-d0b7-4d14-8bca-9bc15c77a758', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('8fc9e0ed-c8b3-44ed-92a6-d7a9416bafcf', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('919261c8-588c-4b5b-a4f9-abb4357ee4ea', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '913ffcc7-f916-4522-be03-ad9378bd1235', 'e5614cbb-60a8-494d-9cc3-f79ec1ccc571', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('94fba943-86ab-4eab-8ede-febd6812581f', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('95a6408e-a550-40d6-9d00-bca9036dc387', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('95ed3c9f-1420-4ca4-919c-a6bfb3baca6b', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD07', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('9963e108-6d37-47c8-a063-5d71272dc4b5', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD15', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('99bf009b-e1e8-4f21-aa50-f54c53978479', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('9ac722d4-55ba-4b3b-a0d7-c703d6ae0a80', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('9ae1f2e4-b86e-49f8-bed6-03804f4084dc', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('9d9f5286-cc61-4a05-a2e2-96ad97968854', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD15', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a0e22ccd-78b5-4350-b517-18c40ef39d3f', 'Administrasi Kepegawaian Perangkat Daerah', 'KEGBPKAD04', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a1ad6865-bdd7-49be-adf0-1fc94df29780', 'Penunjang Urusan Kewenangan Pengelolaan Keuangan Daerah', 'KEGBPKAD12', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a2c92855-042e-4452-b217-f159a1f60efe', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a30976d3-03f7-4b56-a424-cfc21f8adbcc', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a31153f1-52e7-4e31-b187-aedecd3b2459', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ab685c48-df4b-4f67-a732-446f5145ed52', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD06', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ae125421-0e34-400e-a0c5-b07ee3b74cfa', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('aee68160-9a1f-496b-9845-1be5f05f43fb', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('aff0b7ef-8dd9-42bf-98aa-7b35a300084d', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b45c54fd-1162-4daf-90c4-f50c25e7118a', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b558c179-a84b-4090-be3a-d66e62de9157', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('bc7f3032-e4c0-498d-bf01-98a06767a78c', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('be866d98-ca40-4c8f-a892-04a1051aa3c3', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c1ed591f-8e20-4bec-9ca4-f4878632c341', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c3ff879f-8b41-4628-86ff-80b96a15a9a9', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c4ae15e4-773f-4e92-ad48-30d16f67245c', 'Pengelolaan Data dan Implementasi Sistem Informasi Pemerintah Daerah Lingkup Keuangan Daerah', 'KEGBPKAD13', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c746ba0c-ecb3-4fc6-9d68-1b09ec2915df', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD15', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c8735be2-68c1-4275-aa17-acfbab9e4508', 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', 'KEGBPKAD16', '332c016c-95aa-4319-a985-540074eaee8e', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('cab69a7b-419d-4b62-91c2-247a4977203a', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', 'KEGBPKAD07', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('cb3cf6c6-db46-48e9-b7fb-c98bf5f30e8f', 'Penunjang Urusan Kewenangan Pengelolaan Keuangan Daerah', 'KEGBPKAD12', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ce83015b-0808-4f7d-a2e8-1d1b92341abe', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('cfe8bd80-eb0b-4104-b443-45a8032ec7e7', 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', 'KEGBPKAD09', 'bca38a19-13c9-4492-93ed-1a4c993db5c1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d27f59b7-9867-407a-af5a-205f13a438f0', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d2ae9967-3505-4667-a70f-0c54c82ec901', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD15', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d4b9fe93-47e8-4c39-bf8f-52f7738f31c0', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d53b2dde-d74d-4884-adb9-f29ca17e3cfb', 'Penunjang Urusan Kewenangan Pengelolaan Keuangan Daerah', 'KEGBPKAD12', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d5c7c9fa-a1bf-48a9-a785-2a2ff7dadcbd', 'Administrasi Barang Milik Daerah pada Perangkat Daerah', 'KEGBPKAD03', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('da50f6eb-b703-45d8-8b7b-0ff8e5014877', 'Administrasi Barang Milik Daerah pada Perangkat Daerah', 'KEGBPKAD03', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('db435d3f-c39b-4277-b54c-1a0d69908ef2', 'Administrasi Kepegawaian Perangkat Daerah', 'KEGBPKAD04', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e0ad2987-3cd3-4c5a-b9c2-155a814e4ddf', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', 'e25f6439-f100-4b14-b4cd-2a2031e5da0d', '913ffcc7-f916-4522-be03-ad9378bd1235', '05ac3cbe-41ee-41c8-afb6-e146e4ec44bf', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e117c66b-ffe5-45fe-9ead-1f7894f708c8', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '332c016c-95aa-4319-a985-540074eaee8e', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e1965f03-a6f5-4c71-b7e7-8a993a990826', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD07', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e198e223-91c4-4cec-bf15-8489ff1992e9', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD07', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e2b58f75-967a-4f7b-8264-3d519d3a97ba', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', 'KEGBPKAD06', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e3bc1de6-5ef9-4d4d-80e3-8de7b9f1806b', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e7d5f6ac-cc75-41b1-b206-15c89536044a', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'KEGBPKAD01', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ebf62689-ede6-43c5-af2a-06183c05e8db', 'Administrasi Kepegawaian Perangkat Daerah', 'KEGBPKAD04', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ebf7798b-2450-43c3-882d-b5ff3db53ccb', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('eef61132-411f-47eb-8257-5e11e27e0bc3', 'Pengelolaan Barang Milik Daerah', 'KEGBPKAD14', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '913ffcc7-f916-4522-be03-ad9378bd1235', 'e5614cbb-60a8-494d-9cc3-f79ec1ccc571', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f449690c-4133-497e-8cda-b6a46496d918', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD07', '08d960e7-9df0-4f22-8f1f-cc2dc124bb60', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f469d79c-5f54-4d91-a9cf-3e56696eb81b', 'Administrasi Umum Perangkat Daerah', 'KEGBPKAD05', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f6ba0c6f-e10a-4ed1-aa1e-ade20595bfee', 'Administrasi Keuangan Perangkat Daerah', 'KEGBPKAD02', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fac619ca-8230-4814-aece-831d923c71b6', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'KEGBPKAD08', '2238f70e-2ed2-4ff4-a7a6-f63485ba9909', '212df796-6f75-11ed-8dbf-244bfebc253d', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fdbcfb0d-c89d-4da4-8140-f149f1184aac', 'Pengelolaan Data dan Implementasi Sistem Informasi Pemerintah Daerah Lingkup Keuangan Daerah', 'KEGBPKAD13', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', 'dd10a979-6f77-11ed-8dbf-244bfebc253d', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fe8cbadf-2a8b-4134-902c-60765e12915b', 'Pembinaan Pengelolaan Keuangan Daerah Kabupaten/Kota', 'KEGBPKAD10', '82252c02-5b56-46fe-91d5-00549bc691dc', 'd6557161-cf3f-427f-b3cd-bdddecf4326a', '3837b088-9300-4d87-8f35-ffe5724428de', '2022', '2022-11-29 00:38:05', '2022-11-29 00:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `kode_rekening`
--

CREATE TABLE `kode_rekening` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rekening` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_rekening` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kode_rekening`
--

INSERT INTO `kode_rekening` (`id`, `nama_rekening`, `kode_rekening`, `ref`, `created_at`, `updated_at`) VALUES
('104c186e-a1f5-4ad6-aa42-ecc5c53fade7', 'Pendapatan Transfer Pemerintah Pusat', '4.2.01', '5.1.1.2.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('12f2184a-64ae-486b-87f0-1e01bdade29a', 'BELANJA', '5', '5.1.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('15ba1daa-6fe4-4a0a-b26e-9c2d8386ee9a', 'BELANJA MODAL', '5.2', '5.1.2.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('1a9cda46-90e7-4de8-bb36-1b8382298b71', 'Penerimaan Pinjaman Daerah', '6.1.04', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('1ca7546f-4916-4263-b789-0cd13dcab131', 'Sisa Lebih Pembiayaan Anggaran Daerah Tahun Berkenaan', '6.3', '5.1.4.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('2395266e-33f3-49d7-9aa5-24229c3e47dc', 'Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', '6.1.01', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('2ddf17b1-ca72-4cc7-b031-0a32098c19f5', 'Pendapatan Hibah', '4.3.01', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('30149811-05ef-456f-a1ca-dfa9dc8a3c70', 'Belanja Bunga', '5.1.03', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('33194299-09bf-478b-9aad-cce6b83dddd9', 'Belanja Modal Jalan, Jaringan, dan Irigasi', '5.2.04', '5.1.2.2.4', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('36c0cae6-ab2d-41f3-9e15-b4d2316c63fc', 'Belanja Modal Peralatan dan Mesin', '5.2.02', '5.1.2.2.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('376ef149-da17-41d6-8fd1-9308d1c9f302', 'PENERIMAAN PEMBIAYAAN', '6.1', '5.1.4.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('41d7f2c2-06a0-423f-af0a-37c4159637b2', 'Pajak Daerah', '4.1.01', '5.1.1.1.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('473a03c0-bd2d-491a-99a3-f0b13da22f6c', 'Belanja Bagi Hasil', '5.4.01', '5.1.3.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('6c513169-3439-472e-86f2-4cc6097f3729', 'PENGELUARAN PEMBIAYAAN', '6.2', '5.1.4.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('7a059d37-b922-4404-b04f-dc0099383341', 'PENDAPATAN DAERAH', '4', '5.1.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('80f55efc-4f96-410d-a2ae-ee1047f9aa3c', 'Belanja Modal Aset Tetap Lainnya', '5.2.05', '5.1.2.2.5', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('92d3d27a-c547-42b8-9b1c-ad1393ebf964', 'BELANJA TRANSFER', '5.4', '5.1.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('9e77a247-80e3-4258-b47c-44ef7c2684cf', 'Belanja Hibah', '5.1.05', '5.1.2.1.4', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('a3e19c03-8855-4fae-98bb-2959664fae63', 'Belanja Tidak Terduga', '5.3.01', '5.1.2.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('a445836c-9848-4223-80e9-190b15ddab48', 'Belanja Barang dan Jasa', '5.1.02', '5.1.2.1.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('a9a250f2-a6c8-4443-85b8-771982595f90', 'PEMBIAYAAN', '6', '5.1.4', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('ac5c07a4-d510-4a9c-bb62-2e80b1e1b730', 'LAIN-LAIN PENDAPATAN DAERAH YANG SAH', '4.3', '5.1.1.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('ad230c56-94b7-43c5-a1ae-c984a0eda770', 'BELANJA TIDAK TERDUGA', '5.3', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('c15657c4-9318-4fe5-a9f5-5792a94a8614', 'BELANJA OPERASI', '5.1', '5.1.2.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('c64aaf6b-1084-49db-9f5f-1feb02017b08', 'PENDAPATAN TRANSFER', '4.2', '5.1.1.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('d813ccb5-70e1-4fe9-9fea-ec7635ad0774', 'Retribusi Daerah', '4.1.02', '5.1.1.1.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('d90e4d1d-6f81-4f0a-952f-a9a8bb7095d8', 'Belanja Bantuan Sosial', '5.1.06', '5.1.2.1.5', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('db186957-15ea-41b5-b715-89447f7c3782', 'Pendapatan Transfer Antar Daerah', '4.2.02', '5.1.1.2.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('dbf1c5a2-90dd-4d05-8630-d81e63fb80f1', 'Belanja Modal Gedung dan Bangunan', '5.2.03', '5.1.2.2.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('e9f7b96c-7fde-4f7b-9199-77f69ab348b9', 'Belanja Subsidi', '5.1.04', '5.1.2.1.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('edc23423-7172-43f1-97ba-022e01076458', 'Belanja Modal Tanah', '5.2.01', '5.1.2.2.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('ee4ada13-fb95-49a9-90a1-23bcf6b5e2ed', 'Belanja Bantuan Keuangan', '5.4.02', '5.1.3.2', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('f0464081-11b8-45c0-9ea3-edd42c53993f', 'Penyertaan Modal Daerah', '6.2.02', '-', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('f5632b3c-867d-4bdc-b57b-5ccdd1b862d8', 'PENDAPATAN ASLI DAERAH (PAD)', '4.1', '5.1.1.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('f773ce97-80b1-4f25-a1ba-c5e4cdfb0896', 'Hasil Pengelolaan Kekayaan Daerah yang Dipisahkan', '4.1.03', '5.1.1.1.3', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('fc3e70cc-d8a9-4686-8571-8ef9b0427000', 'Lain-lain PAD yang Sah', '4.1.04', '5.1.1.1.4', '2022-06-19 15:44:18', '2022-06-19 15:44:18'),
('fd658b86-dbd5-4014-82d1-bfdf99dcc8a8', 'Belanja Pegawai', '5.1.01', '5.1.2.1.1', '2022-06-19 15:44:18', '2022-06-19 15:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_04_25_163814_create_laporan_realisasi_anggaran', 1),
(6, '2022_04_26_013320_add_foreign_to_laporan_realisasi_anggaran', 1),
(7, '2022_04_26_033255_create_schedule', 1),
(8, '2022_04_26_033554_add_foreign_to_schedule', 1),
(9, '2022_04_28_094229_create_kode_rekening', 1),
(10, '2022_06_20_081059_create_apbd', 1),
(11, '2022_07_01_110905_create_divisi', 1),
(12, '2022_10_17_101855_create_sasaran_strategis', 1),
(13, '2022_10_17_101856_create_indikator_kinerja', 1),
(14, '2022_10_17_101857_create_formulasi', 1),
(15, '2022_10_17_102246_create_iku_realisasi', 1),
(16, '2022_10_17_102957_add_foreign_divisi_to_formulasi', 1),
(17, '2022_10_17_103102_add_foreign_to_iku_realisasi', 1),
(18, '2022_10_17_103111_add_foreign_indikator_kinerja_to_formulasi', 1),
(19, '2022_10_19_112527_create_program_anggaran_iku', 1),
(20, '2022_10_22_150045_add_foreign_divisi_to_users', 1),
(21, '2022_10_27_203435_add_foreign_apbd_to_realisasi_anggaran', 1),
(22, '2022_10_27_210402_add_foreign_user_to_apbd', 1),
(23, '2022_11_19_161258_create_golongan', 1),
(24, '2022_11_19_161334_create_pangkat', 1),
(25, '2022_11_19_161335_create_pegawai', 1),
(26, '2022_11_19_162501_add_foreign_pagol_to_pegawai', 1),
(27, '2022_11_28_013108_create_realisasi_capaian', 2),
(28, '2022_11_28_013403_create_kegiatan_iku', 3),
(29, '2022_11_28_013415_create_sub_kegiatan_iku', 4),
(30, '2022_11_28_013430_create_file_iku', 5),
(31, '2022_11_28_014409_add_foreign_to_realisasi_capaian', 6),
(32, '2022_11_28_014713_add_foreign_to_kegiatan_iku', 7),
(33, '2022_11_28_014828_add_foreign_to_sub_kegiatan_iku', 8),
(34, '2022_11_28_015146_add_foreign_to_file_iku', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pangkat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id`, `nama_pangkat`, `created_at`, `updated_at`) VALUES
('154abb69-b672-45fd-8397-0d96afbe9766', 'II/A', '2023-01-04 18:35:47', '2023-01-04 18:35:47'),
('254f8ec9-5441-4749-acf9-da7b5043875e', 'III/A', '2023-01-04 18:36:04', '2023-01-04 18:36:04'),
('2a906eaa-67e8-11ed-afd0-244bfebc253d', 'Penata Tingkat I', NULL, NULL),
('3ce548ce-67e8-11ed-afd0-244bfebc253d', 'Pembina Tingkat I', NULL, NULL),
('462ee31c-1842-4137-824f-dd3cdee91b47', 'IV/D', '2023-01-04 18:36:45', '2023-01-04 18:36:45'),
('5eaf3f64-8340-468f-a89e-7f467a1dadfd', 'I/B', '2023-01-04 18:34:05', '2023-01-04 18:34:05'),
('64798051-9fcc-4fa0-8805-cb656e71bf7f', 'I/A', '2023-01-04 18:33:57', '2023-01-04 18:33:57'),
('66758bf3-3a4e-495e-b86d-ac9e505b6060', 'II/B', '2023-01-04 18:35:50', '2023-01-04 18:35:50'),
('7972c67a-4415-4568-b76f-5a022dfac1f7', 'IV/A', '2023-01-04 18:36:31', '2023-01-04 18:36:31'),
('940e6151-1354-4960-98c8-8082515c3055', 'I/D', '2023-01-04 18:35:42', '2023-01-04 18:35:42'),
('a63b9995-0e49-4867-9b25-028fbbb195c8', 'IV/E', '2023-01-04 18:36:49', '2023-01-04 18:36:49'),
('a65b2c45-0752-47e7-9425-46da8f40b992', 'IV/B', '2023-01-04 18:36:36', '2023-01-04 18:36:36'),
('b58eb1f4-55a4-4cae-9709-b50565c2a073', 'II/D', '2023-01-04 18:35:59', '2023-01-04 18:35:59'),
('bb42d0b6-bdd4-428c-b094-4c964f9fb288', 'III/D', '2023-01-04 18:36:20', '2023-01-04 18:36:20'),
('c2df4423-fcab-4825-8ba8-648aecd9976b', 'II/C', '2023-01-04 18:35:55', '2023-01-04 18:35:55'),
('d74dea2c-343b-48df-8af9-0376f1a442ed', 'I/C', '2023-01-04 18:35:35', '2023-01-04 18:35:35'),
('e41a0095-9859-4792-b54e-c77a528f861d', 'IV/C', '2023-01-04 18:36:41', '2023-01-04 18:36:41'),
('e9a45da9-c277-48f2-b12d-e1ea560660f7', 'III/B', '2023-01-04 18:36:09', '2023-01-04 18:36:09'),
('fe7ea2cc-0cb9-47c2-a88f-8683db745262', 'III/C', '2023-01-04 18:36:14', '2023-01-04 18:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_use` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` bigint DEFAULT NULL,
  `jabatan` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_kerja_golongan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diklat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` enum('islam','hindu','budha','kristen','konghucu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kenaikan_pangkat_tahun_berikutnya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batas_pensiun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golongan_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bidang_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `user_id`, `nip`, `jabatan`, `masa_kerja_golongan`, `diklat`, `pendidikan`, `usia`, `jenis_kelamin`, `agama`, `kenaikan_pangkat_tahun_berikutnya`, `batas_pensiun`, `golongan_id`, `pangkat_id`, `bidang_id`, `created_at`, `updated_at`) VALUES
('4bfbea08-67e6-11ed-afd0-244bfebc253d', '30ab4da4-6ba2-4b8d-8404-08b51e995f30', 198103152006041013, 'Kepala Sub Bagian Program', '14 thn, 9 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Pengembangan Sumber Daya Manusia Daerah ]\r\n( 2018 )', 'Pasca Sarjana\r\nMagister Manajemen\r\nUniversitas Mataram\r\n( 2011 )', '41', 'laki-laki', 'islam', '1 Oktober 2021', '2031', '512ff834-67e8-11ed-afd0-244bfebc253d', '2a906eaa-67e8-11ed-afd0-244bfebc253d', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', NULL, NULL),
('a4e792a3-67e6-11ed-afd0-244bfebc253d', 'cd9779d4-fbf9-432b-89e9-88b35e2882f0', 197501081993011001, 'Sekretaris Badan', '24 thn, 00 bln', 'Pendidikan dan Pelatihan Kepemimpinan Tingkat IV (Diklat PIM Tk. IV)\r\n( Diklat Pim.Tk.IV )\r\n[ Badan Kepegawaian Daerah dan Pendidikan Pelatihan ]\r\n( 2016 )', 'Pasca Sarjana\r\nMagister Perencanaan Kota dan Daerah\r\nUniversitas Gadjah Mada\r\n( 2003 )', '48', 'laki-laki', 'islam', '-', '2038', '48927ded-67e8-11ed-afd0-244bfebc253d', '3ce548ce-67e8-11ed-afd0-244bfebc253d', '030dcf28-8763-41c2-9359-26a36e8a814b', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_anggaran_iku`
--

CREATE TABLE `program_anggaran_iku` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_program` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran` bigint NOT NULL,
  `anggaran_terpakai` bigint NOT NULL,
  `persentase_anggaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_anggaran_iku`
--

INSERT INTO `program_anggaran_iku` (`id`, `program`, `kode_program`, `anggaran`, `anggaran_terpakai`, `persentase_anggaran`, `keterangan`, `created_at`, `updated_at`) VALUES
('212df796-6f75-11ed-8dbf-244bfebc253d', 'Program Penunjang Urusan Pemerintahan Daerah Provinsi', 'PRBPKAD03', 10000000000000, 0, '90', '', NULL, NULL),
('913ffcc7-f916-4522-be03-ad9378bd1235', 'Program Pengelolaan Barang Milik Daerah', 'PRBPKAD01', 1473114400, 0, '0.00', 'APBD Mendukung Sasaran Strategis dan Indikator Kinerja No. 2 dan 3,4', '2022-10-25 07:44:28', '2022-10-25 07:44:28'),
('d6557161-cf3f-427f-b3cd-bdddecf4326a', 'Program Pengelolaan Keuangan Daerah', 'PRBPKAD02', 899899545404, 90000000000, '10.00', 'APBD Mendukung Sasaran Strategis dan Indikator Kinerja No. 1', '2022-10-25 07:41:21', '2022-10-26 18:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `realisasi_anggaran`
--

CREATE TABLE `realisasi_anggaran` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran_terealisasi` bigint NOT NULL,
  `tahun_anggaran` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realisasi_anggaran`
--

INSERT INTO `realisasi_anggaran` (`id`, `kode_rekening`, `anggaran_terealisasi`, `tahun_anggaran`, `user_id`, `created_at`, `updated_at`) VALUES
('02faec7c-0b9b-4171-92d5-c2fa041570b6', '5.4.02', 3586224000, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:48:09'),
('0579d899-c37d-4b86-bf1b-090535f8d7a4', '4.2.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('070ac2b7-de0f-4c0a-95fc-4e4a0b52b53e', '4.2.02', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('08f98ac7-8e10-4304-b934-6220d8d25e1c', '5.4.01', 718496990204, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:47:50'),
('0cda3d4c-10ee-482d-9149-58e54c1b9ee1', '4.3.01', 30663704771, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:24:22'),
('0f1d4d2a-4211-4c5f-aef5-f09efc5e9ca0', '6.2.02', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('109e9b7c-c85c-4cca-9542-a640e1718bfe', '5.2.03', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('12282e3c-a59d-4eb3-8e5c-1df6154a68b4', '4.3', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('1303ef80-cd81-439a-be4a-44c6303bb2e1', '4.3.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('170d026b-a742-4661-bde2-1e747399354f', '5.1.03', 33673131417, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:25:15'),
('1835ba5f-7a4b-45c1-9e09-c0f6611b67f0', '6', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('20bc0b1f-2349-427e-b136-24745a5b446d', '5.1.04', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('2444edc9-dc9a-41ab-b097-f8be5be81ed7', '4.1.02', 7006296627, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:01:50'),
('26c9b265-6527-4c44-b268-84e21c0d5c63', '4.2.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('2713cbd9-8303-422a-9985-bc2071c4dc5b', '6.2.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('37fbb09e-2db5-4704-8163-d9949071d534', '5.2.04', 248904927159, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:46:29'),
('3839327c-7d3d-4a57-8f1d-ecba7323018d', '5.4', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('3de5e6de-4dcf-40b1-89dd-8868f5667a0b', '4.1.04', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('3e039c57-0c0c-4218-aaec-c866f8b2b151', '5.1.06', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('452b842f-1ccb-4b4e-9bfc-98722e92abe8', '6.1', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('45413127-6d84-42a1-82c6-d955f6ea6fda', '5.1.03', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('47773a9b-55b6-40eb-b589-e0f4f30f555d', '5.1.04', 158008320, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:25:30'),
('497ffd96-c6c8-4927-8c2c-68970ebb0b06', '6.1.01', 84156506495, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:48:35'),
('4b7726b9-0b76-4627-9399-8430104eee50', '5.3', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('4efb4f0e-a2a3-49db-a54b-1781a87d28b1', '5.1.05', 156499706113, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:25:48'),
('4f4c06fc-5e26-4ec8-8850-96dcb8d0f294', '5.3', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('53bbbf44-b6c4-40b6-abdc-1ef801ec2dbe', '4.2.01', 2045727151400, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:19:35'),
('58de94d1-46f8-46c4-9ea7-ca049836a925', '4.1.04', 345515587087, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:15:09'),
('5ba60f1b-775c-430d-a18b-474e043cfb00', '6.3', 730353069382, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('5c30d78e-83b8-4d36-95d8-0018f9662458', '5.2.04', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('646806b1-f6cc-42d8-96ce-6099f2b62333', '5.1.05', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('66a5f458-be2b-4349-91c3-c76720dcb2cf', '5.2', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('6979ed5c-84e4-45f5-90f3-4428e4d5f9b1', '5.4', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('71ac27f7-1504-468f-a4e9-08f9f0391d06', '5.2.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('730c49bc-4002-4ccb-8d8a-14f8840f9adf', '5', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('768745f4-7aac-4385-98b3-f6d0224c63c1', '5.1.02', 927491270310, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:24:54'),
('772741ac-48cc-4df0-8e88-ce66ebfeee05', '5.2.03', 268965424731, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:45:08'),
('7730e609-43a7-4951-9d13-8db80dce9aee', '5.4.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('83b29e19-77d8-412b-87d4-2b606e524d2f', '4.1.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('8402f54c-f23c-4bfe-8453-2fa2d0b33cfe', '4.1.01', 1481052576690, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:01:25'),
('84f943b4-615b-4571-8809-e8cfd409363e', '5', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('854935b7-a522-42eb-bfa1-9b70040b3c28', '4.1', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('859bc59f-06d5-4b55-a081-93cbbf047ded', '5.2', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('891ee406-c8d1-40bb-ba3e-1038704c0670', '4', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('913a4686-0379-421f-af7a-6bef516d1f2b', '4.1.03', 50066955897, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 14:04:50'),
('955fd290-f773-4e92-bedf-db37f2baa2b2', '5.1.06', 1421450000, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:26:07'),
('9acc8ed0-25ab-46e7-ac86-f9b6315af684', '5.3.01', 437011668, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:47:17'),
('9c73936d-9595-4956-8ece-57de3b72053c', '6.1.05', 876000, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:53:12'),
('9d602f1c-0fe1-48f6-b68d-1d365f05eb31', '5.4.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('9deac22c-03c7-460f-b365-0c19e88a8026', '5.1.01', 1360908952194, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:24:25'),
('a2772473-4dc5-44b7-be70-a3f023a20e6b', '5.1.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('a704a38b-4ad0-4389-80e6-d7435cf7d6ac', '6.1.04', 549292350000, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:48:52'),
('a8a89ffc-7c60-4c14-bfd6-951182ac5595', '6.1.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('ae5457e5-274c-4d0a-9d78-3b90576afaa2', '4.1.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('b2c7e687-2721-4e2b-ac3b-8ab63fc8955c', '5.1', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('b2e04891-b8a5-445c-af03-f150389dc313', '6.2', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('b645e123-ff38-43a1-ac59-949acede0364', '5.2.05', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('b76334b3-c0cd-4972-a656-28d1c48f0b57', '5.3.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('ba762447-f34f-471c-8750-1fc8a822218f', '4.1', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('bcd945c6-c862-4e9e-bea8-0b9634c4bc3a', '5.1.01', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('bd0f01d8-605e-4432-9639-889c5090ac01', '5.2.02', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('c0b3bddd-4dab-4208-b070-732e996cd9aa', '4.1.03', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('d2a80b81-86d8-47d1-8aaa-c6b00b3c7094', '5.2.02', 123863899111, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:44:41'),
('d8380df5-de39-4285-9da9-bcb93e41eed0', '6', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('e24dd4da-ac67-4973-beb0-229fd809205f', '4.2', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('e2d2783a-a04d-47b0-84b7-6f04091f02bc', '6.3', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('e3029d71-4492-4efd-a9ee-e1ec7439bc61', '5.2.05', 9248161680, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:47:01'),
('e3959cf8-d955-439a-b3f8-73c0d7a55936', '6.1.04', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('eb03773f-6710-4ae0-ba4a-8f1e4b14a9ed', '4', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('ec5bd67f-f773-413b-8fc5-5c0da020c978', '6.2', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('ef6b2c56-e3ad-444f-b8d6-07ce355fca1a', '5.2.01', 9473818668, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 18:44:21'),
('f2ab8180-b0b7-4fd2-bc89-05b79029d1a2', '4.3', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('f408a198-7c94-4cef-9bc8-508451d5b722', '6.1', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22'),
('f88a8c64-7e24-4858-9345-db4e0b9caa98', '5.1', 0, '2022', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:41', '2022-11-17 09:52:41'),
('ff085f3a-173b-4881-9358-ce12e3d37c58', '4.2', 0, '2021', 'c760170f-f055-11ec-aceb-244bfebc253d', '2022-11-17 09:52:22', '2022-11-17 09:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_strategis`
--

CREATE TABLE `sasaran_strategis` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran_strategis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sasaran_strategis`
--

INSERT INTO `sasaran_strategis` (`id`, `sasaran_strategis`, `created_at`, `updated_at`) VALUES
('80234291-662c-465f-b514-464989a9cb91', 'Meningkatnya Akuntabilitas Pengelolaan Keuangan dan Aset Daerah Provinsi NTB', '2022-10-17 22:49:21', '2022-10-19 05:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_acara` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_acara` date NOT NULL,
  `jam_acara` time NOT NULL,
  `lokasi_acara` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redaksi_acara` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `acara_dari` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_kegiatan_iku`
--

CREATE TABLE `sub_kegiatan_iku` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kinerja` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_kinerja` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kegiatan_iku` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persentase` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kegiatan_iku`
--

INSERT INTO `sub_kegiatan_iku` (`id`, `sub_kegiatan`, `indikator_kinerja`, `target_kinerja`, `kode_kegiatan_iku`, `persentase`, `created_at`, `updated_at`) VALUES
('061edc52-622c-4b0a-abcb-7870b27d2e69', 'Penatausahaan Barang Milik Daerah pada SKPD', 'Jumlah Dokumen Penatausahaan Barang Milik Daerah pada SKPD', '2 Dokumen', 'KEGBPKAD03', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('09a008c2-c760-4fc8-b3c3-4ef8353e23cd', 'Pengadaan Peralatan dan Mesin Lainnya', 'Jumlah Peralatan dan Mesin Lainya yang diadakan ', '8 Unit', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('0b1d324c-b77d-4486-afbf-1e8861c32542', 'Penyusunan Kebijakan dan Panduan Teknis Operasional Penyelenggaraan Akuntansi Pemerintah Daerah', 'Jumlah Kebijakan dan Panduan Teknis Operasional Penyelenggaraan Akuntansi Pemerintah Daerah ', '1 Dokumen', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('124097f1-7e5a-4635-9dec-e0bb71a7949f', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', 'Jumlah Surat Kabar dan Buku tentang Pengelolaan Keuangan Daerah yang tersedia', '5477 Eksmpler', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1244cfaa-8fe6-446f-a9bf-ff23d5bc87d1', 'Koordinasi, Pelaksanaan Kerjasama dan Pemantauan Transaksi Non Tunai dengan Lembaga Keuangan Bank dan Lembaga Keuangan Bukan Bank', 'Jumlah Dokumen Hasil Koordinasi, Pelaksanaan Kerja Sama dan Pemantauan Transaksi Non Tunai dengan Lembaga Keuangan Bank dan Lembaga Keuangan Bukan Bank', '4 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('130c059d-1070-4c8b-97ac-2b9e889b5334', 'Pemeliharaan Mebel', 'Jumlah Mebel yang dipelihara ', '104 Mebel', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('13309af8-c199-4f05-abec-14b3614e88f5', 'Pengamanan Barang Milik Daerah', 'Jumlah Dokumen Berita Acara Penyelesaian Kasus Sengketa Aset Tanah dan Bangunan', '5 Dokumen', 'KEGBPKAD14', 80, '2022-11-29 00:38:05', '2022-12-01 13:22:48'),
('13c29f42-7040-4be6-a4ca-06fac62237cd', 'Pembinaan Penatausahaan Keuangan Pemerintah Kabupaten/Kota', 'Jumlah Orang yang Mengikuti Pembinaan Penatausahaan Keuangan Pemerintah Kabupaten/Kota', '59 Orang', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('156c15d7-2756-48a1-9785-dceaa03937c9', 'Koordinasi, Penyusunan dan Verifikasi Perubahan RKA-SKPD', 'Jumlah Perubahan RKA-SKPD yang Diverifikasi  ', '136 Dokumen', 'KEGBPKAD09', 2.2058823529412, '2022-11-29 00:38:05', '2022-12-15 23:27:00'),
('184930a6-8790-4795-94d9-27f17b2235e1', 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Gedung Kantor atau Bangunan Lainnya', 'Jumlah Sarana Prasarana Gedung Kantor lainnya yang Terpelihara ', '59 M2/Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1b9386e4-832d-462c-97a0-a8efc9d04468', 'Koordinasi dan Penyusunan Laporan Keuangan Pemerintah Daerah Konsolidasian Provinsi dan Kabupaten/Kota dan Statistik Keuangan Pemerintahan Daerah', 'Jumlah Dokumen Hasil Koordinasi dan Penyusunan Laporan Keuangan Pemerintah Daerah Konsolidasian Provinsi dan Kabupaten/Kota dan Statistik Keuangan Pemerintahan Daerah', '1 Dokumen', 'KEGBPKAD10', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('1fb82318-4f9f-45af-aa78-ef1988585fb9', 'Pembinaan Pengelolaan Barang Milik Daerah Pemerintah Kabupaten/Kota', 'Jumlah Orang yang Mengikuti Pembinaan Pengelolaan Barang Milik Daerah Pemerintah Kabupaten/Kota', '21 Orang', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('238d0b46-1edb-401c-9641-610fd3e7ce40', 'Bimbingan Teknis Implementasi Peraturan Perundang-Undangan', 'Jumlah Peserta Bimtek', '136 Orang', 'KEGBPKAD04', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('25fda305-bc12-4de9-9c6c-79e9be46512e', 'Rekonsiliasi Data Penerimaan dan Pengeluaran Kas Serta Pemungutan dan Pemotongan Atas SP2D dengan Instansi Terkait', 'Jumlah Dokumen Hasil Rekonsiliasi Data Penerimaan dan Pengeluaran Kas serta Pemungutan dan Pemotongan atas SP2D dengan Instansi Terkait', '136 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2751772a-5405-4385-8598-b4b9b8d8738f', 'Koordinasi dan Penyusunan Dokumen Perubahan RKA-SKPD', 'Jumlah Dokumen Perubahan RKA SKPD yang Tersusun ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2a49ff37-369a-46ab-bd23-10e3e862f2d8', 'Penyediaan Administrasi Pelaksanaan Tugas ASN', 'Jumlah ATK yang dibutuhkan ', '5 Jenis', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2a70d158-3e0c-4d16-ab01-15e41a32469c', 'Penyusunan Kebijakan Pengelolaan Barang Milik Daerah', 'Jumlah Kebijakan Pengelolaan Barang Milik Daerah', '2 Dokumen', 'KEGBPKAD14', 100, '2022-11-29 00:38:05', '2022-11-29 22:32:06'),
('2ba395f9-7db3-4587-bcbe-8c0b905014eb', 'Koordinasi dan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD', 'Jumlah Dokumen Capaian Kinerja dan Ikhtiar Realisasi SKPD ', '1 Dokumen', 'KEGBPKAD15', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2c31cd59-d8cc-400d-89d5-a68937c41220', 'Pendidikan dan Pelatihan Pegawai Berdasarkan Tugas dan Fungsi', 'Jumlah ASN yang mengikuti Diklat Formal', '5 Orang', 'KEGBPKAD04', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2e021b77-192f-447b-9b7b-a7033a0be4a6', 'Penyusunan Standar Harga', 'Jumlah Standar Harga yang Disusun', '1 Dokumen', 'KEGBPKAD14', 100, '2022-11-29 00:38:05', '2022-11-29 22:36:39'),
('2eb01cf2-4a33-4d53-8461-f4f8374b6df3', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 'Jumlah Rapat Koordinasi dan Konsultasi SKPD luar daerah dan dalam daerah ', '70 Kali', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('2ffacd8c-d146-4fdc-8e25-758fe9f7f6b9', 'Rekonsiliasi dan Penyusunan Laporan Barang Milik Daerah pada SKPD', 'Jumlah Dokumen Rekonsiliasi Barang dan Laporan Barang Milik Daerah SKPD', '2 Dokumen', 'KEGBPKAD03', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('354b2ca0-1463-4447-8f8b-d584bd418fe1', 'Koordinasi dan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD', 'Jumlah Dokumen Capaian Kinerja dan Ikhtiar Realisasi SKPD ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3591f533-0e93-4dc3-82a8-bfcf2c799b49', 'Evaluasi Rancangan Peraturan Daerah tentang Pertanggungjawaban Pelaksanaan APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Pertanggungjawaban Pelaksanaan APBD Kabupaten/Kota', 'Jumlah Laporan Evaluasi Rancangan Peraturan Daerah tentang Pertanggungjawaban Pelaksanaan APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Pertanggungjawaban Pelaksanaan APBD Kabupaten/Kota', '10 Laporan', 'KEGBPKAD10', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('35b8da04-486c-4caa-9593-b8052efe4e2b', 'Koordinasi dan Penyusunan Rancangan Peraturan Daerah tentang Pertanggungjawaban Pelaksanaan APBD Provinsi dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Pertanggungjawaban Pelaksanaan APBD Provinsi', 'Jumlah Rancangan Peraturan Daerah tentang Pertanggungjawaban Pelaksanaan APBD Provinsi dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Pertanggungjawaban Pelaksanaan APBD Provinsi  ', '2 Dokumen', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('378f89bd-907c-4ca3-b007-1a654e0eda4b', 'Koordinasi dan Penyusunan Peraturan Daerah tentang Perubahan APBD dan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD', 'Jumlah Peraturan Daerah tentang Perubahan APBD dan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD', '2 Dokumen', 'KEGBPKAD09', 100, '2022-11-29 00:38:05', '2022-12-05 03:24:15'),
('37af4263-348d-4070-ae99-b5b0e274d346', 'Analisis Perencanaan dan Pelaksanaan Pembayaran Cicilan Pokok dan Bunga Pinjaman Pemerintah Daerah', 'Persentase Pembayaran Cicilan Pokok Utang Pinjaman Daerah ', '100 Persen', 'KEGBPKAD12', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3a2e0f95-4219-4fac-b641-5b3291b728cc', 'Konsolidasi Laporan Keuangan SKPD, BLUD dan Laporan Keuangan Pemerintah Daerah', 'Jumlah  Laporan Keuangan SKPD , BLUD dan Laporan Keuangan Pemerintah Daerah yang Terkonsolidasi', '1 Laporan', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3b86f1c7-c8cf-499f-9d5d-2100704c835a', 'Analisis Perencanaan dan Penyaluran Bantuan Keuangan', 'Tingkat Penyaluran Bantuan Keuangan ', '90 Persen', 'KEGBPKAD12', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3d261765-d698-494f-b639-2c7a9c1fc277', 'Koordinasi Penyusunan Laporan Pertanggungjawaban Pelaksanaan APBD Bulanan, Triwulanan dan Semesteran', 'Jumlah Laporan Pertanggungjawaban Pelaksanaan APBD Bulanan, Triwulan dan Semesteran', '17 Laporan', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3d5c8808-72d7-4260-8151-7dfc870d6e2f', 'Koordinasi dan Penyusunan Regulasi serta Kebijakan Bidang Anggaran', 'Jumlah Dokumen Regulasi serta Kebijakan Bidang Anggaran ', '1 Regulasi', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3e5053f8-5bb8-4cd9-b4bf-52a7b2b2de86', 'Penyediaan Gaji dan Tunjangan ASN', 'Jumlah ASN yang menerima Tunjangan dan Gaji ', '157 Orang', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('3e5d19f4-5f96-4521-bfb0-e59dbdc68db2', 'Pengawasan dan Pengendalian Pengelolaan Barang Milik Daerah', 'Jumlah Laporan Hasil Pengawasan dan Pengendalian Pengelolaan Barang Milik Daerah', '1 Laporan  ', 'KEGBPKAD14', 100, '2022-11-29 00:38:05', '2022-12-05 03:12:43'),
('4096ee09-e674-43b2-80f0-1e24da2fce23', 'Dukungan Pelaksanaan Sistem Pemerintahan Berbasis Elektronik pada SKPD', 'Jumlah Jasa Tenaga Informatika', '2 Orang', 'KEGBPKAD06', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('41964c00-b7be-4f81-89cc-baa42896c814', 'Pembinaan Akuntansi, Pelaporan dan Pertanggungjawaban Pemerintah Provinsi', 'Jumlah Orang yang Mengikuti Pembinaan Akuntansi, Pelaporan dan Pertanggungjawaban Pemerintah Provinsi', '59 Orang', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('422405e5-924c-4b14-a63b-fdae8befc163', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan dan Pajak Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', 'Jumlah Kendaraan Dinas Jabatan yang dipeihara ', '29 Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4a5aaebd-3ff3-4cc8-9de4-4ce4fad2b41b', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, Pajak dan Perizinan Kendaraan Dinas Operasional atau Lapangan', 'Jumlah Kendaraan Dinas Lapangan yang dipelihara ', '13 Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('4a5dc7d8-b437-409b-8613-74894e0ec9b7', 'Koordinasi dan Penyusunan Laporan Realisasi Penerimaan dan Pengeluaran Kas Daerah, Laporan Aliran Kas, dan Pelaksanaan Pemungutan/Pemotongan dan Penyetoran Perhitungan Fihak Ketiga (PFK)', 'Jumlah Laporan Realisasi Penerimaan dan Pengeluaran Kas Daerah, Laporan Aliran Kas, dan Pelaksanaan Pemungutan/Pemotongan dan Penyetoran Perhitungan Fihak Ketiga (PFK) dan Laporan Hasil Koordinasi dalam rangka Penyusunan Laporan Realisasi Penerimaan dan Pengeluaran Kas Daerah, Laporan Aliran Kas, dan Pelaksanaan Pemungutan/Pemotongan dan Penyetoran Perhitungan Fihak Ketiga (PFK)', '4 Laporan', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('510c693a-002d-4f6d-b95b-c9c7b0e3dc6a', 'Optimalisasi Penggunaan, Pemanfaatan, Pemindahtanganan, Pemusnahan, dan Penghapusan Barang Milik Daerah', 'Jumlah Dokumen Barang Milik Daerah yang Termanfaatkan Secara Optimal', '473 Dokumen', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('57410311-0a4a-4205-9e30-1688065d72e0', 'Penyusunan Pelaporan dan Analisis Prognosis Realisasi Anggaran', 'Jumlah Laporan dan Analis Progrnosis dan Realisasi ', '4 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('58558ce6-a522-44ef-9959-a762e6c9a08b', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', 'Jumlah Surat Kabar dan Buku tentang Pengelolaan Keuangan Daerah yang tersedia', '25 Eksampler', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5abd36f2-238e-40eb-8d3b-12c7f00808f2', 'Koordinasi dan Penyusunan Laporan Keuangan Bulanan/Triwulanan/Semesteran SKPD', 'Jumlah Laporan Keuangan Bulan/ Triwulan / Semesteran ', '17 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5b760378-489f-4a9f-849a-da11e5e3058f', 'Penyediaan Komponen Instalasi Listrik/Penerangan Bangunan Kantor', 'Jumlah Komponen Instalasi Listrik / Penerangan Bangunan Kantor yang tersedia', '12 Jenis', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5ba3aa64-f3d7-4f63-9ec1-52e254a60670', 'Penyediaan Jasa Surat Menyurat', 'Jumlah Surat Menyurat yang tersedia', '6500 Surat', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('5c6a80bb-72ff-4e81-8511-a0a67ceaad56', 'Rekonsiliasi dalam rangka Penyusunan Laporan Barang Milik Daerah', 'Jumlah Laporan Hasil Rekonsiliasi dalam rangka Penyusunan Laporan Barang Milik Daerah', '1 Laporan', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('622541ca-29af-4cf5-abd2-7cb6870c0fda', 'Penyusunan Laporan Barang Milik Daerah', 'Jumlah Laporan Barang Milik Daerah yang Disusun', '1 Laporan', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('62b70009-29ba-4d4f-a409-5b794b0f321b', 'Koordinasi, Penyusunan dan Verifikasi DPA-SKPD', 'Jumlah DPA-SKPD yang Diverifikasi', '136 Dokumen', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6317bdf2-e2f3-45bf-a871-044e9a9e1752', 'Evaluasi Kinerja Perangkat Daerah', 'Jumlah laporan Kinerja Perangkat Daerah ', '1 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6356ada8-4187-4c12-9e2f-942c92d68066', 'Penyusunan Pelaporan dan Analisis Prognosis Realisasi Anggaran', 'Jumlah Laporan dan Analis Progrnosis dan Realisasi ', '1 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6a589dc5-35be-49a7-b01b-93b7b85c9cc2', 'Koordinasi dan Penyusunan DPA-SKPD', 'Jumlah Dokumen DPA SKPD ', '1 Dokumen', 'KEGBPKAD15', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('6c4a4b70-671f-4372-8f78-1a4504df5e9d', 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Pendukung Gedung Kantor atau Bangunan Lainnya', 'Jumlah Sarana Prasaran Pendukung Gedung Kantor yang dipelihara ', '15 Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('72c17b13-2dba-42f5-8779-99f85e51d368', 'Penyusunan Dokumen Perencanaan Perangkat Daerah', 'Jumlah dokumen Renstra, Renja ', '2 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('76ac868e-a4d1-4399-be16-4d60d8de156b', 'Koordinasi dan Pelaksanaan Akuntansi SKPD', 'Jumlah Tenaga Administrasi Keuangan ', '1 Orang', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7744c417-70df-4bac-8b97-79d6e0486899', 'Penyediaan Jasa Surat Menyurat', 'Jumlah Surat Menyurat yang tersedia ', '450 Surat', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('79228191-83e1-4ebf-9820-5cd28acfa6f4', 'Rekonsiliasi dan Verifikasi Aset, Kewajiban, Ekuitas, Pendapatan, Belanja, Pembiayaan, Pendapatan-LO, dan Beban', 'Jumlah Dokumen Hasil Rekonsiliasi dan Verifikasi Aset, Kewajiban, Ekuitas, Pendapatan, Belanja, Pembiayaan,Pendapatan LO dan Beban ', '136 Dokumen', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('795367ae-42bc-4850-bdaa-466782d63647', 'Koordinasi dan Penyusunan Dokumen Perubahan RKA-SKPD', 'Jumlah Dokumen Perubahan RKA SKPD ', '1 Dokumen', 'KEGBPKAD15', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('79a2e9fb-2a77-4c5b-b82b-8a170095f462', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', 'Jumlah Jasa Listrik yang tersedia ', '1 Rekening', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7a5da535-efc4-497a-899e-c33212f67f23', 'Penyusunan Standar Barang Milik Daerah dan Standar Kebutuhan Barang Milik Daerah', 'Jumlah Standar Barang Milik Daerah dan Standar Kebutuhan Barang Milik Daerah', '2 Dokumen', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7cbaacad-12c7-4fec-86c8-1f5856d95bb2', 'Koordinasi, Penyusunan dan Verifikasi RKA-SKPD', 'Jumlah RKA-SKPD yang Diverifikasi', '136 Dokumen', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('7e249e4c-73c3-4cea-8162-797edd12a4f3', 'Penyusunan Sistem dan Prosedur Akuntansi dan Pelaporan Keuangan Pemerintah Daerah', 'Jumlah Sistem dan Prosedur Akuntansi dan Pelaporan Keuangan Pemerintah Daerah', '1 Dokumen', 'KEGBPKAD11', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('8102f3f9-a99b-49b2-a6aa-d3bf9f6a4ce7', 'Koordinasi dan Penyusunan Laporan Keuangan Akhir Tahun SKPD', 'Jumlah Dokumen Laporan Keuangan Akhir Tahun SKPD ', '1 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('81f7382a-f25e-4ef8-9591-0e6879126954', 'Penyusunan Rencana Kebutuhan Barang Milik Daerah', 'Jumlah Rencana Kebutuhan Barang Milik Daerah', '2 Dokumen', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('83027548-7dd5-48b9-a930-a64e61944f2c', 'Penatausahaan Barang Milik Daerah', 'Jumlah Laporan Penatausahaan Barang Milik Daerah', '2 Laporan', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('83308605-b997-49c4-bc9b-164a823eb7bf', 'Koordinasi dan Pelaksanaan Akuntansi SKPD', 'Jumlah Jasa Tenaga Administrasi Keuangan ', '35 Orang', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('88449189-7b5c-499c-889d-13b9d25eb8bd', 'Koordinasi dan Penyusunan Perubahan DPA-SKPD', 'Jumlah Dokumen Perubahan DPA SKPD ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('890c616e-3918-47b4-ae04-1d68dea99cf4', 'Optimalisasi Penggunaan, Pemanfaatan, Pemindahtanganan, Pemusnahan, dan Penghapusan Barang Milik Daerah', 'Jumlah Dokumen Hasil Optimalisasi Penggunaan, Pemanfaatan, Pemindahtanganan, Pemusnahan, dan Penghapusan Barang Milik Daerah', '1 Dokumen', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('8b048409-a9c6-484b-9623-d0f63744c8cf', 'Koordinasi dan Penyusunan DPA-SKPD', 'Jumlah Dokumen DPA SKPD ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('900da5f7-f7e8-4597-ab44-dc6677ec42d8', 'Penyediaan Peralatan dan Perlengkapan Kantor', 'Jumlah Peralatan dan Pelengkapan Kantor yang tersedia', '15 Paket/Jenis', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('90602ac9-caa4-45ad-854d-2cc4a10f2401', 'Asistensi Pengelolaan Keuangan Kabupaten/Kota', 'Jumlah Dokumen yang Mendapatkan Layanan Asistensi ', '10 Dokumen ', 'KEGBPKAD10', 10, '2022-11-29 00:38:05', '2022-12-02 13:07:31'),
('9527eb20-bab4-4980-a9dd-556e8876cf3c', 'Koordinasi dan Penyusunan Dokumen RKA-SKPD', 'Jumlah Dokumen RKA-SKPD ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('968c86ec-6033-4362-96a4-a8545449dae8', 'Penyediaan Jasa Pelayanan Umum Kantor', 'Jumlah Tenaga Pelayanan Umum Kantor', '45 Orang', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('96958940-4e31-4169-beaf-464874b3ea14', 'Evaluasi Rancangan Peraturan Daerah tentang Perubahan APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD Kabupaten/Kota', 'Jumlah Laporan Rancangan Peraturan Daerah tentang Perubahan APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD Kabupaten/Kota', '10 Laporan', 'KEGBPKAD10', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('96acf1ed-9b22-442e-9825-b540c6c09a22', 'Pembinaan Perencanaan Penganggaran Daerah Pemerintah Provinsi', 'Jumlah Orang yang Mengikuti Pembinaan Perencanaan Penganggaran Daerah Pemerintah Provinsi ', '30 Orang', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('990324d6-9822-4702-a341-b3dc7f59a372', 'Koordinasi dan Penyusunan Dokumen Perubahan RKA-SKPD', 'Jumlah Dokumen Perubahan RKA-SKPD yang tersusun ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('997475a2-b684-4601-9306-02dfa28e23f6', 'Penilaian Barang Milik Daerah', 'Jumlah Laporan Hasil Penilaian Barang Milik Daerah dan Hasil Koordinasi Penilaian Barang Milik Daerah', '1 Laporan  ', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('9a5dde64-926f-4c87-95ee-34902a0f69d6', 'Sosialisasi Peraturan Perundang-Undangan', 'Jumlah Peserta Sosialisasi yang mengikuti', '75 Orang', 'KEGBPKAD04', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a3571391-3811-4007-8f79-c947465f6b92', 'Koordinasi dan Penyusunan Perubahan DPA-SKPD', 'Jumlah Dokumen Perubahan DPA SKPD ', '1 Dokumen', 'KEGBPKAD15', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a7feb17a-d5d5-476e-a5d9-67f530377eba', 'Implementasi dan Pemeliharaan Sistem Informasi Pemerintah Daerah Bidang Keuangan Daerah', 'Tingkat terpeliharan SIPD bidang Keuangan Daerah ', '85 Persen', 'KEGBPKAD13', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('a88e9daf-a22c-4c73-8dce-afc21facd554', 'Penyediaan Jasa Peralatan dan Perlengkapan Kantor', 'Jumlah Peralatan dan Perlengkapan Kantor yang dipelihara', '153 Unit', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('aa32e9c7-ed33-48d0-b323-10cbb51781b2', 'Pengadaan Peralatan dan Mesin Lainnya', 'Jumlah Peralatan dan Mesin Lainya (PC) yang diadakan ', '2 Unit', 'KEGBPKAD06', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('aa93764d-e57b-4b0d-bdb2-6bfdb80999c6', 'Inventarisasi dan Analisis Data Bidang Keuangan Daerah', 'Jumlah Dokumen Data Bidang Keuangan Daerah Provinsi ', '1 Dokumen', 'KEGBPKAD13', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('aac3423c-6967-4c37-90fc-49c6b1a751ef', 'Penatausahaan Arsip Dinamis pada SKPD', 'Jumlah Arsip Dinamis SKPD', '10000 Dokumen', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ad5c3b92-922e-47e4-bfb5-d3b266171e08', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 'Jumlah Rapat Koordinasi dan Konsultasi SKPD luar daerah dan dalam daerah', ' 25 Kali', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ae58e122-1eef-47be-96f9-f7deacf99ad4', 'Koordinasi, Fasilitasi, Asistensi, Sinkronisasi, Supervisi, Monitoring, dan Evaluasi Pengelolaan Dana Perimbangan dan Dana Transfer Lainnya', 'Jumlah Dokumen Hasil Koordinasi, Fasilitasi, Asistensi, Sinkronisasi, Supervisi, Monitoring, dan Evaluasi Pengelolaan Dana Perimbangan dan Dana Transfer Lainnya', '4 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b4e47a71-3b81-4d23-9ce2-d115af300307', 'Koordinasi dan Penyusunan Peraturan Daerah tentang APBD dan Peraturan Kepala Daerah tentang Penjabaran APBD', 'Jumlah Peraturan Daerah tentang APBD dan Peraturan Kepala Daerah tentang Penjabaran APBD', '2 Dokumen', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b58f0016-8add-410a-adfc-5a06fd6fae30', 'Koordinasi dan Penyusunan Perubahan KUA dan Perubahan PPAS', 'Jumlah Dokumen Perubahan KUA dan Perubahan PPAS yang disusun', '1 Dokumen', 'KEGBPKAD09', 200, '2022-11-29 00:38:05', '2022-11-30 08:11:44'),
('b6811965-f88b-42c6-ace1-c1a22c33fcfb', 'Fasilitasi Kunjungan Tamu', 'Jumlah Makan dan Minum Tamu ', '100 Kali', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b8fa1e5a-2368-4768-8ed8-a5b4fcdb3486', 'Pengadaan Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', 'Jumlah Kendaraan Pereorangan atau Kendaraaan Dinas Jabatan yang diadakan\n', '2 Unit', 'KEGBPKAD06', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('b9464cdc-6577-4241-8a72-52d9b5430663', 'Pengelolaan Dana Darurat dan Mendesak', 'Jumlah Kegiatan Darurat yang dilaksanakan ', '50 Kali', 'KEGBPKAD12', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('bb650281-9af6-4ea2-b720-db8b947db51a', 'Pengelolaan Dana bagi Hasil Provinsi', 'Persentase Pencairan Dana Bagi Hasil Provinsi ', '90 Persen', 'KEGBPKAD12', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('bd672feb-07d3-4eeb-a58b-9fe0d883df23', 'Pemeliharaan Peralatan dan Mesin Lainnya', 'Jumlah Peralatan dan Mesin Lainya yang terpelihara ', '12 Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c587508b-b866-4dfa-a307-168b44f768de', 'Koordinasi dan Pengelolaan Kas Daerah', 'Jumlah Dokumen Hasil Koordinasi dan Pengelolaan Kas Daerah', '1 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c7b99098-c73e-4420-9227-8ad6682f5799', 'Koordinasi dan Penyusunan Laporan Keuangan Akhir Tahun SKPD', 'Jumlah Dokumen Laporan Keuangan Akhir Tahun SKPD ', '1 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c7cb8915-834d-4f56-8825-fa5ab76261b5', 'Pengamanan Barang Milik Daerah', 'Jumlah Dokumen Sertifikasi Aset Tanah ', '50 Dokumen', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c8437501-1e29-4db6-9c5e-91234d2c319f', 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Pendukung Gedung Kantor atau Bangunan Lainnya', 'Jumlah Sarana Prasaran Pendukung Gedung Kantor yang Terpelihara ', '1 Unit', 'KEGBPKAD08', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('c8c6f427-a68c-4cd0-891d-1314c4bc05a1', 'Koordinasi Pelaksanaan Piutang dan Utang Daerah yang Timbul Akibat Pengelolaan Kas, Pelaksanaan Analisis Pembiayaan dan Penempatan Uang Daerah sebagai Optimalisasi Kas\n', 'Jumlah Dokumen Hasil Koordinasi Pelaksanaan Piutang dan Utang Daerah yang Timbul Akibat Pengelolaan Kas, Pelaksanaan Analisis Pembiayaan dan Penempatan Uang Daerah sebagai Optimalisasi Kas', '1 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('ce5d6329-3e67-4c1c-a456-bde5a4a6f4b6', 'Evaluasi Rancangan Peraturan Daerah tentang APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran APBD Kabupaten/Kota', 'Jumlah Laporan Hasil Evaluasi Rancangan Peraturan Daerah tentang  APBD Kabupaten/Kota dan Rancangan Peraturan Kepala Daerah tentang Penjabaran APBD Kabupaten/Kota', '10 Laporan', 'KEGBPKAD10', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('cf7d08ec-7d82-4fe3-b231-1ac5470be064', 'Sosialisasi Regulasi Bidang Keuangan Daerah', 'Jumlah Laporan Hasil Sosialisasi Regulasi Bidang Keuangan Daerah', '1 Laporan  ', 'KEGBPKAD10', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d07e5895-075b-49b0-acd8-26b8ecf2de1d', 'Koordinasi dan Penyusunan KUA dan PPAS', 'Jumlah Dokumen KUA dan PPAS yang disusun', '1 Dokumen', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d68b5117-176d-4087-aa45-654b61197704', 'Pengelolaan Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', 'Jumlah Laporan Hasil Pengelolaan Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', '1 Laporan', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('d8781a92-5828-411b-bd79-c6712c8be25c', 'Penyusunan Perencanaan Kebutuhan Barang Milik Daerah SKPD', 'Jumlah Dokumen Perencanaan Kebutuhan Barang Milik Daerah SKPD', '2 Dokumen', 'KEGBPKAD03', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('dd8aabf6-e2bd-494b-88e9-e4a9c8acbca8', 'Peningkatan Sarana dan Prasarana Disiplin Pegawai', 'Jumlah Sarana dan Prasaran olahraga yang disewa', '2 Unit', 'KEGBPKAD04', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e07b144d-e6f5-44e4-96ad-a18eae797020', 'Koordinasi dan Penyusunan Dokumen RKA-SKPD', 'Jumlah Dokumen RKA SKPD ', '1 Dokumen', 'KEGBPKAD15', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e2732b9d-6ed3-46d7-b958-7c73fc9698d4', 'Inventarisasi Barang Milik Daerah', 'Jumlah Laporan Hasil Inventarisasi (LHI) Barang Milik Daerah', '1 Laporan  ', 'KEGBPKAD14', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e410a2a8-8ad1-4b1e-8e9a-2d92d9cffb6a', 'Pembinaan Sistem Informasi Pemerintah Daerah Bidang Keuangan Daerah Pemerintah Provinsi', 'Jumlah OPD yang terbina ', '136 OPD', 'KEGBPKAD13', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e411319f-08a7-4eda-96a8-26ff9e100b77', 'Penyiapan, Pelaksanaan Pengendalian dan Penerbitan Anggaran Kas dan SPD', 'Jumlah Dokumen Hasil Pengendalian dan Penerbitan Anggaran Kas dan SPD', '136 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e4da0b0d-b19b-40c0-af45-c8bc2b0d528f', 'Koordinasi dan Penyusunan DPA-SKPD', 'Jumlah Dokumen DPA SKPD ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('e853c7e3-3f17-4906-ab70-d365ef16489f', 'Koordinasi dan Penyusunan Laporan Keuangan Bulanan/Triwulanan/Semesteran SKPD', 'Jumlah Dokumen Laporan Keuangan Bulanan/Triwulan/Semesteran/SKPD', '17 Dokumen', 'KEGBPKAD02', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f21c3046-1be7-48af-a8fa-d38f873260a5', 'Koordinasi, Penyusunan dan Verifikasi Perubahan DPA-SKPD', 'Jumlah Perubahan DPA-SKPD yang Diverifikasi', '136 Dokumen', 'KEGBPKAD09', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f3b5eddc-ba32-4b49-89ac-eb7aabb238c7', 'Penyediaan Barang Cetakan dan Penggandaan', 'Jumlah Barang Cetakan dan Penggandaan yang tersedia ', '2000 Dokumen', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f7b6f7f3-0a33-486b-87e1-e4444712c54c', 'Penyediaan Barang Cetakan dan Penggandaan', 'Jumlah Cetakan dan Penggandaan tersedia', '1000 Dokumen', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f863bf9c-4cf8-4f60-b98d-15f01ad7807a', 'Fasilitasi Kunjungan Tamu', 'Jumlah Makanan dan Minuman Tamu ', '24 Kali', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('f962204b-9367-4c25-9f97-e86b70413437', 'Fasilitasi Kunjungan Tamu', 'Jumlah Makanan dan Minuman Tamu', '240 Kali', 'KEGBPKAD05', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fc5e8a9b-42b1-49b6-a896-0b228fd8dc79', 'Penyusunan Petunjuk Teknis Administrasi Keuangan yang Berkaitan dengan Penerimaan dan Pengeluaran Kas serta Penatausahaan dan Pertanggungjawaban Sub Kegiatan\n', 'Jumlah Petunjuk Teknis Administrasi Keuangan yang Berkaitan dengan Penerimaan dan Pengeluaran Kas serta Penatausahaan dan Pertanggujawaban Sub Kegiatan', '1 Dokumen', 'KEGBPKAD16', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fe2cc4ea-61c7-4efb-a2ea-6b8641457734', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', 'Jumlah Jasa Komunikasi d di sediakanan Sumber Daya Air dan Listrik yang', '4 Jasa', 'KEGBPKAD07', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05'),
('fef1ff91-2331-4bca-bfa6-a5adaa3c9146', 'Koordinasi dan Penyusunan Dokumen RKA-SKPD', 'Jumlah Dokumen RKA SKPD yang tersusun ', '1 Dokumen', 'KEGBPKAD01', 0, '2022-11-29 00:38:05', '2022-11-29 00:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pegawai` enum('admin','pimpinan','pegawai') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pegawai',
  `divisi_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `foto`, `password`, `jenis_pegawai`, `divisi_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('30ab4da4-6ba2-4b8d-8404-08b51e995f30', 'Yul Hadiansyah, SE, MM', 'yul', 'yulhadiansyah@gmail.com', NULL, '$2y$10$yOFNKQUrhdQrZZI7ErgWZuukVaLGuqbmXu3Sfz2Cl7PFuVYELZF5W', 'pegawai', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'u9Lq2D52XRoP1G7Y6mHXz3JwMNZLcNa4xfHDalpFevqtUTWCTuchKnR54h4Q', '2022-10-22 16:44:08', '2023-05-24 20:21:03'),
('c760170f-f055-11ec-aceb-244bfebc253d', 'Admin Bpkad', 'admin', 'prog.bpkad.ntb@gmail.com', 'profile/foto_profile/c760170f-f055-11ec-aceb-244bfebc253d-shell.jpg', '$2y$10$jqUSc6jtT.qKwl92j8sv9.DV.MU/5h/0uyhTh3ACq2zhrQHhCPuzW', 'admin', '838cc7c1-526b-11ed-8b5e-9c2976f36af1', 'HeICfr4xbikfYreEwwzRkNrlcVoPJ7n9vybUH1YOgG8kBjDn6o8f2HSV63TZ', '2022-10-17 14:29:31', '2023-05-26 18:58:26'),
('ca1c387b-2f13-4906-9dd8-5554a01699f0', 'hanan', 'hanan', 'hanan@gmail.com', NULL, '$2y$10$OLrNHkKmK7tMauwhqjQWpOD.VRgkO5xTp0LP.WWkrp/4FdqLulSCG', 'pimpinan', '5c17284e-7efe-4c7d-b653-bb9b7a566c58', NULL, '2023-05-26 19:17:38', '2023-05-26 19:17:38'),
('cd9779d4-fbf9-432b-89e9-88b35e2882f0', 'Bowo Susatyo, S.Sos, MT', 'bowo', 'bowosusatyo@gmail.com', NULL, '$2y$10$wXzNf/fWQZFk8LNo1fu/O..e.uYNAvboPIFwoN9M1MNeCz7h0aEju', 'pimpinan', '030dcf28-8763-41c2-9359-26a36e8a814b', 'Vj2W1h0p9DBmvKvAl4wi5lr8MbWcViEN4YNK2cjqghJVmIDayCitdKvVA39N', '2022-10-22 16:46:38', '2023-05-24 20:22:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apbd`
--
ALTER TABLE `apbd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apbd_kode_rekening_index` (`kode_rekening`),
  ADD KEY `apbd_user_id_index` (`user_id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_iku`
--
ALTER TABLE `file_iku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_iku_realisasi_capaian_id_index` (`sub_kegiatan_iku_id`);

--
-- Indexes for table `formulasi`
--
ALTER TABLE `formulasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formulasi_indikator_kinerja_id_index` (`indikator_kinerja_id`),
  ADD KEY `formulasi_divisi_id_index` (`divisi_id`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iku_realisasi`
--
ALTER TABLE `iku_realisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iku_realisasi_sasaran_strategis_id_index` (`sasaran_strategis_id`),
  ADD KEY `iku_realisasi_indikator_kinerja_id_index` (`indikator_kinerja_id`),
  ADD KEY `iku_realisasi_formula_id_index` (`formula_id`),
  ADD KEY `iku_realisasi_user_id_index` (`user_id`);

--
-- Indexes for table `indikator_kinerja`
--
ALTER TABLE `indikator_kinerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_iku`
--
ALTER TABLE `kegiatan_iku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kegiatan_iku_realisasi_capaian_id_index` (`divisi_id`),
  ADD KEY `program_iku_id` (`program_iku_id`),
  ADD KEY `indikator_kinerja_id` (`indikator_kinerja_id`);

--
-- Indexes for table `kode_rekening`
--
ALTER TABLE `kode_rekening`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_rekening_kode_rekening_unique` (`kode_rekening`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_user_id_index` (`user_id`),
  ADD KEY `pegawai_golongan_id_index` (`golongan_id`),
  ADD KEY `pegawai_pangkat_id_index` (`pangkat_id`),
  ADD KEY `bidang_id` (`bidang_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `program_anggaran_iku`
--
ALTER TABLE `program_anggaran_iku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realisasi_anggaran`
--
ALTER TABLE `realisasi_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realisasi_anggaran_kode_rekening_index` (`kode_rekening`),
  ADD KEY `realisasi_anggaran_user_id_foreign` (`user_id`);

--
-- Indexes for table `sasaran_strategis`
--
ALTER TABLE `sasaran_strategis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_kegiatan_iku`
--
ALTER TABLE `sub_kegiatan_iku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_divisi_id_index` (`divisi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apbd`
--
ALTER TABLE `apbd`
  ADD CONSTRAINT `apbd_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file_iku`
--
ALTER TABLE `file_iku`
  ADD CONSTRAINT `file_iku_realisasi_subkegiatan_iku_id_foreign` FOREIGN KEY (`sub_kegiatan_iku_id`) REFERENCES `sub_kegiatan_iku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `formulasi`
--
ALTER TABLE `formulasi`
  ADD CONSTRAINT `formulasi_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `formulasi_indikator_kinerja_id_foreign` FOREIGN KEY (`indikator_kinerja_id`) REFERENCES `indikator_kinerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `iku_realisasi`
--
ALTER TABLE `iku_realisasi`
  ADD CONSTRAINT `iku_realisasi_formula_id_foreign` FOREIGN KEY (`formula_id`) REFERENCES `formulasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iku_realisasi_indikator_kinerja_id_foreign` FOREIGN KEY (`indikator_kinerja_id`) REFERENCES `indikator_kinerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iku_realisasi_sasaran_strategis_id_foreign` FOREIGN KEY (`sasaran_strategis_id`) REFERENCES `sasaran_strategis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iku_realisasi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatan_iku`
--
ALTER TABLE `kegiatan_iku`
  ADD CONSTRAINT `kegiatan_iku_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kegiatan_iku_indikator_kinerja_id_foreign` FOREIGN KEY (`indikator_kinerja_id`) REFERENCES `indikator_kinerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kegiatan_iku_program_iku_id_foreign` FOREIGN KEY (`program_iku_id`) REFERENCES `program_anggaran_iku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`bidang_id`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_pangkat_id_foreign` FOREIGN KEY (`pangkat_id`) REFERENCES `pangkat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `realisasi_anggaran`
--
ALTER TABLE `realisasi_anggaran`
  ADD CONSTRAINT `realisasi_anggaran_kode_rekening_foreign` FOREIGN KEY (`kode_rekening`) REFERENCES `apbd` (`kode_rekening`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `realisasi_anggaran_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
