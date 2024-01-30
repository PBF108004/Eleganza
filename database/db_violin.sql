-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-30 18:28:22
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db_violin`
--

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

CREATE TABLE `course` (
  `course_id` int(4) NOT NULL,
  `course_category_id` int(2) NOT NULL,
  `teacher_id` int(2) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `quota` int(2) NOT NULL,
  `price` int(5) NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `end_date` varchar(10) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `style` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `comment` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`course_id`, `course_category_id`, `teacher_id`, `name`, `quota`, `price`, `start_date`, `end_date`, `time`, `style`, `description`, `comment`) VALUES
(101, 1, 1, '小提琴個別課（初）', 8, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(102, 2, 1, '小提琴個別課（中）', 14, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(201, 1, 2, '小提琴個別課（初）', 6, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(202, 2, 2, '小提琴個別課（中）', 4, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(301, 1, 3, '小提琴個別課（初）', 2, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(302, 2, 3, '小提琴個別課（中）', 4, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(303, 3, 3, '小提琴個別課（高）', 6, 2000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(304, 2, 3, '小提琴個別課（爵士/藍調）', 6, 1800, 'TBD', 'TBD', '', 'Jazz/Blues', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(401, 1, 4, '小提琴個別課（初）', 12, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(501, 1, 5, '小提琴個別課（初）', 4, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(502, 2, 5, '小提琴個別課（中）', 3, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(503, 3, 5, '小提琴個別課（高）', 6, 2000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(601, 1, 6, '小提琴個別課（初）', 12, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(701, 1, 7, '小提琴個別課（初）', 4, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(801, 1, 8, '小提琴個別課（初）', 10, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(901, 1, 9, '小提琴個別課（初）', 3, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(902, 2, 9, '小提琴個別課（中）', 4, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(903, 3, 9, '小提琴個別課（高）', 7, 2000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(1001, 1, 10, '小提琴個別課（初）', 9, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(1101, 1, 11, '小提琴個別課（初）', 3, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(1102, 2, 11, '小提琴個別課（中）', 6, 1500, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(1201, 1, 12, '小提琴個別課（初）', 9, 1000, 'TBD', 'TBD', '', 'Classical', '學費為單堂一小時費用，教師和學生自訂上課時間', ''),
(2501, 4, 5, '弦樂室內樂（團體課）', 10, 8000, '2024/2/17', '2024/3/23', '週六15-17', 'Classical', '學費為一期（6週，共12小時）費用', ''),
(2601, 4, 3, '管弦樂樂片段弦樂曲目選粹（團體課）', 12, 10000, '2024/3/15', '2024/5/10', '週日19-21', 'Classical', '學費為一期（8週，共16小時）費用', ''),
(2701, 4, 9, '小提琴影視配樂片段選粹（團體課）', 15, 10000, '2024/4/10', '2024/5/29', '週三19-21', 'Pop', '學費為一期（8週，共16小時）費用', ''),
(5001, 5, 13, '鹿特丹管弦樂團樂團片段大師班（個別指導生）', 10, 5400, '2024/2/17', '2024/3/9', '週六18:30-21:30', 'Classical', '學費為一系列（4週，共12小時）費用，每人約15分鐘個別指導時間', '指導大師：緁琪莉亞・齊亞諾（Cecilia ZIANO）| 第二小提琴首席'),
(5002, 5, 13, '鹿特丹管弦樂團樂團片段大師班（旁聽生）', 25, 900, '2024/2/17', '2024/2/17', '週六18:30-21:30', 'Classical', '學費為一系列（4週，共12小時）費用', ''),
(5003, 5, 13, '鹿特丹管弦樂團樂團片段大師班（旁聽生）單次 第一週', 5, 250, '2024/2/17', '2024/2/17', '週六18:30-21:30', 'Classical', '學費為單次旁聽（共3小時）費用，此為第一週2024-02-17的課程', ''),
(5004, 5, 13, '鹿特丹管弦樂團樂團片段大師班（旁聽生）單次 第二週', 5, 250, '2024/2/24', '2024/2/24', '週六18:30-21:30', 'Classical', '學費為單次旁聽（共3小時）費用，此為第二週2024-02-24的課程', ''),
(5005, 5, 13, '鹿特丹管弦樂團樂團片段大師班（旁聽生）單次 單次 第三週', 5, 250, '2024/3/2', '2024/3/2', '週六18:30-21:30', 'Classical', '學費為單次旁聽（共3小時）費用，此為第三週2024-03-02的課程', ''),
(5006, 5, 13, '鹿特丹管弦樂團樂團片段大師班（旁聽生）單次 單次 第四週', 5, 250, '2024/3/9', '2024/3/9', '週六18:30-21:30', 'Classical', '學費為單次旁聽（共3小時）費用，此為第四週2024-03-09的課程', ''),
(5101, 5, 13, 'Sebastian Müller小提琴大師班（個別指導生）', 8, 1800, '2024/3/31', '2024/3/31', '週日14-17', 'Classical', 'Classical', ''),
(5102, 5, 13, 'Sebastian Müller小提琴大師班（旁聽生）', 15, 300, '2024/3/31', '2024/3/31', '週日14-17', 'Classical', '學費為單次旁聽（共3小時）費用', '');

-- --------------------------------------------------------

--
-- 資料表結構 `course_category`
--

CREATE TABLE `course_category` (
  `course_category_id` int(2) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `course_category`
--

INSERT INTO `course_category` (`course_category_id`, `level`) VALUES
(1, '初階'),
(2, '中階'),
(3, '高階'),
(4, '大師班'),
(5, '大師班');

-- --------------------------------------------------------

--
-- 資料表結構 `course_like`
--

CREATE TABLE `course_like` (
  `c_like_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `course_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `course_like`
--

INSERT INTO `course_like` (`c_like_id`, `user_id`, `course_id`) VALUES
(1, 3, 503),
(2, 3, 304),
(3, 15, 1101),
(4, 15, 304),
(5, 15, 2501),
(6, 19, 2501),
(7, 7, 5101),
(8, 6, 5001),
(9, 6, 2701),
(10, 6, 2701),
(11, 3, 2701);

-- --------------------------------------------------------

--
-- 資料表結構 `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(2) NOT NULL,
  `main` varchar(10) NOT NULL,
  `serial_number` varchar(15) NOT NULL,
  `type` varchar(3) NOT NULL,
  `amount` int(4) NOT NULL,
  `num` int(2) NOT NULL,
  `low_consumption` int(6) DEFAULT NULL,
  `restriction` varchar(10) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `valid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `discount`
--

INSERT INTO `discount` (`discount_id`, `main`, `serial_number`, `type`, `amount`, `num`, `low_consumption`, `restriction`, `start_date`, `end_date`, `valid`) VALUES
(1, '全館折扣', 'NEWOPEN100', '金額', 50, 2, 1000, '無限制', '2024-01-27 00:00:00', '2024-02-04 00:00:00', 1),
(2, '全館限時95折', 'PI6JI27C4L', '百分比', 95, 3, 95, '無限制', '2024-01-29 00:00:00', '2024-01-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `imgs`
--

CREATE TABLE `imgs` (
  `imgs_id` int(3) NOT NULL,
  `product_id` int(5) NOT NULL,
  `pic` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `imgs`
--

INSERT INTO `imgs` (`imgs_id`, `product_id`, `pic`) VALUES
(1, 1, '17179413_800.jpg'),
(2, 1, '17179408_800.jpg'),
(3, 1, '17179388_800.jpg'),
(4, 1, '17179393_800.jpg'),
(5, 1, '17179398_800.jpg'),
(6, 2, '6746845_800.jpg'),
(7, 2, '6746850_800.jpg'),
(8, 2, '6746870_800.jpg'),
(9, 2, '6746855_800.jpg'),
(10, 2, '6746835_800.jpg'),
(11, 2, '6746830_800.jpg'),
(12, 3, '8129134_800.jpg'),
(13, 3, '8129144_800.jpg'),
(14, 3, '8129154_800.jpg'),
(15, 3, '8129204_800.jpg'),
(16, 3, '8129129_800.jpg'),
(17, 3, '8129114_800.jpg'),
(18, 4, '16198621_800.jpg'),
(19, 4, '16198626_800.jpg'),
(20, 4, '16198631_800.jpg'),
(21, 4, '16198636_800.jpg'),
(22, 4, '16198661_800.jpg'),
(23, 4, '16198666_800.jpg'),
(24, 5, '12809207_800.jpg'),
(25, 5, '12809217_800.jpg'),
(26, 5, '12809222_800.jpg'),
(27, 5, '12809212_800.jpg'),
(28, 5, '12826507_800.jpg'),
(29, 5, '12809252_800.jpg'),
(30, 6, '10617291_800.jpg'),
(31, 6, '10617296_800.jpg'),
(32, 6, '10617301_800.jpg'),
(33, 6, '10617306_800.jpg'),
(34, 7, '15104143_800.jpg'),
(35, 7, '15104148_800.jpg'),
(36, 7, '15104133_800.jpg'),
(37, 7, '15104138_800.jpg'),
(38, 8, '862239_800.jpg'),
(39, 9, '12235832_800.jpg'),
(40, 9, '12235837_800.jpg'),
(41, 9, '12235842_800.jpg'),
(42, 9, '12235847_800.jpg'),
(43, 9, '12235882_800.jpg'),
(44, 9, '18034787_800.jpg'),
(45, 9, '18034782_800.jpg'),
(46, 10, '7405225_800.jpg'),
(47, 10, '7405230_800.jpg'),
(48, 10, '7405245_800.jpg'),
(49, 10, '7405255_800.jpg'),
(50, 10, '7405220_800.jpg'),
(51, 10, '7405215_800.jpg'),
(52, 11, '14362133_800.jpg'),
(53, 11, '14362138_800.jpg'),
(54, 11, '14362143_800.jpg'),
(55, 11, '14362148_800.jpg'),
(56, 11, '14362173_800.jpg'),
(57, 11, '14362178_800.jpg'),
(58, 12, '17663193_800.jpg'),
(59, 12, '17663203_800.jpg'),
(60, 12, '17663209_800.jpg'),
(61, 12, '17663216_800.jpg'),
(62, 12, '17663243_800.jpg'),
(63, 12, '17663238_800.jpg'),
(64, 13, '18346484_800.jpg'),
(65, 13, '18346473_800.jpg'),
(66, 13, '18346493_800.jpg'),
(67, 13, '18346474_800.jpg'),
(68, 13, '18346468_800.jpg'),
(69, 13, '18346458_800.jpg'),
(70, 14, '18526933_800.jpg'),
(71, 14, '18526903_800.jpg'),
(72, 14, '18526913_800.jpg'),
(73, 14, '18526908_800.jpg'),
(74, 14, '18526918_800.jpg'),
(75, 15, '17447488_800.jpg'),
(76, 15, '17449093_800.jpg'),
(77, 15, '17449085_800.jpg'),
(78, 15, '17449088_800.jpg'),
(79, 15, '17449091_800.jpg'),
(80, 16, '16115651_800.jpg'),
(81, 16, '16115656_800.jpg'),
(82, 16, '16115661_800.jpg'),
(83, 16, '16115671_800.jpg'),
(84, 17, '13780886_800.jpg'),
(85, 17, '13780891_800.jpg'),
(86, 17, '13780896_800.jpg'),
(87, 17, '13780911_800.jpg'),
(88, 17, '13780901_800.jpg'),
(89, 18, '111069.jpg'),
(90, 19, '18878532_8001.jpg'),
(91, 19, '18878532_8002.jpg'),
(92, 19, '18878532_8003.jpg'),
(93, 19, '18878532_8004.jpg'),
(94, 19, '18878532_8005.jpg'),
(95, 19, '18878532_8006.jpg'),
(96, 20, '18878732_8001.jpg'),
(97, 20, '18878732_8002.jpg'),
(98, 20, '18878732_8003.jpg'),
(99, 20, '18878732_8004.jpg'),
(100, 20, '18878732_8005.jpg'),
(101, 20, '18878732_8006.jpg'),
(102, 21, '14453654_8001.jpg'),
(103, 21, '14453654_8002.jpg'),
(104, 21, '14453654_8003.jpg'),
(105, 21, '14453654_8004.jpg'),
(106, 21, '14453654_8005.jpg'),
(107, 21, '14453654_8006.jpg'),
(108, 22, '5360660_8001.jpg'),
(109, 22, '5360660_8002.jpg'),
(110, 22, '5360660_8003.jpg'),
(111, 22, '5360660_8004.jpg'),
(112, 23, '2475361.jpg'),
(113, 23, '2475362.jpg'),
(114, 24, '14984505_8001.jpg'),
(115, 24, '14984505_8002.jpg'),
(116, 24, '14984505_8003.jpg'),
(117, 24, '14984505_8004.jpg'),
(118, 25, '16228431_8001.jpg'),
(119, 25, '16228431_8002.jpg'),
(120, 26, '9712945_8001.jpg'),
(121, 26, '9712945_8002.jpg'),
(122, 26, '9712945_8003.jpg'),
(123, 26, '9712945_8004.jpg'),
(124, 26, '9712945_8005.jpg'),
(125, 27, '16222601_8001.jpg'),
(126, 27, '16222601_8002.jpg'),
(127, 28, '16783414_8001.jpg'),
(128, 28, '16783414_8002.jpg'),
(129, 28, '16783414_8003.jpg'),
(130, 28, '16783414_8004.jpg'),
(131, 29, '15328097_8001.jpg'),
(132, 29, '15328097_8002.jpg'),
(133, 30, '10079230_8001.jpg'),
(134, 30, '10079230_8002.jpg'),
(135, 30, '10079230_8003.jpg'),
(136, 30, '10079230_8004.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `learned_piece`
--

CREATE TABLE `learned_piece` (
  `learned_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `piece_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `order`
--

CREATE TABLE `order` (
  `order_id` int(13) NOT NULL,
  `user_id` int(3) NOT NULL,
  `status` varchar(4) NOT NULL,
  `order_date` datetime NOT NULL,
  `cancel_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `status`, `order_date`, `cancel_date`) VALUES
