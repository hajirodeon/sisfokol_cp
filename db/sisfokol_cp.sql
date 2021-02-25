-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2019 at 04:37 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfokol_cp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminx`
--

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL DEFAULT '',
  `passwordx` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminx`
--

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`) VALUES
('e4ea2f7dfb2e5c51e38998599e90afc2', 'admin', 'e9b690b66c32ca3237bb283e718f342a');

-- --------------------------------------------------------

--
-- Table structure for table `cp_artikel`
--

CREATE TABLE `cp_artikel` (
  `kd` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `kd_submenu` varchar(50) NOT NULL,
  `kd_posisi` varchar(50) NOT NULL,
  `filex` longtext NOT NULL,
  `jml_dilihat` varchar(100) NOT NULL,
  `jml_komentar` varchar(100) NOT NULL,
  `jml_suka` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_artikel`
--

INSERT INTO `cp_artikel` (`kd`, `kd_kategori`, `judul`, `isi`, `postdate`, `kd_submenu`, `kd_posisi`, `filex`, `jml_dilihat`, `jml_komentar`, `jml_suka`) VALUES
('7f29b6a885b8e00eb0b76d7136676617', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Laporan Kegiatan Sekolah', 'xkkirixpxkkananxLaporan Kegiatan Sekolahxkkirixxgmringxpxkkananx', '2019-09-16 03:56:20', '1308b8c0a7c325959d1ee317e9d00a53', '', '7f29b6a885b8e00eb0b76d7136676617-1.png', '', '', ''),
('561cb61c3e79a744a1a3268d24862295', '484452ea4cd76ede4ea1f426cf81b347', 'Selamat Datang di Sekolah Kami...', 'xkkirixpxkkananxSelamat Datang di Sekolah Kami.xkkirixxgmringxpxkkananx\n\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\n\nxkkirixpxkkananxSaat ini, Kami menggunakan Sistem Informasi Manajemen, SISFOKOL v5.0 xkkurixcode:PernahJayaxkkurnanx,xkkirixxgmringxpxkkananx\n\nxkkirixpxkkananxSemoga Sekolah Kami bisa semakin Maju dan Berkembang.xkkirixxgmringxpxkkananx', '2019-09-17 05:05:10', '', 'c4ca4238a0b923820dcc509a6f75849b', '561cb61c3e79a744a1a3268d24862295-1.png', '48', '37', '6'),
('ea6b4eaa5d25de2e99d240c0a66ba9a0', '484452ea4cd76ede4ea1f426cf81b347', 'berita satu...', 'xkkirixpxkkananxberita satu...xkkirixxgmringxpxkkananx', '2019-09-17 05:05:53', '', 'c81e728d9d4c2f636f067f89cc14862c', 'ea6b4eaa5d25de2e99d240c0a66ba9a0-1.png', '6', '', '1'),
('f83e685170df733813c0293d0397b5b0', '484452ea4cd76ede4ea1f426cf81b347', 'berita dua...', 'xkkirixpxkkananxberita dua...xkkirixxgmringxpxkkananx', '2014-07-15 08:50:32', '', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'f83e685170df733813c0293d0397b5b0-1.png', '1', '', ''),
('61d9c6e10080c33ec65002bdfa32f792', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Hubungan Industri', 'xkkirixpxkkananxHubungan Industrixkkirixxgmringxpxkkananx', '2019-09-16 04:01:28', '691b0818508586e5ea23987eafd7a2c8', '', '61d9c6e10080c33ec65002bdfa32f792-1.png', '1', '', ''),
('23f8593c83000d72378d7b9c236fb145', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Peraturan Permendikbud', 'xkkirixpxkkananxPeraturan Permendikbudxkkirixxgmringxpxkkananx', '2019-09-16 04:01:05', 'e9e03bff77e02932bd71f7f76e0253bb', '', '23f8593c83000d72378d7b9c236fb145-1.png', '', '', ''),
('5b9000be5e5682f5755e66a56a1e65b0', '484452ea4cd76ede4ea1f426cf81b347', 'berita tiga', 'xkkirixpxkkananxberita tiga...xkkirixxgmringxpxkkananx', '2014-07-15 08:50:55', '', 'a87ff679a2f3e71d9181a67b7542122c', '5b9000be5e5682f5755e66a56a1e65b0-1.png', '', '', ''),
('4abb4ff88424da4d7ebac0b201024580', '484452ea4cd76ede4ea1f426cf81b347', 'berita empat', 'xkkirixpxkkananxberita empat...xkkirixxgmringxpxkkananx', '2019-09-13 04:29:27', '', 'e4da3b7fbbce2345d7772b0674a318d5', '4abb4ff88424da4d7ebac0b201024580-1.png', '', '', ''),
('f10aea579337d3eb2c4ff0d921725ccb', '484452ea4cd76ede4ea1f426cf81b347', 'berita lima', 'xkkirixpxkkananxberita lima...xkkirixxgmringxpxkkananx', '2019-09-13 04:28:53', '', 'a87ff679a2f3e71d9181a67b7542122c', 'f10aea579337d3eb2c4ff0d921725ccb-1.png', '', '', ''),
('50b6ad2c30845f0f85913e6ec25fe668', '484452ea4cd76ede4ea1f426cf81b347', 'berita enam', 'xkkirixpxkkananxberita enam...xkkirixxgmringxpxkkananx', '2014-07-15 08:53:10', '', '8f14e45fceea167a5a36dedd4bea2543', '50b6ad2c30845f0f85913e6ec25fe668-1.png', '', '', ''),
('5a4513c1c52103e01b9ce8adadde2a7d', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Sejarah Singkat', '', '2019-09-16 03:58:04', '48fa8b4c7f5874e32d27c9c6aed6fb1b', '', '5a4513c1c52103e01b9ce8adadde2a7d-1.png', '6', '', ''),
('5d55c40cfd1857662f23152d34a80269', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Visi dan Misi', 'xkkirixpxkkananxVisi dan Misixkkirixxgmringxpxkkananx', '2019-09-16 03:58:27', '58d3ccbf806510d7a8b503e8d7f96279', '', '5d55c40cfd1857662f23152d34a80269-1.png', '7', '', ''),
('f2e3fa10f341005a3e41a194f1b82d32', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Tugas dan Fungsi', 'xkkirixpxkkananxTugas dan Fungsixkkirixxgmringxpxkkananx', '2019-09-16 03:58:51', '8a4765a5cd920a6fe9ac9016662e7186', '', 'f2e3fa10f341005a3e41a194f1b82d32-1.png', '', '', ''),
('8c9cc69b3dbe629b5c505803689b6592', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Sejarah Pengembangan', 'xkkirixpxkkananxSejarah Pengembanganxkkirixxgmringxpxkkananx', '2019-09-16 03:59:18', '68f461fc10ea5ae9ccd5a7e0065ba77f', '', '8c9cc69b3dbe629b5c505803689b6592-1.png', '', '', ''),
('b589f7a7ba2179d9c584cc94d21e1e6c', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Profil Pimpinan', 'xkkirixpxkkananxProfil Pimpinanxkkirixxgmringxpxkkananx', '2019-09-16 03:59:42', 'b1668ce08a920d8f58cc17dbe11fe3ed', '', 'b589f7a7ba2179d9c584cc94d21e1e6c-1.png', '', '', ''),
('44f546c806dc5c280e63c37d537a29a4', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Peta Sekolah', 'xkkirixpxkkananxPeta Sekolahxkkirixxgmringxpxkkananx', '2019-09-16 04:00:06', '0f28e31d28aa773c47a5d4c6baa2bfde', '', '44f546c806dc5c280e63c37d537a29a4-1.png', '', '', ''),
('1888ca230f4272ff703b1e88c24f728c', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Program Kerja', 'xkkirixpxkkananxProgram Kerjaxkkirixxgmringxpxkkananx', '2019-09-16 04:00:38', '757d3d1a88443b7115069de4d5cbb190', '', '1888ca230f4272ff703b1e88c24f728c-1.png', '9', '', '1'),
('7e7bb1b70368d5bf08c13677339b2e29', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Kegiatan Sekolah : PPDB', 'xkkirixpxkkananxPPDBxkkirixxgmringxpxkkananx', '2019-09-16 03:54:58', 'f275c32d123cde17810e49d95c224cfa', '', '7e7bb1b70368d5bf08c13677339b2e29-1.png', '3', '', ''),
('fc48a49ab7b718dc4933de5bf9241d6a', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Kegiatan Sekolah : Ekstrakurikuler', 'xkkirixpxkkananxEkstrakurikulerxkkirixxgmringxpxkkananx', '2019-09-16 03:55:42', '4d20fa40853807fb140339bc2e6c24c4', '', 'fc48a49ab7b718dc4933de5bf9241d6a-1.png', '', '', ''),
('5a8166c927740d3f187cdf5d72b0aa01', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Teaching Factory dan Program Inovasi', 'xkkirixpxkkananxTeaching Factory dan Program Inovasixkkirixxgmringxpxkkananx', '2019-09-16 04:02:17', '7ffc4cfddc263be7048ed5c4585c9ea9', '', '5a8166c927740d3f187cdf5d72b0aa01-1.png', '', '', ''),
('f589919393b382b96fa887bdda6a89b3', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Program Business Centre', 'xkkirixpxkkananxProgram Business Centrexkkirixxgmringxpxkkananx', '2019-09-16 04:02:46', '1642a96136f71ee37f7a41adda777fd3', '', 'f589919393b382b96fa887bdda6a89b3-1.png', '', '', ''),
('45e5bd816e7da8899349859729df90c3', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Program Pengembangan Sekolah', 'xkkirixpxkkananxProgram Pengembangan Sekolahxkkirixxgmringxpxkkananx', '2019-09-16 04:03:16', 'f0108dcef1cf19a4dc12810a5e1c0d5c', '', '45e5bd816e7da8899349859729df90c3-1.png', '', '', ''),
('4f310edabaf24523823934513f5f06c1', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Program Revitalisasi SMK', 'xkkirixpxkkananxProgram Revitalisasi SMKxkkirixxgmringxpxkkananx', '2019-09-16 04:03:46', 'bf4df9abd83f8c686bdf013d5df25f1b', '', '4f310edabaf24523823934513f5f06c1-1.png', '', '', ''),
('c7201b96e31bdb71dab32697a2557744', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Sarana Infrastruktur', 'xkkirixpxkkananxSarana Infrastrukturxkkirixxgmringxpxkkananx', '2019-09-16 04:04:13', 'fbf601ffc7534289488d1c86a5570858', '', 'c7201b96e31bdb71dab32697a2557744-1.png', '', '', ''),
('59eb2cd6e5e14d269831044c61605a9b', 'd1eeeda6267f79fbedceb394fd2f0f7f', 'Sarana Pembelajaran', 'xkkirixpxkkananxSarana Pembelajaranxkkirixxgmringxpxkkananx', '2019-09-16 04:04:35', '5c71a0556cc3b55ff139fc8a66fd4556', '', '59eb2cd6e5e14d269831044c61605a9b-1.png', '', '', ''),
('8f1a30682d8680bb45f21135417ffc42', 'c9cddbf0191184aa946773ac9c9fc759', '1111', 'xkkirixpxkkananx1111xkkirixxgmringxpxkkananx', '2019-09-16 04:10:50', '', '', '', '', '', ''),
('4220c0786804b59674f695f915c4ce6f', '59dc891c5aae50c57619b0b27865353b', '111', 'xkkirixpxkkananx1111xkkirixxgmringxpxkkananx', '2019-09-16 04:26:29', '', '', '4220c0786804b59674f695f915c4ce6f-1.png', '', '', ''),
('d207ffa70c088963cc5ad90794b63d5e', '59dc891c5aae50c57619b0b27865353b', 'coba lagi...', 'xkkirixpxkkananxcoba lagi...xkkirixxgmringxpxkkananx', '2019-09-16 04:31:44', '', '', 'd207ffa70c088963cc5ad90794b63d5e-1.png', '', '', ''),
('b07c6f450ee0678de74b0eb0ed261aca', '59dc891c5aae50c57619b0b27865353b', 'ya coba...', 'xkkirixpxkkananxya... coba...xkkirixxgmringxpxkkananx', '2019-09-26 16:25:15', '', '', 'b07c6f450ee0678de74b0eb0ed261aca-1.png', '3', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_artikel_komentar`
--

CREATE TABLE `cp_artikel_komentar` (
  `kd` varchar(50) NOT NULL,
  `kd_artikel` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` longtext NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `aktif` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_artikel_komentar`
--

INSERT INTO `cp_artikel_komentar` (`kd`, `kd_artikel`, `nama`, `email`, `isi`, `postdate`, `aktif`) VALUES
('c662b853b96b316ae4435565a079606f', '561cb61c3e79a744a1a3268d24862295', 'ddd', '1222xtkeongxahoo.com', 'dsdsd', '2019-09-25 16:35:18', 'true'),
('24745a504d49d5164f1e251f8060ec16', '561cb61c3e79a744a1a3268d24862295', '22', '2jbjkbkbkjxtkeongxyahoo.com', 'sdsd', '2019-09-25 16:35:56', 'true'),
('bdad8021ba84ec30f072f3afbed70a50', '561cb61c3e79a744a1a3268d24862295', '9', '9xtkeongxyahoo.com', '999', '2019-09-25 16:40:45', 'true'),
('a9eb35dd923a2f0f46ecc7caf6ff34e0', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsds', '2019-09-25 16:47:31', 'true'),
('2734328b29e1c053c7fcb20f1aa9873b', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:19', 'true'),
('c9ae696c8e5e7790c2cbb60a5783d9e6', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:19', 'true'),
('9effc018c0c4d83736ea6c889f675064', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:19', 'true'),
('8dafb2c47fd432af73d1abe9206d7abc', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:22', 'true'),
('3a2a9fa59b8e8194e4fa6c07bbebd676', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:22', 'true'),
('c17d57af5985bba86a54e0bbdf6666af', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:22', 'true'),
('477b8f81fd4e4f1e5eb17014abb766a1', '561cb61c3e79a744a1a3268d24862295', 'ddd', 'sdddxtkeongxyahoo.com', 'sdsdsdd', '2019-09-25 16:49:22', 'true'),
('f51242ef6d490c7d029bc151565a189f', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:52:43', 'true'),
('041f1f78f07f24862d43d3635db3f928', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:52:43', 'true'),
('cae6caa5cfccaa1fc8cb57971e0d59d4', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:52:43', 'true'),
('48b3ce8a39b0319cbedbb42dec6c4dae', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:52:43', 'true'),
('8a059a4fd783fc3d4dcd8d4f0e827385', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:54:18', 'true'),
('07bba22bf6a8e5e2f55156c3d0b9b08f', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:54:18', 'true'),
('fd70976b274016776fa9e0651f61b155', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:54:18', 'true'),
('313ef49d87b07864420d9f7d91debd78', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:54:18', 'true'),
('accbe294d5b08a892a2743770e0e6091', '561cb61c3e79a744a1a3268d24862295', '999', '887xtkeongxyahoo.com', 'sdsd', '2019-09-25 16:54:18', 'true'),
('01ee72383268a2cb50c1e3e34e9276d3', '561cb61c3e79a744a1a3268d24862295', '888', '887xtkeongxyahoo.com', '888', '2019-09-25 17:00:15', 'true'),
('93e73e87ba27a0a3627aa80b1409b7ce', '561cb61c3e79a744a1a3268d24862295', '888', '887xtkeongxyahoo.com', '888', '2019-09-25 17:00:15', 'true'),
('35b894e4950efe51cf73c5086cf46779', '561cb61c3e79a744a1a3268d24862295', '888', '887xtkeongxyahoo.com', '888', '2019-09-25 17:00:15', 'true'),
('8919a21e2bcf0ef1f61014915edeb97d', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('81b13642f550ca124a58991ca12c1bfd', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('a68bde5669b2b32150a84cb2a8759f96', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('d33cc99f802fc80c933ca84f5018dff5', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('7a5b0b9087e49971c06372421d6a3c48', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('cb156b5e2bfdafb0823ed82d15f1ae01', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('d5470ae34a5a7e1f6be01ec44fd8acb7', '561cb61c3e79a744a1a3268d24862295', '88', '88xtkeongxyahoo.com', '88', '2019-09-25 17:00:56', 'true'),
('46fb9ee05f964e4cf2ca1e21a87200e1', '561cb61c3e79a744a1a3268d24862295', '111', '111xtkeongxyahoo.co', 'asasas', '2019-09-25 17:01:39', 'true'),
('5180a84b7203b853e6740ec68f09d4bc', '561cb61c3e79a744a1a3268d24862295', 'agus muhajir', 'hajirodeonxtkeongxyahoo.com', 'mboh...', '2019-09-25 17:03:46', 'true'),
('194b17e4cce5fd233b250ae50baf4034', '561cb61c3e79a744a1a3268d24862295', 'iii', 'iiiiiiiiiIIxtkeongxyahoo.com', 'uuuu', '2019-09-25 17:26:34', 'true'),
('d78f9cdad5af3765998366cd9852e343', '561cb61c3e79a744a1a3268d24862295', '', '', 'ok deh..... biasawae', '2019-09-25 17:54:01', 'true'),
('18a319fe93b946943e5622ab3aa6a057', '561cb61c3e79a744a1a3268d24862295', 'ADMIN', '', 'dddddddd', '2019-09-25 17:56:28', 'true'),
('7b47edbf43ccfa24a718fab395e2ae46', '561cb61c3e79a744a1a3268d24862295', 'adminx', 'adminxtkeongxdomainnya.com', 'sddd', '2019-09-26 03:57:54', 'false'),
('29377b4e4355d6fd0289126b9abad8ff', '561cb61c3e79a744a1a3268d24862295', 'adminx', 'adminxtkeongxdomainnya.com', 'sddd', '2019-09-26 03:57:54', 'true'),
('1bd9bc9c86f4580e010889bb32332a0a', '561cb61c3e79a744a1a3268d24862295', 'ADMIN', '', 'xxx', '2019-09-26 04:06:17', 'true'),
('561cb61c3e79a744a1a3268d24862295soposopoxtkeongxya', '561cb61c3e79a744a1a3268d24862295', 'sopo', 'sopoxtkeongxyahoo.com', 'coba ya... sopo...', '2019-09-26 04:08:04', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `cp_bukutamu`
--

CREATE TABLE `cp_bukutamu` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` longtext NOT NULL,
  `telp` varchar(100) NOT NULL,
  `email` longtext NOT NULL,
  `situs` longtext NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `aktif` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_bukutamu`
--

INSERT INTO `cp_bukutamu` (`kd`, `nama`, `alamat`, `telp`, `email`, `situs`, `isi`, `postdate`, `aktif`) VALUES
('uuuuuxtkeongxyahoo.comuuuuu', 'uuu', 'uuu', 'uuu', 'uuxtkeongxyahoo.com', 'uuu', 'uuuuu', '2019-09-26 05:56:48', 'false'),
('9867xtkeongxyahoo.com6555', '98', '78', '77', '67xtkeongxyahoo.com', '67', '6555', '2019-09-26 05:57:25', 'false'),
('11111xtkeongxyahoo.com11', '11', '11', '11', '111xtkeongxyahoo.com', '11', '11', '2019-12-24 04:37:31', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `cp_g_foto`
--

CREATE TABLE `cp_g_foto` (
  `kd` varchar(50) NOT NULL,
  `nama` longtext NOT NULL,
  `filex` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_g_foto`
--

INSERT INTO `cp_g_foto` (`kd`, `nama`, `filex`, `postdate`) VALUES
('6b0deeb38293f854f1bc91e1fb5ce604', 'coba satu dua tiga...', '6b0deeb38293f854f1bc91e1fb5ce604-1.png', '2019-09-26 16:20:12'),
('c8adb7e2a01f83f21f58bba899da7ad7', 'xxxxx', 'c8adb7e2a01f83f21f58bba899da7ad7-1.png', '2019-09-26 16:20:04'),
('637fe4b4325c2e36715e56ebdfbef483', '12', '637fe4b4325c2e36715e56ebdfbef483-1.png', '2019-09-26 16:19:53'),
('3b11be07c8ca6be0857cad4ec481787d', '3', '3b11be07c8ca6be0857cad4ec481787d-1.png', '2019-09-26 16:19:41'),
('958f6343d466537b9a276af7a9c8a5c7', '4', '958f6343d466537b9a276af7a9c8a5c7-1.png', '2019-09-26 16:19:17'),
('9e2978a018ac292da55279acb405da37', '5', '9e2978a018ac292da55279acb405da37-1.png', '2019-09-26 16:19:06'),
('ecad1c4d7bbc06de88c63b47472a9f1d', '6', 'ecad1c4d7bbc06de88c63b47472a9f1d-1.png', '2019-09-26 16:18:52'),
('d22fa1d997a5b0ec846616ef7cb6f4d4', '7', 'd22fa1d997a5b0ec846616ef7cb6f4d4-1.png', '2019-09-26 16:18:30'),
('e4635efd19a3e4cf8db4947ae34430d8', '8', 'e4635efd19a3e4cf8db4947ae34430d8-1.png', '2019-09-26 16:18:17'),
('fade19db8cd82535f0930bc991154e9a', '9', 'fade19db8cd82535f0930bc991154e9a-1.png', '2019-09-26 16:18:04'),
('6dd8d74bcc60715e18dd82917d40832f', '10', '6dd8d74bcc60715e18dd82917d40832f-1.png', '2019-09-26 16:17:57'),
('df3b684cca43048bc79ab8b12d46cb7e', '11', 'df3b684cca43048bc79ab8b12d46cb7e-1.png', '2019-09-26 16:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `cp_g_video`
--

CREATE TABLE `cp_g_video` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `filex` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_g_video`
--

INSERT INTO `cp_g_video` (`kd`, `judul`, `filex`, `postdate`) VALUES
('dd07865b3ecd158e0502c912b017b785', 'iklan 1', 'https:xgmringxxgmringxwww.youtube.comxgmringxwatch?v=MKxgwahxdgR0Knec', '2019-09-26 16:21:23'),
('58ded20a11606eed1b6d8460366d40a0', 'iklan lucu 2', 'https:xgmringxxgmringxwww.youtube.comxgmringxwatch?v=PfiKd7SV9dg&ampxkommaxampxkommaxt=34s', '2019-09-26 16:21:51'),
('02c8c30985894b24992fc2664efb31de', 'iklan lucu 3', 'https:xgmringxxgmringxwww.youtube.comxgmringxwatch?v=LLZpN8xgwahxjBxgwahx0', '2019-09-26 16:22:11'),
('d2bcf14df6093435b54183b6a79b771b', 'iklan 4', 'https:xgmringxxgmringxwww.youtube.comxgmringxwatch?v=qGIMmFukoF4&ampxkommaxampxkommaxt=45s', '2019-09-26 16:22:30'),
('d1a1364b83eee45ea71269ac198360fa', 'iklan xyz', 'https:xgmringxxgmringxwww.youtube.comxgmringxwatch?v=ww25SrKIxgwahxO0', '2019-09-26 16:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `cp_kalender`
--

CREATE TABLE `cp_kalender` (
  `kd` varchar(50) NOT NULL,
  `tgl1` date NOT NULL,
  `tgl2` date NOT NULL,
  `judul` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_kalender`
--

INSERT INTO `cp_kalender` (`kd`, `tgl1`, `tgl2`, `judul`, `postdate`) VALUES
('96884ffc3c639abdba69b35e18c3dda8', '2019-09-16', '2019-09-17', 'siap...', '2019-09-21 05:59:28'),
('802a8defec459ef78970ec2b9c11752b', '2019-09-17', '2019-09-18', 'coba komputer', '2019-09-21 05:58:58'),
('4ca73a962a8c98277ae8d556c8f56d52', '2019-09-15', '2019-09-20', 'rapat guru', '2019-09-21 05:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `cp_kalender_detail`
--

CREATE TABLE `cp_kalender_detail` (
  `kd` varchar(50) NOT NULL,
  `kalender_kd` varchar(50) NOT NULL,
  `tgli` date NOT NULL,
  `judul` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_kalender_detail`
--

INSERT INTO `cp_kalender_detail` (`kd`, `kalender_kd`, `tgli`, `judul`, `postdate`) VALUES
('701173afd9c7a3f5a3a79155e58c095d', '96884ffc3c639abdba69b35e18c3dda8', '2019-09-17', 'siap...', '2019-09-21 05:59:28'),
('3a864de5fc9b823ee34f8f678520c8c6', '96884ffc3c639abdba69b35e18c3dda8', '2019-09-16', 'siap...', '2019-09-21 05:59:28'),
('3a26b17c25a9e1b3ea0ff78f2f37ef92', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-20', 'rapat guru', '2019-09-21 05:59:14'),
('32247694f5f8469b39a4be1abdfb0df9', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-19', 'rapat guru', '2019-09-21 05:59:14'),
('05acb5368fcfa72754253e04c7dfb0ad', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-18', 'rapat guru', '2019-09-21 05:59:14'),
('5950cf7e43676c1cead4002a1d964a68', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-17', 'rapat guru', '2019-09-21 05:59:14'),
('55f17a75531a175b7fc1e60b8a5ab75c', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-16', 'rapat guru', '2019-09-21 05:59:14'),
('83fadc94a97f28fe1dbec20c8ea01803', '4ca73a962a8c98277ae8d556c8f56d52', '2019-09-15', 'rapat guru', '2019-09-21 05:59:14'),
('957363fa9ad61ac68487efa8310650e1', '802a8defec459ef78970ec2b9c11752b', '2019-09-18', 'coba komputer', '2019-09-21 05:58:58'),
('d37dd9e1ef7e57c2c4ecae6ad1659231', '802a8defec459ef78970ec2b9c11752b', '2019-09-17', 'coba komputer', '2019-09-21 05:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `cp_katamutiara`
--

CREATE TABLE `cp_katamutiara` (
  `kd` varchar(50) NOT NULL,
  `isi` longtext NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_katamutiara`
--

INSERT INTO `cp_katamutiara` (`kd`, `isi`, `oleh`, `postdate`) VALUES
('13cc8ea09947007e8791ca79ef6a1c9d', 'Kesuksesan adalah hasil dari kesempurnaan, kerja keras, belajar dari pengalaman, loyalitas, dan kegigihan', 'Colin Powell', '2019-09-13 16:09:23'),
('d86a0b34cf9b3994c987128e6f0ea873', 'Beberapa orang memimpikan kesuksesan, sementara yang lain bangun setiap pagi untuk mewujudkannya', 'Wayne Huizenga', '2019-09-13 16:09:46'),
('d1db1511f00f709e6b27e9b0f78cd6e1', 'Untuk sukses, sikap sama pentingnya dengan kemampuan.', 'Walter Scott', '2019-09-13 16:10:08'),
('4154841ff42b935fa6644c3d7e354b3c', 'Kegagalan adalah kunci kesuksesan. Setiap kesalahan mengajarkan kita sesuatu.', 'Morihei Ueshiba', '2019-09-13 16:10:30'),
('5dc34b412229a24f22533c63defafbd5', 'Sukses adalah sebuah perjalanan, bukan sebuah tujuan. Usaha sering lebih penting daripada hasilnya.', 'Arthur Ashe', '2019-09-13 16:10:48'),
('d047a7029ed858b118025bd806b16b7c', 'Saat aku bersamamu, rasanya seperti sedang bermimpi sepanjang hari. Kamu adalah cahaya bintangku. Cintamu seperti sebuah hadiah.', 'Taeyeon feat. Dean, Starlight', '2019-09-13 16:12:01'),
('67e884ad953ab46bbb37f05a326a430d', 'Tak peduli berapa banyaknya hal yang orang lain miliki, mereka semua punya kesalahan.', 'Reply 1988', '2019-09-13 16:12:19'),
('d34b48093a919c802e3453e480028b70', 'Lebih banyak tersenyum, kurangi khawatir. Lebih banyak berbelas kasih, kurangi menghakimi. Lebih bersyukur, kurangi stres. Lebih banyak mencintai, kurangi membenci.', 'Roy T. Bennett, The Light in the Heart', '2019-09-13 16:12:35'),
('708b4767d8a10aa6605f59bcc9fa2228', 'Saat kamu menyadari kalau kamu diberkati tanpa batas, kamu akan sadar bahwa hidup adalah harta yang sangat berharga.', 'Gift Gugu Mona', '2019-09-13 16:12:50'),
('642f2e8b20ceb5b87b9d99e301290839', 'Lebih baik mensyukuri apa yang kita miliki daripada menyesali apa yang tidak kita miliki.', 'Ridwan Mets', '2019-09-13 16:13:07'),
('0edb4281ca0b4763fb977aacbb5c6956', 'Jika tanganmu tak bisa menggapai bintang, bersyukurlahxpentungx Setidaknya kakimu masih berpijak di bumi.', 'Harly Umboh', '2019-09-13 16:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `cp_link_internal`
--

CREATE TABLE `cp_link_internal` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `urlnya` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_link_internal`
--

INSERT INTO `cp_link_internal` (`kd`, `nama`, `urlnya`, `postdate`) VALUES
('ce1616db7de52c87836ee36b6354f5c5', 'ExstrixLearning', 'http:xgmringxxgmringx1234567.sch.idxgmringxelearning', '2019-09-13 16:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_download`
--

CREATE TABLE `cp_m_download` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `filex` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_download`
--

INSERT INTO `cp_m_download` (`kd`, `nama`, `filex`, `postdate`) VALUES
('c8e8ad38cfe5401448b634c2d960b409', 'belajar ya', 'belajar-ya.zip', '2019-09-26 16:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_kategori`
--

CREATE TABLE `cp_m_kategori` (
  `kd` varchar(50) NOT NULL,
  `no` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_kategori`
--

INSERT INTO `cp_m_kategori` (`kd`, `no`, `nama`, `postdate`) VALUES
('484452ea4cd76ede4ea1f426cf81b347', '1', 'Berita', '2014-02-04 09:15:31'),
('59dc891c5aae50c57619b0b27865353b', '2', 'Agenda', '2014-02-04 09:15:42'),
('fa0216c860a6e8ce2f438f0b8fd49421', '3', 'Makalah', '2014-02-04 09:15:47'),
('d1eeeda6267f79fbedceb394fd2f0f7f', '4', 'Profil', '2014-02-05 08:55:22'),
('dffc4a525086ee0f88ab8de2c6df6bc2', '5', 'Materi Ajar', '2014-02-05 09:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_link`
--

CREATE TABLE `cp_m_link` (
  `kd` varchar(50) NOT NULL,
  `nama` longtext NOT NULL,
  `urlnya` longtext NOT NULL,
  `filex` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_link`
--

INSERT INTO `cp_m_link` (`kd`, `nama`, `urlnya`, `filex`, `postdate`) VALUES
('c688d2c0cdc6fd6358d43693f234d184', 'ccccc', 'cccc.com', 'c688d2c0cdc6fd6358d43693f234d184-1.png', '2019-09-26 16:17:07'),
('9b3c3351bd1c4a98bd6a458dc12b6024', '23333', '23333.com', '9b3c3351bd1c4a98bd6a458dc12b6024-1.png', '2019-09-26 16:16:53'),
('af2bf13fe692c765594b1119d9666f75', 'csssdsd', 'sdsdsd.com', 'af2bf13fe692c765594b1119d9666f75-1.png', '2019-09-26 16:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_menu`
--

CREATE TABLE `cp_m_menu` (
  `kd` varchar(50) NOT NULL,
  `no` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_menu`
--

INSERT INTO `cp_m_menu` (`kd`, `no`, `nama`, `postdate`) VALUES
('d0a10240fc1a8fdc210b47b4f5704f45', '2', 'PROGRAM SEKOLAH', '2014-02-04 08:15:39'),
('1477a55e2095460cf297784e1ee4bfe9', '1', 'PROFIL', '2014-02-04 08:18:30'),
('588825681b691bc5ddec60f699f78410', '3', 'SARANA PRASARANA', '2019-09-16 03:49:46'),
('497413b075a99cfb57ab754618ad2677', '4', 'KEGIATAN SEKOLAH', '2019-09-16 03:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_mitra`
--

CREATE TABLE `cp_m_mitra` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `urlnya` longtext NOT NULL,
  `filex` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_m_mitra`
--

INSERT INTO `cp_m_mitra` (`kd`, `nama`, `urlnya`, `filex`, `postdate`) VALUES
('3792339476b362dbb98a113f29d01e2c', '1', '1', '3792339476b362dbb98a113f29d01e2c-1.png', '2019-09-26 16:15:19'),
('b21d14076673c1e7eb33011e4d3d9fe2', '2', 'xxx2', 'b21d14076673c1e7eb33011e4d3d9fe2-1.png', '2019-09-26 16:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_pegawai`
--

CREATE TABLE `cp_m_pegawai` (
  `kd` varchar(50) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `filex1` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_m_pegawai`
--

INSERT INTO `cp_m_pegawai` (`kd`, `nip`, `nama`, `filex1`, `status`, `jabatan`, `postdate`) VALUES
('4', '4', 'Menik Sriariyanti, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('2', '2', 'Hj. Isti Aminah,S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('3', '3', 'Drs. Kardiyono', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('1', '1', 'Drs. Sulistio, M.Si.', '', 'PNS', 'Kepala Sekolah', '0000-00-00 00:00:00'),
('5', '5', 'Tupliyah, S.Pd.,Mat', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('6', '6', 'Dra. Hj. Nurhayati', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('7', '7', 'Drs. Sri Rahardjo', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('8', '8', 'Dra. Narni', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('9', '9', 'Agus Juwahir, S.Pd, M.Si.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('10', '10', 'Drs. Diyono', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('11', '11', 'Dra. Anie Kartika, M.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('12', '12', 'Rini Idayanti, A.Md.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('13', '13', 'Arwin Lestari, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('14', '14', 'Dra. Sri Siyamsah', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('15', '15', 'Sri Herowati, S.E.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('16', '16', 'Hj. Arni Murnita, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('17', '17', 'Sri Purwanti, S.Pd, M.Hum', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('18', '18', 'Sri Setyani, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('19', '19', 'Oktriana, S.Pd, M.Si.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('20', '20', 'Sri Mujiati, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('21', '21', 'Ika Trione Pribadi, S.Psi', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('22', '22', 'Agus Bagyo, S.S', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('23', '23', 'Triyono, S.Pd, M.Si.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('24', '24', 'Rohmah Indah, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('25', '25', 'Wawan Setiawan, S.Pd, M.Si.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('26', '26', 'Dwi Sudaryanto, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('27', '27', 'Abduka Gusnari, S.E.', '27-1.jpg', 'PNS', 'Guru', '2019-09-26 16:12:26'),
('28', '28', 'Ana Yuliawati, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('29', '29', 'Mindya Feptianny, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('30', '30', 'Karunia Dwi Mulyaningsih, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('31', '31', 'Phit Pradesa, S.Kom', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('32', '32', 'Nurudin Fajar, S.Sos', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('33', '33', 'Ike Yulistika, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('34', '34', 'Mohammad Soleh, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('35', '35', 'Amirul Mukminin, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('36', '36', 'Murtiningsih, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('37', '37', 'Tri Isnawati, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('38', '38', 'Dwi Pudji Lestari, S.Pd', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('39', '39', 'Mahadi Hendro Wiyono, ST.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('40', '40', 'M. Taufik, S.Pd.I', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('41', '41', 'Ovita Umi Arini, S.Pd.I', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('42', '42', 'Pani Nur Cahyani, S.Pd.I', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('43', '43', 'Desi Tri Susilowati, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('44', '44', 'Diah Arifinawa, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('45', '45', 'Sufi Hindun Juwita, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('46', '46', 'Intan Permata Sari, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('47', '47', 'Yuli Nurfahmi, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('48', '48', 'Endah Dwi Hastuti, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('49', '49', 'Hendra Dwi Wicaksana, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('50', '50', 'Anggoro Kristanto, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('51', '51', 'Hanif Alfriadi, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('52', '52', 'Ranja Dwi Intani, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('53', '53', 'Novliansari Nikmah, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('54', '54', 'Ahsan Prasetyo, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('55', '55', 'Astri Yuliani, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('56', '56', 'Handis Wiyantoro, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('57', '57', 'Nugraha Ardi Setyawan, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('58', '58', 'Eti Kumalasari, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('59', '59', 'Puji Rahayu, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('60', '60', 'Rita Sari Fetiningrum, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('61', '61', 'Erna Maryama, ST.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('62', '62', 'Ratna Purwati, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('63', '63', 'Pradata Damar Wicaksono, S.Kom', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('64', '64', 'Ranny Fahriyanti Wulaningsih, S.E.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('65', '65', 'Mardanu Susilo, S.Pd.I', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('66', '66', 'Arifin A.R., S.Si.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('67', '67', 'Rizkinia Zela Kartika, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('68', '68', 'Bani Arifin, M.E ', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('69', '69', 'Swanida Mannik Aji, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('70', '70', 'Dian Retno Lukitasari, S.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('71', '71', 'Dessy Eka Jayanti, M.Pd.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('72', '72', 'Zuhroh Maghfirohmawati Albar, M.Pd, Kons.', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('73', '73', 'Laely Hilalliyah, S.Fil.I', '', 'PNS', 'Guru ', '0000-00-00 00:00:00'),
('74', '74', 'Siti Sundari', '', 'PNS', 'Koord. Tata Usaha', '0000-00-00 00:00:00'),
('75', '75', 'Estu Pratiwi, S.ST.Ars', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('76', '76', 'Casmudi', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('77', '77', 'Susianti', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('78', '78', 'Ardianto Agus Prahara, S, ST.Ars', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('79', '79', 'Nita Kristiana, S.I.Pust.', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('80', '80', 'Kuntoro', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('81', '81', 'Candra Irfam', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('82', '82', 'Sudarno', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('83', '83', 'Kurnia Oktaviana, A.Md.', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('84', '84', 'Musda Tri Hariarto', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('85', '85', 'Muhammad Huda ', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('86', '86', 'Mukhamad Yusuf', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('87', '87', 'Adi Susanto', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('88', '88', 'Happy Landa Pamungkas, SE', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('89', '89', 'Rokhmanah Meylani', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('90', '90', 'Triono Putro ', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('91', '91', 'Akhmad Jumadi', '', 'PNS', 'Staf Tata Usaha', '0000-00-00 00:00:00'),
('654e2ded3a2c0d3ef69d2699f7776d5d', '111', '111', '654e2ded3a2c0d3ef69d2699f7776d5d-1.jpg', '111', '111', '2019-12-24 04:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_posisi`
--

CREATE TABLE `cp_m_posisi` (
  `no` varchar(5) NOT NULL,
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kd_artikel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_posisi`
--

INSERT INTO `cp_m_posisi` (`no`, `kd`, `nama`, `kd_artikel`) VALUES
('7', '8f14e45fceea167a5a36dedd4bea2543', 'headline7', '50b6ad2c30845f0f85913e6ec25fe668'),
('6', '1679091c5a880faf6fb5e6087eb1b2dc', 'headline6', ''),
('5', 'e4da3b7fbbce2345d7772b0674a318d5', 'headline5', '4abb4ff88424da4d7ebac0b201024580'),
('4', 'a87ff679a2f3e71d9181a67b7542122c', 'headline4', '5b9000be5e5682f5755e66a56a1e65b0'),
('3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'headline3', 'f83e685170df733813c0293d0397b5b0'),
('2', 'c81e728d9d4c2f636f067f89cc14862c', 'headline2', 'ea6b4eaa5d25de2e99d240c0a66ba9a0'),
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'headline1', '561cb61c3e79a744a1a3268d24862295');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_siswa`
--

CREATE TABLE `cp_m_siswa` (
  `kd` varchar(50) NOT NULL,
  `tapel` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL,
  `filex1` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_siswa`
--

INSERT INTO `cp_m_siswa` (`kd`, `tapel`, `kelas`, `nis`, `nama`, `postdate`, `filex1`) VALUES
('4c574a77fad474c53c01f627da96b881', '2018xgmringx2019', '1', '1', '1', '2019-09-12 16:57:05', '4c574a77fad474c53c01f627da96b881-1.jpg'),
('ada182e5591ec829397726937eb6f83a', '2018xgmringx2019', '89', '89', '89', '2019-09-13 16:06:55', 'ada182e5591ec829397726937eb6f83a-1.jpg'),
('0d2b74bdc666348b2af6b6ac61c3f895', '2018xgmringx2019', 'aaa', 'aaa', 'aaa', '2019-09-27 03:15:01', '0d2b74bdc666348b2af6b6ac61c3f895-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_slideshow`
--

CREATE TABLE `cp_m_slideshow` (
  `kd` varchar(50) NOT NULL,
  `filex` longtext NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `urlnya` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_m_slideshow`
--

INSERT INTO `cp_m_slideshow` (`kd`, `filex`, `nama`, `isi`, `postdate`, `urlnya`) VALUES
('91016edb6a1ca125e674007b5d98f642', '91016edb6a1ca125e674007b5d98f642-1.jpg', '1', '1', '2019-09-26 16:15:04', '1'),
('8ac89ecf8c9e191473fa1e34c1034baf', '8ac89ecf8c9e191473fa1e34c1034baf-1.jpg', '2', '2', '2019-09-26 16:14:52', '2'),
('ad6d08c2ebd2dac9a9657b7eb2dbb235', 'ad6d08c2ebd2dac9a9657b7eb2dbb235-1.jpg', 'coba 123', 'yang penting, coba ya...', '2019-09-26 16:14:42', 'google.com');

-- --------------------------------------------------------

--
-- Table structure for table `cp_m_submenu`
--

CREATE TABLE `cp_m_submenu` (
  `kd` varchar(50) NOT NULL,
  `kd_menu` varchar(50) NOT NULL,
  `no` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL,
  `kd_artikel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_m_submenu`
--

INSERT INTO `cp_m_submenu` (`kd`, `kd_menu`, `no`, `nama`, `postdate`, `kd_artikel`) VALUES
('5c71a0556cc3b55ff139fc8a66fd4556', '588825681b691bc5ddec60f699f78410', '2', 'Pembelajaran', '2019-09-16 03:50:26', '59eb2cd6e5e14d269831044c61605a9b'),
('fbf601ffc7534289488d1c86a5570858', '588825681b691bc5ddec60f699f78410', '1', 'Infrastruktur', '2019-09-16 03:50:14', 'c7201b96e31bdb71dab32697a2557744'),
('48fa8b4c7f5874e32d27c9c6aed6fb1b', '1477a55e2095460cf297784e1ee4bfe9', '1', 'Sejarah', '2019-09-16 03:42:10', '5a4513c1c52103e01b9ce8adadde2a7d'),
('58d3ccbf806510d7a8b503e8d7f96279', '1477a55e2095460cf297784e1ee4bfe9', '2', 'Visi dan Misi', '2019-09-16 03:45:00', '5d55c40cfd1857662f23152d34a80269'),
('8a4765a5cd920a6fe9ac9016662e7186', '1477a55e2095460cf297784e1ee4bfe9', '3', 'Tugas dan Fungsi', '2019-09-16 03:45:17', 'f2e3fa10f341005a3e41a194f1b82d32'),
('b1668ce08a920d8f58cc17dbe11fe3ed', '1477a55e2095460cf297784e1ee4bfe9', '4', 'Profil Pimpinan', '2019-09-16 03:45:33', 'b589f7a7ba2179d9c584cc94d21e1e6c'),
('0f28e31d28aa773c47a5d4c6baa2bfde', '1477a55e2095460cf297784e1ee4bfe9', '5', 'Peta Sekolah', '2019-09-16 03:45:51', '44f546c806dc5c280e63c37d537a29a4'),
('757d3d1a88443b7115069de4d5cbb190', 'd0a10240fc1a8fdc210b47b4f5704f45', '1', 'Program Kerja', '2019-09-16 03:46:13', '1888ca230f4272ff703b1e88c24f728c'),
('e9e03bff77e02932bd71f7f76e0253bb', 'd0a10240fc1a8fdc210b47b4f5704f45', '2', 'Permendikbud', '2019-09-16 03:46:35', '23f8593c83000d72378d7b9c236fb145'),
('7ffc4cfddc263be7048ed5c4585c9ea9', 'd0a10240fc1a8fdc210b47b4f5704f45', '4', 'Teaching Factory', '2019-09-16 03:47:31', '5a8166c927740d3f187cdf5d72b0aa01'),
('1642a96136f71ee37f7a41adda777fd3', 'd0a10240fc1a8fdc210b47b4f5704f45', '5', 'Business Centre', '2019-09-16 03:48:01', 'f589919393b382b96fa887bdda6a89b3'),
('f0108dcef1cf19a4dc12810a5e1c0d5c', 'd0a10240fc1a8fdc210b47b4f5704f45', '6', 'Pengembangan', '2019-09-16 03:48:21', '45e5bd816e7da8899349859729df90c3'),
('db9b85ec4b9d515462c14b2b159bc568', '30046c78bb9e4b26512a0b55de552a44', '1', 'Direktori Alumni', '2014-02-04 08:48:34', ''),
('a55c8842202f5aea6b72c349c82aa0a2', '30046c78bb9e4b26512a0b55de552a44', '2', 'Info Alumni', '2014-02-04 08:48:48', ''),
('4d20fa40853807fb140339bc2e6c24c4', '497413b075a99cfb57ab754618ad2677', '2', 'Ekstrakurikuler', '2019-09-16 03:51:01', 'fc48a49ab7b718dc4933de5bf9241d6a'),
('1308b8c0a7c325959d1ee317e9d00a53', '497413b075a99cfb57ab754618ad2677', '3', 'LaporaN', '2019-09-16 03:51:15', '7f29b6a885b8e00eb0b76d7136676617'),
('f275c32d123cde17810e49d95c224cfa', '497413b075a99cfb57ab754618ad2677', '1', 'PPDB', '2019-09-16 03:50:43', '7e7bb1b70368d5bf08c13677339b2e29'),
('4a35f75e766dabcc48c7eff26d13638d', '8814ad1979caa193243e02e861f89dc4', '1', 'Lowongan Kerja', '2014-02-04 08:53:56', ''),
('550f09847da0fa789be7aa7a749900c4', '8814ad1979caa193243e02e861f89dc4', '2', 'Data Pelamar', '2014-02-04 08:54:05', ''),
('d9632a9a2243b4d0316f2414ebd4fbcc', '8814ad1979caa193243e02e861f89dc4', '3', 'Data Ujian', '2014-02-04 08:54:19', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp_newsletter`
--

CREATE TABLE `cp_newsletter` (
  `kd` varchar(50) NOT NULL,
  `email` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_newsletter`
--

INSERT INTO `cp_newsletter` (`kd`, `email`, `postdate`) VALUES
('12333', 'hajirodeon@gmail.com', '2019-09-15 00:00:00'),
('cfa9aa02de9cb076046531f47471a39c', 'emailkuxtkeongxcoba.com', '2019-09-23 03:54:46'),
('2141ee4dc204c2a234af95b7cccbcaec', 'emailkuxtkeongxcoba.com.id', '2019-09-23 04:00:59'),
('da121d59492e160f49ff43320076ee8d', 'hajirxtkeongxwegah.com', '2019-09-26 05:44:30'),
('3ad7f9898f7596070968741178508642', 'ayoxtkeongxwegah.com', '2019-09-26 05:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `cp_polling`
--

CREATE TABLE `cp_polling` (
  `kd` varchar(50) NOT NULL,
  `topik` varchar(100) NOT NULL,
  `opsi1` varchar(50) NOT NULL,
  `opsi2` varchar(50) NOT NULL,
  `opsi3` varchar(50) NOT NULL,
  `opsi4` varchar(50) NOT NULL,
  `opsi5` varchar(50) NOT NULL,
  `nil_opsi1` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi2` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi3` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi4` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi5` varchar(5) NOT NULL DEFAULT '0',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_polling`
--

INSERT INTO `cp_polling` (`kd`, `topik`, `opsi1`, `opsi2`, `opsi3`, `opsi4`, `opsi5`, `nil_opsi1`, `nil_opsi2`, `nil_opsi3`, `nil_opsi4`, `nil_opsi5`, `postdate`) VALUES
('910883cf9d4459675f8cdcd30f9ab460', 'coba', '1', '2', '3', '4', '5', '1', '2', '5', '1', '0', '2019-09-13 04:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `cp_profil`
--

CREATE TABLE `cp_profil` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `x_lat` longtext NOT NULL,
  `x_long` longtext NOT NULL,
  `fb` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `youtube` longtext NOT NULL,
  `wa` longtext NOT NULL,
  `alamat` longtext NOT NULL,
  `telp` longtext NOT NULL,
  `web` longtext NOT NULL,
  `fax` longtext NOT NULL,
  `email` longtext NOT NULL,
  `filex` longtext NOT NULL,
  `alamat_googlemap` longtext NOT NULL,
  `instagram` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_profil`
--

INSERT INTO `cp_profil` (`kd`, `judul`, `isi`, `postdate`, `x_lat`, `x_long`, `fb`, `twitter`, `youtube`, `wa`, `alamat`, `telp`, `web`, `fax`, `email`, `filex`, `alamat_googlemap`, `instagram`) VALUES
('e807f1fcf82d132f9bb018ca6738a19f', 'SMA 1234567', 'Sekolah yang berprestasi . . .', '2019-09-27 03:10:51', '', '', 'x', 'x', 'x', 'x', 'Jl. Raya 1234567', 'x', 'x', 'x', 'x', 'logo.jpg', 'Masjid Agung Kendal, Kendal, Jawa Tengah', 'xx');

-- --------------------------------------------------------

--
-- Table structure for table `cp_sambutan_ks`
--

CREATE TABLE `cp_sambutan_ks` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `filex1` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_sambutan_ks`
--

INSERT INTO `cp_sambutan_ks` (`kd`, `nama`, `isi`, `filex1`, `postdate`) VALUES
('e807f1fcf82d132f9bb018ca6738a19f', 'Bapak XYZ', 'xkkirixpxkkananxAssalamualaikum Warahmatullah Wabarakatuh...xkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananxAlhamdulillahi robbil alamin kami panjatkan kehadlirat Allah SWT, bahwasannya dengan rahmat dan karuniaxstrixNya lah akhirnya Website sekolah ini dengan alamat www.1234567.sch.id dapat kami perbaharui. Kami mengucapkan selamat datang di Website kami Sekolah 1234567 yang saya tujukan untuk seluruh unsur pimpinan, guru, karyawan dan siswa serta khalayak umum guna dapat mengakses seluruh informasi tentang segala profil, aktifitasxgmringxkegiatan serta fasilitas sekolah kami.xkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananxKami selaku pimpinan sekolah mengucapkan terima kasih kepada tim pembuat Website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki oleh sekolah. Dan tentunya Website sekolah kami masih terdapat banyak kekurangan, oleh karena itu kepada seluruh civitas akademika dan masyarakat umum dapat memberikan saran dan kritik yang membangun demi kemajuan Website ini lebih lanjut.xkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananxSaya berharap Website ini dapat dijadikan wahana interaksi yang positif baik antar civitas akademika maupun masyarakat pada umumnya sehingga dapat menjalin silaturahmi yang erat disegala unsur. Mari kita bekerja dan berkarya dengan mengharap ridho sang Kuasa dan keikhlasan yang tulus dijiwa demi anak bangsa.xkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananxTerima kasih semoga Allah &lsquoxkommaxAzza Wa Jalla menyertai doa kita semua. Aamiin.xkkirixxgmringxpxkkananx', 'ks.jpg', '2019-09-27 03:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `cp_visitor`
--

CREATE TABLE `cp_visitor` (
  `kd` varchar(50) NOT NULL,
  `ipnya` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL,
  `online` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cp_visitor`
--

INSERT INTO `cp_visitor` (`kd`, `ipnya`, `postdate`, `online`) VALUES
('9359ccdb7a8c882e664ed14b78314b55', '127.0.0.1', '2019-09-23 04:23:17', 'false'),
('5b456a5f3a8ba2e9965b2cf6eb07952e', '127.0.0.1', '2019-09-23 04:23:19', 'false'),
('0298acf77b9dcb607005bf72f50ec757', '127.0.0.1', '2019-09-23 04:23:23', 'false'),
('e8155e762f4be3ebdebc8c200a3d08f4', '127.0.0.1', '2019-09-23 04:23:52', 'false'),
('c2a73c7be4584fef52f36bc5cb2b2c25', '127.0.0.1', '2019-09-23 04:24:24', 'false'),
('41cb6e33381ef28d2f83546c8acc8d15', '127.0.0.1', '2019-09-23 04:24:42', 'false'),
('2d309b2a792fb9221d3d2ba596920e38', '127.0.0.1', '2019-09-23 04:25:12', 'false'),
('43352941402206ccdec2b54255b4ae67', '127.0.0.1', '2019-09-23 04:25:31', 'false'),
('bfbf8eee63cb2618343f231ac3778c58', '127.0.0.1', '2019-09-23 04:25:54', 'false'),
('fe10b33509caa31aecc9ed7de7b7b972', '127.0.0.1', '2019-09-23 04:27:02', 'false'),
('5eefcfae0da263ce415329131112f5fb', '127.0.0.1', '2019-09-23 04:27:08', 'false'),
('1537ce45fba401ff25b752c8afae4613', '127.0.0.1', '2019-09-23 04:27:23', 'false'),
('0bf3ae89fed704552e7e04c0f03e74ef', '127.0.0.1', '2019-09-23 04:30:39', 'false'),
('075c20d92b8be10d222a4611a4579f08', '127.0.0.1', '2019-09-23 04:31:41', 'false'),
('6c4cecc5bd07c0c5e42e767674074069', '127.0.0.1', '2019-09-23 04:31:42', 'false'),
('072ccf14a76e8aa289534eeef0cbea6f', '127.0.0.1', '2019-09-23 04:32:07', 'false'),
('c88daa6fb654d5da43f5a0285d1b7723', '127.0.0.1', '2019-09-23 04:33:50', 'false'),
('7a519178a23002388b2c053aec18b3e8', '127.0.0.1', '2019-09-23 04:34:11', 'false'),
('41fd9c45f0f165ce0db265b1cdb7eb88', '127.0.0.1', '2019-09-23 04:34:49', 'false'),
('3ea9f36b00913ba40ec30b253f526d30', '127.0.0.1', '2019-09-23 04:35:07', 'false'),
('6572fbb51e69d4fcdb6b36213393d743', '127.0.0.1', '2019-09-23 04:35:18', 'false'),
('298e2819e3b284660517fae048a77d43', '127.0.0.1', '2019-09-23 04:35:55', 'false'),
('b1eeb0624d4f7b35c9a208bc2ce76696', '127.0.0.1', '2019-09-23 04:36:33', 'false'),
('3fbbece76f61c0d7432805cdba001ae8', '127.0.0.1', '2019-09-23 04:37:10', 'false'),
('7854c0dccea0ed4a4ab33589bc987894', '127.0.0.1', '2019-09-23 04:38:07', 'false'),
('4d3bf1f9b3ebbda847c7e4585e963232', '127.0.0.1', '2019-09-23 04:39:16', 'false'),
('112ae760b32e3aa0c7088d868b6e14a2', '127.0.0.1', '2019-09-23 04:39:46', 'false'),
('951ff2bc8d282aeec8a0b82d718fe067', '127.0.0.1', '2019-09-23 04:40:22', 'false'),
('2aa30d54a382b6f96c91558e389e61b8', '127.0.0.1', '2019-09-23 04:40:43', 'false'),
('7eb900c8f6fcedfe5f9845d2cb155692', '127.0.0.1', '2019-09-23 04:41:06', 'false'),
('cf1bf96e5bec48c417fb80a90a9e34b4', '127.0.0.1', '2019-09-23 04:41:32', 'false'),
('c72f1db342b674df4ff9d36870523a8e', '127.0.0.1', '2019-09-23 04:41:45', 'false'),
('8ff3642c959fa86142f6fa93b5b4cb26', '127.0.0.1', '2019-09-23 04:42:22', 'false'),
('95d0372a57c0d3e4d2d7302d43c6004d', '127.0.0.1', '2019-09-23 04:42:54', 'false'),
('4ad899f4dcfa72d0d354cc4769c601f4', '127.0.0.1', '2019-09-23 04:44:05', 'false'),
('a12359c978c6d037f3ea58ff5a31d028', '127.0.0.1', '2019-09-23 04:44:39', 'false'),
('a145fe7181d5f9bd867298b2a6b252a1', '127.0.0.1', '2019-09-23 04:49:29', 'false'),
('03e678cd8c0b03f90efacb0bdc85e396', '127.0.0.1', '2019-09-23 04:49:43', 'false'),
('68492c7976b7ac7af591823a2503f9c4', '127.0.0.1', '2019-09-23 04:50:04', 'false'),
('cae29efc6e5be076a7718ed645281453', '127.0.0.1', '2019-09-23 04:50:12', 'false'),
('b8cb2d6808db4f2b873ce75013b292d5', '127.0.0.1', '2019-09-23 04:50:40', 'false'),
('08649ccd6e301e58f73cd89c8c326bdd', '127.0.0.1', '2019-09-23 04:50:53', 'false'),
('582f81a8e33842271dc0cb02dec79767', '127.0.0.1', '2019-09-23 04:51:43', 'false'),
('560d4cb8272ce0f2baa42a9e795a1a05', '127.0.0.1', '2019-09-23 04:52:25', 'false'),
('42c95cc1c5824a3e437958884badab8c', '127.0.0.1', '2019-09-23 04:52:53', 'false'),
('7e980d653ebebb552331a3a417425e09', '127.0.0.1', '2019-09-23 04:53:49', 'false'),
('63d95c875c9e8b121b95158f0a333511', '127.0.0.1', '2019-09-23 04:54:24', 'false'),
('ca53c124a30cbb2b66c8af6c440732e5', '127.0.0.1', '2019-09-23 04:55:54', 'false'),
('d9ee0a5a57b25cfc19f6ad5c3f2028d2', '127.0.0.1', '2019-09-23 04:56:06', 'false'),
('b3b559da40c2e91e127b7cc0fe920544', '127.0.0.1', '2019-09-23 04:57:06', 'false'),
('d62e8572513725440b5090b414d518a9', '127.0.0.1', '2019-09-23 05:00:45', 'true'),
('ed048bb272a5c23a6cb3bf82167c3b27', '127.0.0.1', '2019-09-23 05:01:24', 'true'),
('86cc9e7843fa711ef2fab98cdcc12b2b', '127.0.0.1', '2019-09-23 05:01:39', 'true'),
('b1256d746d925485987a08b00ad867b5', '127.0.0.1', '2019-09-23 05:01:55', 'true'),
('dd9e37d0deeb5e40a254ed7336e5dc85', '127.0.0.1', '2019-09-23 05:02:09', 'true'),
('f5ad431bb245ea3c3fc02526d25fd40e', '127.0.0.1', '2019-09-23 05:02:20', 'true'),
('2789fdfd1ed15ac110b58759598d97dd', '127.0.0.1', '2019-09-23 05:02:52', 'true'),
('0eb9697701dcd2a140545e183be08394', '127.0.0.1', '2019-09-24 15:57:55', 'true'),
('596f50110691b0b04e984287170511fb', '127.0.0.1', '2019-09-25 03:20:07', 'false'),
('6911057f7f37d1344c6f4927f8332349', '127.0.0.1', '2019-09-25 03:20:41', 'false'),
('1346d6dc480239f46b03efd871ab0775', '127.0.0.1', '2019-09-25 03:23:55', 'false'),
('6260ab0fcae41bd73cd37a2b2156cbc8', '127.0.0.1', '2019-09-25 03:25:31', 'false'),
('88d2616a74108e3e81aa66aadf856c64', '127.0.0.1', '2019-09-25 03:27:32', 'false'),
('6c32db4e258c980a9563a6cc9cc21f9d', '127.0.0.1', '2019-09-25 03:28:26', 'false'),
('6ed67e9cbf88e0158e7fc2e29deb91a4', '127.0.0.1', '2019-09-25 03:31:31', 'false'),
('0a94512185c8f193eca8400c5634a7de', '127.0.0.1', '2019-09-25 03:38:00', 'false'),
('d516eb76e5f03de84eeee73ca8ee1ad7', '127.0.0.1', '2019-09-25 03:39:16', 'false'),
('1ed3b7071d7fb61257bee2c74aa71033', '127.0.0.1', '2019-09-25 03:39:18', 'false'),
('2e12fb067201ec13fce3ae281e025ae6', '127.0.0.1', '2019-09-25 03:39:21', 'false'),
('17cbf16848206a58bf8631a97dc15fd8', '127.0.0.1', '2019-09-25 03:39:24', 'false'),
('e23d5be7929b137a560ec1a585a24fb6', '127.0.0.1', '2019-09-25 03:39:51', 'false'),
('fe1b5f3f0cb23d660fa7f589b1d22aec', '127.0.0.1', '2019-09-25 03:39:53', 'false'),
('637d73f8e4c7fde90a841b13a430c170', '127.0.0.1', '2019-09-25 03:41:33', 'false'),
('f1417fe28b11295f1a5b06c8d596dc60', '127.0.0.1', '2019-09-25 03:42:16', 'false'),
('162f23f2e2dd25409e481826023a6cb9', '127.0.0.1', '2019-09-25 03:54:47', 'false'),
('9e8086675de83158ce938f48b33765e0', '127.0.0.1', '2019-09-25 03:54:51', 'false'),
('c0f793e11a81201786fe46aeb50a8190', '127.0.0.1', '2019-09-25 03:55:05', 'false'),
('be991d1128f7398f73b782596f181564', '127.0.0.1', '2019-09-25 03:55:07', 'false'),
('7806eb68963011d8f77561991759d726', '127.0.0.1', '2019-09-25 03:55:10', 'false'),
('d1c982c368bd9ecb2a404db58fac7306', '127.0.0.1', '2019-09-25 03:55:12', 'false'),
('722765486b31c54ceb4b3c203c1e53d3', '127.0.0.1', '2019-09-25 03:55:25', 'false'),
('e7cf2185a11efc7b29c979b8b3f95d5f', '127.0.0.1', '2019-09-25 03:55:52', 'false'),
('3d09c3c6f211dc1b0ec649f4cffb641c', '127.0.0.1', '2019-09-25 03:55:55', 'false'),
('49dd74ba8589382eca9b76f3e15dcd58', '127.0.0.1', '2019-09-25 03:55:56', 'false'),
('5bc2922ae41f1f73252b12affb2bdc39', '127.0.0.1', '2019-09-25 03:55:58', 'false'),
('39aae5eea3e4bcfc38018b396abd0812', '127.0.0.1', '2019-09-25 03:57:24', 'false'),
('408e8eb7726cebc2567fae0a0fda4486', '127.0.0.1', '2019-09-25 03:57:27', 'false'),
('7627707cd14d87c497e108a64f5cc889', '127.0.0.1', '2019-09-25 03:57:30', 'false'),
('c5559a88b8968b1017083c31045447f4', '127.0.0.1', '2019-09-25 03:57:50', 'false'),
('cd89eb786153284586202c59b53f39ac', '127.0.0.1', '2019-09-25 03:58:01', 'false'),
('d8e5cd312c8fc0a23764f480fe211517', '127.0.0.1', '2019-09-25 03:58:11', 'false'),
('66f242d1a30d26111e7421ad682634b2', '127.0.0.1', '2019-09-25 03:58:13', 'false'),
('5242c567cd2a78137b92342d72f4129b', '127.0.0.1', '2019-09-25 04:05:31', 'false'),
('86233f324f648133bb24ea7e4a80f41d', '127.0.0.1', '2019-09-25 04:05:33', 'false'),
('b46b2f7919c853d57728ef8e147223bb', '127.0.0.1', '2019-09-25 04:05:43', 'false'),
('9b7d910000d00b6301b552704647d46a', '127.0.0.1', '2019-09-25 04:05:46', 'false'),
('615cadf239228e15890ec999f23d9ff3', '127.0.0.1', '2019-09-25 04:06:40', 'false'),
('67b2c2d20c1377948ba477759d0c36f6', '127.0.0.1', '2019-09-25 04:06:43', 'false'),
('3bb610d6c09beebefbfaf99b58a03d41', '127.0.0.1', '2019-09-25 04:06:46', 'false'),
('6e7476d74eb65b28440a01d5284c7930', '127.0.0.1', '2019-09-25 04:06:58', 'false'),
('7f07f2d77ffdfcfd07712d8fd6665f2f', '127.0.0.1', '2019-09-25 04:07:01', 'false'),
('11b9c1547451963bbfceb80c98ca3e64', '127.0.0.1', '2019-09-25 04:07:04', 'false'),
('6fe01487e63f83a5af6f29844634285e', '127.0.0.1', '2019-09-25 04:07:11', 'false'),
('e07bd0d1527cb013135ace269f1ff5cc', '127.0.0.1', '2019-09-25 04:07:34', 'false'),
('24a8acae4e42eb54b7cf1b33c8b769f8', '127.0.0.1', '2019-09-25 04:07:37', 'false'),
('104d2628977385bd77e6d991ebe2f02f', '127.0.0.1', '2019-09-25 04:07:45', 'false'),
('a3ce73330a469ae6c5ae83ce7a705248', '127.0.0.1', '2019-09-25 04:07:48', 'false'),
('a152f3e8a29a6702b02b90871c1042ef', '127.0.0.1', '2019-09-25 04:07:56', 'false'),
('8f271c99398c8b9af061647080fec3b2', '127.0.0.1', '2019-09-25 04:07:59', 'false'),
('7a691000499aae0f8ec9f3a12053b4c3', '127.0.0.1', '2019-09-25 04:08:02', 'false'),
('252e46e57215291fd414c77e5a5dc2c1', '127.0.0.1', '2019-09-25 04:15:41', 'false'),
('3c295f27c4149f016dd9de230856a6c4', '127.0.0.1', '2019-09-25 04:17:00', 'false'),
('3f46a669fee47d50d543b8664d00f43f', '127.0.0.1', '2019-09-25 04:31:23', 'false'),
('8105de667134136c7112a5690a27425d', '127.0.0.1', '2019-09-25 04:31:32', 'false'),
('deacd1f1a544a4a38aa8a4d5cd54896a', '127.0.0.1', '2019-09-25 04:32:17', 'false'),
('836140fa694549e7ad022bea2b6a2f05', '127.0.0.1', '2019-09-25 04:32:26', 'false'),
('aadeaae546ace11cca846c1fb6e53ac5', '127.0.0.1', '2019-09-25 04:37:08', 'false'),
('923ac318fc5c3c929203a478b2d15c98', '127.0.0.1', '2019-09-25 04:37:40', 'false'),
('4d01e181365cd0f296ce0a6c0f1ec725', '127.0.0.1', '2019-09-25 04:37:54', 'false'),
('65dc85387daf8b271c2bc15b8b0a4496', '127.0.0.1', '2019-09-25 04:41:12', 'false'),
('3d8559ff8a3e2c1466bd075e2c95a439', '127.0.0.1', '2019-09-25 04:43:50', 'false'),
('0646f7f7eb6bb73257819e86f6d9c13b', '127.0.0.1', '2019-09-25 04:43:54', 'false'),
('d4ea5041733691b864dc03490789dd0b', '127.0.0.1', '2019-09-25 05:11:03', 'false'),
('3d5dc783e7523330483b527ae0204501', '127.0.0.1', '2019-09-25 05:16:17', 'false'),
('400de0adfcd405402199234589958612', '127.0.0.1', '2019-09-25 05:17:44', 'false'),
('39cc20766f5315689fb55e68030b4831', '127.0.0.1', '2019-09-25 05:18:03', 'false'),
('9597a4724684b648d0d8a6a2d9bc058a', '127.0.0.1', '2019-09-25 05:19:15', 'false'),
('7c7fa3745065071e4661449652077a78', '127.0.0.1', '2019-09-25 05:20:45', 'false'),
('d71450b56ddd50a4f8971cd63b836c7b', '127.0.0.1', '2019-09-25 05:26:38', 'false'),
('4b5f8122ae7ec6990ae83767fec71fdb', '127.0.0.1', '2019-09-25 05:28:04', 'false'),
('b94c6c1159bbf750cb8e52c2fa785631', '127.0.0.1', '2019-09-25 05:34:04', 'false'),
('609a6ec12fb5e2ae1dc3ea3f9278d3e8', '127.0.0.1', '2019-09-25 05:34:35', 'false'),
('5f8f7bd80242dd4fc015051ff4ce44c4', '127.0.0.1', '2019-09-25 05:35:17', 'false'),
('a7a0c45b34f9cfc59fec13e897c4d1b0', '127.0.0.1', '2019-09-25 05:35:19', 'false'),
('48578ffa467d226b981955277a46bf93', '127.0.0.1', '2019-09-25 05:35:21', 'false'),
('46ca30db9c09d92d4a521b15d560249e', '127.0.0.1', '2019-09-25 05:35:22', 'false'),
('74ec800f75c3f028a411cf86a2c20716', '127.0.0.1', '2019-09-25 05:36:16', 'false'),
('0b00a4e8565ff7c7641690304079adae', '127.0.0.1', '2019-09-25 05:36:18', 'false'),
('fe6f03ac0d1f384eed74f8f8450251f7', '127.0.0.1', '2019-09-25 11:00:04', 'false'),
('3fe525fd105d40f6dfdf2d4c426146a7', '127.0.0.1', '2019-09-25 11:00:41', 'false'),
('fe93a5067210e5ed2f09428fa76761a4', '127.0.0.1', '2019-09-25 11:03:21', 'false'),
('854aee34d7353261ca4b8b0cf4bd86fa', '127.0.0.1', '2019-09-25 11:03:23', 'false'),
('d63121ac10995c00d557b03491935f17', '127.0.0.1', '2019-09-25 11:03:40', 'false'),
('314201d52347d911eb20f589942146e1', '127.0.0.1', '2019-09-25 11:05:27', 'false'),
('f18e99ccccd20af1d03c17c920672e17', '127.0.0.1', '2019-09-25 11:06:00', 'false'),
('8507fbf00b26ca3d6dd050b55c8bf658', '127.0.0.1', '2019-09-25 11:06:57', 'false'),
('cbc5a392dd42dd13fda877c0c73bf916', '127.0.0.1', '2019-09-25 11:07:43', 'false'),
('433b7609488ccbfb803751393522fee2', '127.0.0.1', '2019-09-25 11:08:09', 'false'),
('843f69b9ea1c410fd0f2334d50d119be', '127.0.0.1', '2019-09-25 11:09:31', 'false'),
('c6914a18ae5db436d446f666efead50a', '127.0.0.1', '2019-09-25 11:09:43', 'false'),
('de628e401343f4e09f54ac062a2f759e', '127.0.0.1', '2019-09-25 11:10:08', 'false'),
('bc0a14197baa80d09d74d71359b11e03', '127.0.0.1', '2019-09-25 11:10:23', 'false'),
('e5d9d30245bab19e84ca9a81a395e1ae', '127.0.0.1', '2019-09-25 11:11:07', 'false'),
('14d1b15b7241cf57b880b1abb8a0b90a', '127.0.0.1', '2019-09-25 11:12:30', 'false'),
('a3c9cc1dbc81720b47f26bf709be60d1', '127.0.0.1', '2019-09-25 11:12:47', 'false'),
('436b1e7e8738e90aa84d855034e56e44', '127.0.0.1', '2019-09-25 11:15:36', 'false'),
('caaade0d63dbd06ca3182880ef12cbd7', '127.0.0.1', '2019-09-25 11:17:15', 'false'),
('19ec2022c6fd9033963a4d7f3f0a308b', '127.0.0.1', '2019-09-25 11:17:20', 'false'),
('a08baad0ff189bde61057719fa0ee2de', '127.0.0.1', '2019-09-25 11:26:17', 'false'),
('425a00ab9f07f5a738796668fb83b255', '127.0.0.1', '2019-09-25 11:31:40', 'false'),
('79f48ec8fce3b921759295b50bdd962a', '127.0.0.1', '2019-09-25 11:32:31', 'false'),
('faf5494f87b05294fbf97046e10781dc', '127.0.0.1', '2019-09-25 11:33:10', 'false'),
('febc3c4adc5451e0b599015e49f08625', '127.0.0.1', '2019-09-25 11:37:52', 'false'),
('d85fb9b881d68e17ab8797faf5ed522e', '127.0.0.1', '2019-09-25 11:43:49', 'false'),
('e1c152a8b48640b5d6054d72c9ec3cb2', '127.0.0.1', '2019-09-25 11:44:52', 'false'),
('23c91475c67831ef7848b584624eaae1', '127.0.0.1', '2019-09-25 11:45:04', 'false'),
('a20e7ea9c5b7b3168be1e02a5d2c75cf', '127.0.0.1', '2019-09-25 11:46:03', 'false'),
('02bbea85758e865cbce7072c2dd60972', '127.0.0.1', '2019-09-25 11:46:37', 'false'),
('10c3ad1e9d98a12b7ea366ce4f651056', '127.0.0.1', '2019-09-25 11:52:59', 'false'),
('6a6c78566a276a344864597e1997a2a7', '127.0.0.1', '2019-09-25 11:53:03', 'false'),
('176a3e14ed1b1a1ee97cab586133f14b', '127.0.0.1', '2019-09-25 11:55:37', 'false'),
('6437cb3712ca8724cccd2f4fb2fbb04d', '127.0.0.1', '2019-09-25 11:56:55', 'false'),
('8f7c78af8e7036644a55084274bd6d2e', '127.0.0.1', '2019-09-25 12:06:17', 'false'),
('b763ab9124c407c924bf3d748183e471', '127.0.0.1', '2019-09-25 12:06:44', 'false'),
('1c642828ed2a5ad256ea42744c30a6d3', '127.0.0.1', '2019-09-25 12:08:12', 'false'),
('c0b8b13b4fda3cbe283f9befe28a0630', '127.0.0.1', '2019-09-25 12:09:47', 'false'),
('f89efc293c21e0687163ad81353c45ca', '127.0.0.1', '2019-09-25 12:11:24', 'false'),
('14353d57963fdbb8c06d4f58a62df9bd', '127.0.0.1', '2019-09-25 12:17:11', 'false'),
('91169fa89457bf25665242912fd60412', '127.0.0.1', '2019-09-25 12:18:49', 'false'),
('2a944a022ae2c385874e81c8776d0c94', '127.0.0.1', '2019-09-25 12:20:20', 'false'),
('183650f6954b53b6797e6d2a29e21a92', '127.0.0.1', '2019-09-25 12:22:43', 'false'),
('fa9c543c0e9c2992e53e63f215b7d8b3', '127.0.0.1', '2019-09-25 12:23:58', 'false'),
('9ff3384d301f908437f1946b0c9ecc18', '127.0.0.1', '2019-09-25 12:25:33', 'false'),
('d77215426c072a7b50de1bfc873a7eb3', '127.0.0.1', '2019-09-25 12:25:52', 'false'),
('3ced8cffa300d39824e5029f8673f755', '127.0.0.1', '2019-09-25 12:25:59', 'false'),
('4964264cab74580a76840a6ac88d2db7', '127.0.0.1', '2019-09-25 12:26:18', 'false'),
('d4d936e7dc0ce0842466c4ca1a99c967', '127.0.0.1', '2019-09-25 12:27:53', 'false'),
('459df3fde38af9adabca4d86a9551726', '127.0.0.1', '2019-09-25 12:28:05', 'false'),
('985ee970a5b5e69134be5d278c0cf198', '127.0.0.1', '2019-09-25 12:28:13', 'false'),
('0fb6100e7204070e65cd6cf364340cfe', '127.0.0.1', '2019-09-25 12:28:47', 'false'),
('43e0107e9dbba0bc2499a812b4903d5c', '127.0.0.1', '2019-09-25 12:29:01', 'false'),
('0f970f35d3586faaed17770379649f21', '127.0.0.1', '2019-09-25 16:12:51', 'false'),
('35159e1f0db65f7699a5ae2dbe9393da', '127.0.0.1', '2019-09-25 16:13:38', 'false'),
('6344486f682bdbd3b4b4fbc98f936e67', '127.0.0.1', '2019-09-25 16:18:43', 'false'),
('de95e97e23036fda93a2b89e557ade34', '127.0.0.1', '2019-09-25 16:18:51', 'false'),
('1a6112eed022b25a6900d778f1dce995', '127.0.0.1', '2019-09-25 16:23:54', 'false'),
('d5afd2feb2e6e707eff6c246827d28e5', '127.0.0.1', '2019-09-25 16:25:36', 'false'),
('f62a0200e55070b97ca223ba261c84a9', '127.0.0.1', '2019-09-25 16:29:33', 'false'),
('eceab94958ab47ebc99443436c79cdef', '127.0.0.1', '2019-09-25 16:30:28', 'false'),
('db48f54779a7e56a27ca8af22f773594', '127.0.0.1', '2019-09-25 16:31:14', 'false'),
('5580ae6b6c78f67e230b279bc66b292b', '127.0.0.1', '2019-09-25 16:31:31', 'false'),
('bd3fd316502440f4f1c8f4bd6874937e', '127.0.0.1', '2019-09-25 16:31:51', 'false'),
('8fab321a1c8ceed63e357fd03ef36fb9', '127.0.0.1', '2019-09-25 16:33:42', 'false'),
('497b75f35debf987f7760a1a95c40204', '127.0.0.1', '2019-09-25 16:34:27', 'false'),
('659e06d7bd13a04674b88275f0e261c7', '127.0.0.1', '2019-09-25 16:35:07', 'false'),
('117d89ad823e8dda3040aba1aeb8951b', '127.0.0.1', '2019-09-25 16:35:45', 'false'),
('560f4dd8dfc62281a701f984ce0ea84e', '127.0.0.1', '2019-09-25 16:40:30', 'false'),
('a8bb6a3308f0b49e3cb8007fed66371b', '127.0.0.1', '2019-09-25 16:47:17', 'false'),
('75812ca5f5d45faf3528ebea0677f38e', '127.0.0.1', '2019-09-25 16:48:53', 'false'),
('19c44b7d7e427fcecf2217c4a30a3a86', '127.0.0.1', '2019-09-25 16:52:11', 'false'),
('ca9aed5261260eb4affb6bbcb0acfa1d', '127.0.0.1', '2019-09-25 16:59:10', 'false'),
('b8ae4afb5d8e568c83b9672e06210cc5', '127.0.0.1', '2019-09-25 16:59:47', 'false'),
('c6467ea25766eb8433fd1e86128aaae5', '127.0.0.1', '2019-09-25 17:00:37', 'false'),
('fbc27a6aafd3daceefd74a285023474b', '127.0.0.1', '2019-09-25 17:01:24', 'false'),
('a066b254516dafbea88f34bbc215c79a', '127.0.0.1', '2019-09-25 17:01:52', 'false'),
('d998b5a666a0b99bfa42c2270b9596c2', '127.0.0.1', '2019-09-25 17:02:24', 'false'),
('f3083b0be59695a864b4c7261b2ccf0a', '127.0.0.1', '2019-09-25 17:03:22', 'false'),
('42f78147fdea6ab14da53f16e9cef1d4', '127.0.0.1', '2019-09-25 17:06:41', 'false'),
('c9c71440a1abbcca22d01df2626585ef', '127.0.0.1', '2019-09-25 17:10:49', 'false'),
('302370455fdcb975fe224774ff632756', '127.0.0.1', '2019-09-25 17:11:24', 'false'),
('032374057b9a07df955e7976024691f5', '127.0.0.1', '2019-09-25 17:11:44', 'false'),
('32021f37a7e06aa7c3459f7cbdd90632', '127.0.0.1', '2019-09-25 17:11:57', 'false'),
('be98117d2883dc4817525c86880a96af', '127.0.0.1', '2019-09-25 17:12:23', 'false'),
('abc8ec57a0d2532134351f9f458fb35c', '127.0.0.1', '2019-09-25 17:13:05', 'false'),
('cabcf1f2d9312cd2d37e57adff218079', '127.0.0.1', '2019-09-25 17:13:48', 'false'),
('ccd9a3bffabe321c4118553325aaad6f', '127.0.0.1', '2019-09-25 17:14:00', 'false'),
('365a683c357524fac1c2e9416144e4bc', '127.0.0.1', '2019-09-25 17:14:07', 'false'),
('729a4ea51e03c3d6a6eec035292a6aa1', '127.0.0.1', '2019-09-25 17:16:59', 'false'),
('78b90109c462fc2567735ed09f6dab3d', '127.0.0.1', '2019-09-25 17:17:33', 'false'),
('9500bd04e80dae4f96f759bc42ec17eb', '127.0.0.1', '2019-09-25 17:18:21', 'false'),
('4da771f2a3d9dc51057aa665285a0a68', '127.0.0.1', '2019-09-25 17:18:33', 'false'),
('c0621d254c9333e5207234b609820a37', '127.0.0.1', '2019-09-25 17:20:00', 'false'),
('4a4200c7e09249a6f31fe41c20606cdf', '127.0.0.1', '2019-09-25 17:21:36', 'false'),
('ad1712696d5a4839b914fe9728a7a78b', '127.0.0.1', '2019-09-25 17:23:03', 'false'),
('cdcc9da91279b9755d45ef2c64dbef4a', '127.0.0.1', '2019-09-25 17:23:32', 'false'),
('06e20ab04889957794ea5aa33856e128', '127.0.0.1', '2019-09-25 17:26:15', 'false'),
('6a6650f2aec45173ec534529aa76099d', '127.0.0.1', '2019-09-25 17:26:20', 'false'),
('1d0bdacf31ad48d1e9cc578a3af95573', '127.0.0.1', '2019-09-25 17:26:41', 'false'),
('4986dac4c9369e38e0a5882fd8058d04', '127.0.0.1', '2019-09-25 17:27:54', 'false'),
('6663aa52f458ce27372941ad1e56a9ce', '127.0.0.1', '2019-09-25 17:27:59', 'false'),
('b9ea81c1adc886dcd00610636aa4d549', '127.0.0.1', '2019-09-25 17:30:29', 'false'),
('b37695e396c1355c637a5f04ab30402e', '127.0.0.1', '2019-09-25 17:31:03', 'false'),
('6513fcbcdd1199ef691e841aefa7d8ac', '127.0.0.1', '2019-09-25 17:33:22', 'false'),
('028a9708b310fe01c4fc4cdb4eb76c72', '127.0.0.1', '2019-09-25 17:37:35', 'false'),
('67ee8c6c2d56336cbd53408a0c694e64', '127.0.0.1', '2019-09-25 17:38:25', 'false'),
('a8e28753905d3b6c9a3288158cb07b4e', '127.0.0.1', '2019-09-25 17:39:40', 'false'),
('89457e647846a6b780f9a86e42bfd9b6', '127.0.0.1', '2019-09-25 17:40:04', 'false'),
('d24d9000014f87ab9882f1d8e88adb93', '127.0.0.1', '2019-09-25 17:40:17', 'false'),
('4669bf92150d6430ab7fa9fbc609d873', '127.0.0.1', '2019-09-25 17:40:23', 'false'),
('27fc78d878a10cd1582bf8cf70e507e0', '127.0.0.1', '2019-09-25 17:40:32', 'false'),
('8460cc184166f3d0af29d32c8378c874', '127.0.0.1', '2019-09-25 17:40:45', 'false'),
('0977ab2ee78f217aea25dfdb5c418f3c', '127.0.0.1', '2019-09-25 17:41:25', 'false'),
('d8baa96681c00bf8bfd2ab811a852944', '127.0.0.1', '2019-09-25 17:41:29', 'false'),
('2755e09ced0d453460a16345fe5336b3', '127.0.0.1', '2019-09-25 17:41:43', 'false'),
('fa6229d7b331ff06a1df45d75167cd54', '127.0.0.1', '2019-09-25 17:41:55', 'false'),
('c6a56dd95bd4bc0dfb7611b58beba171', '127.0.0.1', '2019-09-25 17:42:04', 'false'),
('4d99cff10ae1c3a13d4f667cc58f49ab', '127.0.0.1', '2019-09-25 17:42:09', 'false'),
('e17e0bc8840f46c8c29ceb202f5a3594', '127.0.0.1', '2019-09-25 17:42:14', 'false'),
('682ac9fc135338f3ef2456e9e0fe5219', '127.0.0.1', '2019-09-25 17:42:20', 'false'),
('ce9a478d3f5734bf367d802ae5a31a67', '127.0.0.1', '2019-09-25 17:42:27', 'false'),
('3ad4c83d20e5310cb541d33583e8d018', '127.0.0.1', '2019-09-25 17:42:46', 'false'),
('70f79acbe276a562c75278dabbb8e0da', '127.0.0.1', '2019-09-25 17:42:57', 'false'),
('69c0ca25576543ab73d2435aa0f8ba28', '127.0.0.1', '2019-09-25 17:43:02', 'false'),
('8c25e70e2e755faf3c88b93aaa8b4f5d', '127.0.0.1', '2019-09-25 17:43:47', 'false'),
('cced685b37384178851a29d55fef263a', '127.0.0.1', '2019-09-25 17:44:09', 'false'),
('5f1beecf6d7a884e84581b7a69df6d5e', '127.0.0.1', '2019-09-25 17:49:00', 'false'),
('b0c1bc12f5e4d6f1daeb3cc94dddad4c', '127.0.0.1', '2019-09-25 17:54:12', 'false'),
('42748f56b13cbb73adbcbe12e2bfe2d9', '127.0.0.1', '2019-09-25 17:54:20', 'false'),
('b53ad6323f07314b5bc53304d2d776d7', '127.0.0.1', '2019-09-25 17:55:28', 'false'),
('cb1d659788de32bb81f48f22328f7dae', '127.0.0.1', '2019-09-25 17:56:32', 'false'),
('27ecf521f749aef743d22817cc6af215', '127.0.0.1', '2019-09-25 17:56:58', 'false'),
('158648191b19e95a8049523006baf8ca', '127.0.0.1', '2019-09-25 17:57:32', 'false'),
('81fef0a82116d2a4704bae000e162374', '127.0.0.1', '2019-09-25 17:57:39', 'false'),
('f3bac1b3fd1c155d4132b745fdc3f2fe', '127.0.0.1', '2019-09-25 17:58:10', 'false'),
('afb710a2682c0491ebccda9759d3fee8', '127.0.0.1', '2019-09-25 17:58:30', 'false'),
('b32f176be251fd2155be67da491ff6e3', '127.0.0.1', '2019-09-25 17:58:48', 'false'),
('5d7a59175a9d26daf014431fdca7adba', '127.0.0.1', '2019-09-25 18:04:02', 'true'),
('5c8277310527bfe7a29d49fb042d5da1', '127.0.0.1', '2019-09-25 18:04:03', 'true'),
('c84834fd2528075ec1348759ba2826b2', '127.0.0.1', '2019-09-25 18:04:52', 'true'),
('97f02048f93e60f2e92aa5137fb25bd4', '127.0.0.1', '2019-09-25 18:04:53', 'true'),
('87e8dc708e08a29396f7c63c3b7b5a15', '127.0.0.1', '2019-09-25 18:05:01', 'true'),
('acdcf28aa35491957b9fc97ebe796859', '127.0.0.1', '2019-09-25 18:05:01', 'true'),
('f6ea3cc977deb7d4a9192c94de9fff17', '127.0.0.1', '2019-09-25 18:05:14', 'true'),
('13638dc0b2e2e80c26f2b32ac5f167f8', '127.0.0.1', '2019-09-25 18:05:14', 'true'),
('380e9265c780d5de2a657bdabf121fc0', '127.0.0.1', '2019-09-25 18:05:28', 'true'),
('d5bd9016e3ae7d7328c48b8cf957a2a2', '127.0.0.1', '2019-09-25 18:05:28', 'true'),
('056188a33f6cc46d5b842a407dc2d429', '127.0.0.1', '2019-09-25 18:06:33', 'true'),
('62a2b8964e2d952c3e31ef2228cb35aa', '127.0.0.1', '2019-09-25 18:06:34', 'true'),
('c485a51c7a733eab279ab3b9e9281798', '127.0.0.1', '2019-09-25 18:06:52', 'true'),
('1a715d536909fc6c87fe345636117725', '127.0.0.1', '2019-09-25 18:06:53', 'true'),
('b79153954b534d7de5ffedd359d75a82', '127.0.0.1', '2019-09-25 18:07:17', 'true'),
('867c82edcf8fcbc5f0436bc35b0275cd', '127.0.0.1', '2019-09-25 18:07:18', 'true'),
('a826d11bbd9ddc0965f608f88a119e26', '127.0.0.1', '2019-09-25 18:08:55', 'true'),
('8802db4ca3c9488f6083ba8304cee879', '127.0.0.1', '2019-09-25 18:08:56', 'true'),
('0b1b36f3c2fdd3f18c12163dbc5a22ec', '127.0.0.1', '2019-09-25 18:09:25', 'true'),
('d607b83ac0bfe3b03bd2edc8cfb821db', '127.0.0.1', '2019-09-25 18:09:26', 'true'),
('1cff29e5289253886f944f5717519116', '127.0.0.1', '2019-09-25 18:09:42', 'true'),
('b311e404983a02b4714331c68cd3807a', '127.0.0.1', '2019-09-25 18:09:42', 'true'),
('ed29b280fae35f09156f74441671eacc', '127.0.0.1', '2019-09-25 18:11:32', 'true'),
('e6b74ddabdc48d2b7d3c53be33f11a0f', '127.0.0.1', '2019-09-25 18:11:33', 'true'),
('75ebba2d9275178634270118b3b8c9b3', '127.0.0.1', '2019-09-25 18:11:47', 'true'),
('bb7be54edc2218a116979507cf848412', '127.0.0.1', '2019-09-25 18:11:48', 'true'),
('742595e3368ac39e5e1505f9b6d7bf4b', '127.0.0.1', '2019-09-25 18:12:07', 'true'),
('738e57d8ba4e246962607635c021ed80', '127.0.0.1', '2019-09-25 18:12:10', 'true'),
('f14de5632e73aac7baccc58de705490c', '127.0.0.1', '2019-09-25 18:12:10', 'true'),
('2745d8f4597c799df212468769cabcac', '127.0.0.1', '2019-09-25 18:12:51', 'true'),
('0e38016344e095a2d28f48f5a148349a', '127.0.0.1', '2019-09-25 18:12:52', 'true'),
('386a3547cbe1c8d110e3a62d916061cd', '127.0.0.1', '2019-09-25 18:13:13', 'true'),
('758f8978c70a4d46079e7a7340a9e617', '127.0.0.1', '2019-09-25 18:13:14', 'true'),
('39bab1fa3fbb17ccfbd6ef1dd0ac4274', '127.0.0.1', '2019-09-25 18:13:35', 'true'),
('abf7c3d76d518b140fadace9ce7f200f', '127.0.0.1', '2019-09-25 18:13:36', 'true'),
('9fa50278bd56c9c2b7126e632de1a8ce', '127.0.0.1', '2019-09-25 18:13:46', 'true'),
('764bab2f9b5f254b01f2f902e68c89be', '127.0.0.1', '2019-09-25 18:13:46', 'true'),
('f83960e95c0fb34c5b0a4ded7416244a', '127.0.0.1', '2019-09-25 18:14:07', 'true'),
('2c97f3f6ec272bf4dc11df9b123ba0cf', '127.0.0.1', '2019-09-25 18:14:07', 'true'),
('6b5024359ab4abfb0b20050cef4fdf03', '127.0.0.1', '2019-09-25 18:14:21', 'true'),
('6936b4737d488d389386841ee7b1fc33', '127.0.0.1', '2019-09-25 18:14:21', 'true'),
('62dd80c2c5b76898194c78875afe7f5a', '127.0.0.1', '2019-09-25 18:14:32', 'true'),
('61b960620946d21cdc4ff3a7564702c2', '127.0.0.1', '2019-09-25 18:14:33', 'true'),
('4f585153341be27cd6fd9729de87f4d4', '127.0.0.1', '2019-09-25 18:15:20', 'true'),
('a33e93b47d324c00f99846b3b8793cf5', '127.0.0.1', '2019-09-25 18:15:20', 'true'),
('ee3a8a9f0ce2c00999bca9d4ec29a889', '127.0.0.1', '2019-09-25 18:15:40', 'true'),
('d30026adb10fc84884383ef791cd9a29', '127.0.0.1', '2019-09-25 18:15:41', 'true'),
('20f2037b881386a85d425d45866ae8a1', '127.0.0.1', '2019-09-25 18:16:02', 'true'),
('b6cc6acfbe35bad3b7f9bb0475e70b58', '127.0.0.1', '2019-09-25 18:16:03', 'true'),
('bb6f33b6f44b10bed545e6e493900fdc', '127.0.0.1', '2019-09-25 18:16:48', 'true'),
('abbb55f3fb960b8f1cac61d8324d4dc9', '127.0.0.1', '2019-09-25 18:16:49', 'true'),
('fd41d0182d38da7d6e80368708d9fd9e', '127.0.0.1', '2019-09-25 18:18:05', 'true'),
('2d4adc878cb443746125a98847ae9d72', '127.0.0.1', '2019-09-25 18:18:06', 'true'),
('60048fe1006a438453dc9f3488148b4b', '127.0.0.1', '2019-09-25 18:19:03', 'true'),
('1ac178c413ec4b42ea785cbf85a18781', '127.0.0.1', '2019-09-25 18:19:03', 'true'),
('acc4c2c4907dddd64d3415c3385c9d26', '127.0.0.1', '2019-09-25 18:19:10', 'true'),
('72cfcf42177a5e245e6c3dfa7922d52d', '127.0.0.1', '2019-09-25 18:20:07', 'true'),
('c7725df9bce6bf0a4cc86408096d5115', '127.0.0.1', '2019-09-25 18:21:22', 'true'),
('dc22778bae29bef736b57e9325f7f5b4', '127.0.0.1', '2019-09-25 18:21:42', 'true'),
('5f3d5c876cb0b4ad3615377b87b730bc', '127.0.0.1', '2019-09-25 18:21:54', 'true'),
('bed51e2044439037fd20751f2422c8db', '127.0.0.1', '2019-09-25 18:22:02', 'true'),
('0294e48be28d9e6e0c9721902011b244', '127.0.0.1', '2019-09-25 18:22:03', 'true'),
('c75d660651c0acbc00de6d82c9c90495', '127.0.0.1', '2019-09-25 18:22:12', 'true'),
('0b5560e5f88c7ac95ff175831fb1632f', '127.0.0.1', '2019-09-25 18:31:16', 'true'),
('0f958882fcf929a2d1e39060628fefc5', '127.0.0.1', '2019-09-25 18:31:55', 'true'),
('ef211ef10c5ebee2c0fc163fae2a839e', '127.0.0.1', '2019-09-25 18:32:44', 'true'),
('fbcaec98e3271c1f4bb6de0780bc5b3b', '127.0.0.1', '2019-09-25 18:33:05', 'true'),
('661c96cd8c77f6d522b4baf0bf515014', '127.0.0.1', '2019-09-25 18:33:23', 'true'),
('6d79ba5ef35f50f9abe81923721e132b', '127.0.0.1', '2019-09-25 18:33:29', 'true'),
('1c84846d5862e42e618fd7dee18bcb6d', '127.0.0.1', '2019-09-25 18:33:32', 'true'),
('76de75979506b2ff3bbebc948106b189', '127.0.0.1', '2019-09-25 18:33:43', 'true'),
('2c53ddfa7d1ec191dacde82e7674f0e1', '127.0.0.1', '2019-09-25 18:34:02', 'true'),
('bbc7075652173264d5117cdd424ac8fa', '127.0.0.1', '2019-09-25 18:34:10', 'true'),
('1a447299e56fb17df1721a9fac5fe6c4', '127.0.0.1', '2019-09-25 18:34:11', 'true'),
('3ee1279d0ad256a61da1571c0ebad69f', '127.0.0.1', '2019-09-25 18:34:21', 'true'),
('118f0130eb1126bb09c2e45ad886144c', '127.0.0.1', '2019-09-25 18:34:21', 'true'),
('313d3ed36170e5276a7104748ce25f6f', '127.0.0.1', '2019-09-25 18:38:28', 'true'),
('9de429924b17f713b0647f39a8ff7c3f', '127.0.0.1', '2019-09-25 18:38:51', 'true'),
('4b2bf1e77d288a82f1ce4fb45a06b755', '127.0.0.1', '2019-09-25 18:39:01', 'true'),
('3f29a1d6826ca188720cd8f183402f07', '127.0.0.1', '2019-09-25 18:39:10', 'true'),
('0e6794ba2812b8cc963ce69acb99593c', '127.0.0.1', '2019-09-25 18:45:36', 'true'),
('94c8b96485b377a78ecb94fc7ab16995', '127.0.0.1', '2019-09-25 18:45:37', 'true'),
('5da56f9b0139badf22b30f36f95152c2', '127.0.0.1', '2019-09-25 18:47:49', 'true'),
('83da3bd01a973dfb858b0c63c849b01b', '127.0.0.1', '2019-09-25 18:47:50', 'true'),
('7db8e13c30ce68102d3bc3df296b9e00', '127.0.0.1', '2019-09-25 18:47:54', 'true'),
('a47d34707aaae615bddc957179d25169', '127.0.0.1', '2019-09-25 18:47:55', 'true'),
('4cd7bd4dfcf97cd2d3541471c8ff329d', '127.0.0.1', '2019-09-25 18:49:26', 'true'),
('6f4cc2ea9f9845a732731521775a0f33', '127.0.0.1', '2019-09-25 18:49:30', 'true'),
('2989ba2bd170d2ea455f618580275a8a', '127.0.0.1', '2019-09-25 18:49:40', 'true'),
('1b0df927c6de5478fe40135f71d59104', '127.0.0.1', '2019-09-25 18:50:27', 'true'),
('1d3bb024ae761ddeff10fee16d0ffb7f', '127.0.0.1', '2019-09-25 18:51:13', 'true'),
('d708640367347610c8bd3b3f1caadde2', '127.0.0.1', '2019-09-25 18:51:17', 'true'),
('239412cab46d5238464532805ee41f3e', '127.0.0.1', '2019-09-25 18:52:37', 'true'),
('3af563eb42a506688d20570f81765019', '127.0.0.1', '2019-09-25 18:53:14', 'true'),
('d19f2786f854447a9fac1772123d70ea', '127.0.0.1', '2019-09-25 18:53:34', 'true'),
('d95f2768c8e55a7ca056378f38bdb500', '127.0.0.1', '2019-09-25 18:53:38', 'true'),
('3cc1301dea1c113062aeb5716d73c3e0', '127.0.0.1', '2019-09-25 18:53:51', 'true'),
('120471ca498bbb79d9e97a0de60ed0cd', '127.0.0.1', '2019-09-26 03:42:13', 'false'),
('d019e6d3d4464c1b9f695b22d0d097e4', '127.0.0.1', '2019-09-26 03:46:17', 'false'),
('16016f92e95a729b9911b741af721c5e', '127.0.0.1', '2019-09-26 03:46:24', 'false'),
('dc8871c8bafbd757b1b59e3aec55a6d2', '127.0.0.1', '2019-09-26 03:46:32', 'false'),
('268407ddec22422eee8ef1afb762efc1', '127.0.0.1', '2019-09-26 03:47:42', 'false'),
('bcb6a5f18b3e82f9a8038c196128a39c', '127.0.0.1', '2019-09-26 03:47:45', 'false'),
('00c84432d3e1cce45425e303646c2174', '127.0.0.1', '2019-09-26 03:47:48', 'false'),
('8181cc696bf6429b6bde04f650a9f493', '127.0.0.1', '2019-09-26 03:48:04', 'false'),
('b4682a0903bdcc26279de352ab925ce3', '127.0.0.1', '2019-09-26 03:48:13', 'false'),
('a7e64c23afb4d5e658e9594593a1d02a', '127.0.0.1', '2019-09-26 03:50:49', 'false'),
('dd175dd0d3a7c8b5d33ee3f7aec3c248', '127.0.0.1', '2019-09-26 03:51:32', 'false'),
('bd95e57bc2fc2277636b532ca41b9066', '127.0.0.1', '2019-09-26 03:52:22', 'false'),
('acc8e1869179dc8389c956ef128e130e', '127.0.0.1', '2019-09-26 03:52:35', 'false'),
('e5311c710d47c77a07898484b2142e41', '127.0.0.1', '2019-09-26 03:57:35', 'false'),
('b1fdb4873584f771f93d24613eccd708', '127.0.0.1', '2019-09-26 03:57:56', 'false'),
('8bc7a53fa7597957e601054a43e8b706', '127.0.0.1', '2019-09-26 04:07:37', 'false'),
('9d9944bce1836e11b3afc27bb8beb2b6', '127.0.0.1', '2019-09-26 04:07:42', 'false'),
('4a628b1b45ccd0f11b7370a131ccfa05', '127.0.0.1', '2019-09-26 04:10:43', 'false'),
('366b578da2d984d4346a50363a666eaa', '127.0.0.1', '2019-09-26 04:15:16', 'false'),
('8f1340c296dfe7b18419d9bbb5d50cb4', '127.0.0.1', '2019-09-26 04:15:17', 'false'),
('8d83c4ad883e396541a70262b11d85f8', '127.0.0.1', '2019-09-26 04:16:20', 'false'),
('29aba2f4472ab8c46c887fe789380720', '127.0.0.1', '2019-09-26 04:16:21', 'false'),
('3ec5036475a75956c7688b247415c28d', '127.0.0.1', '2019-09-26 04:16:57', 'false'),
('85a5322f1b68693058b51abca81568d3', '127.0.0.1', '2019-09-26 04:16:58', 'false'),
('75322d1a38491b6b3ab7b60d010fed8a', '127.0.0.1', '2019-09-26 04:19:06', 'false'),
('b239ef2175c2f995afa08255642fde63', '127.0.0.1', '2019-09-26 04:19:07', 'false'),
('f8671d2b277d0e4e8942f7d3d725eacc', '127.0.0.1', '2019-09-26 04:19:56', 'false'),
('559cedbf6ed2cbf4a155e369a4b3f2e0', '127.0.0.1', '2019-09-26 04:19:56', 'false'),
('4cb64e8a467a0a87178f4aa1dbb0368f', '127.0.0.1', '2019-09-26 04:20:07', 'false'),
('97538cb22ca8e8715ffbabd12aab0b19', '127.0.0.1', '2019-09-26 04:20:08', 'false'),
('5299fc44569731b929c13125a79a9267', '127.0.0.1', '2019-09-26 04:20:34', 'false'),
('bbfbc1b66af59fadd0214806bc97a1d5', '127.0.0.1', '2019-09-26 04:20:35', 'false'),
('424bb5412ed13a75a54ea151f5acb0d0', '127.0.0.1', '2019-09-26 04:20:40', 'false'),
('ac9056f99678c9bafbc41a66ec112f25', '127.0.0.1', '2019-09-26 04:20:41', 'false'),
('275ac9bf424272b9f8fa1ea692218a07', '127.0.0.1', '2019-09-26 04:20:52', 'false'),
('5a7b379456c679b9a215a0a9726ecd91', '127.0.0.1', '2019-09-26 04:20:52', 'false'),
('57588ce54297c6cc5ca077382edb65c9', '127.0.0.1', '2019-09-26 04:20:57', 'false'),
('abc2f3dae0a2b231a5823b906e693913', '127.0.0.1', '2019-09-26 04:20:58', 'false'),
('c69dc9af736280a8b0c1da9b77364625', '127.0.0.1', '2019-09-26 04:21:02', 'false'),
('51d3f3301d3d8bef6d4bb9a646d6a27e', '127.0.0.1', '2019-09-26 04:21:03', 'false'),
('f783bb4edf487a82367302965b79d185', '127.0.0.1', '2019-09-26 04:21:33', 'false'),
('975a09cfdabd023257e7af3a6df824b6', '127.0.0.1', '2019-09-26 04:21:34', 'false'),
('4ffb30e1561996b004080c02a6a19f6b', '127.0.0.1', '2019-09-26 04:21:40', 'false'),
('00a0b9f3da7bd5a5e04f562197ea9fa8', '127.0.0.1', '2019-09-26 04:21:41', 'false'),
('fae3afc571f9f6c4fe8ba9a34156d114', '127.0.0.1', '2019-09-26 04:21:50', 'false'),
('e70bc9c695c0e92f703113bbd0c1743d', '127.0.0.1', '2019-09-26 04:21:51', 'false'),
('3a44d2c7016cc3d11c6564292a7ba0dc', '127.0.0.1', '2019-09-26 04:21:56', 'false'),
('cd12999aa00c49f82e3ac1a2f6b10029', '127.0.0.1', '2019-09-26 04:21:57', 'false'),
('0a14f90aa4fec229148cc955392b1caa', '127.0.0.1', '2019-09-26 04:22:01', 'false'),
('e74ee3997c92a2a6136af33a636038a9', '127.0.0.1', '2019-09-26 04:22:01', 'false'),
('73d37441e38d8621e4999bb7b8d42c25', '127.0.0.1', '2019-09-26 04:22:22', 'false'),
('a00eee364b37e44ac972808662a853f2', '127.0.0.1', '2019-09-26 04:22:48', 'false'),
('2084aaee445a5705d5a8f3fdc2142af0', '127.0.0.1', '2019-09-26 04:22:49', 'false'),
('d476879cb3c95d3f5a6f06f921ae8727', '127.0.0.1', '2019-09-26 04:23:03', 'false'),
('95c1a208ca3918d481af981d812e6c89', '127.0.0.1', '2019-09-26 04:26:19', 'false'),
('62be1e192c8903a502bbaf48f2c16e21', '127.0.0.1', '2019-09-26 04:26:20', 'false'),
('11b3b051719dbec54fabacad7d805e7b', '127.0.0.1', '2019-09-26 04:26:57', 'false'),
('971924504ad443ac4f78b9b184d8d61a', '127.0.0.1', '2019-09-26 04:26:57', 'false'),
('aa91dc67a4db8a129402c3c3b2026a9d', '127.0.0.1', '2019-09-26 04:27:04', 'false'),
('5963107c2fedb05ecca3bf8ebbe07e02', '127.0.0.1', '2019-09-26 04:27:05', 'false'),
('e6b70332f54a29124b74f142955e011c', '127.0.0.1', '2019-09-26 04:27:09', 'false'),
('55c054a99a80b9576deb7154a9b41dd6', '127.0.0.1', '2019-09-26 04:27:09', 'false'),
('63761a083ddefe688d542aae1b1afe6f', '127.0.0.1', '2019-09-26 04:29:48', 'false'),
('f390a249c5c633e3aeaeb9e5d6cf0289', '127.0.0.1', '2019-09-26 04:33:13', 'false'),
('f1d62b8b6febe0fd481d864c879bcee1', '127.0.0.1', '2019-09-26 04:33:15', 'false'),
('611d2aaaec244d0444f139b47c38c6d2', '127.0.0.1', '2019-09-26 04:33:58', 'false'),
('8ddd8d37d3587b057039727632283167', '127.0.0.1', '2019-09-26 04:34:03', 'false'),
('2a4fa7e5918c70b30ec4d308bbc6972a', '127.0.0.1', '2019-09-26 04:34:14', 'false'),
('9c28d9b35b6ae4bcd81d851f922ef2db', '127.0.0.1', '2019-09-26 04:35:03', 'false'),
('7ecdbe4609ac95991f67c4ccbd7a2b95', '127.0.0.1', '2019-09-26 04:35:51', 'false'),
('047cc1378f0efa0f0f56a038ecaf6b42', '127.0.0.1', '2019-09-26 04:39:42', 'false'),
('d12550ee308e3175ebcc4230387838da', '127.0.0.1', '2019-09-26 04:40:01', 'false'),
('9a6dad7e77c1a56d1356c6b00bf83a30', '127.0.0.1', '2019-09-26 04:42:35', 'false'),
('a4da17f1f22844823647259ebc109a4b', '127.0.0.1', '2019-09-26 04:42:49', 'false'),
('946f0a4a3f3237579d36febea75ffea4', '127.0.0.1', '2019-09-26 04:43:16', 'false'),
('552e95d8a211f96dbeefdad3a8d6cc77', '127.0.0.1', '2019-09-26 04:43:50', 'false'),
('4984903eda05121923acf918c7318ff4', '127.0.0.1', '2019-09-26 04:44:37', 'false'),
('b97d7708cfafd4930527cf4c6cac3b8b', '127.0.0.1', '2019-09-26 04:45:36', 'false'),
('a16c03c14e911199c4c3db03b8b892c5', '127.0.0.1', '2019-09-26 04:45:40', 'false'),
('e717f0d8b67e984c84bc98c6b9ffb20a', '127.0.0.1', '2019-09-26 04:45:47', 'false'),
('66aed87de8ac64ab441c8c747e493550', '127.0.0.1', '2019-09-26 04:46:18', 'false'),
('a54a12c8eb36db18e9fec4a53b8bf65b', '127.0.0.1', '2019-09-26 04:46:30', 'false'),
('1bc28153a854ea51a9dab72f7dc2c2d5', '127.0.0.1', '2019-09-26 04:46:41', 'false'),
('fb70300fea1cd2500dbc1adc650686cd', '127.0.0.1', '2019-09-26 04:47:06', 'false'),
('602f408c0bdf95748eb5fffdc6a864d5', '127.0.0.1', '2019-09-26 04:47:22', 'false'),
('12a131a05acba0918e84e3b7e4a3b8f5', '127.0.0.1', '2019-09-26 04:49:39', 'false'),
('ac9bf247645e6d95afb0261177992bb2', '127.0.0.1', '2019-09-26 04:50:01', 'false'),
('e77b12807573a75cbdca506603250ed6', '127.0.0.1', '2019-09-26 04:50:07', 'false'),
('e21f64dfbd1d5fa13a0fc49fba8fbca5', '127.0.0.1', '2019-09-26 04:50:27', 'false'),
('6edc1547abdae778dbc21d3ac4b7ab8d', '127.0.0.1', '2019-09-26 04:50:58', 'false'),
('c509e611e723c1767b50cc8e30d0eb3e', '127.0.0.1', '2019-09-26 04:58:42', 'false'),
('de52274cb5e53f41613c1455b8af6e41', '127.0.0.1', '2019-09-26 04:58:43', 'false'),
('2defa7fa3befa48894bc88e2dccbee33', '127.0.0.1', '2019-09-26 05:01:42', 'false'),
('25bbedb882649700eae5dd0c475afdeb', '127.0.0.1', '2019-09-26 05:03:33', 'false'),
('b90c92d80dca8a2a5c42acd520c81a3b', '127.0.0.1', '2019-09-26 05:04:21', 'false'),
('92ab689d6a9c53da3c7b0101e29ae8d2', '127.0.0.1', '2019-09-26 05:06:05', 'false'),
('932b9a7717f54ab6a75f2007fd9d03f4', '127.0.0.1', '2019-09-26 05:06:10', 'false'),
('5018364b6beeefc7a5fa8d768796164a', '127.0.0.1', '2019-09-26 05:06:16', 'false'),
('9ecefb6dbb839650e748b43e18f84bb7', '127.0.0.1', '2019-09-26 05:06:30', 'false'),
('de72dcc2d4349a1943e005016833115a', '127.0.0.1', '2019-09-26 05:08:49', 'false'),
('c3b082515fefd120cbcf096f1642f5b7', '127.0.0.1', '2019-09-26 05:11:27', 'false'),
('4356bd0c8a8e13c0b7f8296709205c87', '127.0.0.1', '2019-09-26 05:11:33', 'false'),
('7c5434f90d82331f38b32e8e58854745', '127.0.0.1', '2019-09-26 05:12:17', 'false'),
('092d78c3f43730c195bbfae9eb0ce133', '127.0.0.1', '2019-09-26 05:12:50', 'false'),
('523bd8818bec928ebef1dcf32734898f', '127.0.0.1', '2019-09-26 05:13:52', 'false'),
('b93b31c30e5410c587da9313b7fed646', '127.0.0.1', '2019-09-26 05:14:06', 'false'),
('2f486229b39376615c09f3fb35862b20', '127.0.0.1', '2019-09-26 05:14:37', 'false'),
('eb2ad9585336bd366d00d31a26c87461', '127.0.0.1', '2019-09-26 05:14:44', 'false'),
('2894eac98ebc6522a2d4f5a01bd1f157', '127.0.0.1', '2019-09-26 05:14:56', 'false'),
('fef57801cb133000b771c70f2b6ffedc', '127.0.0.1', '2019-09-26 05:15:13', 'false'),
('c585a8d43901d2051b685d35af6a907d', '127.0.0.1', '2019-09-26 05:15:20', 'false'),
('51328f05eaccb552cf6ac22ba6d04fbc', '127.0.0.1', '2019-09-26 05:27:58', 'false'),
('181d088dc5e93f1986c23782ebb920cd', '127.0.0.1', '2019-09-26 05:29:13', 'false'),
('2f3d5779309d8e0e20ffc53882a13521', '127.0.0.1', '2019-09-26 05:29:14', 'false'),
('bc743eb985b1cbc77b11b9033fb0d40f', '127.0.0.1', '2019-09-26 05:30:31', 'false'),
('77edebbb2aa6beef7c1fdc9567e31d4e', '127.0.0.1', '2019-09-26 05:30:31', 'false'),
('37d14b8b4b09ba3461f70d1a04c3b553', '127.0.0.1', '2019-09-26 05:31:12', 'false'),
('a0be09b9e78943d93d48757719feaa6c', '127.0.0.1', '2019-09-26 05:31:12', 'false'),
('58ba1ec9c2d20be70bee51023b3a0076', '127.0.0.1', '2019-09-26 05:31:30', 'false'),
('cb8473d7b6e990bf0d71cd7282b0b898', '127.0.0.1', '2019-09-26 05:31:31', 'false'),
('26b959ee51fd7389ff8bc9b925375a16', '127.0.0.1', '2019-09-26 05:31:48', 'false'),
('ce006b2f5cdb1c554c45b9d39faa3cd1', '127.0.0.1', '2019-09-26 05:31:49', 'false'),
('1ce01026631cdb100ee3f6e86cc7aca4', '127.0.0.1', '2019-09-26 05:32:31', 'false'),
('541268bab82e022cd48408cdd0716d5e', '127.0.0.1', '2019-09-26 05:32:31', 'false'),
('7f04bd6296f3d536f8f97f16cf0d0c62', '127.0.0.1', '2019-09-26 05:32:41', 'false'),
('691ea1f2ed65c45edeb2645de1721106', '127.0.0.1', '2019-09-26 05:32:50', 'false'),
('7ff16c2337c6d827759a99beb94724df', '127.0.0.1', '2019-09-26 05:32:51', 'false'),
('538e4b3b5cc56f779612fdffa6660d63', '127.0.0.1', '2019-09-26 05:33:40', 'false'),
('989880a3dfaabaa9e5faaf69e90e92ed', '127.0.0.1', '2019-09-26 05:33:40', 'false'),
('8374671553e23cda0b44cebe615928eb', '127.0.0.1', '2019-09-26 05:33:42', 'false'),
('1a3bdef869766b137f15dc6b8a68ad5c', '127.0.0.1', '2019-09-26 05:33:43', 'false'),
('f3706d9cb29016e0f157d27a4b3deaff', '127.0.0.1', '2019-09-26 05:34:20', 'false'),
('8648dada72369a0ba1ee5ee4778f391d', '127.0.0.1', '2019-09-26 05:34:21', 'false'),
('a08dea076406fae1764f754124ee30e9', '127.0.0.1', '2019-09-26 05:34:57', 'false'),
('d4c2ad506137c6b60ef7e10ef43b7d3b', '127.0.0.1', '2019-09-26 05:34:58', 'false'),
('23af9f1ad8a41d172ab384b1823ce01d', '127.0.0.1', '2019-09-26 05:36:24', 'false'),
('8b5cc23e1fce2a5f2617b3ba31f62a12', '127.0.0.1', '2019-09-26 05:36:24', 'false'),
('a1d5fda461fcceaa9c4b86045445b31f', '127.0.0.1', '2019-09-26 05:37:18', 'false'),
('738406178cfedbe121e38bf60227af4f', '127.0.0.1', '2019-09-26 05:37:19', 'false'),
('46696ac3a4706c15be59891588c9d7d9', '127.0.0.1', '2019-09-26 05:38:16', 'false'),
('1c84c4c421caf2c4b033f75f2ad21fbd', '127.0.0.1', '2019-09-26 05:38:16', 'false'),
('4d34267da479ee70c77616a2016a8c26', '127.0.0.1', '2019-09-26 05:40:13', 'false'),
('204e55f67a705e210c7be8c5b30f1864', '127.0.0.1', '2019-09-26 05:40:14', 'false'),
('18e1e36d04674934a6fe327a3d62e41d', '127.0.0.1', '2019-09-26 05:40:51', 'false'),
('4203fa311ecbaa567da39215e9e805ff', '127.0.0.1', '2019-09-26 05:40:52', 'false'),
('9bd4ce55faa50cc13583694a279101a3', '127.0.0.1', '2019-09-26 05:40:55', 'false'),
('ff14ff4ab8d0f61c7ac9df0c79003a2a', '127.0.0.1', '2019-09-26 05:40:56', 'false'),
('f5b520d9ddea0d2dd9700231591dd514', '127.0.0.1', '2019-09-26 05:42:18', 'false'),
('f4b9ea6c9a0cb5056d1c4bc52ff9f2e9', '127.0.0.1', '2019-09-26 05:42:18', 'false'),
('936fb65410e1d707939d171c57922994', '127.0.0.1', '2019-09-26 05:43:26', 'false'),
('d0d8b652388a7ec9bfbc4ffcb8b94a4e', '127.0.0.1', '2019-09-26 05:44:01', 'false'),
('69c389cd0261fea53a4d0d2268cfa496', '127.0.0.1', '2019-09-26 05:44:11', 'false'),
('5abdf6608e71134ea1fec57a6aee39ce', '127.0.0.1', '2019-09-26 05:44:14', 'false'),
('3fddffb28d902294dcbf7b1c3d963103', '127.0.0.1', '2019-09-26 05:44:15', 'false'),
('f5b076d8b6096f7073bc201cde8928a0', '127.0.0.1', '2019-09-26 05:45:45', 'false'),
('345d8234942ee087e90a567745d1eb21', '127.0.0.1', '2019-09-26 05:45:45', 'false'),
('cc1bae6864bf5efc081694b7721d3824', '127.0.0.1', '2019-09-26 05:45:49', 'false'),
('9a2988345108636d572d4f337cb8c533', '127.0.0.1', '2019-09-26 05:45:49', 'false'),
('fdf884338d7ec9c9b01ddc65edac752a', '127.0.0.1', '2019-09-26 05:45:52', 'false'),
('eb27444f4f074a0383a6dbe24131719e', '127.0.0.1', '2019-09-26 05:45:53', 'false'),
('ce8cdeaa39cf8bad8214766e70843834', '127.0.0.1', '2019-09-26 05:46:45', 'false'),
('9299ce9ecec540cb628a35126eed151a', '127.0.0.1', '2019-09-26 05:46:45', 'false'),
('c28d4526046e43c45fec9c8006e2a55a', '127.0.0.1', '2019-09-26 05:50:29', 'false'),
('c1c807902d595d85bea829ac7342fa4c', '127.0.0.1', '2019-09-26 05:50:29', 'false'),
('5f1d55deb758df629347ee67d27aa169', '127.0.0.1', '2019-09-26 05:50:46', 'false'),
('8efd2ee61a1fbb8419a2439ec04f0397', '127.0.0.1', '2019-09-26 05:50:46', 'false'),
('b833ef2ae1d07acf8660e39f36ff64d5', '127.0.0.1', '2019-09-26 05:54:10', 'false'),
('b70b75bdd361342512603fc3cf74ba9d', '127.0.0.1', '2019-09-26 05:54:11', 'false'),
('5c18c7d0e10571189c8ccf974ebb8f77', '127.0.0.1', '2019-09-26 05:56:33', 'false'),
('4775d584f083fff5dfa5f597f5de5c02', '127.0.0.1', '2019-09-26 05:56:34', 'false'),
('1c747f36c266c9832e9787cbc5a0fb70', '127.0.0.1', '2019-09-26 05:57:01', 'false'),
('23c44b891aa2ab556f3dde02d4baa88b', '127.0.0.1', '2019-09-26 05:57:02', 'false'),
('40dd0d30be12e1520466a5b8bd71553b', '127.0.0.1', '2019-09-26 15:58:34', 'false'),
('b3ed86b8aae46cce8d0226bc93c6e89b', '127.0.0.1', '2019-09-26 15:59:11', 'false'),
('3c49b719e19510f26fb7431b6061bd3c', '127.0.0.1', '2019-09-26 15:59:34', 'false'),
('7ca60f429e28eb59742565853cb2acb3', '127.0.0.1', '2019-09-26 15:59:38', 'false'),
('e227f65f19225241fd83c27a17d05e6c', '127.0.0.1', '2019-09-26 15:59:39', 'false'),
('a34ef986fe05b4b1331a7a7166fa1e0a', '127.0.0.1', '2019-09-26 15:59:40', 'false'),
('826bda5ef2c9a7154069f84d9fb5d50a', '127.0.0.1', '2019-09-26 16:00:11', 'true'),
('405e46cd31a7f1319654aa832844e85c', '127.0.0.1', '2019-09-26 16:02:58', 'true'),
('f732ef9caa69afa9de50eb0cafa4eca7', '127.0.0.1', '2019-09-26 16:03:00', 'true'),
('0b13e58a43e52bad9f533b19d7006159', '127.0.0.1', '2019-09-26 16:03:02', 'true'),
('43e9e3c68189c21b43fd4c1f1e703299', '127.0.0.1', '2019-09-26 16:03:04', 'true'),
('5e0580e7634e0f813e4cc7d590f8d4d3', '127.0.0.1', '2019-09-26 16:03:04', 'true'),
('52f914ca4dd71ed3b8e0e21cc6a40d5b', '127.0.0.1', '2019-09-26 16:03:04', 'true'),
('4fa00a290f5d3cb6b32db55d0e1b943d', '127.0.0.1', '2019-09-26 16:04:49', 'true'),
('4eb8b41f7bbc9eab18dc18f4e8a62b02', '127.0.0.1', '2019-09-26 16:04:51', 'true'),
('4e8c7634509bf43bf9befdeb7ffb07f6', '127.0.0.1', '2019-09-26 16:04:53', 'true'),
('d484051f03ddb019ce176c3b3e43d386', '127.0.0.1', '2019-09-26 16:04:53', 'true'),
('afd9f407927d8ffe2d6244c2adad0528', '127.0.0.1', '2019-09-26 16:04:53', 'true'),
('77fbafc4349abc15beb0ce4e7767a46f', '127.0.0.1', '2019-09-26 16:24:00', 'true'),
('b47d35c01d440b5d4dc8e10668fac496', '127.0.0.1', '2019-09-26 16:24:28', 'true'),
('5db470c4a0eed64a381eb3dc43dc944f', '127.0.0.1', '2019-09-26 16:27:39', 'true'),
('95a1b2f661c8aa32509901e8e72fc722', '127.0.0.1', '2019-09-26 16:28:04', 'true'),
('cbbec976de099f781af141948d86888e', '127.0.0.1', '2019-09-26 16:28:04', 'true'),
('5ba305e6b8132f38a85b64b837274f9b', '127.0.0.1', '2019-09-26 16:28:12', 'true'),
('1c65b26babbeb48a554d149ac1977be9', '127.0.0.1', '2019-09-27 03:10:25', 'true'),
('7247dd68708d8153275925d0866e79cb', '127.0.0.1', '2019-09-27 03:15:17', 'true'),
('b5d85f836b7a89b486a3fbb8657c0f00', '127.0.0.1', '2019-09-27 03:17:16', 'true'),
('7fffa93f19e25f861b56d5322f7b5899', '127.0.0.1', '2019-09-27 03:18:33', 'true'),
('4913edb02afb468f9964bdcc6ead5704', '127.0.0.1', '2019-09-27 03:18:41', 'true'),
('0e9f9e285b2f3786cbd27d6274d7e676', '127.0.0.1', '2019-09-27 03:18:42', 'true'),
('3eeb5fb152db206fffc3ec98f0803863', '127.0.0.1', '2019-09-27 03:18:43', 'true'),
('b6c4673ee7c8bb0447858c4729179d69', '127.0.0.1', '2019-09-27 03:18:44', 'true'),
('2645ff63b383bcbcb2c167c9ebdea190', '127.0.0.1', '2019-09-27 03:18:46', 'true'),
('ce4e1bbf6fe0117bd29e26c04493526e', '127.0.0.1', '2019-09-27 03:18:47', 'true'),
('0a4bdd61fd6eb9ca2819ce63d7fc8fe3', '127.0.0.1', '2019-09-27 03:19:00', 'true'),
('7b2f680bf97d7c84ba0188bee8955f92', '127.0.0.1', '2019-09-27 03:19:10', 'true'),
('7ce936e9c6e60205d499bc230bbb0162', '127.0.0.1', '2019-09-27 03:19:50', 'true'),
('3403e9407c6f5e503e56219fb4fc08dc', '127.0.0.1', '2019-09-27 03:20:26', 'true'),
('da9376d94c0ce880fe293287e01507e0', '127.0.0.1', '2019-09-27 03:22:50', 'true'),
('c40898513337de7455df677579eda3b9', '127.0.0.1', '2019-09-27 03:25:26', 'true'),
('67429602d9d5512ddfc7f30e3d756605', '127.0.0.1', '2019-09-27 03:25:42', 'true'),
('a67c1aae9aead4d077d787aaab349fbe', '127.0.0.1', '2019-09-27 03:25:43', 'true'),
('1016a535c7db7282366b67e1fd44d913', '127.0.0.1', '2019-09-27 03:25:56', 'true'),
('687bf5021575e64a573dfd0f28c15159', '127.0.0.1', '2019-09-27 03:26:33', 'true'),
('668a3230e24794a48402bd3c2f4cefdf', '127.0.0.1', '2019-09-27 03:26:53', 'true'),
('555e31181e9b6be23a570407b182047b', '127.0.0.1', '2019-12-24 04:21:11', 'true'),
('c56eba1fdd4b29bee25fe8141adee711', '127.0.0.1', '2019-12-24 04:22:40', 'true'),
('00a02342a62cc570dd566cd2f34bdbac', '127.0.0.1', '2019-12-24 04:23:04', 'true'),
('728fc86bbab40e3bcba9994700dd64e9', '127.0.0.1', '2019-12-24 04:23:05', 'true'),
('1f5273c688728974cf543ee7c69de94f', '127.0.0.1', '2019-12-24 04:23:13', 'true'),
('46b2263263a2558493850d8e64250174', '127.0.0.1', '2019-12-24 04:23:14', 'true'),
('89e74c361e984e0c6a5ad29c7191dc44', '127.0.0.1', '2019-12-24 04:23:31', 'true'),
('de5e098631376491066516d92ef74a36', '127.0.0.1', '2019-12-24 04:23:31', 'true'),
('08bbe6cd5a4ba514efab6e04a19fef1b', '127.0.0.1', '2019-12-24 04:23:36', 'true'),
('19bb23e3575e8d63fb91002c8af7d7b4', '127.0.0.1', '2019-12-24 04:23:36', 'true'),
('d93b2324dd8cc65b7f9c985f8a1248e3', '127.0.0.1', '2019-12-24 04:23:48', 'true'),
('d46e936fab1a37e60d5fa4f3361ee015', '127.0.0.1', '2019-12-24 04:24:00', 'true'),
('a552eb9ba01b2dd6da570488868a6c08', '127.0.0.1', '2019-12-24 04:24:06', 'true'),
('3df129b2859ac12c0e7cef58a4e81840', '127.0.0.1', '2019-12-24 04:24:48', 'true'),
('5074f857d885620cf0d158fbcc8fcad6', '127.0.0.1', '2019-12-24 04:24:49', 'true'),
('328faa760e185db006c21fd0820ee7e4', '127.0.0.1', '2019-12-24 04:24:51', 'true'),
('c6d50bf7ea178d28d09891aa148e83e7', '127.0.0.1', '2019-12-24 04:24:52', 'true'),
('1c31ca42143c8f687d494aae3e2ac13a', '127.0.0.1', '2019-12-24 04:26:52', 'true'),
('2444a810752edbc1310f1c9deda11dbe', '127.0.0.1', '2019-12-24 04:26:54', 'true'),
('f5659947556a90ccb362ba1bc052e55d', '127.0.0.1', '2019-12-24 04:26:56', 'true'),
('34312bfdca563778413deba3f7ed5301', '127.0.0.1', '2019-12-24 04:27:57', 'true'),
('63324f989c49903dfbbb2fec9389b62d', '127.0.0.1', '2019-12-24 04:28:12', 'true'),
('38c2757edf5115a40dea468ff5039506', '127.0.0.1', '2019-12-24 04:28:21', 'true'),
('af2144ad30ba7da19c559d38a3810c84', '127.0.0.1', '2019-12-24 04:28:26', 'true'),
('faa401c3e36c12cccfc6607e9a3540a8', '127.0.0.1', '2019-12-24 04:28:29', 'true'),
('1c1a4853db89516c408edd947a4a5fd6', '127.0.0.1', '2019-12-24 04:28:31', 'true'),
('d4e3bced741d561dac00b79423ed0fad', '127.0.0.1', '2019-12-24 04:28:34', 'true'),
('cbc7b0e65cc59ae478f6abd9b90d88ad', '127.0.0.1', '2019-12-24 04:28:46', 'true');
INSERT INTO `cp_visitor` (`kd`, `ipnya`, `postdate`, `online`) VALUES
('c1f52a5f56138e831eb20e1d3f5b4630', '127.0.0.1', '2019-12-24 04:28:48', 'true'),
('f0f783c673e2866f0a12ad6da39a1d60', '127.0.0.1', '2019-12-24 04:28:52', 'true'),
('17111f79100077a2e02d1efb5f901012', '127.0.0.1', '2019-12-24 04:28:56', 'true'),
('202b6bbfc2e8a923b9ff467c2b2777d1', '127.0.0.1', '2019-12-24 04:29:46', 'true'),
('1834d2eecd57cdb56cc66fb4aab58ddb', '127.0.0.1', '2019-12-24 04:29:49', 'true'),
('65036cecd607486074ab79ef3abf1af5', '127.0.0.1', '2019-12-24 04:30:17', 'true'),
('4bfd9f6b3551c4fd371519900b375279', '127.0.0.1', '2019-12-24 04:30:18', 'true'),
('f56f5cdb43c4a338722935f6c1d19909', '127.0.0.1', '2019-12-24 04:30:20', 'true'),
('4389d1694c8734a4b3a63bb393970517', '127.0.0.1', '2019-12-24 04:30:27', 'true'),
('7ed03a4b1ef8d75d5ca778d8bf2e0861', '127.0.0.1', '2019-12-24 04:30:30', 'true'),
('b47b6090a1f0ed3885dbd0e3219c8a07', '127.0.0.1', '2019-12-24 04:30:31', 'true'),
('2b8a84f0775a2ff1a9278c88f47e5758', '127.0.0.1', '2019-12-24 04:31:24', 'true'),
('b821a1df901c2e004e2070420860d9da', '127.0.0.1', '2019-12-24 04:32:07', 'true'),
('96d96e1345e8e4baa4c67df7a8c53cae', '127.0.0.1', '2019-12-24 04:32:09', 'true'),
('7a2b9c0bb9164152548426fc9d280bfe', '127.0.0.1', '2019-12-24 04:32:19', 'true'),
('1c06e1c237e1952f5f444fb613d8c2a2', '127.0.0.1', '2019-12-24 04:32:21', 'true'),
('1ab658eccea4461ea190ae329c2a7acd', '127.0.0.1', '2019-12-24 04:32:22', 'true'),
('46e8d7130a125cae0e8327a818f3d2ca', '127.0.0.1', '2019-12-24 04:32:24', 'true'),
('51ddae50e6d8a86255d0e38991fd2996', '127.0.0.1', '2019-12-24 04:32:31', 'true'),
('b02372b664b1366c38051f6d48dbad0e', '127.0.0.1', '2019-12-24 04:32:33', 'true'),
('84e0616018a0a4a4513057a57de20d3f', '127.0.0.1', '2019-12-24 04:32:35', 'true'),
('4d57eb341fd3b9aaf948b3ae5ce6ded8', '127.0.0.1', '2019-12-24 04:32:40', 'true'),
('6550a771b6f031a5b7dfc757bc2b4d06', '127.0.0.1', '2019-12-24 04:32:41', 'true'),
('9ba6823579d5f2ff8fd4c8c2a33f9437', '127.0.0.1', '2019-12-24 04:33:29', 'true'),
('350538e714ab87e199a798d47b9cdad9', '127.0.0.1', '2019-12-24 04:36:55', 'true'),
('986d3f590f04d2301ece62349daf9907', '127.0.0.1', '2019-12-24 04:37:10', 'true'),
('3f6627ea4f77f81be57a3910492874e4', '127.0.0.1', '2019-12-24 04:37:11', 'true'),
('382b816feae20bbcb6310b488da23a06', '127.0.0.1', '2019-12-24 04:37:39', 'true'),
('ed8f7b75005e5e8f0e3891e8b80fbf5e', '127.0.0.1', '2019-12-24 04:37:42', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_artikel`
--
ALTER TABLE `cp_artikel`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `cp_artikel_komentar`
--
ALTER TABLE `cp_artikel_komentar`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `cp_bukutamu`
--
ALTER TABLE `cp_bukutamu`
  ADD PRIMARY KEY (`kd`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
