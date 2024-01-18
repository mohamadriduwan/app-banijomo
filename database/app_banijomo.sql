-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2024 pada 10.11
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_banijomo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keluarga`
--

CREATE TABLE `data_keluarga` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `jenis_kelamin` varchar(256) NOT NULL,
  `tempat_lahir` varchar(256) NOT NULL,
  `tgl_lahir` varchar(256) NOT NULL,
  `tgl_wafat` varchar(256) NOT NULL,
  `pekerjaan` varchar(256) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `generasi` varchar(25) NOT NULL,
  `dari_generasi` varchar(20) NOT NULL,
  `id_ayah` varchar(25) NOT NULL,
  `id_ibu` varchar(25) NOT NULL,
  `date_created` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_keluarga`
--

INSERT INTO `data_keluarga` (`id`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `tgl_wafat`, `pekerjaan`, `alamat`, `no_hp`, `generasi`, `dari_generasi`, `id_ayah`, `id_ibu`, `date_created`) VALUES
(1, 'H. DJOMO', 'L', 'Blitar', '1901-01-01', '', 'Petani', 'Bakung Udanawu Blitar', '', '0', '1', '0', '2', '2024-01-18 11:20:05'),
(2, 'HJ. SUTINI', 'P', 'Blitar', '1986-04-04', '', 'Pegawai Swasta', 'Bakung Udanawu Blitar', '08563637463', '1', '1', '1', '1', ''),
(3, 'NANIK ATABIKAH', 'P', 'Blitar', '', '', '', '', '', '2', '2', '3', '2', ''),
(4, 'MOHAMAD RIDUWAN', 'L', 'Blitar', '', '', '', 'Bakung Udanawu', '08563637463', '3', '2', '4', '3', ''),
(5, 'MUHAMMAD DAFFA SHIDQI ALFATIH', 'L', 'Blitar', '2015-08-12', '', '', '', '', '4', '1', '4', '', ''),
(6, 'ALFATHUNNISA AZZAHRA MAULIDA', 'P', 'Blitar', '2018-11-23', '', '', '', '', '4', '1', '4', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pasangan`
--

CREATE TABLE `data_pasangan` (
  `id` int(11) NOT NULL,
  `nama_pasangan` varchar(256) NOT NULL,
  `jenis_pasangan` varchar(25) NOT NULL,
  `tempat_lahir_pasangan` varchar(256) NOT NULL,
  `tgl_lahir_pasangan` varchar(256) NOT NULL,
  `tgl_wafat_pasangan` varchar(256) NOT NULL,
  `pekerjaan_pasangan` varchar(256) NOT NULL,
  `alamat_pasangan` varchar(256) NOT NULL,
  `no_hp_pasangan` varchar(30) NOT NULL,
  `id_pasangan` varchar(256) NOT NULL,
  `tgl_menikah` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pasangan`
--

INSERT INTO `data_pasangan` (`id`, `nama_pasangan`, `jenis_pasangan`, `tempat_lahir_pasangan`, `tgl_lahir_pasangan`, `tgl_wafat_pasangan`, `pekerjaan_pasangan`, `alamat_pasangan`, `no_hp_pasangan`, `id_pasangan`, `tgl_menikah`) VALUES
(1, 'HJ. DJEMIDAH', 'P', 'Blitar', '1901-01-01', '1998-01-01', 'Petani', 'Bakung Udanawu Blitar', '', '1', '1950-01-01'),
(2, 'HJ. DJEMIDAH 2', 'P', 'Blitar', '1901-01-01', '1998-01-01', 'Petani', 'Bakung Udanawu Blitar', '', '1', '1950-01-01'),
(3, 'H. DARUL CHOIRI', 'L', 'Blitar', '1989-08-01', '', 'Ibu Rumah tangga', 'Bakung udanawu Blitar', '085646112123', '2', '2013-10-22'),
(4, 'NUR SALIM', 'L', '', '', '', '', '', '', '3', ''),
(5, 'ANA FADLILAH', 'P', '', '', '', '', '', '', '4', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Mohamad Riduwan', 'riduwan@gmail.com', '1520504747_png.png', 'riduwan', 1, 1, 1552120289),
(6, 'Jauharotul Maknunah', 'jauha@gmail.com', 'profile.jpg', '123456', 2, 1, 1552285263);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(38, 1, 2),
(42, 1, 3),
(43, 1, 9),
(44, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(10, 'Keluarga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-check', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 1, 'Users', 'admin/users', 'fas fa-fw fa-solid fa-users', 1),
(11, 10, 'Data Keluarga', 'keluarga/datakeluarga', 'fas fa-fw fa-home', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_keluarga`
--
ALTER TABLE `data_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pasangan`
--
ALTER TABLE `data_pasangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_keluarga`
--
ALTER TABLE `data_keluarga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_pasangan`
--
ALTER TABLE `data_pasangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