(2024010101, 1, '取消訂單', '2024-01-01 05:43:03', '2024-01-02 18:55:00'),
(2024010102, 1, '完成訂單', '2024-01-01 12:13:50', NULL),
(2024010201, 2, '未取貨', '2024-01-02 10:00:54', NULL),
(2024010202, 2, '完成訂單', '2024-01-02 13:54:01', NULL),
(2024010301, 3, '取消訂單', '2024-01-03 16:47:34', '2024-01-04 01:16:00'),
(2024010302, 3, '完成訂單', '2024-01-04 00:04:00', NULL),
(2024010401, 4, '未取貨', '2024-01-04 09:44:04', NULL),
(2024010402, 4, '完成訂單', '2024-01-04 19:43:29', NULL),
(2024010501, 5, '取消訂單', '2024-01-05 03:49:28', '2024-01-06 05:14:00'),
(2024010502, 5, '完成訂單', '2024-01-05 07:10:33', NULL),
(2024010601, 6, '完成訂單', '2024-01-06 17:58:00', NULL),
(2024010602, 6, '完成訂單', '2024-01-06 22:14:52', NULL),
(2024010701, 7, '取消訂單', '2024-01-07 00:18:41', '2024-01-08 14:25:00'),
(2024010702, 7, '完成訂單', '2024-01-07 10:00:00', NULL),
(2024010801, 8, '未取貨', '2024-01-08 07:35:41', NULL),
(2024010802, 8, '完成訂單', '2024-01-08 20:52:03', NULL),
(2024010901, 9, '取消訂單', '2024-01-09 06:54:54', '2024-01-10 07:22:00'),
(2024010902, 9, '完成訂單', '2024-01-09 13:14:20', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(3) NOT NULL,
  `order_id` int(13) NOT NULL,
  `course_product_id` int(5) NOT NULL,
  `num` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `course_product_id`, `num`) VALUES
