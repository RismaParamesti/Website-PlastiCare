-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 12.34
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksampah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_table`
--

INSERT INTO `admin_table` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_penjemputan`
--

CREATE TABLE `laporan_penjemputan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_sampah` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status_rekomendasi` enum('disetujui','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_penjemputan`
--

INSERT INTO `laporan_penjemputan` (`id`, `nama`, `telepon`, `email`, `alamat`, `jenis_sampah`, `jumlah`, `jadwal`, `keterangan`, `status_rekomendasi`) VALUES
(14, 'Siswanto', '086532245', '22082010040@student.upnjatim.ac.id', 'Barata Jaya', 'Plastik', 6, '2024-06-02', '-', 'disetujui'),
(15, 'fakhri', '08673462839', 'fakhri.yunansah@gmail.com', 'Rungkut', 'Plastik', 4, '2024-06-04', 'Dimohon untuk tepat waktu', 'disetujui'),
(16, 'Rizka', '086583839390', 'ranichamsyahr@gmail.com', 'Wonocolo', 'Plastik', 5, '2024-06-02', '-', 'disetujui'),
(17, 'Chamsyah', '086583839378', 'ranichamsyahr@gmail.com', 'Tenggilis Mejoyo', 'Plastik', 5, '2024-06-02', '-', 'disetujui'),
(18, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3, '2024-06-20', 'Konfrimasi dulu ya', 'disetujui'),
(19, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3, '2024-06-20', 'Konfrimasi dulu ya', 'disetujui'),
(20, 'Syuraini', '085748541139', '22082010033@gmail.com', 'Kendangsari', 'Plastik', 1, '2024-06-02', 'Dimohon jangan telat', 'disetujui'),
(21, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1, '2024-06-02', 'Sesuai alamat ya', 'disetujui'),
(22, 'Syuraini', '085748541139', '22082010033@gmail.com', 'Kendangsari', 'Plastik', 1, '2024-06-02', 'Dimohon jangan telat', 'disetujui'),
(23, 'Syuraini', '085748541139', '22082010033@gmail.com', 'Kendangsari', 'Plastik', 1, '2024-06-02', 'Dimohon jangan telat', 'disetujui'),
(24, 'Rizka', '086583839390', 'ranichamsyahr@gmail.com', 'Wonocolo', 'Plastik', 5, '2024-06-02', '-', 'disetujui'),
(25, 'Chamsyah', '086583839378', 'ranichamsyahr@gmail.com', 'Tenggilis Mejoyo', 'Plastik', 5, '2024-06-02', '-', 'disetujui'),
(26, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1, '2024-06-02', 'Sesuai alamat ya', 'disetujui'),
(27, 'Syuraini', '085748541139', '22082010033@gmail.com', 'Kendangsari', 'Plastik', 1, '2024-06-02', 'Dimohon jangan telat', 'disetujui'),
(28, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3, '2024-06-20', 'Konfrimasi dulu ya', 'disetujui'),
(29, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1, '2024-06-02', 'Sesuai alamat ya', 'disetujui'),
(30, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1, '2024-06-02', 'Sesuai alamat ya', 'disetujui'),
(31, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1, '2024-06-02', 'Sesuai alamat ya', 'disetujui'),
(32, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3, '2024-06-20', 'Konfrimasi dulu ya', 'ditolak'),
(33, 'bbbbbbb', '08673462839', 's@d', 's', 'Plastik', 30, '2024-06-04', 'man', 'disetujui'),
(34, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3, '2024-06-20', 'Konfrimasi dulu ya', 'disetujui'),
(35, 'susmitha', '086534578922', 'susmitha@gmail.com', 'jl kalijudan menur', 'Plastik', 10, '2024-06-13', '-', 'disetujui'),
(36, 'angga', '08464738847475', 'angga@gmail.com', 'jl kalianak 10', 'Plastik', 10, '2024-06-14', 'tlg kasih kabar', 'disetujui'),
(37, 'bagas', '086546789', 'bagas@gmail.com', 'jl wonokromo', 'Plastik', 12, '2024-06-17', 'tepat waktu yaa', 'disetujui'),
(38, 'yona', '0867654322213', 'yona@gmail.com', 'Jl siwalankerto', 'Plastik', 1, '2024-06-18', 'Harap tepat waktu ya', 'disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_sampah`
--

CREATE TABLE `pengajuan_sampah` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_sampah` varchar(100) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `jadwal` datetime NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status_rekomendasi` varchar(20) NOT NULL DEFAULT 'menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengajuan_sampah`
--

INSERT INTO `pengajuan_sampah` (`id`, `nama`, `telepon`, `email`, `alamat`, `jenis_sampah`, `jumlah`, `jadwal`, `keterangan`, `status_rekomendasi`) VALUES
(2, 'Risma', '08674567845', '22082010014@gmail.com', 'taman pinang', 'Plastik', 1.00, '2024-06-02 16:59:00', 'Sesuai alamat ya', 'disetujui'),
(4, 'Hanim', '086432356789', '22082010010@gmail.com', 'Wonorejo', 'Plastik', 3.00, '2024-06-20 17:15:00', 'Konfrimasi dulu ya', 'disetujui'),
(5, 'Chamsyah', '086583839378', 'ranichamsyahr@gmail.com', 'Tenggilis Mejoyo', 'Plastik', 5.00, '2024-06-02 17:22:00', '-', 'disetujui'),
(6, 'Rizka', '086583839390', 'ranichamsyahr@gmail.com', 'Wonocolo', 'Plastik', 5.00, '2024-06-02 17:22:00', '-', 'disetujui'),
(7, 'fakhri', '08673462839', 'fakhri.yunansah@gmail.com', 'Rungkut', 'Plastik', 4.00, '2024-06-04 01:58:00', 'Dimohon untuk tepat waktu', 'disetujui'),
(8, 'Siswanto', '086532245', '22082010040@student.upnjatim.ac.id', 'Barata Jaya', 'Plastik', 6.00, '2024-06-02 22:03:00', '-', 'disetujui'),
(9, 'zefa', '08643224512', 'howyowrong@gmail.com', 'Sukodono', 'Plastik', 4.00, '2024-06-02 22:28:00', '-', 'disetujui'),
(11, 'aku', '0865838393', 'fakhri.yunansah@gmail.com', 'jl prapen', 'Plastik', 1.00, '2024-06-04 13:18:00', 'aas', 'disetujui'),
(12, 'Nisrin', '08673462839', 'nisrin@gmail.com', 'jl rungkut', 'Plastik', 30.00, '2024-06-04 15:06:00', 'man', 'disetujui'),
(13, 'susmitha', '086534578922', 'susmitha@gmail.com', 'jl kalijudan menur', 'Plastik', 10.00, '2024-06-13 09:35:00', '-', 'disetujui'),
(14, 'naya', '085637383902', 'naya@gmail.com', 'di kendangsari gg XI', 'Plastik', 5.00, '2024-06-14 18:52:00', '-', 'menunggu'),
(15, 'zefa', '08654356900', 'zefa@gmail.com', 'jl kalianak rt 5', 'Plastik', 5.00, '2024-06-14 18:54:00', 'tepat waktu ya', 'menunggu'),
(16, 'fuguh', '087645788922', 'fuguh@gmail.com', 'jl kalijudan', 'Plastik', 2.00, '2024-06-14 18:55:00', 'tepat waktu', 'menunggu'),
(17, 'angga', '08464738847475', 'angga@gmail.com', 'jl kalianak 10', 'Plastik', 10.00, '2024-06-14 19:12:00', 'tlg kasih kabar', 'disetujui'),
(18, 'bagas', '086546789', 'bagas@gmail.com', 'jl wonokromo', 'Plastik', 12.00, '2024-06-17 13:00:00', 'tepat waktu yaa', 'disetujui'),
(19, 'yona', '0867654322213', 'yona@gmail.com', 'Jl siwalankerto', 'Plastik', 1.00, '2024-06-18 16:43:00', 'Harap tepat waktu ya', 'disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan_table`
--

CREATE TABLE `pimpinan_table` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pimpinan_table`
--

INSERT INTO `pimpinan_table` (`id`, `username`, `password`) VALUES
(1, 'pimpinan', '7d3207a13dc221ac13c2f3dac3011f50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id`, `nama`, `pesan`, `tanggal`) VALUES
(1, 'rani', 'sangat puas', '2024-06-16 17:18:33'),
(3, 'Risma', 'Prosesnya sangat cepat', '2024-06-16 17:19:39'),
(4, 'Hanim', 'Waw diluar ekspetasi', '2024-06-16 17:19:58'),
(9, 'yona', 'wah sangat cepat prosesnya', '2024-06-18 09:45:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_form`
--

CREATE TABLE `user_form` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(11, 'rani', 'ranichamsyahr@gmail.com', '8daed774c333aeac3b87b539f04966b2', 'user'),
(12, 'yona', 'yona@gmail.com', '4f721f3163abd3d24e9bf0bbb6ba5ff3', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_penjemputan`
--
ALTER TABLE `laporan_penjemputan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_sampah`
--
ALTER TABLE `pengajuan_sampah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pimpinan_table`
--
ALTER TABLE `pimpinan_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `laporan_penjemputan`
--
ALTER TABLE `laporan_penjemputan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_sampah`
--
ALTER TABLE `pengajuan_sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pimpinan_table`
--
ALTER TABLE `pimpinan_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
