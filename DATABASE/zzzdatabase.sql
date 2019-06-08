-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2019 at 03:24 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zzzdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2019-06-07 13:04:02', '2019-06-07 13:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20190607130315'),
('20190607130459'),
('20190607132941');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `university_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `started_at`, `created_at`, `updated_at`, `university_id`) VALUES
(1, 'Soul', '2016-01-01 00:00:00', '2019-06-08 15:19:44', '2019-06-08 15:19:44', 93),
(2, 'Almila', '2019-01-01 00:00:00', '2019-06-08 15:19:44', '2019-06-08 15:19:44', 37);

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) NOT NULL,
  `api_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `web_page` varchar(255) DEFAULT NULL,
  `typ` varchar(255) DEFAULT NULL,
  `founded_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `api_id`, `name`, `city`, `web_page`, `typ`, `founded_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Abant İzzet Baysal Üniversitesi', 'Bolu', 'ibu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(2, 1, 'Abdullah Gül Üniversitesi', 'Kayseri', 'agu.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(3, 2, 'Adana Bilim ve Teknoloji Üniversitesi', 'Adana', 'adanabtu.edu.tr', 'Devlet', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(4, 3, 'Adıyaman Üniversitesi', 'Adıyaman', 'adiyaman.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(5, 4, 'Adnan Menderes Üniversitesi', 'Aydın', 'adu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(6, 5, 'Afyon Kocatepe Üniversitesi', 'Afyonkarahisar', 'aku.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(7, 6, 'Ağrı İbrahim Çeçen Üniversitesi', 'Ağrı', 'agri.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(8, 7, 'Ahi Evran Üniversitesi', 'Kırşehir', 'ahievran.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(9, 8, 'Akdeniz Üniversitesi', 'Antalya', 'akdeniz.edu.tr', 'Devlet', '1982-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(10, 9, 'Aksaray Üniversitesi', 'Aksaray', 'aksaray.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(11, 10, 'Alanya Alaaddin Keykubat Üniversitesi', 'Antalya', 'alanyaaku.edu.tr', 'Devlet', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(12, 11, 'Amasya Üniversitesi', 'Amasya', 'amasya.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(13, 12, 'Anadolu Üniversitesi', 'Eskişehir', 'anadolu.edu.tr', 'Devlet', '1958-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(14, 13, 'Ankara Üniversitesi', 'Ankara', 'ankara.edu.tr', 'Devlet', '1946-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(15, 14, 'Ankara Sosyal Bilimler Üniversitesi', 'Ankara', 'asbu.edu.tr', 'Devlet', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(16, 15, 'Ardahan Üniversitesi', 'Ardahan', 'ardahan.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(17, 16, 'Artvin Çoruh Üniversitesi', 'Artvin', 'artvin.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(18, 17, 'Atatürk Üniversitesi', 'Erzurum', 'atauni.edu.tr', 'Devlet', '1954-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(19, 18, 'Balıkesir Üniversitesi', 'Balıkesir', 'balikesir.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(20, 19, 'Bandırma Onyedi Eylül Üniversitesi', 'Balıkesir', 'bandirma.edu.tr', 'Devlet', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(21, 20, 'Bartın Üniversitesi', 'Bartın', 'bartin.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(22, 21, 'Batman Üniversitesi', 'Batman', 'batman.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(23, 22, 'Bayburt Üniversitesi', 'Bayburt', 'bayburt.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(24, 23, 'Bilecik Şeyh Edebali Üniversitesi', 'Bilecik', 'bilecik.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(25, 24, 'Bingöl Üniversitesi', 'Bingöl', 'bingol.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(26, 25, 'Bitlis Eren Üniversitesi', 'Bitlis', 'beu.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(27, 26, 'Boğaziçi Üniversitesi', 'İstanbul', 'boun.edu.tr', 'Devlet', '1863-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(28, 27, 'Bozok Üniversitesi', 'Yozgat', 'bozok.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(29, 28, 'Bursa Teknik Üniversitesi', 'Bursa', 'btu.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(30, 29, 'Celal Bayar Üniversitesi', 'Manisa', 'bayar.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(31, 30, 'Cumhuriyet Üniversitesi', 'Sivas', 'cumhuriyet.edu.tr', 'Devlet', '1974-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(32, 31, 'Çanakkale Onsekiz Mart Üniversitesi', 'Çanakkale', 'comu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(33, 32, 'Çankırı Karatekin Üniversitesi', 'Çankırı', 'karatekin.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(34, 33, 'Çukurova Üniversitesi', 'Adana', 'cu.edu.tr', 'Devlet', '1973-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(35, 34, 'Deniz Harp Okulu', 'İstanbul', 'dho.edu.tr', 'Devlet', '1773-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(36, 35, 'Dicle Üniversitesi', 'Diyarbakır', 'dicle.edu.tr', 'Devlet', '1974-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(37, 36, 'Dokuz Eylül Üniversitesi', 'İzmir', 'deu.edu.tr', 'Devlet', '1982-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(38, 37, 'Dumlupınar Üniversitesi', 'Kütahya', 'dpu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(39, 38, 'Düzce Üniversitesi', 'Düzce', 'duzce.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(40, 39, 'Ege Üniversitesi', 'İzmir', 'erciyes.edu.tr', 'Devlet', '1955-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(41, 40, 'Erzincan Üniversitesi', 'Erzincan', 'erzincan.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(42, 41, 'Erzurum Teknik Üniversitesi', 'Erzurum', 'erzurum.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(43, 42, 'Eskişehir Osmangazi Üniversitesi', 'Eskişehir', 'ogu.edu.tr', 'Devlet', '1970-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(44, 43, 'Fırat Üniversitesi', 'Elâzığ', 'firat.edu.tr', 'Devlet', '1967-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(45, 44, 'Galatasaray Üniversitesi', 'İstanbul', 'gsu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(46, 45, 'Gazi Üniversitesi', 'Ankara', 'gazi.edu.tr', 'Devlet', '1926-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(47, 46, 'Gaziantep Üniversitesi', 'Gaziantep', 'gantep.edu.tr', 'Devlet', '1973-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(48, 47, 'Gaziosmanpaşa Üniversitesi', 'Tokat', 'gop.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(49, 48, 'Gebze Teknik Üniversitesi', 'Kocaeli', 'gtu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(50, 49, 'Giresun Üniversitesi', 'Giresun', 'giresun.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(51, 50, 'Gümüşhane Üniversitesi', 'Gümüşhane', 'gumushane.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(52, 51, 'Hacettepe Üniversitesi', 'Ankara', 'hacettepe.edu.tr', 'Devlet', '1957-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(53, 52, 'Hakkari Üniversitesi', 'Hakkari', 'hakkari.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(54, 53, 'Harran Üniversitesi', 'Şanlıurfa', 'harran.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(55, 54, 'Hava Harp Okulu', 'İstanbul', 'hho.edu.tr', 'Devlet', '1951-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(56, 55, 'Hitit Üniversitesi', 'Çorum', 'hitit.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(57, 56, 'Iğdır Üniversitesi', 'Iğdır', 'igdir.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(58, 57, 'İnönü Üniversitesi', 'Malatya', 'inonu.edu.tr', 'Devlet', '1975-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(59, 58, 'İskenderun Teknik Üniversitesi', 'Hatay', 'iste.edu.tr', 'Devlet', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(60, 59, 'İstanbul Medeniyet Üniversitesi', 'İstanbul', 'medeniyet.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(61, 60, 'İstanbul Üniversitesi', 'İstanbul', 'istanbul.edu.tr', 'Devlet', '1453-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(62, 61, 'İstanbul Teknik Üniversitesi', 'İstanbul', 'itu.edu.tr', 'Devlet', '1773-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(63, 62, 'İzmir Bakırçay Üniversitesi', 'İzmir', 'bakircay.edu.tr', 'Devlet', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(64, 63, 'İzmir Demokrasi Üniversitesi', 'İzmir', 'www.idu.edu.tr', 'Devlet', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(65, 64, 'İzmir Kâtip Çelebi Üniversitesi', 'İzmir', 'ikc.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(66, 65, 'İzmir Yüksek Teknoloji Enstitüsü', 'İzmir', 'iyte.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(67, 66, 'Kafkas Üniversitesi', 'Kars', 'kafkas.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(68, 67, 'Kahramanmaraş Sütçü İmam Üniversitesi', 'Kahramanmaraş', 'ksu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(69, 68, 'Karabük Üniversitesi', 'Karabük', 'karabuk.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(70, 69, 'Karadeniz Teknik Üniversitesi', 'Trabzon', 'ktu.edu.tr', 'Devlet', '1955-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(71, 70, 'Karamanoğlu Mehmetbey Üniversitesi', 'Karaman', 'kmu.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(72, 71, 'Kara Harp Okulu', 'Ankara', 'Kara Harp Okulu', 'Devlet', '1834-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(73, 72, 'Kastamonu Üniversitesi', 'Kastamonu', 'kastamonu.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(74, 73, 'Kırıkkale Üniversitesi', 'Kırıkkale', 'kku.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(75, 74, 'Kırklareli Üniversitesi', 'Kırklareli', 'kirklareli.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(76, 75, 'Kilis 7 Aralık Üniversitesi', 'Kilis', 'kilis.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(77, 76, 'Kocaeli Üniversitesi', 'Kocaeli', 'kocaeli.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(78, 77, 'Necmettin Erbakan Üniversitesi', 'Konya', 'konya.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(79, 78, 'Mardin Artuklu Üniversitesi', 'Mardin', 'artuklu.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(80, 79, 'Marmara Üniversitesi', 'İstanbul', 'marmara.edu.tr', 'Devlet', '1883-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(81, 80, 'Mehmet Akif Ersoy Üniversitesi', 'Burdur', 'mehmetakif.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(82, 81, 'Mersin Üniversitesi', 'Mersin', 'mersin.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(83, 82, 'Mimar Sinan Güzel Sanatlar Üniversitesi', 'İstanbul', 'msgsu.edu.tr', 'Devlet', '1882-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(84, 83, 'Muğla Sıtkı Koçman Üniversitesi', 'Muğla', 'mu.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(85, 84, 'Milli Savunma Üniversitesi', '', 'www.msu.edu.tr', 'Devlet', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(86, 85, 'Mustafa Kemal Üniversitesi', 'Hatay', 'mku.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(87, 86, 'Muş Alparslan Üniversitesi', 'Muş', 'alparslan.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(88, 87, 'Namık Kemal Üniversitesi', 'Tekirdağ', 'nku.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(89, 88, 'Nevşehir Hacı Bektaş Veli Üniversitesi', 'Nevşehir', 'nevsehir.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(90, 89, 'Niğde Üniversitesi', 'Niğde', 'nigde.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(91, 90, 'Ondokuz Mayıs Üniversitesi', 'Samsun', 'omu.edu.tr', 'Devlet', '1975-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(92, 91, 'Ordu Üniversitesi', 'Ordu', 'odu.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(93, 92, 'Orta Doğu Teknik Üniversitesi', 'Ankara', 'odtu.edu.tr', 'Devlet', '1956-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(94, 93, 'Osmaniye Korkut Ata Üniversitesi', 'Osmaniye', 'osmaniye.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(95, 94, 'Pamukkale Üniversitesi', 'Denizli', 'pamukkale.edu.tr', 'Devlet', '1976-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(96, 95, 'Polis Akademisi', 'Ankara', 'pa.edu.tr', 'Devlet', '1937-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(97, 96, 'Recep Tayyip Erdoğan Üniversitesi', 'Rize', 'erdogan.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(98, 97, 'Sahil Güvenlik Akademisi', 'Ankara', 'sga.edu.tr', 'Devlet', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(99, 98, 'Sakarya Üniversitesi', 'Sakarya', 'sakarya.edu.tr', 'Devlet', '1970-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(100, 99, 'Selçuk Üniversitesi', 'Konya', 'selcuk.edu.tr', 'Devlet', '1975-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(101, 100, 'Siirt Üniversitesi', 'Siirt', 'siirt.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(102, 101, 'Sinop Üniversitesi', 'Sinop', 'sinop.edu.tr', 'Devlet', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(103, 102, 'Süleyman Demirel Üniversitesi', 'Isparta', 'sdu.edu.tr', 'Devlet', '1976-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(104, 103, 'Şırnak Üniversitesi', 'Şırnak', 'sirnak.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(105, 104, 'Trakya Üniversitesi', 'Edirne', 'trakya.edu.tr', 'Devlet', '1982-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(106, 105, 'Tunceli Üniversitesi', 'Tunceli', 'tunceli.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(107, 106, 'Türk Alman Üniversitesi', 'İstanbul', 'tau.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(108, 107, 'Sağlık Bilimleri Üniversitesi', 'İstanbul', 'sbu.edu.tr', 'Devlet', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(109, 108, 'Türkiye Uluslararası İslam, Bilim ve Teknoloji Üniversitesi', 'İstanbul', 'no_website', 'Devlet', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(110, 109, 'Uludağ Üniversitesi', 'Bursa', 'uludag.edu.tr', 'Devlet', '1970-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(111, 110, 'Uşak Üniversitesi', 'Uşak', 'usak.edu.tr', 'Devlet', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(112, 111, 'Yalova Üniversitesi', 'Yalova', 'yalova.edu.tr', 'Devlet', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(113, 112, 'Yıldız Teknik Üniversitesi', 'İstanbul', 'yildiz.edu.tr', 'Devlet', '1911-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(114, 113, 'Yıldırım Beyazıt Üniversitesi', 'Ankara', 'ybu.edu.tr', 'Devlet', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(115, 114, 'Yüzüncü Yıl Üniversitesi', 'Van', 'yyu.edu.tr', 'Devlet', '1982-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(116, 115, 'Bülent Ecevit Üniversitesi', 'Zonguldak', 'beun.edu.tr', 'Devlet', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(117, 116, 'Acıbadem Üniversitesi', 'İstanbul', 'acibadem.edu.tr', 'Vakıf', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(118, 117, 'Akev Üniversitesi', 'Antalya', 'akev.edu.tr', 'Vakıf', '2014-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(119, 118, 'Alanya Hamdullah Emin Paşa Üniversitesi', 'Antalya', 'ahap.edu.tr', 'Vakıf', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(120, 119, 'Anka Teknoloji Üniversitesi', 'Ankara', 'anka.edu.tr', 'Vakıf', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(121, 120, 'Atılım Üniversitesi', 'Ankara', 'atilim.edu.tr', 'Vakıf', '1996-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(122, 121, 'Avrasya Üniversitesi', 'Trabzon', 'avrasya.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(123, 122, 'Bahçeşehir Üniversitesi', 'İstanbul', 'bahcesehir.edu.tr', 'Vakıf', '1998-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(124, 123, 'Başkent Üniversitesi', 'Ankara', 'baskent.edu.tr', 'Vakıf', '1994-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(125, 124, 'Beykent Üniversitesi', 'İstanbul', 'beykent.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(126, 125, 'Beykoz Üniversitesi', 'İstanbul', 'beykoz.edu.tr', 'Vakıf', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(127, 126, 'Bezmiâlem Vakıf Üniversitesi', 'İstanbul', 'bezmialem.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(128, 127, 'Bilkent Üniversitesi', 'Ankara', 'bilkent.edu.tr', 'Vakıf', '1984-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(129, 128, 'Biruni Üniversitesi', 'İstanbul', 'biruni.edu.tr', 'Vakıf', '2014-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(130, 129, 'Çankaya Üniversitesi', 'Ankara', 'cankaya.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(131, 130, 'Çağ Üniversitesi', 'Mersin', 'cag.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(132, 131, 'Doğuş Üniversitesi', 'İstanbul', 'dogus.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(133, 132, 'Fatih Sultan Mehmet Üniversitesi', 'İstanbul', 'fatihsultan.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(134, 133, 'Fenerbahçe Üniversitesi', 'İstanbul', 'fbu.edu.tr', 'Vakıf', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(135, 134, 'Gedik Üniversitesi', 'İstanbul', 'gedik.edu.tr', 'Vakıf', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(136, 135, 'Haliç Üniversitesi', 'İstanbul', 'halic.edu.tr', 'Vakıf', '1998-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(137, 136, 'Hasan Kalyoncu Üniversitesi', 'Gaziantep', 'hku.edu.tr', 'Vakıf', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(138, 137, 'Işık Üniversitesi', 'İstanbul', 'isikun.edu.tr', 'Vakıf', '1996-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(139, 138, 'İbn-u Haldun Üniversitesi', 'İstanbul', 'ihu.edu.tr', 'Vakıf', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(140, 139, 'İstanbul 29 Mayıs Üniversitesi', 'İstanbul', '29mayis.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(141, 140, 'İstanbul Arel Üniversitesi', 'İstanbul', 'arel.edu.tr', 'Vakıf', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(142, 141, 'İstanbul Aydın Üniversitesi', 'İstanbul', 'aydin.edu.tr', 'Vakıf', '2003-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(143, 142, 'İstanbul Bilgi Üniversitesi', 'İstanbul', 'bilgi.edu.tr', 'Vakıf', '1994-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(144, 143, 'İstanbul Bilim Üniversitesi', 'İstanbul', 'istanbulbilim.edu.tr', 'Vakıf', '2006-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(145, 144, 'İstanbul Esenyurt Üniversitesi', 'İstanbul', 'esenyurt.edu.tr', 'Vakıf', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(146, 145, 'İstanbul Gelişim Üniversitesi', 'İstanbul', 'gelisim.edu.tr', 'Vakıf', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(147, 146, 'İstanbul Kemerburgaz Üniversitesi', 'İstanbul', 'kemerburgaz.edu.tr', 'Vakıf', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(148, 147, 'İstanbul Kent Üniversitesi', 'İstanbul', 'kent.edu.tr', 'Vakıf', '2016-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(149, 148, 'İstanbul Kültür Üniversitesi', 'İstanbul', 'iku.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(150, 149, 'İstanbul Medipol Üniversitesi', 'İstanbul', 'medipol.edu.tr', 'Vakıf', '2009-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(151, 150, 'İstanbul Rumeli Üniversitesi', 'İstanbul', 'rumeli.edu.tr', 'Vakıf', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(152, 151, 'İstanbul Sabahattin Zaim Üniversitesi', 'İstanbul', 'iszu.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(153, 152, 'İstanbul Şehir Üniversitesi', 'İstanbul', 'sehir.edu.tr', 'Vakıf', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(154, 153, 'İstanbul Ticaret Üniversitesi', 'İstanbul', 'iticu.edu.tr', 'Vakıf', '2001-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(155, 154, 'İstinye Üniversitesi', 'İstanbul', 'istinye.edu.tr', 'Vakıf', '2015-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(156, 155, 'İzmir Ekonomi Üniversitesi', 'İzmir', 'ieu.edu.tr', 'Vakıf', '2001-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(157, 156, 'Kadir Has Üniversitesi', 'İstanbul', 'khas.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(158, 157, 'Karatay Üniversitesi', 'Konya', 'karatay.edu.tr', 'Vakıf', '2010-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(159, 158, 'Koç Üniversitesi', 'İstanbul', 'ku.edu.tr', 'Vakıf', '1992-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(160, 159, 'Konya Gıda Tarım Üniversitesi', 'Konya', 'gidatarim.edu.tr', 'Vakıf', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(161, 160, 'Maltepe Üniversitesi', 'İstanbul', 'maltepe.edu.tr', 'Vakıf', '1997-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(162, 161, 'MEF Üniversitesi', 'İstanbul', 'mef.edu.tr', 'Vakıf', '2012-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(163, 162, 'Nişantaşı Üniversitesi', 'İstanbul', 'nisantasi.edu.tr', 'Vakıf', '2012-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(164, 163, 'Nuh Naci Yazgan Üniversitesi', 'Kayseri', 'nny.edu.tr', 'Vakıf', '2009-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(165, 164, 'Okan Üniversitesi', 'İstanbul', 'okan.edu.tr', 'Vakıf', '1999-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(166, 165, 'Özyeğin Üniversitesi', 'İstanbul', 'ozyegin.edu.tr', 'Vakıf', '2007-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(167, 166, 'Piri Reis Üniversitesi', 'İstanbul', 'pirireis.edu.tr', 'Vakıf', '2008-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(168, 167, 'Sabancı Üniversitesi', 'İstanbul', 'sabanciuniv.edu.tr', 'Vakıf', '1994-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(169, 168, 'Sanko Üniversitesi', 'Gaziantep', 'sanko.edu.tr', 'Vakıf', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(170, 169, 'TED Üniversitesi', 'Ankara', 'tedu.edu.tr', 'Vakıf', '2009-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(171, 170, 'TOBB Ekonomi ve Teknoloji Üniversitesi', 'Ankara', 'etu.edu.tr', 'Vakıf', '2003-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(172, 171, 'Toros Üniversitesi', 'Mersin', 'toros.edu.tr', 'Vakıf', NULL, '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(173, 172, 'Türk Hava Kurumu Üniversitesi', 'Ankara', 'thk.edu.tr', 'Vakıf', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(174, 173, 'Ufuk Üniversitesi', 'Ankara', 'ufuk.edu.tr', 'Vakıf', '1999-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(175, 174, 'Uluslararası Antalya Üniversitesi', 'Antalya', 'antalya.edu.tr', 'Vakıf', '2012-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(176, 175, 'Üsküdar Üniversitesi', 'İstanbul', 'uskudar.edu.tr', 'Vakıf', '2011-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(177, 176, 'Yaşar Üniversitesi', 'İzmir', 'yasar.edu.tr', 'Vakıf', '2001-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(178, 177, 'Yeditepe Üniversitesi', 'İstanbul', 'yeditepe.edu.tr', 'Vakıf', '1996-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(179, 178, 'Yeni Yüzyıl Üniversitesi', 'İstanbul', 'yeniyuzyil.edu.tr', 'Vakıf', '2009-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24'),
(180, 179, 'Yüksek İhtisas Üniversitesi', 'Ankara', 'yuksekihtisasuniversitesi.edu.tr', 'Vakıf', '2013-01-01 00:00:00', '2019-06-08 15:19:24', '2019-06-08 15:19:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_students_on_university_id` (`university_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_universities_on_api_id` (`api_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_rails_37dbd97d15` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
