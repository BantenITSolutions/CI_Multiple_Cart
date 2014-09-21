-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2012 at 03:08 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_multiple_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `kode_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nama_produk` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(5) NOT NULL,
  `dibeli` int(5) NOT NULL,
  `gbr_kecil` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_besar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tipe_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`kode_produk`, `id_kategori`, `nama_produk`, `harga`, `stok`, `dibeli`, `gbr_kecil`, `gbr_besar`, `deskripsi`, `tipe_produk`) VALUES
('SDL100001', 5, 'hesri', 23000, 0, 1, 'etiga.jpg', 'etiga.jpg', '', 'wanita'),
('SDL100002', 5, 'Arveido', 12000, 20, 1, 'esatu.jpg', 'esatu.jpg', '', 'wanita'),
('SDL100003', 5, 'Arveido', 12000, 20, 11, 'edua.jpg', 'edua.jpg', '', 'wanita'),
('SDL100004', 27, 'All Star', 10000, 20, 1, 'gsatu.jpg', 'gsatu.jpg', '', 'anak'),
('SDL100005', 28, 'Topasan', 10000, 20, 6, 'gdua.jpg', 'gdua.jpg', '', 'anak'),
('SDL100006', 28, 'Quen', 12000, 10, 1, 'enam.jpg', 'enam.jpg', '', 'tanggung'),
('SDL100007', 27, 'nazar', 10000, 30, 11, 'gtiga.jpg', 'gtiga.jpg', '', 'tanggung'),
('SDL100008', 28, 'Alois', 10000, 10, 6, 'empat.jpg', 'empat.jpg', '', 'anak'),
('SDL100009', 27, 'Q-watt', 8000, 30, 1, 'lima.jpg', 'lima.jpg', '', 'anak'),
('SDL100010', 8, 'Boneka Dog', 8000, 0, 1, 'hsatu.jpg', 'hsatu.jpg', '', 'anak'),
('SDL100011', 8, 'Boneka', 9000, 0, 1, 'hdua.jpg', 'hdua.jpg', '', 'tanggung'),
('SDL100012', 4, 'Farisya', 15000, 100, 1, 'ddelapan.jpg', 'ddelapan.jpg', '', 'wanita'),
('SDL100013', 4, 'Aldiyar', 15000, 20, 1, 'ddua.jpg', 'ddua.jpg', '', 'wanita'),
('SDL100014', 4, 'Jala Tinggi', 16000, 0, 1, 'dempat.jpg', 'dempat.jpg', '', 'wanita'),
('SDL100015', 4, 'Aldiyar', 15000, 20, 6, 'dsatu.jpg', 'dsatu.jpg', '', 'wanita'),
('SDL100016', 4, 'Cristal', 14000, 20, 6, 'dsembilan.jpg', 'dsembilan.jpg', '', 'wanita'),
('SDL100017', 10, 'Lampar', 15000, 10, 1, 'bdelapan.jpg', 'bdelapan.jpg', '', 'pria'),
('SDL100018', 14, 'Drilan', 24000, 20, 1, 'bempat.jpg', 'bempat.jpg', '', 'pria'),
('SDL100019', 13, 'Aldiyar', 16000, 20, 11, 'bdua.jpg', 'bdua.jpg', '', 'pria'),
('SDL100020', 13, 'Aldiyar Slop', 16000, 10, 1, 'bsatu.jpg', 'bsatu.jpg', '', 'pria'),
('SDL100021', 14, 'Drilan Slop', 24000, 10, 6, 'btujuh.jpg', 'btujuh.jpg', '', 'pria'),
('SDL100022', 13, 'Cristal', 16000, 30, 6, 'btiga.jpg', 'btiga.jpg', '', 'pria'),
('SDL100023', 3, 'Vectra', 15000, 5, 1, 'csembilan.jpg', 'csembilan.jpg', '', 'wanita'),
('SDL100024', 3, 'Aldiyar', 12000, 20, 11, 'ctiga.jpg', 'ctiga.jpg', '', 'wanita'),
('SDL100025', 19, 'Harmonis', 15000, 20, 1, 'aduabelas.jpg', 'aduabelas.jpg', '', 'wanita'),
('SDL100026', 17, 'Ardera', 14000, 20, 6, 'aduadela[an.jpg', 'aduadela[an.jpg', '', 'wanita'),
('SDL100027', 17, 'Qween', 14000, 20, 1, 'aduaempat.jpg', 'aduaempat.jpg', '', 'wanita'),
('SDL100028', 16, 'Carwil', 12000, 5, 6, 'aduapuluh.jpg', 'aduapuluh.jpg', '', 'wanita'),
('SDL100029', 18, 'Padaloma', 12000, 20, 11, 'aduasatu.jpg', 'aduasatu.jpg', '', 'wanita'),
('SDL100030', 19, 'Altic', 15000, 40, 2, 'aempat.jpg', 'aempat.jpg', '', 'wanita'),
('SDL100031', 17, 'eky', 14000, 0, 1, 'aenam.jpg', 'aenam.jpg', '', 'wanita'),
('SDL100032', 19, 'Reval', 14000, 20, 1, 'alimabelas.jpg', 'alimabelas.jpg', '', 'wanita'),
('SDL100033', 18, 'Cristal', 13000, 15, 11, 'asebelas.jpg', 'asebelas.jpg', '', 'wanita'),
('SDL100034', 19, 'Clester', 17000, 20, 1, 'asepuluh.jpg', 'asepuluh.jpg', '', 'wanita'),
('SDL100035', 18, 'Alois', 11000, 20, 16, 'atiga.jpg', 'atiga.jpg', '', 'wanita'),
('SDL100036', 19, 'Drilan', 17000, 20, 1, 'atigaenam.jpg', 'atigaenam.jpg', '<p>Bahan Karet</p>', 'wanita'),
('SDL100037', 16, 'Sepvia', 15000, 10, 1, 'atigapuluh.jpg', 'atigapuluh.jpg', '<p>Sol Karet</p>', 'wanita'),
('SDL100038', 19, 'Altic', 15000, 50, 1, 'atigatujuh.jpg', 'atigatujuh.jpg', '', 'wanita'),
('SDL100039', 16, 'Carwil', 12000, 20, 16, 'atujuh.jpg', 'atujuh.jpg', '', 'wanita'),
('SDL100040', 10, 'Ridho', 13000, 40, 6, 'bsembilan.jpg', 'bsembilan.jpg', '', 'pria'),
('SDL100041', 17, 'Harmonis', 13000, 40, 6, 'aempatdua.jpg', 'aempatdua.jpg', '', 'wanita'),
('SDL100042', 19, 'Nakia', 14000, 50, 6, 'aempatpuluh.jpg', 'aempatpuluh.jpg', '', 'pria'),
('SDL100043', 19, 'Nakia', 14000, 50, 1, 'aempatsatu.jpg', 'aempatsatu.jpg', '', 'pria'),
('SDL100044', 19, 'Harmonis', 14000, 40, 1, 'atigadelapan.jpg', 'atigadelapan.jpg', '', 'wanita'),
('SDL100045', 19, 'Nakia', 14000, 80, 11, 'atigasembilan.jpg', 'atigasembilan.jpg', '', 'wanita'),
('SDL100046', 3, 'Rafka', 12000, 30, 6, 'cempat.jpg', 'cempat.jpg', '', 'wanita'),
('SDL100047', 3, 'Ardera', 15000, 20, 1, 'csepuluh.JPG', 'csepuluh.JPG', '', 'wanita'),
('SDL100048', 3, 'Vectra', 15000, 5, 6, 'csembilan.jpg', 'csembilan.jpg', '', 'wanita');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
