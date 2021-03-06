-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 29. Mei 2012 jam 17:15
-- Versi Server: 5.5.8
-- Versi PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sisfoft`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `default_lecture`
--

CREATE TABLE IF NOT EXISTS `default_lecture` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nip` varchar(55) NOT NULL,
  `name` varchar(75) NOT NULL,
  `major` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

--
-- Dumping data untuk tabel `default_lecture`
--

INSERT INTO `default_lecture` (`id`, `nip`, `name`, `major`) VALUES
(1, '19470101 197412 1 001', 'Prof. Drs. Djemari Mardapi, M.Pd,. ', 'PEND. TEKNIK ELEKTRO'),
(2, '19530603 197703 1 003', 'Subiyono, MP', 'PEND. TEKNIK ELEKTRO MESIN'),
(3, '19500202 197803 1 004', 'Pangat, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(4, '19491125 197603 1 001', 'Imam Muchoyar, M.Pd', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(5, '130530835', 'Abdurrohman, ST', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(6, '19530312 197803 1 001', 'Tawardjono Us, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(7, '19610808 198601 1 001', 'Dr. Amat Jaedun M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(8, '19530901 197603 1 006', 'Sutarto, Ph.D.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(9, '19510702 197803 2 001', 'Widjiningsih, M.Pd', 'PEND. TEKNIK BOGA BUSANA'),
(10, '19510506 197803 1 001', 'Moh. Jamin, M.T.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(11, '19520801 197803 1 004', 'Manap, MT.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(12, '19470225 197303 1 001', 'Prof. Sukamto, Ph.D.', 'PEND. TEKNIK ELEKTRO MESIN'),
(13, '19460101 197303 1 001', 'Achmad Tasliman, M.Ed.', 'PEND. TEKNIK OTOMOTIF'),
(14, '19511101 197503 1 004', 'Noto Widodo, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(15, '19490805 197803 2 001', 'Purwati Tjahyaningsih, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(16, '19461104 197503 1 001', 'Achmad Fatchi, M.Pd', 'PEND. TEKNIK ELEKTRONIKA'),
(17, '19520705 197703 1 002', 'Drs. Nurdjito', 'PEND. TEKNIK ELEKTRO MESIN'),
(18, '19470815 197603 1 001', 'Achmad Faozan Alfi, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(19, '130367415', 'Sirod Hantoro MSIE', 'PEND. TEKNIK ELEKTRO MESIN'),
(20, '19520913 197710 1 001', 'Suyanto, M.Pd,. MT.', 'PEND. TEKNIK ELEKTRO MESIN'),
(21, '19530721 197710 1 001', 'Faham, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(22, '19520314 197603 1 002', 'Dr. Moch. Alip', 'PEND. TEKNIK ELEKTRO MESIN'),
(23, '19531125 197803 1 002', 'Dr. Thomas Sukardi, M.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(24, '19540810 197803 1 001', 'Wardan Suyanto, MA, Ed.D.', 'PEND. TEKNIK OTOMOTIF'),
(25, '19530725 197811 1 001', 'Dr. Kartowagiran, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(26, '19491231 197803 1 004', 'H. Suparman, M.Pd', 'PEND. TEKNIK ELEKTRONIKA'),
(27, '19530121 197603 1 004', 'Dr. H.  Sukoco', 'PEND. TEKNIK OTOMOTIF'),
(28, '19530902 197811 1 001', 'Prof. Pardjono, Ph.D', 'PEND. TEKNIK ELEKTRO MESIN'),
(29, '19500809 197803 1 001', 'Prof. Dr. Husaini Usman, M.Pd,. MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(30, '19530820 197903 2 001', 'Dr. Siti Hamidah, MPd.', 'PEND. TEKNIK BOGA BUSANA'),
(31, '19530825 197903 1 003', 'Dr. Soeharto, MSOE', 'PEND. TEKNIK ELEKTRO'),
(32, '19480804 197412 1 001', 'Prof. Soenarto, MA,. M.Sc,. Ph.D', 'PEND. TEKNIK ELEKTRONIKA'),
(33, '19540809 197803 1 005', 'Prof. Dr. Herminarto Sofyan, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(34, '19530519 197811 1 001', 'Prof. Sukardi, Ph.D.', 'PEND. TEKNIK ELEKTRO MESIN'),
(35, '19550715 198003 1 006', 'Suparman, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(36, '19521109 197803 1 003', 'Sunyoto, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(37, '19500119 197803 1 001', 'Sunaryo, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(38, '19530623 197803 1 002', 'Setya Utama, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(39, '19530310 197803 1 003', 'Dr. Sudji Munadi', 'PEND. TEKNIK ELEKTRO MESIN'),
(40, '19531205 197803 1 002', 'Pusoko Prapto, MT.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(41, '19531214 197811 1 001', 'Prof. Dr. Sugiyono', 'PEND. TEKNIK ELEKTRO MESIN'),
(42, '19540327 197803 1 003', 'Setya Hadi, M.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(43, '19510121 197803 1 001', 'Pradoto, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(44, '19530212 197903 1 003', 'Bada Haryadi, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(45, '19520722 197803 1 002', 'Nuchron, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(46, '19520814 197903 1 003', 'Suyitno Hadi Putro, M.T.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(47, '19520210 197803 1 003', 'Bambang Sutjiroso, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(48, '19511212 197803 1 004', 'Sudiyono, M.Sc.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(49, '19530312 197811 1 001', 'Soeprapto Racmad Said, M.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(50, '19501120 197903 2 001', 'Prapti Karomah, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(51, '19500313 197603 2 001', 'Sri Wisdiati, M.Pd', 'PEND. TEKNIK BOGA BUSANA'),
(52, '19540221 198502 1 001', 'Sudiyanto, M.Pd', 'PEND. TEKNIK OTOMOTIF'),
(53, '19561128 198601 1 001', 'Sunomo, MT', 'PEND. TEKNIK ELEKTRO'),
(54, '19560217 198203 1 003', 'Agus Budiman, M.Pd,. MT.', 'PEND. TEKNIK OTOMOTIF'),
(55, '19600808 198403 2 002', 'Kokom Komariah, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(56, '19570608 198303 2 002', 'Dr. Sri Wening', 'PEND. TEKNIK BOGA BUSANA'),
(57, '19570313 198303 2 001', 'Marwanti, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(58, '19570217 198303 1 002', 'Lilik Chaerul Yuswono, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(59, '19540306 197903 1 006', 'Imam Mustholiq Mussama, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(60, '19640205 198703 1 001', 'Herman Dwi Surjono, Ph.D.', 'PEND. TEKNIK ELEKTRONIKA'),
(61, '19481112 197703 1 001', 'Prof. Slamet PH, MA,. MED,. MA,.MLH', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(62, '19610429 198803 1 002', 'Ir. Sunar Rochmadi, MES.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(63, '19611217 198601 1 001', 'V. Lilik Hariyanto, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(64, '19601228 198601 1 001', 'Kir Haryana, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(65, '19620215 198601 1 002', 'Dr. Dwi Rahdiyanta, MPd', 'PEND. TEKNIK ELEKTRO MESIN'),
(66, '19540206 198203 2 001', 'Yuriani, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(67, '19640822 198812 1 002', 'Agus Santoso, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(68, '19610911 199001 1 001', 'Ketut Ima Ismara, M.Pd,. M.Kes', 'PEND. TEKNIK ELEKTRO'),
(69, '19640805 199101 1 001', 'Darmono, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(70, '19491117 197803 1 001', 'Drs. Mulian Jamin Alwi', 'PEND. TEKNIK ELEKTRO'),
(71, '19530528 197903 1 003', 'Lutjito, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(72, '19471023 197803 1 001', 'Sardjiman Dojopernoto', 'PEND. TEKNIK ELEKTRO'),
(73, '19510303 197803 1 004', 'Slamet, M.Pd', 'PEND. TEKNIK ELEKTRONIKA'),
(74, '19510419 197903 1 001', 'Drs. Ahmad Sujadi', 'PEND. TEKNIK ELEKTRO'),
(75, '130686640', 'Drs. Abdul Halim Sunawi', 'PEND. TEKNIK ELEKTRONIKA'),
(76, '19530518 197803 1 001', 'Asnawi, M.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(77, '19501009 197903 1 001', 'Basrowi, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(78, '19570414 198303 1 003', 'Sumarjo H, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(79, '19540224 198203 2 002', 'Yuswati, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(80, '19600529 198403 1 003', 'Dr. Samsul Hadi, M.Pd,. MT', 'PEND. TEKNIK ELEKTRO'),
(81, '19520703 198403 1 002', 'Dr. J. Effendie Tanumiharja, SU.', 'PEND. TEKNIK ELEKTRO MESIN'),
(82, '19580422 198403 1 002', 'Djoko Santoso, M.Pd', 'PEND. TEKNIK ELEKTRONIKA'),
(83, '19590830 198502 1 001', 'Agus Partawibawa, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(84, '19570906 198502 1 001', 'Martubi, M.Pd,. MT', 'PEND. TEKNIK OTOMOTIF'),
(85, '19580727 198503 2 002', 'Dra. Nanie Asri Yuliati', 'PEND. TEKNIK BOGA BUSANA'),
(86, '19620625 198503 1 002', 'Priyanto, M.Kom', 'PEND. TEKNIK ELEKTRONIKA'),
(87, '19581217 198503 1 002', 'Sukaswanto, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(88, '19600427 198503 2 001', 'Enny Zuhni Khayati, M.Kes.', 'PEND. TEKNIK BOGA BUSANA'),
(89, '19590724 198502 1 001', 'Dr. Budi Tri Siswanto, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(90, '19580525 198601 1 001', 'Putut Hargiyarto, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(91, '19530322 198601 1 001', 'Ir. Surahmad Mursidi', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(92, '19580630 198601 1 001', 'Dr. Sunaryo Soenarto, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(93, '19620310 198601 1 001', 'Dr. Haryanto, M.Pd., M.T.', 'PEND. TEKNIK ELEKTRO'),
(94, '19530217 1986 01 1 001', 'Ir. Bambang Sugestiyadi, M.T.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(95, '19600825 198601 1 001', 'Pramudi Utomo, M.Si', 'PEND. TEKNIK ELEKTRONIKA'),
(96, '19600625 198601 2 001', 'Badraningsih L, M.Kes.', 'PEND. TEKNIK BOGA BUSANA'),
(97, '19610916 198609 1 001', 'Slamet Karyono, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(98, '19600505 198702 1 001', 'Drs. Kadarisman Tejo Yuwono', 'PEND. TEKNIK ELEKTRONIKA'),
(99, '19581231 198702 1 001', 'Drs. Nyoman Astra', 'PEND. TEKNIK ELEKTRO'),
(100, '19641231 198702 1 063', 'Dr. Putu Sudira, MP', 'PEND. TEKNIK ELEKTRONIKA'),
(101, '19610622 198702 2 001', 'Sri Widarwati, M.Pd', 'PEND. TEKNIK BOGA BUSANA'),
(102, '19611015 198702 2 001', 'Widyabakti Sabatari, M.Sn', 'PEND. TEKNIK BOGA BUSANA'),
(103, '19620503 198702 2 001', 'Sri Emy Yuli Suprihatin, M.Si', 'PEND. TEKNIK BOGA BUSANA'),
(104, '19580505 198702 2 001', 'Dra. Zahida Ideawati', 'PEND. TEKNIK BOGA BUSANA'),
(105, '19601115 198702 2 001', 'Dra. Endang Bariqina', 'PEND. TEKNIK BOGA BUSANA'),
(106, '19611003 198703 1 002', 'Dr. Edy Supriyadi, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(107, '19621125 198702 1 001', 'Sukir, MT', 'PEND. TEKNIK ELEKTRO'),
(108, '19630528 198710 2 001', 'Umi Rochayati, MT.', 'PEND. TEKNIK ELEKTRONIKA'),
(109, '19571111 198803 2 001', 'Sri Palupi, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(110, '19590525 198803 2 001', 'Emy Budiastuti, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(111, '19561222 198803 1 001', 'Ir. Ilham Marsudi, M.Kom', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(112, '19530412 198601 1 001', 'Ir. Sugiyono, M.Kes.', 'PEND. TEKNIK BOGA BUSANA'),
(113, '19631001 198803 1 001', 'Drs. Pangat Hendro Sutomo', 'PEND. TEKNIK ELEKTRO'),
(114, '19611216 198803 2 001', 'Sutriyati Purwanti, M.Si.', 'PEND. TEKNIK BOGA BUSANA'),
(115, '19630512 198901 1 001', 'Muhammad Munir, M.Pd.', 'PEND. TEKNIK ELEKTRONIKA'),
(116, '19640917 198901 1 001', 'Masduki Zakarijah, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(117, '19640203 198812 1 001', 'Dr. Zainur Rofiq, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(118, '19571006 198812 1 001', 'Bambang Setiyo Hari Purwoko, M', 'PEND. TEKNIK ELEKTRO MESIN'),
(119, '19640302 198901 1 001', 'Riswan Dwi Djatmiko, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(120, '19620806 198812 1 001', 'Giri Wiyono, M.T.', 'PEND. TEKNIK ELEKTRO'),
(121, '19630108 198901 1 001', 'Jarwo Puspito, MP', 'PEND. TEKNIK ELEKTRO MESIN'),
(122, '19631230 198812 1 001', 'Widarto, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(123, '19630111 198812 2 001', 'Dr. Endang Mulyatingsih, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(124, '19640525 198901 1 002', 'Djoko Laras Budiyo Taruno, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(125, '19620217 198903 2 002', 'Zamtinah, M.Pd', 'PEND. TEKNIK ELEKTRO'),
(126, '19611109 199001 1 001', 'Ir. Endaryanta, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(127, '19540509 199001 1 001', 'Ir. Sumardjito, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(128, '19650906 199001 1 001', 'Dr. Sudiyatno, ME', 'PEND. TEKNIK ELEKTRO MESIN'),
(129, '19640405 199001 1 001', 'Mutaqin, M.Pd,. MT.', 'PEND. TEKNIK ELEKTRO'),
(130, '19630621 199002 1 001', 'Yatin Ngadiyono, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(131, '19651006 199002 1 001', 'B. Sentot Wijanarko, M.T.', 'PEND. TEKNIK ELEKTRO MESIN'),
(132, '19611127 199002 1 001', 'Drs. Edy Purnomo', 'PEND. TEKNIK ELEKTRO MESIN'),
(133, '19590219 198603 1 001', 'Istanto Wahyu Djatmiko, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(134, '19560216 198603 1 003', 'Dr. Moch Bruri Triyono,M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(135, '19581218 198603 2 001', 'Sri Waluyanti, M.Pd.', 'PEND. TEKNIK ELEKTRONIKA'),
(136, '19670930 199303 1 005', 'Totok Sukardiyono, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(137, '19640324 199303 1 001', 'Suhartanta, M.Pd', 'PEND. TEKNIK OTOMOTIF'),
(138, '19680406 199303 1 001', 'Totok Heru Trimaryadi, M.Pd', 'PEND. TEKNIK ELEKTRO'),
(139, '19680224 199303 1 002', 'Tiwan, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(140, '19670805 199303 2 001', 'Rizqie Auliana, M.Kes', 'PEND. TEKNIK BOGA BUSANA'),
(141, '19670608 199303 1 001', 'Dr. Eko Marpanaji, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(142, '19680404 199303 1 003', 'Moch. Solikin, M.Kes.', 'PEND. TEKNIK OTOMOTIF'),
(143, '19670916 199403 1 002', 'Hartoyo, M.Pd., M.T.', 'PEND. TEKNIK ELEKTRO'),
(144, '19690615 199403 1 002', 'Aris Nasuha, M.Si, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(145, '19681026 199403 1 003', 'Nur Kholis, M.Pd.', 'PEND. TEKNIK ELEKTRO'),
(146, '19650618 199403 1 002', 'Ir. Muhammad Khotibul Umam, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(147, '19630610 198812 2 001', 'Kapti Asiatun, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(148, '19680207 199512 1 001', 'Ir. Joko Sumiyanto, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(149, '19690717 199702 2 001', 'Retna Hidayah, ST,. MT,. Ph.D.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(150, '19680707 199702 1 001', 'Nurkhamid, S.Si,. M.Kom', 'PEND. TEKNIK ELEKTRONIKA'),
(151, '19721113 199702 2 001', 'Nani Ratnaningsih, MP', 'PEND. TEKNIK BOGA BUSANA'),
(152, '19710515 199702 1 001', 'Mujiyono, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(153, '19681205 199702 1 001', 'Arianto Leman Sumowidagdo, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(154, '19710604 199702 1 001', 'Didik Nurhadiyanto, MT', 'PEND. TEKNIK ELEKTRO MESIN'),
(155, '19720127 199702 1 001', 'Rustam Asnawi, M.T.', 'PEND. TEKNIK ELEKTRO'),
(156, '19730130 199802 1 001', 'Didik Purwantoro, ST., MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(157, '19710629 199802 1 001', 'Kustono, ST', 'PEND. TEKNIK ELEKTRO'),
(158, '19720208 199802 1 001', 'Triyanto, S.Sn', 'PEND. TEKNIK BOGA BUSANA'),
(159, '19720508 199802 1 002', 'Fatchul Arifin, MT.', 'PEND. TEKNIK ELEKTRONIKA'),
(160, '19650829 199903 1 001', 'Herlambang Sigit Pramono, S.T.', 'PEND. TEKNIK ELEKTRO'),
(161, '19740228 199903 1 002', 'Heri Wibowo, MT.', 'PEND. TEKNIK ELEKTRO MESIN'),
(162, '19610302 199903 1 001', 'Wahidin Abbas, M.Si.', 'PEND. TEKNIK ELEKTRO MESIN'),
(163, '19730125 199903 1 001', 'Sigit Yatmono, M.T.', 'PEND. TEKNIK ELEKTRO'),
(164, '19740511 199903 1 002', 'Handaru Jati,S.T. M.M., M.T.Ph.D.', 'PEND. TEKNIK ELEKTRONIKA'),
(165, '19750508 199903 1 001', 'Dr.-Ing. Satoto Endar Nayono', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(166, '19750428 199903 2 002', 'Prihastuti Ekawatiningsih, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(167, '19690701 199903 1 002', 'Ikhwanuddin, ST,. MT.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(168, '19761103 200303 1 001', 'Slamet Widodo, M.T.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(169, '19741127 200003 1 001', 'Muhammad Ali, M.T.', 'PEND. TEKNIK ELEKTRO'),
(170, '19721115 200003 2 001', 'Widihastuti, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(171, '19720607 200012 2 001', 'Ichda Chayati, MP', 'PEND. TEKNIK BOGA BUSANA'),
(172, '19740828 200112 1 005', 'Toto Sukisno, S.Pd.', 'PEND. TEKNIK ELEKTRO'),
(173, '19760720 200112 1 002', 'Yuwono Indro Hatmojo, S.Pd.', 'PEND. TEKNIK ELEKTRO'),
(174, '19690312 200112 1 001', 'Zainal Arifin, MT.', 'PEND. TEKNIK OTOMOTIF'),
(175, '19710203 200112 1 001', 'Sutiman, MT', 'PEND. TEKNIK OTOMOTIF'),
(176, '19740421 200112 1 001', 'Apri Nuryanto, M.T.', 'PEND. TEKNIK ELEKTRO MESIN'),
(177, '19750627 200112 1 001', 'Dr. Wagiran,  M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(178, '19760424 200112 2 002', 'Wika Rinawati, S.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(179, '19751010 200112 2 002', 'Fitri Rahmawati, MP', 'PEND. TEKNIK BOGA BUSANA'),
(180, '19760920 200112 1 001', 'Noor Fitihana, ST', 'PEND. TEKNIK BOGA BUSANA'),
(181, '19710313 200212 1 001', 'Sutopo, M.T.', 'PEND. TEKNIK ELEKTRO MESIN'),
(182, '19800329 200212 1 001', 'Arif Marwanto, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(183, '19800513 200212 1 002', 'Bambang Sulistyo, S.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(184, '19780227 200212 1 003', 'Febrianto Amri Ristadi, ST', 'PEND. TEKNIK ELEKTRO MESIN'),
(185, '19790412 200212 1 002', 'Moh. Khairudin, M.T.', 'PEND. TEKNIK ELEKTRO'),
(186, '19750609 200212 2 002', 'Nurhening Yuniarti, MT', 'PEND. TEKNIK ELEKTRO'),
(187, '19721015 200212 1 002', 'Nuryadin Eko Raharjo, M.Pd.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(188, '19701108 200212 1 003', 'Mashoedah, M.T.', 'PEND. TEKNIK ELEKTRONIKA'),
(189, '19790406 200212 2 001', 'Titin Hera Widi Handayani, M.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(190, '19751029 200212 2 002', 'Sugiyem, S.Pd', 'PEND. TEKNIK BOGA BUSANA'),
(191, '19780911 200212 2 002', 'Andian Ari Anggraeni, M.Sc', 'PEND. TEKNIK BOGA BUSANA'),
(192, '19770131 200212 2 001', 'Dr. Mutiara Nugraheni, M.Si.', 'PEND. TEKNIK BOGA BUSANA'),
(193, '19780312 200212 1 001', 'Mohammad Adam Jerusalem, MT', 'PEND. TEKNIK BOGA BUSANA'),
(194, '19770717 200212 1 001', 'Muhkamad Wakid, M.Eng.', 'PEND. TEKNIK OTOMOTIF'),
(195, '19750312 200212 1 001', 'Syukri Fathudin Ahmad Widodo, M.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(196, '19770625 200312 1 002', 'Gunadi, S.Pd.,M.Pd', 'PEND. TEKNIK OTOMOTIF'),
(197, '19780131 200312 1 002', 'Aan Ardian, S.Pd', 'PEND. TEKNIK ELEKTRO MESIN'),
(198, '19790526 200312 2 002', 'Asi Tritanti, S.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(199, '19770502 200312 1 001', 'Didik Hariyanto,. S.Pd.T.', 'PEND. TEKNIK ELEKTRO'),
(200, '19780111 200501 1 001', 'Paryanto, M.Pd.', 'PEND. TEKNIK ELEKTRO MESIN'),
(201, '19700523 200501 1 001', 'Afif Ghurub Bestari, S.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(202, '19790211 200501 1 001', 'Pramudiyanto, S.Pd.T.', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(203, '19801203 200501 1 003', 'Ilmawan Mustaqim, S.Pd.T', 'PEND. TEKNIK ELEKTRO'),
(204, '19770113 200501 1 001', 'Fredy Surahmanto, M.Eng.', 'PEND. TEKNIK ELEKTRO MESIN'),
(205, '19750710 200501 1 002', 'Suprapto, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(206, '19790615 200501 2 001', 'Eni Juniastuti, S.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(207, '132310817', 'Adi Dewanto, M.Kom', 'PEND. TEKNIK ELEKTRONIKA'),
(208, '19820503 200501 1 001', 'Beni Setya Nugraha, S.Pd.T', 'PEND. TEKNIK OTOMOTIF'),
(209, '19780620 200501 1 001', 'Joko Sriyanto, MT', 'PEND. TEKNIK OTOMOTIF'),
(210, '19770913 200501 1 002', 'Ariadie Chandra Nugraha, ST', 'PEND. TEKNIK ELEKTRO'),
(211, '19701218 200501 2 001', 'Ratna Wardani, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(212, '19691102 200501 2 001', 'Sativa, MT', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(213, '19690314 200501 1 001', 'Minta Harsana, A.Par., M.Sc.', 'PEND. TEKNIK BOGA BUSANA'),
(214, '19770511 200604 1 002', 'Deny Budi Hertanto, M.Kom', 'PEND. TEKNIK ELEKTRO'),
(215, '19810506 200604 2 002', 'Dewi Eka Murniati, SE', 'PEND. TEKNIK BOGA BUSANA'),
(216, '19770709 200604 2 001', 'Elok Novita, S.Pd.', 'PEND. TEKNIK BOGA BUSANA'),
(217, '19790517 200604 1 002', 'Rahmatul Irfan, MT', 'PEND. TEKNIK ELEKTRONIKA'),
(218, '19790326 200604 1 003', 'Sudarwanto, S.Pd.T', 'PEND. TEKNIK OTOMOTIF'),
(219, '19730817 200801 1 001', 'Amir Fatah, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(220, '19821230 200812 1 009', 'Ibnu Siswanto, S.Pd.T.', 'PEND. TEKNIK OTOMOTIF'),
(221, '19810507 200812 1 002', 'Yoga Guntur Sampurno, M.Pd.', 'PEND. TEKNIK OTOMOTIF'),
(222, '19830511 200912 1 001', 'Widyasmoro, M.Sc.', 'PEND. TEKNIK ELEKTRONIKA'),
(223, '19850407 201012 1 006', 'Faqih Maarif, SPdT, M.Eng', 'PEND. TEKNIK SIPIL & PERENCANAAN'),
(224, '19820621 201012 2 002', 'Yuniar Indrihapsari,S.T,.M.Eng', 'PEND. TEKNIK ELEKTRONIKA'),
(225, '19791214 201012 2 002', 'Dessy Irmawati, M.T.', 'PEND. TEKNIK ELEKTRONIKA');
