-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 02, 2022 at 02:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_k13app_revisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_ab`
--

CREATE TABLE `tb_ab` (
  `id_ab` int(11) NOT NULL,
  `nm_bulan` varchar(30) NOT NULL,
  `smt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ab`
--

INSERT INTO `tb_ab` (`id_ab`, `nm_bulan`, `smt`) VALUES
(1, 'Januari', 1),
(2, 'Februari', 1),
(3, 'Maret', 1),
(4, 'April', 1),
(5, 'Mei', 1),
(6, 'Juni', 1),
(7, 'Juli', 2),
(8, 'Agustus', 2),
(9, 'September', 2),
(10, 'Oktober', 2),
(11, 'November', 2),
(12, 'Desember', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_abguru`
--

CREATE TABLE `tb_abguru` (
  `id_abguru` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `ab` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `smt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_abguru`
--

INSERT INTO `tb_abguru` (`id_abguru`, `sakit`, `izin`, `alpha`, `jumlah`, `ab`, `guru`, `ta`, `smt`) VALUES
(1, 3, 6, 1, 9, 1, 1, 1, 1),
(2, 4, 3, 7, 5, 2, 1, 1, 1),
(13, 1, 2, 2, 5, 3, 1, 1, 1),
(14, 2, 2, 2, 6, 1, 2, 1, 1),
(15, 1, 2, 8, 11, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_absiswa`
--

CREATE TABLE `tb_absiswa` (
  `id_absiswa` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `ab` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `smt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_absiswa`
--

INSERT INTO `tb_absiswa` (`id_absiswa`, `sakit`, `izin`, `alpha`, `jumlah`, `ab`, `siswa`, `ta`, `smt`) VALUES
(10, 1, 2, 1, 4, 1, 16, 4, 1),
(11, 0, 0, 0, 0, 2, 16, 4, 1),
(12, 0, 0, 0, 0, 3, 16, 4, 1),
(13, 0, 0, 0, 0, 6, 16, 4, 1),
(14, 0, 0, 0, 0, 5, 16, 4, 1),
(15, 1, 0, 0, 1, 4, 16, 4, 1),
(16, 0, 0, 0, 0, 1, 17, 4, 1),
(17, 0, 0, 0, 0, 2, 17, 4, 1),
(18, 0, 0, 0, 0, 3, 17, 4, 1),
(19, 0, 0, 0, 0, 6, 17, 4, 1),
(20, 0, 0, 0, 0, 5, 17, 4, 1),
(21, 0, 0, 0, 0, 4, 17, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`id_akun`, `username`, `password`, `level`) VALUES
(1, 'admin', '$2y$12$EeN4WLTA/UqwFafRdKRkPO2xob9TfsEa77vLn1Lm5U4ufAmvU3G.a', 1),
(2, 'guru', '$2y$11$pNv82KGGU97.DAMw./qRCeOCEukuXY41HdDsxknNyAe68..rkxh0.', 2),
(3, 'kepsek', '$2y$11$ST2NVDM3fwKnKH3ZdLfiX.MEAZpp8sTMs30bqGnvNN1llUGBDZEpW', 2),
(4, 'guru2', '$2y$12$HL7PmuG6PqtHp8lAD2Ttb.QfzKf/i4y1Q6TXwFaIFKfe8ZNkL/XrC', 2),
(9, 'juna', '$2y$11$pbbpeGZt.SCsdUQC1r9EbuIG6D3vQOiNUX6Rbh77ITIMPABIKi3zG', 2),
(10, '-288', '', 2),
(11, '0999877-292', '', 2),
(12, '00998887-256', '', 2),
(13, 'guru4', '$2y$11$6P2aEr9txv4G77CtfhwA5.Abp6dJL/xLLjGB7wcZrlXH4veMgaKGK', 2),
(14, 'guru5', '$2y$11$BgixZIyTVliZ9sv2Cf26We4iIX2RNZXhIuWyqNZ6JXTOfokPqTMl6', 2),
(15, '-263', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_desk_ki3`
--

CREATE TABLE `tb_desk_ki3` (
  `id_desk_ki3` int(11) NOT NULL,
  `desk_ki3` text NOT NULL,
  `mapel` int(11) NOT NULL,
  `smt` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_desk_ki3`
--

INSERT INTO `tb_desk_ki3` (`id_desk_ki3`, `desk_ki3`, `mapel`, `smt`, `kelas`) VALUES
(6, 'jndka', 15, 1, 1),
(7, 'ndsa', 15, 1, 1),
(8, 'akdak', 15, 1, 1),
(12, 'addajw', 16, 1, 1),
(13, 'kadwa', 16, 1, 1),
(14, 'dnkasjd', 16, 1, 1),
(18, 'sdmals', 17, 1, 1),
(19, 'dsamnd', 17, 1, 1),
(20, 'skdna', 17, 1, 1),
(26, 'mdslamd', 18, 1, 1),
(28, 'dmadwq', 18, 1, 1),
(29, 'nsadsaj', 18, 1, 1),
(32, 'ndsnas', 19, 1, 1),
(33, 'saddma', 19, 1, 1),
(34, 'sadlma', 19, 1, 1),
(36, 'menjelaskan pentingnya upaya keseimbangan dan pelestarian sumber daya alam dilingkungannya', 19, 1, 0),
(37, 'samdwdqj', 20, 1, 1),
(38, 'sakmda', 20, 1, 1),
(39, 'sndkand', 20, 1, 1),
(41, 'saddm', 21, 1, 1),
(42, 'ndasn', 21, 1, 1),
(43, 'msdlamd', 21, 1, 1),
(45, 'msadlk', 22, 1, 1),
(46, 'sdamn', 22, 1, 1),
(47, 'ndkas', 22, 1, 1),
(50, 'jdkaj', 23, 1, 1),
(51, 'sjdla', 23, 1, 1),
(52, 'dasd', 23, 1, 1),
(53, 'sjdlajd', 24, 1, 1),
(54, 'skdnal', 24, 1, 1),
(55, 'sdal', 24, 1, 1),
(56, 'cekhh', 15, 1, 2),
(57, 'text', 15, 2, 1),
(58, 'text2', 15, 2, 1),
(61, 'ssss', 15, 2, 1),
(65, 'sadja', 15, 2, 6),
(66, 'daksdj', 15, 2, 6),
(67, 'dosjo', 15, 2, 6),
(72, 'dskalj', 16, 2, 6),
(73, 'dkjfh', 16, 2, 6),
(74, 'josjdp', 16, 2, 6),
(75, 'kmdlak', 17, 2, 6),
(76, 'ndkjad', 17, 2, 6),
(77, 'fslkpa', 17, 2, 6),
(78, 'mlkadl', 18, 2, 6),
(79, 'kdakdj', 18, 2, 6),
(80, 'esodjo', 18, 2, 6),
(81, 'dklasjdl', 19, 2, 6),
(82, 'ndkjdka', 19, 2, 6),
(83, 'mddoad', 19, 2, 6),
(84, 'kdlakdj', 20, 2, 6),
(85, 'ksdklsjd', 20, 2, 6),
(86, 'dlksdla', 20, 2, 6),
(87, 'jnksdnlk', 21, 2, 6),
(88, 'dnkjadl', 21, 2, 6),
(89, 'mdlkslk', 21, 2, 6),
(90, 'ksjdlakj', 22, 2, 6),
(91, 'hdkjhk', 22, 2, 6),
(92, 'nkddnk', 22, 2, 6),
(93, 'dmlkadsl', 23, 2, 6),
(94, 'dmlsklks', 23, 2, 6),
(95, 'dmlskmd', 23, 2, 6),
(96, 'mdlakmd', 24, 2, 6),
(97, 'njndkajd', 24, 2, 6),
(98, 'mdlakdla', 24, 2, 6),
(99, 'mdlkamd', 15, 1, 6),
(100, 'mdlakmd', 15, 1, 6),
(101, 'dmlkdds', 15, 1, 6),
(102, 'mdlkadm', 16, 1, 6),
(103, 'nddhusi', 16, 1, 6),
(104, 'dsuhdid', 16, 1, 6),
(105, 'dkndkan', 17, 1, 6),
(106, 'dokdjla', 17, 1, 6),
(107, 'dsklnds', 17, 1, 6),
(108, 'mdklsdml', 18, 1, 6),
(109, 'dmlakdmla', 18, 1, 6),
(110, 'mdkalmd', 18, 1, 6),
(111, 'dmlkmdl', 19, 1, 6),
(112, 'mdlskmdl', 19, 1, 6),
(113, 'mkldmlsk', 19, 1, 6),
(114, 'mdsmdlk', 20, 1, 6),
(115, 'dmlamdl', 20, 1, 6),
(116, 'doedklkm', 20, 1, 6),
(117, 'kldmlak', 21, 1, 6),
(118, 'mdlakm', 21, 1, 6),
(119, 'dmdalm', 21, 1, 6),
(120, 'dsmdl', 22, 1, 6),
(121, 'dkalndl', 22, 1, 6),
(122, 'dmldmw', 22, 1, 6),
(123, 'dlamkd', 24, 1, 6),
(124, 'mdlakmd', 24, 1, 6),
(125, 'mdlmaa', 24, 1, 6),
(126, 'mdlakmd', 23, 1, 6),
(127, 'dmlakmd', 23, 1, 6),
(128, 'mdlakdj', 23, 1, 6),
(129, 'dalasd', 15, 2, 5),
(130, 'nadnak', 15, 2, 5),
(131, 'dmoakda', 15, 2, 5),
(132, 'mdasldm', 16, 2, 5),
(133, 'oakdal', 16, 2, 5),
(134, 'ajsdaj', 16, 2, 5),
(135, 'alskdl', 17, 2, 5),
(136, 'damsd', 17, 2, 5),
(137, 'dmaldj', 17, 2, 5),
(138, 'mdalsmd', 18, 2, 5),
(139, 'mlkmdalk', 18, 2, 5),
(140, 'dmakdm', 18, 2, 5),
(141, 'daslmd', 20, 2, 5),
(142, 'mdlkam', 20, 2, 5),
(143, 'mdkladm', 20, 2, 5),
(144, 'dakndk', 19, 1, 5),
(145, 'ndkajdn', 19, 1, 5),
(146, 'ndanda', 19, 1, 5),
(147, 'mdalsmd', 19, 2, 5),
(148, 'mdandk', 19, 2, 5),
(149, 'dmalmdl', 19, 2, 5),
(150, 'mdasmd', 21, 2, 5),
(151, 'dadmkla', 21, 2, 5),
(152, 'damdlaa', 21, 2, 5),
(153, 'djdosa', 22, 2, 5),
(154, 'dnaknd', 22, 2, 5),
(155, 'odksos', 22, 2, 5),
(156, 'msadm', 23, 2, 5),
(157, 'njnkadn', 23, 2, 5),
(158, 'dlaldjpa', 23, 2, 5),
(159, 'dajdoa', 24, 2, 5),
(160, 'dajdisd', 24, 2, 5),
(161, 'mdalmd', 24, 2, 5),
(162, 'dmaklsmdn', 15, 1, 5),
(163, 'dnakjdn', 15, 1, 5),
(164, 'dnakdn', 15, 1, 5),
(165, 'mdka', 16, 1, 5),
(166, 'ndkajdn', 16, 1, 5),
(167, 'dnanda', 16, 1, 5),
(168, 'mdsmd', 17, 1, 5),
(169, 'mdlam', 17, 1, 5),
(170, 'dmalmd', 17, 1, 5),
(171, 'mklsdma', 18, 1, 5),
(172, 'dalkdma', 18, 1, 5),
(173, 'danldnal', 18, 1, 5),
(174, 'daskmd', 21, 1, 5),
(175, 'ndjadn', 21, 1, 5),
(176, 'ndakdn', 21, 1, 5),
(177, 'dmamd', 20, 1, 5),
(178, 'mdklam', 20, 1, 5),
(179, 'dmladm', 20, 1, 5),
(180, 'mdaksdm', 22, 1, 5),
(181, 'mdalkdm', 22, 1, 5),
(182, 'dmalmdl', 22, 1, 5),
(183, 'dmalkdm', 23, 1, 5),
(184, 'dladkla', 23, 1, 5),
(185, 'doiadjo', 23, 1, 5),
(186, 'mdalkd', 24, 1, 5),
(187, 'dalkmdla', 24, 1, 5),
(188, 'dmaldm', 24, 1, 5),
(189, 'danok', 15, 2, 4),
(190, 'dlamd', 15, 2, 4),
(191, 'dmadm', 15, 2, 4),
(192, 'dmakd', 16, 2, 4),
(193, 'ndadkl', 16, 2, 4),
(194, 'dnaknd', 16, 2, 4),
(195, 'dmakmd', 17, 2, 4),
(196, 'dakndl', 17, 2, 4),
(197, 'dnandla', 17, 2, 4),
(198, 'dakm', 18, 2, 4),
(199, 'mdal', 18, 2, 4),
(200, 'mdam', 18, 2, 4),
(201, 'dkdkdk', 19, 2, 4),
(202, 'ndkand', 19, 2, 4),
(203, 'dnaknd', 19, 2, 4),
(204, 'dka', 20, 2, 4),
(205, 'ondal', 20, 2, 4),
(206, 'ndalnd', 20, 2, 4),
(207, 'ndalk', 21, 2, 4),
(208, 'dlamd', 21, 2, 4),
(209, 'dnand', 21, 2, 4),
(210, 'mdlka', 22, 2, 4),
(211, 'dlmadl', 22, 2, 4),
(212, 'dmlamd', 22, 2, 4),
(213, 'dmlam', 23, 2, 4),
(214, 'dmlamd', 23, 2, 4),
(215, 'dmladm', 23, 2, 4),
(216, 'ndkank', 24, 2, 4),
(217, 'dnlad', 24, 2, 4),
(218, 'ndlandp', 24, 2, 4),
(219, 'emdskam', 15, 1, 4),
(220, 'ndaknd', 15, 1, 4),
(221, 'ndand', 15, 1, 4),
(222, 'ndakln', 16, 1, 4),
(223, 'dnaldnk', 16, 1, 4),
(224, 'dmalda', 16, 1, 4),
(225, 'ndkan', 17, 1, 4),
(226, 'dnkan', 17, 1, 4),
(227, 'dnaknd', 17, 1, 4),
(228, 'dlakd', 18, 1, 4),
(229, 'mdamd', 18, 1, 4),
(230, 'dmamd', 18, 1, 4),
(234, 'ndakn', 19, 1, 4),
(235, 'djoaj', 19, 1, 4),
(236, 'dnand', 19, 1, 4),
(237, 'mdskad', 20, 1, 4),
(238, 'dnkandk', 20, 1, 4),
(239, 'dakdn', 20, 1, 4),
(240, 'ndakn', 21, 1, 4),
(241, 'dnakd', 21, 1, 4),
(242, 'dnkajdl', 21, 1, 4),
(243, 'ndka', 22, 1, 4),
(244, 'ndla', 22, 1, 4),
(245, 'dnalnd', 22, 1, 4),
(246, 'dnan', 23, 1, 4),
(247, 'dnajiq', 23, 1, 4),
(248, 'eokd', 23, 1, 4),
(249, 'ndkajn', 24, 1, 4),
(250, 'dnakn', 24, 1, 4),
(251, 'dokad', 24, 1, 4),
(252, 'mdalk', 15, 2, 3),
(253, 'dnjan', 15, 2, 3),
(254, 'dnajkn', 15, 2, 3),
(255, 'ndka', 16, 2, 3),
(256, 'dnkan', 16, 2, 3),
(257, 'dnaknd', 16, 2, 3),
(258, 'dnajn', 17, 2, 3),
(259, 'dnakn', 17, 2, 3),
(260, 'ndand', 17, 2, 3),
(261, 'ndkand', 18, 2, 3),
(262, 'ndkadn', 18, 2, 3),
(263, 'djwd', 18, 2, 3),
(264, 'ndaknd', 19, 2, 3),
(265, 'daklnd', 19, 2, 3),
(266, 'didwd', 19, 2, 3),
(267, 'dnakjdn', 20, 2, 3),
(268, 'dndakjn', 20, 2, 3),
(269, 'dndnwd', 20, 2, 3),
(270, 'dmlamd', 21, 2, 3),
(271, 'djwnd', 21, 2, 3),
(272, 'dnwoad', 21, 2, 3),
(273, 'dnkajdn', 22, 2, 3),
(274, 'dnkajdn', 22, 2, 3),
(275, 'dnakjdn', 22, 2, 3),
(276, 'dkadn', 23, 2, 3),
(277, 'doajdo', 23, 2, 3),
(278, 'dneud', 23, 2, 3),
(279, 'dnak', 24, 2, 3),
(280, 'dnkawd', 24, 2, 3),
(281, 'nduwa', 24, 2, 3),
(282, 'dlakmd', 15, 1, 3),
(283, 'dajdn', 15, 1, 3),
(284, 'dijdoja', 15, 1, 3),
(285, 'ndkaj', 16, 1, 3),
(286, 'ndkajn', 16, 1, 3),
(287, 'dnoie', 16, 1, 3),
(288, 'dnakn', 17, 1, 3),
(289, 'duedhi', 17, 1, 3),
(290, 'dkajdn', 17, 1, 3),
(291, 'dnakn', 18, 1, 3),
(292, 'dnnak', 18, 1, 3),
(293, 'dnakdn', 18, 1, 3),
(294, 'dkandk', 19, 1, 3),
(295, 'duhd', 19, 1, 3),
(296, 'dnakld', 19, 1, 3),
(297, 'ndand', 20, 1, 3),
(298, 'duahd', 20, 1, 3),
(299, 'dandbs', 20, 1, 3),
(300, 'dmak', 21, 1, 3),
(301, 'dnakj', 21, 1, 3),
(302, 'dnajdn', 21, 1, 3),
(303, 'dnak', 22, 1, 3),
(304, 'dasdu', 22, 1, 3),
(305, 'dtsdf', 22, 1, 3),
(306, 'dkjan', 24, 1, 3),
(307, 'dnasj', 24, 1, 3),
(308, 'dsydhs', 24, 1, 3),
(309, 'dnasjn', 23, 1, 3),
(310, 'udhsaud', 23, 1, 3),
(311, 'dstdfs', 23, 1, 3),
(312, 'ndknas', 15, 1, 2),
(313, 'dbabsds', 15, 1, 2),
(314, 'dasdn', 15, 2, 2),
(315, 'dushd', 15, 2, 2),
(316, 'dgsvda', 15, 2, 2),
(317, 'dnakj', 16, 2, 2),
(318, 'dnakjsdn', 16, 2, 2),
(319, 'dnkjndw', 16, 2, 2),
(320, 'dnakdn', 17, 2, 2),
(321, 'dasdb', 17, 2, 2),
(322, 'dbsahdb', 17, 2, 2),
(323, 'damnd', 18, 2, 2),
(324, 'duashd', 18, 2, 2),
(325, 'dkajd', 18, 2, 2),
(326, 'ndand', 19, 2, 2),
(327, 'dnasm,dn', 19, 2, 2),
(328, 'dnajkd', 19, 2, 2),
(329, 'ndakj', 20, 2, 2),
(330, 'dnakjdn', 20, 2, 2),
(331, 'dabsbd', 20, 2, 2),
(332, 'dnakdn', 21, 2, 2),
(333, 'bdajbha', 21, 2, 2),
(334, 'dbad', 21, 2, 2),
(335, 'dnsam,d', 23, 2, 2),
(336, 'dnajdn', 23, 2, 2),
(337, 'ddaksbd', 23, 2, 2),
(338, 'dnad', 22, 2, 2),
(339, 'dnamnd', 22, 2, 2),
(340, 'dsjd', 22, 2, 2),
(341, 'kdabd', 24, 2, 2),
(342, 'danb', 24, 2, 2),
(343, 'owpow', 24, 2, 2),
(344, 'nakdnka', 17, 1, 2),
(345, 'dhauhdsd', 17, 1, 2),
(346, 'dnadn', 17, 1, 2),
(347, 'dnaknd', 16, 1, 2),
(348, 'dndna', 16, 1, 2),
(349, 'dnakd', 16, 1, 2),
(350, 'd,amnd', 18, 1, 2),
(351, 'ndasj', 18, 1, 2),
(352, 'dasda', 18, 1, 2),
(353, 'daknd', 20, 1, 2),
(354, 'daknds', 20, 1, 2),
(355, 'dnakjsd', 20, 1, 2),
(356, 'dalkd', 19, 1, 2),
(357, 'dnajsd', 19, 1, 2),
(358, 'dnak', 19, 1, 2),
(359, 'dand', 21, 1, 2),
(360, 'dnasudn', 21, 1, 2),
(361, 'dnaksjdn', 21, 1, 2),
(362, 'ndas', 22, 1, 2),
(363, 'dnsajkdn', 22, 1, 2),
(364, 'dnasjkdn', 22, 1, 2),
(365, 'dnasdn', 23, 1, 2),
(366, 'dnasjk', 23, 1, 2),
(367, 'dnaskjd', 23, 1, 2),
(368, 'dnasnd', 24, 1, 2),
(369, 'dnaskj', 24, 1, 2),
(370, 'dnaskjdn', 24, 1, 2),
(372, 'ksand', 16, 2, 1),
(373, 'dhaudh', 16, 2, 1),
(374, 'dasdh', 16, 2, 1),
(375, 'ndksand', 17, 2, 1),
(376, 'dbashdb', 17, 2, 1),
(377, 'dasgdv', 17, 2, 1),
(378, 'dbasdd', 18, 2, 1),
(379, 'dbashd', 18, 2, 1),
(380, 'dbjas', 18, 2, 1),
(381, 'ndasjkd', 19, 2, 1),
(382, 'dbah', 19, 2, 1),
(383, 'dajsd', 19, 2, 1),
(384, 'dsadn', 20, 2, 1),
(385, 'dbasjdb', 20, 2, 1),
(386, 'dbash', 20, 2, 1),
(387, 'snakjdn', 21, 2, 1),
(388, 'dasdb', 21, 2, 1),
(389, 'dbasdbh', 21, 2, 1),
(390, 'ndsadn', 22, 2, 1),
(391, 'dnndas', 22, 2, 1),
(392, 'dajsbd', 22, 2, 1),
(393, 'asbjdb', 23, 2, 1),
(394, 'dbasjdb', 23, 2, 1),
(395, 'dbasjdb', 23, 2, 1),
(396, 'dnkajs', 24, 2, 1),
(397, 'dasjkdn', 24, 2, 1),
(398, 'dbasjdb', 24, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_desk_ki4`
--

CREATE TABLE `tb_desk_ki4` (
  `id_desk_ki4` int(11) NOT NULL,
  `desk_ki4` text NOT NULL,
  `mapel` int(11) NOT NULL,
  `smt` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_desk_ki4`
--

INSERT INTO `tb_desk_ki4` (`id_desk_ki4`, `desk_ki4`, `mapel`, `smt`, `kelas`) VALUES
(1, 'dmlkasdm', 15, 1, 1),
(3, 'djnkajd', 15, 1, 1),
(8, 'dalm', 15, 1, 1),
(11, 'kdkand', 16, 1, 1),
(12, 'andka', 16, 1, 1),
(13, 'dsbajd', 16, 1, 1),
(15, 'jndka', 17, 1, 1),
(16, 'ndakjw', 17, 1, 1),
(17, 'snadka', 17, 1, 1),
(20, 'dalmd', 18, 1, 1),
(21, 'smkdaldm', 18, 1, 1),
(22, 'dmlamd', 18, 1, 1),
(24, 'dnkand', 19, 1, 1),
(25, 'dmkqmw', 19, 1, 1),
(26, 'nd qwdm', 19, 1, 1),
(29, 'sdma', 20, 1, 1),
(30, 'dkjasdn', 20, 1, 1),
(31, 'kdmmq', 20, 1, 1),
(32, 'sdnak', 21, 1, 1),
(33, 'ndand', 21, 1, 1),
(34, 'ksmdq', 21, 1, 1),
(36, 'ndasmnd', 22, 1, 1),
(37, 'smda', 22, 1, 1),
(38, 'sdkam', 22, 1, 1),
(41, 'kdmqw', 24, 1, 1),
(42, 'kmdla', 24, 1, 1),
(43, 'jndak', 24, 1, 1),
(46, 'dnakd', 15, 2, 1),
(47, 'sdnakd', 15, 2, 1),
(48, 'Deskkk', 15, 2, 1),
(49, 'dnasnd', 15, 2, 6),
(50, 'dajksd', 15, 2, 6),
(51, 'dbajsdba', 15, 2, 6),
(52, 'dakjd', 16, 2, 6),
(53, 'dbasbd', 16, 2, 6),
(54, 'dhasda', 16, 2, 6),
(55, 'adsdn', 17, 2, 6),
(56, 'dnaskdn', 17, 2, 6),
(57, 'dasd', 17, 2, 6),
(58, 'dbajd', 18, 2, 6),
(59, 'dajsbd', 18, 2, 6),
(60, 'daskdj', 18, 2, 6),
(61, 'dnkasjd', 19, 2, 6),
(62, 'dkasjdn', 19, 2, 6),
(63, 'dnasknd', 19, 2, 6),
(64, 'dnsa', 20, 2, 6),
(65, 'daksjd', 20, 2, 6),
(66, 'dbasjdb', 20, 2, 6),
(67, 'daksjd', 21, 2, 6),
(68, 'dbjasbd', 21, 2, 6),
(69, 'dbajsdb', 21, 2, 6),
(70, 'dnakjd', 22, 2, 6),
(72, 'dbasdb', 22, 2, 6),
(74, 'djasd', 22, 2, 6),
(76, 'dakjd', 23, 2, 6),
(77, 'dbasdb', 23, 2, 6),
(78, 'dbaksda', 23, 2, 6),
(79, 'dakjdb', 24, 2, 6),
(80, 'dbasdb', 24, 2, 6),
(81, 'dbasdb', 24, 2, 6),
(82, 'dnadn', 15, 1, 6),
(83, 'dnad', 15, 1, 6),
(84, 'dbasd', 15, 1, 6),
(85, 'dnakj', 16, 1, 6),
(86, 'dakjdb', 16, 1, 6),
(87, 'daksdjb', 16, 1, 6),
(88, 'bdas', 17, 1, 6),
(89, 'dbadb', 17, 1, 6),
(90, 'dajd', 17, 1, 6),
(91, 'asbd', 18, 1, 6),
(92, 'dbadb', 18, 1, 6),
(93, 'dbakl', 18, 1, 6),
(94, 'dajkd', 19, 1, 6),
(95, 'dbasjkd', 19, 1, 6),
(96, 'dbaksjdb', 19, 1, 6),
(97, 'sda', 20, 1, 6),
(98, 'dakjsdb', 20, 1, 6),
(99, 'dasjdb', 20, 1, 6),
(100, 'jdakd', 21, 1, 6),
(101, 'dnakow', 21, 1, 6),
(102, 'ueeu', 21, 1, 6),
(104, 'nfrn', 23, 1, 6),
(105, 'rogjo', 23, 1, 6),
(108, 'mbgb', 23, 1, 6),
(109, 'dankjdn', 22, 1, 6),
(110, 'dflrfkr', 22, 1, 6),
(111, 'mrkfmr', 22, 1, 6),
(112, 'ndkaj', 24, 1, 6),
(113, 'dlj', 24, 1, 6),
(114, 'fnkjfn', 24, 1, 6),
(115, 'nda', 15, 2, 5),
(116, 'djfo', 15, 2, 5),
(117, 'rkmgt', 15, 2, 5),
(118, 'dlakd', 16, 2, 5),
(119, 'drfn', 16, 2, 5),
(120, 'djfn', 16, 2, 5),
(121, 'ndka', 17, 2, 5),
(122, 'fekfm', 17, 2, 5),
(123, 'fnklfn', 17, 2, 5),
(124, 'dnakd', 18, 2, 5),
(125, 'rfrp', 18, 2, 5),
(126, 'fnrkf', 18, 2, 5),
(127, 'dnedn', 19, 2, 5),
(128, 'dled,l', 19, 2, 5),
(129, 'rkmfr', 19, 2, 5),
(130, 'dnakj', 20, 2, 5),
(131, 'dnkend', 20, 2, 5),
(132, 'dnekdne', 20, 2, 5),
(133, 'dnkadn', 21, 2, 5),
(134, 'dnlekd', 21, 2, 5),
(135, 'dmrlkfm', 21, 2, 5),
(136, 'dedn', 22, 2, 5),
(137, 'dkepe', 22, 2, 5),
(138, 'dmef', 22, 2, 5),
(139, 'dejkdnk', 23, 2, 5),
(140, 'dmrlfm', 23, 2, 5),
(141, 'flkfm', 23, 2, 5),
(142, 'ddnek', 24, 2, 5),
(143, 'dmfl', 24, 2, 5),
(144, 'elfme', 24, 2, 5),
(145, 'dknald', 15, 1, 5),
(146, 'nekfjn', 15, 1, 5),
(147, 'dmeldme', 15, 1, 5),
(148, 'dnkedn', 16, 1, 5),
(149, 'dnekdn', 16, 1, 5),
(150, 'dnkfnr', 16, 1, 5),
(151, 'ekd', 17, 1, 5),
(152, 'dnekjfb', 17, 1, 5),
(153, 'fbejkfb', 17, 1, 5),
(154, 'nekd', 18, 1, 5),
(155, 'dnkjd', 18, 1, 5),
(156, 'dnekdn', 18, 1, 5),
(157, 'dednk', 19, 1, 5),
(158, 'dekjdn', 19, 1, 5),
(159, 'dnejkdn', 19, 1, 5),
(160, 'dekdn', 20, 1, 5),
(161, 'dnekjdn', 20, 1, 5),
(162, 'dnejkdn', 20, 1, 5),
(163, 'dmlkad', 21, 1, 5),
(164, 'djfnrkjf', 21, 1, 5),
(165, 'fmnrmf', 21, 1, 5),
(166, 'dejkd', 22, 1, 5),
(167, 'dekfmr', 22, 1, 5),
(168, 'rkfm', 22, 1, 5),
(169, 'dkel', 23, 1, 5),
(170, 'd frkf', 23, 1, 5),
(171, 'nfjrfn', 23, 1, 5),
(172, 'dekd', 24, 1, 5),
(173, 'dmekmd', 24, 1, 5),
(174, 'deod', 24, 1, 5),
(175, 'dnkjdn', 15, 2, 4),
(176, 'dekjnde', 15, 2, 4),
(177, 'ndeknd', 15, 2, 4),
(178, 'dend', 16, 2, 4),
(179, 'ndkjdn', 16, 2, 4),
(180, 'dnekj', 16, 2, 4),
(181, 'dekn', 17, 2, 4),
(182, 'dnek', 17, 2, 4),
(183, 'jd', 17, 2, 4),
(184, 'dekn', 18, 2, 4),
(185, 'dnekjd', 18, 2, 4),
(186, 'dmeldm', 18, 2, 4),
(187, 'dmlekm', 19, 2, 4),
(188, 'dmlkdm', 19, 2, 4),
(189, 'dekdme', 19, 2, 4),
(190, 'dnekjn', 20, 2, 4),
(191, 'dnekjd', 20, 2, 4),
(192, 'dnejk', 20, 2, 4),
(193, 'dejkdn', 21, 2, 4),
(194, 'dnjekdn', 21, 2, 4),
(195, 'dnjnej', 21, 2, 4),
(196, 'dekld', 22, 2, 4),
(197, 'dekdn', 22, 2, 4),
(198, 'dnejkdn', 22, 2, 4),
(199, 'denkdn', 23, 2, 4),
(200, 'dnekjn', 23, 2, 4),
(201, 'ednejnd', 23, 2, 4),
(202, 'djend', 24, 2, 4),
(203, 'dnkedn', 24, 2, 4),
(204, 'dnekjnd', 24, 2, 4),
(205, 'dnkejdn', 15, 1, 4),
(206, 'dnekjdn', 15, 1, 4),
(207, 'dnkejnd', 15, 1, 4),
(208, 'jndej', 16, 1, 4),
(209, 'dnkedn', 16, 1, 4),
(210, 'dnek', 16, 1, 4),
(211, 'dejkdn', 17, 1, 4),
(212, 'dnkejdn', 17, 1, 4),
(213, 'dnekjd', 17, 1, 4),
(214, 'dkend', 18, 1, 4),
(215, 'dnjnedj', 18, 1, 4),
(216, 'dnejdn', 18, 1, 4),
(217, 'kjedn', 19, 1, 4),
(218, 'dnk', 19, 1, 4),
(219, 'dnkn', 19, 1, 4),
(220, 'dnekn', 20, 1, 4),
(221, 'dnekjdn', 20, 1, 4),
(222, 'dnkjend', 20, 1, 4),
(223, 'dmekl', 21, 1, 4),
(224, 'delkdm', 21, 1, 4),
(225, 'dmelkdm', 21, 1, 4),
(226, 'deklm', 22, 1, 4),
(227, 'ldmekmd', 22, 1, 4),
(228, 'mdekmd', 22, 1, 4),
(229, 'dkelmd', 23, 1, 4),
(230, 'dmekldm', 23, 1, 4),
(231, 'mdek', 23, 1, 4),
(232, 'dnekj', 24, 1, 4),
(233, 'dnjkdn', 24, 1, 4),
(234, 'dnekjn', 24, 1, 4),
(235, 'njdka', 15, 2, 3),
(236, 'dnkjnd', 15, 2, 3),
(237, 'dnekjdn', 15, 2, 3),
(238, 'dnekj', 16, 2, 3),
(239, 'dnkej', 16, 2, 3),
(240, 'dnek', 16, 2, 3),
(241, 'dnek', 17, 2, 3),
(242, 'dnekj', 17, 2, 3),
(243, 'dnekjn', 17, 2, 3),
(244, 'dekn', 18, 2, 3),
(245, 'dneldm', 18, 2, 3),
(246, 'dekjdnke', 18, 2, 3),
(247, 'djekdn', 19, 2, 3),
(248, 'dnekjn', 19, 2, 3),
(249, 'dnkjnk', 19, 2, 3),
(250, 'dkldn', 20, 2, 3),
(251, 'ndend', 20, 2, 3),
(252, 'dnejkdn', 20, 2, 3),
(253, 'dekdn', 21, 2, 3),
(254, 'dnjdn', 21, 2, 3),
(255, 'dnekn', 21, 2, 3),
(256, 'dnejk', 22, 2, 3),
(257, 'dnekjnd', 22, 2, 3),
(258, 'ndkejnd', 22, 2, 3),
(259, 'dekdn', 23, 2, 3),
(260, 'dnejk', 23, 2, 3),
(261, 'dnek', 23, 2, 3),
(262, 'dnejkdn', 24, 2, 3),
(263, 'dnken', 24, 2, 3),
(264, 'dnkdn', 24, 2, 3),
(265, 'dnekn', 15, 1, 3),
(266, 'dnek', 15, 1, 3),
(267, 'n', 15, 1, 3),
(268, 'dnejkdn', 16, 1, 3),
(269, 'dn', 16, 1, 3),
(270, 'kndnke', 16, 1, 3),
(271, 'dekdn', 18, 1, 3),
(272, 'dneknd', 18, 1, 3),
(273, 'dnk', 18, 1, 3),
(274, 'kedm', 17, 1, 3),
(275, 'dmkede', 17, 1, 3),
(276, 'pefp', 17, 1, 3),
(277, 'ajdb', 19, 1, 3),
(278, 'dnekdn', 19, 2, 3),
(279, 'dnekjdn', 19, 2, 3),
(280, 'ndjdkn', 19, 1, 3),
(281, 'dnjkedn', 19, 1, 3),
(282, 'dnjkdn', 20, 1, 3),
(283, 'dnekjdne', 20, 1, 3),
(284, 'ndknek', 20, 1, 3),
(285, 'dnkejd', 24, 1, 3),
(286, 'dnknekj', 24, 1, 3),
(287, 'endke', 24, 1, 3),
(288, 'dnekjdn', 21, 1, 3),
(289, 'dnkjdn', 21, 1, 3),
(290, 'dnejkd', 21, 1, 3),
(291, 'dnekjd', 23, 1, 3),
(292, 'dnekjdn', 23, 1, 3),
(293, 'kmde', 23, 1, 3),
(294, 'dnejndkj', 22, 1, 3),
(295, 'dnejnej', 22, 1, 3),
(296, 'dnjdnkej', 22, 1, 3),
(297, 'dnejn', 15, 2, 2),
(298, 'dnejkdn', 15, 2, 2),
(299, 'dnejdn', 15, 2, 2),
(300, 'dend', 16, 2, 2),
(301, 'dnjndke', 16, 2, 2),
(302, 'dnejkdn', 16, 2, 2),
(303, 'dnej', 17, 2, 2),
(304, 'dnejd', 17, 2, 2),
(305, 'dnejd', 17, 2, 2),
(306, 'dejd', 18, 2, 2),
(307, 'dnejkdn', 18, 2, 2),
(308, 'dnekjd', 18, 2, 2),
(309, 'djkdn', 19, 2, 2),
(310, 'ndjdn', 19, 2, 2),
(311, 'ndejdn', 19, 2, 2),
(312, 'dejkdn', 20, 2, 2),
(313, 'deden', 20, 2, 2),
(314, 'dedel', 20, 2, 2),
(315, 'dejkd', 21, 2, 2),
(316, 'dnejkd', 21, 2, 2),
(317, 'dejnd', 21, 2, 2),
(318, 'dejd', 22, 2, 2),
(319, 'ndekjdn', 22, 2, 2),
(320, 'dnekdn', 22, 2, 2),
(321, 'dnjendk', 23, 2, 2),
(322, 'dnkjd', 23, 2, 2),
(323, 'dnked', 23, 2, 2),
(324, 'jednk', 24, 2, 2),
(325, 'dnekd', 24, 2, 2),
(326, 'dnekjdn', 24, 2, 2),
(327, 'ndejk', 15, 1, 2),
(328, 'dnekd', 15, 1, 2),
(329, 'dnekjdn', 15, 1, 2),
(330, 'dnjedn', 16, 1, 2),
(331, 'dnejkd', 16, 1, 2),
(332, 'ffjrif', 16, 1, 2),
(333, 'dnjekdn', 17, 1, 2),
(334, 'dnkedn', 17, 1, 2),
(335, 'dnekjd', 17, 1, 2),
(336, 'dnekjn', 18, 1, 2),
(337, 'dnefnroo', 18, 1, 2),
(338, 'frfbru', 18, 1, 2),
(339, 'dked', 19, 1, 2),
(340, 'dnekdn', 19, 1, 2),
(341, 'ndkj', 19, 1, 2),
(342, 'djkedn', 20, 1, 2),
(343, 'dnekdn', 20, 1, 2),
(344, 'dnekdn', 20, 1, 2),
(345, 'den', 21, 1, 2),
(346, 'dnedn', 21, 1, 2),
(347, 'oekofek', 21, 1, 2),
(348, 'eknd', 22, 1, 2),
(349, 'dnejk', 22, 1, 2),
(350, 'dnejdn', 22, 1, 2),
(351, 'djkdn', 23, 1, 2),
(352, 'dnkedn', 23, 1, 2),
(353, 'dnekdn', 23, 1, 2),
(354, 'end', 24, 1, 2),
(355, 'dnen', 24, 1, 2),
(356, 'dnekdn', 24, 1, 2),
(357, 'dkdnj', 16, 2, 1),
(358, 'dnekjd', 16, 2, 1),
(359, 'dnekjn', 16, 2, 1),
(360, 'nde', 17, 2, 1),
(361, 'luhseuf', 17, 2, 1),
(362, 'hdeudh', 17, 2, 1),
(363, 'dkjadn', 18, 2, 1),
(364, 'dnkjdn', 18, 2, 1),
(365, 'dnjkdn', 18, 2, 1),
(366, 'dndke', 19, 2, 1),
(367, 'dnej', 19, 2, 1),
(368, 'dneknl', 19, 2, 1),
(369, 'dnejkdn', 20, 2, 1),
(370, 'dnekjdn', 20, 2, 1),
(371, 'dnekjdn', 20, 2, 1),
(372, 'dkedn', 21, 2, 1),
(373, 'dnendj', 21, 2, 1),
(374, 'dmlefm', 21, 2, 1),
(378, 'djkedn', 22, 2, 1),
(379, 'dnekjdn', 22, 2, 1),
(380, 'dnekndk', 22, 2, 1),
(381, 'nejkdn', 24, 2, 1),
(382, 'dnekjn', 24, 2, 1),
(383, 'dnekjdn', 24, 2, 1),
(384, 'dnejkn', 23, 2, 1),
(385, 'dnekjdn', 23, 2, 1),
(386, 'ndnej', 23, 2, 1),
(387, 'djkdn', 23, 1, 1),
(388, 'dnekjdn', 23, 1, 1),
(389, 'dnejdn', 23, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ekskul`
--

CREATE TABLE `tb_ekskul` (
  `id_ekskul` int(11) NOT NULL,
  `eks` int(11) NOT NULL,
  `ket` text NOT NULL,
  `siswa` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ekskul`
--

INSERT INTO `tb_ekskul` (`id_ekskul`, `eks`, `ket`, `siswa`, `ta`) VALUES
(9, 3, 'aaa', 16, 1),
(10, 4, 'vv', 16, 2),
(11, 7, 'sda', 16, 3),
(12, 8, 'dasd', 16, 4),
(14, 6, 'fdss', 17, 2),
(15, 4, 'sdd', 17, 3),
(16, 5, 'xasd', 17, 4),
(17, 4, 'dsad', 17, 1),
(18, 6, 'sddasa', 17, 1),
(19, 5, 'ttee', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ekskul_siswa`
--

CREATE TABLE `tb_ekskul_siswa` (
  `id_ekskul_siswa` int(11) NOT NULL,
  `nm_ekskul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ekskul_siswa`
--

INSERT INTO `tb_ekskul_siswa` (`id_ekskul_siswa`, `nm_ekskul`) VALUES
(3, 'Pramuka'),
(4, 'Sepak Bola'),
(5, 'Bola Voli'),
(6, 'Basket'),
(7, 'Badminton'),
(8, 'Tenis Meja');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fisik`
--

CREATE TABLE `tb_fisik` (
  `id_fisik` int(11) NOT NULL,
  `tb_1` int(11) NOT NULL,
  `bb_1` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fisik`
--

INSERT INTO `tb_fisik` (`id_fisik`, `tb_1`, `bb_1`, `siswa`, `ta`) VALUES
(8, 180, 78, 16, 1),
(9, 90, 76, 17, 1),
(10, 89, 88, 17, 2),
(11, 87, 88, 17, 3),
(12, 88, 89, 17, 4),
(13, 87, 76, 16, 2),
(14, 78, 78, 16, 3),
(15, 90, 89, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nm_guru` varchar(30) NOT NULL,
  `nip` varchar(40) NOT NULL,
  `nuptk` varchar(40) NOT NULL,
  `npsp` varchar(40) NOT NULL,
  `gol` varchar(70) NOT NULL,
  `sk_pertama` varchar(20) NOT NULL,
  `sk_uk` varchar(20) NOT NULL,
  `kelas` int(11) NOT NULL,
  `wali_kelas` int(11) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `th_jbkepsek` varchar(20) NOT NULL,
  `stfk_guru` varchar(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `stt_guru` varchar(10) NOT NULL,
  `foto_guru` text NOT NULL,
  `akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nm_guru`, `nip`, `nuptk`, `npsp`, `gol`, `sk_pertama`, `sk_uk`, `kelas`, `wali_kelas`, `jabatan`, `th_jbkepsek`, `stfk_guru`, `no_telp`, `stt_guru`, `foto_guru`, `akun`) VALUES
(1, 'Inah Jariah, S.Pd SD', '19601225 197909 2 001', '3557738639300013', '11156002710163', 'Pembina Tingkat 1 /IV B', '1979-09-01', '2012-07-12', 7, 1, 2, '', 'YA', '0812 5382 8761', 'PNS', 'ci.PNG', 2),
(2, 'Hj. Hasnah, S.Pd', '19620805 198503 2 013', '7137740641300030', '12156022010183', 'Pembina Tingkat 1 /IV B', '1985-03-01', '2014-01-23', 7, 2, 2, '2014-01-23', 'YA', '0852 4840 2630', 'PNS', 'admin.png', 3),
(3, 'Tahmidillah, S.Pd', '19651223 198608 1 003', '1555743647200013', '12156022010082', 'Pembina Tingkat 1 /IV B', '1986-08-01', '2002-05-15', 7, 3, 22, '', 'YA', '0813 4812 6109', 'PNS', 'admin.png', 4),
(4, 'Admin', '', '', '', '', '', '', 7, 0, 2, '', '', '', '', '', 1),
(61, 'Herman, S.Pd.SD', '', '', '', '', '2022-07-22', '2022-07-12', 0, 0, 0, '2022-07-07', 'YA', '', 'PNS', '', 10),
(62, 'Herman, S.Pd.SD', '09998775', '7789090', '0908777', 'A', '2022-07-20', '2022-07-20', 0, 0, 1, '2022-07-13', 'YA', '0851', 'PNS', '', 11),
(63, 'guru4', '00998887', '99090988', '9090909', '909090', '2022-07-23', '2001-06-15', 7, 0, 0, '2022-07-12', 'YA', '0815', 'PNS', '', 12),
(64, 'guru4', '', '', '', '', '', '', 7, 4, 2, '', 'YA', '', 'PNS', '', 13),
(65, 'guru5', '', '', '', '', '', '', 5, 0, 15, '', 'YA', '', 'PNS', '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hari`
--

CREATE TABLE `tb_hari` (
  `id_hari` int(11) NOT NULL,
  `nm_hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hari`
--

INSERT INTO `tb_hari` (`id_hari`, `nm_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum\'at'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id_jadwal`, `jam_mulai`, `jam_selesai`, `hari`, `mapel`, `kelas`, `guru`, `ta`) VALUES
(8, '10:00:00', '10:37:00', 2, 21, 2, 1, 1),
(10, '12:00:00', '13:00:00', 3, 19, 1, 1, 1),
(11, '18:00:00', '19:40:00', 3, 19, 4, 1, 1),
(13, '13:00:00', '15:00:00', 7, 17, 3, 1, 1),
(14, '12:00:00', '13:25:00', 6, 18, 2, 3, 1),
(15, '12:00:00', '13:00:00', 5, 22, 7, 3, 1),
(19, '12:00:00', '10:00:00', 2, 16, 2, 1, 1),
(25, '11:00:00', '11:00:00', 6, 15, 1, 1, 1),
(50, '00:00:00', '12:00:00', 1, 18, 3, 1, 2),
(51, '00:00:00', '00:00:00', 1, 18, 2, 1, 2),
(52, '20:00:00', '21:00:00', 1, 16, 1, 1, 1),
(53, '09:00:00', '10:00:00', 2, 17, 3, 1, 1),
(54, '10:00:00', '10:48:00', 5, 16, 3, 1, 1),
(55, '08:00:00', '10:00:00', 2, 15, 7, 1, 4),
(56, '14:00:00', '00:00:00', 1, 15, 2, 62, 4),
(57, '14:00:00', '00:00:00', 1, 15, 2, 62, 4),
(58, '08:00:00', '10:00:00', 1, 15, 2, 64, 4),
(59, '17:00:00', '18:00:00', 6, 16, 2, 64, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nm_kelas` varchar(20) NOT NULL,
  `huruf_kl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nm_kelas`, `huruf_kl`) VALUES
(1, 'I', '(Satu)'),
(2, 'II', '(Dua)'),
(3, 'III', '(Tiga)'),
(4, 'IV', '(Empat)'),
(5, 'V', '(Lima)'),
(6, 'VI', '(Enam)'),
(7, 'Semua Kelas', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kesehatan`
--

CREATE TABLE `tb_kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `pendengaran` int(11) NOT NULL,
  `penglihatan` int(11) NOT NULL,
  `gigi` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kesehatan`
--

INSERT INTO `tb_kesehatan` (`id_kesehatan`, `pendengaran`, `penglihatan`, `gigi`, `siswa`, `ta`) VALUES
(6, 2, 2, 2, 16, 1),
(7, 1, 2, 3, 17, 1),
(8, 2, 3, 1, 17, 2),
(9, 3, 2, 1, 17, 3),
(10, 2, 2, 3, 17, 4),
(11, 3, 3, 3, 16, 2),
(12, 1, 1, 1, 16, 3),
(13, 2, 1, 3, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kondisi`
--

CREATE TABLE `tb_kondisi` (
  `id_kondisi` int(11) NOT NULL,
  `nm_kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kondisi`
--

INSERT INTO `tb_kondisi` (`id_kondisi`, `nm_kondisi`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Kurang Baik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kr_ki3`
--

CREATE TABLE `tb_kr_ki3` (
  `id_kr_ki3` int(11) NOT NULL,
  `nm_kriteria` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kr_ki3`
--

INSERT INTO `tb_kr_ki3` (`id_kr_ki3`, `nm_kriteria`) VALUES
(1, 'Ketaatan Beribadah'),
(2, 'Berperilaku Syukur'),
(3, 'Berdoa Dalam Kegiatan'),
(4, 'Toleransi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kr_ki4`
--

CREATE TABLE `tb_kr_ki4` (
  `id_kr_ki4` int(11) NOT NULL,
  `nm_kriteria` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kr_ki4`
--

INSERT INTO `tb_kr_ki4` (`id_kr_ki4`, `nm_kriteria`) VALUES
(1, 'Jujur'),
(2, 'Disiplin'),
(3, 'Tanggung Jawab'),
(4, 'Percaya Diri'),
(5, 'Kerja Sama'),
(6, 'Santun');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nm_mapel` varchar(120) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `ki_3` int(11) NOT NULL,
  `ki_4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `nm_mapel`, `kode_mapel`, `ki_3`, `ki_4`) VALUES
(1, 'Kepala Sekolah', '1', 1, 1),
(2, 'Semua Mata Pelajaran', '1', 1, 1),
(15, 'Pendidikan Agama dan Budi Pekerti', 'PA', 70, 70),
(16, 'Pend. Pancasila dan Kewarganegaraan', 'PPKn', 70, 70),
(17, 'Bahasa Indonesia', 'BI', 70, 70),
(18, 'Matematika', 'MTK', 60, 60),
(19, 'Ilmu Pengetahuan Alam', 'IPA', 65, 65),
(20, 'Ilmu Pengetahuan Sosial', 'IPS', 65, 65),
(21, 'Seni Budaya dan Prakarya', 'SBdP', 70, 70),
(22, 'Pend. Jasmani, Olah Raga, dan Kesehatan', 'PJOK', 75, 75),
(23, 'BTA', 'BTA', 70, 70),
(24, 'Bahasa Banjar', 'MULOK', 75, 75);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_ki3`
--

CREATE TABLE `tb_nilai_ki3` (
  `id_nilai_ki3` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `total_na` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_ki3`
--

INSERT INTO `tb_nilai_ki3` (`id_nilai_ki3`, `deskripsi`, `total_na`, `siswa`, `kelas`, `ta`, `mapel`) VALUES
(69, '', 88, 16, 1, 4, 16),
(70, '', 82, 17, 1, 4, 16),
(71, '', 87, 16, 1, 4, 17),
(72, '', 77, 17, 1, 4, 17),
(73, '', 92, 16, 1, 4, 18),
(74, '', 81, 17, 1, 4, 18),
(75, '', 90, 16, 1, 4, 19),
(76, '', 81, 17, 1, 4, 19),
(77, '', 93, 16, 1, 4, 20),
(78, '', 79, 17, 1, 4, 20),
(79, '', 88, 16, 1, 4, 21),
(80, '', 80, 17, 1, 4, 21),
(81, '', 87, 16, 1, 4, 22),
(82, '', 79, 17, 1, 4, 22),
(83, '', 86, 16, 1, 4, 23),
(84, '', 79, 17, 1, 4, 23),
(85, '', 90, 16, 1, 4, 24),
(86, 'Nice', 82, 17, 1, 4, 24),
(98, 'Bagus', 87, 16, 1, 4, 15),
(99, 'Sangat Bagus', 89, 17, 1, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_ki4`
--

CREATE TABLE `tb_nilai_ki4` (
  `id_nilai_ki4` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `total_na` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_ki4`
--

INSERT INTO `tb_nilai_ki4` (`id_nilai_ki4`, `deskripsi`, `total_na`, `siswa`, `kelas`, `ta`, `mapel`) VALUES
(40, '', 87, 16, 1, 4, 16),
(41, '', 78, 17, 1, 4, 16),
(42, '', 89, 16, 1, 4, 17),
(43, '', 82, 17, 1, 4, 17),
(44, '', 91, 16, 1, 4, 18),
(45, '', 79, 17, 1, 4, 18),
(46, '', 89, 16, 1, 4, 19),
(47, '', 82, 17, 1, 4, 19),
(48, '', 90, 16, 1, 4, 20),
(49, '', 81, 17, 1, 4, 20),
(50, '', 91, 16, 1, 4, 21),
(51, '', 78, 17, 1, 4, 21),
(52, '', 90, 16, 1, 4, 22),
(53, '', 78, 17, 1, 4, 22),
(54, '', 90, 16, 1, 4, 23),
(55, '', 79, 17, 1, 4, 23),
(56, '', 89, 16, 1, 4, 24),
(57, '', 77, 17, 1, 4, 24),
(61, '', 31, 34, 6, 4, 15),
(62, '', 0, 35, 6, 4, 15),
(63, '', 0, 36, 6, 4, 15),
(66, '', 83, 16, 1, 4, 15),
(67, '', 88, 17, 1, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nki1`
--

CREATE TABLE `tb_nki1` (
  `id_nki1` int(11) NOT NULL,
  `kriteria` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nki1`
--

INSERT INTO `tb_nki1` (`id_nki1`, `kriteria`, `nilai`, `siswa`, `kelas`, `ta`) VALUES
(161, 1, 2, 16, 1, 3),
(162, 2, 2, 16, 1, 3),
(163, 3, 1, 16, 1, 3),
(164, 4, 3, 16, 1, 3),
(165, 1, 4, 17, 1, 3),
(166, 2, 4, 17, 1, 3),
(167, 3, 2, 17, 1, 3),
(168, 4, 3, 17, 1, 3),
(173, 1, 3, 16, 1, 2),
(174, 2, 3, 16, 1, 2),
(175, 3, 2, 16, 1, 2),
(176, 4, 1, 16, 1, 2),
(177, 1, 4, 17, 1, 2),
(178, 2, 4, 17, 1, 2),
(179, 3, 3, 17, 1, 2),
(180, 4, 1, 17, 1, 2),
(193, 1, 1, 16, 1, 1),
(194, 2, 2, 16, 1, 1),
(195, 3, 2, 16, 1, 1),
(196, 4, 3, 16, 1, 1),
(197, 1, 3, 17, 1, 1),
(198, 2, 4, 17, 1, 1),
(199, 3, 2, 17, 1, 1),
(200, 4, 3, 17, 1, 1),
(201, 1, 3, 16, 1, 4),
(202, 2, 3, 16, 1, 4),
(203, 3, 4, 16, 1, 4),
(204, 4, 4, 16, 1, 4),
(205, 1, 3, 17, 1, 4),
(206, 2, 4, 17, 1, 4),
(207, 3, 1, 17, 1, 4),
(208, 4, 2, 17, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nki2`
--

CREATE TABLE `tb_nki2` (
  `id_nki2` int(11) NOT NULL,
  `kriteria` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nki2`
--

INSERT INTO `tb_nki2` (`id_nki2`, `kriteria`, `nilai`, `siswa`, `kelas`, `ta`) VALUES
(99, 1, 3, 16, 1, 1),
(100, 2, 3, 16, 1, 1),
(101, 3, 3, 16, 1, 1),
(102, 4, 3, 16, 1, 1),
(103, 5, 3, 16, 1, 1),
(104, 6, 3, 16, 1, 1),
(105, 1, 3, 17, 1, 1),
(106, 2, 2, 17, 1, 1),
(107, 3, 2, 17, 1, 1),
(108, 4, 2, 17, 1, 1),
(109, 5, 2, 17, 1, 1),
(110, 6, 2, 17, 1, 1),
(111, 1, 2, 16, 1, 8),
(112, 2, 3, 16, 1, 8),
(113, 3, 2, 16, 1, 8),
(114, 4, 2, 16, 1, 8),
(115, 5, 3, 16, 1, 8),
(116, 6, 2, 16, 1, 8),
(117, 1, 4, 17, 1, 8),
(118, 2, 4, 17, 1, 8),
(119, 3, 2, 17, 1, 8),
(120, 4, 3, 17, 1, 8),
(121, 5, 3, 17, 1, 8),
(122, 6, 4, 17, 1, 8),
(129, 1, 3, 16, 1, 3),
(130, 2, 2, 16, 1, 3),
(131, 3, 1, 16, 1, 3),
(132, 4, 2, 16, 1, 3),
(133, 5, 3, 16, 1, 3),
(134, 6, 3, 16, 1, 3),
(135, 1, 4, 17, 1, 3),
(136, 2, 4, 17, 1, 3),
(137, 3, 3, 17, 1, 3),
(138, 4, 3, 17, 1, 3),
(139, 5, 3, 17, 1, 3),
(140, 6, 3, 17, 1, 3),
(147, 1, 4, 16, 1, 2),
(148, 2, 2, 16, 1, 2),
(149, 3, 3, 16, 1, 2),
(150, 4, 3, 16, 1, 2),
(151, 5, 1, 16, 1, 2),
(152, 6, 1, 16, 1, 2),
(153, 1, 3, 17, 1, 2),
(154, 2, 4, 17, 1, 2),
(155, 3, 3, 17, 1, 2),
(156, 4, 4, 17, 1, 2),
(157, 5, 3, 17, 1, 2),
(158, 6, 4, 17, 1, 2),
(165, 1, 1, 16, 1, 4),
(166, 2, 2, 16, 1, 4),
(167, 3, 1, 16, 1, 4),
(168, 4, 1, 16, 1, 4),
(169, 5, 2, 16, 1, 4),
(170, 6, 2, 16, 1, 4),
(171, 1, 3, 17, 1, 4),
(172, 2, 4, 17, 1, 4),
(173, 3, 3, 17, 1, 4),
(174, 4, 3, 17, 1, 4),
(175, 5, 3, 17, 1, 4),
(176, 6, 2, 17, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nki3`
--

CREATE TABLE `tb_nki3` (
  `id_nki3` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `ph` int(11) NOT NULL,
  `npts` int(11) NOT NULL,
  `npas` int(11) NOT NULL,
  `na_kd` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nki3`
--

INSERT INTO `tb_nki3` (`id_nki3`, `mapel`, `kode`, `ph`, `npts`, `npas`, `na_kd`, `siswa`, `kelas`, `ta`) VALUES
(162, 16, 372, 80, 98, 89, 87, 16, 1, 4),
(163, 16, 373, 85, 89, 90, 87, 16, 1, 4),
(164, 16, 374, 90, 98, 89, 92, 16, 1, 4),
(165, 16, 372, 78, 80, 87, 81, 17, 1, 4),
(166, 16, 373, 78, 87, 80, 81, 17, 1, 4),
(167, 16, 374, 90, 80, 87, 87, 17, 1, 4),
(168, 17, 375, 80, 98, 98, 89, 16, 1, 4),
(169, 17, 376, 90, 87, 78, 86, 16, 1, 4),
(170, 17, 377, 78, 90, 98, 86, 16, 1, 4),
(171, 17, 375, 75, 70, 78, 75, 17, 1, 4),
(172, 17, 376, 90, 85, 60, 81, 17, 1, 4),
(173, 17, 377, 80, 65, 80, 76, 17, 1, 4),
(174, 18, 378, 89, 90, 98, 92, 16, 1, 4),
(175, 18, 379, 89, 95, 99, 93, 16, 1, 4),
(176, 18, 380, 98, 78, 90, 91, 16, 1, 4),
(177, 18, 378, 98, 90, 85, 93, 17, 1, 4),
(178, 18, 379, 78, 78, 70, 76, 17, 1, 4),
(179, 18, 380, 76, 77, 77, 77, 17, 1, 4),
(180, 19, 381, 98, 78, 89, 91, 16, 1, 4),
(181, 19, 382, 89, 96, 80, 89, 16, 1, 4),
(182, 19, 383, 95, 89, 85, 91, 16, 1, 4),
(183, 19, 381, 90, 70, 77, 82, 17, 1, 4),
(184, 19, 382, 78, 70, 75, 75, 17, 1, 4),
(185, 19, 383, 90, 85, 80, 86, 17, 1, 4),
(186, 20, 384, 89, 89, 90, 89, 16, 1, 4),
(187, 20, 385, 90, 98, 99, 94, 16, 1, 4),
(188, 20, 386, 97, 98, 90, 96, 16, 1, 4),
(189, 20, 384, 80, 87, 78, 81, 17, 1, 4),
(190, 20, 385, 78, 77, 70, 76, 17, 1, 4),
(191, 20, 386, 88, 78, 77, 83, 17, 1, 4),
(192, 21, 387, 88, 89, 90, 89, 16, 1, 4),
(193, 21, 388, 98, 88, 87, 93, 16, 1, 4),
(194, 21, 389, 88, 80, 87, 86, 16, 1, 4),
(195, 21, 387, 90, 97, 88, 91, 17, 1, 4),
(196, 21, 388, 77, 70, 76, 75, 17, 1, 4),
(197, 21, 389, 70, 78, 80, 75, 17, 1, 4),
(198, 22, 390, 80, 98, 88, 87, 16, 1, 4),
(199, 22, 391, 89, 90, 98, 92, 16, 1, 4),
(200, 22, 392, 88, 78, 89, 86, 16, 1, 4),
(201, 22, 390, 98, 70, 77, 86, 17, 1, 4),
(202, 22, 391, 77, 70, 87, 78, 17, 1, 4),
(203, 22, 392, 78, 70, 75, 75, 17, 1, 4),
(204, 23, 393, 90, 98, 78, 89, 16, 1, 4),
(205, 23, 394, 88, 80, 98, 89, 16, 1, 4),
(206, 23, 395, 87, 67, 88, 82, 16, 1, 4),
(207, 23, 393, 90, 89, 89, 90, 17, 1, 4),
(208, 23, 394, 70, 76, 77, 73, 17, 1, 4),
(209, 23, 395, 77, 70, 75, 75, 17, 1, 4),
(210, 24, 396, 87, 88, 90, 88, 16, 1, 4),
(211, 24, 397, 90, 98, 88, 92, 16, 1, 4),
(212, 24, 398, 88, 90, 98, 91, 16, 1, 4),
(213, 24, 396, 87, 78, 70, 81, 17, 1, 4),
(214, 24, 397, 88, 77, 70, 81, 17, 1, 4),
(215, 24, 398, 87, 80, 88, 86, 17, 1, 4),
(225, 15, 65, 90, 98, 88, 92, 34, 6, 4),
(226, 15, 66, 90, 0, 0, 45, 34, 6, 4),
(227, 15, 67, 0, 0, 0, 0, 34, 6, 4),
(228, 15, 65, 0, 0, 0, 0, 35, 6, 4),
(229, 15, 66, 0, 0, 0, 0, 35, 6, 4),
(230, 15, 67, 0, 0, 0, 0, 35, 6, 4),
(231, 15, 65, 0, 0, 0, 0, 36, 6, 4),
(232, 15, 66, 0, 0, 0, 0, 36, 6, 4),
(233, 15, 67, 0, 0, 0, 0, 36, 6, 4),
(249, 15, 57, 80, 80, 80, 80, 16, 1, 4),
(250, 15, 58, 90, 90, 90, 90, 16, 1, 4),
(251, 15, 61, 90, 90, 90, 90, 16, 1, 4),
(252, 15, 57, 90, 90, 90, 90, 17, 1, 4),
(253, 15, 58, 87, 87, 87, 87, 17, 1, 4),
(254, 15, 61, 90, 90, 90, 90, 17, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nki4`
--

CREATE TABLE `tb_nki4` (
  `id_nki4` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `ph` int(11) NOT NULL,
  `npts` int(11) NOT NULL,
  `npas` int(11) NOT NULL,
  `na_kd` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nki4`
--

INSERT INTO `tb_nki4` (`id_nki4`, `mapel`, `kode`, `ph`, `npts`, `npas`, `na_kd`, `siswa`, `kelas`, `ta`) VALUES
(122, 16, 357, 98, 80, 85, 90, 16, 1, 4),
(123, 16, 358, 87, 80, 85, 85, 16, 1, 4),
(124, 16, 359, 87, 80, 90, 86, 16, 1, 4),
(125, 16, 357, 98, 66, 70, 83, 17, 1, 4),
(126, 16, 358, 70, 75, 80, 74, 17, 1, 4),
(127, 16, 359, 75, 80, 78, 77, 17, 1, 4),
(128, 17, 360, 90, 89, 97, 92, 16, 1, 4),
(129, 17, 361, 80, 86, 98, 86, 16, 1, 4),
(130, 17, 362, 90, 90, 87, 89, 16, 1, 4),
(131, 17, 360, 80, 78, 80, 80, 17, 1, 4),
(132, 17, 361, 85, 80, 70, 80, 17, 1, 4),
(133, 17, 362, 90, 78, 87, 86, 17, 1, 4),
(134, 18, 363, 98, 87, 87, 93, 16, 1, 4),
(135, 18, 364, 90, 99, 97, 94, 16, 1, 4),
(136, 18, 365, 80, 86, 99, 86, 16, 1, 4),
(137, 18, 363, 98, 70, 77, 86, 17, 1, 4),
(138, 18, 364, 78, 87, 77, 80, 17, 1, 4),
(139, 18, 365, 70, 75, 77, 73, 17, 1, 4),
(140, 19, 366, 80, 86, 98, 86, 16, 1, 4),
(141, 19, 367, 98, 89, 87, 93, 16, 1, 4),
(142, 19, 368, 80, 90, 99, 87, 16, 1, 4),
(143, 19, 366, 98, 70, 77, 86, 17, 1, 4),
(144, 19, 367, 75, 80, 85, 79, 17, 1, 4),
(145, 19, 368, 90, 77, 76, 83, 17, 1, 4),
(146, 20, 369, 90, 98, 89, 92, 16, 1, 4),
(147, 20, 370, 80, 87, 89, 84, 16, 1, 4),
(148, 20, 371, 90, 99, 98, 94, 16, 1, 4),
(149, 20, 369, 80, 89, 87, 84, 17, 1, 4),
(150, 20, 370, 68, 90, 88, 79, 17, 1, 4),
(151, 20, 371, 87, 78, 77, 82, 17, 1, 4),
(152, 21, 372, 89, 90, 98, 92, 16, 1, 4),
(153, 21, 373, 98, 87, 88, 93, 16, 1, 4),
(154, 21, 374, 89, 90, 98, 92, 16, 1, 4),
(155, 21, 372, 89, 60, 98, 84, 17, 1, 4),
(156, 21, 373, 87, 77, 66, 79, 17, 1, 4),
(157, 21, 374, 77, 66, 70, 73, 17, 1, 4),
(158, 22, 378, 90, 98, 89, 92, 16, 1, 4),
(159, 22, 379, 98, 77, 89, 91, 16, 1, 4),
(160, 22, 380, 90, 98, 78, 89, 16, 1, 4),
(161, 22, 378, 80, 89, 78, 82, 17, 1, 4),
(162, 22, 379, 79, 70, 87, 79, 17, 1, 4),
(163, 22, 380, 68, 78, 89, 76, 17, 1, 4),
(164, 23, 384, 80, 89, 98, 87, 16, 1, 4),
(165, 23, 385, 98, 89, 89, 94, 16, 1, 4),
(166, 23, 386, 88, 98, 89, 91, 16, 1, 4),
(167, 23, 384, 80, 87, 88, 84, 17, 1, 4),
(168, 23, 385, 77, 70, 75, 75, 17, 1, 4),
(169, 23, 386, 76, 79, 88, 80, 17, 1, 4),
(170, 24, 381, 98, 89, 80, 91, 16, 1, 4),
(171, 24, 382, 78, 89, 88, 83, 16, 1, 4),
(172, 24, 383, 98, 88, 88, 93, 16, 1, 4),
(173, 24, 381, 88, 78, 70, 81, 17, 1, 4),
(174, 24, 382, 75, 76, 70, 74, 17, 1, 4),
(175, 24, 383, 77, 79, 78, 78, 17, 1, 4),
(185, 15, 49, 90, 90, 99, 92, 34, 6, 4),
(186, 15, 50, 0, 0, 0, 0, 34, 6, 4),
(187, 15, 51, 0, 0, 0, 0, 34, 6, 4),
(188, 15, 49, 0, 0, 0, 0, 35, 6, 4),
(189, 15, 50, 0, 0, 0, 0, 35, 6, 4),
(190, 15, 51, 0, 0, 0, 0, 35, 6, 4),
(191, 15, 49, 0, 0, 0, 0, 36, 6, 4),
(192, 15, 50, 0, 0, 0, 0, 36, 6, 4),
(193, 15, 51, 0, 0, 0, 0, 36, 6, 4),
(200, 15, 46, 80, 80, 80, 80, 16, 1, 4),
(201, 15, 47, 80, 80, 80, 80, 16, 1, 4),
(202, 15, 48, 90, 90, 90, 90, 16, 1, 4),
(203, 15, 46, 90, 90, 90, 90, 17, 1, 4),
(204, 15, 47, 77, 90, 90, 84, 17, 1, 4),
(205, 15, 48, 90, 90, 90, 90, 17, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `id_ortu` int(11) NOT NULL,
  `nm_ayah` varchar(100) NOT NULL,
  `pdd_ayah` varchar(100) NOT NULL,
  `pj_ayah` varchar(100) NOT NULL,
  `nik_ayah` varchar(40) NOT NULL,
  `nm_ibu` varchar(100) NOT NULL,
  `pdd_ibu` varchar(100) NOT NULL,
  `pj_ibu` varchar(100) NOT NULL,
  `nik_ibu` varchar(40) NOT NULL,
  `nm_wali` varchar(100) NOT NULL,
  `pdd_wali` varchar(100) NOT NULL,
  `pj_wali` varchar(100) NOT NULL,
  `nik_wali` varchar(40) NOT NULL,
  `siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ortu`
--

INSERT INTO `tb_ortu` (`id_ortu`, `nm_ayah`, `pdd_ayah`, `pj_ayah`, `nik_ayah`, `nm_ibu`, `pdd_ibu`, `pj_ibu`, `nik_ibu`, `nm_wali`, `pdd_wali`, `pj_wali`, `nik_wali`, `siswa`) VALUES
(26, 'Ayah Siswa 1A', '3', '-', '-', 'Ibu Siswa 1B', '2', '-', '-', 'Wali Siswa 1B', '2', '-', '-', 16),
(27, 'Ayah Siswa 1B', '1', '-', '-', 'Ibu Siswa 1B', '2', '-', '-', 'Wali Siswa 1B', '3', '-', '-', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendidikan`
--

CREATE TABLE `tb_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `nm_pendidikan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pendidikan`
--

INSERT INTO `tb_pendidikan` (`id_pendidikan`, `nm_pendidikan`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA'),
(4, 'D3'),
(5, 'S1'),
(6, 'S2'),
(7, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi`
--

CREATE TABLE `tb_prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `jp` varchar(60) NOT NULL,
  `pres` varchar(90) NOT NULL,
  `siswa` int(11) NOT NULL,
  `ta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prestasi`
--

INSERT INTO `tb_prestasi` (`id_prestasi`, `jp`, `pres`, `siswa`, `ta`) VALUES
(5, 'asd', 'das', 16, 4),
(6, 'dasd', 'dad', 16, 3),
(7, 'sdas', 'dasd', 16, 2),
(8, 'dsad', 'dasd', 16, 1),
(9, 'dsad', 'd', 17, 4),
(10, 'a', 'ds', 17, 3),
(11, 'asd', 'dasd', 17, 4),
(12, 'sda', 'dads', 17, 2),
(13, 'dasd', 'dasd', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sklh` varchar(30) NOT NULL,
  `ns_sklh` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `kode_pos` varchar(11) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `website` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `akreditasi` varchar(2) NOT NULL,
  `kepsek` int(11) NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id_sekolah`, `nama_sklh`, `ns_sklh`, `alamat`, `telp`, `kode_pos`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `website`, `email`, `akreditasi`, `kepsek`, `logo`) VALUES
(1, 'SDN JEJANGKIT PASAR', 'RQCC+J2J', 'Jl.Pendidikan No.12', '(021) 998877', '70581', 'Jejangkit Pasar', 'Jejangkit', 'Barito Kuala', 'Kalimantan Selatan', 'jjkt.com', 'sdnjejangkitpasar@gmail.com', 'B', 62, 'logo-kalsel1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sikap_ki1`
--

CREATE TABLE `tb_sikap_ki1` (
  `id_sikap_ki1` int(11) NOT NULL,
  `predikat` varchar(5) NOT NULL,
  `desk` text NOT NULL,
  `ta` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sikap_ki1`
--

INSERT INTO `tb_sikap_ki1` (`id_sikap_ki1`, `predikat`, `desk`, `ta`, `siswa`, `kelas`) VALUES
(44, 'B', '', 3, 16, 1),
(45, 'SB', '', 3, 17, 1),
(47, 'B', '', 2, 16, 1),
(48, 'SB', '', 2, 17, 1),
(52, 'B', '', 1, 16, 1),
(53, 'SB', '', 1, 17, 1),
(54, 'SB', 'Sangat Baik', 4, 16, 1),
(55, 'B', 'Baik', 4, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sikap_ki2`
--

CREATE TABLE `tb_sikap_ki2` (
  `id_sikap_ki2` int(11) NOT NULL,
  `predikat` varchar(5) NOT NULL,
  `desk` text NOT NULL,
  `ta` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sikap_ki2`
--

INSERT INTO `tb_sikap_ki2` (`id_sikap_ki2`, `predikat`, `desk`, `ta`, `siswa`, `kelas`) VALUES
(16, 'SB', '', 1, 16, 1),
(17, 'B', '', 1, 17, 1),
(18, 'B', 'Baik', 8, 16, 1),
(19, 'SB', 'Sangat Baik', 8, 17, 1),
(21, 'B', '', 3, 16, 1),
(22, 'SB', '', 3, 17, 1),
(24, 'B', '', 2, 16, 1),
(25, 'SB', '', 2, 17, 1),
(27, 'K', 'Kurang', 4, 16, 1),
(28, 'SB', 'Sangat Baik', 4, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(40) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nm_siswa` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jalan` text NOT NULL,
  `kel` text NOT NULL,
  `kec` text NOT NULL,
  `kab` text NOT NULL,
  `prov` text NOT NULL,
  `pdd_sb` varchar(30) NOT NULL,
  `kelas` int(11) NOT NULL,
  `foto_siswa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nisn`, `nm_siswa`, `jk`, `agama`, `tempat`, `tanggal_lahir`, `jalan`, `kel`, `kec`, `kab`, `prov`, `pdd_sb`, `kelas`, `foto_siswa`) VALUES
(16, '12345', '123456', 'Siswa 1A', 'L', 'Islam', 'Jejangkit', '2008-02-20', 'Jalan A', 'Keluarahan A', 'Jejangkit', 'Jejangkit', 'Kalimantan Selatan', '', 1, ''),
(17, '21345', '213456', 'Siswa 1B', 'L', 'Islam', 'Jejangkit', '2022-07-07', 'Jalan B', 'Kelurahan B', 'Jejangkit', 'Jejangkit', 'Kalimantan Selatan', '', 1, ''),
(18, '09287', '92826', 'Siswa 2A', 'L', 'Islam', 'Jejangkit', '2001-11-11', 'Jalan A', 'Kelurahan A', 'Jejangkit', 'Jejangkit', 'Kalimantan Selatan', '', 2, ''),
(19, '38374', '92838', 'Siswa 2B', 'P', 'Islam', 'Jejangkit', '1998-12-22', 'Jalan B', 'Kelurahan ', 'Jejangkit', 'Jejangkit', 'Kalimantan Selatan', '', 2, ''),
(20, '', '', 'Siswa 3A', 'L', 'Islam', '', '2022-07-15', '', '', '', '', '', '', 3, ''),
(21, '', '', 'Siswa 3B', 'P', '', '', '2022-07-16', '', '', '', '', '', '', 3, ''),
(27, '', '', 'Siswa 3C', 'P', '', '', '2022-07-21', '', '', '', '', '', '', 3, ''),
(28, '', '', 'Siswa 4A', 'L', '', '', '2022-07-07', '', '', '', '', '', '', 4, ''),
(29, '', '', 'Siswa 4B', 'P', '', '', '2022-07-07', '', '', '', '', '', '', 4, ''),
(30, '', '', 'Siswa 4C', 'P', '', '', '2022-07-12', '', '', '', '', '', '', 4, ''),
(31, '', '', 'Siswa 5A', 'P', '', '', '0000-00-00', '', '', '', '', '', '', 5, ''),
(32, '', '', 'Siswa 5B', 'L', '', '', '0000-00-00', '', '', '', '', '', '', 5, ''),
(33, '', '', 'Siswa 5C', 'L', '', '', '0000-00-00', '', '', '', '', '', '', 5, ''),
(34, '', '', 'Siswa 6A', 'L', '', '', '0000-00-00', '', '', '', '', '', '', 6, ''),
(35, '', '', 'Siswa 6B', 'P', '', '', '0000-00-00', '', '', '', '', '', '', 6, ''),
(36, '', '', 'Siswa 6C', 'P', '', '', '0000-00-00', '', '', '', '', '', '', 6, ''),
(37, '', '', 'Siswa 1D', 'P', '', '', '2022-07-08', '', '', '', '', '', '', 7, ''),
(38, '', '', 'Siswa 2D', 'L', '', '', '2022-07-14', '', '', '', '', '', '', 7, ''),
(39, '', '', 'Siswa 3D', 'P', '', '', '2022-07-08', '', '', '', '', '', '', 7, ''),
(40, '', '', 'Siswa 4D', 'L', '', '', '2022-07-06', '', '', '', '', '', '', 7, ''),
(41, '', '', 'Siswa 5D', 'P', '', '', '0000-00-00', '', '', '', '', '', '', 7, ''),
(42, '', '', 'Siswa 6D', 'P', '', '', '2022-07-07', '', '', '', '', '', '', 7, ''),
(45, '', '', 'sadas', 'P', '', '', '0000-00-00', '', '', '', '', '', '', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_smt`
--

CREATE TABLE `tb_smt` (
  `id_smt` int(11) NOT NULL,
  `nm_smt` int(11) NOT NULL,
  `stt_smt` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_smt`
--

INSERT INTO `tb_smt` (`id_smt`, `nm_smt`, `stt_smt`) VALUES
(1, 1, 'Y'),
(2, 2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahunajaran`
--

CREATE TABLE `tb_tahunajaran` (
  `id_tahunajaran` int(11) NOT NULL,
  `nm_tahunajaran` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `smt` int(11) NOT NULL,
  `stt_tahunajaran` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tahunajaran`
--

INSERT INTO `tb_tahunajaran` (`id_tahunajaran`, `nm_tahunajaran`, `tahun`, `smt`, `stt_tahunajaran`) VALUES
(1, '2020/2021 - Ganjil', 2020, 1, 'N'),
(2, '2020/2021 - Genap', 2021, 2, 'N'),
(3, '2021/2022 - Ganjil', 2021, 1, 'N'),
(4, '2021/2022 - Genap', 2022, 2, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_wk` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `tahun_pj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ab`
--
ALTER TABLE `tb_ab`
  ADD PRIMARY KEY (`id_ab`);

--
-- Indexes for table `tb_abguru`
--
ALTER TABLE `tb_abguru`
  ADD PRIMARY KEY (`id_abguru`),
  ADD KEY `ab` (`ab`),
  ADD KEY `guru` (`guru`),
  ADD KEY `ta` (`ta`),
  ADD KEY `smt` (`smt`);

--
-- Indexes for table `tb_absiswa`
--
ALTER TABLE `tb_absiswa`
  ADD PRIMARY KEY (`id_absiswa`),
  ADD KEY `ab` (`ab`),
  ADD KEY `siswa` (`siswa`),
  ADD KEY `ta` (`ta`);

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tb_desk_ki3`
--
ALTER TABLE `tb_desk_ki3`
  ADD PRIMARY KEY (`id_desk_ki3`);

--
-- Indexes for table `tb_desk_ki4`
--
ALTER TABLE `tb_desk_ki4`
  ADD PRIMARY KEY (`id_desk_ki4`);

--
-- Indexes for table `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  ADD PRIMARY KEY (`id_ekskul`),
  ADD KEY `siswa` (`siswa`),
  ADD KEY `ta` (`ta`);

--
-- Indexes for table `tb_ekskul_siswa`
--
ALTER TABLE `tb_ekskul_siswa`
  ADD PRIMARY KEY (`id_ekskul_siswa`);

--
-- Indexes for table `tb_fisik`
--
ALTER TABLE `tb_fisik`
  ADD PRIMARY KEY (`id_fisik`),
  ADD KEY `siswa` (`siswa`),
  ADD KEY `ta` (`ta`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `akun` (`akun`);

--
-- Indexes for table `tb_hari`
--
ALTER TABLE `tb_hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `hari` (`hari`),
  ADD KEY `mape;` (`mapel`),
  ADD KEY `kelas` (`kelas`),
  ADD KEY `guru` (`guru`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_kondisi`
--
ALTER TABLE `tb_kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indexes for table `tb_kr_ki3`
--
ALTER TABLE `tb_kr_ki3`
  ADD PRIMARY KEY (`id_kr_ki3`);

--
-- Indexes for table `tb_kr_ki4`
--
ALTER TABLE `tb_kr_ki4`
  ADD PRIMARY KEY (`id_kr_ki4`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_nilai_ki3`
--
ALTER TABLE `tb_nilai_ki3`
  ADD PRIMARY KEY (`id_nilai_ki3`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_nilai_ki4`
--
ALTER TABLE `tb_nilai_ki4`
  ADD PRIMARY KEY (`id_nilai_ki4`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_nki1`
--
ALTER TABLE `tb_nki1`
  ADD PRIMARY KEY (`id_nki1`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_nki2`
--
ALTER TABLE `tb_nki2`
  ADD PRIMARY KEY (`id_nki2`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_nki3`
--
ALTER TABLE `tb_nki3`
  ADD PRIMARY KEY (`id_nki3`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_nki4`
--
ALTER TABLE `tb_nki4`
  ADD PRIMARY KEY (`id_nki4`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`id_ortu`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tb_prestasi`
--
ALTER TABLE `tb_prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `siswa` (`siswa`),
  ADD KEY `ta` (`ta`);

--
-- Indexes for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD KEY `kepsek` (`kepsek`);

--
-- Indexes for table `tb_sikap_ki1`
--
ALTER TABLE `tb_sikap_ki1`
  ADD PRIMARY KEY (`id_sikap_ki1`),
  ADD KEY `ta` (`ta`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_sikap_ki2`
--
ALTER TABLE `tb_sikap_ki2`
  ADD PRIMARY KEY (`id_sikap_ki2`),
  ADD KEY `ta` (`ta`),
  ADD KEY `siswa` (`siswa`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_smt`
--
ALTER TABLE `tb_smt`
  ADD PRIMARY KEY (`id_smt`);

--
-- Indexes for table `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  ADD PRIMARY KEY (`id_tahunajaran`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_wk`),
  ADD KEY `guru` (`guru`),
  ADD KEY `kelas` (`kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ab`
--
ALTER TABLE `tb_ab`
  MODIFY `id_ab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_abguru`
--
ALTER TABLE `tb_abguru`
  MODIFY `id_abguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_absiswa`
--
ALTER TABLE `tb_absiswa`
  MODIFY `id_absiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_desk_ki3`
--
ALTER TABLE `tb_desk_ki3`
  MODIFY `id_desk_ki3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `tb_desk_ki4`
--
ALTER TABLE `tb_desk_ki4`
  MODIFY `id_desk_ki4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_ekskul_siswa`
--
ALTER TABLE `tb_ekskul_siswa`
  MODIFY `id_ekskul_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_fisik`
--
ALTER TABLE `tb_fisik`
  MODIFY `id_fisik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tb_hari`
--
ALTER TABLE `tb_hari`
  MODIFY `id_hari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_kondisi`
--
ALTER TABLE `tb_kondisi`
  MODIFY `id_kondisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kr_ki3`
--
ALTER TABLE `tb_kr_ki3`
  MODIFY `id_kr_ki3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kr_ki4`
--
ALTER TABLE `tb_kr_ki4`
  MODIFY `id_kr_ki4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_nilai_ki3`
--
ALTER TABLE `tb_nilai_ki3`
  MODIFY `id_nilai_ki3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tb_nilai_ki4`
--
ALTER TABLE `tb_nilai_ki4`
  MODIFY `id_nilai_ki4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tb_nki1`
--
ALTER TABLE `tb_nki1`
  MODIFY `id_nki1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `tb_nki2`
--
ALTER TABLE `tb_nki2`
  MODIFY `id_nki2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `tb_nki3`
--
ALTER TABLE `tb_nki3`
  MODIFY `id_nki3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `tb_nki4`
--
ALTER TABLE `tb_nki4`
  MODIFY `id_nki4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `id_ortu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_prestasi`
--
ALTER TABLE `tb_prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_sikap_ki1`
--
ALTER TABLE `tb_sikap_ki1`
  MODIFY `id_sikap_ki1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_sikap_ki2`
--
ALTER TABLE `tb_sikap_ki2`
  MODIFY `id_sikap_ki2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_smt`
--
ALTER TABLE `tb_smt`
  MODIFY `id_smt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  MODIFY `id_tahunajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_wk` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_abguru`
--
ALTER TABLE `tb_abguru`
  ADD CONSTRAINT `tb_abguru_ibfk_1` FOREIGN KEY (`ab`) REFERENCES `tb_ab` (`id_ab`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_abguru_ibfk_2` FOREIGN KEY (`guru`) REFERENCES `tb_abguru` (`id_abguru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_absiswa`
--
ALTER TABLE `tb_absiswa`
  ADD CONSTRAINT `tb_absiswa_ibfk_1` FOREIGN KEY (`ab`) REFERENCES `tb_ab` (`id_ab`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_absiswa_ibfk_2` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  ADD CONSTRAINT `tb_ekskul_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_fisik`
--
ALTER TABLE `tb_fisik`
  ADD CONSTRAINT `tb_fisik_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD CONSTRAINT `tb_guru_ibfk_1` FOREIGN KEY (`akun`) REFERENCES `tb_akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`hari`) REFERENCES `tb_hari` (`id_hari`),
  ADD CONSTRAINT `tb_jadwal_ibfk_2` FOREIGN KEY (`mapel`) REFERENCES `tb_mapel` (`id_mapel`),
  ADD CONSTRAINT `tb_jadwal_ibfk_3` FOREIGN KEY (`kelas`) REFERENCES `tb_kelas` (`id_kelas`),
  ADD CONSTRAINT `tb_jadwal_ibfk_4` FOREIGN KEY (`guru`) REFERENCES `tb_guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_kesehatan`
--
ALTER TABLE `tb_kesehatan`
  ADD CONSTRAINT `tb_kesehatan_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nilai_ki3`
--
ALTER TABLE `tb_nilai_ki3`
  ADD CONSTRAINT `tb_nilai_ki3_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nilai_ki4`
--
ALTER TABLE `tb_nilai_ki4`
  ADD CONSTRAINT `tb_nilai_ki4_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nki1`
--
ALTER TABLE `tb_nki1`
  ADD CONSTRAINT `tb_nki1_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nki2`
--
ALTER TABLE `tb_nki2`
  ADD CONSTRAINT `tb_nki2_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nki3`
--
ALTER TABLE `tb_nki3`
  ADD CONSTRAINT `tb_nki3_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_nki4`
--
ALTER TABLE `tb_nki4`
  ADD CONSTRAINT `tb_nki4_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD CONSTRAINT `tb_ortu_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_prestasi`
--
ALTER TABLE `tb_prestasi`
  ADD CONSTRAINT `tb_prestasi_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD CONSTRAINT `tb_sekolah_ibfk_1` FOREIGN KEY (`kepsek`) REFERENCES `tb_guru` (`id_guru`);

--
-- Constraints for table `tb_sikap_ki1`
--
ALTER TABLE `tb_sikap_ki1`
  ADD CONSTRAINT `tb_sikap_ki1_ibfk_4` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sikap_ki2`
--
ALTER TABLE `tb_sikap_ki2`
  ADD CONSTRAINT `tb_sikap_ki2_ibfk_4` FOREIGN KEY (`siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD CONSTRAINT `tb_walikelas_ibfk_1` FOREIGN KEY (`guru`) REFERENCES `tb_guru` (`id_guru`),
  ADD CONSTRAINT `tb_walikelas_ibfk_2` FOREIGN KEY (`kelas`) REFERENCES `tb_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
