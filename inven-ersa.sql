-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jun 2022 pada 10.11
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inven`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `contents`, `admin`, `status`) VALUES
(21, 'Disini bisa tulis notes', 'Stock', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_keluar`
--

CREATE TABLE IF NOT EXISTS `sbrg_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `so` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `penerima` varchar(35) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `sbrg_keluar`
--

INSERT INTO `sbrg_keluar` (`id`, `idx`, `tgl`, `jumlah`, `so`, `po`, `penerima`, `keterangan`) VALUES
(15, 244, '2020-08-29', 1000, '', '', 'Kasmina', 'Laku'),
(16, 254, '2022-06-16', 100, '82382jsjdj', '2932jsjjds', 'Bengkel abadi', 'Ok'),
(17, 260, '0000-00-00', 80, '28313jjj', '2932jsjjds', 'Bengkel Ersa', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_masuk`
--

CREATE TABLE IF NOT EXISTS `sbrg_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` varchar(255) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `so` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `supplier`, `idx`, `tgl`, `so`, `po`, `jumlah`, `keterangan`) VALUES
(13, 'PT. GAJAH TUNGGAL', 252, '2022-06-15', '2932jsjjds', '82382jsjdj', 200, 'dummy'),
(14, 'PT. GAJAH TUNGGAL', 255, '2022-06-15', '2932939', '28313jjj', 10, 'dummy'),
(15, 'PT. GAJAH TUNGGAL', 254, '2022-06-15', '222', '82382jsjdj', 90, 'dummy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slogin`
--

CREATE TABLE IF NOT EXISTS `slogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Kepala Gudang', 'stock');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sstock_brg`
--

CREATE TABLE IF NOT EXISTS `sstock_brg` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `kode_brg` varchar(255) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `harga` int(255) NOT NULL,
  `diskon` int(11) NOT NULL,
  `stock` int(12) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `subtype` varchar(255) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tgl_input` datetime NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

--
-- Dumping data untuk tabel `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `kode_brg`, `nama`, `harga`, `diskon`, `stock`, `jenis`, `subtype`, `merk`, `keterangan`, `tgl_input`) VALUES
(252, 'BRG0001', '50-8', 41000, 20, 300, 'BAN DALAM', 'Tube', 'IRC', 'Ban tersebut memiliki lebar 50 inchi dengan tinggi dinding 50 inchi dan bisa digunakan pada velg ukuran 8  inchi.', '2022-06-09 15:10:13'),
(255, 'BRG0002', '20/80-16', 56000, 15, 125, 'BAN DALAM', 'Tube', 'IRC', 'ban motor tersebut memiliki lebar 20mm dengan tinggi dinding ban 80mm dan untuk velg ukuran 16 inchi.', '2022-06-10 21:39:18'),
(254, 'BRG0003', '60/400-10', 46000, 10, 100, 'BAN DALAM', 'Tube', 'IRC', 'ban motor tersebut memiliki lebar 60mm dengan tinggi dinding ban 400mm dan untuk velg ukuran 10 inchi.', '2022-06-09 19:31:27'),
(257, 'BRG0004', '60-18', 79000, 25, 250, 'BAN DALAM', 'Tube', 'IRC', 'Ban tersebut memiliki lebar 60 inchi dengan tinggi dinding 60 inchi dan bisa digunakan pada velg ukuran 18  inchi.', '2022-06-10 21:44:26'),
(256, 'BRG0005', '25/350-19', 66500, 20, 120, 'BAN DALAM', 'Tube', 'IRC', 'ban motor tersebut memiliki lebar 25mm dengan tinggi dinding ban 350mm dan untuk velg ukuran 19 inchi.', '2022-06-10 21:42:23'),
(258, 'BRG0006', '410-18 GP 22', 425000, 30, 450, 'BAN LUAR (ukuran inch)', 'TubeType', 'IRC', ' Type GP22  Ukuran Ban 410-18', '2022-06-10 21:54:19'),
(259, 'BRG0007', '325-18 TR', 335000, 20, 160, 'BAN LUAR (ukuran inch)', 'TubeType', 'IRC', 'BAN LUAR IRC TRIALS TR  UKURAN 3.25 RING 18  325-18  TUBETYPE', '2022-06-10 22:00:02'),
(260, 'BRG0008', '350-18 TR', 395000, 15, 100, 'BAN LUAR (ukuran inch)', 'TubeType', 'IRC', 'BAN LUAR IRC TRIALS TR  UKURAN 3.50 RING 18  350-18  TUBETYPE', '2022-06-10 22:02:03'),
(261, 'BRG0009', '160/70-17 M/C 73H RX-02R TL', 760000, 25, 390, 'BAN LUAR (Tubeless)', 'Tubeless', 'IRC', 'TIPE : RX 02 ROAD WINNER Ukuran : 160 / 70 - 17 cocok untuk moge seperti : ninja , vixion , thunder CBR dan lainnya', '2022-06-10 22:13:55'),
(262, 'BRG0010', '150/70-17 M/C 69H RX-02R TL', 710000, 25, 400, 'BAN LUAR (Tubeless)', 'Tubeless', 'IRC', 'TIPE : RX 02 ROAD WINNER Ukuran : 150 / 70 - 17 cocok untuk moge seperti : ninja , vixion , thunder CBR dan lainnya', '2022-06-10 22:18:13'),
(263, 'BRG0011', '100/90-14 TR', 245000, 10, 200, 'BAN LUAR (Ukuran Metric)', 'TubeType', 'IRC', ' memiliki lebar 100mm dengan tinggi dinding ban 90mm dan untuk velg ukuran 14 inchi. klo TR(Trials)', '2022-06-10 23:06:50'),
(264, 'BRG0012', '50/90 -17 SPEED KING', 250000, 10, 250, 'BAN LUAR (Racing)', 'TubeType', 'IRC', 'SPEED KING NF81 Series & SPEED KING NR81 Series Ban yang didsain khusus untuk kompetisi drag bike yang menjamin kestabilan dan akselerasi dari saat start hingga finish Untuk Motor Balap Drag Race Underbone.Ukuran: 50/90-17', '2022-06-10 23:14:40'),
(265, 'BRG0011', 'AA', 2000, 25, 0, 'BAN LUAR (ukuran inch)', 'TubeType', 'IRC', '-', '2022-06-16 13:38:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
