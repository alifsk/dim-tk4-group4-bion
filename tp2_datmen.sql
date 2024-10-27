-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 08:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2_datmen`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` int(11) NOT NULL,
  `namaBarang` varchar(50) NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  `satuan` varchar(20) NOT NULL DEFAULT '',
  `idPengguna` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `keterangan`, `satuan`, `idPengguna`, `created_at`, `updated_at`) VALUES
(1, 'Pulpen', 'Pulpen minyak', 'Pcs', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Pensil 2B', 'Pensil 2B Fabel Castell', 'Pcs', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Penghapus', 'Penghapus Batang Kenko', 'Pcs', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Penggaris 30 Cm', 'Penggaris plastik Joyko', 'Botol', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Buku Tulis Sidu', 'Buku tulis sidu 58 lembar', 'Batang', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Buku Gambar Sidu A4', 'Buku gambar sidu A4 30 lembar', 'Butir', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tipe X Joyko', 'Tipe X roll joyko', 'Unit', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Palet 10 Warna Ximic Hitam', 'Palet 10 warna Ximic', 'Meter', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Sepatu Homyped Ukuran 40 Hitam', 'Sepatu Homyped Ukuran 40 Hitam pekat', 'Pcs', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Kaos Kaki Putih Hitam Pendek', 'kaos kaki sekolah putih', 'Pcs', 3, '0000-00-00 00:00:00', '2024-10-26 14:31:46'),
(11, 'Kuas Cat Air Joyko No. 2', 'Kuas No. 2 : Panjang 1.3 cm x Lebar 0.4 cm', 'Lusin', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Kuas Cat Air Joyko No. 6', 'Kuas No. 6 : Panjang 1.1 cm x Lebar 0.4 cm', 'Pcs', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Kuas Cat Air Joyko No. 8', 'Kuas No. 8 : Panjang 1.3 cm x Lebar 1.1 cm', 'Buah', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Kuas Cat Air Joyko No. 10', 'Kuas No. 10 : Panjang 2.2 cm x Lebar 0.6 cm', 'Kotak', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Kertas Kado Biru', 'Kertas kado sinar dunia biru dongker', 'Pcs', 3, '0000-00-00 00:00:00', '2024-10-26 14:31:29'),
(16, 'Kuas Cat Air Joyko No. 12', 'Kuas No. 12 : Panjang 1.5 cm x Lebar 1.4 cm', 'Lusin', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Set Alat Lukis Kuas Cat Air Minyak Acrylic Joyko', 'Art Brush Joyko BRS-7', 'Pcs', 12, '2023-02-03 22:51:44', '2023-02-03 22:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE `hakakses` (
  `idAkses` int(11) NOT NULL,
  `namaAkses` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`idAkses`, `namaAkses`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Akses semua fitur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Admin', 'Akses semua fitur kecuali hakakses', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Sales', 'CRUD Penjualan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Customer', 'CRUD Pembelian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Inventory', 'CRUD Produk dan Pembelian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Cashier', 'CRUD Penjualan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Manajer', 'Read Laporan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Finance', 'Read Penjualan, Pembalian, dan Laporan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Supervisor', 'Read Pembelian, dan Penjualan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Staff', 'CRUD Pengguna, Supplier, Penjualan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Test QA', 'CRUD all feature', '2024-10-26 01:26:21', '2024-10-26 14:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idPelanggan` int(11) NOT NULL,
  `jenisBarang` varchar(50) NOT NULL,
  `jumlahBarang` char(8) NOT NULL,
  `hargaBarang` varchar(20) NOT NULL,
  `idPengguna` int(11) NOT NULL,
  `idBarang` int(11) NOT NULL,
  `idPembelian` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idPelanggan`, `jenisBarang`, `jumlahBarang`, `hargaBarang`, `idPengguna`, `idBarang`, `idPembelian`, `created_at`, `updated_at`) VALUES
(1, 'Penggaris', '100', '3000', 5, 4, 1, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(2, 'Penghapus', '100', '2500', 6, 3, 2, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(3, 'Bulpoin', '80', '2000', 6, 1, 3, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(4, 'Pensil', '100', '2000', 6, 2, 4, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(5, 'Penggaris', '50', '5000', 5, 4, 5, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(6, 'Bulpoin', '50', '7000', 5, 1, 6, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(7, 'Penggaris', '20', '3000', 6, 4, 7, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(8, 'Buku Tulis', '30', '10000', 5, 5, 8, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(9, 'Pensil', '70', '5500', 5, 2, 9, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(10, 'Buku Gambar', '100', '5000', 6, 6, 10, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(11, 'Penghapus', '40', '3000', 5, 3, 11, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(12, 'TipeX', '25', '2500', 6, 7, 12, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(13, 'TipeX', '40', '2000', 5, 7, 13, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(14, 'Palet Lukis', '50', '2000', 5, 8, 14, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(15, 'Sepatu', '50', '5000', 6, 9, 15, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(16, 'Buku Tulis', '50', '7000', 6, 5, 16, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(17, 'Penggaris', '20', '3000', 5, 4, 17, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(18, 'Kaos Kaki', '30', '10000', 5, 10, 18, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(19, 'Sepatu', '70', '5500', 5, 9, 19, '2024-10-27 07:31:30', '2023-02-03 15:57:19'),
(20, 'Kaos Kaki', '100', '5000', 6, 10, 20, '2024-10-27 07:31:30', '2023-02-03 15:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idPembelian` int(11) NOT NULL,
  `jumlahPembelian` int(11) NOT NULL DEFAULT 0,
  `hargaBeli` varchar(50) NOT NULL DEFAULT '0',
  `idPengguna` int(11) NOT NULL,
  `idBarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idPembelian`, `jumlahPembelian`, `hargaBeli`, `idPengguna`, `idBarang`) VALUES
(1, 100, '3000', 5, 1),
(2, 100, '2500', 6, 2),
(3, 80, '2000', 6, 3),
(4, 100, '2000', 6, 4),
(5, 50, '5000', 5, 5),
(6, 50, '7000', 5, 6),
(7, 20, '3000', 6, 7),
(8, 30, '10000', 6, 8),
(9, 70, '5500', 5, 9),
(10, 100, '5000', 6, 10),
(11, 40, '3000', 6, 1),
(12, 25, '2500', 5, 2),
(13, 40, '2000', 5, 3),
(14, 50, '2000', 5, 4),
(15, 50, '5000', 6, 5),
(16, 50, '7000', 5, 6),
(17, 20, '3000', 5, 7),
(18, 30, '10000', 5, 8),
(19, 70, '5500', 6, 9),
(20, 100, '5000', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idPengguna` int(11) NOT NULL,
  `namaPengguna` varchar(100) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '0',
  `namaDepan` varchar(100) NOT NULL DEFAULT '0',
  `namaBelakang` varchar(100) NOT NULL DEFAULT '0',
  `noHp` varchar(100) NOT NULL DEFAULT '0',
  `alamat` text NOT NULL,
  `idAkses` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idPengguna`, `namaPengguna`, `password`, `namaDepan`, `namaBelakang`, `noHp`, `alamat`, `idAkses`, `created_at`, `updated_at`) VALUES
(1, 'budi02', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Budi', 'Siregar', '082109812891', 'Jl. Bendungan Wlingi, No. 07', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'genta01', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Genta', 'Yangan', '085909814893', 'Jl. Bendungan Sutami, No. 21', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'eriPras', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Eriandi', 'Prasetyo', '087009012792', 'Jl. Bendungan Wlingi, No. 11', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'boyenC', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Boyen', 'Cyntia', '083809832012', 'Jl. Bendungan Sengguruh, No. 12', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'lolly66', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Lolly', 'Princes', '089899822112', 'Jl. Bendungan Bening, No. 10', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'poetri11', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Poetri', 'Mayang', '089899828765', 'Jl. Bendungan Bening, No. 33', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'ungek21', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Ungek', 'Ning', '081999818212', 'Jl. Bendungan Wlingi, No. 07', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'zenom', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Zenobia', 'Morales', '085099010112', 'Jl. Bendungan Wlingi, No. 11', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'rachelFlo', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Rachel', 'Floria', '082100178910', 'Jl. Bendungan Sutami, No. 12', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'tanIdris', '$2a$12$PmM7nEAXPLbQGGsHcp4kduaH3psCJJbJT3Pzx2JpSaf6HTSJb8wKG', 'Idris', 'Tan', '087881123091', 'Jl. Bendungan Sengguruh, No. 08', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'alifsk', '$2y$10$WUuA8xc3c2rIXh660bNM8uQq2K2P6bsGmKl1ducESiHHH4/1/1ykC', 'Alif', 'Setyakurniawan', '085646023469', 'Jalan Bendungan Wlingi No.30', 1, '2023-02-03 22:13:42', '2023-02-03 22:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idPenjualan` int(11) NOT NULL,
  `jumlahPenjualan` int(11) DEFAULT NULL,
  `hargaJual` varchar(50) DEFAULT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `idBarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`idPenjualan`, `jumlahPenjualan`, `hargaJual`, `idPengguna`, `idBarang`) VALUES
(1, 80, '4000', 3, 1),
(2, 70, '3000', 3, 2),
(3, 45, '2500', 3, 3),
(4, 60, '2500', 3, 4),
(5, 35, '6000', 3, 5),
(6, 48, '8000', 3, 6),
(7, 10, '4000', 3, 7),
(8, 40, '12000', 3, 8),
(9, 60, '6000', 3, 9),
(10, 95, '6000', 3, 10),
(11, 50, '4000', 3, 1),
(12, 50, '3000', 3, 2),
(13, 70, '2500', 3, 3),
(14, 80, '2500', 3, 4),
(15, 65, '6000', 3, 5),
(16, 52, '8000', 12, 6),
(17, 25, '4000', 12, 7),
(18, 18, '12000', 12, 8),
(19, 80, '6000', 12, 9),
(20, 100, '6000', 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `idSupplier` int(11) NOT NULL,
  `jumlahSupply` int(11) NOT NULL DEFAULT 0,
  `jenisSupply` varchar(50) NOT NULL,
  `idPengguna` int(11) NOT NULL DEFAULT 0,
  `idBarang` int(11) NOT NULL DEFAULT 0,
  `idPenjualan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idSupplier`, `jumlahSupply`, `jenisSupply`, `idPengguna`, `idBarang`, `idPenjualan`, `created_at`, `updated_at`) VALUES
(1, 100, 'Penggaris', 3, 1, 1, '2024-10-27 06:36:13', '2023-02-03 16:42:13'),
(2, 100, 'Pensil', 3, 2, 2, '2024-10-26 22:57:50', '2023-02-03 16:43:10'),
(3, 80, 'Bulpoin', 3, 3, 3, '2024-10-27 06:36:13', '2023-02-03 16:43:33'),
(4, 100, 'Kaos Kaki', 3, 4, 4, '2024-10-27 06:36:13', '2023-02-03 16:43:38'),
(5, 50, 'Tipex', 3, 5, 5, '2024-10-27 06:36:13', '2023-02-03 16:43:44'),
(6, 100, 'Penghapus', 3, 6, 6, '2024-10-27 06:36:13', '2023-02-03 16:43:47'),
(7, 40, 'Sepatu', 3, 7, 7, '2024-10-27 06:36:13', '2023-02-03 16:43:51'),
(8, 140, 'Buku Tulis', 3, 8, 8, '2024-10-27 06:36:13', '2023-02-03 16:43:55'),
(9, 70, 'Buku Gambar', 3, 9, 9, '2024-10-27 06:36:13', '2023-02-03 16:44:01'),
(10, 100, 'Palet Lukis', 3, 10, 10, '2024-10-27 06:36:13', '2023-02-03 16:44:06'),
(11, 40, 'Kuas Cat Air', 3, 16, 11, '2024-10-26 22:57:50', '2023-02-03 16:44:10'),
(12, 25, 'Kuas Cat Air', 3, 11, 12, '2024-10-26 22:57:50', '2023-02-03 16:44:16'),
(13, 40, 'Kuas Cat Air', 3, 12, 13, '2024-10-26 22:57:50', '2023-02-03 16:44:22'),
(14, 50, 'Kertas Kado', 3, 15, 14, '2024-10-26 22:57:50', '2023-02-03 16:44:29'),
(15, 50, 'Kuas Cat Air', 3, 14, 15, '2024-10-26 22:57:50', '2023-02-03 16:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`) USING BTREE,
  ADD KEY `FK_barang_pengguna` (`idPengguna`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`idAkses`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idPelanggan`) USING BTREE,
  ADD KEY `FK_pelanggan_pengguna` (`idPengguna`) USING BTREE,
  ADD KEY `FK_pelanggan_barang` (`idBarang`) USING BTREE,
  ADD KEY `FK_pelanggan_pembelian` (`idPembelian`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idPembelian`) USING BTREE,
  ADD KEY `FK_pembelian_pengguna` (`idPengguna`) USING BTREE,
  ADD KEY `FK_pembelian_barang` (`idBarang`) USING BTREE;

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idPengguna`) USING BTREE,
  ADD KEY `FK_pengguna_hakakses` (`idAkses`) USING BTREE;

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idPenjualan`) USING BTREE,
  ADD KEY `FK_penjualan_pengguna` (`idPengguna`) USING BTREE,
  ADD KEY `FK_penjualan_barang` (`idBarang`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idSupplier`) USING BTREE,
  ADD KEY `FK_supplier_pengguna` (`idPengguna`) USING BTREE,
  ADD KEY `FK_supplier_barang` (`idBarang`) USING BTREE,
  ADD KEY `FK_supplier_penjualan` (`idPenjualan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hakakses`
--
ALTER TABLE `hakakses`
  MODIFY `idAkses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idPelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idPembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idPengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idPenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `idSupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FK_barang_pengguna` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `FK_pelanggan_pembelian` FOREIGN KEY (`idPembelian`) REFERENCES `pembelian` (`idPembelian`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `FK_pembelian_barang` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `FK_pembelian_pengguna` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `FK_pengguna_hakakses` FOREIGN KEY (`idAkses`) REFERENCES `hakakses` (`idAkses`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `FK_penjualan_barang` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `FK_penjualan_pengguna` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `FK_supplier_penjualan` FOREIGN KEY (`idPenjualan`) REFERENCES `penjualan` (`idPenjualan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
