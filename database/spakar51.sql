-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 12.06
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spakar51`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'user', 'You have created user', 'App\\Models\\User', 1, NULL, NULL, '{\"attributes\":{\"name\":\"FikriDev\",\"username\":\"admin\"}}', '2023-02-07 07:52:29', '2023-02-07 07:52:29'),
(2, 'user', 'You have created user', 'App\\Models\\User', 2, NULL, NULL, '{\"attributes\":{\"name\":\"Johni\",\"username\":\"johni\"}}', '2023-02-07 07:52:32', '2023-02-07 07:52:32'),
(3, 'user', 'You have created user', 'App\\Models\\User', 3, NULL, NULL, '{\"attributes\":{\"name\":\"Tiger Hood\",\"username\":\"gakaseca\"}}', '2023-02-07 08:00:45', '2023-02-07 08:00:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejalas`
--

CREATE TABLE `gejalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejalas`
--

INSERT INTO `gejalas` (`id`, `nama`, `kode`) VALUES
(1, 'Demam', 'G001'),
(2, 'Demam tinggi', 'G002'),
(3, 'Batuk', 'G003'),
(4, 'Diare', 'G004'),
(5, 'Mual', 'G005'),
(6, 'Muntah', 'G006'),
(7, 'Nyeri otot', 'G007'),
(8, 'Sakit perut', 'G008'),
(9, 'Kram otot', 'G009'),
(10, 'Pilek', 'G010'),
(11, 'Muntah', 'G011'),
(12, 'Tubuh menggigil', 'G012'),
(13, 'Tubuh nyeri', 'G013'),
(14, 'Penyakit kuning', 'G014'),
(15, 'Nyeri sendi', 'G015'),
(16, 'Nyeri perut', 'G016'),
(17, 'Trombosit turun', 'G017'),
(18, 'Muncul bintik merah', 'G018'),
(19, 'Gatal', 'G019'),
(20, 'Sakit di persendian', 'G020'),
(21, 'Sakit kepala', 'G021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `value_cf` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `value_cf`) VALUES
(1, 1, 1, 0.20),
(2, 3, 1, 0.20),
(3, 7, 1, 0.20),
(4, 21, 1, 0.20),
(5, 2, 2, 0.40),
(6, 17, 2, 0.40),
(7, 18, 2, 0.40),
(8, 20, 2, 0.40),
(9, 1, 3, 0.60),
(10, 14, 3, 0.60),
(11, 15, 3, 0.60),
(12, 16, 3, 0.60),
(13, 2, 4, 0.20),
(14, 5, 4, 0.20),
(15, 6, 4, 0.20),
(16, 11, 4, 0.20),
(17, 12, 4, 0.20),
(18, 13, 4, 0.20),
(19, 1, 5, 0.80),
(20, 3, 5, 0.80),
(21, 10, 5, 0.80),
(22, 1, 6, 0.40),
(23, 4, 6, 0.40),
(24, 5, 6, 0.40),
(25, 8, 6, 0.40),
(26, 9, 6, 0.40),
(27, 4, 7, 1.00),
(28, 5, 7, 1.00),
(29, 6, 7, 1.00),
(30, 11, 7, 1.00),
(31, 19, 7, 1.00);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_settings_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_04_23_030446_create_permission_tables', 1),
(6, '2021_04_28_072156_create_activity_log_table', 1),
(7, '2022_05_25_045640_create_penyakits_table', 1),
(8, '2022_05_25_045757_create_gejalas_table', 1),
(9, '2022_05_28_075608_create_riwayats_table', 1),
(10, '2022_06_27_191302_create_gejala_penyakit_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakits`
--

CREATE TABLE `penyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyebab` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penyakits`
--

INSERT INTO `penyakits` (`id`, `kode`, `nama`, `penyebab`) VALUES
(1, 'P001', 'Influenza', 'Secara langsung apabila cipratan air dari mulut (droplet) mengenai orang lain—saat bersin, batuk, atau berbicara. Penularan secara tidak langsung terjadi apabila Anda menyentuh permukaan atau benda yang telah terkontaminasi virus flu, lalu tangan Anda menyentuh mulut dan hidung sehingga virus masuk ke dalam tubuh.'),
(2, 'P002', 'Demam berdarah dengue(DBD)', 'Virus dengue masuk ke tubuh manusia melalui gigitan nyamuk Aedes aegypti. Jumlah nyamuk Aedes aegypti biasanya meningkat pada awal musim hujan.'),
(3, 'P003', 'Hepatitis', 'Melalui makanan atau minuman yang tidak bersih, misalnya es batu yang proses pembuatannya terkontaminasi virus hepatitis. Penularan virus hepatitis B dan hepatitis C melalui darah dan cairan tubuh yang terinfeksi; seperti transfusi darah, hubungan seks, pembuatan tato dan tindik, serta injeksi.'),
(4, 'P004', 'Malaria', 'Parasit plasmodium dibawa dan disebarkan oleh nyamuk Anopheles yang kemudian menggigit manusia.'),
(5, 'P005', 'Campak', 'Virus penyebab campak menular melalui percikan air liur penderita saat batuk atau bersin. Selain itu, bisa karena Anda menyentuh benda yang telah terpercik air liur penderita'),
(6, 'P006', 'Tifus', 'Virus penyebab campak menular melalui percikan air liur penderita saat batuk atau bersin. Selain itu, bisa karena Anda menyentuh benda yang telah terpercik air liur penderita'),
(7, 'P007', 'Cacingan', 'Telur cacing dapat masuk melalui kuku dan tangan yang tidak bersih yang kemudian menyentuh mulut atau makanan. Selain itu, cacing juga bisa masuk lewat makanan yang tidak dibersihkan dengan baik sebelum dimasak serta penggunaan barang yang sudah terkontaminasi cacing (handuk, pakaian, atau sprei).');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(2, 'logs-list', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(3, 'logs-delete', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(4, 'role-list', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(5, 'role-create', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(6, 'role-edit', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(7, 'role-delete', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(8, 'member-list', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(9, 'member-create', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(10, 'member-edit', 'web', '2023-02-07 07:52:26', '2023-02-07 07:52:26'),
(11, 'member-delete', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(12, 'setting-list', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(13, 'setting-edit', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(14, 'penyakit-list', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(15, 'penyakit-create', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(16, 'penyakit-edit', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(17, 'penyakit-delete', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(18, 'gejala-list', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(19, 'gejala-create', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(20, 'gejala-edit', 'web', '2023-02-07 07:52:27', '2023-02-07 07:52:27'),
(21, 'gejala-delete', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(22, 'rules-list', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(23, 'rules-edit', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(24, 'diagnosa', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(25, 'diagnosa-create', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(26, 'riwayat-list', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28'),
(27, 'riwayat-show', 'web', '2023-02-07 07:52:28', '2023-02-07 07:52:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayats`
--

CREATE TABLE `riwayats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil_diagnosa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_max` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala_terpilih` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayats`
--

INSERT INTO `riwayats` (`id`, `nama`, `hasil_diagnosa`, `cf_max`, `gejala_terpilih`, `file_pdf`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Destiney Gerhold MD', 'a:2:{i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Tifus\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.5201920000000001;}i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.4;}i:1;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.8;}}s:8:\"hasil_cf\";d:0.88;}}', 'a:2:{i:0;d:0.88;i:1;s:15:\"Cacingan (P007)\";}', 'a:4:{i:20;a:4:{s:4:\"nama\";s:19:\"Sakit di persendian\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:1;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:5;a:4:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:4;a:4:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}}', 'Diagnosa-Destiney Gerhold MD-1675756656.pdf', 1, '2023-02-01 07:57:35', '2023-02-07 07:57:39'),
(2, 'Prof. Hortense Leuschke DVM', 'a:3:{i:3;a:4:{s:13:\"nama_penyakit\";s:9:\"Hepatitis\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:15:\"Penyakit kuning\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:-2.4;}i:1;a:5:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:-0.6352941176470589;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Tifus\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.4;}i:1;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.5920000000000001;}i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:1;}i:1;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.8;}}s:8:\"hasil_cf\";d:1;}}', 'a:2:{i:0;d:1;i:1;s:15:\"Cacingan (P007)\";}', 'a:4:{i:14;a:4:{s:4:\"nama\";s:15:\"Penyakit kuning\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:4;a:4:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:12;a:4:{s:4:\"nama\";s:15:\"Tubuh menggigil\";s:4:\"kode\";s:4:\"G012\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:16;a:4:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Prof. Hortense Leuschke DVM-1675756660.pdf', 1, '2023-01-28 07:57:40', '2023-02-07 07:57:44'),
(3, 'Ms. Flossie Oberbrunner', 'a:1:{i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Gatal\";s:4:\"kode\";s:4:\"G019\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.6;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.8;}}s:8:\"hasil_cf\";d:0.92;}}', 'a:2:{i:0;d:0.92;i:1;s:15:\"Cacingan (P007)\";}', 'a:4:{i:10;a:4:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:15;a:4:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:19;a:4:{s:4:\"nama\";s:5:\"Gatal\";s:4:\"kode\";s:4:\"G019\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:5;a:4:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}}', 'Diagnosa-Ms. Flossie Oberbrunner-1675756664.pdf', 1, '2023-02-04 07:57:44', '2023-02-07 07:57:46'),
(4, 'Dr. Heber Pfannerstill V', 'a:1:{i:3;a:4:{s:13:\"nama_penyakit\";s:9:\"Hepatitis\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:15:\"Penyakit kuning\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:-2.4;}i:1;a:5:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:-2.4;}}s:8:\"hasil_cf\";d:-1.411764705882353;}}', 'a:2:{i:0;d:-1.411764705882353;i:1;s:16:\"Hepatitis (P003)\";}', 'a:5:{i:14;a:4:{s:4:\"nama\";s:15:\"Penyakit kuning\";s:4:\"kode\";s:4:\"G014\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:10;a:4:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:7;a:4:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:15;a:4:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:9;a:4:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}}', 'Diagnosa-Dr. Heber Pfannerstill V-1675756666.pdf', 1, '2023-02-04 07:57:46', '2023-02-07 07:57:49'),
(5, 'Macy Cormier', 'a:3:{i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Tifus\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.4;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:2;a:5:{s:4:\"nama\";s:11:\"Sakit perut\";s:4:\"kode\";s:4:\"G008\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.7225600000000001;}i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:1;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.8;}i:2;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:-4;}}s:8:\"hasil_cf\";d:-0.6;}i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.8;}}s:8:\"hasil_cf\";d:-0.3182222222222222;}}', 'a:2:{i:0;d:0.7225600000000001;i:1;s:12:\"Tifus (P006)\";}', 'a:6:{i:4;a:4:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:2;a:4:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:5;a:4:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:6;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:21;a:4:{s:4:\"nama\";s:12:\"Sakit kepala\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:8;a:4:{s:4:\"nama\";s:11:\"Sakit perut\";s:4:\"kode\";s:4:\"G008\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}}', 'Diagnosa-Macy Cormier-1675756669.pdf', 1, '2023-02-07 07:57:49', '2023-02-07 07:57:54'),
(6, 'Orpha Wiegand', 'a:3:{i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.22720000000000004;}i:5;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.8;}}s:8:\"hasil_cf\";d:0.864;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Tifus\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.4;}}s:8:\"hasil_cf\";d:0.544;}}', 'a:2:{i:0;d:0.864;i:1;s:13:\"Campak (P005)\";}', 'a:5:{i:2;a:4:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:10;a:4:{s:4:\"nama\";s:5:\"Pilek\";s:4:\"kode\";s:4:\"G010\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:9;a:4:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:6;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:1;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}}', 'Diagnosa-Orpha Wiegand-1675756674.pdf', 1, '2023-01-30 07:57:54', '2023-02-07 07:57:58'),
(7, 'Fleta Hills', 'a:4:{i:3;a:4:{s:13:\"nama_penyakit\";s:9:\"Hepatitis\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.48;}i:1;a:5:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.6048;}i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.8;}i:1;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:-0.35555555555555557;}i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:2:\"-4\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:-4;}i:1;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.8;}}s:8:\"hasil_cf\";d:-0.64;}i:1;a:4:{s:13:\"nama_penyakit\";s:9:\"Influenza\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.12;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.26080000000000003;}}', 'a:2:{i:0;d:0.6048;i:1;s:16:\"Hepatitis (P003)\";}', 'a:6:{i:16;a:4:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:15;a:4:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:11;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:7;a:4:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:6;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}}', 'Diagnosa-Fleta Hills-1675756678.pdf', 1, '2023-02-06 07:57:58', '2023-02-07 07:58:03'),
(8, 'Golda Harvey', 'a:2:{i:2;a:4:{s:13:\"nama_penyakit\";s:26:\"Demam berdarah dengue(DBD)\";s:13:\"kode_penyakit\";s:4:\"P002\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:19:\"Sakit di persendian\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.4832000000000001;}i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.12;}i:1;a:5:{s:4:\"nama\";s:11:\"Tubuh nyeri\";s:4:\"kode\";s:4:\"G013\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.3790720000000001;}}', 'a:2:{i:0;d:0.4832000000000001;i:1;s:33:\"Demam berdarah dengue(DBD) (P002)\";}', 'a:5:{i:21;a:4:{s:4:\"nama\";s:12:\"Sakit kepala\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:2:\"-4\";s:9:\"keyakinan\";N;}i:20;a:4:{s:4:\"nama\";s:19:\"Sakit di persendian\";s:4:\"kode\";s:4:\"G020\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:2;a:4:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:13;a:4:{s:4:\"nama\";s:11:\"Tubuh nyeri\";s:4:\"kode\";s:4:\"G013\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:11;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G011\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}}', 'Diagnosa-Golda Harvey-1675756683.pdf', 1, '2023-02-05 07:58:03', '2023-02-07 07:58:06'),
(9, 'Jamarcus Waelchi', 'a:2:{i:1;a:4:{s:13:\"nama_penyakit\";s:9:\"Influenza\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.22720000000000004;}i:5;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.6400000000000001;}}s:8:\"hasil_cf\";d:0.7552000000000001;}}', 'a:2:{i:0;d:0.7552000000000001;i:1;s:13:\"Campak (P005)\";}', 'a:3:{i:16;a:4:{s:4:\"nama\";s:11:\"Nyeri perut\";s:4:\"kode\";s:4:\"G016\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}i:19;a:4:{s:4:\"nama\";s:5:\"Gatal\";s:4:\"kode\";s:4:\"G019\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Jamarcus Waelchi-1675756686.pdf', 1, '2023-02-06 07:58:06', '2023-02-07 07:58:09'),
(10, 'Dr. Meghan Murphy', 'a:4:{i:1;a:4:{s:13:\"nama_penyakit\";s:9:\"Influenza\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:12:\"Sakit kepala\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}}s:8:\"hasil_cf\";d:0.22720000000000004;}i:2;a:4:{s:13:\"nama_penyakit\";s:26:\"Demam berdarah dengue(DBD)\";s:13:\"kode_penyakit\";s:4:\"P002\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:15:\"Trombosit turun\";s:4:\"kode\";s:4:\"G017\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}i:2;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.16000000000000003;}}s:8:\"hasil_cf\";d:0.514816;}i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.12;}i:1;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.08000000000000002;}}s:8:\"hasil_cf\";d:0.1904;}i:3;a:4:{s:13:\"nama_penyakit\";s:9:\"Hepatitis\";s:13:\"kode_penyakit\";s:4:\"P003\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.6;}i:1;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.24;}}s:8:\"hasil_cf\";d:0.696;}}', 'a:2:{i:0;d:0.696;i:1;s:16:\"Hepatitis (P003)\";}', 'a:5:{i:21;a:4:{s:4:\"nama\";s:12:\"Sakit kepala\";s:4:\"kode\";s:4:\"G021\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:17;a:4:{s:4:\"nama\";s:15:\"Trombosit turun\";s:4:\"kode\";s:4:\"G017\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:2;a:4:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:15;a:4:{s:4:\"nama\";s:11:\"Nyeri sendi\";s:4:\"kode\";s:4:\"G015\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:1;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:7:\"Mungkin\";}}', 'Diagnosa-Dr. Meghan Murphy-1675756689.pdf', 1, '2023-01-31 07:58:09', '2023-02-07 07:58:14'),
(11, 'Tiger Hood', 'a:5:{i:1;a:4:{s:13:\"nama_penyakit\";s:9:\"Influenza\";s:13:\"kode_penyakit\";s:4:\"P001\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.12;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.2;}}s:8:\"hasil_cf\";d:0.40864;}i:5;a:4:{s:13:\"nama_penyakit\";s:6:\"Campak\";s:13:\"kode_penyakit\";s:4:\"P005\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.48;}i:1;a:5:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.6400000000000001;}}s:8:\"hasil_cf\";d:0.8128000000000001;}i:6;a:4:{s:13:\"nama_penyakit\";s:5:\"Tifus\";s:13:\"kode_penyakit\";s:4:\"P006\";s:6:\"gejala\";a:4:{i:0;a:5:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.24;}i:1;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.4;}i:2;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.8\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:-0.32000000000000006;}i:3;a:5:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.4;s:15:\"hasil_perkalian\";d:0.4;}}s:8:\"hasil_cf\";d:0.5018181818181818;}i:4;a:4:{s:13:\"nama_penyakit\";s:7:\"Malaria\";s:13:\"kode_penyakit\";s:4:\"P004\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.2;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.8\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:-0.16000000000000003;}i:2;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:0.2;s:15:\"hasil_perkalian\";d:0.2;}}s:8:\"hasil_cf\";d:0.22758620689655173;}i:7;a:4:{s:13:\"nama_penyakit\";s:8:\"Cacingan\";s:13:\"kode_penyakit\";s:4:\"P007\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:1;}i:1;a:5:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.8\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:-0.8;}i:2;a:5:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:1:\"1\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:1;}}s:8:\"hasil_cf\";d:1;}}', 'a:2:{i:0;d:1;i:1;s:15:\"Cacingan (P007)\";}', 'a:8:{i:1;a:4:{s:4:\"nama\";s:5:\"Demam\";s:4:\"kode\";s:4:\"G001\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:14:\"Sangat Mungkin\";}i:2;a:4:{s:4:\"nama\";s:12:\"Demam tinggi\";s:4:\"kode\";s:4:\"G002\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:3;a:4:{s:4:\"nama\";s:5:\"Batuk\";s:4:\"kode\";s:4:\"G003\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:12:\"Hampir pasti\";}i:4;a:4:{s:4:\"nama\";s:5:\"Diare\";s:4:\"kode\";s:4:\"G004\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:5;a:4:{s:4:\"nama\";s:4:\"Mual\";s:4:\"kode\";s:4:\"G005\";s:7:\"cf_user\";s:4:\"-0.8\";s:9:\"keyakinan\";s:18:\"Hampir pasti tidak\";}i:6;a:4:{s:4:\"nama\";s:6:\"Muntah\";s:4:\"kode\";s:4:\"G006\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:7;a:4:{s:4:\"nama\";s:10:\"Nyeri otot\";s:4:\"kode\";s:4:\"G007\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}i:9;a:4:{s:4:\"nama\";s:9:\"Kram otot\";s:4:\"kode\";s:4:\"G009\";s:7:\"cf_user\";s:1:\"1\";s:9:\"keyakinan\";s:5:\"Pasti\";}}', 'Diagnosa-Tiger Hood-1675756892.pdf', 3, '2023-02-07 08:01:32', '2023-02-07 08:01:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-02-07 07:52:29', '2023-02-07 07:52:29'),
(2, 'Pengguna', 'web', '2023-02-07 07:52:33', '2023-02-07 07:52:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Deden', 'admin', '$2y$10$z2CUtwu6GuCuKQr6oZgYJe2VzeyfBeKgHQCVAyXvoCR8S7pV83gfq', NULL, NULL, '2023-02-07 07:52:29', '2023-02-07 07:52:29'),
(2, 'Johni', 'johni', '$2y$10$bBeqvS1w4nOHUL8pwFIeJeuCdplghYzFDPXo28AvIKJXQTTxTYktq', NULL, NULL, '2023-02-07 07:52:32', '2023-02-07 07:52:32'),
(3, 'Tiger Hood', 'gakaseca', '$2y$10$m4jiSFC19iPqpYF/oSvxIuTyKvb91y1c0Qdl.SjrL40JeMPZHBpnq', NULL, NULL, '2023-02-07 08:00:45', '2023-02-07 08:00:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `riwayats`
--
ALTER TABLE `riwayats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `riwayats`
--
ALTER TABLE `riwayats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
