-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Apr 2024 pada 04.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sigypsum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `foto_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_kategori`, `nama_barang`, `deskripsi_barang`, `harga_barang`, `stok_barang`, `foto_barang`) VALUES
(1, 1, 'Lis Gypsum 8 CM Polos', 'Gypsum bagus harga terjangkau', '13000', 20, '8 cm polos.jpeg'),
(3, 3, 'Roster motif pagar', 'Roster bermotif pagar yang elegan', '15000', 7, 'roster motif pagar harga 15k-min.jpg'),
(5, 1, 'Lis Polos 10 cm polos', 'Lis gypsum motif polos minimalis dengan ukuran panjang +- 2 meter dengan lebar 10cm', '15000', 22, 'S0405NZ526EVVPAM10 cm polos.jpg'),
(6, 1, 'Bunga Lampu Oval Besar', 'Ornamen interior rumah untuk pijakan lampu, menambah nilai estetika pada ruangan', '50000', 4, 'S0408RHYYAX89TWJbunga lampu oval besar.jpeg'),
(7, 1, 'Bunga Lampu Kotak', 'Ornamen interior rumah untuk pijakan lampu, menambah nilai estetika pada ruangan', '30000', 10, 'S040BOGCQDBWJSRZbunga lampu kotak.jpeg'),
(10, 3, 'Bopen Kaca', 'Bopen kaca, bisa dipasang di ruang dapur, kamar mandi, dan ventilasi udara ruangan dengan ukuran besar.', '150000', 5, 'S04QEP05AM0BAMYKbopen kaca harga 150k.jpg'),
(13, 3, 'Roster Ukuran 50 Cm', 'roster ukuran 40cm dengan, dapat menambah nilai estetika ketika dipasang', '40000', 10, 'S04QLBY6BM35FGZLroster 50cm harga 40k.jpg'),
(14, 2, 'Lis Beton 5cm', 'Lis beton 5cm dengan panjang 1m', '13000', 10, 'S04R29PUKIQUMZNALis beton 5 cm harga 13k.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bukti`
--

CREATE TABLE `tb_bukti` (
  `id_bukti` int(11) NOT NULL,
  `id_pesanan` varchar(255) NOT NULL,
  `foto_bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_pesanan`
--

CREATE TABLE `tb_detail_pesanan` (
  `id_detail` int(11) NOT NULL,
  `id_pesanan` varchar(255) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `subtotal_harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_detail_pesanan`
--

INSERT INTO `tb_detail_pesanan` (`id_detail`, `id_pesanan`, `id_barang`, `jumlah_pesanan`, `subtotal_harga`) VALUES
(14, 'SBBSWBNC5HCD93FN', 3, 1, '15000'),
(15, 'SBBSWBNC5HCD93FN', 6, 1, '50000'),
(16, 'SBBT0RMPCJKY164J', 5, 3, '45000'),
(17, 'SBBT0RMPCJKY164J', 10, 1, '150000'),
(18, 'SBBTLYO1OI2NR53L', 5, 5, '75000'),
(19, 'SBBTLYO1OI2NR53L', 10, 1, '150000'),
(20, 'SBCGOJXOHOJNHUMD', 10, 1, '150000'),
(21, 'SBCGOJXOHOJNHUMD', 14, 2, '26000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Gypsum'),
(2, 'Beton '),
(3, 'Roster');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pesanan` varchar(255) NOT NULL,
  `nama_pesanan` varchar(255) NOT NULL,
  `alamat_pesanan` varchar(255) NOT NULL,
  `no_hp_pesanan` varchar(255) NOT NULL,
  `email_pesanan` varchar(255) NOT NULL,
  `total_harga_pesanan` varchar(255) NOT NULL,
  `status_pesanan` enum('Menunggu Pembayaran','Diproses','Dikirim','Ditolak','Selesai') NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `jenis_pembayaran` enum('COD','Transfer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id_pesanan`, `nama_pesanan`, `alamat_pesanan`, `no_hp_pesanan`, `email_pesanan`, `total_harga_pesanan`, `status_pesanan`, `tanggal_pesanan`, `jenis_pembayaran`) VALUES
('SBBSWBNC5HCD93FN', 'dian', 'Jl. Diponegoro 3232', '089633292031', 'dianganteng@gmail.com', '115000', 'Selesai', '2024-04-03', 'COD'),
('SBBT0RMPCJKY164J', 'chandra', 'Jl. Pattimura 69', '083199827377', 'chandrachanchan@gmail.com', '195000', 'Menunggu Pembayaran', '2024-04-03', 'COD'),
('SBBTLYO1OI2NR53L', 'dinu', 'Jl. Pangeran Antasari Gg 2', '082233123233', 'dinunu@gmail.com', '225000', 'Menunggu Pembayaran', '2024-04-03', 'Transfer'),
('SBCGOJXOHOJNHUMD', 'Rikad', 'Jl. Bengkuring dalam', '082299382312', 'rikadscatter666@gmail.com', '176000', 'Menunggu Pembayaran', '2024-04-03', 'Transfer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_bukti`
--
ALTER TABLE `tb_bukti`
  ADD PRIMARY KEY (`id_bukti`);

--
-- Indeks untuk tabel `tb_detail_pesanan`
--
ALTER TABLE `tb_detail_pesanan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_pesanan`
--
ALTER TABLE `tb_detail_pesanan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
