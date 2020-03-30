-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 10 月 18 日 16:13
-- 伺服器版本: 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `calendar`
--

-- --------------------------------------------------------

--
-- 資料表結構 `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`, `name`, `sex`) VALUES
(32, 'T1會談室', '#f76bef', '2018-10-03 18:00:00', '2018-10-03 20:00:00', '李欣茹', '♀'),
(33, 'A1諮詢室', '#FF8C00', '2018-10-03 10:00:00', '2018-10-03 12:00:00', '林珍妮', '♀'),
(34, 'A1諮詢室', '#40E0D0', '2018-10-03 14:00:00', '2018-10-03 16:00:00', '林珍妮', '♂'),
(35, 'A2諮詢室', '#40E0D0', '2018-10-03 14:00:00', '2018-10-03 16:00:00', '林珍妮', '♂'),
(36, 'T1會談室', '#f76bef', '2018-10-05 18:00:00', '2018-10-05 20:00:00', '李欣茹', '♀'),
(37, 'A1諮詢室', '#FF8C00', '2018-10-05 10:00:00', '2018-10-05 12:00:00', '林珍妮', '♀'),
(38, 'A1諮詢室', '#FF8C00', '2018-10-05 14:00:00', '2018-10-05 16:00:00', '林珍妮', '♀'),
(39, 'T1會談室', '#FF8C00', '2018-10-07 10:00:00', '2018-10-07 12:00:00', '林儀婷', '♀'),
(40, 'T2會談室', '#40E0D0', '2018-10-12 15:00:00', '2018-10-12 17:00:00', '林蓁欣', '♀'),
(41, 'A2諮詢室', '#f76bef', '2018-10-15 19:00:00', '2018-10-15 21:00:00', '林珍妮', '♀'),
(42, 'T1會談室', '#40E0D0', '2018-10-23 15:00:00', '2018-10-23 17:00:00', '李小萍', '♀'),
(43, 'T2會談室', '#FF8C00', '2018-10-17 07:00:00', '2018-10-17 10:00:00', '林靜怡', '♀'),
(44, 'T1會談室', '#FF8C00', '2018-10-28 10:00:00', '2018-10-28 12:00:00', '鄭欣宜', '♀'),
(45, 'T2會談室', '#40E0D0', '2018-10-28 14:00:00', '2018-10-28 16:00:00', '李怡真', '♂'),
(46, 'A1諮詢室', '#f76bef', '2018-10-29 19:00:00', '2018-10-29 21:00:00', '林珍妮', '♀'),
(47, 'A2諮詢室', '#40E0D0', '2018-10-29 14:00:00', '2018-10-29 16:00:00', '林珍妮', '♀');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