(1, 2024010101, 1, 1),
(2, 2024010102, 101, 1),
(3, 2024010201, 2, 2),
(4, 2024010202, 202, 1),
(5, 2024010301, 3, 3),
(6, 2024010302, 303, 1),
(7, 2024010401, 4, 4),
(8, 2024010402, 401, 1),
(9, 2024010501, 5, 5),
(10, 2024010502, 2501, 1),
(11, 2024010601, 6, 4),
(12, 2024010602, 5002, 1),
(13, 2024010701, 7, 3),
(14, 2024010702, 5003, 1),
(15, 2024010801, 8, 2),
(16, 2024010802, 5101, 1),
(17, 2024010901, 9, 1),
(18, 2024010902, 5102, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `piece`
--

CREATE TABLE `piece` (
  `piece_id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `piece`
--

INSERT INTO `piece` (`piece_id`, `name`) VALUES
(1, '小星星鈴木'),
(2, '薩拉徹特'),
(3, '貝理奧:芭蕾情景'),
(4, '蒙提：查達斯'),
(5, '莫札特:第1號協奏曲第1樂章'),
(6, '韋瓦第：鈴木小提琴教本第五冊'),
(7, '韋瓦第：A小調協奏曲'),
(8, '賽茲第二號小提琴協奏曲第三樂章'),
(9, '迷孃鈴木'),
(10, '凱撒');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_category_id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `size` int(1) DEFAULT NULL,
  `top` varchar(10) DEFAULT NULL,
  `back_and_sides` varchar(10) DEFAULT NULL,
  `neck` varchar(10) DEFAULT NULL,
  `fingerboard` varchar(10) DEFAULT NULL,
  `bow` varchar(10) DEFAULT NULL,
  `strings` varchar(10) DEFAULT NULL,
  `num` int(3) NOT NULL,
  `price` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `img` varchar(20) DEFAULT NULL,
  `introduction` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`product_id`, `product_category_id`, `name`, `brand`, `size`, `top`, `back_and_sides`, `neck`, `fingerboard`, `bow`, `strings`, `num`, `price`, `status`, `img`, `introduction`) VALUES
(1, 1, 'Conrad Götz Heritage Cantonate 136 Violin', 'Conrad Götz', 4, '雲杉木', '楓木', '楓木', '檀木', '', '', 1, 85000, 1, '17179413_800.jpg', 'Size: 4/4 ,Premium instrument ,Balanced throughout the entire sound spectrum ,Bottom, neck and sides made of European maple ,Top made of European spru'),
(2, 1, 'Stentor SR1500 Violin Student II 4/4', 'Stentor', 4, '銀杉', '楓木', '楓木', '烏木', '', '', 1, 7500, 1, '6746845.jpg', 'Size: 4/4 ,Solid spruce top ,Solid maple body ,Ebony pegs and fingerboard ,Hardwood chinrest ,Includes case and bow'),
(3, 1, 'Stentor SR1864 Verona Violin 4/4', 'Stentor', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 19000, 1, '16198621_800.jpg', 'Hand-crafted ,Solid spruce top ,Solid beautiful flamed maple sides ,Solid beautiful flamed maple bottom ,Solid maple neck ,Shellax painting ,Ebony fin'),
(4, 1, 'Stentor SR1542 Violin Graduate 4/4', 'Stentor', 4, '銀杉', '硬楓', '榆木', '烏木', '', '', 1, 9500, 1, '12809207_800.jpg', 'Size: 4/4 ,Solid spruce top ,Solid maple body ,Maple neck ,Ebony pegs and fingerboard ,Hardwood chinrest ,Metal tailpiece with 4 fine tuners ,Nylon st'),
(5, 1, 'Franz Sandner Jubilee Orchestra Violin 4/4', 'Franz Sandner', 4, '雲杉木', '楓木', '榆木', '烏木', '', '', 1, 39000, 1, '10617291_800.jpg', 'Size: 4/4,Produced for the 90-year company anniversary of Franz Sandner,German style,Stradivari model,Flamed maple back,Solid spruce top,Ebony fitting'),
(6, 1, 'Conrad Götz Signature Bohemia 108 Violin', 'Conrad Götz', 4, '雲杉木', '榆木', '榆木', '烏木', '', '', 1, 43000, 1, '15104143_800.jpg', 'Size: 4/4 ,Noticeably easier playability and optimised resonance behaviour ,10-15% less weight ,Optimised weight distribution ,Thinner and more elegan'),
(7, 1, 'Yamaha V 20 G Violin 4/4', 'Yamaha', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 55000, 1, '862239_800.jpg', 'Solid wood Guarneri model,Top: Solid spruce,Back: Solid, beautifully flamed maple back,Applied by hand, shaded oil-finish,Fingerboard: Ebony,Tuning pe'),
(8, 1, 'Karl Höfner Guadagnini 4/4 Violin Outfit', 'Karl Höfner', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 58000, 1, '12235832_800.jpg', 'Karl Höfner H115-BG-V 4/4 violin ,Guadagnini model ,Instrument for high demands ,Handcrafted from selected European tone woods (spruce top, maple back'),
(9, 1, 'Yamaha V5 SC44 Violin 4/4', 'Yamaha', 4, '銀杉', '楓木', '楓木', '硬楓', '', '', 1, 15000, 1, '14389014_800.jpg', 'Solid wood,Hand-carved spruce top,Maple back,Oil-based finish applied with a brush,Ebony fingerboard,Ebony pegs,Wittner tailpiece with fine tuners,Dad'),
(10, 1, 'Karl Höfner Presto 4/4 Violin Outfit', 'Karl Höfner', 4, '雲杉木', '硬楓', '硬楓', '烏木', '', '', 1, 32000, 1, '13571046_800.jpg', 'Size: 4/4 ,Karl Höfner H11E-V violin ,Solid wood ,Spruce top ,Back, sides and neck of lightly flamed maple ,Antique varnish with golden brown spirit v'),
(11, 1, 'Yamaha V10 SG 4/4 OV', 'Yamaha', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 46000, 1, '7405225_800.jpg', 'Solid wood Stradivari model V10G ,With case and bow ,Top: Solid spruce ,Back: Solid, beautifully flamed back ,Shaded, hand applied oil-based finish ,F'),
(12, 1, 'Karl Höfner Allegro 3/4 Violin Outfit', 'Karl Höfner', 3, '銀杉', '榆木', '榆木', '硬楓', '', '', 1, 25000, 1, '14362133_800.jpg', 'Size: 3/4 ,Karl Höfner H9-V violin ,Made completely of solid wood ,Premium flamed maple ,Selected spruce top ,Antique hand varnish based on natural re'),
(13, 1, 'Karl Höfner Presto 3/4 Violin Outfit', 'Karl Höfner', 3, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 30000, 1, '17663193_800.jpg', 'Size: 3/4,Spruce top,Slightly flamed maple back, sides and neck,Antique varnish with golden brown spirit varnish,Wittner fine-tuning tailpiece,D\'Addar'),
(14, 1, 'Rainer W. Leonhardt No. 100/2 Master Violin 4/4', 'Rainer W.', 4, '雲杉木', '榆木', '榆木', '檀木', '', '', 1, 130000, 1, '18346484_800.jpg', 'Size: 4/4,Made of high-quality aged tone woods,Solid spruce top,Flamed solid maple back and maple sides,Ebony fingerboard,Ebony tuning pegs,Ebony chin'),
(15, 1, 'Rainer W. Leonhardt No. 110/1 Master Violin 4/4', 'Rainer W.', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 113500, 1, '18526933_800.jpg', 'Size: 4/4 ,Made of high-quality aged tone woods ,Solid spruce top ,Flamed solid maple back and maple sides ,Ebony fingerboard ,Boxwood tuning pegs ,Bo'),
(16, 1, 'Gewa Ideale Violin 4/4', 'Gewa', 4, '雲杉木', '榆木', '榆木', '烏木', '', '', 1, 9800, 1, '17447488_800.jpg', 'Size: 4/4 ,Fully solid violin made of European tonewoods ,Medium flamed ,Solid European spruce top ,Solid European maple back and sides ,Ebony fingerb'),
(17, 1, 'Gewa Germania 11 Paris Ant. Violin', 'Gewa', 4, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 30000, 1, '16115651_800.jpg', 'Size: 4/4 ,Selected spruce top, worked on for tonal quality ,Sides and bottom made of selected European sycamore maple ,Ebony fittings ,Wittner fine t'),
(18, 1, 'Gewa Maestro 6 Antiqued Violin 3/4', 'Gewa', 3, '銀杉', '楓木', '楓木', '烏木', '', '', 1, 18000, 1, '13780886_800.jpg', 'Size: 3/4 ,Top: Solid spruce ,Solid maple body ,Flamed bottom ,Ebony fingerboard (Diospyros crassiflora) ,Ebony pegs (Diospyros crassiflora) ,Fine tun'),
(19, 1, 'Yamaha V7 SG34 Violin 3/4 B-Stock', 'Yamaha', 3, '銀杉', '楓木', '楓木', '檀木', '', '', 1, 23000, 1, '111069.jpg', 'Built completely out of solid wood,Hand-carved spruce top,Maple back,With brush applied oil paint,Fretboard: Ebony,Wittner fine tuning tailpiece,Dadda'),
(20, 2, 'Roth & Junius RJVC Violin Case Legato 4/4', 'Roth & Junius', 4, '', '', '', '', '', '', 1, 2300, 1, '18878532_800.jpg', 'Suitable for 4/4 violin,Sturdy rectangular violin case with 2 accessory compartments,Shell / Core made of plywood,Suspension system Hygrometer,4 Swive'),
(21, 2, 'Roth & Junius RJVC Violin Case Grandioso 4/4', 'Roth & Junius', 4, '', '', '', '', '', '', 1, 3000, 1, '18878647_800.jpg', 'Extremely sturdy rectangular violin case with 3 accessory compartments, equipped to the highest standard ,Shells / core made of plywood ,Suspension sy'),
(22, 2, 'Gewa Pure Violin Case 2.4 GY 4/4', 'Gewa', 4, '', '', '', '', '', '', 1, 8400, 1, '14453644_800.jpg', 'Rectangular violin case ,Outer shell made of polycarbonate ,Padded suspension system ,Flexible Gewa bow bridge ,Gewa swivel-type bow holder ,Removable'),
(23, 3, 'Roth & Junius RJSW-01S Snakewood Violin Bow', 'Roth & Junius', 4, '', '', '', '', '蛇紋木', '', 1, 4100, 1, '273873.jpg', 'Silver-wrapped violin bow with round snakewood stick and snakewood frog ,Wood grain may vary'),
(24, 3, 'Karl Höfner H8/4 C 4/4 Cello Bow', 'Karl Höfner', 4, '', '', '', '', '烏木', '', 1, 13000, 1, '247536.jpg', 'Pernambuco stick, round ,Nickel silver mounting ,Ebony frog with simple eye ,Capsule button'),
(25, 3, 'Artino Violin Bow 4/4 Special Edition', 'Artino', 4, '', '', '', '', '烏木', '', 1, 1000, 1, '14984505_800.jpg', 'Special Edition for Thomann ,Fiberglass rod ,Ebony frog ,Nickel mountings'),
(26, 4, 'Cecilia Violin Rosin Sanctus', 'Cecilia', 0, '', '', '', '', '', '', 1, 2300, 1, '16228436_800.jpg', 'Consists of a harder outer layer with a softer inner core ,Incl. Cecilia Rosin Spreader'),
(27, 4, 'Gewa Rosin Karwendel', 'Gewa', 0, '', '', '', '', '', '', 1, 80, 1, '9712940_800.jpg', 'Resin from Karwendel ,In cork cover'),
(28, 4, 'Cecilia Violin Rosin Small Solo', 'Cecilia', 0, '', '', '', '', '', '', 1, 1000, 1, '16222601_800.jpg', 'For a pure, clean and defined sound ,High dynamic range ,Ideal for soloists and large halls ,Each piece Andrea Rosin Kolofon is handmade from finest i'),
(29, 4, 'Leatherwood Bespoke Rosin Violin Supple', 'Leatherwood', 0, '', '', '', '', '', '', 1, 2400, 1, '16783429_800.jpg', 'Mixture: Supple ,For soft and full response and a warm, radiant tone'),
(30, 4, 'Cecilia Violin Signature Formula', 'Cecilia', 0, '', '', '', '', '', '', 1, 1900, 1, '15328097_800.jpg', 'Unique bowing experience with a clearly defined articulation ,Full, rich tone without too much grip ,Produced by using a new liquid mixing method ,Eac'),
(31, 3, 'Artino Violin Bow 3/4 Special Edition', 'Artino', 0, '', '', '', '', '烏木', '', 1, 1000, 1, '10079215_800.jpg', 'Special Edition for Thomann ,Fiberglass stick ,Ebony frog ,Nickel mountings'),
(32, 1, 'Stentor SR1500 Violin Student II 3/4', 'Stentor', 3, '雲杉木', '楓木', '楓木', '烏木', '', '', 1, 7300, 1, '', 'Size: 3/4 ,Model: Student II ,Solid spruce top ,Solid maple body ,Pegs & fingerboard made of ebony (Diospyros crassiflora) ,Chin rest made of hardwood');

-- --------------------------------------------------------

--
-- 資料表結構 `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(2) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `type`) VALUES
(1, '小提琴'),
(2, '小提琴盒'),
(3, '提琴弓'),
(4, '松香'),
(5, '譜架');

-- --------------------------------------------------------

--
-- 資料表結構 `product_like`
--

CREATE TABLE `product_like` (
  `pd_like_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `product_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product_like`
--

INSERT INTO `product_like` (`pd_like_id`, `user_id`, `product_id`) VALUES
(1, 5, 5),
(2, 10, 10);

-- --------------------------------------------------------

--
-- 資料表結構 `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(2) NOT NULL,
  `name` varchar(10) NOT NULL,
  `img` varchar(30) DEFAULT NULL,
  `introduction` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `img`, `introduction`) VALUES
(1, '林汶熹', 'Lin Wenxi.img', '關於老師,學歷,倫敦聖三一音樂學院 小提琴演奏文憑 ATCL,英國皇家音樂學院 樂理 8級,教學年資,7 年,曾獲獎項,比利時青年音樂節 弦樂小組 二等獎 （團體）,音樂教學經驗，2013-現在 私人學生 (小提琴導師),2015-2020 禮頓琴行 (小提琴導師),2016-現在 樂藝教育琴行 ('),
(2, '伍俊彥', 'Wu Junyan.img', '關於老師,學歷,倫敦聖三一音樂學院 樂理文憑 AmusTCL,倫敦聖三一音樂學院演奏專業文憑 LTCL 鋼琴,教學年資,10 年,曾獲獎項,第八屆香港國際青少年表演藝術節(香港賽區)傑出教師獎,音樂教學經驗,2009-現在 軒尼詩道官立小學 (小提琴導師),2000-2012 九龍城聖三一堂小學、沙'),
(3, '黃俊賢', 'Huang Junxian.img', '關於老師,學歷,美國德克薩斯大學(阿靈頓)小提琴演奏碩士,教學年資,13 年,音樂教學經驗,現時, 他致力於小提琴教育, 擁有超過十年的教學經驗, 於不同的學校及音樂機構擔任小提琴導師, 以及弦樂團導師, 亦於不同的場地及活動提供現場音樂演奏。'),
(4, '徐梓靈', 'Xu Ziling.img', '關於老師,學歷,英國哈德斯菲爾德大學音樂系學士,教學年資,7 年,音樂教學經驗,2013 - 現在 私人教授 (小提琴導師),2018 - 現在 Artus Piano Studio (小提琴導師),2018 - 現在 北角玩樂studio (小提琴導師),2018 - 現在 聖公會九龍灣基樂小學 '),
(5, '楊宇思', 'Yang Yusi.img', '關於老師,學歷,奧地利莫札特音樂藝術大學博士、碩士及學士學位(主修小提琴獨奏),教學年資,15 年,曾獲獎項,歐洲多項賽事獲獎者,音樂教學經驗,2009-現在 Moz Conservatory, HK'),
(6, '陳宛昀', 'Chen Wanyun.img', '關於老師,學歷,香港大學學士(主修音樂、副修語言學),教學年資,12 年,音樂教學經驗,2008-現在 私人教學'),
(7, '彭智軒', 'Peng Zhixuan.img', '關於老師,學歷,香港浸會大學音樂系(主修作曲),倫敦聖三一音樂學院 小提琴演奏專業文憑 LTCL,教學年資,9 年,音樂背景,曾獲獎項,第五十八屆香港校際音樂節二重奏第二名,第五十九屆香港校際音樂節七級第三名,音樂教學經驗,2018-現在 中華基督教會基華小學 (小提琴班導師),2018-現在 沙田'),
(8, '張俊文', 'Zhang Junwen.img', '關於老師,學歷,香港教育大學音樂教育榮譽學士(當代音樂及演奏教育學),教學年資,12 年,音樂教學經驗,從2019 博愛醫院八十週年鄧英喜中學 (Acappella導師),從2020 中華基督教青年會小學 (小提琴導師),從2021 裘錦秋中學 元朗 (Acappella導師)'),
(9, '薛皓名', 'Xue Haoming.img', '關於老師,學歷,香港教育大學音樂教育學士(主修小提琴),教學年資,4 年,音樂教學經驗,2021-現在 貝多芬音樂藝術學院 (小提琴導師),2021-現在 傳奇音樂及藝術中心 (小提琴導師),2021-現在 雅詩琴行 (小提琴導師)'),
(10, '何偉林', 'He Weilin.img', '關於老師,學歷,倫敦聖三一音樂學院 小提琴演奏專業文憑 LTCL,倫敦聖三一音樂學院 中提琴演奏專業文憑 LTCL,教學年資,12 年,音樂教學經驗,2015-2019 音樂家 symphony music(小提琴導師),2017-現在 Jacklyn Chan Music Academy (小提琴'),
(11, '林立衡', 'Lin Liheng.img', '關於老師,學歷,倫敦聖三一音樂學院 樂理文憑 AmusTCL,英國皇家音樂學院 8級小提琴,教學年資,16 年,曾獲獎項,第62屆香港校際音樂節西樂作曲公開組冠軍及榮譽獎,音樂教學經驗,2016-現在 小童群益會（華富）（小提琴班導師）,2017-現在 九龍塘官立小學（小提琴導師）,2016-現在 '),
(12, '梁晉偉', 'Liang Jinwei.img', '關於老師,學歷,倫敦聖三一音樂學院 小提琴演奏文憑 ATCL,教學年資,10 年,音樂教學經驗,2013-現在 私人教授 (小提琴導師及中提琴導師),2013-現在 演藝教室 (小提琴導師),2016-現在 青苗琴行 (小提琴導師)'),
(13, '大師班團體', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `name` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `birth` date NOT NULL,
  `valid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_id`, `name`, `account`, `password`, `phone`, `email`, `level`, `birth`, `valid`) VALUES
(1, '吳慧安', 'Rm10Hi1Fuo', '12345', '0943785943', 'Rm10Hi1Fuo@gmail.com', '1年以下', '2000-11-04', 1),
(2, '羅展瑄', 'h8IsoBqoJy7moG', '456789', '0900195564', 'h8IsoBqoJy7moG@gmail.com', '3~5年', '2001-03-23', 1),
(3, '王傑來', 'wclC0MJUDRo5f', 'ABC123', '0913643400', 'wclC0MJUDRo5f@gmail.com', '1~3年', '1997-11-23', 1),
(4, '蔡彥君', 'RDXQS4x', 'RDXQS4x', '0917348709', 'RDXQS4x@gmail.com', '3~5年', '1986-06-06', 1),
(5, '黃建志', 'DwoB07', 'DwoB07', '0932264220', 'DwoB07@gmail.com', '1年以下', '1985-04-01', 1),
(6, '張彥廷', 'Xc9SuY', 'Xc9SuY', '0934991676', 'Xc9SuY@gmail.com', '10年以上', '2002-08-17', 1),
(7, '劉貴傑', 'I0Kd4eueB', 'I0Kd4eueB', '0932659022', 'I0Kd4eueB@gmail.com', '1~3年', '1970-02-13', 1),
(8, '陳淑貞', 'IwYiIGG7mJv', 'IwYiIGG7mJv', '0927736559', 'IwYiIGG7mJv@gmail.com', '3~5年', '1965-08-09', 1),
(9, '周樂信', 'LPpUqW92', 'LPpUqW92', '0986448499', 'LPpUqW92@gmail.com', '1年以下', '2003-12-14', 1),
(10, '陳政祥', 'HeaxPuD', 'HeaxPuD', '0987117567', 'HeaxPuD@gmail.com', '10年以上', '2005-09-15', 1),
(11, '吳嘉惠', 'CsI5Ah', 'CsI5Ah', '0986718802', 'CsI5Ah@gmail.com', '1年以下', '1987-08-02', 1),
(12, '李仁杰', 'ApYNmDAu1K', 'ApYNmDAu1K', '0912562739', 'ApYNmDAu1K@gmail.com', '1年以下', '1987-07-15', 1),
(13, '張英傑', 'Oy6k6NVVb', 'Oy6k6NVVb', '0931564356', 'Oy6k6NVVb@gmail.com', '10年以上', '1994-06-21', 1),
(14, '林鳳男', 'JGZfAYwy', 'JGZfAYwy', '0928767508', 'JGZfAYwy@gmail.com', '3~5年', '1975-04-20', 1),
(15, '楊心怡', 'Q3hYSzsFJ', 'Q3hYSzsFJ', '0934523736', 'Q3hYSzsFJ@gmail.com', '1年以下', '1999-09-29', 1),
(16, '謝貞儀', 'SQ3ADo2gf', 'SQ3ADo2gf', '0968933511', 'SQ3ADo2gf@gmail.com', '3~5年', '2002-02-12', 1),
(17, '許雅桂', 'Phf9ij7HLEi0', 'Phf9ij7HLEi0', '0918635052', 'Phf9ij7HLEi0@gmail.com', '1~3年', '2000-05-09', 1),
(18, '洪書豪', 'QRi64vyWZ2sQ', 'QRi64vyWZ2sQ', '0938470302', 'QRi64vyWZ2sQ@gmail.com', '3~5年', '1970-10-17', 1),
(19, '白美玲', 'JQU15', 'JQU15', '0915946180', 'JQU15@gmail.com', '1年以下', '1989-01-23', 1),
(20, '黃秀發', 'YWdsjwJvCJpT', 'YWdsjwJvCJpT', '0926315998', 'YWdsjwJvCJpT@gmail.com', '1~3年', '2004-01-31', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `us_discount`
--

CREATE TABLE `us_discount` (
  `us_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `discount_id` int(2) NOT NULL,
  `order_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `us_discount`
--

INSERT INTO `us_discount` (`us_id`, `user_id`, `discount_id`, `order_id`) VALUES
(1, 1, 1, 2024010102);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_category_id` (`course_category_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- 資料表索引 `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`course_category_id`);

--
-- 資料表索引 `course_like`
--
ALTER TABLE `course_like`
  ADD PRIMARY KEY (`c_like_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- 資料表索引 `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- 資料表索引 `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`imgs_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `learned_piece`
--
ALTER TABLE `learned_piece`
  ADD PRIMARY KEY (`learned_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `track_id` (`piece_id`);

--
-- 資料表索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `piece`
--
ALTER TABLE `piece`
  ADD PRIMARY KEY (`piece_id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- 資料表索引 `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- 資料表索引 `product_like`
--
ALTER TABLE `product_like`
  ADD PRIMARY KEY (`pd_like_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 資料表索引 `us_discount`
--
ALTER TABLE `us_discount`
  ADD PRIMARY KEY (`us_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5103;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_category`
--
ALTER TABLE `course_category`
  MODIFY `course_category_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_like`
--
ALTER TABLE `course_like`
  MODIFY `c_like_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgs_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `learned_piece`
--
ALTER TABLE `learned_piece`
  MODIFY `learned_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1979;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `piece`
--
ALTER TABLE `piece`
  MODIFY `piece_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_like`
--
ALTER TABLE `product_like`
  MODIFY `pd_like_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `us_discount`
--
ALTER TABLE `us_discount`
  MODIFY `us_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`course_category_id`) REFERENCES `course_category` (`course_category_id`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- 資料表的限制式 `course_like`
--
ALTER TABLE `course_like`
  ADD CONSTRAINT `course_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `course_like_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- 資料表的限制式 `imgs`
--
ALTER TABLE `imgs`
  ADD CONSTRAINT `imgs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- 資料表的限制式 `learned_piece`
--
ALTER TABLE `learned_piece`
  ADD CONSTRAINT `learned_piece_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `learned_piece_ibfk_2` FOREIGN KEY (`piece_id`) REFERENCES `piece` (`piece_id`);

--
-- 資料表的限制式 `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 資料表的限制式 `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`product_category_id`);

--
-- 資料表的限制式 `product_like`
--
ALTER TABLE `product_like`
  ADD CONSTRAINT `product_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `product_like_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- 資料表的限制式 `us_discount`
--
ALTER TABLE `us_discount`
  ADD CONSTRAINT `us_discount_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `us_discount_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`),
  ADD CONSTRAINT `us_discount_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
