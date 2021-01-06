-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 09:23 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaheen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Ai-Shaheen', '', '', 'admin@shaheen.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1574537538'),
(2, 'Mr. Accountant', '017', 'Dhaka', 'accountant@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr Manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  `image_ext` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', 'ok', '', '.jpg'),
(2, 'home', 'after_slider', '2', 'ok', '', '.jpg'),
(3, 'home', 'after_slider', '3', 'ok', '', '.jpg'),
(4, 'home', 'after_slider', '4', '0', '', '.jpg'),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `summery` varchar(1000) DEFAULT NULL,
  `author` varchar(500) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `description` longtext,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;</span><br></p>', 'mr.tom', '2016-09-25', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><span [removed]=\"text-align: justify;\"><br></span><span [removed]=\"\" justify;\"=\"\"><br></span><br></p>', NULL, '2', 1),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is&nbsp;</span><br></p>', 'mr. viza', '2016-09-24', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><p><br></p>', NULL, '2', 1),
(4, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', '', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '3', 1),
(5, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span></p>', '', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '2', 1),
(6, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '3', 0),
(7, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '1', 1),
(8, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '1', 0);
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(9, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '1', 1),
(10, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '4', 0),
(11, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '4', 1),
(12, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-04', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1),
(13, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1),
(14, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(1, 'Health'),
(2, 'Beauty'),
(3, 'Sports'),
(4, 'Foods and beverages'),
(5, 'Science & Tech'),
(6, 'Electronic');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `logo` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_stock`
--

CREATE TABLE `bundle_stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `product_bundle` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bundle_stock`
--

INSERT INTO `bundle_stock` (`stock_id`, `type`, `product_bundle`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '101', '4', '999.00', '3996', '', '1521357279', NULL, NULL),
(2, 'destroy', '101', '5', NULL, '4995', '', '1521357287', NULL, NULL),
(3, 'add', '102', '9', '120.00', '1080', '', '1521606561', NULL, NULL),
(4, 'destroy', '102', '2', NULL, '240', '', '1521610522', NULL, NULL),
(5, 'add', '102', '12', '120.00', '1440', '', '1521616802', NULL, NULL),
(6, 'add', '123', '30', '14.99', '449.7', '', '1522921498', NULL, NULL),
(7, 'add', '122', '20', '80.00', '1600', '', '1522921821', NULL, NULL),
(8, 'add', '121', '15', '499.00', '7485', '', '1522922093', NULL, NULL),
(9, 'add', '120', '11', '1199.00', '13189', '', '1522922900', NULL, NULL),
(10, 'add', '118', '29', '39.99', '1159.71', '', '1522923029', NULL, NULL),
(11, 'add', '117', '39', '249.99', '9749.61', '', '1522923088', NULL, NULL),
(12, 'add', '116', '11', '15.99', '175.89000000000001', '', '1522923244', NULL, NULL),
(13, 'add', '119', '30', '1099.00', '32970', '', '1522923499', NULL, NULL),
(14, 'add', '115', '49', '25.59', '1253.91', '', '1522923556', NULL, NULL),
(15, 'add', '114', '49', '139.00', '6811', '', '1522923574', NULL, NULL),
(16, 'add', '102', '80', '24.99', '1999.1999999999998', '', '1522923749', NULL, NULL),
(17, 'add', '113', '30', '15.00', '450', '', '1522923771', NULL, NULL),
(18, 'add', '126', '50', '23.00', '1150', '', '1523942068', NULL, NULL),
(19, 'add', '163', '20', '7000.00', '140000', '', '1524845958', NULL, NULL),
(20, 'add', '163', '22', '7000.00', '154000', 'nothing', '1524904062', NULL, NULL),
(21, 'destroy', '163', '2', NULL, '14000', '', '1524905432', NULL, NULL),
(22, 'destroy', '163', '2', NULL, '14000', '', '1524910766', NULL, NULL),
(23, 'add', '179', '500', '99.00', '49500', '', '1530436948', NULL, NULL),
(24, 'add', '123', '500', '300.00', '150000', '', '1531643194', NULL, NULL),
(25, 'add', '122', '500', '80.00', '40000', '', '1531643204', NULL, NULL),
(26, 'add', '121', '100', '499.00', '49900', '', '1531643213', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'paypal@mail.com'),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '27'),
(6, 'shipment_info', '', '<p><span style=\"line-height: 17.1429px;\">&nbsp;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{\"question\":\"How to install the script?\",\"answer\":\"<p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"padding: 0px;\\\"><span id=\\\"docs-internal-guid-f5a12cba-cd69-9b16-f96d-28e5d9a3f80f\\\" style=\\\"\\\">Please follow the following procedure to install this script in local or, online server:<\\/span><\\/p><p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"margin-bottom: 24px; padding: 0px; text-align: justify;\\\"><span style=\\\"vertical-align: baseline;\\\"><\\/span><\\/p><ol open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;\\\"=\\\"\\\" style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.4;\\\">Upload the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;&nbsp;file downloaded from CodeCanyon to your server in the public_html or, any other directory you intend the script to run.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Extract the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">file in that directory.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create a&nbsp;<span style=\\\"vertical-align: baseline;\\\">new database<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;from your server&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">MySQL<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;with&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">PhpMyAdmin<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create&nbsp;<span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;to the database and link that database to the&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Go to the URL of the unzipped folder.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Make sure the required files are permitted&nbsp;<span style=\\\"vertical-align: baseline;\\\">writeable<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;in the folder you put them and all the requirements are fulfilled by the server environment.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Fill up these Installation form with your&nbsp;<span style=\\\"vertical-align: baseline;\\\">database hostname<\\/span><span style=\\\"vertical-align: baseline;\\\">,&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database username<\\/span><span style=\\\"vertical-align: baseline;\\\">, &nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database password<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;and&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database name<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;respectively which you have created in the previous step.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Provide your default admin credentials in the form.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Click on \\u201c<span style=\\\"vertical-align: baseline;\\\">Install Supershop<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d and wait for the installation to complete.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Links to \\u201c<span style=\\\"vertical-align: baseline;\\\">Activation Form<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d, \\\"Admin Panel and the \\\"Frontend\\\" of the site will appear. First, activate the license for your online domain and then browse in it. Admin login URL will be&nbsp;your_site\\/index.php\\/admin<\\/span><\\/li><\\/ol>\"},{\"question\":\"How to setup Business setup?\",\"answer\":\"<ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; text-align: justify;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log into <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin Panel<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, Go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">We have divided the whole Vendor Management into 3 parts to simplify the system so that anyone can understand the processes completely. These &nbsp;3 parts are described as Vendor List, Vendor Payments &amp; Vendor Packages.<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor List: <\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Total list of the vendors are shown in a table from where this list can be downloaded in pdf, xls or clv file format. Admin can search for any specific vendor from the search box available in the table.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the list Admin can view a short described profile of the vendors. Admin can approve newly registered vendors and can also postpone the vendors to log in.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can pay to vendor a certain amount to money which are sold through the online payment methods. Admin will not pay to vendor for those products which are sold on cash on delivery method.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any vendor from the list.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Payments:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">A list of vendors are shown who have upgraded their package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can check payment details.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any payment.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Package: <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin can create, edit &amp; delete vendor packages from here. Admin can also download the package list in pdf, csv or xls file format and can search for specific vendor package. Process of creating a vendor package:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log in<\\/span><span style=\\\"vertical-align: baseline;\\\"> to the Admin Panel &nbsp;using email &amp; password.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\"> where you can see a table of <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List <\\/span><span style=\\\"vertical-align: baseline;\\\">which are created before.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Above the vendor package list, click on the button named \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Create Vendorship<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 to create the vendor package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Fill up the form by giving the proper <\\/span><span style=\\\"vertical-align: baseline;\\\">title <\\/span><span style=\\\"vertical-align: baseline;\\\">of the vendor package, set the no. of <\\/span><span style=\\\"vertical-align: baseline;\\\">maximum products<\\/span><span style=\\\"vertical-align: baseline;\\\"> a vendor can upload of this package, define a <\\/span><span style=\\\"vertical-align: baseline;\\\">price<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package, set the <\\/span><span style=\\\"vertical-align: baseline;\\\">duration of expiration<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package and select a vendor package <\\/span><span style=\\\"vertical-align: baseline;\\\">seal<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Click the \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Save<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button to create the vendor package.<\\/span><\\/p><\\/li><\\/ol><\\/ol><\\/ol><p style=\\\"margin-bottom: 24px; padding: 0px;\\\"><span style=\\\"vertical-align: baseline;\\\">The newly created package will be shown on the <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List (<\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\">)<\\/span><span style=\\\"vertical-align: baseline;\\\"> table where you can <\\/span><span style=\\\"vertical-align: baseline;\\\">Edit &amp; Delete<\\/span><span style=\\\"vertical-align: baseline;\\\"> the package.<\\/span><\\/p>\"},{\"question\":\"How to Purchase a Product?\",\"answer\":\"<ol style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.6;\\\">Click on the \\u2018<span style=\\\"vertical-align: baseline;\\\">Add to cart<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button of any product which you want to purchase.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">The products which are added to cart will be in the right side of middle header portion.<br><\\/li><li style=\\\"line-height: 1.6;\\\">From there, go to&nbsp;<span style=\\\"vertical-align: baseline;\\\">checkout<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;page.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Log in<span style=\\\"vertical-align: baseline;\\\">&nbsp;to your account using authenticated email &amp; password or you can login through social media(facebook &amp; google plus). If you already logged in, follow the next step.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">In the checkout page, you can apply the&nbsp;<span style=\\\"vertical-align: baseline;\\\">coupon&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">if it is provided to you. Then click \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Enter the address where you want to deliver your products. Then click \\u2018<span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Choose your&nbsp;<span style=\\\"vertical-align: baseline;\\\">payment method<\\/span><span style=\\\"vertical-align: baseline;\\\">. Then Place your order.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Complete the payment using your paypal or stripe account.<br><\\/li><li style=\\\"line-height: 1.6;\\\">System will generate an&nbsp;<span style=\\\"vertical-align: baseline;\\\">invoice&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">for your purchase. You can print the invoice.<\\/span><\\/li><\\/ol>\"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'no'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'home_def_currency', '', '27'),
(17, 'c2_set', NULL, 'no'),
(18, 'c2_user', NULL, '901378053'),
(19, 'c2_secret', NULL, '8677E1C0-7CB9-4D35-A513-05CA089B5E70'),
(20, 'c2_type', NULL, 'demo'),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, 'ok'),
(25, 'vp_merchant_id', NULL, 'DEMO'),
(26, 'pum_set', NULL, 'ok'),
(27, 'pum_merchant_key', NULL, 'RR2LThlB'),
(28, 'pum_merchant_salt', NULL, '3M85o3dezx'),
(29, 'pum_account_type', NULL, 'sandbox'),
(30, 'commission_set', NULL, 'yes'),
(31, 'commission_amount', NULL, '30'),
(32, 'ssl_store_id', NULL, 'techr5affa68a7602c'),
(33, 'ssl_store_passwd', NULL, 'techr5affa68a7602c@ssl'),
(34, 'ssl_type', NULL, 'sandbox'),
(35, 'ssl_set', NULL, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `category_name_ar` varchar(250) NOT NULL,
  `description` longtext,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext,
  `data_brands` longtext,
  `data_vendors` longtext,
  `data_subdets` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_name_ar`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(1, 'Indoor Plants', 'indoor plants ar', NULL, NULL, 'category_1.jpg', '', '', '[]'),
(2, 'Seeds', 'seeds ar', NULL, NULL, 'category_2.jpg', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0qbh47prhrpta06ocn9rkmtna7a7nea6', '::1', 1576146245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363134343733373b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2239223b757365725f6e616d657c733a343a2244656d6f223b636f75706f6e65727c733a303a22223b),
('kahfk1f9519o72508bc5e6875eeo339g', '::1', 1576146285, 0x63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2233223b757365725f6e616d657c733a383a22437573746f6d6572223b5f5f63695f6c6173745f726567656e65726174657c693a313537363134333938393b636f75706f6e65727c733a303a22223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Barrett Shepard', NULL, 'zape@gmail.com', '', '1444834552', 'no', NULL, NULL),
(2, 'aasdfs', 'aaaa', 'amit@gmail.com', 'aaaaa', '1469697073', 'no', NULL, NULL),
(3, 'aaa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469697207', 'no', NULL, NULL),
(4, 'aaa', 'aaa', 'akibtanjim@gmail.com', 'aaaa', '1469697281', 'no', NULL, NULL),
(5, 'aa', 'aaa', 'aaa', 'aaaaa', '1469697490', 'no', NULL, NULL),
(6, 'aasdfs', 'aaa', 'amit@gmail.com', 'aaaaa', '1469702141', 'no', NULL, NULL),
(7, 'aasdfs', 'aaaa', 'akibtanjim@gmail.com', 'aaaa', '1469702304', 'no', NULL, NULL),
(8, 'aaa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702377', 'no', NULL, NULL),
(9, 'aa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702519', 'no', NULL, NULL),
(10, 'aaa', 'aaaaaaaaaaaaaa', 'amit@gmail.com', 'aaaaaa', '1469702546', 'no', NULL, NULL),
(11, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702614', 'no', NULL, NULL),
(12, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702701', 'no', NULL, NULL),
(13, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702813', 'no', NULL, NULL),
(14, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702857', 'no', NULL, NULL),
(15, 'aaa', 'aaa', 'aaarnob1', 'aaaaa', '1469702988', 'no', NULL, NULL),
(16, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703183', 'no', NULL, NULL),
(17, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703210', 'no', NULL, NULL),
(18, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469705865', 'no', NULL, NULL),
(19, 'a', 'a', 'amit@gmail.com', 'a', '1469705951', 'no', NULL, NULL),
(20, 'aa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469706769', 'no', NULL, NULL),
(21, 'Ciara Ware', 'Quae porro ea possimus nesciunt beatae sint officiis nostrum recusandae At debitis accusamus rerum praesentium iusto reprehenderit alias culpa', 'labov@yahoo.com', 'Est sit, quidem dolore assumenda ut repellendus. Minus id sunt, odio magna eos, aute quia qui minim.', '1473304147', 'no', NULL, NULL),
(22, 'Tom', 'check', 'demovendor.tom@gmail.com', 'message check', '1475561140', 'no', 'checked', NULL),
(23, 'Geoffrey Bass', 'Laborum mollit et voluptas explicabo Quo similique', 'jusakos@hotmail.com', 'Dolorum tempore, nesciunt, nisi atque expedita distinctio. Nesciunt, natus exercitationem vel mollitia.', '1475693105', 'no', NULL, NULL),
(24, 'Aimee Spears', 'Atque quas dolore ducimus assumenda qui totam aliquip perferendis fugiat cupidatat', 'wyre@yahoo.com', 'Pariatur Veritatis asperiores ad dolore maxime', '1518017646', 'no', NULL, NULL),
(25, 'Hilda Sandoval', 'Excepturi voluptatum inventore dolor soluta blanditiis fugit', 'gusyse@yahoo.com', 'Quia et qui nisi facilis voluptatem aliquam reiciendis dolorem provident exercitation consequuntur magnam cumque qui et consectetur voluptatem Fugit dolorem7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777', '1518017688', 'no', NULL, NULL),
(26, 'Sam', 'kpkpk', 'hridoymahmud71@gmail.com', 'heypp', '1553683281', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.2762', 'ok', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'ok', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'ok', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'ok', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'ok', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'ok', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.8264', 'ok', 'HKD', '7.8264'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'ok', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'ok', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'ok', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'ok', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'ok', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'ok', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'ok', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'ok', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'ok', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'ok', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '55.929', 'ok', 'RUB', '55.929'),
(22, 'Singapore Dollar', '$', '1.3198', 'ok', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'ok', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'ok', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'ok', 'THB', '1'),
(27, 'Kuwaiti dinar', 'KWD', '1', 'ok', 'KWD', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_product_id` int(11) NOT NULL,
  `rating_num` decimal(20,2) NOT NULL DEFAULT '0.00',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext,
  `title` longtext,
  `added_by` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext,
  `prod_condition` varchar(10) DEFAULT NULL,
  `location` longtext,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext,
  `tag` longtext,
  `status` longtext,
  `admin_status` varchar(10) DEFAULT NULL,
  `front_image` longtext,
  `brand` longtext,
  `unit` longtext,
  `additional_fields` longtext,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext,
  `color` longtext,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `is_sold` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext,
  `subject` longtext,
  `body` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">You recently requested a new password. We\'ve received the request and your password has been changed.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]<br></span></p><p><span [removed]=\"font-weight: bold;\">Your new password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site. Your account&nbsp;has been [[status]]. Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(7, 'Vendor Registration Email To Admin', 'Vendor Registration', '<p>Congratulation!</p><p>You have a new Registered Vendor in your sytem.</p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(9, 'Vendor Payment', 'Admin to Vendor Payment', '<p>Dear <span> [[vendor_name]] ,<br></span></p><p>You have received a new payment from <span>[[from]].</span></p><p><span [removed]=\"font-weight: bold;\">The Amount is : [[amount]].</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(8, 'Vendor Package Upgrade', 'Vendor Package Upgrade ', '<p>A vendor has updated their package. Details are given below.<br></p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span><br><span [removed]=\"font-weight: bold;\"><span>Package Name is : [[vendor_package]]</span></span></p><p><span [removed]=\"font-weight: bold;\"><span><span>Package Amount&nbsp; is : [[package_amount]]</span></span></span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Shaheen'),
(2, 'system_email', 'system@mail.com'),
(3, 'system_title', 'Shaheen'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', '384144461995754'),
(11, 'fb_secret', 'e8be929ace6deaf50d2a717834a03cc4'),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', 'e8be929ace6deaf50d2a717834a03cc4'),
(44, 'contact_about', '<p>about contact</p>'),
(39, 'contact_phone', '00-000-00000'),
(40, 'contact_email', 'contact@mail.com'),
(41, 'contact_website', 'www.yoursite.com'),
(42, 'footer_text', '<h4 xss=\"removed\">ADDRESS</h4><h5 xss=\"removed\">ALSHAHEEN NURSERIES AGRICULTURE AND FOOD CO.</h5><h4 xss=\"removed\"><p xss=\"removed\">P O Box : 22138 Safat<br xss=\"removed\">Kuwait Code : 13082</p><p xss=\"removed\">Tel : +965 24740140<br xss=\"removed\">Fax : +965 24713823</p></h4><h4 xss=\"removed\">PROJECTS DIVISION</h4><h4 xss=\"removed\"><p xss=\"removed\">Tel. : +965 99448022</p></h4><h4 xss=\"removed\">WHOLESALE DIVISION</h4><h4 xss=\"removed\"><p xss=\"removed\">Tel. : +965 99448122<br xss=\"removed\">Email : <a href=\"mailto:info@alshaheen.com.kw\" xss=\"removed\">info@alshaheen.com.kw</a></p></h4><h4 xss=\"removed\"></h4>'),
(43, 'footer_category', 'null'),
(38, 'contact_address', 'Demo Address'),
(45, 'admin_notification_sound', NULL),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'ok'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'no'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '13'),
(64, 'preloader_bg', 'rgba(74,0,94,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', ''),
(89, 'footer_text_ar', '\"\\\"<h4 xss=\\\"removed\\\"><span xss=\\\"removed\\\">ADDRESS arabic<h5 xss=\\\"removed\\\"><span xss=\\\"removed\\\">ALSHAHEEN NURSERIES AGRICULTURE AND FOOD CO.&lt;\\\\\\/span>&lt;\\\\\\/h5><p xss=\\\"removed\\\"><span xss=\\\"removed\\\">P O Box : 22138 Safat<br xss=\\\"removed\\\">Kuwait Code : 13082<\\/span><\\/p><p xss=\\\"removed\\\"><span xss=\\\"removed\\\">Fax : +965 24713823&lt;\\\\\\/span>&lt;\\\\\\/p><\\/span><\\/p><h4 xss=\\\"removed\\\">PROJECTS DIVISION&lt;\\\\\\/h4><p xss=\\\"removed\\\">Tel. : +965 99448022&lt;\\\\\\/p><\\/p><\\/h4><h4 xss=\\\"removed\\\">WHOLESALE DIVISION&lt;\\\\\\/h4><p xss=\\\"removed\\\">Tel. : +965 99448122<br xss=\\\"removed\\\">Email :\\\\u00a0<a href=\\\"\\\\\\\\\\\" xss=\\\"removed\\\">info@alshaheen.com.kw&lt;\\\\\\/a>&lt;\\\\\\/p>\\\"<\\/a><\\/p><\\/h4><\\/span><\\/h5><\\/span><\\/h4>\"'),
(79, 'google_analytics_key', 'UA-117985671-1'),
(71, 'data_all_vendors', '1:::Lavinia Mckee;;;;;;3:::Tom;;;;;;5:::Youn;;;;;;7:::Tony Stark;;;;;;9:::Cheyenne Medina;;;;;;10:::Denton Hansen;;;;;;12:::Idona Snider;;;;;;16:::Carissa Newman;;;;;;19:::mevendor'),
(72, 'smtp_host', 'ssl://smtp.googlemail.com'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'hello@activecare.online'),
(75, 'smtp_pass', 'ELLOH@ct!ve123'),
(76, 'mail_status', 'smtp'),
(77, 'captcha_status', 'no'),
(78, 'version', '2.0.0'),
(80, 'g_analytics_set', 'ok'),
(81, 'show_vendor_website', 'no'),
(82, 'bundle_product_activation', 'no'),
(83, 'customer_product_activation', 'no'),
(84, 'wallet_system_set', 'no'),
(85, 'guest_checkout_set', 'ok'),
(86, 'affiliation_validity', '30'),
(87, 'affiliation_point_to_currency_rate', '0.25'),
(88, 'product_affiliation_set', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Arabic` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Arabic`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'الصفحة الرئيسية زيارة'),
(2, 'profile', 'Profile', 'الملف الشخصي'),
(3, 'logout', 'Logout', 'خروج'),
(4, 'manage_languages', 'Manage Languages', 'إدارة اللغات'),
(5, 'add_language', 'Add Language', 'إضافة اللغة'),
(6, 'successfully_added!', 'Successfully Added!', 'وأضاف بنجاح!'),
(7, 'back_to_language_list', 'Back To Language List', 'العودة إلى القائمة لغة'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'حقا تريد حذف هذه اللغة؟'),
(9, 'settings_updated!', 'Settings Updated!', 'ضبط تجديد!'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'هل حقا تريد حذف هذه اللغة؟'),
(11, 'saving..', 'Saving..', 'إنقاذ..'),
(12, 'dashboard', 'Dashboard', 'لوحة القيادة'),
(13, 'products', 'Products', 'المنتجات'),
(14, 'physical_products', 'Physical Products', 'المنتجات المادية'),
(15, 'category', 'Category', 'فئة'),
(16, 'brands', 'Brands', 'العلامات التجارية'),
(17, 'sub-category', 'Sub-category', 'الفئة الفرعية'),
(18, 'all_products', 'All Products', 'جميع المنتجات'),
(19, 'product_stock', 'Product Stock', 'الأسهم المنتج'),
(20, 'digital_products', 'Digital Products', 'المنتجات الرقمية'),
(21, 'all_digitals', 'All Digitals', 'جميع digitals'),
(22, 'sale', 'Sale', 'تخفيض السعر'),
(23, 'discount_coupon', 'Discount Coupon', 'كوبون الخصم'),
(24, 'ticket', 'Ticket', 'تذكرة'),
(25, 'reports', 'Reports', 'تقارير'),
(26, 'product_compare', 'Product Compare', 'مقارنة المنتج'),
(27, 'product_wishes', 'Product Wishes', 'رغبات المنتج'),
(28, 'vendors', 'Vendors', 'الباعة'),
(29, 'vendor_list', 'Vendor List', 'قائمة الموردين'),
(30, 'vendor_payments', 'Vendor Payments', 'مدفوعات البائعين'),
(31, 'vendor_packages', 'Vendor Packages', 'حزم بائع'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'الشرائح البائع'),
(33, 'customers', 'Customers', 'الزبائن'),
(34, 'messaging', 'Messaging', 'الرسائل'),
(35, 'newsletters', 'Newsletters', 'النشرات الإخبارية'),
(36, 'contact_messages', 'Contact Messages', 'رسائل الاتصال'),
(37, 'blog', 'Blog', 'مدونة'),
(38, 'blog_categories', 'Blog Categories', 'فئات بلوق'),
(39, 'all_blogs', 'All Blogs', 'جميع بلوق'),
(40, 'frontend_settings', 'Frontend Settings', 'إعدادات الواجهة'),
(41, 'slider_settings', 'Slider Settings', 'ضبط المنزلق'),
(42, 'layer_slider', 'Layer Slider', 'طبقة المنزلق'),
(43, 'top_slides', 'Top Slides', 'أعلى الشرائح'),
(44, 'display_settings', 'Display Settings', 'اعدادات العرض'),
(45, 'home_page', 'Home Page', 'الصفحة الرئيسية'),
(46, 'contact_page', 'Contact Page', 'صفحة الاتصال'),
(47, 'footer', 'Footer', 'تذييل'),
(48, 'theme_color', 'Theme Color', 'اللون موضوع'),
(49, 'logo', 'Logo', 'شعار'),
(50, 'favicon', 'Favicon', 'فافيكون'),
(51, 'fonts', 'Fonts', 'الخطوط'),
(52, 'preloader', 'Preloader', 'تحميل مسبق'),
(53, 'site_settings', 'Site Settings', 'إعدادات الموقع'),
(54, 'general_settings', 'General Settings', 'الاعدادات العامة'),
(55, 'third_party_settings', 'Third Party Settings', 'إعدادات طرف ثالث'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'بناء صفحات استجابة'),
(57, 'set_default_images', 'Set Default Images', 'صور مجموعة افتراضية'),
(58, 'business_settings', 'Business Settings', 'ضبط رجال الأعمال'),
(59, 'activation', 'Activation', 'تفعيل'),
(60, 'payment_method', 'Payment Method', 'طريقة الدفع او السداد'),
(61, 'currency_', 'Currency ', 'عملة '),
(62, 'faqs', 'Faqs', 'الأسئلة الأكثر شيوعا'),
(63, 'staffs', 'Staffs', 'الموظفين'),
(64, 'all_staffs', 'All Staffs', 'جميع الموظفين'),
(65, 'staff_permissions', 'Staff Permissions', 'أذونات الموظفين'),
(66, 'language', 'Language', 'لغة'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'إدارة الملف الشخصي ل admin'),
(68, 'activate', 'Activate', 'تفعيل'),
(69, 'SEO_proggres', 'SEO Proggres', 'proggres كبار المسئولين الاقتصاديين'),
(70, 'online_tutorial', 'Online Tutorial', 'البرنامج التعليمي على الانترنت'),
(71, 'checkout', 'Checkout', 'الدفع'),
(72, 'deleted_successfully', 'Deleted Successfully', 'حذف بنجاح'),
(73, 'cancelled', 'Cancelled', 'تم الالغاء'),
(74, 'cancel', 'Cancel', 'إلغاء'),
(75, 'required', 'Required', 'مطلوب'),
(76, 'must_be_a_number', 'Must Be A Number', 'يجب أن يكون رقما'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'يجب أن يكون عنوان بريد إلكتروني صالح'),
(78, 'save', 'Save', 'حفظ'),
(79, 'product_published!', 'Product Published!', 'المنتج نشر!'),
(80, 'product_unpublished!', 'Product Unpublished!', 'المنتج غير منشورة!'),
(81, 'product_featured!', 'Product Featured!', 'المنتج المميز!'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'المنتج unfeatured!'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'المنتج في اليوم التعامل!'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'منتج إزالة من صفقة اليوم!'),
(85, 'slider_published!', 'Slider Published!', 'المنزلق نشرت!'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'المنزلق غير منشورة!'),
(87, 'page_published!', 'Page Published!', 'الصفحة نشرت!'),
(88, 'page_unpublished!', 'Page Unpublished!', 'الصفحة غير منشورة!'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'صوت الإعلام تمكين!'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'صوت الإعلام تعطيل!'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'جوجل تسجيل الدخول تمكين!'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'جوجل تسجيل الدخول تعطيل!'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'الفيسبوك تسجيل الدخول تمكين!'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'الفيسبوك تسجيل الدخول تعطيل!'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'الدفع باي بال تعطيل!'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'الدفع باي بال تمكين!'),
(97, 'slider_enabled!', 'Slider Enabled!', 'المنزلق تمكين!'),
(98, 'slider_disabled!', 'Slider Disabled!', 'المنزلق تعطيل!'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'الدفع نقدا تمكين!'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'الدفع نقدا تعطيل!'),
(101, 'enabled!', 'Enabled!', 'تمكين!'),
(102, 'disabled!', 'Disabled!', 'معاق!'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!'),
(104, 'working...', 'Working...', 'العمل ...'),
(105, 'no', 'No', 'لا'),
(106, 'name', 'Name', 'اسم'),
(107, 'icon', 'Icon', 'أيقونة'),
(108, 'publish', 'Publish', 'نشر'),
(109, 'options', 'Options', 'خيارات'),
(110, 'language_enabled', 'Language Enabled', 'لغة سكريبت'),
(111, 'language_disabled', 'Language Disabled', 'لغة تعطيل'),
(112, 'edit_language_list', 'Edit Language List', 'تحرير القائمة لغة'),
(113, 'successfully_edited!', 'Successfully Edited!', 'بنجاح تحريرها!'),
(114, 'set_translations', 'Set Translations', 'تعيين ترجمة'),
(115, 'edit_language', 'Edit Language', 'تحرير لغة'),
(116, 'edit', 'Edit', 'تحرير'),
(117, 'delete_language', 'Delete Language', 'حذف اللغة'),
(118, 'select_language', 'Select Language', 'اختر اللغة'),
(119, 'word', 'Word', 'كلمة'),
(120, 'translation', 'Translation', 'ترجمة'),
(121, 'translate', 'Translate', 'ترجم'),
(122, 'save_all', 'Save All', 'احفظ الكل'),
(123, 'saving', 'Saving', 'إنقاذ'),
(124, 'updated!', 'Updated!', 'تحديث!'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'حقا تريد حذف هذه الكلمة؟'),
(126, 'delete', 'Delete', 'حذف'),
(127, 'home', 'Home', 'الصفحة الرئيسية'),
(128, 'subtotal', 'Subtotal', 'حاصل الجمع'),
(129, 'close', 'Close', 'أغلق'),
(130, 'faq', 'Faq', 'التعليمات'),
(131, 'login', 'Login', 'تسجيل الدخول'),
(132, 'registration', 'Registration', 'التسجيل'),
(133, 'customer_registration', 'Customer Registration', 'تسجيل العملاء'),
(134, 'vendor_registration', 'Vendor Registration', 'تسجيل البائعين'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'عما تبحث'),
(136, 'select', 'Select', 'اختار'),
(137, 'all_categories', 'All Categories', 'جميع الفئات'),
(138, 'product', 'Product', 'المنتج'),
(139, 'vendor', 'Vendor', 'بائع'),
(140, 'compare', 'Compare', 'قارن'),
(141, 'item(s)', 'Item(s)', 'العناصر)'),
(142, 'homepage', 'Homepage', 'الصفحة الرئيسية'),
(143, 'all_sub_categories', 'All Sub Categories', 'جميع الفئات الفرعية'),
(144, 'featured_products', 'Featured Products', 'منتجات مميزة'),
(145, 'todays_deal', 'Todays Deal', 'صفقة اليوم'),
(146, 'all_brands', 'All Brands', 'جميع العلامات التجارية'),
(147, 'all_vendors', 'All Vendors', 'جميع البائعين'),
(148, 'blogs', 'Blogs', 'بلوق'),
(149, 'store_locator', 'Store Locator', 'فروعنا'),
(150, 'contact', 'Contact', 'اتصال'),
(151, 'more', 'More', 'أكثر'),
(152, 'latest_products', 'Latest Products', 'آخر المنتجات'),
(153, 'more_categories', 'More Categories', 'المزيد من التصنيفات'),
(154, 'today\'s_deal', 'Today\'s Deal', 'صفقة اليوم'),
(155, 'quick_view', 'Quick View', 'نظرة سريعة'),
(156, 'search', 'Search', 'بحث'),
(157, 'latest', 'Latest', 'آخر'),
(158, 'featured', 'Featured', 'متميز'),
(159, 'discount', 'Discount', 'خصم'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'إضافة إلى سلة'),
(161, 'add_to_cart', 'Add To Cart', 'أضف إلى السلة'),
(162, 'out_of_stock', 'Out Of Stock', 'إنتهى من المخزن'),
(163, 'visit', 'Visit', 'زيارة'),
(164, 'recently_viewed', 'Recently Viewed', 'شوهدت مؤخرا'),
(165, 'most_viewed', 'Most Viewed', 'الأكثر مشاهدة'),
(166, 'our_available_brands', 'Our Available Brands', 'علاماتنا التجارية المتاحة'),
(167, 'email_address', 'Email Address', 'عنوان البريد الإلكتروني'),
(168, 'subscribe', 'Subscribe', 'الاشتراك'),
(169, 'categories', 'Categories', 'الفئات'),
(170, 'useful_links', 'Useful Links', 'روابط مفيدة'),
(171, 'contact_us', 'Contact Us', 'اتصل بنا'),
(172, 'address', 'Address', 'عنوان'),
(173, 'phone', 'Phone', 'هاتف'),
(174, 'website', 'Website', 'موقع الكتروني'),
(175, 'email', 'Email', 'البريد الإلكتروني'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'كل الحقوق محفوظة'),
(177, 'terms_&_condition', 'Terms & Condition', 'الشروط والأحكام'),
(178, 'privacy_policy', 'Privacy Policy', 'سياسة الخصوصية'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'وأضاف المنتج إلى سلة التسوق'),
(180, 'added_to_cart', 'Added To Cart', 'إضافة إلى العربة'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'كمية المنتج تتجاوز توافر!'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'وأضاف المنتج بالفعل إلى السلة'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'وأضاف المنتج إلى سلة'),
(184, 'wished', 'Wished', 'تمنى'),
(185, 'wishing..', 'Wishing..', 'متمنيا ..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'المنتج إزالتها من سلة'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'وأضاف المنتج مقارنة'),
(188, 'compared', 'Compared', 'مقارنة'),
(189, 'working..', 'Working..', 'العمل ..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'منتج إزالة من المقارنة'),
(191, 'compare_category_full', 'Compare Category Full', 'مقارنة فئة كاملة'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'وأضاف المنتج بالفعل للمقارنة'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'المنتج تصنيفا بنجاح'),
(194, 'product_rating_failed', 'Product Rating Failed', 'فشل تصنيف المنتج'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'كنت تصنيفا بالفعل هذا المنتج'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'كنت قد اشتركت بالفعل'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'كنت قد اشتركت بنجاح'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح'),
(199, 'logging_in..', 'Logging In..', 'تسجيل الدخول..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'قمت بتسجيل الدخول بنجاح'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'قمت بتسجيل بنجاح'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'فشل في التسجيل! </font><font>حاول ثانية!'),
(204, 'submitting..', 'Submitting..', 'تقديم..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ارسال البريد الالكتروني بنجاح'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'البريد الإلكتروني غير موجود!'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية'),
(208, 'logging_in', 'Logging In', 'تسجيل الدخول'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'مشيرا إلى السلة ..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'المنتج إزالتها من سلة'),
(211, 'the_field_is_required', 'The Field Is Required', 'مطلوب مجال'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'أدخل عنوان بريد إلكتروني صالح'),
(213, 'applying..', 'Applying..', 'تطبيق ..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'القسيمة غير صالحة'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'قسيمة خصم ناجحة'),
(216, 'favored', 'Favored', 'مفضل'),
(217, 'successful_login', 'Successful Login', 'نجاح تسجيل الدخول'),
(218, 'login_failed', 'Login Failed', 'فشل تسجيل الدخول'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'تسجيل الدخول إلى حسابك'),
(220, 'password', 'Password', 'كلمه السر'),
(221, 'forget_password', 'Forget Password', 'نسيت كلمة'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!'),
(223, 'forgot_password', 'Forgot Password', 'هل نسيت كلمة المرور'),
(224, 'sign_in', 'Sign In', 'تسجيل الدخول'),
(225, 'this_field_is_required', 'This Field Is Required', 'هذه الخانة مطلوبه'),
(226, 'signing_in...', 'Signing In...', 'تسجيل الدخول...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك'),
(228, 'login_failed!', 'Login Failed!', 'فشل تسجيل الدخول!'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية'),
(230, 'login_successful!', 'Login Successful!', 'تم الدخول بنجاح!'),
(231, 'SUCCESS!', 'SUCCESS!', 'نجاح!'),
(232, 'reset_password', 'Reset Password', 'اعادة تعيين كلمة السر'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.'),
(234, '24_hours_stock', '24 Hours Stock', 'الأسهم 24 ساعة'),
(235, '24_hours_sale', '24 Hours Sale', '24 ساعة بيع'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ساعة تدمر'),
(237, 'total_vendors', 'Total Vendors', 'مجموع الباعة'),
(238, 'pending_vendors', 'Pending Vendors', 'الباعة في انتظار'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'stattistics بائع'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'فئة الأسهم الشهري الحكمة'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'فئة الحكمة تدمير شهريا'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'الفئة بيع الشهري الحكمة'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'فئة الحكمة الربح الكبير الشهري'),
(244, 'cost', 'Cost', 'كلفة'),
(245, 'value', 'Value', 'القيمة'),
(246, 'loss', 'Loss', 'خسارة'),
(247, 'profit', 'Profit', 'ربح'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories', 'إدارة الفئات (منتج مادي)'),
(249, 'add_category_(_physical_product_)', 'Add Category', 'إضافة فئة (منتج مادي)'),
(250, 'create_category', 'Create Category', 'إنشاء فئة'),
(251, 'banner', 'Banner', 'راية'),
(252, 'edit_category_(_physical_product_)', 'Edit Category', 'تحرير فئة (منتج مادي)'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'حقا تريد حذف هذا؟'),
(254, 'category_name', 'Category Name', 'اسم الفئة'),
(255, 'category_banner', 'Category Banner', 'فئة راية'),
(256, 'select_category_banner', 'Select Category Banner', 'حدد فئة راية'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'إدارة العلامات التجارية (منتج مادي)'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'إضافة العلامة التجارية (منتج مادي)'),
(259, 'create_brand', 'Create Brand', 'إنشاء العلامة التجارية'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'تحرير العلامة التجارية (منتج مادي)'),
(261, 'brand', 'Brand', 'علامة تجارية'),
(262, 'brand_name', 'Brand Name', 'اسم العلامة التجارية'),
(263, 'brand_logo', 'Brand Logo', 'شعار العلامة التجارية'),
(264, 'select_brand_logo', 'Select Brand Logo', 'حدد شعار العلامة التجارية'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'إدارة الفئات الفرعية (منتج مادي)'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category', 'إضافة فئة فرعية (منتج مادي)'),
(267, 'create_sub_category', 'Create Sub Category', 'إنشاء فئة فرعية'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'تعديل فئة فرعية (منتج مادي)'),
(269, 'sub_category', 'Sub Category', 'الفئة الفرعية'),
(270, 'sub-category_name', 'Sub-category Name', 'اسم الفئة الفرعية'),
(271, 'sub-category_banner', 'Sub-category Banner', 'الفئة الفرعية راية'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'حدد فئة فرعية لافتة'),
(273, 'manage_product_stock', 'Manage Product Stock', 'إدارة المخزون المنتج'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'تدمير دخول المنتج'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'إضافة إدخال الأوراق المالية اتخذت!'),
(276, 'add_product_stock', 'Add Product Stock', 'إضافة الأسهم المنتج'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'تدمير دخول اتخذت!'),
(278, 'create_stock', 'Create Stock', 'إنشاء الاسهم'),
(279, 'ID', 'ID', 'هوية شخصية'),
(280, 'product_title', 'Product Title', 'عنوان المنتج'),
(281, 'entry_type', 'Entry Type', 'نوع دخول'),
(282, 'quantity', 'Quantity', 'كمية'),
(283, 'note', 'Note', 'ملاحظة'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'وستضاف خفض كمية.'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'وسيتم خفض الكمية المضافة.'),
(286, 'rate', 'Rate', 'معدل'),
(287, 'total', 'Total', 'مجموع'),
(288, 'reason_note', 'Reason Note', 'السبب مذكرة'),
(289, 'monetary_loss', 'Monetary Loss', 'فقدان النقدية'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'إدارة الفئات (المنتجات الرقمية)'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'إضافة فئة (المنتج الرقمي)'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'تحرير فئة (المنتج الرقمي)'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'إدارة الفئات الفرعية (المنتجات الرقمية)'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'إضافة فئة فرعية (المنتج الرقمي)'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'تعديل فئة فرعية (المنتج الرقمي)'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'إدارة المنتجات (رقمي)'),
(297, 'add_product', 'Add Product', 'إضافة منتج'),
(298, 'create_product', 'Create Product', 'إنشاء المنتج'),
(299, 'back_to_product_list', 'Back To Product List', 'العودة إلى قائمة المنتجات'),
(300, 'download_failed!', 'Download Failed!', 'التحميل فشل!'),
(301, 'image', 'Image', 'صورة'),
(302, 'title', 'Title', 'عنوان'),
(303, 'view_product', 'View Product', 'المنتج رأي'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'ينظر بنجاح!'),
(305, 'view', 'View', 'رأي'),
(306, 'view_discount', 'View Discount', 'خصم عرض'),
(307, 'viewing_discount!', 'Viewing Discount!', 'عرض خصم!'),
(308, 'download', 'Download', 'تحميل'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'تحرير المنتج (المنتجات الرقمية)'),
(310, 'manage_sale', 'Manage Sale', 'إدارة بيع'),
(311, 'sale_code', 'Sale Code', 'كود بيع'),
(312, 'buyer', 'Buyer', 'مشتر'),
(313, 'date', 'Date', 'تاريخ'),
(314, 'delivery_status', 'Delivery Status', 'حالة التسليم'),
(315, 'payment_status', 'Payment Status', 'حالة السداد'),
(316, 'admin', 'Admin', 'مشرف'),
(317, 'full_invoice', 'Full Invoice', 'فاتورة كاملة'),
(318, 'delivery_payment', 'Delivery Payment', 'دفع التسليم'),
(319, 'sales', 'Sales', 'مبيعات'),
(320, 'manage_coupons', 'Manage Coupons', 'إدارة القسائم'),
(321, 'add_coupon', 'Add Coupon', 'إضافة قسيمة'),
(322, 'create_coupon', 'Create Coupon', 'إنشاء قسيمة'),
(323, 'code', 'Code', 'رمز'),
(324, 'added_by', 'Added By', 'أضيفت من قبل'),
(325, 'status', 'Status', 'الحالة'),
(326, 'coupon', 'Coupon', 'كوبون'),
(327, 'manage_ticket', 'Manage Ticket', 'إدارة تذكرة'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'العودة إلى قائمة تذكرة'),
(329, 'from', 'From', 'من عند'),
(330, 'subject', 'Subject', 'موضوع'),
(331, 'view_profile', 'View Profile', 'عرض الصفحة الشخصية'),
(332, 'new', 'New', 'جديد'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'تذكرة رأي اتصال'),
(334, 'view_ticket', 'View Ticket', 'عرض تذكرة'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'مقارنة بيع المنتج'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'المنتج بيع التقرير مقارنة'),
(337, 'manage_stock_report', 'Manage Stock Report', 'تقرير إدارة المخزون'),
(338, 'get_stock_report', 'Get Stock Report', 'الحصول على تقرير المخزون'),
(339, 'product_wishes_report', 'Product Wishes Report', 'يرغب المنتج تقرير'),
(340, 'manage_vendors', 'Manage Vendors', 'إدارة البائعين'),
(341, 'display_name', 'Display Name', 'اسم العرض'),
(342, 'vendor_approval', 'Vendor Approval', 'موافقة البائع'),
(343, 'approval', 'Approval', 'موافقة'),
(344, 'pay_vendor', 'Pay Vendor', 'بائع الأجر'),
(345, 'pay', 'Pay', 'دفع'),
(346, 'e-mail', 'E-mail', 'البريد الإلكتروني'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'إدارة مدفوعات البائعين'),
(348, 'amount', 'Amount', 'كمية'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'حزمة بائع ترقية'),
(350, 'view_payment_details', 'View Payment Details', 'عرض تفاصيل الدفع'),
(351, 'check_details', 'Check Details', 'التحقق من التفاصيل'),
(352, 'membership_payments', 'Membership Payments', 'مدفوعات عضوية'),
(353, 'upgraded_membership', 'Upgraded Membership', 'عضوية ترقية'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'إدارة حزمة بائع'),
(355, 'add_vendor_package', 'Add Vendor Package', 'إضافة حزمة بائع'),
(356, 'create_vendor_package', 'Create Vendor Package', 'إنشاء حزمة بائع'),
(357, 'seal', 'Seal', 'ختم'),
(358, 'price', 'Price', 'السعر'),
(359, 'for', 'For', 'إلى'),
(360, 'lifetime', 'Lifetime', 'أوقات الحياة'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'تحرير حزمة بائع'),
(362, 'days', 'Days', 'أيام'),
(363, 'membership', 'Membership', 'عضوية'),
(364, 'manage_product_(_physical_)', 'Manage Product', 'إدارة المنتجات (المادية)'),
(365, 'current_quantity', 'Current Quantity', 'الكمية الحالية'),
(366, 'add_product_quantity', 'Add Product Quantity', 'إضافة كمية المنتج'),
(367, 'quantity_added!', 'Quantity Added!', 'وأضافت الكمية!'),
(368, 'stock', 'Stock', 'مخزون'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'تقليل كمية المنتج'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'كمية خفضت!'),
(371, 'destroy', 'Destroy', 'هدم'),
(372, 'edit_product', 'Edit Product', 'تحرير المنتج'),
(373, 'product_details', 'Product Details', 'تفاصيل المنتج'),
(374, 'business_details', 'Business Details', 'تفاصيل العمل'),
(375, 'customer_choice_options', 'Customer Choice Options', 'خيارات اختيار العملاء'),
(376, 'unit', 'Unit', 'وحدة'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)'),
(378, 'tags', 'Tags', 'علامات'),
(379, 'images', 'Images', 'صور'),
(380, 'choose_file', 'Choose File', 'اختر ملف'),
(381, 'description', 'Description', 'وصف'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...'),
(383, 'add_more_fields', 'Add More Fields', 'إضافة المزيد من الحقول'),
(384, 'sale_price', 'Sale Price', 'سعر البيع'),
(385, 'purchase_price', 'Purchase Price', 'سعر الشراء'),
(386, 'shipping_cost', 'Shipping Cost', 'تكلفة الشحن'),
(387, 'product_tax', 'Product Tax', 'الضرائب المنتج'),
(388, 'product_discount', 'Product Discount', 'خصم المنتج'),
(389, 'color', 'Color', 'اللون'),
(390, 'add_more_colors', 'Add More Colors', 'إضافة المزيد من الألوان'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'إضافة خيارات مدخلات العملاء'),
(393, 'next', 'Next', 'التالى'),
(394, 'previous', 'Previous', 'سابق'),
(395, 'reset', 'Reset', 'إعادة تعيين'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'وقد تم تحميل المنتج!'),
(397, 'upload', 'Upload', 'تحميل'),
(398, 'field_name', 'Field Name', 'اسم الحقل'),
(399, 'customer_input_title', 'Customer Input Title', 'عنوان مدخلات العملاء'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'إضافة خيارات للاختيار'),
(401, 'option_name', 'Option Name', 'اسم الخيار'),
(402, 'details_of', 'Details Of', 'تفاصيل'),
(403, 'tax', 'Tax', 'ضريبة'),
(404, 'tag', 'Tag', 'بطاقة'),
(405, 'colors', 'Colors', 'الألوان'),
(406, 'product_color_options', 'Product Color Options', 'خيارات لون المنتج'),
(407, 'add_colors', 'Add Colors', 'إضافة الألوان'),
(408, 'requirements', 'Requirements', 'المتطلبات'),
(409, 'add_logo', 'Add Logo', 'إضافة شعار'),
(410, 'choose_logo', 'Choose Logo', 'اختيار شعار'),
(411, 'add_images', 'Add Images', 'إضافة الصور'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...'),
(413, 'add_video', 'Add Video', 'إضافة فيديو'),
(414, 'upload_video', 'Upload Video', 'رفع فيديو'),
(415, 'choose_video_file', 'Choose Video File', 'اختيار ملف الفيديو'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'اختيار موقع مشاركة'),
(417, 'choose_one', 'Choose One', 'اختيار واحد'),
(418, 'youtube', 'Youtube', 'موقع YouTube'),
(419, 'dailymotion', 'Dailymotion', 'ديلي موشن'),
(420, 'vimeo', 'Vimeo', 'فيميو'),
(421, 'link', 'Link', 'صلة'),
(422, 'product_file', 'Product File', 'ملف المنتج'),
(423, 'compressed', 'Compressed', 'مضغوط'),
(424, 'maximum_size', 'Maximum Size', 'أكبر مقاس'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.'),
(426, 'add_product_requirements', 'Add Product Requirements', 'إضافة متطلبات المنتج'),
(427, 'remove', 'Remove', 'إزالة'),
(428, 'video_options', 'Video Options', 'خيارات الفيديو'),
(429, 'choose_an_option', 'Choose An Option', 'إختر خيار'),
(430, 'share_link', 'Share Link', 'رابط المشاركة'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'أريد أن أضيف فيديو في وقت لاحق'),
(432, 'update_product_file', 'Update Product File', 'ملف تحديث المنتج'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'أريد أن تغيير الفيديو في وقت لاحق'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'أريد أن إزالة الفيديو موجود'),
(435, 'invoice_for', 'Invoice For', 'فاتورة'),
(436, 'invoice_no:', 'Invoice No:', 'رقم الفاتورة:'),
(437, 'date_:', 'Date :', 'تاريخ :'),
(438, 'client_information', 'Client Information', 'معلومات العميل'),
(439, 'first_name', 'First Name', 'الاسم الاول'),
(440, 'last_name', 'Last Name', 'الكنية'),
(441, 'payment_detail', 'Payment Detail', 'تفاصيل الدفع'),
(442, 'due', 'Due', 'بسبب'),
(443, 'payment_date', 'Payment Date', 'تاريخ الدفع'),
(444, 'payment_invoice', 'Payment Invoice', 'فاتورة الدفع'),
(445, 'item', 'Item', 'بند'),
(446, 'unit_cost', 'Unit Cost', 'تكلفة الوحدة'),
(447, 'sub_total_amount', 'Sub Total Amount', 'المبلغ الإجمالي الفرعي'),
(448, 'shipping', 'Shipping', 'الشحن'),
(449, 'grand_total', 'Grand Total', 'المبلغ الإجمالي'),
(450, 'address_line_1', 'Address Line 1', 'العنوان الأول'),
(451, 'address_line_2', 'Address Line 2', 'سطر العنوان 2'),
(452, 'zipcode', 'Zipcode', 'الرمز البريدي'),
(453, 'print', 'Print', 'طباعة'),
(454, 'marker_location', 'Marker Location', 'علامة المكان'),
(455, 'city', 'City', 'مدينة'),
(456, 'ZIP', 'ZIP', 'ZIP'),
(457, 'payment_details', 'Payment Details', 'بيانات الدفع'),
(458, 'coupon_title', 'Coupon Title', 'عنوان القسيمة'),
(459, 'valid_till', 'Valid Till', 'صالح حتى'),
(460, 'coupon_discount_on', 'Coupon Discount On', 'قسيمة خصم على'),
(461, 'coupon_code', 'Coupon Code', 'رمز القسيمة'),
(462, 'discount_type', 'Discount Type', 'نوع الخصم'),
(463, 'discount_value', 'Discount Value', 'قيمة الخصم'),
(464, 'user', 'User', 'مستخدم'),
(465, 'phone_number', 'Phone Number', 'رقم الهاتف'),
(466, 'creation_date', 'Creation Date', 'تاريخ الإنشاء'),
(467, 'ticket_from', 'Ticket From', 'تذكرة من'),
(468, 'date_&_time', 'Date & Time', 'التاريخ والوقت'),
(469, 'reply_message', 'Reply Message', 'رسالة الرد'),
(470, 'successfully_replied!', 'Successfully Replied!', 'أجاب بنجاح!'),
(471, 'reply', 'Reply', 'الرد'),
(472, 'refresh', 'Refresh', 'اعادة تنشيط'),
(473, 'company', 'Company', 'شركة'),
(474, 'postpone', 'Postpone', 'تأجيل'),
(475, 'approve', 'Approve', 'وافق'),
(476, 'total_sold', 'Total Sold', 'مجموعه تباع'),
(477, 'paid_by_customer', 'Paid By Customer', 'المدفوع من قبل العميل'),
(478, 'paid_to_vendor', 'Paid To Vendor', 'تدفع للبائع'),
(479, 'by_admin', 'By Admin', 'بواسطة admin'),
(480, 'cash_on_delivery', 'Cash On Delivery', 'الدفع عند التسليم'),
(481, 'due_to_vendor', 'Due To Vendor', 'بسبب بائع'),
(482, 'select_payment_method', 'Select Payment Method', 'اختار طريقة الدفع'),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'تفاصيل بطاقتك التحقق منها!'),
(484, 'pay_with_stripe', 'Pay With Stripe', 'دفع مع شريط'),
(485, 'datetime', 'Datetime', 'التاريخ والوقت'),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'عضوية لرفع مستوى'),
(487, 'method', 'Method', 'طريقة'),
(488, 'details', 'Details', 'تفاصيل'),
(489, 'maximum_products', 'Maximum Products', 'منتجات القصوى'),
(490, 'timespan', 'Timespan', 'الفترة الزمنية'),
(491, 'package_seal', 'Package Seal', 'حزمة ختم'),
(492, 'select_package_seal', 'Select Package Seal', 'حدد حزمة ختم'),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'إدارة الشرائح بائع'),
(494, 'button', 'Button', 'زر'),
(495, 'click_to_check_link', 'Click To Check Link', 'انقر فوق التحقق من الرابط'),
(496, 'slides', 'Slides', 'الشرائح'),
(497, 'manage_users', 'Manage Users', 'ادارة المستخدمين'),
(498, 'total_purchase', 'Total Purchase', 'شراء مجموع'),
(499, 'users', 'Users', 'المستخدمين'),
(500, 'send_newsletter', 'Send Newsletter', 'إرسال الرسائل الإخبارية'),
(501, 'e-mails_(users)', 'E-mails (users)', 'رسائل البريد الإلكتروني (المستخدمين)'),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'رسائل البريد الإلكتروني (مشترك)'),
(503, 'from_:_email_address', 'From : Email Address', 'من: عنوان البريد الإلكتروني'),
(504, 'newsletter_subject', 'Newsletter Subject', 'النشرة الموضوع'),
(505, 'newsletter_content', 'Newsletter Content', 'محتوى النشرة الإخبارية'),
(506, 'sending', 'Sending', 'إرسال'),
(507, 'sent!', 'Sent!', 'أرسلت!'),
(508, 'send', 'Send', 'إرسال'),
(509, 'view_contact_message', 'View Contact Message', 'رسالة رأي اتصال'),
(510, 'view_message', 'View Message', 'رسالة رأي'),
(511, 'message', 'Message', 'الرسالة'),
(512, 'date_time', 'Date Time', 'التاريخ والوقت'),
(513, 'message_from', 'Message From', 'رسالة من'),
(514, 'reply_contact_message', 'Reply Contact Message', 'الرد رسالة الاتصال'),
(515, 'view_original_message', 'View Original Message', 'عرض الرسالة الأصلية'),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'إدارة الفئات بلوق'),
(517, 'add_blog_category', 'Add Blog Category', 'إضافة فئة بلوق'),
(518, 'create_blog_category', 'Create Blog Category', 'إنشاء فئة بلوق'),
(519, 'edit_blog_category', 'Edit Blog Category', 'تحرير الفئة بلوق'),
(520, 'blog_category', 'Blog Category', 'الفئة بلوق'),
(521, 'manage_blog', 'Manage Blog', 'إدارة بلوق'),
(522, 'add_blog', 'Add Blog', 'إضافة بلوق'),
(523, 'create_blog', 'Create Blog', 'إنشاء بلوق'),
(524, 'back_to_blog_list', 'Back To Blog List', 'العودة إلى قائمة بلوق'),
(525, 'edit_blog', 'Edit Blog', 'تحرير بلوق'),
(526, 'blog_title', 'Blog Title', 'عنوان المدونة'),
(527, 'summery', 'Summery', 'صيفي'),
(528, 'author', 'Author', 'مؤلف'),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'إدارة طبقة المنزلق'),
(530, 'create_slider', 'Create Slider', 'إنشاء المنزلق'),
(531, 'slider_list', 'Slider List', 'قائمة المنزلق'),
(532, 'slider_serial', 'Slider Serial', 'المنزلق المسلسل'),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'تسلسل بنجاح!'),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'المنزلق مسلسل حفظ!'),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'اختيار نمط التمرير الخاص بك'),
(536, 'play', 'Play', 'لعب'),
(537, 'choose', 'Choose', 'اختار'),
(538, 'enter_preview', 'Enter Preview', 'دخول المعاينة'),
(539, 'creating_slider..', 'Creating Slider..', 'خلق المنزلق ..'),
(540, 'slider_added!', 'Slider Added!', 'وأضاف المنزلق!'),
(541, 'select_background_image', 'Select Background Image', 'صورة خلفية مختارة'),
(542, 'select_image', 'Select Image', 'اختر صورة'),
(543, 'font-color', 'Font-color', 'لون الخط'),
(544, 'background_color', 'Background Color', 'لون الخلفية'),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'إدارة أعلى الشرائح إحتفال صاخب مخمور'),
(546, 'add_slides', 'Add Slides', 'إضافة شرائح'),
(547, 'create_slides', 'Create Slides', 'إنشاء الشرائح'),
(548, 'edit_slides', 'Edit Slides', 'تحرير الشرائح'),
(549, 'slide_banner', 'Slide Banner', 'راية الشرائح'),
(550, 'select_slide_banner', 'Select Slide Banner', 'حدد راية الشرائح'),
(551, 'button_color:', 'Button Color:', 'زر اللون:'),
(552, 'button_text_color:', 'Button Text Color:', 'زر لون النص:'),
(553, 'button_text', 'Button Text', 'زر كتابة'),
(554, 'button_link', 'Button Link', 'رابط زر'),
(555, 'slides_logo', 'Slides Logo', 'الشرائح شعار'),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'اختيار نمط الصفحة الرئيسية'),
(557, 'updating..', 'Updating..', 'تحديث ..'),
(558, 'home_page_updated!', 'Home Page Updated!', 'الصفحة الرئيسية تجديد!'),
(559, 'update_home_page', 'Update Home Page', 'تحديث الصفحة الرئيسية'),
(560, 'change_home_page_items', 'Change Home Page Items', 'البنود تغيير الصفحة الرئيسية'),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'حقا تريد حذف هذا الشعار؟'),
(562, 'top_slider', 'Top Slider', 'كبار المنزلق'),
(563, 'home_banners', 'Home Banners', 'لافتات المنزل'),
(564, 'search_section', 'Search Section', 'قسم البحث'),
(565, 'category_wise_products', 'Category Wise Products', 'فئة المنتجات الحكيمة'),
(566, 'special_products', 'Special Products', 'منتجات خاصة'),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'كبار المنزلق دائري'),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'اختيار الفئات (حد أقصى 10)'),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'عدد من صفقة اليوم (إظهار)'),
(570, 'updating', 'Updating', 'تحديث'),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'القائمة فئة تجديد!'),
(572, 'update', 'Update', 'تحديث'),
(573, 'after_slider', 'After Slider', 'بعد المنزلق'),
(574, 'select_banner_image', 'Select Banner Image', 'اختر صورة لافتة'),
(575, 'banner_updated!', 'Banner Updated!', 'راية تحديث!'),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'عنوان المنظر للبحث'),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'صورة المنظر لقسم البحث'),
(578, 'search_section_updated!', 'Search Section Updated!', 'قسم البحث تحديث!'),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'منتجات مميزة (عرض / إخفاء)'),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'عدد من المنتجات (لاظهار)'),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'اختيار المنتج نمط مربع'),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'القسم المميز تحديث!'),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'فاندور (عرض / إخفاء)'),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'عنوان المنظر للبائعين'),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'صورة المنظر للبائعين'),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'عدد من بائع (لاظهار)'),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'قسم بائع تحديث!'),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'فئات فرعية (الترويجية)'),
(589, 'color_preference_:', 'Color Preference :', 'تفضيل اللون:'),
(590, 'title_color:', 'Title Color:', 'عنوان اللون:'),
(591, 'add_new', 'Add New', 'اضف جديد'),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'فئات الوطن تجديد!'),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'بلوق (عرض / إخفاء)'),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'عنوان المنظر لبلوق'),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'صورة المنظر لبلوق'),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'عدد آخر بلوق (لاظهار)'),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'قسم بلوق تحديث!'),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'منتجات خاصة (إظهار / إخفاء)'),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'العلامة التجارية (عرض / إخفاء)'),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'عدد من العلامة التجارية (لاظهار)'),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'قسم العلامة التجارية تحديثها!'),
(602, 'banner_published!', 'Banner Published!', 'راية نشرت!'),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'راية لم تنشر!'),
(604, 'section_published!', 'Section Published!', 'القسم نشرت!'),
(605, 'section_unpublished!', 'Section Unpublished!', 'قسم غير منشورة!'),
(606, 'category_wise_banners', 'Category Wise Banners', 'فئة افتات الحكيمة'),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'عنوان الباب بائع'),
(608, 'contact_address', 'Contact Address', 'عنوان الإتصال'),
(609, 'contact_phone', 'Contact Phone', 'رقم الهاتف'),
(610, 'contact_email', 'Contact Email', 'تواصل بالبريد الاكتروني'),
(611, 'contact_website', 'Contact Website', 'اتصال الانترنت'),
(612, 'contact_about', 'Contact About', 'الاتصال حول'),
(613, 'footer_settings', 'Footer Settings', 'إعدادات تذييل'),
(614, 'footer_category', 'Footer Category', 'فئة تذييل'),
(615, 'footer_text', 'Footer Text', 'نص تذييل'),
(616, 'choose_theme', 'Choose Theme', 'اختيار موضوع'),
(617, 'theme_updated!', 'Theme Updated!', 'موضوع تحديث!'),
(618, 'upload_logo', 'Upload Logo', 'تحميل شعار'),
(619, 'select_logo', 'Select Logo', 'حدد شعار'),
(620, 'all_logos', 'All Logos', 'كل الشعارات'),
(621, 'place', 'Place', 'مكان'),
(622, 'admin_logo', 'Admin Logo', 'شعار المشرف'),
(623, 'successfully_selected!', 'Successfully Selected!', 'اختيار بنجاح!'),
(624, 'change', 'Change', 'تغيير'),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'الصفحة الرئيسية شعار رأس'),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'الصفحة الرئيسية شعار تذييل'),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'بنجاح شعار تحميلها'),
(628, 'select_favicon', 'Select Favicon', 'حدد فافيكون'),
(629, 'favicon_updated!', 'Favicon Updated!', 'فافيكون تحديث!'),
(630, 'choose_font', 'Choose Font', 'اختيار الخط'),
(631, 'font_updated!', 'Font Updated!', 'الخط تحديث!'),
(632, 'preloaders', 'Preloaders', 'preloaders'),
(633, 'preloader_color', 'Preloader Color', 'اللون تحميل مسبق'),
(634, 'preloader_background', 'Preloader Background', 'خلفية تحميل مسبق'),
(635, 'preloader_updated!', 'Preloader Updated!', 'التحميل المسبق لتحديث!'),
(636, 'social_links', 'Social Links', 'الروابط الاجتماعية'),
(637, 'system_name', 'System Name', 'اسم النظام'),
(638, 'system_email', 'System Email', 'نظام البريد الإلكتروني'),
(639, 'system_title', 'System Title', 'عنوان النظام'),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'الوقت مخبأ الصفحة الرئيسية'),
(641, 'minutes', 'Minutes', 'دقيقة'),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'اسم مجلد المنتج للتحميل'),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'صوت الإعلام المشرف'),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'حجم إخطار المشرف'),
(645, 'Volume_:_', 'Volume : ', 'الصوت : '),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'صوت الإعلام الصفحة الرئيسية'),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'حجم الاخطار الصفحة الرئيسية'),
(648, 'captcha_settings', 'Captcha Settings', 'إعدادات كلمة التحقق'),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'configuaration تسجيل الدخول الاجتماعي'),
(650, 'product_comment_settings', 'Product Comment Settings', 'إعدادات المنتج تعليق'),
(651, 'google_map', 'Google Map', 'خريطة جوجل'),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'حفظ الإعدادات كلمة التحقق'),
(653, 'public_key', 'Public Key', 'المفتاح العمومي'),
(654, 'private_key', 'Private Key', 'المفتاح الخاص'),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'إعدادات تسجيل الدخول الفيسبوك'),
(656, 'google+_login_settings', 'Google+ Login Settings', 'إعدادات تسجيل الدخول جوجل +'),
(657, 'type', 'Type', 'اكتب'),
(658, 'none', 'None', 'لا شيء'),
(659, 'facebook_comment', 'Facebook Comment', 'الفيسبوك تعليق'),
(660, 'disqus_comment', 'Disqus Comment', 'هارد تعليق'),
(661, 'google_comment', 'Google Comment', 'جوجل تعليق'),
(662, 'discus_ID', 'Discus ID', 'رمي القرص معرف'),
(663, 'fb_comment_id', 'Fb Comment Id', 'أف ب تعليق معرف'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'جوجل إعدادات خريطة المعهد'),
(665, 'api_key', 'Api Key', 'مفتاح API'),
(666, 'add_page', 'Add Page', 'إضافة صفحة'),
(667, 'create_page', 'Create Page', 'إنشاء الصفحة'),
(668, 'back_to_page_list', 'Back To Page List', 'العودة إلى القائمة الصفحة'),
(669, 'page_name', 'Page Name', 'اسم الصفحة'),
(670, 'preview', 'Preview', 'معاينة'),
(671, 'edit_page', 'Edit Page', 'تعديل الصفحة'),
(672, 'page_title', 'Page Title', 'عنوان الصفحة'),
(673, 'parmalink', 'Parmalink', 'الرابط الثابت'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'عدد الأجزاء الصفحة'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'يتيح البدء في إنشاء صفحتك'),
(676, 'parts', 'Parts', 'أجزاء'),
(677, 'select_size', 'Select Size', 'أختر الحجم'),
(678, 'one-fourth', 'One-fourth', 'ربع'),
(679, 'one-third', 'One-third', 'الثلث'),
(680, 'half', 'Half', 'نصف'),
(681, 'two-third', 'Two-third', 'ثلثي'),
(682, 'three-fourth', 'Three-fourth', 'ثلاثة ارباع'),
(683, 'full', 'Full', 'كامل'),
(684, 'select_type', 'Select Type', 'اختر صنف'),
(685, 'content', 'Content', 'محتوى'),
(686, 'widget', 'Widget', 'القطعة'),
(687, 'product_categories', 'Product Categories', 'أصناف المنتجات'),
(688, 'advance_search', 'Advance Search', 'بحث متقدم'),
(689, 'special_blogs', 'Special Blogs', 'بلوق الخاصة'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'لم يكن أكثر من 4 أعمدة!'),
(691, 'popular', 'Popular', 'شعبي'),
(692, 'deals', 'Deals', 'صفقات'),
(693, 'page_code', 'Page Code', 'كود الصفحة'),
(694, 'page_tags', 'Page Tags', 'علامات الصفحة'),
(695, 'column', 'Column', 'عمود'),
(696, '', '', ''),
(697, 'most_sold', 'Most Sold', 'الأكثر مبيعا'),
(698, 'product_image', 'Product Image', 'صورة المنتج'),
(699, 'digital_logo_image', 'Digital Logo Image', 'صورة الشعار الرقمية'),
(700, 'category_image', 'Category Image', 'صورة الفئة'),
(701, 'sub_category_image', 'Sub Category Image', 'صورة الفئة الفرعية'),
(702, 'brand_image', 'Brand Image', 'صورة العلامة التجارية'),
(703, 'blog_image', 'Blog Image', 'صور بلوق'),
(704, 'banner_image', 'Banner Image', 'صورة لافتة'),
(705, 'user_image', 'User Image', 'صورة المستخدم'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'بائع صورة الشعار'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'بائع راية صورة'),
(708, 'membership_image', 'Membership Image', 'صورة عضوية'),
(709, 'slides_image', 'Slides Image', 'صورة الشرائح'),
(710, 'select_default_image', 'Select Default Image', 'الصورة الافتراضية مختارة'),
(711, 'product_image_updated!', 'Product Image Updated!', 'صورة المنتج تجديد!'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'صورة الشعار الرقمية تجديد!'),
(713, 'category_image_updated!', 'Category Image Updated!', 'الفئة صورة تجديد!'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'صورة الفئة الفرعية تجديد!'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'صورة العلامة التجارية تجديد!'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'صورة بلوق تجديد!'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'راية صورة تجديد!'),
(718, 'user_image_updated!', 'User Image Updated!', 'صورة المستخدم تجديد!'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'بائع صورة شعار تجديد!'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'بائع راية صورة تجديد!'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'صورة عضوية تجديد!'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'الشرائح صورة تجديد!'),
(723, 'manage_activation', 'Manage Activation', 'إدارة التنشيط'),
(724, 'business_related', 'Business Related', 'الأعمال التجارية ذات الصلة'),
(725, 'physical_product_activation', 'Physical Product Activation', 'تنشيط المنتج المادي'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'تمكين منتج مادي'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'منتج مادي تعطيل'),
(728, 'digital_product_activation', 'Digital Product Activation', 'تنشيط المنتج الرقمي'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'تمكين المنتجات الرقمية'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'المنتجات الرقمية تعطيل'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'تفعيل نظام بائع'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'تمكين نظام بائع'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'تعطيل نظام بائع'),
(734, 'payment_related', 'Payment Related', 'دفع ذات الصلة'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'تفعيل الدفع باي بال'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'تمكين الدفع باي بال'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'الدفع باي بال تعطيل'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'تفعيل دفع شريط'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'دفع شريط تمكين'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'دفع شريط تعطيل'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'تفعيل الدفع نقدا'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'الدفع نقدا تمكين'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'الدفع نقدا تعطيل'),
(744, 'manage_business_settings', 'Manage Business Settings', 'إدارة إعدادات الأعمال'),
(745, 'cash_payment', 'Cash Payment', 'دفع نقدا'),
(746, 'paypal_payment', 'Paypal Payment', 'دفع باي بال'),
(747, 'paypal_email', 'Paypal Email', 'البريد الإلكتروني باي بال'),
(748, 'paypal_account_type', 'Paypal Account Type', 'باي بال نوع الحساب'),
(749, 'stripe_payment', 'Stripe Payment', 'دفع شريط'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'المفتاح السري الشريط'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'شريط مفتاح للنشر'),
(752, 'currency_name', 'Currency Name', 'اسم العملة'),
(753, 'currency_symbol', 'Currency Symbol', 'رمز العملة'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'الشحن نوع التكلفة'),
(755, 'product_wise', 'Product Wise', 'المنتج الحكمة'),
(756, 'fixed', 'Fixed', 'ثابت'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'تكلفة الشحن (إذا الثابتة)'),
(758, 'shipment_info', 'Shipment Info', 'معلومات الشحن'),
(759, 'question', 'Question', 'سؤال'),
(760, 'answer', 'Answer', 'إجابة'),
(761, 'add_more_FAQs', 'Add More FAQs', 'إضافة المزيد من الأسئلة الشائعة'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'إدارة وسائل الدفع والشحن'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'ضبط وسائل الدفع'),
(764, 'paypal_settings', 'Paypal Settings', 'إعدادات باي بال'),
(765, 'stripe_settings', 'Stripe Settings', 'إعدادات شريط'),
(766, 'shipment_settings', 'Shipment Settings', 'ضبط شحنة'),
(767, 'currency_settings', 'Currency Settings', 'إعدادات العملة'),
(768, 'exchange_rate', 'Exchange Rate', 'سعر الصرف'),
(769, 'default', 'Default', 'الافتراضي'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'سعر الصرف تحديثها'),
(771, 'currency_published', 'Currency Published', 'العملة المنشورة'),
(772, 'currency_unpublished', 'Currency Unpublished', 'عملة غير منشورة'),
(773, 'syncing..', 'Syncing..', 'المزامنة ..'),
(774, '!', '!', '!'),
(775, 'sync', 'Sync', 'مزامنة'),
(776, 'manage_faqs', 'Manage Faqs', 'إدارة الأسئلة المتكررة'),
(777, 'manage_staffs', 'Manage Staffs', 'إدارة الموظفين'),
(778, 'add_staff', 'Add Staff', 'إضافة الموظفين'),
(779, 'create_admin', 'Create Admin', 'إنشاء المشرف'),
(780, 'role', 'Role', 'دور'),
(781, 'edit_admin', 'Edit Admin', 'تحرير المشرف'),
(782, 'sddress', 'Sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'إدارة الأدوار'),
(784, 'add_role', 'Add Role', 'إضافة دور'),
(785, 'create_role', 'Create Role', 'إنشاء دور'),
(786, 'back_to_role_list', 'Back To Role List', 'العودة إلى قائمة دور'),
(787, 'edit_role', 'Edit Role', 'تحرير الدور'),
(788, 'permissions', 'Permissions', 'أذونات'),
(789, 'manage_SEO', 'Manage SEO', 'إدارة كبار المسئولين الاقتصاديين'),
(790, 'settings', 'Settings', 'إعدادات'),
(791, 'social_network_reach', 'Social Network Reach', 'الوصول إلى الشبكة الاجتماعية'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'مقاييس المرور اليكسا'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'الرسوم البيانية المرور اليكسا'),
(794, 'search_index', 'Search Index', 'فهرس البحث'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'اليكسا رتبة المرور'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'إدارة محرك البحث الأمثل'),
(797, 'keywords', 'Keywords', 'الكلمات المفتاحية'),
(798, 'revisit_after', 'Revisit After', 'إعادة النظر بعد'),
(799, 'sitemap_link', 'Sitemap Link', 'رابط خريطة الموقع'),
(800, 'admin_login_logo', 'Admin Login Logo', 'المشرف شعار تسجيل الدخول'),
(801, 'home_top_logo', 'Home Top Logo', 'المنزل أعلى الشعار'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'منزل أسفل الشعار'),
(803, 'manage_profile', 'Manage Profile', 'إدارة الملف الشخصي'),
(804, 'manage_details', 'Manage Details', 'إدارة تفاصيل'),
(805, 'profile_updated!', 'Profile Updated!', 'تحديث الملف الشخصي!');
INSERT INTO `language` (`word_id`, `word`, `english`, `Arabic`) VALUES
(806, 'update_profile', 'Update Profile', 'تحديث الملف'),
(807, 'change_password', 'Change Password', 'تغيير كلمة السر'),
(808, 'current_password', 'Current Password', 'كلمة السر الحالية'),
(809, 'new_password*', 'New Password*', 'كلمة السر الجديدة*'),
(810, 'confirm_password', 'Confirm Password', 'تأكيد كلمة المرور'),
(811, 'password_updated!', 'Password Updated!', 'تم تحديث كلمة السر!'),
(812, 'update_password', 'Update Password', 'كلمة التحديث'),
(813, 'password_mismatched', 'Password Mismatched', 'كلمة المرور غير متطابقة'),
(814, 'incorrect_password!', 'Incorrect Password!', 'كلمة مرور غير صحيحة!'),
(815, 'language_name', 'Language Name', 'اسم اللغة'),
(816, 'language_icon', 'Language Icon', 'رمز لغة'),
(817, 'select_language_icon', 'Select Language Icon', 'رمز لغة حدد'),
(818, 'secret', 'Secret', 'سر'),
(819, 'application_name', 'Application Name', 'اسم التطبيق'),
(820, 'client', 'Client', 'زبون'),
(821, 'client_secret', 'Client Secret', 'سر العميل'),
(822, 'redirect', 'Redirect', 'إعادة توجيه'),
(823, 'key', 'Key', 'مفتاح'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'زيارة موقعي'),
(825, 'membership_type', 'Membership Type', 'نوع العضوية'),
(826, 'membership_details', 'Membership Details', 'تفاصيل العضوية'),
(827, 'membership_expiration', 'Membership Expiration', 'انتهاء عضوية'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'مجموع المنتجات التي تم تحميلها.'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'منتجات المنشورة التي تم تحميلها'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship زمنية'),
(831, 'remaining', 'Remaining', 'المتبقية'),
(832, 'paid_by_customers', 'Paid By Customers', 'المدفوعة من قبل العملاء'),
(833, 'due_from_admin', 'Due From Admin', 'بسبب من المشرف'),
(834, 'payment_settings', 'Payment Settings', 'إعدادات الدفع'),
(835, 'upgrade_package', 'Upgrade Package', 'حزمة الترقية'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'إدارة المخزون المنتج الخاص بك'),
(837, 'select_category', 'Select Category', 'اختر الفئة'),
(838, 'choose_product', 'Choose Product', 'اختيار المنتج'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'إدارة المنزلق ملفه الشخصي'),
(840, 'home_page_style', 'Home Page Style', 'أسلوب الصفحة الرئيسية'),
(841, 'manage_site', 'Manage Site', 'إدارة الموقع'),
(842, 'vendor_images', 'Vendor Images', 'الصور مورد معين لل'),
(843, 'social_media', 'Social Media', 'وسائل التواصل الاجتماعي'),
(844, 'SEO', 'SEO', 'كبار المسئولين الاقتصاديين'),
(845, 'select_images', 'Select Images', 'صور مختارة'),
(846, 'suggested_width', 'Suggested Width', 'عرض المقترح'),
(847, 'height', 'Height', 'ارتفاع'),
(848, 'cover_photo', 'Cover Photo', 'صورة الغلاف'),
(849, 'select_photo', 'Select Photo', 'اختر الصورة'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'إدارة إعدادات دفع المتلقي'),
(851, 'upgrade', 'Upgrade', 'تطوير'),
(852, 'maximum_product', 'Maximum Product', 'الحد الأقصى المنتج'),
(853, 'about', 'About', 'حول'),
(854, 'oops', 'Oops', 'عفوا'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'الصفحة المطلوبة غير متوفرة'),
(856, 'back_to_home', 'Back To Home', 'العودة إلى المنزل'),
(857, 'browse', 'Browse', 'تصفح'),
(858, 'sort_by', 'Sort By', 'ترتيب حسب'),
(859, 'price_low_to_high', 'Price Low To High', 'السعر على ارتفاع منخفض'),
(860, 'price_high_to_low', 'Price High To Low', 'السعر الاعلى الى الادنى'),
(861, 'oldest', 'Oldest', 'أقدم'),
(862, 'newest', 'Newest', 'أحدث'),
(863, 'sold_by_:', 'Sold By :', 'تم بيعها من قبل :'),
(864, 'price_:', 'Price :', 'السعر :'),
(865, 'discount:_', 'Discount: ', 'خصم: '),
(866, '_available', ' Available', ' متاح'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' إضافة إلى سلة'),
(868, '_compare', ' Compare', ' قارن'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'فئة بيعها من المورد'),
(870, 'recent', 'Recent', 'الأخيرة'),
(871, 'our_vendors_location', 'Our Vendors Location', 'البائعين لدينا موقع'),
(872, 'search_vendors', 'Search Vendors', 'الباعة البحث'),
(873, 'go', 'Go', 'اذهب'),
(874, 'our_vendors', 'Our Vendors', 'موردينا'),
(875, 'message_sent!', 'Message Sent!', 'تم الارسال!'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'كلمة التحقق غير صحيح!'),
(877, 'about_us', 'About Us', 'معلومات عنا'),
(878, 'contact_form', 'Contact Form', 'نموذج الاتصال'),
(879, 'sending..', 'Sending..', 'إرسال..'),
(880, 'send_message', 'Send Message', 'إرسال رسالة'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'أدخل عنوان بريد إلكتروني صالح'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'الرسالة أرسلت بنجاح'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'معلومات غير صحيحة! تحقق في'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'هذه المقدمة هو مطلوب!'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'أسئلة مكررة'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'لست عضوا بعد ؟'),
(887, 'sign_up_now!', 'Sign Up Now!', 'أفتح حساب الأن!'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'نسيت كلمة المرور ؟'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'قم بتسجيل الدخول باستخدام الفيسبوك'),
(890, 'sign_in_with_google', 'Sign In With Google', 'تسجيل الدخول مع جوجل'),
(891, 'submit', 'Submit', 'عرض'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'عضوا فعلا ؟ </font><font>انقر ل'),
(893, 'as_customer', 'As Customer', 'كما العملاء'),
(894, '_or_', ' Or ', ' أو '),
(895, 'sign_up', 'Sign Up', 'سجل'),
(896, 'as_vendor', 'As Vendor', 'كما بائع'),
(897, 'registering..', 'Registering..', 'تسجيل ..'),
(898, 'register', 'Register', 'تسجيل'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'بالفعل بائع؟ </font><font>انقر ل'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'لست عضوا بعد ؟ </font><font>انقر ل'),
(901, 'back_to_login', 'Back To Login', 'العودة لتسجيل الدخول'),
(902, 'reset_compare_list', 'Reset Compare List', 'إعادة تعيين قائمة المقارنة'),
(903, 'choose_a_product', 'Choose A Product', 'اختيار المنتج'),
(904, 'my_cart', 'My Cart', 'سلتي'),
(905, '1', '1', '1'),
(906, 'orders', 'Orders', 'أوامر'),
(907, '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'عنوان التوصيل'),
(909, '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'خيارات الدفع'),
(911, 'cancel_order', 'Cancel Order', 'الغاء الطلب'),
(912, 'place_order', 'Place Order', 'أمر مكان'),
(913, 'my_profile', 'My Profile', 'ملفي الشخصي'),
(914, 'wishlist', 'Wishlist', 'مفضلة'),
(915, 'unit_price', 'Unit Price', 'سعر الوحدة'),
(916, 'change_choices', 'Change Choices', 'خيارات التغيير'),
(917, 'shopping_cart', 'Shopping Cart', 'عربة التسوق'),
(918, 'coupon_discount', 'Coupon Discount', 'قسيمة خصم'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'إدخال رمز القسيمة إذا كان لديك واحدة'),
(920, 'apply_coupon', 'Apply Coupon', 'تطبيق القسيمة'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'الرمز البريدي / الرمز البريدي'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'سفينة إلى عنوان مختلف عن فاتورة'),
(923, 'paypal', 'Paypal', 'باي بال'),
(924, 'stripe', 'Stripe', 'شريط'),
(925, 'invoice_paper', 'Invoice Paper', 'ورقة الفاتورة'),
(926, 'invoice_no', 'Invoice No', 'رقم الفاتورة'),
(927, 'client_information:', 'Client Information:', 'معلومات العميل:'),
(928, 'first_name:', 'First Name:', 'الاسم الاول:'),
(929, 'last_name:', 'Last Name:', 'الكنية:'),
(930, 'peyment_details_:', 'Peyment Details :', 'تفاصيل PEYMENT:'),
(931, 'payment_status_:', 'Payment Status :', 'حالة السداد :'),
(932, 'payment_method_:', 'Payment Method :', 'طريقة الدفع او السداد :'),
(933, 'invoice', 'Invoice', 'فاتورة'),
(934, 'billed_to', 'Billed To', 'وصفت ل'),
(935, 'shipped_to', 'Shipped To', 'تم شحنها إلي'),
(936, 'order_date', 'Order Date', 'تاريخ الطلب'),
(937, 'order_history', 'Order History', 'تاريخ الطلب'),
(938, 'downloads', 'Downloads', 'التنزيلات'),
(939, 'edit_profile', 'Edit Profile', 'تعديل الملف الشخصي'),
(940, 'support_ticket', 'Support Ticket', 'بطاقة الدعم'),
(941, 'change_profile_picture', 'Change Profile Picture', 'تغيير الصورة الشخصية'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'الصورة الشخصية المحفوظة بنجاح!'),
(943, 'edit_failed!', 'Edit Failed!', 'تحرير فشل!'),
(944, 'try_again!', 'Try Again!', 'حاول ثانية!'),
(945, 'save_changes', 'Save Changes', 'حفظ التغييرات'),
(946, 'profile_information', 'Profile Information', 'معلومات الملف الشخصي'),
(947, 'last_7_days', 'Last 7 Days', '7 أيام الماضية'),
(948, 'last_30_days', 'Last 30 Days', 'أخر 30 يوم'),
(949, 'wished_products', 'Wished Products', 'منتجات تمنى'),
(950, 'user_since', 'User Since', 'مستخدم منذ'),
(951, 'last_login', 'Last Login', 'آخر تسجيل دخول'),
(952, 'contact_no', 'Contact No', 'رقم الاتصال'),
(953, 'your_wishlist', 'Your Wishlist', 'سلة المفضلة'),
(954, 'availability', 'Availability', 'توفر'),
(955, 'purchase', 'Purchase', 'شراء'),
(956, 'available', 'Available', 'متاح'),
(957, 'your_order_history', 'Your Order History', 'تاريخ طلبك'),
(958, 'your_downloads', 'Your Downloads', 'برامجك'),
(959, 'downloading..', 'Downloading..', 'تحميل ..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'تحميل تم رفض الإذن'),
(961, 'personal_info', 'Personal Info', 'معلومات شخصية'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'تغيير معلومات الملف الشخصي'),
(963, 'address 1', 'Address 1', 'العنوان 1'),
(964, 'address 2', 'Address 2', 'العنوان 2'),
(965, 'skype', 'Skype', 'سكايب'),
(966, 'google_plus', 'Google Plus', 'جوجل بلس'),
(967, 'facebook', 'Facebook', 'فيس بوك'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'معلومات تحديث تنجح!'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'معلومات محدثة بنجاح!'),
(970, 'change_your_password', 'Change Your Password', 'غير كلمة المرور الخاصة بك'),
(971, 'old_password', 'Old Password', 'كلمة المرور القديمة'),
(972, 'new_password', 'New Password', 'كلمة السر الجديدة'),
(973, 'confirm_new_password', 'Confirm New Password', 'تأكيد كلمة المرور الجديدة'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'تغيير كلمة المرور غير ناجحة!'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'تم تغيير الرقم السري بنجاح!'),
(976, 'all_messages', 'All Messages', 'جميع الرسائل'),
(977, 'create_ticket', 'Create Ticket', 'إنشاء تذكرة'),
(978, 'ticket_subject', 'Ticket Subject', 'تذكرة الموضوع'),
(979, 'comment', 'Comment', 'التعليق'),
(980, 'creating...', 'Creating...', 'إنشاء...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'تذكرة إنشاؤها بنجاح'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'إنشاء تذكرة ناجحة'),
(983, 'create', 'Create', 'خلق'),
(984, 'your_message', 'Your Message', 'رسالتك'),
(985, 'replying...', 'Replying...', 'الرد ...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'الرد إرسالها بنجاح'),
(987, 'unsuccessful', 'Unsuccessful', 'غير ناجح'),
(988, 'vendor_public_home', 'Vendor Public Home', 'البيت العام الباعة من'),
(989, 'member_since', 'Member Since', 'عضو منذ'),
(990, 'vendor_rating', 'Vendor Rating', 'تصنيفهم'),
(991, 'about_vendor', 'About Vendor', 'حول بائع'),
(992, 'find_location', 'Find Location', 'العثور على الموقع'),
(993, 'filters', 'Filters', 'مرشحات'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'بائع المنتج المميز'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL),
(996, 'all_category', 'All Category', NULL),
(997, 'by', 'By', NULL),
(998, 'sold_by', 'Sold By', NULL),
(999, 'last_updated', 'Last Updated', NULL),
(1000, 'review(s)', 'Review(s)', NULL),
(1001, 'add_your_review', 'Add Your Review', NULL),
(1002, 'view_details', 'View Details', NULL),
(1003, 'related_products', 'Related Products', NULL),
(1004, 'full_description', 'Full Description', NULL),
(1005, 'additional_specification', 'Additional Specification', NULL),
(1006, 'reviews', 'Reviews', NULL),
(1007, 'color_:', 'Color :', NULL),
(1008, 'add_to_list', 'Add To List', NULL),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', NULL),
(1010, 'email_sending_failed!', 'Email Sending Failed!', NULL),
(1011, 'working', 'Working', NULL),
(1012, 'fill_all_fields_correctly', 'Fill All Fields Correctly', NULL),
(1013, 'deposit_request_sent', 'Deposit Request Sent', NULL),
(1014, 'deposit_request_sending_failed', 'Deposit Request Sending Failed', NULL),
(1015, 'payment_info_sent', 'Payment Info Sent', NULL),
(1016, 'payment_info_sending_failed', 'Payment Info Sending Failed', NULL),
(1017, 'wallet', 'Wallet', NULL),
(1018, 'state', 'State', NULL),
(1019, 'country', 'Country', NULL),
(1020, 'deposit_to_wallet', 'Deposit To Wallet', NULL),
(1021, 'your_wallet_history', 'Your Wallet History', NULL),
(1022, 'time', 'Time', NULL),
(1023, 'payment_info', 'Payment Info', NULL),
(1024, 'order_tracing', 'Order Tracing', NULL),
(1025, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', NULL),
(1026, 'order_traced_successfully!', 'Order Traced Successfully!', NULL),
(1027, 'checking..', 'Checking..', NULL),
(1028, 'trace_my_order', 'Trace My Order', NULL),
(1029, 'pay_to_vendor', 'Pay To Vendor', NULL),
(1030, 'package_payments', 'Package Payments', NULL),
(1031, 'wallet_loads', 'Wallet Loads', NULL),
(1032, 'email_templates', 'Email Templates', NULL),
(1033, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL),
(1034, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL),
(1035, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL),
(1036, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL),
(1037, 'successfully_enabled!', 'Successfully Enabled!', NULL),
(1038, 'successfully_disabled!', 'Successfully Disabled!', NULL),
(1039, 'twocheckout_activation', 'Twocheckout Activation', NULL),
(1040, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL),
(1041, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL),
(1042, 'voguePay_activation', 'VoguePay Activation', NULL),
(1043, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL),
(1044, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL),
(1045, 'twocheckout_settings', 'Twocheckout Settings', NULL),
(1046, 'user_id', 'User Id', NULL),
(1047, 'secret_key', 'Secret Key', NULL),
(1048, 'account_type', 'Account Type', NULL),
(1049, 'voguePay_settings', 'VoguePay Settings', NULL),
(1050, 'merchant_id', 'Merchant Id', NULL),
(1051, 'manage_wallet_loads', 'Manage Wallet Loads', NULL),
(1052, 'customer', 'Customer', NULL),
(1053, 'i_agree_with', 'I Agree With', NULL),
(1054, 'terms_&_conditions', 'Terms & Conditions', NULL),
(1055, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL),
(1056, 'deposit', 'Deposit', NULL),
(1057, 'transaction_info', 'Transaction Info', NULL),
(1058, 'fully_paid', 'Fully Paid', NULL),
(1059, 'payment_from_admin', 'Payment From Admin', NULL),
(1060, 'package_upgrade_history', 'Package Upgrade History', NULL),
(1061, 'wrong_order_id!', 'Wrong Order Id!', NULL),
(1062, 'order_from', 'Order From', NULL),
(1063, 'pending', 'Pending', NULL),
(1064, 'status_updated_on', 'Status Updated On', NULL),
(1065, 'twocheckcout_payment', 'Twocheckcout Payment', NULL),
(1066, 'twocheckcout_user', 'Twocheckcout User', NULL),
(1067, 'twocheckout_secret', 'Twocheckout Secret', NULL),
(1068, 'voguePay_payment', 'VoguePay Payment', NULL),
(1069, 'details_on_delivery_status', 'Details On Delivery Status', NULL),
(1070, 'manage_Admin_payments', 'Manage Admin Payments', NULL),
(1071, 'total_due', 'Total Due', NULL),
(1072, 'paid_amount', 'Paid Amount', NULL),
(1073, 'admin_payments', 'Admin Payments', NULL),
(1074, 'manage_package_upgrade_history', 'Manage Package Upgrade History', NULL),
(1075, 'view_upgrade_details', 'View Upgrade Details', NULL),
(1076, 'free', 'Free', NULL),
(1077, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL),
(1078, 'smtp_settings', 'Smtp Settings', NULL),
(1079, 'smtp_status', 'Smtp Status', NULL),
(1080, 'smtp_host', 'Smtp Host', NULL),
(1081, 'smtp_port', 'Smtp Port', NULL),
(1082, 'smtp_user', 'Smtp User', NULL),
(1083, 'smtp_password', 'Smtp Password', NULL),
(1084, 'voguepay', 'Voguepay', NULL),
(1085, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL),
(1086, 'incorrect_information', 'Incorrect Information', NULL),
(1087, 'check_again', 'Check Again', NULL),
(1088, 'this_field_is_required!', 'This Field Is Required!', NULL),
(1089, 'blog_details', 'Blog Details', NULL),
(1090, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', NULL),
(1091, 'provide_payment_info', 'Provide Payment Info', NULL),
(1092, 'view_status', 'View Status', NULL),
(1093, 'successfully_saved!', 'Successfully Saved!', NULL),
(1094, 'no_payment_info_provided', 'No Payment Info Provided', NULL),
(1095, 'no_product_from_admin', 'No Product From Admin', NULL),
(1096, 'wallet_balance', 'Wallet Balance', NULL),
(1097, 'captcha_status', 'Captcha Status', NULL),
(1098, 'manage_email_templates', 'Manage Email Templates', NULL),
(1099, 'Password Reset Email', 'Password Reset Email', NULL),
(1100, 'Account Approval Email', 'Account Approval Email', NULL),
(1101, 'Membership Upgrade Email', 'Membership Upgrade Email', NULL),
(1102, 'Vendors Account Opening', 'Vendors Account Opening', NULL),
(1103, 'Users Account Opening', 'Users Account Opening', NULL),
(1104, 'Admins Account Opening', 'Admins Account Opening', NULL),
(1105, 'email_body', 'Email Body', NULL),
(1106, 'N.B', 'N.B', NULL),
(1107, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', NULL),
(1108, 'choose_background_theme', 'Choose Background Theme', NULL),
(1109, 'home_default_currency', 'Home Default Currency', NULL),
(1110, 'system_default_currency', 'System Default Currency', NULL),
(1111, 'set_currency_format', 'Set Currency Format', NULL),
(1112, 'currency_format', 'Currency Format', NULL),
(1113, 'symbol_format', 'Symbol Format', NULL),
(1114, 'no_of_decimals', 'No Of Decimals', NULL),
(1115, 'all_currencies', 'All Currencies', NULL),
(1116, 'product_bundle', 'Product Bundle', NULL),
(1117, 'manage_product_bundle', 'Manage Product Bundle', NULL),
(1118, 'add_product_bundle_entry_taken!', 'Add Product Bundle Entry Taken!', NULL),
(1119, 'add_product_bundle', 'Add Product Bundle', NULL),
(1120, 'create_product_bundle', 'Create Product Bundle', NULL),
(1121, 'back_to_product_bundle_list', 'Back To Product Bundle List', NULL),
(1122, 'bundle_stock', 'Bundle Stock', NULL),
(1123, 'bundle_details', 'Bundle Details', NULL),
(1124, 'bundle_title', 'Bundle Title', NULL),
(1125, 'add_products', 'Add Products', NULL),
(1126, 'add_products_from_here', 'Add Products From Here', NULL),
(1127, 'add', 'Add', NULL),
(1128, 'add_more_products', 'Add More Products', NULL),
(1129, 'bundle_tax', 'Bundle Tax', NULL),
(1130, 'bundle_discount', 'Bundle Discount', NULL),
(1131, 'product_bundle_has_been_uploaded!', 'Product Bundle Has Been Uploaded!', NULL),
(1132, 'No Products are available for this brand', 'No Products Are Available For This Brand', NULL),
(1133, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1134, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1135, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1136, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1137, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1138, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1139, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1140, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1141, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1142, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1143, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1144, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1145, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1146, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1147, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1148, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1149, 'current_stock', 'Current Stock', NULL),
(1150, 'edit_product_bundle', 'Edit Product Bundle', NULL),
(1151, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL),
(1152, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1153, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1154, 'product_bundle_has_been_edited!', 'Product Bundle Has Been Edited!', NULL),
(1155, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1156, 'view_product_bundle', 'View Product Bundle', NULL),
(1157, 'product_name', 'Product Name', NULL),
(1158, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1159, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1160, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1161, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1162, 'add_bundle_quantity', 'Add Bundle Quantity', NULL),
(1163, 'reduce_bundle_quantity', 'Reduce Bundle Quantity', NULL),
(1164, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1165, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1166, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1167, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1168, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1169, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1170, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1171, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1172, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1173, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1174, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1175, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1176, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1177, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1178, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1179, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1180, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1181, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1182, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1183, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1184, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1185, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1186, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1187, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1188, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1189, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1190, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1191, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1192, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1193, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1194, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1195, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1196, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1197, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1198, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1199, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1200, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1201, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1202, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1203, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1204, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1205, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1206, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1207, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1208, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1209, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1210, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1211, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1212, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1213, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1214, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1215, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1216, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1217, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1218, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1219, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1220, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1221, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1222, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1223, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1224, 'physical', 'Physical', NULL),
(1225, 'digital', 'Digital', NULL),
(1226, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1227, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1228, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1229, 'bundle', 'Bundle', NULL),
(1230, 'most', 'Most', NULL),
(1231, 'viewed', 'Viewed', NULL),
(1232, 'Products_:', 'Products :', NULL),
(1233, 'added_by:', 'Added By:', NULL),
(1234, 'bundle_rated_successfully', 'Bundle Rated Successfully', NULL),
(1235, 'bundle_rating_failed', 'Bundle Rating Failed', NULL),
(1236, 'you_already_rated_this_bundle', 'You Already Rated This Bundle', NULL),
(1237, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1238, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1239, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1240, 'google_analytics', 'Google Analytics', NULL),
(1241, 'tracking_id', 'Tracking Id', NULL),
(1242, 'google_analytics_settings', 'Google Analytics Settings', NULL),
(1243, 'manage_pay_to_vendor', 'Manage Pay To Vendor', NULL),
(1244, 'google_analytics_enabled!', 'Google Analytics Enabled!', NULL),
(1245, 'google_analytics_disabled!', 'Google Analytics Disabled!', NULL),
(1246, 'show_vendor_website', 'Show Vendor Website', NULL),
(1247, 'vendor_show_enabled', 'Vendor Show Enabled', NULL),
(1248, 'vendor_show_disabled', 'Vendor Show Disabled', NULL),
(1249, 'show_vendors', 'Show Vendors', NULL),
(1250, 'product_bundle_(_show_/_hide_)', 'Product Bundle ( Show / Hide )', NULL),
(1251, 'bundle_product_section_updated!', 'Bundle Product Section Updated!', NULL),
(1252, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1253, 'confirm_payment', 'Confirm Payment', NULL),
(1254, 'bundled_product', 'Bundled Product', NULL),
(1255, 'available_brands', 'Available Brands', NULL),
(1256, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1257, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1258, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1259, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1260, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1261, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1262, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1263, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1264, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1265, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1266, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1267, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1268, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1269, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1270, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1271, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1272, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1273, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1274, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1275, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1276, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1277, 'bundled_products', 'Bundled Products', NULL),
(1278, 'purchase_summary', 'Purchase Summary', NULL),
(1279, 'others_info', 'Others Info', NULL),
(1280, 'personal_information', 'Personal Information', NULL),
(1281, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1282, 'edit_coupon', 'Edit Coupon', NULL),
(1283, 'coupon_discount_activated', 'Coupon Discount Activated', NULL),
(1284, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1285, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1286, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL),
(1287, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1288, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1289, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1290, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1291, '_added_to_wishlist', ' Added To Wishlist', NULL),
(1292, 'thanks_for_registration', 'Thanks For Registration', NULL),
(1293, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL),
(1294, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL),
(1295, 'check_your_email', 'Check Your Email', NULL),
(1296, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL),
(1297, 'login_from_here', 'Login From Here', NULL),
(1298, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1299, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1300, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1301, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1302, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1303, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1304, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1305, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1306, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1307, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1308, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1309, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1310, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1311, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1312, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1313, 'vendor_payment_status', 'Vendor Payment Status', NULL),
(1314, 'cash', 'Cash', NULL),
(1315, 'post_product', 'Post Product', NULL),
(1316, 'fill_the_form_to_post_the_product', 'Fill The Form To Post The Product', NULL),
(1317, 'processing..', 'Processing..', NULL),
(1318, 'Apply', 'Apply', NULL),
(1319, 'admin_payments_details', 'Admin Payments Details', NULL),
(1320, 'choose_a_country_first', 'Choose A Country First', NULL),
(1321, 'select_a_category', 'Select A Category', NULL),
(1322, 'select_a_category_first', 'Select A Category First', NULL),
(1323, 'new_message', 'New Message', NULL),
(1324, '_compared', ' Compared', NULL),
(1325, 'paid', 'Paid', NULL),
(1326, 'loading...', 'Loading...', NULL),
(1327, 'condition', 'Condition', NULL),
(1328, 'select_a_condition', 'Select A Condition', NULL),
(1329, 'used', 'Used', NULL),
(1330, 'unit(e.g_Kg,Pc etc)', 'Unit(e.g Kg,Pc Etc)', NULL),
(1331, 'unit_(e.g_Kg,_Pc_etc)', 'Unit (e.g Kg, Pc Etc)', NULL),
(1332, 'unit_(Kg,_Pc_etc)', 'Unit (Kg, Pc Etc)', NULL),
(1333, 'choose_files', 'Choose Files', NULL),
(1334, 'location', 'Location', NULL),
(1335, 'additional_information', 'Additional Information', NULL),
(1336, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', NULL),
(1337, 'product_upload_failed!', 'Product Upload Failed!', NULL),
(1338, 'your_remaining_product_upload_amount_is:', 'Your Remaining Product Upload Amount Is:', NULL),
(1339, 'your_remaining_product_upload_amount_is:_', 'Your Remaining Product Upload Amount Is: ', NULL),
(1340, 'please_purchase_a_package_to_upload_more', 'Please Purchase A Package To Upload More', NULL),
(1341, 'purchase_package', 'Purchase Package', NULL),
(1342, 'please_purchase_a_package_to_upload_more_products.', 'Please Purchase A Package To Upload More Products.', NULL),
(1343, 'your_remaining_product_upload_amount:_', 'Your Remaining Product Upload Amount: ', NULL),
(1344, 'remaining_product_upload_amount:_', 'Remaining Product Upload Amount: ', NULL),
(1345, 'confirm_your_upload', 'Confirm Your Upload', NULL),
(1346, 'confirm', 'Confirm', NULL),
(1347, 'uploading_a_product_will_cost_you_1_upload_amount', 'Uploading A Product Will Cost You 1 Upload Amount', NULL),
(1348, 'uploading_a_product_will_cost_you_1_upload_amount</br>after_uploading_a_product_you_can\'t_edit_it', 'Uploading A Product Will Cost You 1 Upload Amount</br>after Uploading A Product You Can\'t Edit It', NULL),
(1349, 'uploading_a_product_will_cost_you_1_upload_amount</br><span class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</span>', 'Uploading A Product Will Cost You 1 Upload Amount</br><span Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</span>', NULL),
(1350, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</b>', NULL),
(1351, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can_not_edit_it_again</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can Not Edit It Again</b>', NULL),
(1352, 'package_info', 'Package Info', NULL),
(1353, 'remaining_upload_amount', 'Remaining Upload Amount', NULL),
(1354, 'last_purchased_package', 'Last Purchased Package', NULL),
(1355, 'current_package', 'Current Package', NULL),
(1356, 'purchase_time', 'Purchase Time', NULL),
(1357, 'customer\'s_uploaded_products', 'Customer\'s Uploaded Products', NULL),
(1358, 'terms_conditions', 'Terms Conditions', NULL),
(1359, 'premium_packeges', 'Premium Packeges', NULL),
(1360, 'product_by', 'Product By', NULL),
(1361, 'sold_by:', 'Sold By:', NULL),
(1362, 'seller:', 'Seller:', NULL),
(1363, 'premium_packeges_for_customer', 'Premium Packeges For Customer', NULL),
(1364, 'product_upload_amount', 'Product Upload Amount', NULL),
(1365, 'amount_of', 'Amount Of', NULL),
(1366, 'product_upload', 'Product Upload', NULL),
(1367, 'times', 'Times', NULL),
(1368, 'seller:_', 'Seller: ', NULL),
(1369, 'seller_email:', 'Seller Email:', NULL),
(1370, 'seller_phone:', 'Seller Phone:', NULL),
(1371, 'not_given', 'Not Given', NULL),
(1372, 'phone_no.:', 'Phone No.:', NULL),
(1373, 'express_interest:', 'Express Interest:', NULL),
(1374, 'direct_messages:', 'Direct Messages:', NULL),
(1375, 'photo_gallery:', 'Photo Gallery:', NULL),
(1376, 'select_a_payment_method', 'Select A Payment Method', NULL),
(1377, 'please_wait', 'Please Wait', NULL),
(1378, 'confirm_purchase', 'Confirm Purchase', NULL),
(1379, 'selected', 'Selected', NULL),
(1380, 'premium_packege', 'Premium Packege', NULL),
(1381, 'packege', 'Packege', NULL),
(1382, 'back_to_packege_list', 'Back To Packege List', NULL),
(1383, 'edit_packege', 'Edit Packege', NULL),
(1384, 'location:', 'Location:', NULL),
(1385, 'packege_name', 'Packege Name', NULL),
(1386, 'amount_(USD)', 'Amount (USD)', NULL),
(1387, 'amount_of_product_upload', 'Amount Of Product Upload', NULL),
(1388, 'amount_($)', 'Amount ($)', NULL),
(1389, 'packege_image', 'Packege Image', NULL),
(1390, 'select_a_photo', 'Select A Photo', NULL),
(1391, 'customer_products', 'Customer Products', NULL),
(1392, 'uploaded_products', 'Uploaded Products', NULL),
(1393, 'your_uploaded_products', 'Your Uploaded Products', NULL),
(1394, 'unvailable', 'Unvailable', NULL),
(1395, 'publish/unpublish', 'Publish/unpublish', NULL),
(1396, 'publish/_unpublish', 'Publish/ Unpublish', NULL),
(1397, 'product_published', 'Product Published', NULL),
(1398, 'product_unpublished', 'Product Unpublished', NULL),
(1399, 'Unpublish', 'Unpublish', NULL),
(1400, 'Published', 'Published', NULL),
(1401, 'Unpublished', 'Unpublished', NULL),
(1402, 'packege_purchase_failed!', 'Packege Purchase Failed!', NULL),
(1403, 'packege_purchase_successfully!', 'Packege Purchase Successfully!', NULL),
(1404, 'purchasing..', 'Purchasing..', NULL),
(1405, 'premium_packages', 'Premium Packages', NULL),
(1406, 'premium_packages_for_customer', 'Premium Packages For Customer', NULL),
(1407, 'premium_package', 'Premium Package', NULL),
(1408, 'package', 'Package', NULL),
(1409, 'back_to_package_list', 'Back To Package List', NULL),
(1410, 'edit_package', 'Edit Package', NULL),
(1411, 'package_name', 'Package Name', NULL),
(1412, 'package_image', 'Package Image', NULL),
(1413, 'customer_uploaded_products', 'Customer Uploaded Products', NULL),
(1414, 'back_to_customer_product_list', 'Back To Customer Product List', NULL),
(1415, 'uploaded_by', 'Uploaded By', NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Arabic`) VALUES
(1416, 'customer_status', 'Customer Status', NULL),
(1417, 'customer_package_payments', 'Customer Package Payments', NULL),
(1418, 'customer_package_payment', 'Customer Package Payment', NULL),
(1419, 'back_to_package_payment_list', 'Back To Package Payment List', NULL),
(1420, 'customer_name', 'Customer Name', NULL),
(1421, 'payment_type', 'Payment Type', NULL),
(1422, 'view_package_payment', 'View Package Payment', NULL),
(1423, 'details_of_package_payment', 'Details Of Package Payment', NULL),
(1424, 'purchase_datetime', 'Purchase Datetime', NULL),
(1425, 'change_availability_status', 'Change Availability Status', NULL),
(1426, 'package_payment_info', 'Package Payment Info', NULL),
(1427, 'purchase_date', 'Purchase Date', NULL),
(1428, 'admin_status', 'Admin Status', NULL),
(1429, 'not_available_payment_info', 'Not Available Payment Info', NULL),
(1430, 'availability_status', 'Availability Status', NULL),
(1431, 'sold', 'Sold', NULL),
(1432, 'detailed_information', 'Detailed Information', NULL),
(1433, 'customer_product_(_show_/_hide_)', 'Customer Product ( Show / Hide )', NULL),
(1434, 'number_of_product_(_to_show_)', 'Number Of Product ( To Show )', NULL),
(1435, 'customer_product_section_updated!', 'Customer Product Section Updated!', NULL),
(1436, 'customer_products_section_updated!', 'Customer Products Section Updated!', NULL),
(1437, 'product_bundle_activation', 'Product Bundle Activation', NULL),
(1438, 'product_bundle_enabled', 'Product Bundle Enabled', NULL),
(1439, 'product_bundle_disabled', 'Product Bundle Disabled', NULL),
(1440, 'customer_product_activation', 'Customer Product Activation', NULL),
(1441, 'customer_product_enabled', 'Customer Product Enabled', NULL),
(1442, 'customer_product_disabled', 'Customer Product Disabled', NULL),
(1443, 'seller_informations', 'Seller Informations', NULL),
(1444, 'classifieds', 'Classifieds', NULL),
(1445, 'classifieds_products', 'Classifieds Products', NULL),
(1446, 'classified_products', 'Classified Products', NULL),
(1447, 'classified_product_activation', 'Classified Product Activation', NULL),
(1448, 'Share', 'Share', NULL),
(1449, 'share_links', 'Share Links', NULL),
(1450, 'price:', 'Price:', NULL),
(1451, 'condition:', 'Condition:', NULL),
(1452, 'product_search', 'Product Search', NULL),
(1453, 'all_type', 'All Type', NULL),
(1454, 'search_by_brand_name', 'Search By Brand Name', NULL),
(1455, 'back_to_profile', 'Back To Profile', NULL),
(1456, 'wallet_', 'Wallet ', NULL),
(1457, 'search_by_brand', 'Search By Brand', NULL),
(1458, 'brand:_', 'Brand: ', NULL),
(1459, '_seller:', ' Seller:', NULL),
(1460, 'seller', 'Seller', NULL),
(1461, 'seller_email', 'Seller Email', NULL),
(1462, 'phone_no', 'Phone No', NULL),
(1463, 'no_specification_found!', 'No Specification Found!', NULL),
(1464, 'payumoney', 'Payumoney', NULL),
(1465, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL),
(1466, 'pay_u_money_settings', 'Pay U Money Settings', NULL),
(1467, 'merchant_key', 'Merchant Key', NULL),
(1468, 'merchant_salt', 'Merchant Salt', NULL),
(1469, 'pay_u_money_activation', 'Pay U Money Activation', NULL),
(1470, 'pay_u_money_payment_enabled', 'Pay U Money Payment Enabled', NULL),
(1471, 'pay_u_money_payment_disabled', 'Pay U Money Payment Disabled', NULL),
(1472, 'payUmoney_payment', 'PayUmoney Payment', NULL),
(1473, 'payUmoney_merchant_key', 'PayUmoney Merchant Key', NULL),
(1474, 'payUmoney_merchant_salt', 'PayUmoney Merchant Salt', NULL),
(1475, 'video', 'Video', NULL),
(1476, 'if_you_need_to_change_this_video_for_your_product_,_please_click_here...', 'If You Need To Change This Video For Your Product , Please Click Here...', NULL),
(1477, 'change_video', 'Change Video', NULL),
(1478, 'wallet_system', 'Wallet System', NULL),
(1479, 'wallet_system_enabled', 'Wallet System Enabled', NULL),
(1480, 'wallet_system_disabled', 'Wallet System Disabled', NULL),
(1481, 'Vendor Registration Email To Admin', 'Vendor Registration Email To Admin', NULL),
(1482, 'Admin to Vendor Payment', 'Admin To Vendor Payment', NULL),
(1483, 'Vendor Package Upgrade', 'Vendor Package Upgrade', NULL),
(1484, 'Vendor Payment', 'Vendor Payment', NULL),
(1485, 'your_email_address', 'Your Email Address', NULL),
(1486, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', NULL),
(1487, 'upgrade_your_membership', 'Upgrade Your Membership', NULL),
(1488, 'upgrade_membership', 'Upgrade Membership', NULL),
(1489, 'delete_contents', 'Delete Contents', NULL),
(1490, 'delete_all_categories', 'Delete All Categories', NULL),
(1491, 'delete_all_products', 'Delete All Products', NULL),
(1492, 'delete_all_brands', 'Delete All Brands', NULL),
(1493, 'delete_all_classified', 'Delete All Classified', NULL),
(1494, 'Are You Sure You Want to Delete All Products?', 'Are You Sure You Want To Delete All Products?', NULL),
(1495, 'guest_checkout', 'Guest Checkout', NULL),
(1496, 'guest_id', 'Guest Id', NULL),
(1497, 'invoice_link:', 'Invoice Link:', NULL),
(1498, 'guest_id:', 'Guest Id:', NULL),
(1499, 'deleting_all_categories_will_also_result_in_deleting_all_sub-categories_under_it,_are_you_sure_you_want_to_delete_all_categories?', 'Deleting All Categories Will Also Result In Deleting All Sub-categories Under It, Are You Sure You Want To Delete All Categories?', NULL),
(1500, 'Are You Sure You Want to Delete All The Brands?', 'Are You Sure You Want To Delete All The Brands?', NULL),
(1501, 'delete_all_classifieds', 'Delete All Classifieds', NULL),
(1502, 'invoice_link', 'Invoice Link', NULL),
(1503, 'select_sub_category', 'Select Sub Category', NULL),
(1504, 'select_product', 'Select Product', NULL),
(1505, 'guest_checkout_enabled', 'Guest Checkout Enabled', NULL),
(1506, 'guest_checkout_disabled', 'Guest Checkout Disabled', NULL),
(1507, 'vendor_commission', 'Vendor Commission', NULL),
(1508, 'vendor_commission_enabled', 'Vendor Commission Enabled', NULL),
(1509, 'vendor_commission_disabled', 'Vendor Commission Disabled', NULL),
(1510, 'vendor_package', 'Vendor Package', NULL),
(1511, 'vendor_package_enabled', 'Vendor Package Enabled', NULL),
(1512, 'vendor_package_disabled', 'Vendor Package Disabled', NULL),
(1513, 'vendor_commissions', 'Vendor Commissions', NULL),
(1514, 'set_vendor_commission', 'Set Vendor Commission', NULL),
(1515, 'total_commission', 'Total Commission', NULL),
(1516, 'commission_on_paid', 'Commission On Paid', NULL),
(1517, 'sslcommerz', 'Sslcommerz', NULL),
(1518, 'commission_amount', 'Commission Amount', NULL),
(1519, 'sslcommerz_activation', 'Sslcommerz Activation', NULL),
(1520, 'sslcommerz_payment_enabled', 'Sslcommerz Payment Enabled', NULL),
(1521, 'sslcommerz_payment_disabled', 'Sslcommerz Payment Disabled', NULL),
(1522, 'SSLCommerz_settings', 'SSLCommerz Settings', NULL),
(1523, 'ssl_store_id', 'Ssl Store Id', NULL),
(1524, 'ssl_store_password', 'Ssl Store Password', NULL),
(1525, 'commission', 'Commission', NULL),
(1526, 'header_menu', 'Header Menu', NULL),
(1527, 'header', 'Header', NULL),
(1528, 'todays_deal_(_show_/_hide_)', 'Todays Deal ( Show / Hide )', NULL),
(1529, 'flash_section_updated!', 'Flash Section Updated!', NULL),
(1530, 'todays_deal_products', 'Todays Deal Products', NULL),
(1531, 'latest_featured_products', 'Latest Featured Products', NULL),
(1532, 'browse_all', 'Browse All', NULL),
(1533, 'Bulk upload', 'Bulk Upload', NULL),
(1534, 'Product bulk upload', 'Product Bulk Upload', NULL),
(1535, 'Physical product', 'Physical Product', NULL),
(1536, 'Download product bulk upload skeleton file', 'Download Product Bulk Upload Skeleton File', NULL),
(1537, 'Download product bulk upload example file', 'Download Product Bulk Upload Example File', NULL),
(1538, 'Sub Category', 'Sub Category', NULL),
(1539, 'Category Id', 'Category Id', NULL),
(1540, 'Upload File', 'Upload File', NULL),
(1541, 'Digital product', 'Digital Product', NULL),
(1542, 'Download digital product bulk upload skeleton file', 'Download Digital Product Bulk Upload Skeleton File', NULL),
(1543, 'Download digital produc _bulk upload example file', 'Download Digital Produc  Bulk Upload Example File', NULL),
(1544, 'Products uploaded', 'Products Uploaded', NULL),
(1545, 'Only this number of products will be uploaded from the xlsx file', 'Only This Number Of Products Will Be Uploaded From The Xlsx File', NULL),
(1546, 'post_product_bulk', 'Post Product Bulk', NULL),
(1547, 'File is not selected', 'File Is Not Selected', NULL),
(1548, 'Upload your products', 'Upload Your Products', NULL),
(1549, 'Sub Category Id', 'Sub Category Id', NULL),
(1550, 'Category ID List', 'Category ID List', NULL),
(1551, 'Sub Category ID List', 'Sub Category ID List', NULL),
(1552, 'Upload Products', 'Upload Products', NULL),
(1553, 'Brand ID List', 'Brand ID List', NULL),
(1554, 'Category Name', 'Category Name', NULL),
(1555, 'Sub Category IDs with Category ID', 'Sub Category IDs With Category ID', NULL),
(1556, 'Sub Category Name', 'Sub Category Name', NULL),
(1557, 'Brand IDs', 'Brand IDs', NULL),
(1558, 'Brand ID', 'Brand ID', NULL),
(1559, 'Brand Name', 'Brand Name', NULL),
(1560, 'Category IDs', 'Category IDs', NULL),
(1561, 'Choose File', 'Choose File', NULL),
(1562, 'My Rating', 'My Rating', NULL),
(1563, 'Log in to add/edit rating', 'Log In To Add/edit Rating', NULL),
(1564, 'You have to buy the product to give a review', 'You Have To Buy The Product To Give A Review', NULL),
(1565, 'All Ratings', 'All Ratings', NULL),
(1566, 'No ratings yet', 'No Ratings Yet', NULL),
(1567, 'All Category with ID', 'All Category With ID', NULL),
(1568, 'All Sub Category with ID and Category ID ', 'All Sub Category With ID And Category ID ', NULL),
(1569, 'affiliation', 'Affiliation', NULL),
(1570, 'affiliation_points', 'Affiliation Points', NULL),
(1571, 'copied', 'Copied', NULL),
(1572, 'Get Link', 'Get Link', NULL),
(1573, 'copy', 'Copy', NULL),
(1574, 'affiliate', 'Affiliate', NULL),
(1575, 'getting', 'Getting', NULL),
(1576, 'getting link', 'Getting Link', NULL),
(1577, 'affiliation_settings', 'Affiliation Settings', NULL),
(1578, 'affiliation_validity', 'Affiliation Validity', NULL),
(1579, 'After this many days the validation for affiliated code will expire', 'After This Many Days The Validation For Affiliated Code Will Expire', NULL),
(1580, 'After this many days the validation for affiliated code will expire (default 30d ays)', 'After This Many Days The Validation For Affiliated Code Will Expire (default 30d Ays)', NULL),
(1581, 'After this many days the validation for affiliated code will expire (default 30 days)', 'After This Many Days The Validation For Affiliated Code Will Expire (default 30 Days)', NULL),
(1582, 'ex: 15', 'Ex: 15', NULL),
(1583, 'Default 30 days', 'Default 30 Days', NULL),
(1584, 'affiliation_point_to_currency_rate', 'Affiliation Point To Currency Rate', NULL),
(1585, 'ex: 2.56', 'Ex: 2.56', NULL),
(1586, '1 point = X mount of your currency', '1 Point = X Mount Of Your Currency', NULL),
(1587, '1 point = X mount of your currency )', '1 Point = X Mount Of Your Currency )', NULL),
(1588, 'Putting 3.2 here means if you convert 10 affiliated points to wallet, you will get 10 x 3.2 = 32 of your currency', 'Putting 3.2 Here Means If You Convert 10 Affiliated Points To Wallet, You Will Get 10 X 3.2 = 32 Of Your Currency', NULL),
(1589, 'Default 1 A.P. = 1 Actual currency', 'Default 1 A.P. = 1 Actual Currency', NULL),
(1590, 'affiliation_point_earnings', 'Affiliation Point Earnings', NULL),
(1591, 'affiliation_user', 'Affiliation User', NULL),
(1592, 'points', 'Points', NULL),
(1593, 'currency ', 'Currency ', NULL),
(1594, 'total earned points', 'Total Earned Points', NULL),
(1595, 'money converted to currency', 'Money Converted To Currency', NULL),
(1596, 'You have no earnings from product affiliation', 'You Have No Earnings From Product Affiliation', NULL),
(1597, 'current_affiliation_link', 'Current Affiliation Link', NULL),
(1598, 'product_affiliation', 'Product Affiliation', NULL),
(1599, 'product_affiliation_enabled', 'Product Affiliation Enabled', NULL),
(1600, 'product_affiliation_disabled', 'Product Affiliation Disabled', NULL),
(1601, 'category_name_ar', 'Category Name Ar', NULL),
(1602, 'name_ar', 'Name Ar', NULL),
(1603, 'product_title_ar', 'Product Title Ar', NULL),
(1604, 'features', 'Features', NULL),
(1605, 'size', 'Size', NULL),
(1606, 'discription', 'Discription', NULL),
(1607, 'discription_ar', 'Discription Ar', NULL),
(1608, 'features_ar', 'Features Ar', NULL),
(1609, 'description_ar', 'Description Ar', NULL),
(1610, 'Add Slider', 'Add Slider', NULL),
(1611, 'manage slider', 'Manage Slider', NULL),
(1612, 'text1', 'Text1', NULL),
(1613, 'text1_ar', 'Text1 Ar', NULL),
(1614, 'text2', 'Text2', NULL),
(1615, 'text2_ar', 'Text2 Ar', NULL),
(1616, 'text 1_ar', 'Text 1 Ar', NULL),
(1617, 'text 2', 'Text 2', NULL),
(1618, 'text 2_ar', 'Text 2 Ar', NULL),
(1619, 'text 1', 'Text 1', NULL),
(1620, 'text 3', 'Text 3', NULL),
(1621, 'text 3_ar', 'Text 3 Ar', NULL),
(1622, 'footer_text_ar', 'Footer Text Ar', NULL),
(1623, 'Banners & Logos', 'Banners & Logos', NULL),
(1624, 'select promotions', 'Select Promotions', NULL),
(1625, 'promotions_logo', 'Promotions Logo', NULL),
(1626, 'promotions_logo 1', 'Promotions Logo 1', NULL),
(1627, 'promotions_logo 2', 'Promotions Logo 2', NULL),
(1628, 'promotions_logo 3', 'Promotions Logo 3', NULL),
(1629, 'promotions_Banner 1', 'Promotions Banner 1', NULL),
(1630, 'promotion_banner_one', 'Promotion Banner One', NULL),
(1631, 'select_promotion_banners', 'Select Promotion Banners', NULL),
(1632, 'promotion_banner_two', 'Promotion Banner Two', NULL),
(1633, 'promotion_banner_three', 'Promotion Banner Three', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(4, 'Arabic', 'Arabic', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(78, ''),
(80, ''),
(81, ''),
(82, ''),
(83, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(1, 16, 1555409541, 300, NULL, 1, 'paypal', 'due'),
(6, 3, 1474278958, 3500, '{\"mc_gross\":\"43.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"03:04:24 Sep 19, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"6\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"6PN17817M0416733P\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"43.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"26ff7ba5f0ef\"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{\"mc_gross\":\"3.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"11:41:38 Sep 22, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"7\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"1W646161MB662172C\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"3.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"ef0d66381cdd0\"}', 1, 'paypal', 'paid'),
(8, 1, 1521619820, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX6D3Rh6VsMGvS\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521619818,\"currency\":null,\"default_source\":\"card_1C821HKmGdRDZlHSwmXJ4Si8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"0530537\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C821YKmGdRDZlHSAV2SCPEB\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C821YKmGdRDZlHSb3XnAy6N\",\"captured\":true,\"created\":1521619820,\"currency\":\"usd\",\"customer\":\"cus_CX6D3Rh6VsMGvS\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(9, 1, 1521620034, 300, NULL, 1, 'paypal', 'due'),
(10, 1, 1521620159, 300, NULL, 1, 'paypal', 'due'),
(11, 1, 1521620582, 300, NULL, 1, 'paypal', 'due'),
(12, 1, 1521620644, 300, '', 1, 'paypal', 'paid'),
(13, 10, 1525076695, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cm5UQffha9h2YI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1525076690,\"currency\":null,\"default_source\":\"card_1CMXJNKmGdRDZlHSzMKsk366\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"dixon@gmail.com\",\"invoice_prefix\":\"8BE2516\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CMXJYKmGdRDZlHSZyFpNHni\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CMXJZKmGdRDZlHSm1ufBbIk\",\"captured\":true,\"created\":1525076692,\"currency\":\"usd\",\"customer\":\"cus_Cm5UQffha9h2YI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(14, 3, 1527065720, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CuiBndcDg1uPoi\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527065726,\"currency\":null,\"default_source\":\"card_1CUskZKmGdRDZlHS0C3mHdQf\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"demovendor.tom@gmail.com\",\"invoice_prefix\":\"2D329EB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CUskmKmGdRDZlHS3hElyjCo\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CUsknKmGdRDZlHSklvk2Dlo\",\"captured\":true,\"created\":1527065728,\"currency\":\"usd\",\"customer\":\"cus_CuiBndcDg1uPoi\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(15, 16, 1530099145, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7rc6ldZZFfVqC\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530099144,\"currency\":null,\"default_source\":\"card_1ChbseKmGdRDZlHSfJOumaUL\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"BC19F08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChbssKmGdRDZlHSCsQxAX1q\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChbssKmGdRDZlHS1GntjkvY\",\"captured\":true,\"created\":1530099146,\"currency\":\"usd\",\"customer\":\"cus_D7rc6ldZZFfVqC\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(16, 16, 1530168298, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8ACvYDzZXIxFk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168298,\"currency\":null,\"default_source\":\"card_1Chts3KmGdRDZlHSFiZIHHEm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"A938C83\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtsEKmGdRDZlHS4JZBq5FO\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtsFKmGdRDZlHSQ8v9io5D\",\"captured\":true,\"created\":1530168298,\"currency\":\"usd\",\"customer\":\"cus_D8ACvYDzZXIxFk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(17, 16, 1530168373, 300, '{\"mc_gross\":\"300.00\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"RSS9FYUZWM7SC\",\"address_street\":\"99 White Fabien Court\",\"payment_date\":\"23:47:03 Jun 27, 2018 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"37750\",\"first_name\":\"Hillary\",\"address_country_code\":\"US\",\"address_name\":\"Hillary Long\",\"notify_version\":\"3.9\",\"custom\":\"17\",\"payer_status\":\"unverified\",\"address_country\":\"United States\",\"address_city\":\"Voluptatem Omnis perspiciatis cum voluptatem qui beatae dolor duis\",\"quantity\":\"1\",\"verify_sign\":\"At7M.vjpvoOSoEuUejMvbAJc494kAx7kHh-1Y.52PvuWhoDgXxhsXz6a\",\"payer_email\":\"developer.activeitzone@gmail.com\",\"txn_id\":\"2Y8310662A433535N\",\"payment_type\":\"instant\",\"last_name\":\"Long\",\"address_state\":\"IN\",\"receiver_email\":\"alvi@gmail.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"asdddddddddddd\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"transaction_subject\":\"\",\"payment_gross\":\"300.00\",\"ipn_track_id\":\"65414272c8c47\"}', 1, 'paypal', 'paid'),
(18, 16, 1530168775, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AKObcFPP1vAV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168775,\"currency\":null,\"default_source\":\"card_1ChtzjKmGdRDZlHSbxWfgNJU\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"D1DE7D7\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtzvKmGdRDZlHStJqXGEKC\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtzwKmGdRDZlHSlohqyjOW\",\"captured\":true,\"created\":1530168775,\"currency\":\"usd\",\"customer\":\"cus_D8AKObcFPP1vAV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(19, 16, 1530169135, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AQZCuS6xk8Hl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169134,\"currency\":null,\"default_source\":\"card_1Chu5YKmGdRDZlHSjo3NZYOX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"C96D5D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chu5jKmGdRDZlHSHmmPoSdN\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chu5jKmGdRDZlHS4F0fMktr\",\"captured\":true,\"created\":1530169135,\"currency\":\"usd\",\"customer\":\"cus_D8AQZCuS6xk8Hl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(20, 16, 1530169512, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AWG4ROXH9sMs\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169511,\"currency\":null,\"default_source\":\"card_1ChuBhKmGdRDZlHSGZRs8N4v\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"9184D2F\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChuBoKmGdRDZlHSLRuAsAcZ\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChuBoKmGdRDZlHSLVz78D7S\",\"captured\":true,\"created\":1530169512,\"currency\":\"usd\",\"customer\":\"cus_D8AWG4ROXH9sMs\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(21, 1, 1530439057, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9Kz2ZUyQFOQQp\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530439057,\"currency\":null,\"default_source\":\"card_1Cj2J5KmGdRDZlHSvwNT3KqG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"ADC7B23\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Cj2JKKmGdRDZlHSA2ZWo10C\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cj2JKKmGdRDZlHSuWh2VsKJ\",\"captured\":true,\"created\":1530439058,\"currency\":\"usd\",\"customer\":\"cus_D9Kz2ZUyQFOQQp\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(22, 17, 1531638449, 3500, '', 2, 'cash', 'paid'),
(23, 17, 1531638483, 3500, '', 2, 'cash', 'paid'),
(24, 3, 1532428490, 3500, NULL, 2, 'PayUmoney', 'due'),
(25, 3, 1532428555, 3500, NULL, 2, 'PayUmoney', 'due'),
(28, 3, 1532430467, 2000, '{\"tran_id\":\"20180728\",\"val_id\":\"180724171133QXBFr94e14DEF7j\",\"amount\":\"2000\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1960\",\"card_no\":\"\",\"bank_tran_id\":\"1807241711331wLRDkP38emj7r5\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 17:11:23\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"33a9272de9c84e09dd866cfd2ff0d1f8\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1139b0b541db8af03f4692dc5a95c78e5b34852e7dfca4151635eb9eb3101dd7\",\"currency_type\":\"BDT\",\"currency_amount\":\"2000.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 7, 'SSlcommerz', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `upload_amount` int(11) DEFAULT NULL,
  `image` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `name`, `amount`, `upload_amount`, `image`) VALUES
(1, 'Default', '0', 2, '[{\"image\":\"plan_1.png\",\"thumb\":\"plan_1_thumb.png\"}]'),
(2, 'Bronze', '15', 10, '[{\"image\":\"plan_2.png\",\"thumb\":\"plan_2_thumb.png\"}]'),
(3, 'Silver', '25', 15, '[{\"image\":\"plan_3.png\",\"thumb\":\"plan_3_thumb.png\"}]'),
(4, 'Gold', '35', 20, '[{\"image\":\"plan_4.png\",\"thumb\":\"plan_4_thumb.png\"}]'),
(5, 'Platinum', '45', 25, '[{\"image\":\"plan_5.png\",\"thumb\":\"plan_5_thumb.png\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `payment_details` longtext,
  `amount` int(11) DEFAULT NULL,
  `purchase_datetime` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_timestamp` int(11) DEFAULT NULL,
  `expire` varchar(20) DEFAULT NULL,
  `expire_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `package_id`, `user_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(1, 2, 7, 'Paypal', 'pending', 'testing', 15, 1526809102, '', 1527663094, '', 0),
(2, 2, 7, 'Paypal', 'pending', 'testing 1234', 15, 1526809416, '', 1527663451, '', 0),
(3, 2, 7, 'Paypal', 'due', 'none', 15, 1526809510, '', 1527663535, '', 0),
(4, 2, 7, 'Paypal', 'due', 'none', 15, 1526809641, '', 1527663565, '', 0),
(5, 2, 7, 'Paypal', 'due', 'none', 15, 1527054416, '', 1527663607, '', 0),
(6, 2, 7, 'Paypal', 'due', 'none', 15, 1527054430, '', 0, '', 0),
(7, 2, 7, 'Paypal', 'due', 'none', 15, 1527054448, '', 0, '', 0),
(8, 2, 7, 'Wallet', 'paid', '', 15, 1527505100, '2018058', 1527505100, 'no', 0),
(9, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CwcODJSgJ33IwX\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527505467,\"currency\":null,\"default_source\":\"card_1CWj9EKmGdRDZlHSZ0dVOt0f\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"6C5D458\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CWj9LKmGdRDZlHSHxfgKBPm\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CWj9MKmGdRDZlHS0E0rSwAI\",\"captured\":true,\"created\":1527505467,\"currency\":\"usd\",\"customer\":\"cus_CwcODJSgJ33IwX\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527505467, '2018059', 1527505467, 'no', 0),
(10, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CxLBf86vTofKeu\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527672118,\"currency\":null,\"default_source\":\"card_1CXQV9KmGdRDZlHSkj2ffaQQ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"81BD7F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CXQVIKmGdRDZlHSB9JHc7o6\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CXQVJKmGdRDZlHSKXNwZTUC\",\"captured\":true,\"created\":1527672120,\"currency\":\"usd\",\"customer\":\"cus_CxLBf86vTofKeu\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527672108, '20180510', 1527672108, 'no', 0),
(11, 3, 7, 'Paypal', 'due', 'none', 25, 1527743164, '', 0, '', 0),
(12, 2, 13, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypmvgOKdcuXS8\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528016564,\"currency\":null,\"default_source\":\"card_1CYs6gKmGdRDZlHSZnAhEeYN\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.shop@gmail.com\",\"invoice_prefix\":\"A2955CE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYs6sKmGdRDZlHSuw6LMZos\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYs6sKmGdRDZlHSuLIyXJWG\",\"captured\":true,\"created\":1528016566,\"currency\":\"usd\",\"customer\":\"cus_CypmvgOKdcuXS8\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528016552, '20180612', 1528016552, 'no', 0),
(13, 2, 15, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzwzUsnuVldUTd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274022,\"currency\":null,\"default_source\":\"card_1CZx5HKmGdRDZlHS2t6FNVNa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"georgiaray@gmail.com\",\"invoice_prefix\":\"3F6FB06\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZx5QKmGdRDZlHSeqGVQWeW\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZx5QKmGdRDZlHStPMP95rN\",\"captured\":true,\"created\":1528274024,\"currency\":\"usd\",\"customer\":\"cus_CzwzUsnuVldUTd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528274007, '20180613', 1528274007, 'no', 0),
(14, 3, 16, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Czx9Z1ME9I52Oj\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274615,\"currency\":null,\"default_source\":\"card_1CZxErKmGdRDZlHS2ryYMyAq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"lee@gmail.com\",\"invoice_prefix\":\"845AF91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZxEzKmGdRDZlHSiZBBQbFq\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZxEzKmGdRDZlHSXQWkv6Wi\",\"captured\":true,\"created\":1528274617,\"currency\":\"usd\",\"customer\":\"cus_Czx9Z1ME9I52Oj\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 25, 1528274599, '20180614', 1528274600, 'no', 0),
(15, 4, 17, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzxyZtzTluDcVG\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528277707,\"currency\":null,\"default_source\":\"card_1CZy2jKmGdRDZlHSPEsoHOf8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"larrypena@gmail.com\",\"invoice_prefix\":\"E034D67\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZy2rKmGdRDZlHSC58ffXbO\",\"object\":\"charge\",\"amount\":3500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZy2rKmGdRDZlHSUB0evIC0\",\"captured\":true,\"created\":1528277709,\"currency\":\"usd\",\"customer\":\"cus_CzxyZtzTluDcVG\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 35, 1528277691, '20180615', 1528277692, 'no', 0),
(16, 5, 18, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzyDdeiAUUEPil\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528278604,\"currency\":null,\"default_source\":\"card_1CZyHCKmGdRDZlHS66s0Ctkk\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"noraharris@gmail.com\",\"invoice_prefix\":\"A0030FC\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZyHJKmGdRDZlHSbdCk7oty\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZyHKKmGdRDZlHSohojhb9q\",\"captured\":true,\"created\":1528278605,\"currency\":\"usd\",\"customer\":\"cus_CzyDdeiAUUEPil\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1528278588, '20180616', 1528278588, 'no', 0),
(17, 5, 3, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9i6araPgmiPwn\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530525022,\"currency\":null,\"default_source\":\"card_1CjOflKmGdRDZlHS8xYwhpzq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer3@shop.com\",\"invoice_prefix\":\"9DFF13D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CjOfrKmGdRDZlHSnv4Lw7hi\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CjOfrKmGdRDZlHSIRkmP6N4\",\"captured\":true,\"created\":1530525023,\"currency\":\"usd\",\"customer\":\"cus_D9i6araPgmiPwn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530525023, '20180717', 1530525023, 'no', 0),
(19, 4, 7, 'PayUmoney', 'due', 'none', 35, 1530531560, '', 0, '', 0),
(20, 5, 22, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkrzbCEBlxP03\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765971,\"currency\":null,\"default_source\":\"card_1CkPM2KmGdRDZlHSFfoyUbJ2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"marketing.activeitzone@gmail.com\",\"invoice_prefix\":\"A5ED676\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkPM8KmGdRDZlHSD2Fdrnvb\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkPM8KmGdRDZlHSBFeIdVNn\",\"captured\":true,\"created\":1530765972,\"currency\":\"usd\",\"customer\":\"cus_DAkrzbCEBlxP03\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530765972, '20180720', 1530765972, 'no', 0),
(21, 5, 23, 'Wallet', 'paid', '', 45, 1531634185, '20180721', 1531634185, 'no', 0),
(24, 4, 7, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180724\",\"val_id\":\"1807241627541mUbsn0kqoeWVuq\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"180724162754Ii6p2KJnBH5jDlG\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 16:27:38\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"37cb03693d014285a7cea9cca3f606ec\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"90cba376582ea23e1bc64274538eec2fc0b5da6b3fbed4c6529afb4406b476ac\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532427912, '20180724', 1532427912, 'no', 0),
(25, 4, 22, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180725\",\"val_id\":\"1807251144111YNM4LsS30YofK9\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"1807251144110qo2y4fHI4aWTvE\",\"status\":\"VALID\",\"tran_date\":\"2018-07-25 11:43:52\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"d5f200f705ea203b954f3cf50e72866e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0de0de16b0cc67cafdaa4aaedccc4a8be010bb0a827399a35f88e82d142af24d\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532497253, '20180725', 1532497253, 'no', 0),
(26, 5, 24, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_FEZRsMkhqAuzb7\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1560245404,\"currency\":null,\"default_source\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"hm@gmail.com\",\"invoice_prefix\":\"51F53B47\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Ek6IrKmGdRDZlHSb1FskWjT\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1Ek6IsKmGdRDZlHSA8qHLo6h\",\"billing_details\":{},\"captured\":true,\"created\":1560245405,\"currency\":\"usd\",\"customer\":\"cus_FEZRsMkhqAuzb7\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1Ek6IrKmGdRDZlHSb1FskWjT\\/rcpt_FEZRpAv0xKpi1Pr63aOwReZeG4xOTfK\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1560245406, '20190626', 1560245406, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(11, 'ok', 'new page1', 'new_page1', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories,advance_search,special_products\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h2><span style=\\\"font-family: inherit; color: rgb(255, 0, 0); vertical-align: super; font-weight: bold;\\\">This is new page<\\/span><\\/h2>\\r\\n<p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur?<\\/p>\\r\\n<img class=\\\"img-responsive\\\" src=\\\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAAA8AAD\\/4QMqaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAxNCA3OS4xNTE0ODEsIDIwMTMvMDMvMTMtMTI6MDk6MTUgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjQxNjQ1RTM3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjQxNjQ1RTQ3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNDE2NDVFMTcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNDE2NDVFMjcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI\\/Pv\\/uACZBZG9iZQBkwAAAAAEDABUEAwYKDQAAOJ0AAEtcAAB8gQAAybX\\/2wCEAAYEBAQFBAYFBQYJBgUGCQsIBgYICwwKCgsKCgwQDAwMDAwMEAwODxAPDgwTExQUExMcGxsbHB8fHx8fHx8fHx8BBwcHDQwNGBAQGBoVERUaHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH\\/\\/CABEIAggBhQMBEQACEQEDEQH\\/xADuAAABBQEBAQAAAAAAAAAAAAABAAIDBAUGBwgBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQYQAAEEAQIFAwIGAwACAwEAAAEAEQIDBBASICExEwUwIhRAMkEjMyQVBlBCNEM1YEQWJREAAQIDAwkFBgUCBQQDAAAAAQACESEDMUESECAwUWFxIjIEgZFCUhNAobHBciPhYoIzFNGSUPBDUyTxomMFczREEgACAQIHAQEAAAAAAAAAAABQESGAAQAQIGBwkGGgcRMBAAIBAwMEAgMBAQEBAAAAAQARIRAxQVFhcSCBkaEwsfDB0eFA8VD\\/2gAMAwEAAhEDEQAAAfRdMyDgIIAINIHJuBJkECBAQQIECBAgQIECBAhIaEgQAECBAgQBpAgRSTq6ZNy2grO1ScmE85lbPR6HA5kdKFj4d\\/KrUklBYBKh9ISFiAgAIIEBBAgTACBAgQIECBAgAIQBMeMIoEzDpJNbFSkcHtlCqYEQwqQSNWIp2V7Od6yHiNFjaJ7mthogYxCTEAAA4CD07EudFxpzSBzHAgAEAAQAYOWkQrNc256FPEFTuZXEY8nfBMe1VThTQW2JHPZ7a\\/N09Bm3gwK6qQJEkii6qNsEpJYuiqbaLWk1uZvUca++T6SAsQIECBAgQMB4IKIcaLtWsRyy4c5jax9skDmUk4wIXgIuZjbT5OreyqQGsrzUiJBEKrdWnSS6HDW3ncLGhUq8i46qsNJzqbZvoQIECBAgQIEEYR5kllSjiye2DEctvOw5jbx9sQDmom6ssBfQ4OZnTS5Ovfzb2Rp1s6kCUC1WbrUWUbmGrEwhpU+hz06b+vHf0i7UuYgLEAYUIECBAySLmp+6r6rlEusawiRpnbFEzI2yQpqVmzORXl3UPHzzqzwdu9m3gBwRT0PaLVZlantQ7eehAhj0661ww3Zz6jo5rly4ADmNZTjW3eT0IECCOSHBv2INFy4usFgkrTOyEIsvbJ7UtDamuCC3FTOsDQHm925m5EOZBnT2PEWQUQs3cbim2DtOWq660wy8zE9D7vPuaSgQIEDRkRBAgQAEAZSDmxdULDEbznahDO2xcxzUVy0CFyLKObdWuLt3cyQAOvFOE9hZXalT089K0VWWl+sqOe7Nr53HaljPpHf5uhtmgQIECBAgQIECBAGUGufc9RLxnKqJxV2V98oROagajZIK9FuT52izx9u7m5QaOtDcDwDMLRb2dWstIR1M9LTkRU+xxmO9bJ9718Ox1YIECBAgQIECBAgQNZnNYOuXU46ZDl2mdlVWJq75wqRSqBDG84XjOUOcbtcvXvZuQGsqjlRPIylg2dVz61MtK1CysFQS+Xt5U1sSdtty7PZzytIECBAgQIECBAgazKc4m\\/P1XP0Y9S+821OUKzckGtCNOh5uqwGfpln64c63pYdW5DIMBUSIUDWV4ubn2z40dpNfDWW3nTXOaqbGtAnqb59Xqwt6wgQIECBAgQIECBrMipx+jm6nl6cqoFZxMjTG2UTlyubPTf5+h7MzXKnphz1PR5uraluCcLYRBUQJY59s\\/PWrNaGuWbj0TbHO9FM5LvLOCDfMug7+S1pIY1DgcCBAgQIECBjMqoyejl6fl7KDmveTwKqjvhTeehl0Qjs8\\/VZpV9uZtZ87Re5+vVglDTTsshDOls5d2p5EbWHCsrRvB6GeN0WOKdnlG4GpcanZhh9O+F6PlTYPs+Do1aRBAgQIGoLK7WfUYm2HW8\\/VUFT0wcnC3Q6OXMI1I2hKyM+m3Rc043E861uc3fPKNZbEdGiqgar4ax5aUZqtdxBi+nd3M05w5fo30+bPQ5ixxE+iu9GPm3t8rOrztzK+p4Orbw2mVITE3ggpE0dIZqo8jHvPtcenKqKt4JGfVVNuXlTn0StldOVGpdVNOB+pFFd\\/5X0GffPh93j9Aunby6XOMzzPRdoqKvI7NLlrEolTl1rGg65ZUOKtXzlN1RLU0fY8k6c8g6bWpFW89YGow1Mtb2W0F48N2+Zaw79rHbOrPrMOvH25s54ibqGmTcc8s5njpGuZl0PjWDr8vv8Aoyz1r1vjfR44YPrfNzLa5nrozpQ8X2rPdlma6N3b24gyHexni7TSRxk+Xr0\\/LhX6U5rQ9Dycfq4oB81nh1Wm+vKYyVAHJGpRxG3Doc\\/pdPnrSvPp+fr53fkquLE3FOnKdE83ExZQZpy1tK6mvF03ZyYuO3d+f7e1j1qo826fOxtuXrOfq0uD2oPRnpNccbfZ6UcLCZq3Ubu4s8zkNfizhtrSYunxuW6OKKdo4x2t419aaKQUlzy2WsGd53Pr2T36iaoC7PPo5HXlqtXAequbT59tjznLo3KmrQyQkOqGlBO\\/G3ofN6O3pPkPT53Q5bdTl6WV2XLuX3FStK\\/Liuvo0c85oiJLAyt\\/LnV10uvDmX5ee8W1QSkcim6pcy\\/1YZvNvHnowfa1r1klIXaxvxd8+YFQXQbRgdk8tz1mcliWFTkmNFoJhNyLK09rw9GjccXpydOelkdFz7OcFOdZ7WdCxM08sZpMDK8qM9rXVq5eMjzplMdDAeSKYTQjSNDYctLs726mCm13EbcVWFEHw9nRee+zz4fndNXnoICZQnJG1CGUkHeZdvfTrz9vJ6Lol7HSaWWWTpu6J2XnHJxcVphSzrl55u326Wzz+f5+a8TRNKkqGtiWUlSfajirGi7bS+lyKYu5jbi7xponk17XDetz8l5ncyWkIABBAkIZEh7616vTuELPMcfTXSqptNd3HDDq9554tdGfzY62zxuc5lcvY6dlx48CvOYAQgLACQGEHNRocLuLfRxNRrus9eO0xqIsIv2uU9Lmxefdo2JtBqaBICetldzO6rL83LrvRx0tVz8ne2kXb036vPCqnmdPQ3NUMs9iIxiudOTsr7ZRcm\\/NouEMIQBABAWBDEOZ3jnbUwNdxlryOuNdzbTvsk2yiYgAIA0UEAG3ydr5pAQIEABDArTJ16aL1uE4i2qZLQqKM1XkN8OrXa8V3TzrXT5rAaAGwTWNGAaJgBPW5ujTlMa3ufoxt+dNTzU6rM2iEHA9MgQIEL2Wl7LUAgQOBAAIUE69PiL7Y3qJNa1EnWQ4nTODMr0LrnRWO6\\/LQBgEgQIECBA1leaszTXOjjtma4oJlSRwXZlSzcEU8JU3tEUo\\/ScN5E0BBAQQIKqbW8vPXiOnq6OnGh4JDWQIkrz6p36ARImvx05DAAAg4CABgALWV35UbXQZbc3pjVERuqIdTGFl46FDhlDGuuV9hGoAggIIECDLmr7OYxz5Xr9LpabgaDQaiIdE5HXOidjZVF+ZFWAFIDWRAGFgRCDQ28dtRQ1nUZbcxphQFeVaQ6O0YosnHQg1VKmmvTJ1lBAQQIECCAdWSxS5ZnM36HR25ERhCORKFOhKu6+PZw9ba5li9HDD0cpB4mMgZGxNRhCELnax6NSZhZ1We3P3hludGL2Fpz22OaiBOQBOkyvaF0s2gQEEBAAQyZq7U0Tbn4XL79XSXcqRQ8UgmBQTkrybmPTtc3Tm6c9Tr4mpFo0g1A05lFVWc1mtrHo0JWPS2p0hrKm4vTW3nvla5UEMFMOKdHLTtJbwQECCBAgiHlw9a5zMNc9S97Yt3k9UVKio4qNa1TlvPocZ66la8\\/0mpUO\\/zY5TgktMcoLk1WHi65ZiNfHe6lzzUS00nnM56CLsTpXuYAAi3BNas3rpoABAggQIM2ae1cpZWGlVGnlXlirmPR5rPTmaVhmppnPJe59fQIIOfpPP0N7eGNTEEjlNNZZlpPD2xy5d+NZiecc0J13qiyRvzZmn2NQ4AMzemm8ACAggIIEGRNX6l7rFjY4S+H5qzmfT5L\\/VnXbtOdXSKM10PFv6fz0B189Y3N9w0HgmJDgIVmq8lNmftlzmuOPh0dUloOdBVmzWzYkEYC9NSgAQiCGQQIIQoTWlUxRdWXVxqjF8Jc8f6HLY3m\\/vHazOnm+S3m1zb+scmjwxsOtTev0cTxIECBAgjQQzQx98uc2wxcOjsM62BSDpTWprAEU0OfLSKafUytPCSk8EDAz5bwvWqmdyE5OGuRz7cFvny3dy3emOn7MO84dXI4fpibl29a5NHMxo6sjHfc0w19uVAAaCQ5kQShiMpaZ85plzcadnjpuskCoi\\/pCGkEdmajiqedoHtEADwfSm0mYT2Zi3umeRx68thvw\\/Xz4HTz6\\/dl03Rj13LpJL4nonW4t\\/T+anszo25bDv6nfg09MUCAAgIRsIYgUdM8PXLks77aL6GaCKUvV1hwyDk7EuUKoNGocYywgAcK3akFl4739MMXj34PHo430OPN0z2\\/Qx0ujPeyNLOuO0O24N+7xp4Uc9K1bbN8qBAgAICEQODLDH2ywdMuQy17NraSmjSBVpXMqHjQOTIJqYuQzabtWTHqUg0+aledLC7W2eXw9PA8vRyvo8uLvht92Oz1ZaMGjlXJ1XqHn79FDcFaLc1YuUCAAkECENIBmio6Rk1FeKLLF5FXbx01bQGBJNw3pkLkN1auzzGtqEaTSnzMLqrVR4g5NOP4+g9mHlnocm525b3Thr5U6Xyjr1HwPS2OnDCw6+h6eJo5bgggaAAgmNEWUWoUubqdiXRpCoA9jm2s6NyYAg4HAgo8W9THSrorAS3MoS0nijbtiasqWXRzHH0bfVh4j6fJvdmO10462VNTzstel+V9qrnqc30\\/sedq9fO+pfSQmgAQIGtOHScxhh3GVF6d526mMH47bCsJkCIjQEMzh6c7k3rsjBgAGtJM1IT0XMmk43Ntq6x456\\/Bq92PQ75dDheUFvi6dT571Kboct19HL7vk9RrG9SKAwAgKI6T06TnFtYydIWveU9ZodJX2GWwTcBAiIIMPy+2DK30iwtFhBzUrTmoM7x5rOy019I8k9jgu92HSa59Jz1yRffeb0s8ruzY0a1Dx77XscHPd3N2FxtA0GoQAGMe1m1NRrPVVxBxFcRsYP0PHVAgIICNBlcPTWyuCLhilLlczXMlKSlLSKXOZa5GemszzL2POm78ejvPpsa4sr1vyOzO4ujGy2aGlUSZk\\/scnKa595cWnIBAGmMcilSr1OXUrl6K9LR2xmqIWui5+lAgIIECAjQECEc1BnVfO4s6bFCXILAz1jSqFcP6vCvR59pz1ONcdT9V8H0I4rD5+iMOh6eaLK5Klnp8\\/L1Pb64TNISAMAQqg5pXGXz9N+Sbp57YgO\\/lq0YE4CMoI0BBAQQIECAgkIGs+bB6Utw29uHQ6T0fPXPld5896dzbLE5uiBPoernn1jC8vs2vV463Xlkuet0wAkwAgrjTWbefL49Wwlsa4zVAC\\/h0IEBYUBhQgQEECGQQIECGgcL5wHfhgIOzLe2jp8KxMde28H0tTq58Xm3rTXQdPPZ1nnvO7NXTC56vNnaxLUXrzAIAAVBrM0yws9tXTHUlmlG41efqAEECAgBkSBAgQ0hMIJCYU42fOVLZiqYWt40OrLrsTAw37PwPS1urnyOfetL3ejCzrMEVl+X06\\/fzS+nzyVI1wawCQGbazO0xxs9tPTG8J86AWhlugQJCYkIAMiAyCERoEhAQQEfzxrFweZLubxN1RtzNfl29B+d9TW6ufMx1rzezthY1ktYXlde31c8nVnD1Z2dudl4pgCWNo2UNcLXP1VbzgqXy2zWvOhAAQQIECG5CAAhpCBAkICBDxDecSlDDv9MTbzcFPx7ei\\/PelqdOGdlrWmtnbGa5LVfk1by3f9Pmr9UWdIZ0cYBBLG0bKWmVvm6aGmMVIDgT16QaIkBApoECBAQIyJJpoCIEaF5YacUrano9EHWZA1uDo9I8fsv7Z0MtKed7G2M2kuZT87aHl01fX5GduSbk35Y9MEE0bxhS0xt83XQ2wbUvVVpq9pmAIJMocBVFCGBlBCYHjQQoQ0ghwVvzRtqNLog6yyX1XmdXofDvPcUsdc\\/PTZ2xmuS1n+T0qXp+nyu9HCKas6xS6OSREsbRTWbUaWWmZcaA3J47nX5twgsSEBBzCBYhQsQX7T2MCqgA5pzOZpeO6qOXe2iTWWw\\/QeDo7Hh3e1Rx1zMtdnbCxpLhZXjdlnfK73YzelzwS7dzDrzsvGWN0VS0xn5umpti9qWazUa+W0bHNBDgIFhAgQAQjlacCEGnAgLXK0\\/G6bJehtD9Zcn6fy10fn9QiqOGuTjrtbY2dIEPP8vptdOVrpyl9PANWGmNV+jilz3SqlpjPz9NbbB9JydWKt8fSAQwgAAANGAIFiqbW+UrEDEECCCMPD9jGC9pMuqEnqPLfX43T5OihhrkY7be2Fm5bi6XDvZ3zsdOcnpYSVMzQCvtyuKE6ZumNzn6M240lUyeAi3zbBiaKaBwPaIOQ4ZEgkpXtJfRmwIENNEPH+mOcZbuZdkyT23i1voj59c3i6cjHbZ2xs1DOeq\\/Nra6cpdZm9LnluXgAjqItcVGmXpne598y411Us1gC2MNUBQASHAkwgAAaNqAxWT6ZwgUOYmOFwWy872nQuX7TSxr2Hj16CGZeXxdWPz77W2Fipg5NIsru9mDqHehjPcTtIGBm6ZnO6Ar4Z4nMA44d3n1AwgAQLAmwADQA0xMcJNXaiUCBYUZc75Bvx3bx4XTy2cb9i4dbsiCtlpz\\/H27WmNm4p8GyC924oD35Xtcng1GDaqBezdOTR0mjLcwhXpLk6QhoPBzCIscCBwPaIiBGgAmoaCGERHRWW3nvdwZvVzNzfrXl9cgSsc1m8nVqTNmoo+fvLpN\\/uwCc3dhM5hyqOKoazS6c7sOtBcuag0xzIAPNsUFD2EEBAtNTQEC0QAICCCuNIaxk9cK0yNuXQ0iHN7MQE3A4BFScu80qpx6aPbjDnUMXF6HMoogAciv14s3zhRqiosYywmwDy6uAgWFNNECCAjckKSGhNE0AxA8poeQ6xNN97GvT5650EuvM8HDIOBY2zj2nuLOuaHVx0XfhBLqY29Dglaz+\\/no6Tvys5kTLAMTs8+hBJuYhBMjQIQGmiBBA0EJgAI2TFecVOLS9hx6bGetZTFrzkCATYxoXOTWXXOBiZI1IwJtBmZLJII3OB347YqAo27YQpnl3QOBqGg5hAiQIACBMc0kRgxgApkMrLopDd080uetVxuzVdqIGIFSAaNoOQRyg6XIiZOcUqVlTMgbQ3qyosqMsocnJydAAiIIZAiexgISAAgIAEDQQBDAZO9ea827eFwWoruMNp03y5GkmkOTcDxNBwNGESBNUtG8m05lai2jH6M2NtQ8LXJ0JD2JBY1MMSCBBoBDmBD2BCBAgch8XWHyxMTWrFblSQINTeEiJs3K0GBqNus0hpqRpAgmuDSs0s\\/aM608ImXOPoEOVojARjINBwFDQc0mkmWESltAJvQ5CVVWo87IS6Q1CTQLN282oYksay1EcVU6JdScx4EHObOksl3tsmJ43Tmy0wLfF0xICb2kCZGmhlEjlzEnLUuaAOBqcSZASxLiVWxMGIcVS0CDkSZuQHIZk5bQYkQbpjRYgApGWLkIu65shwDzOzGBn\\/2gAIAQEAAQUC3BPwOtyf\\/BBFTX+tf3utyflblQhAZ1a+fUvn1L51SObBHNio5kFDIgULAt63retydbluW4Lcty3LctydOnTp06dbluW5bk6dOty3LctyiXU1Oa\\/13NM2hd5d72XX5Vst9yMshb713b13r0J2lCwhDOY4+XKSFpXdkhcVXcu6y+QV8gr5a+YvmL5oXzgvnhfOC+cEMx0L3UZOgFtW1bVtW1bVtW1bVtQitqEVkFoC97m9uQWlAkg7l7u1tCEAjAKUAtgQgFGsKdYa2PvwghpILahFMiFZo6DyMqphShlPI5dYryq5Kt3qVHUetl\\/p1f8AWPtyB7xDkRyb2MgipaBQCmOV49+GhpJfiNZhEKbqjFFUSOUYBTpBA8VDbEW42VXBUx5j05Lcol1l\\/pUP838MnrVIkEcv9G0IXaJUoEGPWCmFePfhhAJlIJuYCZMpohYlIlc3OcVsVuyI7tU4+Wg+LUYyjDqOF+KWkVk\\/p1D91+GV1o6Hp\\/poAmVg57VAIwdZFPuxENCEyATJlMJliQaso9WXk78ikeKhK1eVnCvK8Hd3MKAQGjaFHduHDPpzUXWR9lP\\/AFfhk9aOkun+jJkOSlM6AKARCyeuIObIDhZSCEHMQwd57v3AU9qjaRXnjHzZeJl2L6uJvRyPsp\\/6fwyetPSXT\\/xganQKAUlkg7sMIBCKI1bSaxovIqv7gf3qvjZNEXxiLLY5OEd+Ril4+qVf9tP\\/AE\\/hf1q6S6N+WY6kp0CoKSyfuxENDoAmUumRaywIEUWFUczl1+2c\\/Zui84xlHyW2kYAa7HO2XqlX\\/Zjf9H4Xdaxybk3skUyKmu3ImNE1WCFJZP3YYQCCkVu5hMrByNHcv5Abnn4+T17u5Ri88WEhE+Q8nkYksWd+Xd493h0rLx9Q9Lz7MT9dX\\/dH7Tcy+TLdoVTVvshTALtxV9YCksge\\/DimTIwdDGXaZMpjlRW0rT7IH2YUdtVHKvHk2PmeyGQY5Q8XBlgD8vHO5U+rLpf+lh\\/rK2LqH22QcdgbWROmPLbZCcUZBXTdSWR9+Gn0gFtUxpLTMtERj7vjUckZbKsSDU+UyZlYlYhkY8I9\\/H9ltPKcTzdOFvCBf0ZdL\\/0sP9VTHKHQ9P8AxlP7odDylCwP3AjJ1JZJ92GpSVZdV6TPJ0HQk5fu2Q7fxo5MBZ8aRVmUbR2b3xbW8hbIVGNZeoct\\/syMqyM5+Tt3xyLprDJ7XE+lk+V5\\/K8fJ7ij0j9v4bvy5zZd8boXxa2ZUrrN8brFC1WZAVl26zGnGMbL4qrICquQnysJXICRIrnZKOOI12VZFtXYry6RPHyYW+MwI4GT47Nx4IQl5GPkOz28drK48l1hlXW92rGnNU0SisawbYTcJ1uGt8zEfNg0LRNZUvy\\/Gf8ASVdIhRl7N\\/LuezJlylYXxrijLlKwCZvDfKJJGRNU0XzvqpjVHJ8fXsopO6pQn7XdWz\\/Mc9zNrskLMiumOVjVdvyteFZLHOPOOVdi41+Hg1zl2js8jvhbhR20yLZWHZujmeOolbj48Yq2AgoXjdC8r5U1ZlWNC+xqri25WxceR3QPj5q2G6OFDblLI6RPKT7W\\/b5OQHsm5x7GUsnl3N85fbi87a4DtzMYXbRu8jVZfTvFMY51eyGe1ePmC2Ntu1d2ixRyI5GXDx88FXZ2DRHIoGPVZVZl5sxhu3jKbah8rEhsMqzzzD78Utk5lkYRjmQfKyhsjdLfiydMphjEcp2bIwzYtZnQAz8juW+MLylLliH90s2e1UkFSHs2\\/trsGZOQJVyhYVKySqsYyu9tNphOPlZbLsycp439gw7R3gra6ra\\/KYpw7e9YvC7lkR3K22ELfJ32QRxL7Mm2fesy8zEwMWm6WdLCzLnyZfIVdddWZbYL83EmTdK3fkY0\\/wBx5i\\/8zvMbLyVGfOnK2EeSBR8nzpz95yLyYDLsCtyrdvdk\\/h5K4+zxpPy15STHHmwtvj294+HKMNnl4wUWToFbuTrcUZJ1j+QysdeI8nXmDMwqcrGyMe3Hu8TIzuyPtMh3ac3NyFiePuos+F2K8qmXmI9s4MMadVcZTp242PnfH5wyMS4xsosJuyCK4Z2V3crcVvW9dwruld0qFxjL5RIlJGRIHXwpc3H2+L\\/7F5j7ov25RsXb\\/aHy3tyso2SM06dPxY2TZjX4mTXkUeT8fXl1eEE6s+26qQmIGzMj8bEGDmXG+HluxZO+4X5EqJW21ZNfjMj5EJZhn5Cor5GyWFH2+TBGC6CkgdXToFOnUQ58KGOR9niP+srzH31j2Tj7W\\/IuxxEWBMmTaMmTJkyZf1vJ2w7lZjfZCV+Vd21O1oePorsWb4+7Ihdg5EAfKXjIHblhxzY2YFF9mMvDG6JrA7XS7EINWdSbMMJ0eIa1nn4frk\\/Z4f8A6yvMfdV9tg9n\\/wBfPmwJf0GTJl4WqRyiq\\/bf5WoVzrsIr8fXfkVy\\/eXjysjmWT8xPKyp097Ky8qVd+PKmimeJDxlQ2x95uxOdd2LZfVOuUJMmW1MmTJk2jKPXwwWV9nhv+ory33V\\/bYPy3\\/bZWDKS\\/ipr+Lmv4yxfxtq\\/jbV\\/G2r+NuX8dcsP+u5WVX\\/APks5S\\/q\\/lAqfH5uJi7s3ZKd0sbMhkZHhJS2k324NFfkMilUZ9ORgeOyPKXWnKnstyf3dNouuzIV0+NBeJEoyxu+K52BZtdgy9sltktskxTFMUxXPWPXw45ZYO3wwIyivKQMpVVljUTHt\\/kyqiuxFdiK+PFfGivjRXxor40V8WKhCMIcR5rP8Xi5c7\\/FGjDpNuYvHZsq6rLRca4XXquNFK7NMjOrYvJYdlefVXVCBtqrVETkr+MrX8XWv4utfxda\\/iq1\\/FQX8VBfxMF\\/EQX8PBfxEHxsYVKdW4YlOy8q+vdKFS7fJvabwvkBDJivkRXyIrvxXfC74WN7vRpJJzCDLxuRXfHI+XbZV40BfkRB+MquzWpmS8tifkCuZFNMICq3t2OE4ThOE4TxXtXtXtXtXtUmf\\/Wo\\/mKyTGElI+1\\/YbLFO2wL5FiGRYhkTXyZr5U1XddZOqsVV8eRJoQDVZUvzfDtLG6Ltyku1BdutOpwkVC6cIVFBWdDml\\/nL5y+cvnr56+evnr+QX8iv5EKq\\/uGdjRw7N15WdPbKN5AnmFvky7XxgsqhlsW1MtqZeCxOfoSO+3a5zSPieG5Yo0K2xRtipSmzBR5KKn0lF1sQrXZRpXbWxbEYIxW1YQ53dPH\\/wDSV5Ae6sI0jZ2I9rfyyi42rYVsK2KuiVtlVcaq+O6eyuiKlNl5EbPBeJf40dCQvyluqCNhUu5u2rGrnYuxVEWw9+1NoWR13Ilb1hS53HlgSbJJXkB7h7TCwSrf8uQKsCjFbUI89oXiMfn6F0t9tQaOQfyPPe3wPiBI0RgV2iuwUMcLtQCMIq0VAVSjZCHtMeYyIe7amTBbQjELthzUFKKmm54ivPIX9rIu8jtsyb+4hLcaq9lb\\/lSCnBRgti2cxXKcq64118ds9ldcU3ty4e7y9MJ49PjsSqObl0Y1UvNsD5u4o+V8jOkeRzSYnMlG+vdLxJEpwr5VHlfFwa5LaUAmRUILtK3H5XUlGJBxVf0u\\/UzZtbBzCn7z+l\\/4tilWhUjBdtYNLH0MkvKkaGXct8n\\/ANUSvJT3eGhVOyoU0hbmnRXZsjtU7xs\\/r0nvjBXw2mfOFe2cZVFdqS7MlLHKGPJCqaljzMb8W1SxbN1VZiremVyszj+ZjfoVj3H9LeOyy2pkyFbmMdsfQPulWGjIrGh+Zlc\\/JZdnbw\\/Kjb4LHkBWTAET3KvGjOXx47Z17V\\/Wy\\/kQFZAGERTGNdse+y2ratq2ptLIgrsxV1YCtHtzwyyec8KL48a1I+zm3BXFh6Fs9sYhBXD8uitpW\\/8AsvLybx3mZ7vEUspMDVW5wcW5jVIRy4CK\\/rhH8oNKoCmW7bOMhKPFJbVlhoWfb5Iq8ufHf80QiPa3PUdZSuC+TYhlRXfgu9Ut0TrOW0ScqA5\\/hdNlV06+Q83NqvLT\\/Yxkxq95xqmWJOAhbadvkJAy\\/rYB8sNPJWxoj5HIsqGLKXd9DyEim9vkoe2xeM\\/5oKXThj3Ap1ErathTFNpvsCEpFbVGLI9MjnZSGhTzv83Z+48nJ4LEA7WOsewNdP2Z8gT\\/AFSH70aZ8DKjJ2\\/DwB+TxHTPdGXt8hzjYefiz+3h0mU\\/PRkOSjOK3wUwCmK5rdFe0rYtgQeKiUynHdOMVi86\\/MTfIz5PkLDD1RLLDu53T9mUef8AVamxxplAmOTg0ZGRxnTN\\/TmPZ5B+3aZP41\\/j12re6f3bihJOnTp06givw7dbduDitGMggJbjIgVyBN0tlWONtGTV3B5HHnCawX29sSGLAq77cjr4KrteLTqfMunTp06fWRW5ZXOJj7crbEZGLGynAgY08wY2c2W1bCua5rnrWDt4eSCu+yuJ3eUlIePu9lEIuvPYb+LWFH8tUbWv6ZMDKZzPjWUX03x8nmHHzosZQ5wAcbStpW0pkxXNMmWRHk3t8qxhVCPx6jtHVADe0WdPwclyWTZOM7M2+uP8vMIeZqQ8xUh5StDyNaPkIhSz6yo3VTGVDdj+QkY4lO4zzS+EOmDJqwAqotHI6eMr7\\/mbCZT90ZZVk8kePyahXXyUeScpynPFf0DbfI1gwll2iGFUZUihHHXNmjoyZMmTLKiDOdW5HEC+GvhBfBiv48L+PKHjpN8KyKxMcRPlpft8f9Ww7ot7cMDZS6jH25dgjH+s0nt2xYlEcrBGVnyszx3gPE+Uq8jjehkyiK5m013G9msKxrLe0LrFK+Td6x9qZMmTJtLpPa\\/AyZMhErmtpfycbDXj\\/f8AiQsYPTie4N7PKTY+Ko7Ph8iKKB2qUdsp04+Vg+Pxcnx0\\/FeSq8hi81zXNc1zTlc1lO3eEISvhJbwFG07RZNSnNbpPxzwpEywr12cwIzmELghaEJjQSXVALy1hM6DKNjubg06P0cH7yvIfmX2tE3jkdJUd3HwpgwA2X5NV\\/ibcTLpyqHTp0+jq4OuzGUcnHjCMJQ2fIrVEISEsasr4kGf0uaNdZRxcYo+PoXwJL4uSF27ooErIrNuUe1GvvVRllAd6DbMEB5O19n7yct19o9s+o64\\/wBpr7V5G4WFrrYXeHvpyKr6nTp9HUua\\/C8xYzr3nHq20s34f6sm+hPQCJnGAazlGuQ2YMqQTdRtxraoeYqk85\\/baOY60fbZHfXhHbUYRtDKk1+LuZMmTJlNDpnD8oRsJxrbFVDaOaf6MKe03QVvSg+zBnWD3KNuFKqPl8dHpd1HWn7VnQNeRCUitosjEY+XDEGTVXuW5bluQ9ynyWSfbZMxWL7oRKP0k\\/06wq6+WQQqYw\\/j8KcYz7tcq5\\/+zo6\\/hegFT9qvp7tOJbygVMRIjLcGTJltUYqYV8HFuHcVi1GEIoraGdOnTp0\\/qs6bZb3eVknNE\\/yIHnXZFumZSvwuUVV9qCsq251e2cAGUeRPBBW9C7yUyhMrcW7voOn0dOnTp06dOnXm6ez5Uy0xxy94UCqmlm0r8LlBV9NL224suSPXqNYK1f7HpNAIvp3F3V3F3Su4V3FvK3lbitxW5OnTp06dOnX9pH\\/9E6Y\\/6cgFAgLxo3+QrGlyj1r6aZR9lXUqSiVLWtXENuG78JSAQnFGcG5bWKYpimTJkyZNwRgSu1JdspuD+10eyXVUfaRzX9er3ZERpco9a\\/t0ySqvuKl0CIeO0raFBXAsIyEz0td8es7LqzsflyXJclyXtXtXtXtXtXtR0jZFu5FGxc0xTFMv7JXA+Jkuap6SZwv6zT+20uQ61fbpZzVHU6DqpDStWdD1\\/AxBVY2qRm23nsrW2K2hbVtW1bUwTBck0UyGrcH9mD+JkUVjBlzeMCv6v\\/66UWKv0p+1S+2fWlFD7R9yI0rKsR6\\/goqRDJ06dbgt4Xciu6F3V3V3FvK3SUZunTreFvC3rerBVZDy2BPBywCVjjbL8qUpFf1hx42UdwV+lH2qXSXWroofpjrpLrWrQto3fhasWFcqrqK9n+v5q22rt2rtTXZmuxJdiS7JXaK7ZW1bVFgqzGQIDcP9glYfKsqIyIATyCwsYY2IpLIRWP8AapI9axyUPs1n0rKtKM\\/d+FhWH+jfZEV\\/6cbp063Lcty3lfImU54f7Ti7kwCxiw2+0zG3weVPJ8cxTLJDI9aPtKPU9Y9FR7aI8zoQjPZbKab3f6ziSoboiW4py3yK18mC+TBfJivkxXyQvkr5CN8l3ZrfNPJPJPNfmKDSDJtcsA2SxMNeQie9Ydx8fDGsy8TGoxKty3q8b4f7U\\/aU\\/MffpQXpiOSJAVvkpvVbOc5FH7n9u7nGRRkVv5pwnTLkmTFbVsW0LaEwXLViu7Yu7Ndy1dyxSLgleV\\/7ZVGSjVZuhEwgJFb5LcrQ06uhPJ1XzkyKrEIg2wRsdOFk1iSq6kos\\/wDp+I02p4J4p4Llo4W4Lct63J1uW4rctxW5HbJdEFZJoQL4x5rD8fXly\\/8Az2CFT4zHqydAtskanjT0n9v4xrAjIEIkoghcly05qzdFfJmvkTMgTtssMVC9dyS38DaMCm15LlwNo6Jde0gwEoUW20o52e39ejP4dkuUndclyXJPFBnuPtorbWdaZSp0dAHScNh5b4vtvVblGJX+urrcFuit4ThOE4Trct63ret4W9bgjIuJFZ\\/j7Y5MqMhePp7GDJWcqzYQe4t63rvsjlKN+PJS8hQjnlfNJQyAV3V3lIiS3RdwvajGExZCULI\\/ZcypIUpcv9U2hW1bUybhHVinKc6OdOYUhN7+4Kqv7DmSA8\\/WVlecjdCdgc2Izkt0l+YttiaxNatuQmvQhcvzUJXITsQskoSCYoOr6BZGv9O9VoFf66cuI8fJMmXNHc21o2NOruTCnYScKPdyRElClCqK7a7a7RCECV20QFt5towQiuiPNRlMISKMijB1aIuIhbU2ogu2FsXJMuSHAFyT6cly05L8J1xKs8XiTkPB4qxcDHx5bYpo6ckAEIh+QTLZFGECu3FbQtsVsC2Lau2hBOq1l46DLaE3KQ5oHg3Jy7lHRithXbW2KYLbBMEzLmg6IO3tljEldoxDrcnXNc1F1J1GRB56Oubh0Ey6KCHRR6SKthtIT+0hwnToBEa80Atq2le5e9bCtqNa2ramKIkERYVWJ7JQZe1HaVyZAJmQTFMubbZJpJkYppppLaougCmUekwtoInWYS5t\\/9oACAECAAEFAv8AGjgITJuJ06dOn4HTp06dOnTp06dOnTp06dOnTp06dOn9JkyZNoyZbU3ANHT+k6f64o+puTp0\\/wDgSj6Z+k3IfQFH0jwNrH1Sio\\/QEI+keFkyj19QoxUfoZesUE+g+uKPqfjoyKKh9efRKKCKPDD6A+k63cB4G4xoOiiFLQfQS9GWo1PoSOoQ1COkVH1gpdPQlqNTxk6S0GkQu2olSGg9cKXT1j6LaQDplEJkYqWoUQhBSj6YR9BtW0bQoJuCWhQQi5ZlGDKXVHkbNAoqATooxTcTIRRCCPqsiiVvUeYITaSPNAIQQQXTT8VYVFDSuXIlPoy2LYtqMdBpNBS0HEE6dOq9JdNIyBR0OkUzIl9HQC5oaXdQNatX4jFbdJIKWkeDapDhiWW5GaITp1GWkzygohQGgQCdNrJHWtOidH4GToyTo6HSPDLp6BCZtHUlAc0yJTp+alpuRR1CdPo63LchJbkTwnQcDKZ9JkE7I6hbkCmAQTI9dR6oR9GXpmKZbUOmgTrboeqI4D6gUtDxFP6skNHTrboAivxP0J0Og4DzXbXbXbXbXbXbXbXbRDatzR1dMm5ybWKJQR1ZMm9IoI6BNq6dOty3Lcty3Lcj6DoT0lFE6umR1gVuW5bluTp06dOnXJSQUtI8DegfTdc030h0Og4Sn+g3cxxj1zodBq2h4j6eznHjHAPTkgjoOE\\/RD0TJEqvp6R0P08iyBdD0Zx0h6ckPqJc0eQEyo2OUy2ratq28H48ToalD6jb7p6V9WTaR1knUtAdXTp06dOnRQR+ndT0qUdHdbNZ8APphH6YldVJFVIamSdOrPXijofRdOnT+hKKiFLrJVaQ56SQ0nqdI+kNT6LeqepVelXQooaT1OkfSCPqMm9Hdr+MOiq6I6FT1kiPTCOrfR7eCuWleh0Kl10PqBHgPpnQoaBHSR5aQ0q0OhUrmMZgqyTFD6m0reV3F3F3F3FvW9b13VIKXRA6VaHSZR0lYSapIfQt6FvXRuBkyIUVLgrR1tPLSUVvYxL+s6f0p9fRbhr6HW5HUhUn129I1LtFbJLmnTp+E6hQ6HWwqWpi4qKBfibiJToesy2BdoLsrtlbTodGQUeh0dS+46xRixhJvUI0H1MCjoUCjqNAq5f4aGth9sdDoNLggVEvoOIfWw1t+0aHQaSi4rKhJuMocT\\/Tw1s6DQ6DWcfdD3CHLQcBQ1H041hrb9sdDoNbulB4ygjoODatq2ratqZMmTJkyZN6UNb\\/tGh0Gt5UOAalBHQJ0+jrcty3Bbgty3Lcty3Lcty3J063Lcty3IHWGt+p0GtpUOM8bp06f1mTJkNY62jU6DWSr4RoUNQmTJltW1bVtTJkyZN6Y1hrJSGh0GkuhVfGUNRwOnTp0\\/oPo6dOnTp0+kVyRUijz0Og0mioaDgCKCb1nTp06f0B0URqdJhHQaT0joOAKSGo+ifiidInQlFPpLQaS6oaR6cDp0\\/C2j+u\\/AU6qARW5kS+shoOAIqPTR9T9bX04pBBHSKZFBblu0jL6\\/cy7hXcJ4SNJdEIojRuGB0b6tkdBxSCmoR1MdG4Yl\\/q3To6DjMObLam4W1B+sCZbU3C6dOnTp0\\/A\\/BEt9ceN\\/Vj9U63ldxbjxOn9UIcB9Rk30BOhQ9aJ+jZMmTcDfTFDX\\/\\/aAAgBAwABBQL\\/ABIR4wf8iFuW5OnTp1uT8J9Vvrx6rJkybU\\/XR9QcJ\\/wA9can68euESnU+NvqAh6wTJkRyP1w9X8EENZfXD1CooaBOipfQD0tq2ptB6ktJdSiUEfoCo+jHWWg9EayRRQTaFSR9YqOh446y0HpRCKOhQUtT65UevoDWWg9Rk\\/ocmmUD6ZUeIp06dAolEp0Co81PkdyGsdBoEyPWSdHkgjoVOaKBQlxutyBUlHiOoT6SOgQCNO5TjtlAp9IjkgmQKAOg6LcgpaFWcG5dxdxb0Jp1JEqtFQ0khqyZEIIBMrNIHmualAxUU6imTaGTraU6C5rmuhKKCKuQKPE6EkZoqtFQ0mhruTooaOphMhFRmCmRCsg2lY1rCcMOSATramX4MjpLpcgEyI0dPqEy2qCko6T4RxNrGRCjJ0eaMWUENNoClN1uddF1UlzTjgn0km0ZMtq2oxW1DUKSjpLhA9KJbQh1EcxpFbguSYBRi6AZSPMDlrZ09SKko6S4AfUr4SVGS3hbF+JDFlLgsHL1IoqOh4I+pDqionQEL8NnIMoragiNBpIeqEUNDwAret63ret63ret6B1fkLE+joJuZixmAmTIIIqGsuvqFDQ8DJkyZMmTJltQ9ASZCxHkpQXTQp9Ktbx6Dp06dRRUdJeoPS2P6Fcuekw49UaH6bchx29QX1I9MIqOh1f0APTBQ47RyplrZ19IIqOh1bQfQBCDIcZUSyfS7r6QRQ0PpD0wnUdXTp9Z9apIq3p6QRQ0P0r8op063hdxdxdwruFbuA9OJk2sUUPpyOUdJ8B4azoRoyZMtqZMtqZBFD6YIoaT4H1GrlEenJDVvowplDoFPgbUcDenJD02TJk3oBFBRVmh0Go1qDoKfpH1H9MI6RVmh4RrAoKZ9I+s\\/ogo6DpPqpcAQ1ioWGI9KSGr+kENJaSQ0GjazGkuAcA9Q8ITptWTcJ0PAEyjrLSXAEK3BiQqoOPoR6MQtq2LYti2LYti2lMVHqOCXAENIhlYEfoX9CGj+gVHglwRQ0BTOD6xHpx6ekOA8EENQVMfUia3hbhoybijwHgihqCxnwOnTp06fQ8B9Z1uK3ldxbwnGg0dFHgHQalPyPpHQaH6k8B4DpJHRv8IdY9ZaDQ6QPJHQ8IR1P1R1r6nQaHQFjMI8ToI6nVvpzrDqdBodQeR5I6S4IqSGh+qOsOp0HDFT1PBFSQ0PBuW5bluW5bluW5bluTp06dOnTp06Gp1r6nQcMEeCesVJDQpk2m0raVtWxbFsWxbFsW1bVtW1bVtW1bVtW1Nqda9RwwUuOKPE30b8B1idRodQpcMxpBSQ0KBTp06dOnTp0\\/0B4AdBodAgpcJ0ipIaHVvVbRkyZMmTangGg0Og0Oh4JqCKfUeu3pHhiUNDoNDoeCQUEU2o+vjoeKXXgA0biZMmTJtW9WCZWniidDxS\\/wMdLevFE8B1KbUj60aM62BbG4QdBo\\/oEfWOtxUdDxBBSOoPGfq9qZDQ8b8Tf4EoSW9GX\\/AMFP1e1bU3+FdP8AQN\\/i3+q\\/\\/9oACAECAgY\\/AusdjpCybZFEXRIiL4SRF65qORF8KPzcbFX3FeoX2tT\\/2gAIAQMCBj8C6wvRCZCLrE6mSnJkFnYe8MbGhWIxhkPB08OLcapa\\/dwXJP5Df\\/\\/aAAgBAQEGPwL\\/AA05gdrMBktVq5larVarf8DGQ5kX9gFgVmdNWq1Wq1Wq2ai4w9taPaoC1Sbid7lcFMNeFB\\/Afd7EU32oA85m8\\/LIE46giXSefcmUKs6dWVJ23V7CU32mJsZPtyhNxyBdPsmoscHDYi8W0yHj9JQeLHT9gKb7T9WZRNBmMlzoj9KdWqUvTJkn0+pqOayEaTBIGKYDa0ewt9ohrylupuSdyxYSfKAhRe3k8W9PoHwmHsLfaI6shTtvD3DJUYwweRwxsX3KjWDY2SfGBa3\\/AFBYQf6Iv1mPsLfaA42vn2KCefzQ7kazOdjm1O61YxvHam1LlsWBnO+Y+aafC5Q9gGYfYw3WZrYAtycT5iuwtPYmjsRox2sUKYxN1k2HVBGrWMXQ7IIs1TagdOUM3DDPjo3VNcmr6jPcEXG1xLinbY\\/BVN\\/yQC9Y2tQfCZH3Oy8bk4IOvHA7sWHTlDdmxzbckNHBf5sRc7mMfehT2RKMbZ96xPkLUcP7bZO3mxRtHkVTDy+GO9PHhfHvb+CBUdemKG7JH2SaOxPPhHDHUhDlmsInVhjcLg0bVUqc2IQYO1dRgqD0KQDGU6YiS834rAqbOtODpgMdSwRNsBeUZE9O+LpDlcbjvTcA+2HDi3ontChda3d+CiiA8wWHGVznvTY6IqGilmxNgmSo69ebFfmKY1ohVq2DfeUKdECpTxYapjCetOwPOClwuImYRgcOtGhVrf8ADcHOGGONrhZE6071\\/wBsHC0M5zD57F\\/HAwUapLPTjB+ITPanUademfQ4vUdzQb4Wwu1ldK1hcXNfj6rwyhZtT6DAQ8N9T8Ex\\/m+c04C1nEPmiBeJItB2KOSGrQTM8vZmHIUc2SiAms8TjAL+PSdxgRfUvmsRqPxeaXwRi7EBeoi7LA8omdwTS6QZEna78FFr8LXj7lTU3YqfT9OweiWxc8Ow8MYcJ161j\\/lfxqb2QLXAFxA1bV07qVUBjmBtcmMyzlxATDl0\\/wDIH8Sh0zosBi0POsRVL0ninQfHDVbxydzRjr1r1Ood6LIwYBM1J6rmBVqNKqS+qXYHcvFS5z2kqGPHUdTiXbCJe9Nb5YJo88W962tMEamHiNpUFEK1cKmrFNTyjfl7Mw55y0jqeETrQhHgPK1YanCTYdag3JJR8xn9LV6bzAvt+k2DtKqdB1DHsbXBYzUMMwe1Or1fv0gz7nTtbzd\\/ejS\\/jF+CBczDygiRiYr+bS\\/47Hw9V44nwNzE2FSpTx08NP1xF8L1R\\/8AV9K0VHNEK9V3hZa7tKZWqirCoMIov8DWX7oomm\\/ja2pgpj\\/yGMP7VixwaOBmLmAFwCa0WXoEWsc34qs3bFAnJarUMsswI5OzLvTsmJQObFQUYoB\\/26l8bO9RFhvRbUaHg2goGkT6NTljcdS5pp73GR4Wx1qdjuEbkHVHFtEOaXwE3QsCoUKeGFSdTFI4Ram1eidjpibOpe\\/EN0Niq0qvU0KJeMGBoxO7XI9DSYKgp\\/ueqbzOW1Pd0gNIU2Rrtxkvf+VpNybUeyjQoBsWy4sFllsyoVOpHrV\\/tFzWxGDFw7op1WpyNxVWBksMOGCNUNgLl1EbnNaE5u8dxRfrb70BqEHhWqGQTVuSRRmoRVqtyn6cgQTl2ZJXaH7T4DymY7kQ4YareZnzCdSffY4XG4o0qog4e8awmUxy0wXHbFM3kJhwepBw4NcE\\/E5oqNnTrPAaMVhpm6aZWr1g1lKNRzG2RQruh1LcWKlTH5jzON8FEj0XMj6TIcRhr3r1KkPVeMDWtEmnb811VasG9Q4ltOm4CAdEco2RVJ9RoohjP5NdrdkmQRADeIfdpGYbUccU9kCi0uxYDAm6WpVY+KtHsaE522KLvAb9U1VcLHGWfHPO7I3IVBQitmibWp8zbtYvCZVZyvEQsJk8Tpv1H+hVVjxhexpiDrCk6MeIfNNxftxg\\/wCm9N6Nv3OlINT1TzARtAQezB6bGinTqPMqlOF4VCg3CJQPUs4tgaqnQAQ6mQe6J4iLS4+UL+I8Mcym0Fz3iOPcFR6fC2lTwtqU4yETGHZKa6ttR2Os6o2k12wifZJVxi9KhRcwx87m8MESb04Xxd71E32p\\/lxN+OnduyNQRXZpatFx5SHNGw2+9RxBAUgH1HcpNkdXbYnOJMGuwPaZwRJYCNapNqj1+lbOjXdIA3sdFVKNV7GFjo9G6MIt8pCPTUOnI9Qg42nhbc5dT6bGj0xgbEEvJEu1M6vraf3KbYkG3\\/J1Kr1Fbpx6nT8rDZEiXxTKzzH+RVcam0AXbAVXbW\\/+u9h9M3EgSO9AjUnE24kIKq3EG+MR\\/LPTu+nI1BFfpR0jqg5KbDi24rBkp1DIMOLuEU9vg6geu0\\/Vz\\/BcUfTFusD5hV6fTu+0LaOtsY8F0UG0XBsXB33hCq2FwuITG0G+v07pVagBxR+SdSxPo8UGlog0C44l6PV1fWaaYjQw+KwEG4uKf0tHDh4m1NZItPyCp9NBpZSpEVXuti44yGjWnNDHRpECnitxPFqw3XJ1kyhGOG4XlPYRzCAicIGpFjpOaYO0zvpyNQRXZonPD20wDAYr1+\\/S96lgducqlP0iKmBzy4T4zYBDUAmx6d7n4A52Fsp3KsTSe17wWMaQYmUXe5dO\\/wBNwr0WQcIGOCOB47sJQxAtaRB0QRzKn07X\\/feMdbDdikBvX8WnVxDnpVSJg3s3LqHU2CjWYIPLRfdCFqDi9x6amzjFRs3HULzO9N6h7Hfy6jzB5PCHCQGHZGxCqPTbUDAeqBE3OuEFWq9W8BjiY2yLtXdBNa2t6lSq4Yn3nCJAaoBHDzQsTZRcQIjUoksaFD1C9x8DAqkQeIxB2KxWKxWaJ305GwQyQ2aCxWIMbYM+abH7bx42gRnrKAbUDnYg3EWgOw+UJrmuZSNE\\/wDKNMwc5vmhCRTyT\\/JwRc54MS1vhbG8kp\\/VekxlSkYB+PhjbHD4ip2WvNkTr3qoHNxNdTdPbcuHjOGGyKDhIhNLf26rQ5jtetfc7yVhhDF\\/pt53f0C9Oq3CWzYyEgN6sVisVisVisVisVisUMkdmmL7hIaF7+1UGG7FUP6G\\/wBV\\/Ih6dbpm8ThY8EcpTsLMNN3NTjIkXnWgah\\/SFhxQGpTOLYpRe4+UKdHCy9xtgqVWh\\/8Amlh\\/Ib+xCJDfpE+8rhbCNpvO8oarDpuzStYzmcYBNpjw6DDe5fUVXd\\/s0He8RVko5JrlUwFCmIDWucko06rsYMuxYdXsB3ZQiNC7qnXcNP5nQ7BIJo1L\\/wBjWH+24fJfqOZFxUGCKtDVCewnMjs0rt2QZCuzPbTbzOMAm02crBAaDaZDI86pLqjrAHvC\\/UVcrVapmKkFwhAuN+Q4jhA7SVJs9Znpt4yNyFdme7qD9LPmdDC5uQXYz+KcPO9g\\/wC5H6syeWLyAEHA4riRrCDu\\/TsOtNFyGxQTl2ZwY210k1jeVogNAXX3ZIJouaF0lB4xNfWaC3sJWGmwtFsIlVagDj6VQUztihCnI2EkALhwp9Rr2jBaId6\\/ctvIh7lx1sP\\/AG\\/1Ki4++Kdh\\/wBtuMfmaSI9ymoG0aZm9N3KOQrszjUO5vz0IbqUcjt8F0Df\\/I539rfxyOqf7vVR9xTMOqai5423nuCgwRjKFg7kwgQlxHVh1qJYao22dwWAUcI\\/KAupZeQ10xDZkFQbnIqIMdefbmsTd2Urszg3Qk5DsUVQ\\/JSe7vICr1PKx39F0g81YnuEE4RhG0IkznrlIL7bf1mQWJ8ap7mrkA3FSTon\\/SPuORwNhChHFrvXpspEAguL5AdukahuzMObHQ7TZldrNmQ\\/logd7vwVQectb7\\/wXQ\\/W\\/wCCOxTnsQxxf+RsgO1R9JgG0kqBpN70+6Upps7abxldRFgm3cViFoURo2rsQ0ERMKbQphXq1W5fgonKAVFdSdQpt9xPzVJmsl3cF0bNrz8MkrBaVEyheVI49yjhI7lylRA5ab\\/llZXMbcPYde5UKnhdUa0w1FYfDhid+hAzBoJKIEDszuYrjnmQ1WoLqna6sP7QAsPkZ8ZrpW6mE97skTZGakSB71ry13+WmB3u\\/DLK2PKbDG5ehVEDYGOtlYvUhD1JgbLtCMwaPWuUqcs8wsQCxedznd7lXftgOySw\\/wC20M7sm0OkvmpnL1FXzvDR+kfjlbsOLuVOo6T6ZDgRfsOzRHLMKIU9LyjJzHtVqkooC8Ko\\/wArSe4KnsaPgnfmmm1HWVBP6hkcBbFWTvjbk35KGt8ah\\/UcrvoQdu0nEo7EWo5I+wg3KvC0jD\\/cYJ\\/5WoBF4H7cHZHOujBR8SkghTba8ho7V6GDHRpAMlzSCxUnR1i9dH5eI1Nxknm6QHchu0gC7EYZBoQGuIlco4oqZ9ymfcuYKZarWd6jAEbCpslvQMYFPhOz4hVNsu8ptirsLhxU3ShsyHf8lKz4ZIKj5aUXn9H4pzj4jFepTOF41IOfzgWr0XENNOEzfFEaidJK1YQoutOWGgGsBW5slarVf3rE6MdUZJg8zx7kE8a2ke7Id9qEbQoqN9y6rqjf9tnxOWXantfOnUi1w2Jr2n73T1PTMZhzY\\/ML1mDC8Sqs1O\\/odCVwrimrFZo3aC1TUkw+Gm745h1xW0K1YfeunbfU+479U8sVA2GYKqUHcbJHUuqZQf8AuUi+gSPHTnA9iFVnC8Sq0\\/Kf6atDPJYpaOIcFKB7V+13LiaR2aBlIWAY3b7lHwlBO+o\\/Fe9RPag2xCn5nYY7zBMpixozJfuNmz5hO3TTT4fkVTr9G0HpqXBUHiMTE+p8jcm16Ri13eDeDt0E1EKawhRgrNLNgPYv2wpYm9q4aveF4XLlKsVQ+GQ7lzNGE6xev3Gw3hVYTGMwKhsXCUCm4WH1A9uDfGSdslmvqDkewx3oNPYVxCTxxC6civ5XSjH0VT96jq\\/zcU2tROKm+bToJrYsQCl7KZRlYjBsJnh1ZZ2nUueG8FSqj3qhUqvBZilg4jGwSROs5r2WYmkJtMniaYdygZanI0qgjGRBsIVOiGw6Gv8A6nlqk37IS0ByYHezvLRAFzoAb8pnBTcexq5j2tKa4OEg7DdPDIZ7areV9v1BA+C\\/XFQNoscq\\/SVAWvZKrSdqNjgdRuXo15+lKnV87Lu0X6AQUT7M76T8EMpdDibWhivgWWd4XO1ScO8Ki64nPcy+1u8LCcnqAceu+GrQhQPs0Nae29pI7jlNPW8O90MkwFRh5hoIDldx\\/wBUHWG9Q16Ae09QLnOxjc6eZOOSgB5tAXeIAgHYof4Ew+akPcTldvVmSn+WJ0BQyDPHtPT9RqJpntmMp3qzJVf5Ww7zoDvQzIZZZBLLiwxRhTy2q3SSzX4jAtc0s+qNmWG5XdmSvUvxgHdD2IZJqRgubJf7GboVGQU7ck78hJkE\\/wD+U\\/BbM4oZRu9gtVqtzLFZk255p1GY6bpOaUaPgPFSOthVyMT\\/AJCtUIKyGKq5fDRN3Z4ygkTvRuyWKxWKzQ2bitt4z64dYIBn0wlBazqW8oxaSFBo71So+RvFvMzkjoW7s8ZQjPTxEioQnnUOoFsCxwvgJx3BCfcpxhrUYnDtUAY61TL\\/AN2n9t\\/ZYe7LDQMA1ZpbDaDmwyQyWFWFWLlXKuVcq5VZnbRaM1h8oI\\/u\\/wCi\\/ZZHcsAhTptmG69q\\/cnqTadep6VI21IQnq7V6VFpDYxJMyTtKsVikJjQM3ZhbTZhhe61ReSTtyBDNnm2aKIMCFauZWq1AxjkP5gDBTGKEtqDGmMZYTtTWepHAAO5W5LVG454aDIK1Wq1Ymni1ZgzrFYrM+zOn2KGQu8oJ7lSNsWgxG1QXUVa\\/iqFrYXBslGLvchV5i3k3682CmioC1QyWrZrVyllxtG9WBDhy2KzOnlsU7MkYaCSc3zAjvCIa8tuhE2qB6h\\/en1HGPqP+FuQe\\/tzwsRtyxb3ZOEdmZOxbLkMss61Wq3Q8qsyWKyai1PdRaXMcYwFyP23dyoU78MTvM8j33NHzz2ve6AHh2qUXKTFqVyuyWT1qYnlwnvWFwgQdBZo7VPNiETFVHaguLpmGAuJCi+g4HY4IUaNMsBc3E5xuBuhkvyWKxWKxcqsyWKxbFYphTMMsfGLCtvtOIDeE8Sg5pVqnYmNuBxHsyTy2ZluZerVCBK5VCEsuLv0FuW1W5LMtmhLob\\/6omLmm8gqJfUPaFwtttJMct2SxWKxbFyqzJarFYrMspKduTG3tzNh0luS3LJW5IRRmoz2qRUcWS1XqzQXqclPLrObEcpywzJ58VJWKbVYp5kVzIa71svUM+Ssz7ctuZAqGT\\/\\/2gAIAQEDAT8hhSCSyWREpKwf\\/NUqVKlSpUqVKlQaNpAwn24GUlYaEDq5RB6GEZ7mdglHMB1lOsTC+msrpVlJSUlJWVlZWVlZWUlJSUlZWVlJSV1RUQLHVhs1ZUlcoEYxjGDsaZGYnKuIdKbsTN2i12JS56N3mgG2PaI14D7lytyrmNOZXqSvUncI9U0DrQgUNDv0aaVZWUlZWJmWVlEsGJe8wwRkiiCkrzaVqUtpY2j0Zb2nTy2xCNkCiAgaG7QJxQMRiusrCVbQbzCtD\\/YfhHQ\\/2WbcFJT9RlB6+YAGcfuWrR2\\/jcehUR7s24TJWdQMCHEOZUOZhmdpBBDRbFoETGhjg2hbwTMx4g9HiFYrESBOWNE3PlhcQePp3mfhPBP1X0jVKPyW2YGo5ydszjFSZkUzJUsBmYJvNJCDMDoTgwOi6SQ4QSyGCv8A4EBZef0SyFHppYlVvqlx2PEFuvSufJB6wf1MyoRUhS5etPVtlY05wO\\/zOM3IZOXjUGZezbDYM9Fgxi8xYoaTnoEOGgzl+crmGP5iAoc0v9Q2drhDbzNYP9Si57YxYTPVUUeFqb5xLRXQPaWMwStWydxXq22RKzrTfg+ycdMTu+NJBoNgRIGjhlBRGDSpEzAgTZp1\\/WgGBtgmx4CWem\\/tuOFl1wlZFeAX7uCWYM7Ga6B56xWF2261Mm\\/VWB6UuURJuQ\\/dOEEiTn41FSoJUGdAtMRnMvoTTMCEJiIhrLEmXaA+YIS76eyw4gpAN75d6zXWEChUWPhdsqgP0DuBzcNz7T5Y\\/NsizmfvThDAkZ+NGslZ0zSkK9O1gjfoIYmdAjGGsDmfwNCpxN\\/92jOhRMKYadTAfDO1SvFlFBOZh7P+Rnsr3lhWCgdDc\\/qGTs2f2T+Y2\\/Nsiyllez6EEvilJBK0CWubdc7n4mBZs0EiwSgiovDS3L6S5rn2lqrH1iV8gv4uc9L\\/AJWbzl8ov8YVDgT7Ro5Z7XaZfyzhW63Y\\/UrsVCihTYg5Yftsff8AM9k\\/LvTJTLwM4ih0IVxnKKu794awqdiGbTszBJt0hSmqnuxO2GgAxv8AC5ZQB6kDcBJ0KwfEFfKWIvb7jy5zrdb+4XYtru8Mzl4g3vZ3tj2mb9K\\/nzCws759n1Cvy48x4rk\\/Luz6rDK7TMdAEZwuahQmWbkJL5lCqQPMv02gxpI0DLWGMUIMox3B4II6OP47x8hH4KSnWX87OvSyd2\\/xMod1ERnWPFmF9e0zypwN+\\/atmDe+Ycmdj3I+74\\/lzDSHDWf0wKny8ymkjzD2fh3Z9BlZXaKrQ78v6xYlmkBJLYLJI0bkFYixAlSh0VaNCFDey5teXpL30\\/C\\/8hm5ynyrxDueeXOHeOwuoOzD1c1C8OwGwZPyby45wkMNHBVXgmEC2cOMiqbKeIy87Lbx+lXQzJJfeWg8FwHIw3cg4cU95x7oIs4Mw6bhmXgx94Bu+6ZAtqHqaSyEUg+xKXoH9zZN08xYS85X+e8qSi\\/SKsRxZAUhBmV7sFzKkiZ6DsDrMI2GylPwy85mzmIw4qLbcbeZezO0b5diWURl3Hc\\/YzPvjEJ1PYJu4QLygOVtQ3Vr0I7bKisOIB2brPRGK3cI7qYZHfXkVcWAhRgCWLa+XWxLjYDIqa7mfmdZp2QbE6uLlAbDHs\\/1L0H6PYe896EVgNYU3HLMwDtKzawG5LIg0h0sEDpRGVG5QjrDXufubIC1zqpbPi\\/7iGSHC4gBYWmoLRyuZNJ1lIqyjb3mCEyi14fqeBJkz+0M9owLB+czAIrQ1MFwUf8A2c+dpchTB1S32Mpw9oXPYvXiJ0ZVRmG53HMVspzyGshReAiByrCCqVqdszI8Hz6j5auA4leKdwMOjsg1lrOEveFYFsM3CFyoQTY+hFZ0GnloWrDuqNupg7EsrYr7MfcURcy\\/jaHgmUOvWZTxCPqgLnkTcrPSAbMx7qkq3JihSASWcFG1eyK0LmYvtMR3\\/uO0WRMk6TJ9pfPnf7l2XARhwHPidVLIXCVPWFOOJdWmx4uUUi0Z9p1zh6G11viBl+Q5jwYEop17w8\\/\\/AGNf2l629\\/yPtnC6KZAS7OvBARJVUuD61PapvyIzN8FmGNzA6EUxokO6DEOWXezPG8Cu8e1Au7m4oSnNMbilIaNi\\/iNo4PEKhG4wtWCDY1wC\\/wDMfcFu+qPBTm1ywzYKd7xKd2L+PaHa7Yvf\\/uj2zJpljWXEvq3RxnG7mJXw6A0N5xLyJLbeCYVtAPbAcP5uO0WL3rBkqZdo\\/wA0leKHQdRHjmVBxeYM8+spvY2eYj7ipvvb\\/cFaeh\\/G897oS69vJBR8llpb356kLrVHvILyaPEW7gh9hgr1q4Nj71OdOJ7M0cVi87xI2Thja6qrXWIwOx5R7YvaAOrdU5gDfljBKRtVQXrwTLzLLOLkb7BngyzEuy8uslmN7HSba4HqHVd2hqHkoA1krBfF3FJ\\/1k\\/2BxTQd7pnTvC9jX3iIGbP236l7SxN1YlcOgjcIYybCOoB5hRTbiC02MRlIhW0sifCMJf4Y7aCNDNy8TexfMZnkio+JWvE34q0ZKt9Wjl5Mz7v6m6U+8V+vr0hrUZ7wtjxOHc624G6MfiupqwAhBeD4ksxXhySs37xy6JuUrLgcJvBaGswW4m1Bz8SzINaq83Ko4I5ovrI66e3pLZEMgszmUPhAfSY2dfgO6d18GtD6oBjWt0EXrBXmAGHRSluw6W4n\\/1BAzmpYQ3oVNtlSOmu\\/wBhWJjn2gruVRv3mPeU4zfGPanMziLRlXtmf8e8dp9qYFShZaZb+HSEuH3ROAg6l9F5gxYMZvDPgm52SODfeB1HuOJj9f8Apz9hPOm0Pa+nMBh3gHxS4NO6V2LOV8YgnLYYXAt7gJ8zK+xQ3N3+YFO+54VflOMk5QyI+HIccwfg1Cgy4KlMSBG4MegT1Rr0CjrMOCJh26ldaifH6jLukq91mBt4XmhFaHcIWjl\\/xQS5ixFqOopHCbJSS1n6pl\\/DvNkHyy6H004ZdYgaTQDUYtqGs10Uwo9k44eZZbLpU2O5UylUS2gsOfvNMauFVGqvziC5c9MLpi7EJgapvFfpjK\\/AY20Og3vB5rgd045b5iAGKBu4povdFxs8rhvsLjec+KNy7EZhCW29XxC8qLYBbDF9XkuAviYosOp3jG1y0FLQuC1G5mZlpUd5hxR+ifyO+j78Mvop1xhUXVUo1qU0UicV9BPlL9pfpZLqxp30ZL7EHjZG8ov2YfMtdmK2eDt+iXkizb1MDhfrDYTYpsK2yrYhT61CE046N8mY8RBsGuQFpXeVCcl1u09RKD+C4ze4P0TjgEJ5jiS6kgzWKKwGXtLXcyHiFqtXiWt6Nnd79CAZvGK96c77sG22LuenXXkVGDORYq9kd\\/zb6K+5CakMNj0J2Y9GdqdmdmdidmYYqKt+arao8Sfz2iGHep\\/YS2qgWWBFrpe7DIcCbK2F84upiVr9WxrqD3nK0AUGjW\\/wbiLeG0Cxv0al2phvIHi03maD13PpbbdZXlChWtqgc+N5i\\/GIpuDcg\\/EclV0qXZw4TcXc3JpbOLY9uIpYO9OMaMrkDeqMQLBVM2b2HWtyeH5HsV7ysoTGF+2KTiq2v7jjSs2bXfZrad9O6ncTvp2Z2GdiV0SnpEekOM30RicS0T+HR3iaOYGlKnZnbnbnZnZnZ0VjRk7QFKGj+3QlvEF6xZbKCsjo5lKC2ozfcJXEyougk0Lku9rh6aMbhjsDeKi3GJxjn1hDdlFLu8DNvTC7yhwLUzL3fWKWxFi6Jaha2pqmjus5xB3BZmwR9psAV6Zlpt75+8HtN4Hsyl3ZXoQ1+l4h6WPQxheljpe6dsbGFaWaFELZgKCr\\/tNkLxQisRFpXHtOslfM6qd6dyHUndndi\\/8AsDmPoI6WBbsZY7eb\\/wAQU94PLX2l\\/OlfwLrZIcOsxOMUpp0ZUkfx3hXALYS+0wiWuvqMnINv0RaKXG+HKjxOZgWTvX8kDETu9nssr4nnQOe4mWW93tHZ5j6rdL9As8KWQDJ2hZYMypzdo+5vjDqTqJ1cOrMm8yFGPuzLQCr6vL7sfXiW7XtzPYg\\/nxDzt3nqiiAlOHrjd6srozLnE6QDYSrIvabaHsCHfGGPiUyZi8UpJQo2dF9OJesy+Zvv\\/wBg6PEvGby3TSFialIjU1vbjE6f20KVcxw0U2HaWC1KK1oJI2acA4t5\\/wCR8616r9P4dx4CFf6JeLc\\/x\\/iCIrZzE+8y5Xllmy+2CJyL2yzcrRzyXmZhOMf5FYJzKbn5hI6h9Ri2GgWQcvF6xdLQWf5PfRfKxCJSp00UES8IPQLJeptVrsd\\/YzBuontf7+C8T+5f8mc7RenNPY\\/1gW+b3yX9yjeVB9\\/lFOidB+I23OVcSpUOlejHsxT9ylo4vEpBYmPcHaG43lIQsSkDMEUIlnEY6Nz1HBSAwLOs3nSI5xorEZW9WcNEEF6\\/zvb8OFdM88w7HnLMBusf2+oqD\\/6D+phvGydDMOJa5dE6bMqdv6jIw5WoNcdQ6g94EDbaHEgMpEzNtHpTpsTjkoYIGcQFSkimYcYHlTE5QWy4jaLuF6NzP4PGijentjSN\\/ap78+0\\/gGi\\/f8Fcdnmy5DruxshyV8ywzTFO7ggdV65BG0tubg3ve4OttyNi2nipYFAGmH3Nnl6Kv3glrUYrgDWS8CMPGSsAD7LZfXHQBe5BcjRzdz7t\\/qdr0V1VcuWuZZQYYnhbMrAcMdJe2GuJa3C507zcb94A0CW8zYmPiRP4+83FBjD8U\\/n7REC4Wii4PBv+z+vw1vtm+Wb\\/AEYIqGIKDg\\/GWT\\/9bBFLsZfBM3ZDLy\\/3KRWCM9qd\\/EX2AKZydIYme0dZinswwWcGYtyst7eI69HF\\/VC\\/eKfVlE+m4bl1XIobTFE28J43Z9oIhloYPR6MvYIX7QViIfn2lenaOCQNLAiz3m\\/wb5kO5EZcjZmiYsHxTeaDAYmVAFrCM4\\/Cu7soJQdi39xqtu20+4K7\\/dS6O3UeUp+53pOLGIGLnp2s4lCVKF0HI8tsTH6\\/8csz\\/e5zEULV6J\\/csOD1vc+JTcideFx00watA+8vPHj\\/AIEQalSsmA5W8RMBKSkpKaGRQyQFSYsK3uRwKrxCExKGdpe+x6OZkG7t4\\/CCHYjYIcTYuj7omZ22gt\\/+tsdZ\\/YMmKlyWfCIW7HG+8XMbs7n7gOD8V+QsRVO\\/Ar9FT4zH\\/EbsDMAMZgqA2Ab8P9RS4M9Y8xySxf6RyQttvrFwFSxSZGfElAxnCwmZObW5lAlpzCZPiBbo6k5ae8OcH3+oJ0veyGyL76jbu8O8sWW8y3wm1oQ+pBfchfQKkd1E+A+2F\\/J8J7xhl8GvLt\\/qFQK\\/w3N5z4fOCWdBsFibQOt1X0zGjaXzTVl9BaFm8vQboTS3H2vtcvyVg3uo1uLBlxcw2ljbN2IZL2R59o2V5uzn0A3iNMBjneRsYq+\\/iA7X3OPiHIR7bg1tZ4nQEQy7HpAJ1IQnF1iotSPtENuuZZXk9kS8cQ+7GdP74\\/yMwju9ERZlfZ\\/5Ic\\/Bd5ztiWHt\\/c2Fj3TWAmLSHYSo0Tbo1Z3+m8vLsp0BP\\/r0VK0OZxFkrHWVSvjlUjmjIx6dQNGSC3jRvE72es6Z+k5cHNYjyvdj9ytpHwykIcTbkhJiZRVVE1fOIh2oVOb\\/ALn9E6AHwkJ0F14W\\/bOT6mzFop7S9d7RYMpL1L2E\\/wAIR\\/pqEZwvwz\\/Yarw3hnNyT8DzCqle9EmnA4mUQjRC4oJuJXSHNLtQ0ycs94t+nEu6OfMsFo+IbGw7LK74+of6iRRfJ\\/koMPO066czOEbPePYVVvuTNOW+cmXfezby3DWrKew\\/JmbswtdCDtFRFTwvM3G+cSpt90wXU3giqh+QfqDoxnRfb\\/ybOkRSVlZXQJLIEpUZVL6SutvguUQCmFQ6YqWE5b3iFJui8AjXQEUwGAPfMcNTMbN8Qqp7USkwHTMYNdnHzAE3H3OALNdj+8QzhD4KgdxiFn5v2pp+mEobuv8Aan+4Oy93U6PWdostlU358SxP3awPtmMUC2Coa4fEopPgHk3IScK3Wr67wiG1Y7f\\/AFD\\/ADNolk7070epL9dCtQ2UKwKByQVELik7Ib2ZB1nbaayyVAIEVAjXLLm5XPiQhwu98GUgy9WUOF9qmz921E4+Ca0NYTNGgs3qfDiCgtmuJkgW3ON6OdF0OYUITnljP0FVKyMfEM9Zzv4VMTYjB\\/G0Yjku5sjrl63KteRPYYv4TeKT5M3w3Dg\\/zrK50IAq6V+7jIb5lAJ174ntA+7\\/ALibFczsTtRhbLZb00vtGtYVlMpFNrm4lqtCp0I13e0rcT+NQDpKQ1BJvdfsRwEOzvE9NNaeJOjAU27ZYiw92UNuhtZ7k5lf\\/wAeLKeCchfdOYDtMis2U4gpyOa5OpKrNkuNXsHHiCG2Dfx6mgCpYXkgOj\\/jDUo9yFPxud4ng4LtHXekMzaUfS2cdQ2nfTExCpiNXCqlw71iN+dTCCEF1xCUKVAbkssTccS+kkikpKIS+jXsSricaVqBXpKWPYyuATSV9yU+N\\/UsqoFZdE+SGY6Kfc+MMfWt38wuGxYRNlXRvjqTBNF7n+daAmUsnJ1j2v0V5jvK3bsps9xlg8uU6L2yq8TbzNnK\\/wBuUSE1azm2l9EXFDwvS8q8OsI2VaLYekJUoie6eowOTA7lIdjPsXU6vQpgkr3ih7QJ9wWtkEu4GPYbIA\\/42ljHe37Q3kdMt7nScIHpl\\/CdYdiWHtg\\/Uvg1iAOHMXH+2\\/0lYdNPeBzRrOzggsneY5F0Vk6LJOw2XA9EdHlKkaiKB7Sppx0ltht2lvCE7JvuZSWS\\/TmZmZcfc0JuheMfqI3+C37iW9f8tp2B2a\\/ct5q+f1Bbo8xwjSl614mPvcm17pQjlHagiWwmznib84r+5d2PXDE6LYFR6cYLm66PZY9rei8hn7lkGlpbUMRnScGl+d5aCl9p4+ZtQ5jlAoTklmjgV3cU\\/wANmVfX\\/YHojhPQL0GKCCdGUFJbeYMXyw49kDKVFOkR0lQJUNLly5cuXL0uXGnfMBRgtfUVtKIDg3UvBfacSQBOxxDLLkBeJdF431XtcT0nlH7hd1uMk2WatiPbo\\/cF6CY2YojYl7pibngpyd3nMG5XFuP+QZVgbsj9jEIWlbdjR0YIrKSkpKTExDeU2SD6wQGGzYYuDZigmypmZ\\/Pcubo7uS2AXoJeu0aWYViMkzPsB2K3wpT\\/AMbAUV9CzcUIZbnE0RO3NmbTBBW09y\\/JmCjXS\\/hiJy1m5v51iARxLylb0WvmICX2XkvTaEtLy0vMk6MdpHwOIygzOHTf4Mfjvh3w\\/KK0mCu3SGxefuXYAPfV9mSDVCjlr9wAEvaQpJeC75Rm1GRmZibE4nubfi+dpmc3HeU7cbRQCgHaN5dLbhUu\\/MrK6ycReY1JvG0GKnJ2AuAqbq5SUlNFJSKMJTKZTMypUqVKlSmTbB95dnHyUP6lKBsEuIxWv5AX9pSWvZzO9qsh\\/cKSKeKboQcw5goaKcEY\\/YM\\/YnJ6ZHXxHssmFy\\/0s65euyNIalZCOYJ1MzrZWvb13MHtov1gXloKPs\\/sF\\/sswYjbH25zcRMAnDEwdxmSGzftBCBvN02YQguTwAW5KO7kjtB8oJ6DbNs4TYm6J0mFxONFpfpOxO1LemAtLy2paWltAlHKV8CXPMzxMWv\\/AO5czy7y82EqofPB8JK4bQb6WzCEpLt+2NK4sQ7pRMM6XNkBky2hjsiTemsJfm6eiq88pfrLTynlqMHs0EyYTGpIv0cfuHS488S3CYYjHBnEvedJjH8u2nxOUUPDQ3lgOwhuSxDc8IHeaZTmD2RyxccmNiIYEYdx4l8oQ3JSPI0Ll5ynAPWHnPFldEpG0CPbjSvNp7kxYRtDSrxP8i3B8hYObq49Ft78EpgbRsRYN1ubTfC57C7LftgabWKHhoPPSOx5g36OIdkNpmvrpy1g7JewmDiOZadud+KnrHiK0+cr1lOul3JXXFSrm6t4NKlJRKNN82Su91\\/csa2MPSJozczMGwEVIxu4SoAxXm4xav8A4pivZOJsYOZsaKu5jQHDNk+ugweulhUs0HiLCLjL3iNAsq9SnX0TR68r0njLx207UIZxyJSIJ2mdqU6SnSA6DuYkQSN3XjF9zZjOD5S5XKccEBxD7\\/3AKvQzmWd5Ce1EwvME2zmLGM2odV9FDhHQ15TlAqJILLwlrekai8l7yyFoFJ13C3KK8pZ\\/1P5mHTPmHZndJXyQ6xO4S\\/WeUQZswtgAIXVhHeZly9OsqTgD2G3MqVh4f9RxeGiJQuCW\\/wBRtseDhAnuFuuY+WFwf6mybtRZDSo0j4EqiI6G+8zCgfEwHeXjGtiynNzrEElehcuXL9AacxmsARENmUFD+NydqC6Z0wFiMyvkwW43gs8hiLkbTWq8d2bhLc3u\\/O2Zfebd+kzk5R3eV5juTZT6QA85szCOZTMOFwtrms6VE4isuvcDLjaOCcIi1pipOB43g21vtEYdKHfzvI8H2lP\\/AKi44Qg\\/El12EGmfBiY95knbZi6D+R4lNFEs6TfXTHsv6pECve1gAlSPBfs5gYKdj+paPqUh0C7MuWZTAdtOeSeaeSN3TPHJFuHs0NlMhDbS5xR3um7PtLsbqcnw2i7qFGKJgRNFqFfpg+6IZv2lOIDeVANo9uW2+Z8YS7ehXVPeV3jYcJP9eI7WCbxm7mPVEv2x58Su2FwN4A0kC+gA97jEKYaHdUDWRbXNKlnHvVhym\\/OY5cPmU47PnpFi9IV3tpOWCmBbxBNB1l4g2gPvibKodmdI\\/MBqU3HJ\\/sobrWYIanvDoRu2PeM2jtOqFdu8xZw8Q2LdsQywp59yEugTq2lq2fedxLxa9p1TEtpCN2VMsm7mblUfcdd4K5eFey5mDJshYtp8sth5loFiFT\\/ZQxHibTt5tArqVvKHj6mOBJbb9ssd5ZL2e8sVwTCTHpMMjIsEHPLy95lS66x2LV5Zu\\/hw95nsx4PiWnHvUsdLixlHZtMGS+ZRgVe8rY04GJ0\\/Ms4\\/M\\/tCd5bWHE6hb5nBv7w4FB1nY5PiHT+jNvohSqCoZ0y6yuZZx9xVxxoR3hXiDTGSG0eTpDwVl\\/IQ7dpgqHJmjPabIO7s+4BHfS+wF7s4UYc2MD+OINkMMw6anjMH\\/ItnneV95\\/Ur15bHQjvop0OY245jVf6PxK3q8bktWOeWKMvtANstiTEc8uU0pu99oKc1C2zYgIDclfaYmCX3jA5BM3LtO57TpYveYqudD5lSdu0MtmNWqWXXd3jtWlekf9kpEp+0ebmdujGHF5icp3LnZvLliLwg\\/Ov3HxMswBt8JSK2mUpL\\/wDyNkQcNnEUDJu39s6ifH7lrFXdhuvhNybeZWsfaXeD2Y5bQ\\/xfWGAxJ0anBfmP\\/Y5D1n8mgzNuMEA2\\/Eup0lb+L6xM94Z3+4OKonxEOxU7N53Q+nMtvxG64lSu2idjKNvtKN2OsasuI7Tc47TL1YV\\/IdYrcDOJyYO3MArsVttmFNtbMPupU5k5sLQ6ohVe+xUqjgi+8tvl5me33nufMef7xRwPe5RsfudevvQ8dwQfFxs4UfRFbi4XZ8yja32mfBB2By\\/1LU4GGY3UTvpZ+cDrfmI85OZwq5iu8HO8L6wG9oeJRglaHmY536Rp22lVA6qYjrKdZXCUKY1nHW9yCk0TziG0Qn1LBTCgOe7LaPqOcT63uy3KDtOR9\\/8AJ2BMzZ8xysUb5glgUck67DzB4y7wDa8diHlGgMZdmszB3dZdzPBmdqH830LJY\\/r4jMlM6COUhfA5\\/wCxmLEm8RfeXv2hbXeV0gPMbLild5WBaRHUwNkUe51iYijpE7SndFHAQBwSx4qDsxL7b6Swzv8A1K9kKoErDdkn6d4Kd3ossV8vq\\/UGO2qwV3h4JRsWdZisUI7ShZ0rvOGy1KAbUSicMWZowLhGvNyq7r0LmxcclICtmJfYr2nU79ohnJ\\/N4toFdH+S8bb8f7mD91Nzcnm3hFjOW+8qI8S2tmYcxQc7dd5WsGI5HWcnwy20zwe8FzYT+Yl+sqevpO\\/bOx7Sm8Be0xZt4Id1GkZZZrFG0SVBe3+z+5sj8\\/5HCiG4EWbv1Kco71BJi0W1Kgrt7THnEFMMqi4Y8uIrGm6viblCOLZlaeFy14J05gO9vSVwXtB1v6J2PuLbt76OKezh27TK+vE5ObiruvZmK5hljDL\\/APJZ5TFHsS2tvqVvqOy\\/8uG0GYVl3xKXK4ruXBdntOa060fMUAolcznOYECrgVUirkQUpbvFtnJ3jQVRKlS+R+GVZv7Ny1qiYsYmy4scpfyIbVeGHn8sr4PadeZyC3KuYZeqW35ecwc2dwih4gizmWGYYg48M+W5\\/9oACAECAwE\\/Ibly\\/wD8dhB0Wt+hKlarH04tmZf\\/AKgAAAF6Xow0qIvpStDLoVoRkUJSUlks9ePWVKlSvxh+CtR6VSpXpX0s6EP\\/AMKuXL9L9IyoEPx3EkV+g159FSvzJqSV6Cs1v8ht9fOpo+jD6L+FWgGgUVU0qV6L9ZIKPzMIuPxl0vOpRlab9av\\/ADMJs\\/FYw1c6MdDs\\/wDAmh+JhHWR9IegdUWJebjEjvFT+cm3Q0PU6Vwj6FaKlaXiLopdkOjuzDaOgfzEGNDQJWpFq4R\\/EFxBmybIbRNLzplj8\\/drGly\\/SvQ\\/iURbihtOiEtjTeNtzKnTdD\\/zBjGJAgfhLUu29C2WbbxctG31lWEsLoEcthV+MrQ8eutFRIRWhNOWhNKmMrE6Zhl24m8wPugrroXcGTSNKg1oz0n1LsSV6Nugem\\/RcNGJbEWYeJvIeipdps7zlcsCeYd7lbjMGyLXDibtusPoARUTKQEToVHA1BjQxNblxRh0MosFrQThZBMRF6MqDbfWG4b04Ey5meIm8PhLVRU2ZxyiG+myVNvQNA0SXEejbrXUtKNGVKl6U0GNJF0ubCC3QszBKzBWwsTdiZ+JslUS7IcwSpUdGtuEUSiAMNFpbQeoqEGq5el6XAd4wMZhabZRAQB4lpUyxHwJdwKlS234gKI7m+VosaCL0W0VOsWDFh6C4MuBnDF9V6touIWR4iVT0l4h5iCAz3CZ5hTMbhxMUnbRII+k9A6iCoR0I6XE01pUqVKlSpUqXZJaWC5lAVFxZvFKky3hvRzAlCG85dQglSpUqVpUqGla5qIwNHRG341rTZNtQhTM2RsQBmDEHzAgJ4rRhKla1+A0noGGipKSnqJbSWTEzio7xrhMHtMIAgccT9TqixQUw0ItLSmVKlSvQax0MYD8bAVt\\/gKTLmVUshGJayoJM6M3RlL6NSVlZWVlZSXqtupfQqVKlaVKj\\/CQjqcSyWRiaB+YTbqfUXLly5cX8DCV73rp6DD116HCbdTA0D6Fy5cX4lgy\\/mbPTemMdVj8NSvUTLl6L8zCJFubfW6Vy6OLly\\/TcvWTZoaV+B\\/CwlBZWubfWwmK4TfX4a9AwIaP\\/gdbeaBkCKhMwnZemuhKdEpqGAypfouMLS9Zl+m\\/S\\/hYaFIPEJuQbKEbmEKS4tB5jtLyLL9DYIrpWofguX+M0Ye3oBzOge8Bu50SGXpQQPxGk40WXpf5nWshy6TfFjQ4YnnLrSNkvR3g1B\\/BWp403fgbl9akv0mlhiUGdaN4aDoENo8ei\\/kmM3fhdFei2D6Llxxvhw+gGCcejtjBj8JrMT8hcG5UqV6N0SE3gV6AYGjf6Ar+WdGK0r0VK9NXK0qVKi7l4hBzLCunpzVVoP1+KpXqBKly9Lly5c57aJvRaFiuKtMiO2mL6Qm2IpxNhlI9INzZ6r0uXL9TL\\/AlmheWntloSv2l+kBzvMN62Q05R0EwRW3GzJLEwq7NJKlSpUqVKlQJU40qV+MVK0VKlaLRNG2EN9Nuh1yaZezBUuJQsh+E0vQ0r1r1K3L9VStGG60PSLi9GhhZDP4jRNK0VK\\/Ay7xj2Ig3PShl\\/ihmCDXy0qvsf3Kl6EqVK0VKlQjqNml\\/kTHpxm9DGdPGgtlS02nolI7Xp7DgqWadmDoephrB\\/wCpgi0WJY3oTWlj4i+blmIS6\\/CyoP8A6CLEWLCE9vWaXui1ZtK3rOqoESH\\/AJaiQm6NSofi08elxUpwyxBsg\\/hCPpXLly5foqVKlSpUqVK0r0Ugz8fgtfZvGWcxOLtD1l20UvSpUqVKlSpX4L9OzUytH8EHrFFOIsIPqdmplfiB6yspKaKlSpUqV6NsTRZfgXBN5GcaP0+zR6lMrKSmtVlZWVlZWV\\/A\\/v12aMWA7wPXXMOYzjQfRImhFly\\/oFy5cuXrUr0V6Ac+i6W+uuZQ5jDV+jdtDH0ICU1a6lJRMa16ahzowVpXXRS+reWkRhtqPo3Wy5fqBcv0jUrL0VlfRyxpi6maGnq3j0Oz0PSI4aBGXpUqVKlaYl+kyRv1V6KqbTJuVOX06zGDTb6FTqLjU6X+YlpcuXLlzglSjErE6ENOhYK1MUO8MZgPS39DcvVei5fpr1XL0XLlxS8oXC7x4sxVbpcuPQXMN9TY1QQI6DR9df8AjVwkcRz6KnQsS4bYaDKiY2lyjR9dy\\/Xf4a9Itmk4D6bCoaVQQlEVj6VuJX\\/rJKTfFm70VKnJHiV5Y6dKEYZeg\\/8AoV+ispoZu9FaVEewl4aNapcaa1MG\\/wAN\\/wDguM3R0ib0uXKyvoFNFyyX\\/wDgEYdGLS5fpXL9J6KZTG+lZcvS\\/Rety5fquOiqX7SzeXLly5cYYuXLl+qoal+Jf4CvwVcdL9JmCKpct0PSQNCLLdSOtempUrTMplal5aJq2h6b0SVC9KZUqV6DQ0KoN6f\\/2gAIAQMDAT8hqVKlSvRUqVKlSpUqVKlSpUqVK1qVK0qVKlSpUqVKlStRNElaVLPXUqVKlSvw1pWlaVKlSpUqVKlSpUqVKgRlaulxB6ySD0Kg0qVKlSpUqVKlStFf+NZcv8Lh6L\\/Af+nz+QfjHoshlxf\\/AE36p+I0uXoB0NNR\\/M\\/+Bw\\/Eei3GZhlYNmPqMPXf5z8oaViOlyhjLvWX\\/wCYjpPxEdbolHYv3j4qO0P52Do\\/iNZqem4Q0Lj2gzUDiYQtNkF\\/nZu0dePQEIZaaz0X6QlQSqdLqnZjxoY\\/m2RZ0dFl6sOdRqPwCEZum4hzOmMJRow\\/P2Td6VaX6a1HrCGhunVAtjmOhcRm2P5tus7a8ak3arUeoLlabEd4wRXzLvbeNwlxZWZXkmX8ltgz6eItJJ6QDLL4GVlqnchK1E5m6PVhzGAdkuNy2OJyS7nQ6FuJdfH1IJWW6N2iy4TiGVB0ELMkGFWiCF1ROozLzJX8+tXeocGxrqrZmX1m22WJcorMm2ZzdOIZiwzElwRLRg1rKPHjSs6OLTiPqyBTpUXvLibbvWNVu\\/cWJsmbDDxLESinE2ZBM3C7TmCi\\/wBQ5O0BmK8zYvbEFOpt9IDejCOpMnX3axpxoLaFBjFstOrN8w6BcO04e0qZrhKltrxAqYdoNwLHc2pl4veI7zAwYl3Q5mGNBtoHPocY1LlsEzlING\\/VWl4jN2gQIytFSpsMp94NjLFTd401PYShQb4hdw7yjDiCYm0C0MTc88H9xxS7jqZuio6LFNBUEqGtv9FJUR0a9daWrm+SV5RSDTNvnaJeYWWH6GByZlpcs9oaq\\/VVGEqVE0r0G70q0glSpUqVKlSpUqPFaJjxBxcuVZ3QDJdcw3IBM7TPQsWkd50Q40HOlkVKlSpUCVKlSpUSDTu9UyvVUrSpUGjZMEHEFT3g1l9R3nEEBqxWd5TdvBGH29G4qVKlSpUqVKlSpUrV3+pV6wKSks1wg+Y3l0whVUr4ShzZA7cw4wcOCYFRKzaxY1wUuXL\\/AAkU36OXF\\/H\\/AIUV+GDfAlO69pd2ibLiwXLaZe2jGolMzMzMzLZbLS0tLRaN+ggSpX4T+FmC+kYYl6Z15fPpSpUqVKlSpUqVAjN+o9B6wr8BKuAqu82aXLl60BW8oXrQ16KlStKlSoNG7WMvUaVKlSvxwy5m31326Swh9Pety5cuXHp3ejX\\/AIQjMpdm317JeGZZIMH0\\/wDD96mhDQfhNDWY3Zs0v0C9NytYFh9Vy9L9OuKMNK0YQ\\/G6YuG5cmO8ZPbL9tJmp3jDEuy4LRpUrRlQh0V6FUT\\/AMRHTaQx0XqukplQJU4IbytlarpDjKtI0qMfTUqVK\\/II6m1nM3x02jNwdZLIhv8AkPOlaq\\/8LzLNI5m+OjCKgegNlxsRK\\/EcQ5hD1kK\\/IhhhxD6JzofTRVoOPyCH4TRfprWoYszgm2LOm\\/QjD0KmC8mSXPj8kg\\/ivRf4ZZ0whXo3fhCgNsPyhoQOly\\/W3SpuhtFiZ7ysTJhtLLHStvrqvR0Gv9vxXrPQtSpWpUqEJugaN5sS7hqFCpuIb6Kz0DV5yb5o5jv+CpUqPqV+A0lZX0ZUG6VW+hv0T1TBRDOGHiR77tLLly5cuXLly5cN9F0PwtkHRcuXpcuCSs3fgHMWommGvxMxAjoVrfrH4F6XKejfqTdHrZGvMT8NSoS4suXL\\/Cku7MalaVqNWbtSHEevhIIkqPrAuKDmBKm781p3tLw0LNFiXCN3oVD6SWByMN6pXqDQb6H\\/ANoQUQhqGmbr4hrRt63QixP\\/AGDY9Yup0iG3MFS4eZWlSvQjFmDH\\/wAxqdFj65nJyQXokuXL0L0d0Gb6KlSpUqVrcuXL\\/M2PP4Jd9ZmmWh59WM6CVAly5cuXLly9K\\/G+mza8+iY674dRfqnnVcv8XxaWl5aXl5aXl5bQtd2p9IdTn0xzLl65b0MNCzUry0tLS0t+R5+HrH0HUTZDVL0xKaDRgRJTWvzXL0L\\/AORByeg3aP8AGwi5ctmdLly\\/Rf4F3qt2oR31Fnot2s1VpUqVKlSvQmitFvSVekEw9eNe70CnzocNC6K1uXL9VSpX\\/gOD8ObvRYapoTVX5qlSpXoTRNAhKhFfomjpl6VMTVUr8AKlaKlempUrWoJWNdcQgQNaH0uNd34H8t\\/grSpUEIJub+mwjAlTZrlor\\/3hhEJvrpJyPTQx1MDKl\\/8A4MInem2BNvqUM4PSX6GCv\\/NUqVraXmyE2ypUrStNul61or0Prr\\/yCRY1Fuly9KZUqVKlStKlSpWr\\/wCojSah669N6PoxoPTUr01K0rSpUqV6ibSjKynH\\/huOjH0H5i\\/Ua0ypUrSoaCJ+R0T\\/AMGJcuXpehpf4l6XL0uX6mEdf\\/\\/aAAwDAQACEQMRAAAQkFmWxySyQEkkklDb\\/wAkqSeImie+TOuZ0Oaa\\/wB9m222SCH0fszct1aTgNQBR3smyTfxLImyJp6EOcrBqLPRP4a+KA7BJJJKJLtZXtI2GlABX8KCbp\\/oJJJJTafjEU0cZf2z9XZ++GUtJIJJI7BdkqEg8799RP8ATqkxTqymqSSqEPs+MunPd1yaA9jSBqSSGSSWEDSKsRUni\\/yej8c6dBSSSSSSQqdzXhUZHJUR2zkIUuKSSSSSSiTx1HoAckS0KIK7X7NySSSSSUe4zCA1fXMjp9wlDrNISSSSSSAXTjwhehCAK45v6BbN6mCSSSUrRpGOqllAHUkLLUp\\/EYLySSSaOp1uKW7\\/AA5Ao\\/zdR2COX4dsXGVAypL\\/AIPToVXnOCNZEIazvBkAodZLampzsaE55sLSYiLzoXPjVtbYcJuT9BeRDZlnGArFSMK71fi\\/zMPOkM4xZ\\/b8I9v+aDTiWLvVUXhmyOJfIZ4Itg2cnhX4v6N74YWqjJ5QHWrqeBJ7MWBeYTbjdgzmy\\/PW7M+OiWpQj4RSCNf+9jMw6NXazQxelHReWjB7BefHygQLKt+rJPu8No3V1iMMyGkU+unYoWRpbJbkC6JXQjsNJfuSNnxpCIvVJbpOSMxQ27LQAvKSl89PXYuHZZvaJwylykY5u2T\\/ALp5QYTdeyzf+HplBPQHRMXwl7Fx86SlIiWfecsnUWzpf4zbaH\\/KQ9RR5m2z\\/wCO8bCu6HmiUXmdO\\/nstvL8tl\\/9ZvNkkDrHbH4VklhMGMw8sll8K30\\/wW0wLoogoWDHyxkTt3ktYxVV+jmoNIkkklgRXhKwNerkfwYO+\\/7+5XklMNgyNIHPkb+slHeXMVIAOEuktEIOsc+0TlQuBOCJd2WJrVwklopICS2MlknPsNNQpT7b8gIgBFsB5juJgUErjGemihiPbRgyU\\/2HA1176Mo\\/DABrk4UUbAhYUC0vQ3UtdAntoI3\\/AOW+1uCzx\\/oISa5wsuiYr\\/vveS7Q5S1ru1k1LLLPmXtf99fkQemjs6xjV27pzbWKl41db7\\/rsh+gLUE9EaGqM3dibmM9GGz7Pk2w9nSMLTkiuPb2HNrav\\/zVrv8AbbkKbIwBP6lv77fQBoa7Xef9mgdUey1M4bgVxc7c1LmBGm6eFAXNDFsSxaavOr4yQ4zWWbfDtG0bbkZCi0Jfqv52Ti\\/sktFtbYOn0tZXNaD9DdcWp605phisbjLg46CaMgqiXeTQ\\/inBXG3\\/AMh8kIdZhiee0PDjF3HoPN6YO3IRYpucYIWravuXWu8Xv7z2Rv3shfb227bu3d3nR9n+AfM8yRMb0U+m9Xly+ztK1y3\\/AK+eFERSkJYPxnqOS6gYJljz7LnAthvasrL4T3YhEvreu54iIojKDXULMem5PrN2evRuwx8Mx2rUZrRQs3IrZLbcGKol6BaNeMCrRYUJNndGh2b4kWYRJrBy9GBYLZL3U0HxNE1Zt8ONf34CTvnCSkR35QHjfJrH+0cuPAzE8Ll8EXSCnLf5M0mvjUtwi2nIPqmr5jdHzIMY6JQk6baDPxoKalByqnw0ZIY2EJpA1y55dwwSxv2UvjDxeXLG\\/wB8TOQlT\\/e9GYnA6GGEYESlX\\/\\/aAAgBAQMBPxATmX8zq53Z3YDmU8wfmA8wO8JWmJiUSiUSiUSpRKlSpUqUSiUSkpKSkpKyspKSsr0hW+YcMJ70+wg\\/i6QDvDqTed5USNgYui34lAVEwrrFTZsPmcUPvLGz5gQo8MCMkMs3aMdFOAkvUZYLp8Q03uTuzv6fdndh153J3PTddyd2d2dyd6d+d6MGPdlYCU61DdeIu7nBBENloWWWnMAbvifM1MCRoecr9y5ZQUXfLMkP3FNv3GYxr9osK98zHGG8FFB5htEHm5XM\\/mHB80tou+7GDh1cgpzUBAjwpbsEwBLbrpEFpibhDkgf9yVf6QX+ky7ko7PmINz5iNCfM5SU8YqZJ4ynSeAlepOo\\/U7h8TtR6E7EqYJTZIUZCA8G7mMfuVKJ23Z4jPhjKYSYob7wTTen9TZ3uuNV1GZBBrDacErxOnZnHPiMDGGxTEfBygODMpECC3K3uUJy6CsHurgS1Yd3BONNBfzcrLcxK6FZhBQgCvVvAJuIWzcxvYtQYzC7q79h3hte1I3YHkekFVsLfpBhKlZ\\/AlzJnaCJZoqfxGC68p7MoW5cAUq2HbHDK\\/HRy7TL4iS\\/WDWfMmC7T7c2o1DC3MIgo0RorDtxbSgKZoDKrQQBwpuLM+DZ5hcCLXr4g095xvUoxFBrboHWsEKbYug9THa6cIWW5Dw6SoxmM9w4PxtLkHsNxRf7hUDfEooyvM+3GM3G4zMi58Uza0c6JGfTEVCTCmEJeXaZ2MRCXKRA8Qs1FtNqBoN2CEsLlXx79nZfw5jsl1PH+jAFBQp95ZXN\\/wBlKzINYqUNHonMhg6X1DJ7zdJWeRZD5RUAMJtaZhYw6iYFdFrQEdvUoigPmUF1hxblYnwQ4O8zJV5kr66wc5ghXEoCMQ4mK1HomconLcvTW0wl4jHaWES+i+k3I1452mCGS3KjB8wC7sV23fca\\/oPYqCU1wfNMLJgsDESuVRN0yFmXdUWd0lMeBQ7RLRkLqJRiWb1hU9nlcMlG9LRxXJtL0X6QupNmqVCb7jm06fBDa8ypvVmPlTriJM5GJY\\/gIy25eYpINFGJm10maOekYvVjpGGY419dVG5EK6HtzKU1ADisSwngfdMeJA33ZwLz0r3qZsrKWsXvv4jlQN5iNFqC72y30CphCl5t3JzMeBu0Coa7kRQ2QYehBjZcA9JDMxVUELJkcU8cp8UV90+1LPKlGftMcoOjJEdIdIFQ9TWI5VFvjE7MybSiPePESV2hBzERkGPeZTshjy7QX0\\/6SbgyDuB\\/cW85x\\/X9SoHzFfZh4FMzE\\/ycUJSxXmXXK6oAYhMNkU5nh2Wz6IYj5Opx+ZVF0xY6E18EtT3n3J8ynBXP9wLjpCFV4ntYXZSUGSIQgPagMmlXWbSHEvI99DFN9GluwaxzniZ8EqPAwc9d4i3ZYs64f6hcbKXgUTcUUKD\\/ADGh0W2QclT\\/ACWlLQ5vN9s\\/MNl3AaExTTAKr90YQGbAHS4JbcXQ9VtBs\\/Lvz41gTbfbc4eJlXvDB3hE9U2HevuVBDLEqJtDdgJV+BqBRR+6LFt7ZjpnaNm8veUIpPNRSKjbkmIYqoF2x7hp2A2wpnar4Cj6JglpT2rQfDFGUm30QfUAhbCXqd\\/YmXQsu9Kw9ob3MD1ZX\\/No6v60VsEMr2N5gp9UXMmnOHd6w2eGj50vzLtxSvZxKZu2g\\/0\\/ldQ8UGXTfM\\/MdviUDpcJQ5jluk3jVzD6FAgXdlgzZKC3nYYA43alBQSE0g3Bn4lgJRPMKoCKq6xLzMAwxCqCsdqgg4snRkPLBwguOmZ+ajV\\/Dwr7FIS2w5wDA8zECGD2T77cy1nI0HJcObPgn920RSQBrS4FuQ+aQzSWixV7n6gmO8\\/ubADYXwGIxb0K7Xk9n8v0IJGf9\\/zNvxLgbjcNiVwyEanJfslwvSVSFbUAaFCoiwFyWwS6MqclssK\\/iEAyoeYgZcyiQ2jGVHaMWuJYygDs48xXsmx9fbOnhQOjj3fUuNszcRQPED10Rjlap+YBEYwd8g9gSsvFh7nAeY64wTG6Lu2ChNssrXOkyBWkqYLp7S5Ylca17JyHiojBTgpod39\\/4mUg04Kn3GGbSAWPgzvx60JyIPa8fhYWdIJxsnUfc2\\/E4SFy9bgHwSuX8ZlbiHfFwNKllYlUBjrKTY8zN15gXvpK\\/rHfFx1BlpztANFwdgmDgtgRty0xl\\/hCHwVJyGge5+8HeC4QCr+UYuOt4oTSK3LfJGYPCNhRRRuG532iO4gssscWlqVVEoz4Eyp4LFzUAti2PHCRsg8qjDypuuLU4GUC9sw8subzuTLyHxxA5vegNdnvY9pSBZV5Ez808VL9Zu9u\\/wAwQNcDCmDcFVYwji78L49K7bisH1Epiu5ljLghPNhmf4o2PEV8QAwLIF8LMcvhxBpnaDdsKXFtZYLfMGWUb5gwKFb3EZiYajkjAIeYQFhWwbquI8aHdyp2WhL3Lhv7ktABvhl+ud0InxhodVzGwgRQ6ujnxE45SmUStsi6YIum1SwlkU0pwLMwQCLgoOEW5u130lhzMjDGjIG1olxeLOFbrV6O1W+IaZGKSGS2ku3jtCxiM20ZU3x0Jm6AltrgKaBjCYHYO1ct7cuPzOUtV0KJ7KIzzkD3p8Fcwx3Fq8J0O0pEnRiB3htwuXESGUcTN2whzBYIbwTLMxneAmGLRFJNniKKhwxU3CyII7EiUsX6JsCAlwkt5gAl4ZgW3C+01JRj8V3OfhVRht3CJr6xddxgYtE7THEmU0QUgxnRXKroBcaHFJZYETQYacTdlOwDueD8pYDUqkc1QeHac\\/d20dAZOIpnWIyVC09C\\/koRExVsG5\\/W5ZQ9RWrdJLQDljdvRLFqmIUzaTnIWBRHpYPiicRT6tvNwFesSO6xD2OCFQAD2ALmLzc7on7RZUBFLbapwln\\/AGFY8AFNt2MwQOzDLiGyLuqB1mxIaBSW4DxcQk7u3op7vMVRWe8ZH4iWMlGxdy9xiAF2VXmwdZZid3WXqE5jEGEGNy23CF0D0XNijyNxDimbIjpTi+ZYiUR5mZuxTFks0aZPeEj3tUEgYUz1j9Up6oalx3L+oQDcji9v9sAsc4mDVRFVwSkdpA0cAtuAYsCw21lA\\/uVIK2YlKSmmG1H9zaeMplpVb2WOCsodqiysLsMynDVwjypu9TcjvQPexvPd1T\\/SISp5MMS5qyl4e\\/tFooy+AKDsrO5gjRFYymjuG9YHdgJGk5wb007hZHrJZqChZyFiFXZqKQ3NrEuOEqAFlCHeQawx8aAt8JtkyJBcBltKl\\/Lu3zTC2mjtlwlN52uZVFK+uI8kCGCWfWw4qM+xvFTbBMYo39iGjBBw3UntCwUpQfZcLJ+XcjDLB3dZYsCLYuO8LzzFzsXiDiqWTiAERXJDC1hutpSrB1W4uSK6wziuoGTMFS7JmzVr9Srq8n5j9UZo5uCp2DHeGnafZfuObtLh9CKLgAoQZQC1O5EC4JWKGympSW3REUAwIS5NOSjYzgvOQ4DVgvjCH7mc0rPOLPImfBwbHoVSu5cHQaCbzuKsrmvERf8AqtgzykBVRh7J3YCpC5igtHfrCGaeY2l2X4pdo2Qg1CdxYOzEyfMRi0+k1G6W99ZGANG8hai6h1TYCsyel2w88qaIKZWmjLTZiGe9Ch1KG16jLMnB8eFhC8ByC5hTYyJhl88uLjjnTgV6BuWyTN9zS8F1dMwF274yXC+8UYgkOMHd90YR5BOaueW0HbBLPYcSjbxuSkF1OJTFT55hQC9v0lbU2IdF9t3aKMfBdtRe4b2I+JMRNueZtDTaXoAh+qVW6tf1EA6ShGR1TyuPvvBoSq3gdZYL7ylXyrszAf8A6gGLKAu+0vKuOrsIi73MyoEbr0C64D4QRoASq2hHN3AcqYwkMvN\\/sDksjI8tbs5Df\\/k5huKIC0eYxVlw6he6OdlRtYD68E2AMADH27pr3VsKZhqG7lrSUsziuIooxVd4mMuNdR84JUZZRhVwWjm4HlSQ62+FZbtpUo5FYU3OHFLxDoAB7sXTbGL2PMtY+pb99yOtguZ1fjRYcZoEfnYGLwfkYfVs4XhXv2lO0HNkI9exMDFdsSAG+a5nUe8WXZ5XCGCpTU5JXFPMGQpesOJO8HzJW9wbmFcHCwcEcCSwOk3nqjEy\\/VEh3hV\\/ESt5OY1rUWdlhau7D9pQtfEQDanwio4JymZkc1e8cd7i4zozf0XgiW75Twns19ytnlvg8pKK9kgyu\\/U2Pe3jy9ioyCzfDI3IWOEiNhTQZu2b0OAnQY5ols2mQ9BXsAKc5eiEKllBBZs8XFOOLlGlAeSpeAzqHwy6vhIkD2mGFtxFDpcQOXwNhm5uACqzAKGW94HeVDtMyxCgdBZiB\\/ECIAA4pwDlhw7Zm9pb+ZavFh0pfqJmjtGS+CZO0A+QrzvDSrSgvgNiBGCyXGY5MRYvmClmYy2Ou9AKHS43RJHVu6K1L9E94X6g+wgDd\\/2ltjDb6qMhSoi5a2LTFm8WXvbEMtoucbztRVTwnIqRKniELPeHAblQV8wa8A6FKCyMQwYc1LQSzJ5dEwlAwvSJgtOB6t73UsMTFPAxZxbN9sQqlgEciO1nc9oRmG\\/hLyKXQ4gLHOslGvBYwrMb2QBu2HmOgtoR5UIKChSyq3viG1FhSqb2oIOCpU0liaowDC4Mdec1mZt3+djOH4hjjcD\\/AMlf4iSuTcsOBeZgExZdMBi4m77wm5imPKVbDDCZMxw8wJCHSqobQ95nXulq12hs9oFp6\\/1MVxiAfybks\\/g4hGJHLcSj5lEQ40qJRKuhSdye7rrfbJ2EYP8AkfMCBgngEA6QEbkoXKh0KVxBlBKOhMBVGM4cwrN+ZGWbFE09VbRb9GrSPryMrTaV8qD9ISnaOqPjMTjBKiHKuFvhpQwXVkApaXiYAagY63eZMWaZlyqPXXab0NdstXEWWhHdx9AOyNldgbbTc5oO4bMONpQE4sHr0YgxAtgIgptUCwzOR+g09NPJ0gekT0lOkB0nZhWVlPEqEJY4KjDOkz\\/d+oruyNntBn9U8xge2fufNj9QyBbgdl9xPlB7KI7KPWzvojziXObZI6wW+Emtt4T4DGVwWbZD2mQlNJwYyUjukWtIoLMobS7hdSjG2rAhU1Qpyo5TJdUAyCAHI7o4zTpGcBzIzxx9szQKHdNmPiVfEuQrWY3j2Ywu70KTqQ7DFQdr+MKNm3GMbw7wRzsjIopuy3c6ximqgPSlneUJWkJJnlKH9ktWzVWFrQDH7iNDDWy2\\/L0hWUhaoBSRXgSikkoIO6EWrLHrOB4dVQiJLX8aZDusq2qp\\/wDCn\\/yJ\\/wDAiO\\/wR634n\\/xp3fxO8+I9V8TqHxE2n4ijZVmIULG0x9WI2e0KRdK5RU2jXMNfudN0\\/U3kGKcINwi3CdnHoYdLMeyBRrwHdm0wQ5d\\/cczvoQwknVvmJvybPJ4hiy3Ash9wA+zMZtIjAVUC2XW+CI2xbxv9W+t3WcaGUtjtSq57YluLO7wUhyK4Lllc25SjNuaU8xtmTcdcWsHfurlzKawbo1e+GVAqRZwbPLkGExERoHs6+0YylKpFF4oQrmWeaBZ8fHA8IlSil9bIbyc7NdIldIUHzNm1THvFn9UV\\/hOEPiK\\/wjOHxHjHwTonwRbhXiO4fERwrxBwyO2kEDLtibOgx+iEFLtiCDcQmCeMiu0I7wxHGHR\\/Mv4fMV\\/1D\\/6p2U6kSzryHgxqOsDRvhFJ6JToBbMFJVHhSj8EsEG62Lt9uVSccYIntHqO2ItIfFdimThgjw6CoAF5T\\/iPDicACNGxibhzuw5gXlxah0Oj3lbwVVBLhZZ1Q3OTh2Yvu0AbiwMAgo\\/dvvlo6SsVKt6iz3YWx8bALXwYFRSyWdI9udknbJ2CZNiX0EvpI9kFNoQNjDd9JRTf\\/U\\/VEIo1M7whe0rvSkBqWdr4hOTE7qBd3zDcqhhWloXfm6F7G72jG1be+8\\/fJN0IZ8SptEgZignReDl\\/1CKzIfi4Gg26bmnK7VCbEswug+covYiTZZbJUyNr7y3gFebQvvE9Y5wi1hGBFHsbxJaJQEeMWdWQVZRp5gIFsGajqieSnm93zKFsCl9s\\/wDERZmlvXAygyX7xzFZ8x6WOtypyvmHb9wjZgdjcegwPDLmqYdh0mMNLC3bBY2e0ttuYUOd4Ws3tOEbxuJRA8QgXiU8Tsx6EKt1FdohfYPjbCyrhqI7QLSpuXb2By92CM2CDnNf3QKFUVZrDmCEdv0ASgoc4hYF4+pkA0tqcxHYHGKCO0VAD3Ykv3BTOztFEhTbEuHdMwPMl\\/DHyCGc8\\/8AYLtl42S110FObJcKou9YKbynnMvMsFzFOWAIE5uXu7hvZiEHiH4MbPaZHxcFLhj8F4\\/c2VeX1BA5IRPMeRqmAjHuWJVy3XayKeAHqDd7rLLgaBA05lxaXvcj7MwLqwftlTg2XZu9hkkvDFskLFI5M8SjdL7v8m+o8Wy3VV93mWBxXQ3ReTuG70uOFJpaHMJtcnYpHb5Zpx0fZiCgZjA6mDyl3KmnK+7t7QidmPbePTheKl4ipWmY1iLNQgNtoVP3DraAVguXSFXxLTVSfDANLHXMWLib7u+o8o4fTK5+X1ALMVcoS7SvSJyNpaY4ndAj6P45jCGhqFy4Szekvf8A1AWDcdD\\/AOR1D1cRFcHcEtwXgMXYjlpVlttiIeCq5emIPkMhd92NwFWtZhzZRRe3dhkB715ePiWoJhxuDYgsicIHbPMzKogAwUNhyRGqsB2dmVnXaUx3jRtAOSCCEJeMBgKt7l4aepLncINtVGC2wW0DD0gUc1MtAHHiGcK\\/yVKw7LV7xUCh2OzFov8A0TkkqsYwj8kSDEyBCIx36cl2GYWVA7lbrussd9DQdegTV1xHxvH3NeTnlZsiav0meNYtWn4QllQtAPjYeIoYayF+l6Q010Kgwh3ZaLN3LI3a9ow8RA+\\/ZBKegcCcgQNGS5TveeID\\/ox8Q4bI6Ie7UohSqwMcuHgQ3wQ5Dpjk1byCC66Kx3h1vnvmz7mYw98IvF4ly68xbMRMRjX4RlczJXYlLudg28zEkCHRTtPACFaIbaQr1wCGpWwTJJzDaSaZGsWoTYgBUZI1Zt7sF6LmHpvxgq\\/lsQ7XaC0buIollJWKxaz23iyhkHYV\\/MMbtt9x+iE9hp3UHv2ipZRob5GbFK3yysEIsLsAFU+YpmxpeM1Fp1JiDLqAyMFDIvbvEGihqzW\\/2dlpPMBCG9I\\/mD5QJQWRfDY0TAmAYB4Wr3jXvNpWg0wgIYNtr2OGKaozYHAFmIfjeZtV8Q25XBhhWTpLiW9oQInFZnjWI1KYjdgJKp0\\/uVZYrPMoSqblnUnD8Nd6qVeIa7QxHYqDtOgjgGOU2VbXWvTYZdjLLlzZXiCCu7LYuOgcbpTRso725fMLawZ2J9XNmXlk\\/ZJmme8rx+4DGpRFolqeRk7TYkTqYCm5+iN0HIOQnAIPb+SypL2Mp5hGVumu3DLHqEKFuu9iyGwIFKiDIbd3WBUooEwtrDHjeEgI7glN7tB7QfxDIUKvfXhsRxtBO0OnHow6EA4iEGWZuBm6BdghvUqKnuQsfQ1MjpEERN3WAPzSeUPqWzE4gXGMsPs\\/6jF4gdZfSba1LLYkO7zPfJWDtM8sV3Rw28EvpNOCcVmDY3hOj+nhDNueQ+qKtAGJ1Mn3AGUwSi0Di8QWFsh5G7X6G\\/MKW6UBb08H2xe5uAVKC+D2jyp3QqA5zeNywXSnLB1PeEt\\/wKYOyCqWINZ1MC9B7Nk5YDh5NzsxRrP3Hke5AD1WAlFcLFK3isdiUnTRudVgEzXYmIm8OxtKwaimgUdJRvSx6PhZAL6iE\\/2Icq74J81EU3O2APhUeCrcH9hP1lIF7Z6VmeSXLlx1\\/wDBN0ju6X0jE8QZlwLHboVyLRqpkK4YWJU2e2kkKC3ReEhJjPBP48zx2w6JkhoCMLRbYF4FcRjs2KXijYe0EjFyWiG1v2RausiPi3BKS2uBpHe+DxDzbilHJ+4WZ6yro94FsQ2OUvDSA2UTbupEb4rXVNNcub1tFjxVS2rFYiQmW55gG+hKlOGJbS81\\/UR0aIAdpXuM6e0G5UqNHKGMpwxvZsspOoOzLgbRhGjfeo3bF8l28pTo3uQqzR8P3ExD9Vj6ZRsId7Pu4MWewUJ8cx+iIYTmEQ+Y8OoCdt39QCcjsL1BFNuBXdi3QNexv7hW2H90P0TreU5\\/5JFOPmGORu20wVt3j6Ri1tXjkr2lgcA1TIw87Qa2upT3grFbUobPKWipiLjK\\/WhUCGHbL+Vjh4ZyzoPrxzvhsi0Bc2YgZ6592tEQwBoWRDEkGTenolW8UQxOuUarfEOazRZOSxMwJbG8VtCAZSIsq5cdfMVhbtAZw\\/I6MAaB9DL7lXCPP2WEu4KzC3yp9IC3fZJ\\/UOBx0grq853f7gZWq3Mj\\/k+\\/B3IjF2hT5DFrbY9ISiWAYis95mr9EQbJfAAPkmVfB1ivu8TJXh26xaOoAbejYrrHoote4zzlrEMlJfDms7hDUJWLHCNf9iPuaB7t7x082rz0gZTGSr5iBFJoZrTYgiB3+YIgmzt6FIN6BCozFXMqj2veNKF0ERFV4GW4Q4ByJG8Aq6lzQlJESjfadyDyMTqJXrPOB2jhxMm8OVbwP7hdRute8EmGvf8AuLlgqNBL7kIsJeDZ+ZlRwYMj5YaDHNV48ogQvF2Ku+ESNEATDcsJmGDZ1W5mZpaFVYH5Io03a+oN8rLAXJm9oGJhDasUn0kUg88MdJWqgs7t7vQ5iLjFqXVx2PaWBWC1LBA2nJVoVt22HpOnLZcZmMmL3Yb9hK5SoTfQ55unIW6nw7\\/uVX03NaZVZ1UQN4dvd6QPIlK4LLikHEdQgBNlrF1kCHaJmivzG4gZdUC0ctSuw7XMWLXvVTn8SxVLDHZjN7IR5EajA23dcS1i1L2tGDihsWidesbZ5GOnaKyjmtvmK1g8j37wsUFq+uDaALOTOeYLq0UMWqj3mZCjTuly3ACy6ZZ\\/TSZ8Bvhwxy2kAKSisizPMRQvxGDY2K6pb\\/GI20KHVhKDgx5RTFN5KwPTrMS6tKdNn7iyLrzYfFGnFsd1QF+kygRnUPR4CBcQbDyHuHiGASCiNDYkuMy4\\/Kv6hEuE25snaaQGhdyPUiryXAJsTBgqAKmQi7sPFzZAWIb+IZ87O9xiWlW17zFRVJurpX9QPBBI9GAeCV8gs6IlUwOPlBkzWYFTdr7AxHqbMIzuu0MBAApprxLPUcLHtmMuwWxcZ4xcSAa7WNnxAnOuSXrtVTbm9wR6NmOZWXS0q3naXGwFFqDMl71CIAsRSkV8XL0GnQx4iBS4ksm+Bs9oHlF\\/EHYWTfcdg+IpZcI5y3Drc24jq6CG6vEuJNlNyh4xBtTXSzM9xRvGHfIn1MPLxKhylb9mzBLq+SgNcO5WIt4CvQTNMjx8RYhYedmqKRtljvv+oEYljRuTtTtRQhW8kEEPKV3gi\\/GY2SUPBiUew05raYhOZqV2AqHBoqyd+bS3qdxT+mimxO3Owl+kRl5OTrvUlfCDeTEJAFsocMZdseIqtld6nRPFSrNPDEAuw60sOd7gFf7i1UGwy\\/cbzgrlG1mqcXOdaF8J\\/iypOM+0dXKm8Agw8gPLKO0SGxQwo9+kVUzKi7s+OXKFVG1W7Q1MJZyxnq9Iq603nmPc\\/aFVWNoisa6MMNR1EHj6JzSBy60d0HaEOXZLJay7Phs2KhG5Ec09zuC9nIxTA2\\/plkWXSqTNRvCopOYvi73FBVVV9Y8EpvvMplO5OgQVDebzBczzOCPdOxUF0lHEy52h1tAuhkf6ZU7xLsJxTN8QDzAXtMNiF3lvUCWu3Y6QEbDuhUbxkO0uP2WQxrZ3ppH7Mal7dpR7hGEGRnwiLTrKnr\\/3GIoAcLHbBP8ASBWys7mOzGyGVz0jJOCA3bw6s\\/RCUKy47SgCgyVhd1mWBYKS3mwOmydYtrm5ItjbosTZGWgfHcvY3tzBQzgsBZXUc8h3GIcX3IGJ1fc\\/jMIcymkFO75lzlXfaXQVUMuA6EqnOLKYgCIdCAKmYzG2czmDbeFdJjpBIllQZSANy4UFQG7fFxPwABn3CHK3G5H4cxFHTeofKVEtUvkuK3d9mYRSLyMt1sgUHDeFVDOxLGqwjuLadi2VgWji5\\/xjWnNHpVzhqewbERAW8Wrq5u7bRDzE3FAb0O5KgiVFrfG\\/mX2MVgIAMxiiKOwPqi1YyYxoB4YoLrephfsizuRFFpc8gRs945KbR2EsfmmIHDBSOmMiBYoHLbuho4sPyx3PcxEMR3lO8JKtjV3cwMKbm32lQBEjbI4HMeRXlmLFK4O0lxgSyyKkKuhODMN5ZyTvEIIzMzKioIuKcnRyS0yW9n+oZ7ld58pdZbbBPAWGr0QBPuTmvVO32H9wsK7eiifKUHcHD6am3FJYIifJgIqjKd9LsSF\\/ryTlfDtDNhuIVorpTFeYNpV5u7ELYFWCg6qsSDmZmdy7m6Y5BGibYI9oh0KOZANTsJl9KVNghRtnCMptG1h9Gtg4d7hkgF38Nt7ciM9CU5dKMIkQqjgt242Q\\/wDlMPzX\\/DWw+rcB1WKxFQMdoVW8veHVFCQQHeVaLLDmExfGCeKV4\\/y52GgBvZ+Z1D7m3Z+YqwyyUgICUlNSyUmEQUDyL\\/cewKIgZF+7aJqu6d5ystMXKywxgo95TDBhMMymQZP+RVeqaV9FnZELdTZwuXAojVnptHiCrKaiT2nrO6lp4lClJhrrTsry1QvZlTSqV2C0TuuHHrGhueeq5JY8ELYnOwlkNZsuFawTBYW5GIKJk15m1Qdx2gRA0LagiaDDCVdHQsY1N4OkUGCV3uJesXMxvfpBHmX3l95ctlyyWS5ZotFje3PjmEkfBkp2AYJe3dOHxGbqbHjtCF0BuxjYytQDboKPJxyB70+NjBHvhKoBFCxSZlB6QHxDblSh+bSKi+YWl1AoMJpy32jdtF5cgFPHJ6zaCEFgee5wISsO0A4XKiZEQDHOMBp21LYZnSzTYsmiYl7XUwV1Sx9neC6Dc8s36ZceuiNDMvN9C+kphcpgU520YmJiYmNLNCYjC7CU6wWAxQvXOWVN4GxD9wCtlwN+F7EeUxC6ZSM\\/cQ1QmHW447ocOXi4u5RY+JTeAGlOWF2uKoZaHmu8tJzBFbw6bN+73ThUNW4G4xaWzkv51hiz8hlrNyEEVcah\\/cQUTaPQlYiWPOV3vlBbWxBx1zuBTqugMtOHXW2gaEDWxquCzed6d6HUgQKWloagubI+IU\\/uVLs4e83DiDADn+Mv152CDFCluOLvTey2esXXarA3NsJSEy41i+2Np++ZTn+ZafOgDaIIjTwxGGg0bARPH3S6DAYJ1XsgVQ2Dc8kYxxTR9Swg8MXUVlxvymMdYLVK1WKh5w7zIr6QuLwzMIrk37k95fee8uWS4QonlvPKece6W6wfLF9ZfrF9YdWHPBom5mGcKnNqZSCgi2MvWOijvjrL1yZubqqPuCWgLpKriiviBEsqxiMkVscnfbHEe8MZo2fM+jFmLEMReTgR95CZnsAO9RxVfsfeG+qUxsw7kubz9k\\/fANvYZknaZKi5YWkNKlSiV1YTswm7D5h0E7JDtRcpCoV1cNpYW7wV3nel4qdydNhRvL9WH+nUY\\/pZYpwLv5goHcuCUoWAUXwMxDTMAEDi63zLg5BkBd95UC3O5pX+2YhBt0Sw8xfFFHieApDlVgnKlZ7D7xEdIcOLh8y5idIi2eZeqMypCqNEuN2hpe72CMdn4mwM1tNxZnwzvLBxDpztQkPoIJsIcyTxTGKpy+J5gSoFHVxOtVxYtJ2zFJHEoMt45hd0lw1KVvGRr4EwWd6jswqqOTCQRNhsFHztGy5MjzvmFyudsdS5YBaz0QK+IMOkI2x9qWQHCzilcbPsBqVjoXMibbuAntHnyjhcN+jwxFRoTCXCZLeXP1BGr9V9Zam9j4ldoBpluxUSZMzKi2i1fcZWKwteA5Zv83BG5e8u+0hTtYK391RJlX2gFWvaL\\/4TyIbgo1Cqla35ISwLQVW8eK\\/CHbK9WWVd3dlyHUCHMkxg14riPskKwUgdsXzOJpS1Ue7mZmBIbrNX7y7Fgi9hvbO8ZdBpz3i7\\/Zcy8SJxMYGe6WyvEIvoX8ZiA62Zn9BFhjknUP1EOwzAQinbB8yp+yGrdyDm6zMu0SyVe5CG9LoZcCESnpK0L1Tzze8Kebwf7ByhPCofWZR3nVR\\/qC6kICQQAcz+ZgW4+ZcA7N7SgrFNk5g1AKiKh5Ick7UqtiGyqqbWeVQmwIoYWdzzN9AWFuxBsSlTfDle8sa1oG93bP3C\\/CXhMrsQvbr2sJhrrjeYtuy+3T2gQ68E+zHJdoq+RT3YMHeVL3iy8Rqju\\/og9ofkgUS75O3mb2cm8DNPMsfNJcK2+syHaLHI3l3c+YZWm29zF7HPvL+PeedSr\\/uIb\\/aI8PmJQPZPzF9knWZbfNgxgvzBMge0N4Am1EL0Q3P3DZ6wm1Hw3KIdBTvvEucOOuwIPcI89HhlhoiRscSqV5ukpC02UYXZg1J1Uwi7PmEAKqtgu3hBCrR0Vdrghf3kngY\\/iEoquVfP\\/ZbIlJhO8OXiLR8wPgix4isuFt9oiU4uNHFwxubf+iZh2HQ5mdDGd9+ZRdm8a208REjLi4h8UvQxbeWwCiKkO5EXtQN5C8jKfkVcQZLpEMOdVqcxeI52hyIjFoL4Ys5flcJZ\\/wBzA1Gj9gQ5dvaWOXxEZUt8g9E5JR2Xg8XxGhUDpHnW14gjmU53iestePeFatMO5s29p3QXa6w7HTCBoKSO1FLt3m9ODi2OLdIigdHnsB7xCr6yite9EDGY49Djy6z7ZteYFr2l7jPGC\\/lj+koI7MBIyYPiUvcDt3e0oZM8zaKwdB7TOtyspPhiGkvCsjk9pvCy4HUFuyMfWyICKqVPgreC8y3aDRmfKBHtA9InaeUaZuecKAdfudJvrFpDh\\/mR5IkPpkLyQtuEcQW8kvgVC+ktXws7Jo4I6LIbfLtQb0YzmK9o3I5FuKGYCSq0BsUgUWKpJsIM28lKZ5Dl9yHBUiVJd73Gyb1Y9R2gaHeGi9pjTL+1R8EzDrDTLoJwwkiwid1arbvzLM8hfo0Q7zd5H3L\\/AC1ao6Dw4YaW85sSFa5bWyCq1iswPNU7TErabxZLgdwcu85DeH\\/zOexisP3N8BMbG\\/zFD7VTPTb5IX4PvZUW19GKbUeTKG2PyzAUiYzMrT+5sF6J\\/ccaoDcwfESDR1QbYE2Ax8y3FrdVSP8A3mMLcLt3ydVAscyt4YFu3CSpxagGlB08MjdW8AZ9o9VTQwuXIZKdpVVJ3GkMZWG4x1AjAXUA4NshfroErUNhRWA2jfMLEHylD3f4GVFbXKB2WRYJau7MDHQIuSMpul+0lVfUf6gMtNw4ZYNKIcEnQ4fcB8Wh7a6BsHiWXNiG6avMW7G2cxxl3bm5Uee9whsONmdL4XzKjh0FMAsPDeXHJd3pF0lqukuGrTsQAhW8uIAlBbG0MNMMJXOBsBvAIbveFlovzDDQHeddHiAFli4YZw4zBbgR9911XSCVPbKMf6PETgSpaFWeZmq6twMfMDW62uNm4vjhUQ04MlwNpvEBKC8b8XGhUSlujoBGqL7kq8vLE52EjCTd9os2Nb0H3CIP1WAfEUGNNxbQWJddNjl\\/aYZwuUq4LQhE6CYdDLsGy4U4gowM5bjBAc0PlDSnuAMebiV5N9EtVHmFl25EN8aOn9y6i46VKWKTAjsDJGLhjmB3Sm+kF2ovxNuBv2jEDlnDhYvmL2eUUlBdlrxGRsHN94pTSg7FQ51POPmOPg6XKhaMYzb7to1qnrhuF2PbcMCo9CAfocRotCuGv9g2B22KqKbmeMV8Q0B9gX1DiIE0OaR5Eh2pKbJZ+4KhF5C3xPaY0BVFNIMNUQ41VB3h5Hh0qu\\/ArsSxDXNQbVeSLmktCUVRuHEXfaKqCBxzE7K3woxzVzpMfxcjlBsy0LK6BIsBoQeyssSv092ASPnneyKKdkp81Al2sPc94mtV1bgdibedoUB1Dm6feACkurGybPgggQ6D47w+xNtdHrjrLb9apy94MZ3ArRFqVzjNwWyWqbjXB9SxXuwBsX5SlXisKvmVvb4zDa7tsXfwRUNCxSo\\/UHQIikLTXmD84W\\/jMoLAoMHhJ3MNoN029qQ89ouxDsWQ95aAMlRFqWLAYNlccRw3WF0N\\/uXpbHTcviGWL2RDtdfziAof5vMtaP8AOksFOO7B7NcQ3Gw0rSuiS+Y3BhA+2VdqgltYLFM8pTLI2GJxQsvzLqulq3eDvfawLCtCsRHt+gZpQnlGBRb2GHiHU5+ZZVFe1QLZQHMDsJfUimVnDCveCRcfqRcOPNun+zKEKSrHiWBLu5DxAARVMlb3EImOwPuceIVbC4UIicPeWWpXAp74hbuYY8HxDFCpgXh4uMptPIynI+IqgV4UF\\/uHvsc0sUCX2uXGvb4cfMBPBSS9vdt2gXKrxtHAlZwU4hRGuOIAXRd95bXYOLKiVwAKy3raL7h5A4PglIibrRm75yQuWpwNZ+IPbbfKIVnNcF4ibGxsR39oG5LMGHPWLthaG+ZkHJjL43gLoNbLG\\/zzlm8LPliAowVVpTou3jpARXMFuHCdSMTVFn3L2E0niFtdRBwN3iJIMebIWQ+L55e7FhYBsXR93MjmzfNQe9wuSqhXRXiZHjG6p+2KwtXhO33NgYdF3LJs8y05KDgqDabOAP3RTKPddc+KIvtHQB9lxO1HAZjfMrDZ7PvMaRYbUDUK8WdXYcPuUtAXW4+Gs\\/uPttTbpbCgDAUWGl8TCxeQ8Mf3AlEKS0R2C8PEoMOOh9OZeF23qyAW74tHvAJOVlNvab9HxpYMNDN\\/sqUUWWUcM78wC8DesvdLidCeKVX5hZsNOu1TpsO4n\\/Im+d1Kpcg8hxAaVlzzKNX0jkFr6xFy2VGgYaobzXMwHNuruH4hu1Y1Zc1jaEraOh8RJcKt7DB6OzbdcNrIWFbZhchRzJh\\/Z1ge3KVRl77+IFoZSJx55vMs4SGxpQrsyoHRiR3ROyF0GubgrpMrClFs7CUrpvQqI5LbD+oES3uT\\/UoLw9cJmzRbZ19EE0qeTMHjw2fogbBKz+8x2MaK3e0Zmr1QWAuB4ocfLLwu3LeYLJO2LXPhlJROKO\\/WWRcKF7HQwGGDju8sQAp1tyXsy\\/Y+8Grtd4p46SwFUUPCbidYhJWOG8Qd7F4iBW2f5vOCy+WIwJldhUAKrDlmvH+QaDM7Vgmypk73mybIRbvunmI5LB0N4i2FcO3mAOXUbtgSwru\\/5MouXiWdam9+JUDKxSvCbgDsbMwQoCulZi7AAWjana43cBsXUXcB7iYlCj7Kb17QsFVkpXpvGjLq00cW9yYQ0rDJdV0blGUgmW0dK2ZZ2mgUpy9Z6sMp2B7xfIEeoF1pvnMWgfvtO1tEGtMG264xMFWqMfbLFYPUGPMYs8ZQT26ROtzD+qpgb8gWHPaoOizgCne4I2TYAcd4AXuDNpfsFZjvG9RDPQuGY0UhRMG+CbPpwAXhSBRQXfGXyiNyV2VHHfEERRVVbbbKV1UYUKz0R5lLIPiomJXAyDmotBGeTH1M4v7VBrDu5udZ9t\\/EVgKOrcg8orhav+4YJnVpWIRKz3D+5arV9tMuswcDv8Qo0A4ra5ghDdVmG+ihqyhBMrNWpaf1NtwPLn7gFoPN5PaJhdFb2e8Uvpje\\/iB4S8tGZYEFOOvtCli+W2oK1vcbb74I2KZOasw42mK68Kv9S8haw8bZjl22wef4HrFy1TYUy0iS7A1wvdV4j4SVpuLPFw42GNUNH1AlAmypghPBN717xJFjIm3usomfj\\/jMQEANlJYyB2B2hbIjay7jmAGbx\\/dSgtjuXeYaq7G6fmKU1F2CnOSI0tva1XPfeBoC3sr+lle1uI\\/3CtpLwLzFFZNjSpvoeSzD2yzMgHvvycrkgZeTuxSBS9+qvhDgpA3bJdYSDCW37S2d8F5upW0wFsHM994WACy81i2ALUorKf1EBRJvWPiFDRFxSpAyl5Bw8TBKOGLtggUwpKaK6QzpwYTD4iZYoMnUmJbeWTxUcwuyUMuzUOQpfvC+8q3ehGrsSz5VWDao0WiuhWIqMAWsHiPEy4avneVNCQwiXFVAbyKC432ldBllDBhxFJmw5seEXoi1dAPpLYQig4Xna5etfF\\/4idrvsTJord1\\/sUqg4Y4AUN7T\\/UQ6DoRW0b3naSDP6gvRy63DjTUv2NcLvENgy32IFZI5WX3CZdLsrzPiFxZ9h9zFlNUm94JaWb2pbxiBEtDjl8QsVG7f8EdAvJ0mUZpw4uzwy+NuycW7D6ip2LyuV3XwSmruFwm2GWLu7cWkekHAdC3iFVJbwNsd5SWl+TUwBV7BGlCvdgVheBVLEt+8QJG66V\\/cHcl\\/07lSlYl1YIHfMHEHoLGOYi8ywq\\/aoiKeG\\/3DKLsVTkVBRC58\\/UeCAUBFYF2yE7+aIoU5GKcVDQ9zBeLY4FQLRe7xib4qotpzKIiWqbTo7dY1hENi7ivr7IURzrB4LPu5WzAUpKTJvYvjpUNgqdLLguiu9jMRPQUwd9woNe7G7RdXgKrzFI8t6P6jcoDpl8rC2w0o0nLA3K1C594HAWc5d\\/8AINRzYdr8xHMQMBWfeLRAOMqxWw67iAqw8sqBZniUKtndMSqjiN\\/1KKZWtyTg9ip\\/\\/9oACAECAwE\\/EK6ly4SpWl\\/hvW9L0uXpel+q5ely4otBlMWLN8rJeKl4OA6KRYODl4KGgvLS0tLS3\\/gAAdZWVlZSZS5fSxtGupDMHFS8tLy8vgcxJoolSKahFrFn0EWQqARqYmIoiJWDeoekElSoEqGmNDRqVmBAlRJWipV6Q0xKiIxSJAhpRGS8LTfmbI4m+bJUr8FQNXbUhpWfQ+g1V0uOoHQI4l7XEYRcSmsy4054JX4mmkCLjtONRBzouXplGjKj6KpUSOtatkTOg1mSMUl5lI6Dov8ADtmzRdoaG84hvoNQwRJUCLlDUuDoSBAhAgR8SoxVzmNRK72TKolh7oQ0K0GOcW\\/SLIiPQxhobziE51IegoRKzoEY6VCBHbSHMdiEpMPaZ8SthXn8qoR1DQnOhCHoqXdBNGMNCBrmDkQjljA1vDbEWSewfmISk9AnMdRgx0qPE3xNR0IGm8xZrSavwZvDrHBwlEwzNoYj8xN0GjdE0cxYMGLUEgY2Io8Q5iQJloa6AmEZWLmYp9GojG2Jb0QmEG8xVTLD8pN+p36FKXHVSRLlaG6bNFSoS4lytKMT5n6lhcMbkdVj7wqYlkcx2VFiun5SbGo4wjfpUuZEIvQI7TdL0XRdCMZTLRMIf0m3MTAhZLNfEC0x\\/GJlOsckaFjzfXSowfwk3aw5l6VmEUeZkTJoVQiYhzKgTnRhiKRQd2AHERK3hLKeTKKU29pctNv5mW3+Vx7kQg8TmWSwI+TFWSGbEpH13qGZdp51rMCMtpSZ4UJIxQBl2lBZtozwHSgZjgOWCv2hCbbbyvWIdO\\/+TYS3dcwptuQpY4JYhVFTKCrzAtbsw3+obs6ShqUjABUJGe4hKlR1NhHYlWCLRYxMysyswYyNxjvAR3BwXbBKUsGTBBoZV8dv+6rhMVwQfr9y9tbp379jTRfa7cd4h5NpuZF\\/EreSy4B3Q2foV52g8YztEt+ZUwwxEDFjMQxG8eCdZLmIJtGsoYCDHDmVaLtIJeY0j6Ca5mZklW7MTMK32b+5dnjptXatMauATL3kvqULqOabwB1wdxtC1Tb4lJRRnaMXfs6QlbDk5\\/71ZdFmMZ\\/uBWDv89WNS+WYwlx3SM1S5e4suo7IuZazLM02CWMcWhYZYwl5gLMeS5aEIiQ5WKtG02EslbxEMjTKtO5HGLYe+isYJdVxD0welQTcATd2VBVOrL\\/P3KPLPeIYCjiCpOdMZU4MdI75fDOFCCGgARgBiCOWPEcami3l5jvL3G3LM+JZUWMMDLwYwThnrzLmdmcDeEbJxdZQHaW2Qnbu\\/naHUMuJmpjv\\/kBo5bspUNiANjnxHrlH\\/UPdwFdyXmH6QviA1KQS+jeDh1JeLZAsyMd0LCKLGijSZZSAbnG21XUfQI0xBtuRrDaEhI6CMrG9T39VMK3cRQa\\/nSFnlshDkiy+5Lf8\\/wCRyHlAoDJotbmCGiOgy9FaLGixZcyto261BzoKpW9CR\\/ACKuSCcNzelOIgl94neQiz4cw7EGnfsxFZj6iM00TGziLMYqJ577xAR\\/CESYNFk0xwhNF4YxhUxWEOYMaGGZJUdWNul6V66goOrCbsNQVENnC5bLiPc4i2czcYt7zHcU03xMRAKgzDiLvRUrRUqVKgSpU3TYaduvfDnQKJ3J3IjrPOW6y\\/WL6x60J07zyTy+oUmyrr+e8aXtjvMYdS5tBlwFW3DFG0RoZUlRRVwA4dH86ywW3D57E3MJUSiWNR6HeJqOeYiWE7TOwztS\\/SWlpaUyomjZBKDS4jTPKzBy0vLS0tLS0a5isufRWtRkO9Sygx2gMRW9pgVi\\/4\\/Uwh\\/uexmBiUARi9vWARBiWV8yspK6l2p2tR7MehCOSYyjodGkMvMFodRWpVj8OTMHMdAN42oc1DK2XHehxET0qNhlQDaJKZTMzMzMzMzMy2Wx4ii0PEUGXmNMVep7WWN\\/gcM8QLisuLHvKJRL6ROsNiMOkdCs0xMTExAJSUTExrV6UU0dsuXodDg\\/C5YhtFCXTB00HXGhuK1dYM6Muwl6XqGlag0bNFFovCYJmI6XDH4VRDOV1E6LMS4rLXmLFVBmJvZlHR9AuDLl6l64iptiXGjpcWGjKi4\\/CrYMQFNghCNmGE0r0Um2WU+8Fx0+o\\/WpDQJWhFamyDUECo7ZzH0M2\\/CqIZdKidxvxCYOSiDVZ8RohiAi6ivJN220C8sp6sOkqPChKZfQ\\/IR0Bgy5hoWsGMLQoQMWLmc+k\\/jTKuMycJgmIdWKb2VNOIbS2cAbw0rDE4EaQVsjF52TOBJhXA6SKwYYwqiGC6DiPEI6VmXLlxh\\/EcsGIQhO8BRNi4N3qseINlisPeYIptt9fEEMEulAOi7xK0Rgj67i5imbojEyaLm70MD8KqGjXTKDHd3ho+JU5TJ0lERuy9IY+gbHmddrxALdsBIhuPMpoapLFksL9bCDeLMxIxRcuc+hleTaHSgYGEgarEghGqWYzCtjv2xbEzLxHUssGDdjAol16TJHWWYWwrOrxbA7xNp6dpcDQMzfMiD0FZ9LUNySoKUyoSiPzN4EJvSJupYvb9TMkqTvLgp+YlmWZIFRXBpUDsgTeV26+mtBlxTdBWjPKjLb9Dq2goHO+O0NUNserQiBW0G4qSpSneKtm0sr5ZdspO+dEfKM6EzRYiw0qbDzfxAK7n4GVAzN0eItRis6KlStSozecxCySgbSjpK3OuVmWEx8zDwm25XaB\\/MrR4TRTfFiZLRTLFjoypUqVK1DQRvil6FaG6VjFkp6HluwpNggYjkSlsoI+6UMbxYe5xHT8QgreuITlHTvihCFn5gFu\\/3P5Uz\\/GElNmv1FY8QcS5cuXKSyU0FoM41Jtl7qLLl6VqIhTHHmBZW\\/iXG\\/1CioIMwbWGKmQfeDcB7swUvLwwNGPR\\/wB2mT8IqUIxmNyEGIUVumpxH6mBb6SGOEqd0k9\\/\\/kHHmDiUlJTRWU9IgjGok3zEqHpqg6EbwctL6GLQ0AEcsVyMx4PchvN7zFFmDUoXj\\/koYEoKQ5UL5P8ApCsMOT3Is+i5egugbjcVtBgG8oxExK0VKlEqVLR7fGgYMGVKgFgqwwvmJeIsDAzDUGKvdHFzFVLSur+oKdOMxaV35gxdCm\\/6g5g36MQ1cEiMqF4D8UoTdBbU+8S\\/+Juge0xhAWCMpjYgR5oicziKw8Tam2d47Sz3mrxLENmT+yKGbwCAi8ko+jmrKQkAkoalSO7QalL9VemoncIjcRG1nvOowXIy5uiJuMRGpfoztPxPrEpS+kBWIsCKRh0OMQWRNNsIrlPOH\\/pHH+Bs6TjJHZKlSpUqYGlMQVuXbwURczn\\/AMNStGKwYBnDTFxcwLgks+pYLNAm2UDqiXiPJ\\/8AIYF7TohC5cuXLjCDh0k3kq5X\\/jSMdBitqGmLfaJAVuRvqO03QJtm0Uxt+x\\/LjjsG3rf+QbuZ2j41vR1Hc40YJRFfpv13Lly5cuYly46AVFle0VN45R2TfoOYE2aXPPjz\\/MS07TG\\/ltBsNtEb9TwyyOyCUmmyXKSmpSVKlfiAFRioN2Bpked+oYbQ5lQQhLNN3\\/X7h145p1im4\\/r2ipjvEqVK074stEioqzd+ABUuXLZbLi6LZbLZmKxozE+ZaJKPIlEDE36zQi\\/NPxMjrmCDB4JW3DXfN0GgwPoK9ZSUlJSUlPSEUlZWVlZSVgAaMwfmB0hRPfKPuGG0Gm2EJi8P3MJPETDxBlxUqVoeYi2ghmJnhMk787s7s70734Faqrr+E8J4TwmQRNN7zGLEs6z9PRBm3Q3lh5lxjxEw8QlSMElstzD0jVo9ArzrDUo6QBCbS2W6htKlRctCSKIqJOZERjATi4HouEaZ6RWm5m2bDxKhMFat03tCSHKaKwEYUldKsrqVCAO0rQGtaNh2iVpsPeW7YiwXZMk8TBccTjVslyrvYgyaTxHh4ImdKm5WndHjTbFo3y8tLdZbqy0vLy2W6BGVkEJWUNapKyvG8K6VcyLzcFOY+KlFa4mI0OmyXMA7w24mBFxNvwQ1sK6aboWqaMtKzpIdCkolxWUlZTpKdIPSVtElSpWgFCIHmKisMaSW4G0V3Voqx99CTZLlgO03Ssjgmz4PTgjrXKPOm\\/S5cWLL9LoRppXl5aDgpzJSWuplcrYNUo1TzmXlhTtLlTnWuUFxUTCYA6EPRUI0meJcCSkczy9NDL0qEVKhoXBQE8JbXuxKTdjsvcv6ITDBpbxOcGmE2Lc1suT3hucDQr8BDTcGWQVFN0qCVAlQGVK0VKiSpUqUSj0rUtmZmMuKJ0sl++YHK9orL1mYXNpljZmyUp7Q0A0FGYYBwQu2Y\\/KpQ5hqlxFhhvrWlykpL0JZpei5cvS\\/Q0lQFYxlQLiJ9PibKQY6nchTDvNyFmjKyhu8SFcvzOWOlaVrb8RtMNCMuXDOtQlR0plajL1DSoQHidrUlFMqVqf7pinVncU3RJRmNhDdphh30XKWyGL55joSpWgEqOmJet+lJUvRcxKhzM7hG26BhMxlaKZZMwRZcB+06rPnAHGlsAZNBUuJcQxZoa3L9AYa3qMNNpel6Eb4xJ3ndi+srywkSVlYaAmVlNBETGSdFDtKlSx2YNwjE1zrcvQhF9Fxgx0vRLhQ7MvMRMEcR0LHRZ0alzOiaKYkG95m3jI2FxCXrQ6SF0XLiwUtly8FouZl6LUYVwtiGA0xXiLEW9BzlEpbhzh2yiRpBlzECoRUXWWO0E430US4MuEuXCbl1FgsBYLrCKXGJcKixWWxKhRTvADmWG2lb0XtGDaCoyYjLLLXoK3lYPMtlSptBMEd5tlDKPfVQ0wtlQ64mmeIDLQcvBekpTtaFS0YJRSJAainvCDTMRJTHEU50RGiX6TBklLxO0Q0bm8rpKxAdCTbpRWQxZp\\/\\/9oACAEDAwE\\/EL+nklSof+B4AKlegV+QABqDEyk4l7CkqbZely5cuLKuEHoxiiYlSpUqVK0VorRX5wAeiCIjDRekXGgEDAysoQILL1YSAu0vLS8tLS0tLS0tLQUvE\\/G6spjqrmyXLlwZcuWy\\/TB0XLgwY6Bc6kTERVYgVptj\\/wCBl6FnEdR1fUECJK1vSkuEYb1DYId6Lo\\/krW4xjpxo6Aly46PM2aXCDrcGLMmXDQarXSA3IS9\\/KECDOjHRjOJem8YOl6ZI8Sowhpeq6Rly5v02RAGz0jSW1ctIr01AhPUQuY6MYxnGo1FvS4ZU3zZLlwh6hNiG730X4hu7MMyzcxEFeq0v8TGMZxovqbI8xY1IR9Bo2ysO2fuMIGJsrgnV2OlQ\\/n2Sx9B2lYieitTBmbNH0mMGGcfEvR7IxuniMXCVEyY4qX+d4i0bIRMakiSyWmqKgzNmiwdAy5c3dDAlSeIfJGYNgsPnKw3MRSxYnMgp\\/OXS6DRtWl6LfCXLhVcWb5s1PTdDnxDTXSorEz\\/hzLFK3FLTtKgmUG6bvzb0csECyJK1o5QLJgsqVMVRJum313MFEuzOMmfunsEraN5g7w2MdF7zIGC4GKlfl3NBguCO0uFhlgJhA4izJGPM2RYPouQAYiYJdBEs3lcf3BoNusMx5frxA2pf8b9CPYO8zFd5s0naiOQRRjLd41X4bjiqWG0vEHGpBcGoizBMErY30gQN2AS6q5M396VhEiyzaGeyAbuxEjsNY\\/z\\/AGJwyxCkP6d4Qu\\/ecqU57bReyUd\\/+\\/zaFVsHEeY4WoqWcXriYZ6SwjlynDLCoLpfo3SNcOViO5ZWRsRYlwlQcYjxKJjiaE3vMqUJseOXlhNtX5\\/5KNp3vfk3eyIBG0Wyq3WcIc\\/r\\/sI9uIxbxxB7Adzi4LNTw\\/xiUXI+oo3tmNtoxoMm+f57EaI4OPO3mowNFF6W77SpgbDmG0EguGNYYFuRmKGZbvKsKIHFy4XHiXSymWkvGiwjWUOsRUoO8Gy2dPqQwDpKzbegfbt5IzOurc7h5ibYIiwEwDo+2OQcRj3MnvDGw8N\\/zxG\\/i\\/8AktszxW3WWyrFw8sXR+okFhw5\\/wAerAsCuT+5YdZlbDibLDVMC94kJdMrRLhqbIhiPUaotmGiOtdN4mCcSoaEGAMoj3ME9zC2qjVe6YheT\\/ZeswWi4tjuzfc3LwSgVBJRV1BzV7OlxRlcgr+XGAO3zj4Ir42oOgvWp8f\\/AGOEyV2Hd\\/W0bQhvM81nz5l+WVZzv\\/nWYbNzhBUYxYPFMLmAIssriGOdRpFI1QspgWxKIITQMkwCXjSJWijfoQxW9BLmWOnEDBgcQhwRrEePuiu5kVGhRa3C78+0F2Kqfz+olDPZ8On+xNk5b\\/z+MoMRb8+I8l3r1K5YAAe6+YpbhNnsYT5jRfWDLAsjzvqQCMM9AMDA0hSXJWQBoNTbBoFsCyYZaoqV5d4SEqJElQNCRCEaBsMGh3jIt4xvvFaa3iE2jZLcbs3Rwy2Cnn\\/IRZ49ng6s3mHoaqZFW6euP76RLhj9\\/wDuZVkW1j3yyqJivmBifviXKlRgV6QBo2iuDW3QjpVdSaTqz0XaoRI2SQPYmGZUUrmbvnzKQLO\\/D1v+pUyOdyuYJs\\/pmCG\\/8P5mCldfWPC7uYjbkT4jvNx3jklj2zodU6Vm0VBQ0NXo2\\/W5cwJKlSpUDUrUbI40JclrHrK8toKvUD0xz2j3DB7PPv1nVDjMWXh+\\/qXHkDjonQlFZFt2OP8AYI2F\\/wCQbkr9JxEtQ2lnDVrTX8L+yIINBzCO2uvPGB6SnSV6SsNIq2SmZhcreIACL8f8gjEzejAfD\\/cOhLr\\/AGJZioiWMiHYZXx\\/kMaoU25z1e8HKeLuHGZdBsfzeUlKA\\/nzLFXRioouN8xmIespKSkslkuXLly4656KGE4JxE\\/g\\/iWoJDj8Dq6uP\\/YYvrMkz2FmeLl8DfgOry+AggNh7X98TobRBj\\/6RQphvEhNlP7laLQVV++jU1FwsmnOi+aE15huCtNjouM2SyXLl+i5c3+IpbUI9+02AZvFdGNAb1GG4PCIxusbxLcv3jFqWhyZ+JRoTqU0VlZWVnSgh0b9KTiGIsypelkUgXglCj8AzCyoDHlDHdpepaedA4a3QBHJGEuehlSpUtotAlpaWlfoG7QZvtEZvqVDUs1Z\\/DsRiD43TdCW8SnmVGAGf0lwuMnjnUKftLmdAy9Q0T0xb4Zm2VjBnQdEnaBR+AWxQWSLSo6brmZlQWjs\\/qN039cygMgxrzKC9f0laVDRl63mbNDpizfBqFjRNCxTKJOT8OBGC3gZgXkU3KykZtBS0zABbLlNvnJ\\/ZMGdsWvmVGMY6lxgc6+6KiLFCziMBUEGsK\\/AGgYmxu1CSu1QwCNQ7XpB8LDNvvG+gER6fEVyHtNwXMyNQm5AkOZ48laWEghz0qiO8MtUZ1SQJxKlSoECH4To5CK0eY5fiCGgIkIqwrUA+YlRilXztMYvzvpVFRYLQKm8AwRK9GabtPMNpeJWgkk\\/E2Iy1GEc8x\\/MQLB3jv4aaalcmIFGJbfQXEqKkSL7MQy+X4ElGmJpHMLGgOPQIb\\/iNUBBRP3f1LjDUCMXTEs2i6ijN+lSn9jCqY6p\\/CyzRFcGIkDW4M3SzeV6xUtLSnUNFi1Li+Yi44iBmZZuIkwIrTGbIGZbVWa2v46d2V2hUeb\\/ABbYYY5slRnGlSoGlGGDEMxBlQB4iOJcWFsMwwCk\\/VBVpgHbRw4Yqim70QtTj47y+hyWTEn4iog3pxQdKgampSIOIBiUWwekuXHMSDTADMBUSgOhPoS07Y1EhvFgm3Xe+K+ZnuBQ8dzv+PZBBGw129SyXLlxY6FgupALEFDEsAnCAY6XCcrm0ju8cRzN0rFTEtv203y0M6mJqqCK3PwLou5sjzo7aUaLS8v6CSMzKLhAY0qByzHgghTtBSk3ltGSyEZYnTOnGXoYbgA3S+P+RmjU7jxXkzDQH83mK8xMypUqVKlMYvLDDi4BcdpdS5RZWVKlelApeZbsQ6X3KEzzcOlYgws2hIjgGGAIsO0NmNVBRw6DaEIzNAA6EYd87xl2FnbCYuexFz6BaX0X0rjhFCM4IMVM2S31ul3dGkrARLLImJvRDgEP0iYiYdFk1C5ePMsJctsdyXj0\\/jHQJn\\/MR29dGlJXKDuS0VyS5AZTouXLlstlsoEr0XLixHSeJ3TNZzHaOY6VAwICDd0NSrZQslQirlJElSvUwuKiMVaTSqVK03lSoAUk5FwSC2yMXGFyoxtFmBYNwKm586XOgmY6Fxm6bsP+zOD1\\/qVWMODMGvSNtVI2EsI3hCkSU+q5fpA2WA8oFvTDqgTqTrJR1gAI5wTdJveZa5nmBBbkpPfMdMGM3ReIHxKVm5EsiXvGVaXLly5dBUVQsR0RWwJWPUS\\/RWlSpXpJUYW8QGAw5lIdCPMeIzfKh6Iw2xuIqsjnJKr1NalaDpTJpCVuI4lzEomPXcv8JCMMbuEcT10G82RZu0Jnv+jBWv8A4ljEtdw1pzorUEFTmJHi\\/DDX4c61KlSpWlaVLiizbLdIMI8mnmKM3aVHDnxOFK0SmnQaYlda6d8suAzFLDlg1LS0tLS0pi+kLly5cuXpcGXOMZaR\\/E0O8UdpujGbruf\\/ABAqcQmRvEslLSLFlzZBZqid4GBKV6g3hqVKlSpUqVK0qbtCLMK0G5FHfTsm+MZehxZLW4TmUkiJhl6bI8SzSy4CAlYnhHtl+k8YvpBMtL6Vk7s78NAetHqaBBfWOjcNNrRmD2uKMcdpujGYENjAzLzElb0Oq7IWsQm3R1xF04J2odDRdPOvodyC6y\\/WX6xfWFeZXrE9ZXrKdYDrK9Z04S5uIaDK9otTN8dKKiy0XnSpTGhpJfTHTEZUZehmOdnSqVoqVKlSvRfouUldFul+hWp1i+iM6VDUeITmDpQ90qbJtm1og4iRWqvW8ZfpLS8voXC1qMXLly0uECK9LhKN8+hv0FiLEcE3POt8abZsg0b4Yk2Skr1gVKlQGKGXltC8vLQcaaKyZIS0uO96ibtN8eJv03fMdcqbQsMqj3rASIly\\/QLlszKlehsJWty9LjdsuIizeGCpcsy0E3SoMQ2jzCb3ouzkzNsFzNpdBRF\\/GuEqVGH0SpWpcWbS87aCs0YSpcJuhDicTN0yHvHW5Za2lkKR1AqXLS8tLS3owZTRdMRDHQqVoPLBHY+IHHRyV+2eEt3gG2pZNnQ5hAxGGEFPzHQFiwfQHR0vW5cuXL0XFlw1cwiiUlJQVBKV3BhSDslAVUoiGmM5IczJoxhSGYlK8wUK8TMsyQ1fRUtlOjpnWpXpuDMSokaqNRBHA\\/8AxPJ8wqx99CKEuIDHeSbo4y7RVuCwHSHpUZNXQPRcuYldJcvSyXK0SVK0rQYzaFJ3Etk6G\\/MTEsgkuccyS3DS5bhjvCsMytBcdaMPQwdbYa0aXqeoEdwnZYQBo4PRKJSBUww3ZZoslXzCaQpsy2WxWGzMSow9YJWlaJpUqJq+g3lCGNOkXpABtNhUvRaZ0hyxLy8vLQJbQ2iiY0Nxh6LlkrSpWlaV6qgSpUCIMwIN7IS2ZoSpUzLgmoGXUvQOi4MQjFELj0mgwJUqUlJRKSiEIhoVKlSpWgXKORKesoMNcyokCBZGe8zDS2WxYsIUJvg9FzRISpUqVK1UJTpKS3SCy2WwzMSku42QlZ1KnlLuYhxEQnaYgECNSiVpvGMJuhmVurBvW4MNLixYpEIMVOZSHTpS4aLriUuFI25lsPRUHroalJSLqXFjGXN2mqRK0\\/\\/Z\\\" data-filename=\\\"category_4.jpg\\\" style=\\\"margin: 10px; width: 517px;\\\"><p><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(10, '0', 'new page2', 'new_page2', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories,advance_search,special_products\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<p><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><img src=\\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAgAAAQABAAD\\/7QCEUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGccAigAYkZCTUQwMTAwMGFhNzAzMDAwMDBjMGIwMDAwYmYxMDAwMDBkNjEyMDAwMDkxMTQwMDAwMjkxYTAwMDBjYTIyMDAwMDI1MjUwMDAwODIyNzAwMDA5ODI5MDAwMDJhMzgwMDAwAP\\/iAhxJQ0NfUFJPRklMRQABAQAAAgxsY21zAhAAAG1udHJSR0IgWFlaIAfcAAEAGQADACkAOWFjc3BBUFBMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmRlc2MAAAD8AAAAXmNwcnQAAAFcAAAAC3d0cHQAAAFoAAAAFGJrcHQAAAF8AAAAFHJYWVoAAAGQAAAAFGdYWVoAAAGkAAAAFGJYWVoAAAG4AAAAFHJUUkMAAAHMAAAAQGdUUkMAAAHMAAAAQGJUUkMAAAHMAAAAQGRlc2MAAAAAAAAAA2MyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRleHQAAAAARkIAAFhZWiAAAAAAAAD21gABAAAAANMtWFlaIAAAAAAAAAMWAAADMwAAAqRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9jdXJ2AAAAAAAAABoAAADLAckDYwWSCGsL9hA\\/FVEbNCHxKZAyGDuSRgVRd13ta3B6BYmxmnysab9908PpMP\\/\\/\\/9sAQwAJBgcIBwYJCAgICgoJCw4XDw4NDQ4cFBURFyIeIyMhHiAgJSo1LSUnMiggIC4\\/LzI3OTw8PCQtQkZBOkY1Ozw5\\/9sAQwEKCgoODA4bDw8bOSYgJjk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5\\/8IAEQgBLAJYAwAiAAERAQIRAf\\/EABoAAQEAAwEBAAAAAAAAAAAAAAABAgMFBAb\\/xAAZAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX\\/xAAZAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX\\/2gAMAwAAARECEQAAAdtxy9nhWUosACKguNElElhMpS0qgksjRhs1oFAVKAAAUACyoABFEWAVFglElEWEWEWEWAAAHqy15Z1mlqpSoKiLZSAgEokpWWIyY1LENWG2WamcMbYSgAABQALCUAAACVUWCUSURYRYRYRYRYAAbctSa9F0Zy7WGRkmQylsQEqEohSAABWKolqYTMmubFa5sGpshrZwxtigAAUIBZRFVFgAlEBFhFhFhFhJlCLADKXGWZYjfs8uxr0XVnGxiMkFQlRVIEQSGUUBAKlEqyKIoxmYwmyGE2StbZDW2QwZSIoCgAEoiiAiwSiSiSjFYRYQFxtmpkoWrLbDLGmTAbGGNm2+ZHpmgbro3FtIAACLBRQAFACFGLKViyGMzhgzGubIYTZiuKwKIsAIokokyhJSSUYrCKJam1WVZkqqLRGQwuUTDXvxs1KiZY5GzLXE3NdM2GYACBVSgCvRL52eFiyoAAJRSJVTHOLrx24RiFASiKIEiwiwiwkyhJRlM8M9FmQymSqyCgtTFRMcsUatls0rJdlZJiyhgzhhsmJs3+j6Tn2+T0+vwaxsuN3zoPR9T8f0OPo9fD07rm2XrwAAAiglssCY5424Y54xApRFEBFiJRJRioxUbNW\\/VnpLMluUyFUVUVaxWExyxjWkudurLYmNJbZ3861+v2\\/Oef1dHj9D57ePrvb4vbz6+DndPjXOvq+D6TePle16tudfM9Pk\\/VWcHw9Xj7593n\\/RY8+vL9OrfL4uR9fxunPk54fS9OPj9O35\\/h6etyO\\/ss+WL6fHJlLMJnF1zPEIWoLEKgILAQQhd+vZjnerJVuUpbKmSUtixLiTBrQLFg3NW2J9L85lz6fYcD29Lz+v4zV9t8t38276X5\\/6Dn2+U5\\/T8XTj1foPn\\/oOfbjfJ97y656\\/tflPq5rkcTucaz6\\/n9Dk8e\\/yftuXr8P2Gtt8nu+X+p+T+s3z42vraprV0fIl4WuZ+jyYzKb5YzNWrHdgaZnrVlrs1uZbdZ8+Prh456sDRN2EYTKLFLvmUlwmUFCqRlhTNhiZa0sirmBQGWI9W\\/n\\/AF+OnyXu+mvDvfne98TnXZ+h+S+q3jkcz63ly+Tv\\/PfQr814\\/Z4+vDd9X8p9XjpyeR1+Qn1ujfr4+n5f1\\/QuvBzfd8Tz67vtPjOv14bfm\\/u3Pr8F6PtdOsfJenyejv5smFTJBccoatPo89uFVrLfo2JtuDUzYDLFUw17oaJtxms1kuCxCxagqBjZcxVzAAJRFEVNbccJjp5ul52ufu1+bZZu8fq2Y6adXsxufD6ssbLrzS+X3a90fVcjr8nze7gZzL0ePm+vfNZkLnHdjc9J5PZjGvfjd80uJctQ33RTPRnrmmUyumUqbS3MmRcVGLKJjM4slkuMsSossALmLBKJKIsAAAAAJQlFuzVD15+Gp7sfJsNuWGcvu8Ex5dscq68ICLBYGGyGGcoKSZjVNkNWO3CaZY5NZWZGWeGVlAlEWEmUrCWZuMLkNYAABUoiyIogIoiwAAAAAASxZVlz26avpy8hPVjo2omzJNDdgYLAACoMotYYbNZjlhlnpnlhkuVlSgrGGcxFYhjcSQ1ipbkBZRKIoixQIsiKIACKIolAACSlmUs1lYAiSqlDZs89T1XyZJvxxzswm+GnHbrjBhgvox1bFwZSazy15S7MsMqySolEURRrwuuypdYqVKlFgoAAAIpZKIsiKIAAAABLFZTLOiiKIogoqACiZQbM9CzfjrysmO3I889Ml8zfguOWMl23XkZsaVKVBoh04lWCgAoAAKRRCkWCURRFGK0xURkMWUIpVJSiKIsAACgAAABQWDJiTKBMc8SWJcmNXJis1WLm69mUvme\\/PN5ePRwb0btW3fP1+2dzzerhMfk97+w8f1HExjj9bk\\/X758J8v6Mev6HPl\\/VcOHykr6Hk57nenyfY9GXp63jvzvQ5HX+p8udblfWY1yns1ce+iev2HyUs9nh0T2ZZ14celqmvB6tvnrf7\\/B9HjXiw7fzPH0+2\\/Off6fJTfOvl9mv1fLcvR37wfd5+vt5\\/wBH857PJh4vRyHToXy9z5\\/1Obn2Pmu\\/zu1s1+j2eT3TqebyezyN23U53P8Ao\\/ne3CTKdOUUaRcvN6fOen18jLHTqYc1N+xp3b5djq8D3eb1bdGMx06\\/Lz8W+fh+v+Q7u+fyt69x7cPo+F7uHm4Y+j4\\/n+zzL5PtdzofK7\\/I09Xi9v6XzJ9X8r2MXTp9zHbxdXzyXipfX4Of1OblNdPXzssdOlo8Xrs2fRfOdbGuh5dc8\\/q29Xieg5swnq8fX+e7nj5enk9TPZ5uvS+c6vK9nj8\\/P6XKvbqdD57Z4PpfTfKbr38PV3+fb6\\/D9Dwei8vs8mroNTf8\\/wBLm9OCV14xRolUIUIsFBUFsFBUFAsJQoAAACURYJQBFEqFSqsRUoAAAAsq0AIAsolUURlCKP\\/EAC8QAAEEAQMDAgUFAAMBAAAAAAEAAgMEEQUSFBATMyBgITAyNEAVIiMxUAYkNXD\\/2gAIAQAAAQUC\\/Kd7EHrd7LPvzKz7Mz7MygfZgKB9m5WVlZWVlZWVlZWfYmEER6h7GI9QKz7FI9A9GUD81sEjg5paf8Q\\/gEegLHyGxPcpI3ReqAB0y1HArj+v8M\\/gAojqPTjrpw\\/nWqH+fPp+IX6m1otW33CPgP8ADP4BQKIz0HVrXOdHSC4sKdTjK7beTDWZC5WKrJ32qscMFOJs7uDEhEXWWVIwJQwXODEVZrRwQxAPfw41YhEckdMLixKWn1a0vLKYXFiT6bCpY3RO\\/HP4B6Ar+\\/RQjxGn6vGHxanA9VZf+zDahmep7UNc3rtearpnkTIwx2cKb\\/1lqn2dY\\/vWBme9XgdBZisdL8fw\\/tQRCJk8zII\\/1Yk1522GSxiVn5B+cfkUnboE\\/TWgy1yw7BjTWATrVxmwI2rT\\/MtTsurxdh0iqwhky1X7Kt5FflMNSGEYYO28HIlbvi0\\/+R6vVH2nNoECtXML1Z\\/bc+XhYWFj8Yn1hYUcr4XQ3YZejmhwsx9mXT\\/MtV+4Wn+Zat5lD5Vqn2dbyLVPs2\\/SoRiInA0c\\/uT5oozyq65VdcqurMjZLvrPUJvXCwtq2rHz8rKz8gIHK7LnNfFlad3WTLViA6h5lqFd0hMbwKHmWq+ZQ+Vap9nW+tTRiaLsyRqCu57lqMvaqUXdp61CnyWuqbEK7SuF+2ONrPkFHqFlZ9WFj8msNsBAKAAT3tjbNMbdqN\\/ae1wc1akcVNO8i1XzKHyrVPs6\\/wBae9rB0e9sbbM5uz4+FW2B6Jm7oonZb6yj6B\\/g9yeNfqFwI6jcKPdndHtaPgUO7ETeuBSz2rAY58Q5N5EzyvQJBdZu5fJalbB8JFqvxpRT2YWnULhTxNYcxoasogOTXzwr9QuBHULhT5LcyjbtHXKz1KPoH+NlB5QkW5pWAtqx6YfKtU+zb9PXHzcrP+fkoPK7iy0ratvRh2vdqsLTb1COxA36fYmShIV3AstK7bSu2PZQJQeVvC\\/aVtWPZW4oSLcCvgVtWPmH\\/eDyt6yFgLasenKys+wsrctyyFhbUWog+yMrcs9NoWxbVj2RlZ64W1bVj2RlZ9sudtXcXcXeXfUcm\\/pBD3jwSjSwhTyuCVPD2egpEg1mgms1pNUBcI46clclclGchckdW0iRwSuCVwSuCerpMHururvrkJjtzVDWMrOCUamEKRK4JUjO2+Nu9\\/CKbWa4is0nijM1YxMT3bW8oLkoWco2MKOfe5MbvfwiuEVwiuEVLVMbPW1gcu3EuzGV2ol2o0Ghki076z\\/Ur7OWkxastR\\/tDx1YnzST15BNJXkMzfB0a0vk7bwq0ZY4tVuHsTdGH+N1qMRm9HiS22KEODmdGsjQjZjsswYo02GFxh8So+B\\/9SGWSD\\/j75OQrX3Fbz6qcUKdeUx1oHsnqwuZJd8CseGKNz1237qrNqkiEohaWWlB5pJBG2W0yN5uNzJbjjnt+D1zEhV3FzMfHCAZt+GVp31zOLQS54jijhMTiRqP9oeOtYaxWZ2SzPt\\/yt8HSGXtT85yinfKtxCvzCSfpH9EVR7bQrTCrxLDlWa+Ot0ke4SR42AZLvpcGgjGFS8Er3b3tEwiHZDTuFr7it59TIFKtc2MrSxixXsdx93wKz4algwrnHEcjpEZNoif3Lig80rO5EKc3FnryySOq2HK34PXKwvTWysWJkGzhYsKPudKswhLrUL136671ZMtxMFqYTdBcZtjbSjeBTD81N5uMx0NR+eNKm15muc204cR\\/VttgbzGLmMXMYuYzrJE5zw2do2TYxYW2ymbtqr2WxRusQOJnrld6uhcjAmfvkidskmsQzRsFNjY+HGon1YnWLLZI1K3fHxJFxpVHDYjUkNiVQVnxyKN21\\/LYuWxcti5bFNYbJH\\/APGv\\/8QAKBEAAQQABAYCAwEAAAAAAAAAAQACAxEEEhMhECAwMTJRBUAiQVBw\\/9oACAECEQE\\/Af8AUKv+EyLMLT25TxhcBspqJ+2eLG5jSyNCe1qAA7JzWlRsBCETQmsbZUjQHBGJpQYwKSIVYUbMxWRjU6JpGyr6d8kbspRAcFJHlUPipT+Sh8VK8g0oDYUvcI9lmN8IhQTmA90ABspfLlrqnljZmKbGWnupD+KhO1KSO91D4qbyUHZTeQ4aItOdQUT\\/ANJzMy0j7R5BwPCuiTzAkdlrOTnFyBI7LVchIQi6015b2WYuO6PZargi8ngJXBaruUdK1f0dfpDon6lKuiOgfr0qVco5yfuUq4WrV8t\\/StWrVq1atWrVq1avktWrV8ALWmUIkRRUUTXNsrRZ6UsTWtsKBgddrDYaOZ1HZNjaSduGC+MGIGZxoJ\\/xjWGsyljyGlAwOu0YowtKPhkKEZTm5VC0OdutFnpCFnpUM9IxtsClicOyJwA3tTNDXbLC4czvyhTfEMj3D1PhtJN3KMLAtONTNDXbcoeKQkCcbKikaGUStVntSyNLKBWHcG3awuIjicXOKY8Amzww2Lw7BllFp+Lw5OwWIeHmwoHBt2s0ftB8Y\\/fBprus4T3AqFwDt1qs9rVZ7V\\/naL25gbWKnbK5uU7BTOBdssJM2I25SYzCHwap5mOFNTe6LmH9q4\\/amcC7b+T\\/AP\\/EACsRAAICAQIFAgUFAAAAAAAAAAECABEDEiEEEBMxQUBQBRQiMlEgIzBhcP\\/aAAgBAREBPwH\\/AFC69ibJURrHPKDMV165m0iamMUtDfmKTHYgw5CYWNCIxIgyGF2iZPBjvpmpjFyEd5fp3WxASsR7mTvMfaZPumNdplmPsYJQrlkO8DEQ7xO3p3bSIzgjtEG8yjeI9bTJ90xdpl7zH2PLqmooszIvmK1Tqf16gi50hAoEIBnSEKAwCoVBmkAQd50xAtcigM6Y\\/nqV6Cp0vRj2Yeov2m5fKpXtt1NYmscsmRg1CJrbzMeRi1GZnK1UyuyeYvEOTXLPxPTNAR\\/ihU7LMbjIoYTM5XtBkdhYnUflqE1iA3MrFRtFdj5mUvjarl\\/TcVmKlrjcQ4mJiw3mRwi2Y3xAqPtnCcX8x4ow9oMrk1NWSYmLDf8ASVmgwTIjFpoeY0YNvMyk1UyqW7CLhe7PLNhdjamPwfEFtmmJNC6ZmUntP3PxCHPjkwuaDAtTKCRtNDTQ0r6KighSKhwuZiBA3mRNYqPwuYrWqcNgfHvkNmN2ihx4n1\\/iYgQN\\/af\\/xAA4EAABAwIDBQYDBwQDAAAAAAABAAIRAxIQITEiMkFRcRMzYXKBoVBikQQgI0JgkrEwgpCiJHDh\\/9oACAEAAAY\\/Av8AK9IYocIP6CyYULuP3mg6YX8Wn9Any4Uun3pGq\\/EpOn5UGhtlMe\\/xy1okrbd9Fu+6ykLspnOFc0u9cGucXSOSdUBdkiHE6cFvPTqTPy8VnLl2IyGS1ci8SmjgVq5MYySXLbP0W77qaZ9Cowhokrbd9Fu+62SQod8Pv4nAhlNzxzUOupn5l2z9C6VZTfLgJ0wAqvtnwT6dOpLjHA81\\/bg9w1eZOA6twd1H8qn1GExmFa5+1yGa\\/DfPhh2o9cPm4ovqHJZfZ9nzK5vqDwRaUQdRl8OA5ZYE0voVttjAn5cKXRaI+XABm+\\/IK6o4k+KZ5hg7qP5VPzDCo9u9oFLsyg9moQPNPbzCb4Z4MhwDW8Fq1EyIIweOefw65nqOai613J2EESFbwOYR8uFLpgfLhQ9cGeYYO6hU\\/MMHdR\\/KGDB4BSv7cIfUY3qYXf0v3hd\\/S\\/eF39L94UscHC3UH4dcBIWYVgJNPlywo8816YMewSW6hSWEDxCPlwo+uDPMMHdR\\/Kp9Rg6meKtc0qXCG4PPE7ITHHTjg0jfatppC0V1hhZfDmdFmFkIRc8wArxuDJqa\\/kg5pkHBx8Qv7cKPrgzzDB3UKn1GEuMDTEueQGhCMqTdMBTqmOR+49vMfD\\/w6hHgtKZ9FoxvQKazy5RhNF8eC3af0VtSA3kAppmCu+\\/1CBrPujTLCRqFlV\\/1CsqVJb0Cp+YYO6j+UAx8jk5btMeims8u+5+FVMctVu0z6LSmPRbdZ0chko+PM8wwd1H6Ja7kVHZ1foEabWVATzH6Izx0\\/wAP+nutPdae6OWBExC3ws6gWVVpW+EM5nCbwoNdkqDWYCs6zApvGOnut33W77rOmQtPfEG8LfH0W+Pot8fRb4+mMLT3WnutPdae6Bwuuhb4WdVoWVQLfCLeSDea3wobWYVArMJUdsyVddOBctPdbvuoDJWbI6q2MA3mt8LfC3wt8K66f6G7eeARLaJj8uvrKdFITdELaohvM5rP7Mcs3DPRODRAgGPTB\\/TCqGskXMtEajio+zHLtIEYMwHROcM7TLk8vLASSYLs1UOR468EPLjaBJW6UCWmT4KCFA0OYxb0THiXXm0Qt1xN9gHMoVKjHtkxbxVw0InGXMLh+Y8l3GcZ5nlwQIpA5SV3OfAZ5of8fZJDdTkeKbh64AfaWbHZuL5G6eCcwT2dueD0zqqsIvYN5paEAHMuzGTvBU3GIujIo4OWyJVtplFoaesK1zZVh1EjBnVXO0RaQTDLz0Qa2nUe4tugcEyiZud7I\\/0BmU5zi520BvFaOIPzHPou7dHnPJMNroceDijAg8c598H9EIiSVa5rM\\/mV1KjTafBbUXeCZgOic2nStNTIkulOL6W3pIcqgs4W65IeXG\\/ktxqygeq2YCAbozLFvROeY7NpLmDxKbSNJj9SdqIKYHVGwxkSc5TWVN5ojHJxy8Uy4nNsyXFRa+fF5yW1TdBjVzkRDtMtsrZEDD1UNt9VFSnTLR8yikxjZUp6Z1VS5tw5TCtp04bTBdmZlB7KUHM7yY23885mUcHJ0AZrcH1Vxi3+VJgNCL+ZODOqew\\/mEKqDBrVIGvBNhjWW6VA7OE+pLby+63\\/1H+gIWy+3oUfxTnrtLKqRHzLvnfuKPaPLvXAkg5raY4ruiu6KhrHJsA5YRa5BzaLpCv7F0zKL+ydJMqLXY6tW81XNqAFQawhatxAtct1y3XLdct12JIhQ2qQPByA7TIcJXfO\\/cV37v3FC4yeeFpBUmmZXdFd0VAa5Fw4prjwRpvY4tKc0UXbQgo20XZiFc2k6VaAcC0cVq1bzVsVQFt1QUHEjAHkt1y3XLdct1yLQD\\/03\\/8QALBABAAIBAgMHBQEBAQEAAAAAAQARIRAxQVFhIDBAcZGh8FCBscHx0WBw4f\\/aAAgBAAABPyHwDow2\\/wCRH6kPCDL7Dpr6gQ8NejElSpUqV9MIIuXL8NUqVKlSpUqVK+k3CB1PEVKlSpUqVKlSvo5WAwh4ypUqVKlSpUqVK8e61CU6Iy5fd3L8DUqVKlSpUqVKleLdalSpUFhp1ldFZTtBXiKlSpUqVKlfQKlStHIyvTMtly4\\/G1KlSpUr6DUqDwZXk7JjQp46pUSJ4V72oNYdpxyVqqlnLQXRZ3t2Vekuw6ngEieEHZO5SDXlOIaVpsmESViVWYrLYOIM3u9ajgIOQX2t8c6FK2FfdqKw+AY+DHYO7ZRLMkcdrUwlGm4l5fk0YI5\\/zCLl6iglDIwqup0RiX1XS5XWGg8Ax8IdTu3RXAFkTsAdg4QxbLyg6\\/7pxZ+c3HEEkQoKVloOYNFiXAVd0reoJgFo\\/sH+S1dFlcCYdTmtQSCqN+cd56p\\/kSO4m6R23ZWJ\\/bP8mYTaGUrdeUYd3qlBYYIiopNzQ6xJWtF5QU7vVAsj6kpBvsmz4k6EO7dVEx2AYv8AjoEWNVQHyjf2Ax6yywlvfDMX5kC5j76X6BsyfxNnBhVwdIKXm\\/Jpx4AfaojchPkOmnznJPl3HRYsUIPzyiS+NxsQJqZvsT7aGE8mPLDZXGGCst0r6H1YZ2eZy\\/EzXOG4U4xWzyYWO67StalR7+9GDQ7ti7A1BvURN2rRkgHPK8pQl\\/CUUIDjN\\/yaEV5\\/zCxh5j8mm6bWcjiwZcfFWxlPg6fCck+c56JBVLOS4nEIyrNiz3CN2FzrzkNt0MxtZcWUYlsTAhoaTYnYVKiRI6XCFte0p7bHQ7pe2DUyjG57mbR+OO\\/uicybjOiqPu35NBfn\\/wAyq4T3D8mhvyP0htPjOenznMg+Jx0+c5IYVLE3C9oTLYLm1eK\\/WhJa5A+w44YZEoMo7NRIkEdFFpUpERhlcrsp27l6GHuCqFBvvKxDwzSgSRtZPJoJ8XtxHT6v9aZtgA3plD040T3z8mntf00+M56fOck+O56bYJ35R4AuIWMMJHe+Og32P7jNqGzyaBUuDfE5TYeekwRaGRAd1O4QkHYOGhfYSMMJq9yse6GpSHds\\/ebIPmQGg8hCq75YiJDoeXONSbsnSFg2CaOZ8GO29X5NPb\\/pp8Zz0+c5k+e56AzWFnrrvVUWOAdjePWBKQi0GH2ej2OZChK9ly5cuX287K5cvRImr2L7Fx7w2n\\/cejDe+Zf6Ziz4niwgr3B2PtBUEqVs2++4ftB6v63\\/ANl5mttCbMPV1cbPh9p5KxCvTQEtJYzhOfDhM+e5KvwQ0Phehp\\/Ck5BLC6mOOuH\\/ALCle2OB9oDQaAKZig8\\/D3mx++f+zYvKv\\/ZgPsC9tbXL0EXLim+HYHcOjHxQjjBQOJCC7ZipY7PxnPT5zmTalSomo1vsJK0vQw7whoQ7pj44LjBQLuQko7MVKgsXQLUshPL\\/AEjZiGyrfzm13DGHYqVElR0IandMfoQXGBg2yc3HMoZVFV3NSu0kqJKhCGhL7lj9GBswW8E3J1J0sWSu9qJHQh2bly5cuXq\\/RjsAcYnEhvpW0xlZK7i5cdFwYQ7tj9FO4FICHPB5ZGFytV7CYwgw7t+jHeCOMHAyyIYwkBwmYMGJKhBh3LH6MeAGQkLMMUiZcljsjL7axfrNsHCbNKREYvMwYMuX2GUSiUSiUSpUrvKlSpUqVKlEolEolSiUSiUSiVK8RbLaL1qVpcuXL\\/4\\/Gxd9Z5T1nlRhwR5MVdiuujEGi9p\\/OiGxnUn48T+dHZT5GgzcHKUmeRczphxaitIcmIq0Ve2qB2xT4f5KbfD0hNkc2z9TodW5yL27HOcRL1lnQx1nkR5UPRh6MYJq9KTOVVU\\/jT8toBaTmE\\/jS5W+aU21beJ5fSloNyG50kYMEoTkilmnCtMWXU6H48pX4f5LOQ5Df6lumXJV+oJit9dMwVarn8yfzp\\/On86M2acKldtPL2cvrjy94pbuY0aD0JdDhTZszu5lFUBuPXjzxL9oluX6z9+U+zZksOnsEtat4rAMaw3FL1toWEvJ5aezdYIPdS9ZWHMqxcbt3DW4+B01uCRwHGNSzssxNpCsnEbN8dxLlSCHRy1oarxlKAY7lgGloEZLlHeFBEE+A2r3jxl8pj5mCsrInAORC5PyBedc5wZvjLcnO+xUyCBm5wD+vLWbPmjTGBqErRS7Ost4sg4Dw095+tMawTAe8wLaq5uo5DsSUbQ+mbmzM90aexlyrXlB6OGqpR5swHrELg9Mkd7imsbWC5eUXZMhsRSWRGWHnAAxdjFtrnvz89wYAB3B3jFo2JWF59JTG2UOEcXL1tlsLSrI5xb3MbGYPbxsX1lHrLtf7t9PYIIscREKdM1vmU61s2rnE5gbx7N1hd5BgAvhMX0uIGsDUazbgvrVPgdNWIAqxcxO870pfnK+tO6bC+XtDAGS8Srija3nVekiNK5UFD6qbmdxli2I70749pUZkqb8tW9PgrZGs5v7zbyekrFUrBFLst1cBnXeBUvn\\/kvMIXZ1jdvHl7wmnKTTb80HlgCxb3Dik2bnnML8C1RTx85SjjPefrTGjYb6jnGEBMWFGInu2NnG0V\\/dltHlPdGns5XmPPMIDOQqPKFoWXgbP4mUyc8pjyhh6agW0li6dw8Aesy5UKSjpH1MR8m3oivzTuMgGOcvL7b2lz95mYCBQoBFRWUBkPC01o9pSsSuaTaY6+PrOF8fWUQBbiyJlvoMLYrhLEgstvPrMtHGN59YoxbjPH1i2NiuGqU+8wLBLqYEWN7xvWP1A6\\/drsACuE+AT4BPgEaH9GqhUecIAXBAizU5i2ib9ZpMCAB+Om70Gtt3iJF1u\\/GZB+P3ivx\\/cGBBg2gHkOaGaUXCbmKCAKG8cPWbGFkrePWAhBsrde8Xlq8dHSA80\\/tM+d\\/8lrkdy8fiBUScLo\\/EQpC9tAfyK58A0D4BPgEADWt\\/\\/G\\/\\/2gAMAwAAARECEQAAECvkdfz20we\\/iDo1fCENPAPqww89yJGGJJJJAAAD2XTTy4ry3qv6gPIIAFPAPLwxzz0JEHJJJJJAAEDm2oWX2+342nmu+SZf5CNvg108dDEDJJJJNIAI96H1pr7QY\\/0nvikcRPlhJJDkwVTGMDJGGiLJDEpfA62\\/L06Igkv7wTVANw5Pho30NMJjomln27YYc6rhktnKiKVigl+WdJlK\\/wA4Td1xcgJLIueefd87u\\/pZvttWyIa4hxwFQCKvX67plfRf7KI6dtuutMDjLuCQDnN4euLX90dd6\\/tz7FY0GLMIpYq5JsIrDDd4VHWBw\\/OqXTnStzToPt6xFBf2GubUL1NHzZbdOsbLHzyzhq9VtRX0Py2ree+ipJaS3dgZtlTaMVbL7M8lHGCSOtvMQ7+h8Q7RW6KAwoB1dI6fZ4PV6OZp7f08sMOODQs17lGmU1G3jKqJ32AZ6ZSIn332xyao7Lf+89889TUwqorbzzxxj2oz9I5q55In2lHHQyaooLPOMMPiQWpjRmPXQrkpheAtW88TBlm0EEEHByaI44I48T\\/PMIxI8PO30kpS4Fvs4ZFkboY7gAgRywHn3HXxTBDQwzAQz32XzfZWNoW2afZh2nn1mNIMCyEtdTEZBHP9KcTx89IhHmRYoGUPFIl2XLg8LaLmICQo3J9poLbWH83\\/AIIfwLfzQERtRMmyOSvCCCCCS2aCyl4mb\\/8A\\/wAu4J\\/+tUCQz\\/\\/EACkRAAMAAQMDAwMFAQAAAAAAAAABESEQMVEgMEFAobFhcYFQwdHh8PH\\/2gAIAQIRAT8Q7L\\/R4TSl9RdJ2m+mlL6RCek62+zSlL6CE6Lq+9SlL6Jo21nYTYJUaaw+wn6KG3UqhiorVQ23HoXZXaXYYT18k9kSprkUTYKG3uWrQ4bao1REwQoiUMJFpi2XggjSLrFjZOPrhCEJ03Sj1UXV7EExiVOoahy0MgGMb0zRmPMosrIhs5GdCmBFUITRaGUpUQgxPS6t0rcmXCwEJqKZJutW3tAxLqirMXWxvk4YgzueohNEEJ9EMI4Op7dBug5rDcoxXExz1m4BqBvCxDedMBRuG66XpPrZAy233YQVTo2ajRb0vWj6tdT49EiIalIz1QQ1WsIQmj1+hQuloMtlohKiQk6qQH6FC7EQ005QmEUj6WxWVlZWVlZWVlZWVlZWVlZWViYrkrkrkrkrkrkrkrkrkrkrkrkrMlYm5K5K5K50Y0Qq7r3\\/AIGPz8lhCKjP5Gn+zGVGfyYdsg4rhffPuKxzPq9Gni3L99h5k+P9TNxvEbRr3YnOJe70TUmmvf8Ag8ljUTY0JPA0f9DCvyZ9ps9xNXd9XgRvCW5xmEAngSnJXy9kuf8AeRQqOce+4tKnUIkp8iKte7Po\\/IhJPHSoiaOD8CmtClkf3oHLI\\/syzNizLif5DQW7pjLLZp5XmbrFyNWNeFfnIgA+pNA4q0Ld7hcfwJcDk2mNQI+lf3GoEW4ypIjv3\\/JZNcEKVeVysfur+BYrp+W38ZY34UOkrfI\\/rDcFJtceope9Sn\\/\\/xAAqEQEBAQABAwMDAwQDAAAAAAABABEhECAxQEFhMFFxgbHBUJHh8KHR8f\\/aAAgBAREBPxD6J\\/R9t9Xn9Iz0eWei3szpvoMs9GcfUR5MO9dtt656PN651Z4Emz1UiQGHu2230YSdOYlnm5wyTBoHiyo3FDH5JjsF1ZHOybAD5t\\/mTyATe\\/bbfpB1ybIkIXicxykemN0wBA6IakcTJ4ZEfiI4krWbm22222ObLLm23szqHbmJYrymTkhqXPVPi65TGS4T4C8NNkMAzjs3oNtts5J2b0DuEY9HxMDjAuzmsZwvMwll4JXmDx6ctAwYWWWfSLXQGfV3ohMsju3jvyyTqPcPRMNtpZZ3JPZttvQehZ7dejhssbbZe8PRP0hdHHUTtwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsOnFhYWFh0QNbL2vi\\/aHTZ0nEBftN9v9IknFyRFma\\/Qkq6eWjADU9+f8XjLYMVHE4fiRNX9uiTmXwQ+FoZ\\/wCWlHN+lv5s\\/iQnj8F4K0MdV74Psb\\/iEI4Pb2\\/T+ZoksUefxf7cSF+7sJVUZ+5+8EMZihBmAxlFxJtn7fOwWHHThS++wBPPxyffOP8Aqxxzn\\/P3f1YkxvQPx6MXF8n7zeTZse8G6DLupa+TP4lKt9rOAs2PebE4+zLgB\\/HD+eP4Z52nHHgP7Hnj+0FYQ+EMgEdg9\\/UZZ6D\\/xAAqEAEAAgEDAgYCAwEBAQAAAAABABEhEDFBUWEgMHGBofCR0UCx8cFQ4f\\/aAAgBAAABPxAYMIeC5fhfC2R3qDRjtN3\\/AKJCDL8p0Y6cRU14GM2Td\\/KrSv4qg6XL8h0ZUSJKiTqQi5vHQLdFeI8u\\/wCDXmqKDrcuXL0DwOtStElQhFxSyMsuur+S+GtK8vqwGEkkXLhAgaL4KlSvBUrRam+hhhll02XQryjza0rSvAkqV4mCGX6AwdBDRleCtXW9Fl3A1qVHQdB02XXV4jza8mtK8LGXUbdoiigwZcvxVNosXVZdwPIqVqMMuvZdO0p8mta8NeBPAkqVqouoJtE3QHwJcuXLly5cWXL1AuB5RrUryQFl0qlee6VK0fCpVwIQagETmAhDuSm87hO9KdZTrEdZTrC3QH8KpUqVE1GHUMMV5tStK0qVKlStAgQIECVK8DYXoRci0lM9U7ktDKWGleC\\/4NSpUqVK8IMMV5NStGVpUqVEiaVAgQIQgQIEqVoYq5CLyDWoVG7JbvMlQR1rxXL8k8dSpWh1Anl1pWtSokSCoENCBAgQJUCVKjadSR6ZHVY6ywvBjnJvKkUEtS63lnhvxD2WWKljtbmLy7gV5Ny9alRNQSvIrSpUrSpUrStCoaBBAgQJUCVKlSwjunMGnDEjCQ3RhZjJMM7ly+KKgTohZT1L1A\\/LiFOdAF+NK8FKjkjzWa+JVSqzI+cCPn4nfg8h1uXoxIII+XWtSpUrSYQggQIEqVCVK0YYjriGYBUslKlTMolUhZ1I9CIj2gNEBCzZ0H8wq\\/hMsDAwdFRPAcJtCaoMih7pXzNzgOOI8KOn07aHk1pWly4wQRPDXkVqyoYMwgQQIENAgSqjKiaiPO2gBRgol6I6TQIA5xxh78\\/EEUvuf3w\\/PgVY+YFjQnpyD3zmMAKwEpR4DpotXZEEW82MTxxRmR4HeUJPVA3YcjAozEoH8kYMOYoHsEdkGCyFLpb6zehBTpoFTKHB3iCgad1Omg2QLAVSr2DrCFh7Qe\\/M22Trk\\/uXqQzdv6P7iMlUhSOm1QAIQcoYw92Bos9Wz+4q6Ft\\/+nzDxq\\/TEqVoxIkT+AwWQ5hqEIQ0NHR0rMqO+0QLN5VapUF0HoGq\\/I\\/GjljYAOd1n4gC0bbr2WfmpZpS4WjbY6do+tTBQQWwG6aX10HPDfYxwCd3qRyg2GNu6bjQDXizkAPj5ZVZza2os5tonUsbE01fDRbioOQasPWn4gk90vqKKPRjwA2g++U130oQKV8rA+zR79oXAt2BzKgER73T0IiXFALR2A5ZZ77igzrVg9L94Nsxoq6B\\/cCmqdziSEtpI9EaYxUSMMCJpcuXpcuXLly5cvQsGhWghCBDQ0YxQw7xzq6gGJWj6FY9M2fCaJa9pY7EcdvmZJHZS16JiYJKgPBAumMNn\\/NFhpfpABNtIZsHKLqMBylgesZ5Hr092fR2GsxJ9XDRUQEW6APtd+03STuCrzOJGK5OR7JibbAHokJQuh9UxApCBXtt81pXy6bbXnHY\\/uAsR2f1Hc+UOUcP9\\/nQ7wU\\/ulPyRJUqMOoBLrS70C+kXEIhG5el+AbiU6CEGDB0uXG5ROEi34XUQYhMKilKwf8AHoypQ2lh32dvZBvJtABBQLGWRVvDvXJ7frUR9h7JYVHN0gb2a\\/vnAHafUdGq7KfWmguWfgowm9Gewm4Yl6EG+4A\\/OgwT2MTqCz6Z\\/wBn0z\\/s+2f9lVImGbXcxzKiaVHwDcdKGAwCVY0bRXEBnQgos4lSoxNIIS5mFwYCVI6NnyFcIzH6gS3OO0eaI3Epjt7lWiYejNFd9LjZqfL81BE8Y\\/K\\/5o2\\/moUUnWk27x\\/Sy0A\\/Opj7\\/rBsT6zo1GfRdGj2VXwu24+yDN+TAd3AxfSXTT2h\\/wB0JFKby4cehb7Q2mWzuKv239tKMVlcBqv4Y\\/8AsvKQ3sr87McsLoFxKTN0hXvHbJLl+BNSMCBEGYoRWWMqJAhPEHpKYxIPAaXLlsoi8p3Yx9gD1sv+wOi+wysK6UQ2vWuglUWWZpujqufx0gESXBzsT8QUBWjCaYlUH4xnt3SPt+sGxPrOjUd9l0aPhdyoFUfKGpsUtdBF5QmMvlnV+D3gHjVQ89JPDwnD359dxvJtqht4U3tGoz7amsaRFx1QgTCOVKlpLaaMa8BJN3gIuXLCMLzG731s+UJgaPkl\\/ggLauUU\\/JGAqsX8AwexCYiJNzMoAlah6pY995km9dvxWUS0B2psy27949sO2YYdkTgltVTiW\\/VKLDNXsOhNiUjEpXSNkWuyl8LKEOWU2ZB3I6nH9DQ09mIHETZPodw7XCFz1V+WSySrXHpCg\\/EF0tDkRGAAFtSJ0C1e0oe52fgzC92\\/7FL4RuaKujhZ6yn3VL0NYaUkmyO4ECBFNkSVKlSpWg8ASvEuleZUo6aWk2ZTkLitqdIGOzILbMd4SpUqVPqOjUd8eU6ErBjAJFKOkQOCYQdE0FEFIVhpHegIEOdNSpUqVElRPAEvyKlfwrZsKm7t6RcmDHZTA8XFHEMlHW5BHEUIjmlID4wIoLsnjpDQ9vDUCtBcETDStLpFS851AgaSVKlSokqV55Ur+Jc2lTcWyYyJsARykCmw3L4VXkugaGiXoOgcvADQQPiT+EV5la14XQm6k6sJw9A2AR7icNFHEryRl6OgM5i0ENL8QGGP8BUqV\\/ArRhAglaWmzNvUFzTblTiE6GZwkUcSvFcB4SsiihDxXo6F51eGv4DDQaMY67Is5K4bsnQY7SdGCiziJUWtFpCMpmTdHWkoMNalSpUqLFFz\\/ArRNKlea6Gg8FSpUqVKhZNmUPvHbw6HQr9mD2nMI0cjp2S3aWJhoKDDw1Kijl\\/wqlaVK8ivA6BB4aleCpUqVKgpszlp1tATpTjCM2xHaR40R5NCoOgQPjrGXBly\\/wCFUqVK8p0CBK82pUqVoFswW8F3gkoYpxETosRmHGqmhcuXAPE7U7U7U7E7Ep0lJSUSiUSiUSiUSpUqUSkp0lJSU6SnSU6TtTtTtTtSvSdqdqdqdqdqV6QHSASiVKlEolEolEolQJUrSpUqVKlSptAuZ3pZ5l3mWxzEdIgl1CCLS3guX\\/GrzD+TUrS2XGJEla34L5pk3ptXbvC33\\/1Gv1f1EfS\\/qJPr\\/qXCloYtfwaPaQs2uf6n9xgLbtAfMycFvW6\\/DP8AU\\/uUw2pVKqv3oViAavzEwG0kA+lxyVbmR7LMdxu0GvzDKJRTyfnVYOJr6qCbB90ZyhXACtgMjbKHzAzX2e2otAKl8X7z\\/Sfuf6T9z\\/SfuKNkXu\\/euV7DLXi+k+n\\/AOIk+7+oB9f9QT7\\/AOpxIbq70PClWJ2n+7houHbZfzBbVtYH5n+5\\/ccJaBBV4uOIuoRdQRDAtV4+YCS80l+Bgt5aDK+1zP8Aiqot9KuDAkFEb6W5g3V1zoR2P5RkV1WviH79YXzBWFbJeqL6SooQeQLqf6Wf7H9z\\/Y\\/uf7H9wREwoy7a0VKleBAnsMpnKt2CnqIQQBcUo6g2aqrXtKlLmcLFFeDmjvKiqJRBhNL3YGavriF4oZcQFCuUVBzaqhDGEFRKAuatd9PoOsYUWBo7wKtdm93T730qOkMlFPuBn8afQ9tGiGENfiDQxLjW5zu4YDBqFdI13NiENQXYPFr0nF6dWHgYsq9pU6SC+R2lL+2yOim7NxcRpkIUB6kAJc7cXSel7asYkJRvtCEoJ1T67HMo2Js7puqu7GoyC5l3i6qi7uWv0LN6SzUCvtEJwDZxbfAgzLRZMOjaIW3tdS8SiuBWlmOLcW9oiymZSFFa2Svm+mIpWnm+ghvFW22vLefGf7dSXsDaDbR7vS6hvAvlEa42AcksFScqJLdlyf5p8B\\/SfS7RMVVI1hIkCkoJiuK7bOYAJhPGBdd+eIcKBWpuxqfZddMfSf2RBmrYLq0D5Ql6O2B9aiCDGZLzkLfUviYKgHI4R4YjdrHWhzp8LFN4BbizRfvAIGaUtht3eCKdA\\/ZYyd+xENcRDgbmLqPD4FXgv\\/vYBSqvrUAnkUhb2Bmxu8xemtEtJoUwV3G2IX4CB2VGiuxQO+8LfgDZdYbuUr8RvgjsZGCkf6emn2HWV5zFwKBXfHQ94OYxaC\\/FDzGYIUrPeLuG8Yjo2cVYXt7z6Htp0l449ozMKJ4Ao6u9xSthTaKKbh3h0hElqDs7+8ND26mFRRtvNQpnmQhqgF5M1XTEdFjtBajuM3XLZriHcF6Lm7rv09GXOC2QNsgu9YL9daOz\\/VOzgAeuziomC5yJQDOP1AsBWWt3yKoaLwd4IxZiyFiv0rUw6nhmF10uMOwxyjqg6NhcxQUlq9ApgjJQy3BQS4QLW8KN3dtDewLfRO13tLfBAZB7olHur860dtQ3FltnsfMydkVj0XVesUT3LPlb2AhLhBxtc+A\\/pPpdonYCok48LqIqEnQu7RRl2mGp+pUyClD3uOhKgxLxgUT7Lroq9J\\/ZK0uC74BvHe6\\/EXCoo5AyLw5c9MQ+Ew2Qh2Kwwd0jNcaVQBSN3ik271KRQSdwtXxp8DKut0cKYfzAsmY7XA9htMv8X4bCTL2Y+Cs5aePTVsVLHsuH3l+PHTndnmv1P9YFKormmy3DrPXGJQdYqHQDYllOPthL1r320D0gMcZ7sdZClqxe\\/MsOINlVZ7xYCcNrrv8A9MTWcDDb7sLlkOObro9tHm6Ko6PWEF3KsdVMb24eMpu6w3iowW4qb2g5K0MUPnXChVfoQfAeq\\/8AIYItjsdNsnaLhBQeZ6lo5sR6\\/pqqkTSdBPqftPvftPvftEhuCfV6gh0UJvYOk2mlEnoEdIApUNkOGUKAq1MkS3kJAwJmEvVy6EC6sSs+8oebZVtFQlkO1H9RuVu13ms8+p\\/MNTYFYH5jeCENxgJdAMm5lZt6kLpsyPaJyozdVuDs9obFwEFikLwuECqvwBcAqYiCsProXwgHZvAmw36cTHXzMJojMEp600uFGVZdZ1oyhO7CJvInTQh0FBu6Q+wawg9QENKwytKlaX478F\\/+eQ0PIqVKlSvOP\\/NPOqVp\\/9k=\\\" data-filename=\\\"14194443_1070473696339690_314768881_n.jpg\\\" style=\\\"margin: 10px; width: 600px;\\\"><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><p><\\/p><p><img src=\\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAgAAAQABAAD\\/7QCEUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGccAigAYkZCTUQwMTAwMGFhODAzMDAwMGMyMGQwMDAwNTIxYTAwMDA1ZjFkMDAwMGE2MjAwMDAwNjgyOTAwMDBiODNiMDAwMDEzM2UwMDAwNjk0MTAwMDBkODQ0MDAwMGM2NjcwMDAwAP\\/iAhxJQ0NfUFJPRklMRQABAQAAAgxsY21zAhAAAG1udHJSR0IgWFlaIAfcAAEAGQADACkAOWFjc3BBUFBMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmRlc2MAAAD8AAAAXmNwcnQAAAFcAAAAC3d0cHQAAAFoAAAAFGJrcHQAAAF8AAAAFHJYWVoAAAGQAAAAFGdYWVoAAAGkAAAAFGJYWVoAAAG4AAAAFHJUUkMAAAHMAAAAQGdUUkMAAAHMAAAAQGJUUkMAAAHMAAAAQGRlc2MAAAAAAAAAA2MyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRleHQAAAAARkIAAFhZWiAAAAAAAAD21gABAAAAANMtWFlaIAAAAAAAAAMWAAADMwAAAqRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9jdXJ2AAAAAAAAABoAAADLAckDYwWSCGsL9hA\\/FVEbNCHxKZAyGDuSRgVRd13ta3B6BYmxmnysab9908PpMP\\/\\/\\/9sAQwAIBgYHBgUIBwcHCQkICgwVDgwLCwwZEhMPFR4bIB8eGx0dISUwKSEjLSQdHSo5Ki0xMzY2NiAoOz86ND4wNTYz\\/9sAQwEJCQkMCwwYDg4YMyIdIjMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMz\\/8IAEQgBLAJYAwAiAAERAQIRAf\\/EABsAAAIDAQEBAAAAAAAAAAAAAAABAgMGBQQH\\/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF\\/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF\\/9oADAMAAAERAhEAAAHSjZEsZXKSGIGhiJzhVdJxMZBEgAAiSgSaJEXMgmAAFcPRCYqgRtASJhyIxaClKa1uYJwUTZCINMmIySiZJSEptEG0ABGURMxzIuQQsptBMKrYxLIxYRsQypkkAAANkXJTA4o9Eqp0vICARRJRcglIhJkAABgAAMCMonjblpWuTnCKiiUUTAhEiJBoEg2iIyRKDiQBDQ0okyMhhIgWFYTgWFZJibCuZWWqIOKBsJhkAkQRIiDmlE3OMqyCimcpOCYAMAABoYAmESAIIuuVCPTetTrZCMoiY5iIwBMABNETJIGEkRGClFJmhEhTI3RYlKouSkRrtgSdaJDZFSgWEZFSCYAAACaIkiBdXPLSsjlDfHWyyAbC3FB9D6\\/yX00t9TfH7OGsQdbACAQkSrmJVSsmDzyhaJQtqCMohKDQ0El5PZkdM+iuCdHJ3nwA79ubE633YT156bNeT08\\/U1ZKJrlJDcQkJEiEivlPLdHLpLsrZam2gLm6\\/XKqUWkRiCmyoCYAAkpxKg0DTmJ4PdfM9KQA3yJdfV4a\\/PF9CzsxnwNs7vp3yvdYa6I5PJx11qw1F67+OAuNs8xoaz6a5ZU0RhrNKbc83pzvBNCObnb02hh7JbLD6jK7cwBvzJdbtc3ZkTU8HTLyAbYezXYbYcnZ7Hx\\/LTTRGWrtXWmTvNNLjdjPWTCtstxfX5O\\/zT2+LsZ6apQlydyckJgABUBMDLUqsIIbExHPwOrynRiBZem073i9vF1nL6mIvXgAdfMbXF77DXG+KdutPOdW6s8Q6XOtVejzlo+mZD2Lm2y4HTjodfg93zbqu3Jw4dAdWB0+ft8dPHwunzOjjAtNd66rOH0TP9vIb8\\/mA6+I02a0fL15xKzbCB7JVv4S+jTI93hEfQIcyzh9LJIO\\/wAw1WW2\\/L2XzK8Om1ABGJNRZAlYFZEZFjaQBIxPG9Hn6+cnAmNPHNFLe7wheoHQrazf833cu\\/i92b49q\\/Q6vmNd4+k4TwmmYBeuo6Er+Xo+fAdXP6voPzf6FhrXgOpydKAem0dbWULl2yVQeh5hdSJ7lXIKXtqC+YL256+jUV08ndT7c\\/z9MdnViVemtyaNcQC1NZ5OnnOTt5wHbw37rJazg9CRCdNaywIuUiBYEK51ReLTmikgE7yFHtz5iAOzmB6vO+Ue8nnfB+zc+qtsvofUs7czBevndWAHStXn2bfo4a\\/OfPr8htmWV9CW39Dnyb\\/LV6fN28xpc1KsxAtD1nD3HPtbx+tm5pyAO3gIy0uHRmVrrM9cf6ddbS\\/E7E6qaczOOPd5wHQrbnS2Xqw6cJHp8zp5C+jpUvsMFr8XTQA6ObQaHn9TzvTiTkmDkgAEAeeE4xKclMKU7olNkSsVtvmuufgA6cPT9ExW85ehSmZ3qnJCruUPlBdT38hssbOlvqFXz7yZ6dHmBtiaDP7TPTQjhz64PkaLO9eABapOGgpbtdacObeOL2GH6eVAdPJ7dhnNF5\\/pNE63rLKy3wdDx2rigPQ8w2mLtx23nhynnppbUHRymkzey5uvy5ftcXXEsr9xtL4T4vQEAJoAQAEYRsrpTO6q2dsqXW1pGcF8v+neDSvzg31l6czU12Y6gEAAAcszjfqvN1z+dGtlemS6Os6ud\\/lq+hK0YL6AvZWzrnCs5\\/JbDH9GIBpT0bvj6Pl3ZErPmxm78emWPWvtvXzdVrHe6KYlKJEmzJcr6Byt+fKHdstTO+rXezPT52bJ2rkty7s9sdyvofgvli+\\/1+lW9dqKXYFbiAE0AB5lOJK7zo9lcLSsuriYyrlC5wnEoaBNDByFGaIyiRKU6phWV2JA88xYo2TFdd2YtXgeMOrA9\\/i22WnQtnPDWqckOJKYi5O1YyAAaFJqSjJJLK5RMpVuIm6BLCJJ1uYsgmTt87RZWQlcQnnogAQAAeeyhk4TmRknEltLLq1NECSjSUqhW2JGLycLJiM4SVQkiVbgOTotAJA0EPnH0zk3phjZXXrxteSy0mokS0Ibg5i1qV6KNrraqVrKGnaqkgkKURBSjMzQ0FdhCoZNkxoQRSxMdtNlZYFbIAAR5WSIgF0qpQbYmElYVubWgrK4uEbomM83VrjqHlWaaGYUxpzM1zGmll5Ginm2aV8nq0SUaqW9MvM6WsjZVrQXgnavun4fKdiuUIm98SGuWkfi9+Grj5+dMdNea+9Qfgl0Vn3LQQ4SNA89I75nxHdSdZaoLUvXmieyPhmn2Sg63tQ6XQAIDzSgIvrhaRlKtNiRE2eD28rbDiczqZ7R2NIXed7vp5XU4nV5Pc6dfmifac2VNegUeea8b5n9OxHfz8g93s3jinRrPL9T+W\\/SuW3X8HSfJbMej0ZDl02l3M8fTlmPd4Nh28nE53ohau7wmox1Lj6mrM3t+bbhvkuMzt4+pvPmv0bl6bMxqcpTXMMc+ih9LDpnb3bfO4cNVtcX6nPvOjy+nbLwRuOrz\\/F5+jVavLh0fGnUK6XF6VM6bokBRIAeUbIuQK2oLYRtI8zq+TXDhZzvc619H6s3oeD3Pdxe3wuryO5ndjlef06DQ+2uvB8+x51sMh2oczt8\\/wBt3z7175avpYfo1nJfTfmP1A7NN9vHbx\\/Nvqnz3own4PPHfC\\/6JltDy9Pz3o83Q9HPqsB9K8\\/J1fMel7OD28n03J2Z7O8O1xvfenO+gfP9jW2hyusyuHR4NDhp5+psVj+jjtqfVy7eHj9+A1eM7cdv1OV0ern8fo4nU6eG6PnUWnz\\/AF+WLaT0+eHL2xspsmLE1WwAecQNAAIZGQevy+Gap0kW9b8nnT2eN21MHU+ceLSPqh8rlD6kfKw1nzPRrojOmileM2aNmc+rZnb89vSIwmOS1fOtX51Pt+jo5+15+74Off5zsOdp9c8D6O9yr05dfZ7ETnPBsOXMc+zb+vO\\/y\\/ue6rSmxyWo42O2GfUL7ct9N01us8phn4fP13056D3r35xjS6rs8+ELUjzu2+t9TKw4PS81vnsvWwaAA8xFgpApQsJCAk0RjKBIixJsjdWAgFdGZUrYkitFrrkW2UM9EaoDHYRcPSOEokhMim8dIV3QtEANKNqUSi2NZrba0SRExcnCE5SiomTVOLTIrnMCaggIlRlGZpVi1pCdbJAFDABAIYWQmTYEY3BSnWRcvQedqIBeNS8wAAADQScUTcZEyIeiddgAFcnVWZiM7SlRXaPRSrkVXuuJsjIiYDVpGpAxREnWIsdTJCUTGarmLxEBAki4ygBrRQsgTQFAIajMVgDlT6UU3OgvIySq1MZVWASJWz8YAAAAAwABDaB21WErvPcWABVb5oOqM4K2REzIlZsUJEJxhZOUJJm6yEyIBEiWRqtFko1IvBQckJkBWSE6rQIWlE5IAR\\/\\/xAAvEAABAwIEBgICAgIDAQAAAAABAAIDBBEFEBIgExQVITAxMkEiMyNCNEAGJDVD\\/9oACAEAAAEFAtllbwAWVvBfO20tyuvrIbtK7K6ur\\/6AWkIW2fFe8rr2vjnZW8Flp8F9lvA5qvldWuv6\\/wBbKy7K6ur+Cysuyvu0q2fpA7LFWKtn8f8ASvnbxn1nbu\\/K6ur+O++yA7uQOyyuVYq2RQPkvnfO+y3lPrMe\\/ZPv\\/RttCIstSurHI+hs9K61Ludt9ozvnZW87vS+yLL+o\\/2PeVggbq2fpA3y1IKwXbxAIm6Hr\\/UceyA0r2nn\\/WuvasNh\\/FXvnfvpVlbMhA+ABE3yHqWVkMZxlq6wF1oLrYXW2oY1EmYpSvTXNePETkBpTjdN9nufrdNUNgHUl1FdRXUl1JDEWJtXC9A322Vt7vwBxJl+osUddG57pg0iVshBvstvARObfWMSd98M8kDqGvbVD73XzAsnFFem7Lq+dW7VU74p3wmGYTNVt91clALEn2hyZ+zh6mNis61ldXVyUNwCOxqxF+utzsVbZFIYZYZRLH4PSd6QHd572NtxOkE3OV7K4208vDlHcX3WVs8SdefKlbqn+rodzYK28C6O2+kPdrflRU3GIookaGIqvoeA3PCn3hqMRgp3vxsJ2MzldWql1WqTcXqAo8ZYVDNHM0rEK+SKfqVSmYpUNdTzsnjvc9ldVVY2mBxOpJ6jUplfUufUS3o86Sl1jlI06hjKnhML86Z2qF1fEEcRK5+Zc7OhXThDEZVHiMZTXBwyqXa6nLD2EvsVbxet1a\\/h0eeGstFlihAoM8J\\/XVv4lXuhmfBJBOJ48VH\\/AG8sMfZ2T3tiZNKZpcqSHiSV34szp26YssRPfOJ2ij301Q6F7XamyP0R54ey0R9jw\\/Hfiz\\/48mC76VumFehiVaKh2Q7mhZoprG7YXuTaGRy6dIn0UrF6zwp6xdudC61R9LFKi7smt1OpIOHHXOvU5RjVK34p8jY2zSmaXK13TNLaG6DHuQpZiuUlTons2UJLoq46KXL2qdumJfHO67lWz+I34m\\/VV5Ndpc3F9LXYxIpquao2UcBkka3RG6lY+RsDGqwCM0TEaqlCq3MdVZYW1Ysz\\/qZU5tO0\\/jU1HLwElxyoafU4dlI7XJlG\\/hv6iU7EJSnyOkOdFCXvc27eUjDmsaF2CM0QUlRTludALQ4k\\/OFuqYNLW5WKsrAbPSO8BTv4k\\/ggpnSugg4TZZY4WS4xZPxCqenSPduw5miKtbro8mmz4DeKvqOPPlDHxHwxiOOodop\\/ATZQUzpXRsEbZamOFSYg8p08rle+6nBEVa69TlQj+bUu+dsrZAAIneGqqfw6XZZWKEbimUcj1FhthHE2M1tU2lZLK+Z+ViuE8p0L2tyjF307dMBbqZ6OT6rh0OdBT2CxB1os7hXCuvyKbTSvUNA0JoDRV1WjZdWcUWuGcLdUzLBkjtcmWHR9lYrsu6sPFa6DbZYu\\/TS5DuaWhaWclEhSRhNp4wg0AFWVdNx6rKlpjM6OhjahAwHGCGRZUbdU7RaM9mVDdNRkTfOlh4kjBpasQdebK2oxULNPJxhCljCELArAZSP0Rk3OVNSGdMo42rhsCrjepyoheaoeW0+dG0Nh7rTvO0C6AtnjD71GUDdUsYszMK6d8c8M08FSzxQKuquanyw1l3r27Em6a3Y0ajR0\\/DjRU7tc+VK3VOvezSq7tSZ0duA71LWRQiR5kkyw5tmYi\\/8AhyYNT4m6Y\\/Ba2QRQbtrZOJWZYezVMBstkRcSsMU2TXuYebqLElxzw1mmIIlYsP5dmH0+twsGqV2iLPDx3VlpVsgVVN4lPm172IzSuGykZaHEnEzZUgvUD14SMgr7ZonxSKxWGQ28GI0XERBacg0lMpHmMtIVkxpc6kj0Qk5Yq3+HOGPiPp4+EzKpaXU57K4V1Rx6Igu2wiy9qqpix2fco072surhRNMkjBZlcwiourrD4jfxNKsCtBByvldSUzJVyEaFBEE1gYN3pezNQxyrpSGFBR0UbU1oAfRRucaCIJlHHHsxN7W0+dBT2HtXV1a6dRsceQiTaSNp0q2VlbYWgqSga8nDSm4YFHRxxowh7eQiIOHxNUdPHE35J8DJEKCLSKCK3DDRZDxXQerAogjO\\/i9Zf2Q+Lsmo+1dHJzg1tTOaifKli4kjBparK3mfcFqb3RPf+3\\/zcQRqsrhaiu6Bsg5XV\\/ARbYEHLsUWnILVv9L7X9sj7TfRNkUCtauFitT2yaNTqOnDGW8V877NRXdWVvD9ZDeHELsUQRsug5WBWkjO+7+ysnekT3tdfEIL1k92lj3F78qGlLnN7bhmdl\\/Gd31l9+AOK\\/FyItsutXh\\/sgneiU0XX1sstKkoGvd0xqZhrAmMDdt13KbnoJWhaQtI2X2jyjxA9uxRyPgHyVu6b6LkGouWqyP5BWVtgF0fyX0rruVpVgrofLIevu3Yene943W2d8xv+shlddij2QY4jhuXDcuG5OaW5dgpMapY5OvUyGO0y69TLrlPYY3So47AV1qnXWqddapl1unXXKZU+I09ScuI25nYmSt1FWunVtNG9lfTyPmrIoD1GnJDS5S6YWOxSnahitOVTVMc47qWZkLeqUajqYagZVFYylXV4F1eBdXgXVoF1aBdXgXV4F1eBNsUew4zVxmrmWo1bFzrEypZI7wA2VgcvS+8r2GIzPih41QRzdQZzPUtTZHOweLu3GpCzD6CjhgpOGxcNi4bFw2LhsWPMaMP2tcWuppOLEG3U0ZeZHPpkCHCnfqU0ohgJuaRrnTYh\\/lM+fH5eimnkqJFZYaXCW6xKoM1SqCQsnAuFjGy1zHh8jg7DXWkjfE5UJvC+3DCKKKKbfWGnSh4Nat2V19rFf1RzBlKP31GHvqlJAafCofjjn+DB\\/jCvpnPmqI5qSOojhpW1UL39RpdWP8AfDemVhNRST0jmYTWyRx0NTLJFSTzyvaWPw1t4Hd0AGrEG8Wlp6gwugd\\/NisvZYXAqp+urgF5sUBFCqLgl\\/JxERUjYnVM3L0ysoXaZovziPvF9lO2yjdrYp4RNGRY0H6H\\/Hh9jEnQo065e6dHolYSGPb28Wq605XWK\\/qp44jTEsNRV1s1OXSunwiD4Y7\\/AIE1+kwGk6fH\\/wCNUf8Al1VO2HDXcp0ms1dAr+a6ZiTXPwkU4paqrqOV\\/wCQSsbhy9nD\\/wBHxXtGMvbI3RJRS\\/nUS8aeJmuSNogpvZom6p5afiwT074HqmrZKcxSNmZis2qUC5qINNGqJ2qBYv7wywqXwtMXJxcRzGGKK12sJUfcVP8Ak0H6HHS0TMyJROUtxK0\\/j6Yh47gojtiEEk0PKVK5CqE3J1RWh0eDQ\\/HHP8GH\\/FcyZUlEGUbqSB0ekaen0urH+2G12JBtLUVU9U44pWmOFwxCpxivjnasN\\/Rw0AAnfHEY9FSDbLDYbvr3aaJYW28ge1ylhbIK6jEAVBPwoHuL3tOkvrZZIlhT7x2WMewbLU5a3KB+oRxBo0NCkcyFpN3UH6ZP1XRmjXFjAdJDZ08aklYXtl\\/EuLsm+S9lI97UKmsceaqiZqqoZJK57sLh+GMNdJQUFZDPScWNcWNcWNcWNcWNY89rsP2jucO\\/Rk744pHeJNGp1JDoZjDtNKsKbZr5HGYV1SE+V8pAupP44UynkeOTlRFjhj9Myxr3mCWmPEXAOxIWlmfM5UH6Jf03V1dXRKj\\/AGNA0rUVe\\/jsrJ9RVsPN165uuXNYgpJKyobG2zJP5BUYVZ\\/THLpj10t66Y5dMculSLpbl0ty6U+3SnrpT1BhRD4Y+GzJxsJYhLEcNfemoHCa1lW0wqWdMeqODgx1OG6nnDpEMOkKp8ODVV0Ie4Yc+9PFw4+yqqDXJT0T45fqupuYbyMq5GVchMunzLkJV0+VdPlXT5VRwmOJ7NTJKWYO5aoXLVC5aoXKzqGllEgHZ3xQ\\/HwgK2w9husE5Hvk0BE3Ka0Im5yur5OdZAXXyJ7BgyG\\/urFWKsrBdl2z7qysFZAKyt4j6tkNtswr5BX7D16V1Yobmi5PcmzVq36rIdyTdD8QPyORQ77LKysVZaVbwjYMr7zsB3DMK2sk3WnO+dl6z9D4DffMIm6aNno7LrUE8929vBbK+8HcfF9lBeyV2zLVZAXPoZsCJ0+UIbCLgXtkXBFxKDSgLZevNfL0dp2fX1s95BFqDrL3mTZAXARza26LtPmG\\/Uibq10BsO\\/3tui5e87q+w+EDO69Nc0WtYNNwj8j2RP45D27sP8AQGz21NG8+gV9HO6v22O+LfeX1sd2X0Py2f\\/EAC0RAAEEAQMDBAEEAgMAAAAAAAEAAgMREBIhMQQTIBQwQVEiBTJAYUJSYIKh\\/9oACAECEQE\\/AfKvcs\\/8lJoLW5a3LuOQk+0Dftyv0N2Xef8Aa7z\\/ALXfem9R\\/shv5SzFpoJkz3Opb+zJxgRp0dYiReAu4F3AtQKJrlaxkuAWsLqTuBgdOPlSQ6RYx052pGZg+V6hi9QxNeHcYkNuK6cfl7T+UMPNDESoldsogjDt24bwiawwfKlNvKiFvGJ3U2sQ7MJQiefhenenNLeU0kGwnGm3jphtftHnGt2A20Ngu4Au6nOvBG2I+E82UBa4GASDYXdf94jiLls0I9Q34Xqf6T5C\\/lNFmlOaZiIUweLhXgdhhrbXbCDBh7rKAtdsJ4opvOQawwUpjTMRw6hZXp2oRMGHvLio49aHTsUlB2ygFvXUngICz5Ou8ViTjDBt4tdSMiJtR84dzhos46k8DDBTQMv\\/AGnEUuhO6j6x0w5KmNvUIt\\/k47eDm6l2vEstdtBgC7aArD+cAUMSRB6HTtxatWnwgmwvT\\/2hG2qC9OE1oaKRgBNpkQYgfeHkTWGD5yVflatXi\\/c04ATh5uba7flSr2x7Ieg4IkLUrCtWrV4DSeF23\\/WNTVqbjW1A2i4DnNYpVjuN+13GfaEjDsD7PUmozS\\/Sd+ob88Lrp4ZIBp5tFNjc79oXp36b+bqkIJT\\/AIlHIwzqyx+l\\/CmOi1C2za\\/dIp3G6TY2kcofiEbduod246ToxINb+FN0UWnbZdlo2UjNKcdlpKLHKJpDx7PUAmM0v0l+icWKXXRwsgGmrtHhdC8dssP3fNJ3XRtk\\/wC1\\/wDlKPrW1T75tTP1yF32rwMTja055LQEwaGKEfknRB6c0xupSO\\/FBwDaUJQUEJlaHNcndPKBepOYb2Kk22TuEx98rUPtMrUN\\/ZOHGz40qVIDDhYpNhN7p4JbQUUZbyuzIOF2Dy5OjLiu236TYyHWgo5HRm2lP6qZ4ola3rdFuy9LIvSyKLpnteCVQ\\/kndaVpC0hU1bYJ\\/mj3z\\/Nv2Tx4f\\/\\/EACsRAAEEAAUDBAMAAwEAAAAAAAEAAgMREBITITEEIFEiMDJBFEBhBSNSYP\\/aAAgBAREBPwHuv2h\\/6drbdS02rSatJqMPhEVz2jujbmK0mLSYtFidB474ogRZTomgWtvZiG94OlopstmjhMEGOK0XLRciwjlNFmgtI4hhK0yoBteBnKjlzbYTjdCJxWg5aDkWlvODBTVOfT7UY2R2GDG27CY\\/SzBq1WoOB4wYKfg\\/5Jos4SO+lGKapDTcIW73hLu8BGRoWu1NcHcIixSAs1hOd69puww02oCk5waiS4oROK0P6msDcAfVeEvKjbQTjQXJwIvlabfGD5A1buKEDlof1MYGpxoWoRbsJDbu0djdzg9+VaxRlcrUbaCc7KjKVGSRZTzTcS2zhI6yohbsJJcpoLXcjK44MYGhSSZEZnJl5d1MaaoB9o7exeEQ3wkPq7XtzIQ+UBSmO2DPjg91DCAfeDzbsW\\/IYSR50IPOE5+lEKapT6faY\\/KtZHsbJl2WsE6Qlayc7NhH8cHGzgyQtRndhSpUmykcrW\\/iMhuytcousoTEBOkLkfdCPc0WcJHfWI7iqVKsKVfojsa7KtVHEYZgs3tu9mlWGi\\/wtF\\/haL\\/C0n+FpP8AC0n+EQRynPa35Fa0f\\/WGR3hZHHDI7wiKKDXHhD+4ZSqKylZSrWU+Fld4WR32PZg3eF1nwUTXByiHrCc7fdZ1nHlQOAZuszebWYLqvpcqX\\/HiRmaPldP\\/ALA1TuptL4xqBoq06VwPCd6ihTdlPs5N5UklbBGctFo9dPfK6XqdZv8AUArCDgnuGQq0e+Cg8LrBbeVEXF26i+YUw9VrTJCMfhRNORoC0nVS09w1dV9YdOd6TYw1xKec71MfQmymMprhI1Rt9Sc0lwKnG1pvKk2cnuAHCPUMvhdEcxzAUEE5vhZU68pwPeMAmnKbREZ+1UflUzyo5WMFL8hi\\/IYppQ\\/jBhym06cVsmEB1lSyB3C1ozyj1A4amytaFqP8p8gc2kDRRc08oaYR6fprukHsaKCDl+QxfkRqTqGFpAWY\\/sgrOs6zlWVfbeI\\/XdxgAVsFz213Dn9ci1VInGrVdo47G89n\\/8QAPRAAAQIDBQYDBgUDAwUAAAAAAQACESExAxASIEEiMDJRYZETQHEEM1BicoEjQlKhohTB0QUkklNjguHw\\/9oACAEAAAY\\/AvhU\\/KdM3T4VXJNU8pMql8Rll8FPnY5YhUyR+CHz0RdJTzxG9ifLG+HmpXUyxHkInzPW6HwKuSI3pe8wAUrE917n+S9x\\/Je4\\/kvcH\\/kp2T1xlv1BRaQR03vVdN1OZ5L3X7r3X8l7r+S91\\/Je6\\/dTY5cUPXfYoyUgSuFyDQx01Q0itnTLLeWdn99xis3ELCRC013fXeO6S3EjLkojeBv6je2CEeSiojyD+kslMrXtqEHDcxNckNwSdETz3PQ55KZyBvIXjyRKc7mY3zVFReI2muSCLHRLhoAtix7lSawLib2XE3sphh+y\\/EsyPRY2ODv7XeFZwEKlcQ7KJwu6QQtP2yc3nRcQHSC4x2QHifsnHWmTE5UuhpkCkCVKzH3K\\/KPsuL9lUdlMNK22lqi0xF7z1vLt5DNaHmIZI3v65bV3zZw9hmmOCjzbeW3l7qBOedcjGDIL2DIT03Hy6qKc7kMkd31zsZzMbwhdEoWdnwN155CdYKikFS6mTCrN32zeA2g4r4XEche0IXYnGARd2vAULpNvmMp6yyDdddxh\\/SIXgqHg\\/wAls2TR6lbb5chkCgowipC6dowfdbVsyPqnmzm28lR1Dr2oIv10RJqb8Ruc7mb8UF7v91INCi50cmMqCjBSF07RvdHaBysZ972hDPM9t293M7kSUFitXQChY2f3cvekfTJbT3H1OaOqtB0jeCgoA7DaXgIBPPTdRNFALaM+QWw0NU7Q5wndJXxyzMFId1M3T3E1aO6ZqKioouQgEDV5oEX2jonJRYiJXgXOHTIGjidkxG4N5nPJpXJRdVQXh2Z2tTyy8JW0IXtCmnO5m\\/FdyXPfhn6nZIuVFRUVLpp50EhlElZsGpjeEF6q0HzZ4XBvIXhvNTVFRUvc\\/kFE1vxOoqKiIGgvinnpkGq5eRYz9IvCGYnpmjaPAWICDQIC+KAudDXLBRveeu6dkELqxPIJzzqb8SDeZvaEBvZ5bV3WG7cw6G+LXEHooeM\\/uokxOSKipUTHdMsSoXOdyGQuzuGTZcR6FQNo4\\/fKJRQbyF48mWuF+I7jxW8SgRkc7CZBTBvi5UuY7kcgChe4CqndAV3OJolk2RFYyDeAEAi7Q3lx8nMKiooDPE1UFS7oqIhRuxEZMB4iZZMRyxIupuZqSqpm6CjC7EGrQLCVGCjhQgN7\\/lcjvom45gp1yFxoEX6aZIDyMNEYooRCmVBDndIKMkevkuR3cTeV0y9b5hUXgN\\/8r4KOvkqqvluSnm5HcRyRRvkpXQvJAoEXOqb8RUPhXRcjvzkldBueN2I0Ut3NSVfgMpb3rkjopXdc\\/RdMklPNVVUFT4HKV0YKioqKJEryBjf1aFwWvYI7Fr2C4LXsFDBadgpstewXBadguC07LgtOwXBa9guC17BcFr2CwtJDuTr5lQFFW8tc4xHRBjXGJ6IB5qoYz2Ulie8D1Ui53oFMP7I+G4GF2O0fBq947sVGydGF7cYccXJcNp2XDaLgtOy4LRcFp2XBadlwWnZcFp2ujoqFUKoVR0EJOUBEeu62e2ezDHYY8kT4lpAVmj+Paf8AJDFa2oj1WIuJdGp9U30RA\\/M6Cs4MbEtiTCq4G9lwN7Lgb2XA3suBvZCDQNsaZg4VCBXRbCHjDZOqiDEIg6Jz+QUTVDCsJ\\/KIIeq8V6x2jom+S0UI7LJXQ532P3yQUXENWzaA+oWF4gbgSjmEOaG62prZnlsVa2UDF6Ks3te0bAE0bMmJB\\/um+iH1qz+gLCLURTnWVvgAPHyVmbW3xR\\/PzTmNtBFoiVh8UIH5wmfgHbogLazLY0Qe2xkeoT7NlkcbOIJ1lZ2ZL21CLHVBgUI0XRRTtSJr5dQpUcIptkNZm7EVau+ZNVnyxXQtTD1UgohPfrpe09ULrL75Mf4gOkGRUZ\\/cQuLTXQqBuKO2JKBcIri\\/YrjHZN\\/EbtUTBijGcUDUKI3e0pTUrrFWtraNLsBEgYJ2FpE+asm2ZEPDBovEfxH\\/ACgE36wtmvhhWniQ8X91bfWP7L2X1KBsmzMMRQ4PE\\/eKs8X\\/AFJKx\\/pccZYsFaL2dlv79zmifNWFn\\/u7V\\/68WyFZO\\/K5gDl7b7Zq\\/h\\/+9VEoKdbiNE5vIoNOic\\/sgETyEbgixygac7qxZyQc0yKFkKNqoJj+twusvui8iTGxTWBrXNY4xlGPZOayxhC0ES6NOiLsDwXYuEHZ\\/wAL2htjEFjsNYlDHAmInBNtAwYcJMeStPW4nkuE91hwGP1BQNnOnEE7ZPzbYUSyv\\/cCs5QhLiiUABvtpcwrM2Yjh0Xuno\\/gPgp2T1he2BjT7oeiH1hWf0BHD\\/p4baH8wXhWwjiMSE2zNnstoFhhLksXhBD6wvZv6W3\\/ABG1h6IOtrQuIosBt3QUfbfacEGycrP2ewfiYyrudwgFM3FR\\/UpXYlaekLoogOBhVTCxjnc4mjUXuqSoheG6GH0uhdY\\/e7iPdcTu6LdiPzEzXCA7WCojaGSJNTc70udtSPRVJ0hRe8OuiG3Bw1mm4HSxUQlv5KzDRWqbKB5YCmktl9BRDWy+go+Jxf8Au6IEmuirOD2ghsCCaLjb3XG3uuNvdcbe64290IOB2xrnF5TX8jcAmhNbzddiTrQEgkxkvfOUXuLj1uFnqZm6ICooFQusfvkiDAr8RkeoWzZ9yovN7\\/TMPVCSotN9CzwkdQqWfZUZ2XCzssD8IbrAIYlh0WxRarVarVarW7VRmtVqpqGQtdQqVFEodEI1FLoFRYIel8XLE0TugqIuZqg64GcWqiouFUvoqKBCLeYWyJKgVAqBUQiLjdDe9VLPTJE0F8XU3ETdC+GeipdUKq1VFQLTJTyEDvP77zC1QqdzNQG8qq3Q+CQFFhHCpbqA4ioCvkehzw85HXcgLC2ihu\\/mPk5\\/Aj13PTd9FL4YNxJc1PcxUVHcnp5U9N6PJRU8n\\/\\/EACgQAQACAQQBAwMFAQAAAAAAAAEAESEQMUFRYSBxgZGh8DCxwdHx4f\\/aAAgBAAABPyH0W00HGl+gt2m+5gP99dnpKPQO5MmzfvKc4js0qt5tWGR8RbdQXYnkCY8XL8YPEezPZ9ZbzoJW0tl+ZvKlejmDpYcy6uNEOBKdH7TK7gab6IIYt7cS1U7aU6aa36RsB7\\/or0qeX6AIvM8sy2bG6mCwL5m03Xvg3iVN0w2+qK7qUlpmFSzqKutMt1PJmHmW9DvAtxoDrqS3BLTGql13KnKWbsD76OTMyuzS\\/VUqBmD6r9JR+pk0+hFsXLqo9mU4ltMR1z6BlvRiX1KXTVAbpL9XGYoeGXRZu1AGlxBtMUdK9NStLNF6GjbRd6VcIr9Hv5jzHnTO20o95yYh3MWaisXMaOmfQ1xrWmJcp9C5cXEtcEBLuyWbqhgjSxGJE1RXBAsRL4NKlTE9kt7ly5cFHBrY1t+q7jzHnVNtSVi2XLNvJm6OfmXLmfWR9qmNa0vMv0YOZnY0dykoTZeqW4IA0QRKrxpGWJVyyXLly\\/Rg4JY\\/abGjtBqFcfo8T+518ejuPMzIWpANv\\/Eu69syHSGz7aVKr9GtPEK2frqwZ8zwIHJqAcfXW+GBVm0KNU0qOWMTzgPBrkhZLl+rkdp8DW\\/fTKXEQdtf4nm\\/j2nkfn2nk\\/n2nZ+D2jNp7IxsLPsQClcq9OfmcT\\/s\\/uHHx6F0XMA5\\/wCI6r\\/UO7qZDqJueCJWp7e7Cfh\\/mfl\\/iV\\/D+pT8v6lOV+faJ2HtmYgu6wgCyXZnfifMvrWH1DeJlYDlXiFoN2Et3+3B6Hk1KMqWsVHDbAuyUP3jl1eW712ZdpZ7egxJ7f7f3+hb28nDMcVs4+I\\/unE\\/7P7hx8asLcqbl\\/4lvtNxPu6PGpoZlTx3B+hvy5raDW9zrQkDmKcS5etScAlDa5lHvZ7Gt0N1wNJnCLVjACxM4BBXv6rPaLg29HKeOVPo8yKNx9DxUs5kqnE\\/7ocfEuLN5tA+wHUdxxOBMHgRoL7RS5fRpUrTiwLjO7q9UbnSEefQxewxUpD6pethzLXZM\\/4IA2Prr+Jd6+1oYESRKPEZUOPXYirB6aK7BbEV3bVndkAVSER5V16CCuImW9RchfM\\/2L1ivB7T5b4xD76JiPOu57dZ\\/KcfLF9IRQu5\\/nYfQOVSEzn74qxmHFxUOlVsf3jxBdDU\\/wAzFSAXLWDzop86uCHvdzx4TgplgbttdsywPUZpv2qcefJFtoF+P0TkL3MPtntUVDyO5A5E5Nem8D41AEs3YE\\/7+iFscab8+nb3neFH59bLS3QH19AqOt1V7eugsOO5z5ZSVnravYYucabZ\\/bNytbdGrguxGe7nWro7YYvGpd6l1dp4f\\/Qg85bIRDZh3G4xbbdOJ7mlwPEWPeP39F6hbNlGitdpcpP2Pj\\/daJ5lN0URADdYzFvfk1FB3EMOmK5K2bqzlk8bDLyiKRKTVs8CWfPqqjucNKZOX3dasAhAplnVBGv10mJaM6RHDg2HRqIndYyB1cQNZvqb3\\/M4SonwTpvv0DxdoHZZqqwdsqfiJZMrxDJjRJL2CebpvAPI2jrc2LdDeXAcF\\/LVjdxjjnr8cRR9YGY5vjHoVqxcIOIRNNtbDgBPvUGDWngZVG+tcPeNc0BybR9tbZ5gsC9iHtjl2lrrUFiUNcTzsOtALVxOgwB87Vyyp+dVotlZccQJTkiBYIu8h7zYz8IMONrxHCX1eVr7mQgSpzUSyVbMu7ugLdiUdj1FQA278EVucvMuXKlUW625dp0Oqe36JFA9yFA8Q8w7Wjj+iO5D1D9xE9X7ndROS\\/azr4iYDfE3zYfJ5dUEIYCdg4foj7uoeGusEBMVb86bGHbln7OWopWq+\\/p3Q7YLhWJVrvHVc+kb+YCbdN9i5hsQf9Ys8kANioheyZ\\/P7eg2zFvTm+idtjr39FLLdM8ybM5zDREf4pT0il4P9tRthhsHMDWr3elXCc2VEsOtbc46PBy6hbUxdnStvReYnmlfP0gbgj+1JypFcFacAqtrbptKO1vtDbS7FegwVsCt55AHUFrmYMH2nZQ8yuAuUt2jogGx6FvHE2K1Dl2i3BKiF7tO0vtH4aig7gIt9IttmwmY4ILKhsVcW1t\\/jNQWMQEsuBIYEYNz4\\/30MpfjQPFq1WluxRqxYxKYY0obWGZyhyHLBVInBZtBh\\/xS83LgOSM7Wm3TaPQF7IbYwwVBGrpXBNt2zV2l8WuiBxAwG7l8+tcE40DFxbj+2AMa0ztb8utTle8SrlTaLE8Zc60LbetiRL2dK0yG3L8QSfRDredZX0JlqwHMLhgPpURzCBGWUQT6atanxAxNktlrAhG18off0cKl9mgHYWG6tbxcww7\\/AM9fKrCOKx+iuOYOWK5fn6Jx49GTMYvjGtAzGdSpUqUlSxOKm+Mxr5Akqi+wRaEnK+ix7TYpriWlYfvmPc19NSeJ4JLnlIfRsiWsswhNaWkYferPR+yeStK6fQdveYpd5infb4vX2ZGUD9Ebl2xmLxN2x7QD6OItqx37lPUE4Y5p9a1H+09kvCHzrsJLhmQAidCfJLdMEFO8qcB1LEWhwRzL\\/EfQgsEa5131hMtYM8xMuVRCspZVWFKjLg0+OZds2myM8jwa7QtpFByy+NpQ5nkhuYHLDkPvO0yncrCl1crqGT9AbimMV5j475j4LQUgdHpGrzaZ26SqNepaIHY4Ecyz3LBpcolkuWuHMdIORRL2MrArSPbjgnXjjglXvvKzDPMh7ahbUxlmOBPZLajh4JfgSlUS44ZnqW0V5ht\\/cryQGhfvFyafEE1eXZEWBGK2qUO6s3IGPATiQf3WWS2wmMt7QqUUR\\/RHxCDMbnTOK\\/iP7RqioQ7QzAr1rUDsPBN4Q4mYvB+83h42hvNj7x1Jw3lwOpll3eWU3NpcZKhtYy8bD0aqWMSnKpniDgfRTK8XM+0+XTMtjmVAyXGAY8IRKr5jyUDxU3EDtl00adsxS9s3ETNIIUljxPA+bjbQt7S6C\\/Kd6WETN36C5cQMK8Ti9G1X7z\\/BlfzkJxo02h29V1A7C7Eu69l3oRdrfh3LsuftTmKh28QVueXU7m0pyTLZ0o0xrlfsaqA5hOkBla3MdsomJbLmWmdG+2m8oKgVa7oUN4zWl6VW0vRlxcY7K9fkTphxN9cG\\/voIa46ZR\\/TGMdLs4h3llaXBp6eZvmfx0Mlc7E+VOIV+oWBlFKF8xbnZN1SyLZiiHcWa2t03gIKIMRpcvXM0DV7TJL96fNSpk50dONKv\\/INL9F8YMx3Br9AbQh30Z0MEJejvpY9uoIKH4dK0N5fU\\/b95uziWZZ778Ediu9zdm+R7ElKix+8zel5l3xBMyMx\\/30XuFA6AE5194mV7cdKT2h3ORiVOXxBvDud\\/3TN6Wy0qZI51MuNJEmdMdx8TiVcoN5UVnrJe3WjHY6YeQ6YUMlabNblkuXMrMKeI4IUT\\/ibaJODacxqMdGiC2RZPl5lQkBrcv\\/czowNomzfO8CUJewg3dAuIknLpUYm\\/vhWIqruUhalGF4mZ8aG8ZtN5U3RZvOJeqiexPiUi3aG+JXbMH18dCPeHJBBW50w5FumFFJUAcnmNP9p+Jn4mB\\/KQykwqtBusogAqhX3ZyZvofeDVvfhvPxj+Zijy\\/wCkI\\/iPmN7J1\\/0n+S\\/ufin8yrb8DzA\\/yPvPwj+Z423UsuLiGMh8R2RPZE1K+8plXwBB53iX\\/XTkxwTYzj1BFmLgFZVqrwjCiMhC91Gq8h\\/ZHMH3H9zs7A4SVYbMeJSxtX37aBKVWU2JPee8b3orHiP\\/AAn9z\\/GP7n+I\\/uf5B\\/cLv4H9z\\/Mf3P8AIf3P8h\\/cVqOItzdIRq25tG0+CWG\\/gEQ5JEwyHxLg2X6uUWTeK\\/KP08QyzP4aHJLpydMa1yu7aBq+4tROMBYFpt4FlvJO65C2GqYbGqn7b\\/xBhxl2Uk\\/zE\\/zE\\/wAxP8xP8xG5rePB9SM0ljHV3qZq4G7MgJ1N8i0HiGTJskW\\/n2VXvEdLTaygmY2yWj\\/L+ZfHvAFyIYO2MEcBwe2lumKh4d5ev6RHmwvfnSlHG+UDe8qp+3\\/HWoIAKuwT2I3dgMg6oloP7mjoLxTKBu+fUfe3CBwYrjR8evb3hYoU75meSnTNnG\\/TOjhnKOzP3P7EULII8FT7lihiVAwu4GSL4sx7\\/HPwxg60H7EaVTw19ZUdAQMV\\/NwQ84\\/h4SHvLd67pr6xATY1J7MAAtLzNv43jBnc3H5jRarLKz6x2jcUE+suIN4qxB0qsXsxEKqzBWx2CCWM8EPw0+JRHLgI1WAMpc\\/FWlBVOqFVK55gCbBf0dBWr4dk2QZRKDgqle+KrbvFALzoEWHVmksn87ehSF5atUpKF2cz6afwdBiJgRpl6VLJ1lOJijSqcMoUIblLKNyYvqmSu+6WKnHzUuP4RCBYAfMUCfcgMQ036b0qVDEpgL88yyZV+5NmOjP3P7EwwwclKhm1DaoPU8i0WqKZoqB41T8F0wN5dLqi\\/tBkN+rPhWln5zuV2Qr7p5+amxbJ9ec02ZdZhfDfEwuwWDs3gatVg6DvivEJfHs2qf1DBqkp0wqiWuVjPJU75cTqLa3LEAUjmK7zEqdxavadTL9EYnubRL4Wxd2JSuAQKT5igF4aC4Lmf8TCULl7uX3SgHMWs2jZlt8TDPyvaUPKcu2g\\/eOfBu0rrbJysxypg02b9t7xL5VFZMaDGPl3MMB1XAy58\\/tKgEYDLvL74lLpEhctglMPebE+QWIZHGcczzGg8BVzvcB6DChPjuWIM10M5d5l4y6pwXjJ5wQoNDKo5N6jME7TwTHUdnoqV6bTI0yrh8kXIZWue4bwEQodzuXrIzdRrW6KLJfsPJT9sn4zpl8RbiPiJCEJRg9uIjPvNtAZPPOJw5rVup311bX0gAhQVB7MqrwB69p7JBAfEB1X2v6xNTZQDnb7scJndzY0uZBreFm7mbIRV7EsTsLjtelaUSPaW+75OM4108kOgOzKdIutDStN+4LF8u8xR3CN81oBHuRzn2n8IlqUvemVPu8uYqAsDZnvHUzNrcfxvA67qrwoVWtvEr4V48sZlaWs2Z960oedvdf9XOMOKDZfPmKqWVudZ6ixj4ETOxzqPnuBi4TeNutA78fpm0tkkmSoLs8T7IRMFRLmT6lR46F5qz9413qhkq8Jtr0Ryqkvb8YsGamKCf4ef4ef4ef4ef4eFT20eD6ggG7Cntai4dgVPzo4HM8gEpf\\/AJGlqopsNlXMCo+due9fERUS\\/wDXJpakk8n6Rn3Bpl53hxRPsv4a3DLgyJKAHmVNw7hkk6ODRFMRvRnrsOgy9lN\\/Nu4gF1+WdQPiFF\\/oXL0tNkKETBkZkra3\\/LD8\\/wDzEC7Ts\\/7gy8tiq5nigNpmsz4gq2FwaLxRgt1JdwJ5366MzGPGppRD7sAzr77DMghyFbJMbIpkvameLGFDl4gLtHskTMiRcy\\/mUXUE6FyuiVqpdsfEFDmZiyqrWTzPpo\\/GTwzyJ5UJnuDXBgwRWE+U\\/wAaf4U\\/yp48WMQ3KiQV7EC9orW29Ny9bNDh0qtjLbxNrs5e5iDW0ujiLObnvPElFCeDEogiqGaTShxOO5lqmIQgi4B8xHB2DaMqbyvOmDf49FSo713K5qWc\\/pPFXzKf9J+ElHtPd+ulb19E90yjxGl4ZTolOtLmOpR1KOpR1KOpRpv8y3t7ROHbh6ip9BWhKNFiOS96Dl2\\/eWul2uYzpOjPCXSnM3bcEW3EVd3VAqY20Qn8mW4A+Iq76XBlwY0QZI8AgLIMsMGhss3IqXqFxce5ANkS15jCVrpKom9SjSq0GXUtzrxFFrP6HZpvEvDvw9y7DvpXp7NaD\\/rDgB3hUwj7zGE7JgieM6feCWNbNDMpIP4SKbw9313o8su5jLlSg9OOt6GyrzLKNpa1mIJ3Nyc7ZlYqc\\/EdveXnxNmZZ1KS\\/Q5xNmWY9WzVLI7dW84v07QeZlb1AqWjuPN2O8KVbFQ2iXvH3My3tMBKMBLzrypdfdmfm9x6\\/Q41IsHMXosiYHLUXmeAI7OxA2fWbk3VBj6Mx20J\\/UupbLlJvjQu\\/Ts9C03whgHoshlpQfDEM78JsKxMZGtC5YLzCBceI6X7cDdhChnjx6ybzj07IOYelJtmLAtkE8suXipZCMFumXL+kuFVLxN1Sq0Zd7zyJQQwKnfvoFbfrbvZc38ujaVm8nVxoCa2uXh4euIg0zGiN7iZNMyO06IlCW7aGyds2TbZHL63Tj0kN\\/SDM5aA3fqNo6tMHtP4zZGNmCIfQ1ZbcIfKbOi8xwobENtXSVvZfMxX9Ho\\/\\/9oADAMAAAERAhEAABAQDRxjeub\\/ALBNXf8AgyDWE6asnYum65zOJKHAEADEBEtXSA26QT\\/sjUVYEusTT7s8Su0guiEICGGGOKSZbTowJz8hhQYgzWLKqeVRWji8xljGNCPDIPLMQVbnpIsoAo+gytT2Irj+ZD77K7EiokMDX9QJJAQSlqdQqjwpWkKLToCjg+ne2EfIx3gDLHr6JHDAQIsgqA9sAiwDSwawoJwR9aiofAksNP2HomBMPNvOigoAUQSAe+ARrAlaQH\\/7DX4zF\\/r6x\\/IxFGBFCmlcQniuH+h2yULyQQgofOEB2femHuxuM9JIOM0tgFQpANM6QsI0A4AgdsPAivAPOhv8\\/wCqghQSgd4RqxIgMegAvOoSaoUMNNBHnS7zq+6TcpOhxQAYpy7OqddANYeASrkFyqZqOK+AggsjK9oOQqhwAJrQTcUF5Fg2OGpLNFE5oHl6DGQpBR9iFzCGCgQbasSDnBjXLbdqbcnoDJKGLsudZrpBX9u0qpiBx9vFQTxGhXjRvX8bBEmOMPuITqKBPDTQofurESgIKqBPeiLQgGvGSyLxDYctJnuEuFmtYfqFoK9QDpLKoEqxGIIJTr+wywJs0WqpYFODpRHwDMFlyAAhwgriDBCBJLiTCCCDAzjowiQKBKpN\\/g4euTAzzKpybRCKYxBAACRQCBDzbagOPZ0CoGWAcNsrgBwZhROvQhyRAAAQAQwDwAFdVMODYASIQA37JQDST\\/\\/EACoRAQACAQQCAAQHAQEAAAAAAAEAESEQMUFRIGEwcYGRQFChsdHh8MHx\\/9oACAECEQE\\/EPEGHwSaVAih\\/I3aV+Su34zOz3T3T2ReEEY8V1dXs3M\\/2Cf7BAeY90PtECzzrgLbyrb4+CsDQktiCzRZSJZdfNowBeiM50UpgjRLYAuU8m49xZo61xoB9kE7m5L0t0tv18J3SC2oQV96DKwbYaO6QabI8ujsypcW5zpeJTND7LoGbtMfIi9CCoWnppS+3wnaYNNz2RVyxniEqI+1HoRTTpsdFdJhCXKil3UW22c6IvCq2xO3BL6wQvaK4isptKPtMR3pWPE8jULjsdN\\/PdByq2iUcR3RCrMCghskYlNRQhzpStl570O+hzLNtIoFsvTtHfQQG9sCDYTOdTLCgCBRR4pZaHbR1XSo+DhlmYcERWw5MWCn4Zh8TgKB06ZAljFSjFVtmGF56lB68hbEHMvQoB3AorVah5y\\/emV7hmjX3mI0UFagm1uWSkpGNlEFzBluPM9rCI2jq28ukyzNXnkgy\\/Bag5ZdStF0qXFttl+Wq0Ny6l3BgxMpoviWgvEN4eRKgNx6xE3nOwLuXOLi8RdezPmgAUau0YKpeIEzoRg1LJcC9Hx5VLreWTgYnmC2iO4d0TtKSkpLubWuIFq+2marIk0pHbMo5gCyLUqijk20tAYqWiUWzDFe4im4g0+Q6IjD\\/wBIC47rX89oKUKrA239RYYWqtb0XU4B6Bva+q+m\\/qIIYM7MLcplOkUbIIyrnr+oSZ9P+TMuIfqRHVLURWm9okZeDqAXPoMHcy2b6v8AMcgS3jZiWJj2nS\\/aLScyuobeYILf7IwQGLUO97TEOmqrSrd5uRiFULA+6+McXE9CgrFZODPf6SpWxmHf02waurLXzlJeL13npFTx\\/iZT6ywvUDzvM0Zi0O41W7KFIpVwTFZxV\\/zcvS31f91EL7nMNLNssJlBt+0aP6fxGyLfaGIGfMrtLgWBUclTMtlsUsvLyjS\\/gZaVEW4xFYsWv1hvktuKjF15A3cwxM2l\\/WP2gRVxE2xlE+R958n7yiqiUcfhzM2ipWqI1cQOBLbibaJxKgQjt+H3aKQFhjEN5VxIqypXjs\\/DjUtYFa3WjeKkqNEXMqEPG\\/\\/EACkRAQACAQMDAwMFAQAAAAAAAAEAESEQMVEgQWFAcbGBkaEwweHw8dH\\/2gAIAQERAT8Q6VIr9EYKZcQWWS5n0dSuq+m4by8616d676DfU9PcNCeOeGeGH3R3XQqDU21Ot2ni+Z4vmPBMFuIjT1jG9JdPPUtStLHoWgIdBpiGCWEIUTYkXSFEw6F2REtZmaLWDEFWKdAC8zsUPDHwzblaVBKKc9ZL0qvzFYxyxi8aYiEVLpb6iCUwKtDSmGgUUTtZUksXRniNESd7Z7sAtQ7krdFw6V9F1BQRBKZ44AogmZcHvPAQ5Q5Zp9w0FFmQd2DcwvzMCioAqA4ACiG0ZZXIWM3xA94ta7yw4TM8aXL0q99VqCk02xPBGd423g3O8AWzs9Blgwg2XCBe2mANiUPjRaCPaCb0wFaJQiAPMXtiJB3TE8zEwqKxbb6QKxo8NLr8aXKXL0GyyUqiXlAFEwDmBFY02rd0zOi0dWCPOmEjTDG3AoomYip8yh9QZzHaVoja7xXEStuoXFFsk4CeyS\\/ERW6XhaLi3aC0EQUEplpaEk1lHjCR2O08Ea5ggqVo7Q2X14ZUroFxdiVcvMdoGi1QAKJUV13ytK1Fy0vCKlIhlYiU9TLmGXreJVy81B3ga52I44IlbdVnRCVhqdY79dSmWltBc2jyob8edrs7QqbOHvB2gfc0wXaoAsGoGcS4hkGCWFgQoQFwTwTxTwTwQC0arUl4IlnUmhBP9wy46K3+IrXapZfzM9W8pdXiru5R\\/KZg7sSLCp5ZTP3\\/AGiAp2jw6Pbs+3D+IW13M\\/vMM7x+wQnPKExuaywgGWs5jUMV9yX5n++JnaHij\\/YTWUN\\/+w7IXbzlxgDB94M9aScf5CdLez44inKqn5cTB5NrhxuK\\/Nx7um1TdBSyohO9\\/WK9tTxW82fX+2lL5Qg9\\/wCsxpttKkcyiG3EulYmc8QKbEwI2pkX3lgbRrW5xivf6y6oBX1d\\/tUqoSlKfMFx8wiw+Y24qZHWg3lQUbyp4xCxH0nm\\/b+Z5\\/2\\/mZKX6T3578ZDYaUvCJZa4a2CGhFah+JRplRzek5YhWMLoQdiKs\\/Nr5hDCEESe7Ku8TjLLnf060XLlWZRloJGaoy5cGWqLpuPTqKipSy4GoMshmUlQGGddr1AoLiOoBHhEgEqBcA2IJEj0n\\/\\/xAAoEAEAAgEDAgYDAQEBAAAAAAABABEhMUFRYXEQgZGhscEg0fDh8TD\\/2gAIAQAAAT8Q8QXQuD7V3gN24aQS5SWuhKd2Ud4EoL0JqFcOBg7stu1yz1n1\\/eZP4r65nHtX1+p\\/f3DP5v74nPvf3+4lvb\\/esU6Y8ROuO8C29Z\\/f3M\\/uf+zUrW\\/7+InBTtUNoJqaj+6y4rK86esCmF1biArRFKhSbQvpiEReE3LB58dUGWMid5WUXW4I04HQfcC9R9Y3082UVMmtuJpnWUmC73Lyig7RG9npNWmNpSGNgteKbk0sSyAx11u0ajRG8UbLOhLLU1quYkW5rXp4CxEtak1BklIljw1ZlDDVlDUB6MESxsYNoMFu+kD2vvMBiXOiZ7SuVnYmZt1d4ery22GABQAdvmd\\/f7ntXt+yfxX1Pv3\\/AEz+b+4oatd\\/uPE9Yp38BOh5w9LXpADQr+9yfx\\/bzj2r6\\/U\\/v7ifz\\/bTn3v7\\/c\\/uf+xOYA0muly9UQ86M4FKxiGcEhXVlcBFpgyqqM176\\/qCQNVNCU2SdCXunWKeaOmIg3avT9sdgDrqxU2qzJT5pKdLd5qFBFKobZviWO9wRocoAjTL0CFlrFt+IO0paogGpZhqvQhGdLdzM7qy00z0ja8tTiVTTHO0rwrtZgkbrE7XONweyus0gKBZO4ZcpLdiZ3ZRMyvARQE2luGffO\\/frPrFu3ee1e37J08yvqemfR\\/TEnX77xTpjwIJ1x3gXlzt3n6\\/u5OPavqfxX9if39wzn3v7\\/c\\/uf8AsrF8H9UoPK\\/KO\\/n8THtPxKxKnylW16TSK1UdoAYFahBVAKG8T67r2JVoX2jsY7TfOrKNatmekQ1RTvKrVrvOpL2MrmVKqONmvXeLYujxqKN77S+wO83VsOTANXG3eGGatekCjxqS\\/CgfUczVQtppjLtNn9EfsFeWXLgWIKk0fZlFwd\\/BFNlm5K8528KhBFBqhKtLYraiarVfDk9f3Pr2\\/ZFNWO31HgRWp8BaC5yt8VvABgrbP3PrXp35n8V9cz+K+p8f3ozn3v7\\/AHK7\\/f8ApA02\\/tpgMG1+dx+EfZPs+JfBrT8RUhqvEbFpRsRy1CsuYo9g\\/wB\\/u8GyqzS8x1F0bwzW0dIgEG3ZmVxBmt5bxL7O0rwu8zQo9b8VVZtBO0sb32ltgJZqsN0AJfiW5eTzG84HEo5uXKVm3RxvAAGhEOxL88Z7ygvl0ZUTjzOZ56BxBrWniB0zNlQ5ZUIIsavpOj1R6TtKRm0HY2hzBsGqvPghKcX6QRyeAmuA16QBqW\\/2SemfR7cM\\/m\\/ueuPU78k\\/ivqffv24Z\\/N\\/cp\\/f+8yq9zG0NSsZPiGh2PmbeX3H7fM+yavN9R1mrX6jnrkgUObu462M2bHX9RV1aw2wxmXlDYzoPWWtWVMakSi7O1+OjcRdpZxMm6CWOXtMrdVwSrhCVmFFe8MU1H2jZqYdGXAWLqeQg4E118ACsGdICJgHQiigxWcaeCOp5nMfzscSwGu5FDVmhZjIEWkWbquzMwJZvCrCXV1OC2L2ojybldpeW+JGgEWzStHEz7Xj2Ji0f3M9SvU\\/ZK2rrR8k9M+j+mdeMW7d5649u0++N+0pfPnfvCsOumvDHUdH5jr5viGvd8IaHY+Zt5fcdHs\\/Mft8xfL5IIZq38zFs5tmA1i8+5jZrUDOtQjiLe8VNxGVtZq1ilT4MGmtoVeWus3lc47xS8ZlcS0pJebbaRrQL04eFwSjDLA4cEofIxrYx0miXef1mXV8jBNNIZbnzN07U4hWC8VengoasoWV4Zrn2Tb6RCcvOsze\\/nMxDcbkM7XuJGVP5EmmPeIuBoeDx6M9RiFbAbs4s6FPlb5n\\/DwE2eij63DEm0jejC2o6th30jkY0sp5llecePWBjuJHR7N+U+j4ho7HzHeN\\/wCbT5PhDQ7HzNvL7i4fP5gF31+ZrB1+YXz\\/ALhlBhYPuYPFibt1XMut0sxWOqxxXl+I8RXh1IGq10eYiM2JYm\\/gmUdpURydcnLwTopKnOHWwwaoGyO14YO8o\\/SPgX2flpACCJhHWaOyNX0zBqPKISh3WVe0E9IDXMANCXLlxyVAS6U16xCYLYYEbFm0B9WXtL0\\/1HVJV9D3mkGJUo13u8nrGpujA1vHcpGF0NkYiXl38E3NZc6Qcn58AOsu0FDQ8VkdYzggBvyfH\\/gCWRYN900YFANbcjno+Jq9nxPofMd43\\/m3gDby+ZsdvuVD\\/bxV\\/cxpl8jzgGswsHQcsVoLuXd6xCo2Vcxn1dY4lb7c1MacESJuShsUY2d3vLW9doUlju1PI197\\/wDAavZlZfqJzHRdVxAN4TedC4MyqzEo0N9fEuHWO6vtOFnMurC42j0Y25ahfyniWpFrIJg5CmzVntLWZcPXX9sZcOpxDstPEHo3OguZRbbWX8rNuBqy00B+C0TC2\\/RBn3XxBWguX6ehNCXc\\/B6ljh1NzzIwlhU+n3HV7xv5\\/XgKAeXzMPl9xv8AnWYNvkc5mnBeU0HLETLlFd2GHeYCMtdHaYDoV5zGwHDllyrvBOswuvfwUlZo9IOCIXYLmqyF3W\\/F6gF2nUfRmiB\\/Bttup+GCysSyNzQimXAWOqt2hr3vLr2Mpoj3yZV6t+FPuM3dX8V41qrM4QmlE3a4IDREN0j0hph3c\\/mlB5sAbZqxfwvrltwBcdG0Hdb8QMsdYDTUcR0BPKYawqGhbQ\\/gz14B6wAfahV5LWjSZZdLQD2B+YtjL3+5HMdm\\/cCc9xIVTdUezEDpan0afmFF7oHPY1IFLrj84WFpDJLxeApmOv7u0EOXA28zSaz9snJuJe\\/QarQIG8XWUkADpDabomgOeB8xaf0WHrc\\/u\\/qDIxsZ6TKEF1LZ9r8VY8Fyn25mFFexHNWxUNMoq\\/G1U1MksJDgGasA9431hPgE072rfLNVLofqiFzBTt63wY2Qdj\\/t7QcOWLY+NZtp9jA+PHlWonGzvNit\\/BX4vUesZ5icRb8alby1ocShmvWCvhfELalEjKeJJXzPo\\/A\\/gqvQfeUQ2Ouho9g\\/N8LS7YPCbkwr16B3PWECIIyaop9Hip2ZKmi8jwcQG\\/x1m4mi2NgOx4ko3cQ\\/6FS7YPl8W0dQJUqlhw1LlGVmO2PFU+0xNl6Xmsf+FCNercdzrFjELiWHxhERLVtfBaTwSiRnKPVkCqmjcbSrWR3VK8UBl8UoCNboz26xeJaVK8prtLUxe0pzbvLwa4dBX86eLh7iBSU1CHha0UB1Zkso2V1Z0Nu74qLqqmrgEddo8borZqxoMjpDhqvpMVwQ29FRyyKR1HxLctihLnVZ9E+\\/HMGBBt+S\\/DV7Bh12eTXu9PEN7VhuKsykX3TV\\/fi55dNoekkwmwhfeBF5Gq8Buwk1OxNDxJexekffbUBtZMJrgMx7cbwfafJBrs8oUrg1H4UcQVC4VOL3t9h8RD6gTDtYQEEsZ3LiLFiKGrNEzOMHMLts9o6wFUZWAnDoPvtEq5u9XmVRLCUcEvAZdCWq3qylL0vMG4MU5cvk8QTG1Tox1FCrK3DoXdGh9Khy1wPbNfO\\/wTDqFxDhii+seKSrAQwnjpAhoFQzMAYI+7FiNoD2Ib8OsowW+t+LFRyY62xgzOQ0DZ9+Oe9aRm6BKojS5u6fvyiFXFaq6vi2AmSyLQAHpEddM7Ljxc8e46ykKKcv9R0dNJe7XtOLaqwdjbxBkwS1UOh4lvBVVHpCs5IDpV0gtl9QT0zrmJ1FYBb9o6teC0ngik4shXmlH2PvxYMvVFY4YuLQW+kChLGLNrvUPjZAF47sGvpy4Ii0vBTJlZrWOR\\/UvLCNr6I0lri1vbmV1izBHWWna4lsGu5Xfywx7V\\/4ArQKweql4hYHDBCg4bGVwBliRtjbo8h+46sGwU8zPvLPMa2fL8QVA1YSgLkKHWF\\/Dt49KF95UXucy+VbqcfwHY8X6JeYaQazNsgg9XB8\\/wDilTlaDWI\\/BsgKxRLTAMZPNx5xVNof8KKN0dSl6EujOVf4pR7BKoimsomgWdat918cs1iXHoFoKLgvCGa8BXTPp+4oX0wywmsp1t0GCA0Q6RgjQto9oy3A8UaDglR2YoaRBwahzLVrLuqLvEWjybSrWhtmWD3T8DQC9if8aD6ehE6yOkeMR2nSZ0hnDnUBJFOV5ehGATquBwGx4s0rylZqGjEdIBC058UM3inhS5gtYZvqVHR1SPho3FoO9Dmr\\/Dz6eKGNWCGW0slUZQgr82vUP9T8M9e9P4E4BdlGa74VCQ2uCGmIzmChVxpHbkTH7Dr8RGpG1W18FBa0QZR7Ka5O5EQSiwd\\/HHVg2y+YVsckVdd96vjeO2uF9OeBbBi+pLPpC\\/uB0leh\\/pzFbC+XL+BYNGhz1iiavASnpDryxzEasqBbAb15bHbwpxoAnmPv4nF3VLBlLzOh9JrwO0ovZSpExxHcg281MliKrYJdSqGwlY7tvn401AyN4tTWauFxHmho4FfPs8aTVgkLQYeIG\\/YTB1CTstnz45PNXQPFrbllDwBtKgorM\\/db+K8bf7oe0LGldz2CUUx6E+h0BoA6CbQoqghGCN3OxF1JI7r4LRXaAbC+DaAy5OkxLuxD4USc6vz45yMBiGU1S1u4+\\/Gyg1cEB0w06JQrpYtgXJzK5t+TmC3eWvZKZnLTTvGXTiOaUNWUkFc\\/7K3\\/AL1lbe3+S8GrHCfoPFKm8wTzSB9nMxwEpeDG4QLtlU58o5Y3m7dNJaiqyHY4iKtVt8bohwXm4fqPMBRN9gZZcg4uUtVeLvTp43WaFmYfC5xEVlQEfMz7VXil9R\\/E+7VK1QawLaUJW8zFYsXQwfHjfKsMwg2PSOF0eZVuMdQyzptD1dtbguIyVdnillSxGsZqIB0XmVVBmGtvq7QhxZjQt0PDaUgq12y4U2PYftPHDl02QAWDQ\\/8AFq6vqRwznSGjoDLWNNjiWtA9XnACgFNOD9T+\\/mVmt\\/7aViv70lUWsybYPjxtksGalgEAYMf3oymle31KJz\\/e0369\\/uUMVAbLSEhip3IXh8zx63mK9pYnbMfWNNRClfN\\/AUTIo6xYFbB45mLK3fd15ggWGvXDf3+I9FS8wALq0rJjjwAq6J3rEVVXV18TVWtwscS\\/IhgVRORmiaxE02yTMb6JDuvAHI3Xt+DtoutlvSPFnVNPlL5dfHOhuqUVkNdB5aQjbmpYS\\/QeJ3BQ2x6GQ0f\\/ABHQ+UDJUOU2joaQjoLQ5MMHzcpLaeH9zfr6P+zp9fU26ep\\/kd3p\\/wBlxvdNmeozrvSKUXPSYaR0smnT2\\/7OnwfU26ev\\/J197+58vl\\/jK9P7aEc9g9YNSFc19TiLgPUHi1TvlFjkwFXbEamWogz\\/AI0GTdk0S5o1ehD4Al1IlGWjQ4lK5znix\\/R+AcXbKlCkvwb8AULrSNe0QuK1Gf8ASimA4hW0EahvKhWmhKCxk7xF40jGX3fxib\\/9og5qJHuK2ho+KgtQOsdvDgxFkBWFQiqkCdZ0vrGItyiZUYNIFjReCgK9p0XrETW+hmYQfZfEFYhs3qKh5\\/8ACx5XFG7WaWrMWnTgE1cf3vMKOOHTWIw46OSdfl+5djzMrMi3QekAtK9PWE6A4w\\/7OnrR9Tbp6n+Tr739zfr6P+wP+f5A6iYPKYAWZT5ekqRolp3\\/AMmIBdI3SU3t3mgNM016ET0NJRBlo1g6QAOOlnocwKC2T1f1NGlbAmCNypVuxWAZNpnCHY0Favx5+KANWUHMFkooKSWMOUU6dosIljzH4LekB1MLvJ0iAEA2gKhe8p7vSc5XnOtIk\\/xA4BZ6JoyXYjcoe6OnTcR7o9rZSKNcwgsm9S7cGFGsQlYFukcEx60+kTETQqagMmKKuZtgXFjFdIOsqHcQuofYAQIlUrXpMCqo2\\/8ACmTZMXMz6tUgCU\\/lsxTWeCFMlnJNb85gC1ekHog2esHv5\\/TN979H\\/Z09aPqbdPU\\/ydfe\\/ub9fR\\/2BjvKF77e0oAW6ny9Jlqt3q8\\/5MukE3doXJCZrXoInYAqGhNDuTJOUzMdlY8WU9HuhqQ630VKKUtp08AA2HaAay2VGzt6H33fG80hzCOAFNQsVaorVgIAaRW9GZlmuIHZQB0qEA1PaV0hwPaUma9J2CKvWBUmlLi0tWNFxwuBk6wTwCGh0ijAGmkXyIGqdQhehLhBzgAlY9Y6JqlECxWpY1KQDemTCmAFYqIKscwcOesKt57EqYDRMJf5rYK9GBVWIK7yh2nYNKm8FksHTIjBQ4d\\/HkxZWeCBayNk8EWyaQtBXKaekETFV6n+R6+Vv3HXr6PrvN+vTD6TbEQeuxKAG6Pl6RdzNi5f5N\\/7rNa6Y+Ihd+43f5mCzKYDYziZvp94OHeBhLZQ1YiWqZ1Hbyxu5bVdXvGZU9GI1h2QCdB7TC2gbj+F8vEx1VVEVSHqJBa5gCXFjGkcjDVbroyjkL7yzeUOrOhflAb1qNcjcs6j6Skbo2akBGjCmWDQq6iaGFNYg0lGZL1ld9YBEDSekEvTDGzZ5wxyy9y4d7GKPNFJPSTtr8xKEXXISzbLilwxLU4wwBytG80HYT+94gveoCyJgOO+eT+4nSPA\\/uMOLE1ImF2zBbEjf1OFrWSCWErpp6QygcxoUcZ9JnAI0NzFWpu9Xn\\/IZXT940CrRNSUd8vV6RUy2irgYHB+5oK6U5iIbOWyq7zVESne9uk3HFRYdDbtDItJ1vab9vAUFhE5vq8vgCqC2ZpxizWDQYMS4wxczMy9meUG5Qwbb3BLzU81dWCHHlBHd2i3qQq8LsmZdr3gWfKUJpcxxk7THLjeWIRVhW5ntBbD2ShziYOYLWk7Qb1uusLe3eWXrQecSUtrE4POUHU+UqG9cJ+epMqcRkWbmQlYehOnrBktjrskf3MQ9UnPnFIFKdWSIUGOQ8n9wR6PDHLiIntPiY1sXnMJbiSul0AgIL4+oAiqgPmZUTyXbq\\/qKmVPLLPUo95fZFGn9RbIU6roR4ATmlf20bK7sxmKGrEJTAR0I0AlUN0fFCrZ1ZvstOXiHyLV2CFXRsvDL8ErKDvA6Fw0AnoJYm5BvQwUKtrWiABBbrBN4+Vp3xEtVNzd9o01R5CIECUNXzDGZz2dmFgOb3iLNbg6kZyHoSs6yhYoymqV5TLVoIQlacMDb3iHaU1lIf5ERVaOksxGobE3BviWTc6Sh5MP5GkOVrvNjZNxlOs7gMBirux6yvMrE4YZ8\\/1NB4Rh+otBcGdThnld5XYuKXZ6TuGFS2gfeMsf7WWKF806d\\/WPmV1d4LDyvzN4hqzO8hU1j6IuKffvGLx56zfFOUDdCK6s2SYJfga5aGUlnXFuf9YQ1lgaPaIXekd1faGJ6EylPbM02zy5i1XbwZioUoXTvM1fxLI4o6se0GqTCWZCtq1mSNET1jSAxyEC7DVjPSZCmhMXu9KmWRBWC\\/WCam\\/OWjFxV5IKwqUYcyno8qjZm+0p3lmynnEObJVqtdopv94rW56zXA6CeYivqjwLh2PyqJSmi5jkvhmjMsw2mLxM003MhAY3HbezHKlW+8KzACWLi6Ax0T+InB7EJoE1RGocDfJKGwLRQBv0m6SgBOEL7wPyNxdk4GashsbZlrrN2pNpSGxkksVOghWi+aZN4ocdg8DBufBZ5QUo+vgpTnHEphe9uABj1W94ByWBFS1vUXRDrMs7zHTGVkE10I+iqFB8TUIsOF1tBwBAAW+UKIcrMCBGgeXMcqx4PuJ5ptR7KZzkIGx0roxZBdH+pmrdFQvoq2AFbl\\/wRUBWqZL3ltZB3hg0JOKKNVhd2nMS2ebEbk9iqLWhg2YI3ILJsRKFQY4tAcF4YT2AnTONSZCrwYPuUiorJhz6wmQDiik4cxwKQ40ON4CsTSAU15xv4FlAO2FlEw5b3EDluuIADf8AIsLnUgypy1IaxSrq0K4Us3hq6xzMegspGKXcJbJreqgMXtrK8R0vbpbtKwioBgHS48ERMtmiW6QrroQmnVjgWv1i62xHN7R54QnbPhBbXbODafz31P576n899T+e+p\\/PfUoWipD5P5NvOM5EZqqAsyBuiVIU2Osc0gDldTcgQBtFjA8ik6vH1Ky3Y2wOgPWo2xJG66y+LYvBK8EKuahQ+kE8mXrFl+voesUUnUw8DYgK0CxEt9KPYFMHWpaNDWbtCGyJ7cnrjy8LjQil8f8AYleoWW6zJlqtrmSuU9\\/CDO6NCagWrBQt3nrhg9YkeeC3nbEerReg5Hfw+A2koe6kYqsSlZlfwCA0KT7xabajGCFnzn4Pjeoa2VKj2ITKp8+J1JbsQzpepB8wue2fjwoGAGUyN\\/BFmEsDYXt3iJtE0Gy795ZXthjaEvuzbz2DpAcI1XAVjgoLaCrLVKYAzM61mKC83XnACagmFtV40zxHpMQEM0uzF8w3BKt8VUOUpRYmqR41bDDQbW6GGtaw4grYUdaCjEQyuwhYg2lFG8s+mEe0C8qtButata4g+3gBoaSzEoSAt57RBZ94oKHc\\/wBWMOxYNN3tcJov7HU6wPBpOE0+o47apODHuv0mrPRZcqpsNdBo9iYJjVbI+h4WEB2i89oh0yYQjGkuwS64JaavB+\\/KIkVNq7sDijRM00AHs4lpsOs8bQ5Na51xca2aWPOQvxXBbO7wXfXScBwKib+AMQpdWdr\\/AGB9bBwmseCNOZhQsA3MoSgPoL5ZMOekQq0RoC0aG9nrEN6x3gXVuMaRGp9xORFcYLHLHEC0J2lWOORrzCKAVQR4OdpURJ0EcalW1uSjBpLvP4U4lrBQkWsUTclDyPgfuNiQ7QBpSvDNCFPXwoY5gQsYRycrdxxe8QN6ByRNfKHoSKhghiIKdFSK5EFFaLV\\/oI6ennNa+x\\/tz+1zH9nlCa1CZ+W3EFQ2tVczrWvSp\\/x6tfLWdYaLwqrNXV18XMROPWFSa6LdSipXUOUgMAGeFa3EaHloIZeyLyjwX3eUqvNX2I4BSjVXeEO7oxMCoTs9TL9VvOHXSHkTVWteaY9C2k7LKevzHu3HHAwe0My7EZoWR7Fx9RCsMAqTSFkV01t3hTy4DU6+Fnk51gfB9oYZAP8AZkyDFzNPI+WMYtVTXcMeyfsIKCajENzhpmWFFneEKR01yXM6BYoL+7Q+cscsohg2tAZ0luShMN3FqoVbEWPjmFyqLLQdFEoRYyEFxyq7ECo31E2yXWDYKZVWWqp7F3sd+0ALT72\\/vDu7TKjhqZxnEyckrIFkLHN6VrNgg1BaAR1cBXE1uupZYuBVWfaMSw7oFHAtTzhR1VSZLJFXuNZrgatCy7GvEMjktKvaVuLwsvqVMJVVt+BIJiXLly\\/aDclXls4nz5j2YzU1IxHXTIQyc6QevTDHdnMzr2g45nXygUcHSBxeQ0lhIs3EGry9DsoaLXETJpY2FKFo5c3HAVJVLFFnFEW5y4C+u8xETjLGlU3rAKM6\\/wBgqGOEgoDRjoI0l1QIEpLIIeaDXYigjDFdNB1oNLfNzMFMlprDSG5KLCPVDKL3otXdenhYsap4CJdkyhAcZ13jK6pQij+cw\\/BF4pVbonhlHzhyyr8lejIUOdfC3RoxNfCalsm0TgV3qGRonPt4Bh6IvoebL1BP1W5TlZZZGqdVgRw3r5eDl5UqAhM3kl6nUjoleqwWa5heBtCzSyTXfeU4QSgcjOHrECNcFTq2pd8xB8WjWuuVt21mO2HBdGlerAQAmqlvQ53l+geQrc2\\/Ebdx8UOqVw1aLgNaHQwxzjozLFKvN5bazQUi2C94alUS0khVgo0C06aMsgRgsLtdrD0MZggfuaj20aDSZ7QFoRGHn8bly5czGgbfKOsmDVzW0Py6glKsBWnnxFYqNIyQ5VrcSul3mOQgYoGhVs3em0CUm1QBCkaSZ2Mw\\/bFXQKFHeoy4oLvaLuA\\/mL+XaF5J4IDY7Ywz+A+5\\/Afc\\/gPufwH3P4D7lowVJa6P5CHaUEF00B40A1SVaao6f6DwEq1QGCkFh4VXjoL814EEoC1gmzzFlOpLGB0F7wsNYF2u3EAgqxg2qT6ND1z5eHXZARMkHZHA7JCWeR8TIQY0gRHfwdzsiyhsKRgpico9zSWnQ0qPSaTbTKHoeBMpanEGh5Q6vxOIK3W15zUH1UizRF5GVezmIbbs\\/C\\/HTVqUNIplQTWVtpM+Ux04LElrHIXohWEeG8dwELFRMbCo2Da4g4lHU+UoYhUbXvzAUzF2CdL1n6mC8Pc\\/UqrE7n6nT9Z+p0\\/WfqUA2xZaH1KdfJD9RrwDun6mCAuRb7Q4PUfqCbeo\\/Uw7TyQd9DxNi8iglyQMl1KOoHFwpbWJNcHtM1MtWBdX30jaoauJTLSkYkqLoo9JXhMIDBA7GaMElpFXWCqDaWpvLMbbV3JqlnlCXNUcXMfVYggqwgYpKUU3V3jpE3V6TrvSC6LHIzvic4ec\\/wCAnVPKDJKkAG6x7AZoWWViB0LhNs\\/6b9x\\/3n7i37H7i2vov7hmwqQ\\/uYS2oSxdUV0LY1Llm4+PtKHWWdMeAXLRy6QJbYAWtQWDt4WAWYxWRz3YSiEOlq\\/ULGh6RL3q9al9C3NEtbW4NimCIucl5gLZ6MoQKDYmgVBoSvUHyjgeolauxEci9tIHQmFg0ty\\/UyABoFaEumh6SnB6QjYgsLTlC0IifEsOllTC0oLMsaSnRiu2M9ko48HMRwekRsErrVS74Yg5HWrhurtBu09QSjU\\/VH\\/ImNC\\/KAl8zvNhp51s4g7GWt\\/kVB5NvdikdXXEDsPSUOk8pb+qIbPSCDRDJIW2ek6D0jwPSPA9I8D0nQPSM0lOGhBdUPGr1hmbJybuI+hVp45YNhyh2Vic9ZgPER0G6FrUEKsNB3fojQ6UIY7EV72xLVRLOB6QyXHeZV0hpCrkDSFaMGk4Y4MQwYKnduCmpcfvyjQi4Dq7sAANZOh0n0lCuVwYLwdMWpomXaLdx3oRaWsS1pBgPBQ5IgiN4uPDIpiDZ7S810KsamF80a9oqLXGqsdRK2CUDKjbK6GhEoEu030uFCrQNGJRg1ssi9RCqiEtoaieViXLjnCWWvhFx6S7zL8X8NAIljrH4TW2cToZ7+ADxciQDYhZDPGrRBNWgyG3aJx1Rt0mNbKXlANVrszY9QgBgAgty6RMrggW0CpSFCHELeWLblgtWhu8QTCigNYPHBY9uhN7dfxGEYHWELYGkBnHAMLr\\/gufc9GPaX4DN4LvAlhXtKDZZDdlC8Crs0lXCSOQN4lWUdGkNwCXrN4ZqhAlKpX98y6y92IUCvKAB2wQuAdGXLlU49INTSoqw01DOFVtL\\/H5vEqnyeIVowtRYgaJfhcuXBpeYlh21jwLKWzIBOvRd\\/0QLOApm7vneZACw0z5RKLEesAULlqx6XWC6lDW4IC03YtgGNo0TFt8OGFp6BDwDyU4JatuV\\/KsXNLQm2YwJjmaNuHiSuiekqJWcMuXMCNuCCUvQICIsLGZcZ5RqhyaMAvHaDUzB4lXpmJnTSZd1lM0td6zLNTWqlmmRu6Sae20yNcfT\\/Y5Ed\\/qVNXvU0D0jgVq40Vbe0tJ\\/mAAmjL\\/AA0u\\/i6QEd0C21CX4odYEeDw1GjA4lWNKkbEFZflBITTc1PE73kS2auQXpC+xNZX3xZ8ERPQHQ6wzWBQ4cvViqqtrq\\/kN3SK9ni1g1Lt8CqHZ+F5W5isnTSak0cEYwxztM+9x0l6TkqJcFA4g18p6QStHZhHgQvv2hc6LR1mm6eqASxrvKw4vN8ygHd0iaqmXFmWWXcyqmkjRSiDOTOjHw6uk18JQPSCt8\\/xhlLm857x+BQWes0GJd+OyLRbiC9wcEwqbLsO8ztAaBoRbgROiKurLA5hgoPA39U8QYZxpGrymLhcQGKKl3EDSx8FtomINWEzNhcwIyxxGG1dAYioEMJ2OsSitrq\\/kZZqrYjgPEeBrHRFDxDwJmh0CnXvLiKyraGCgoPC4S4ryiUAsSlNI11y5D3l1Q6\\/eajxiYFNzMVUHRgDVRlLV4HnLls0RwL3mEmgzE95piU2YjYvk0hEBnEF9VPwHsKlTbV8PSWVlryTQowcHj\\/\\/2Q==\\\" data-filename=\\\"14194298_1070473683006358_1783009617_n.jpg\\\" style=\\\"margin: 10px; width: 600px;\\\"><\\/p><p><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<\\/p><p><br><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><p><\\/p>\",\"widget\":\"\"}]', NULL, NULL);
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(12, 'ok', 'Documentation', 'Documentation', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h3><span style=\\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Header<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Top Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Middle Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Bottom Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Logo upload directory<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"2\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Image:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Title:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Price:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Add to Cart:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Compare:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Wish:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor Name:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Out of Stock:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Discount:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><br><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"3\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">. <\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"4\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><span class=\\\"Apple-tab-span\\\" style=\\\"white-space:pre;\\\">\\t<\\/span><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Top<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Bottom <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">: <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Home page : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">product box<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">.<\\/span><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'digital category', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub-category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'digital sub-category', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha & social settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email template', 'email_template', 'parent', NULL),
(103, 'product bundle', 'product_bundle', 'parent', NULL),
(104, 'edit', 'product_bundle_edit', '103', NULL),
(105, 'view', 'product_bundle_view', '103', NULL),
(106, 'delete', 'product_bundle_delete', '103', NULL),
(107, 'bundle_stock', 'bundle_stock', '103', NULL),
(108, 'customer package payment', 'package_payment', 'parent', NULL),
(109, 'classified products', 'customer_products', 'parent', NULL),
(110, 'customer premium package', 'package', 'parent', NULL),
(111, 'delete all', 'delete_all', 'parent', NULL),
(112, 'delete all categories', 'delete all categories', '111', NULL),
(113, 'delete all products', 'delete all products', '111', NULL),
(114, 'delete all brands', 'delete all brands', '111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `rating_user` longtext,
  `title` longtext,
  `title_ar` varchar(250) NOT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext,
  `description_ar` longtext NOT NULL,
  `features` longtext NOT NULL,
  `features_ar` longtext NOT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext,
  `featured` longtext,
  `tag` longtext,
  `status` longtext,
  `front_image` longtext,
  `brand` longtext,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext,
  `additional_fields` longtext,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext,
  `color` longtext,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `download` varchar(200) DEFAULT NULL,
  `download_name` varchar(200) DEFAULT NULL,
  `deal` varchar(10) DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `requirements` longtext,
  `logo` longtext,
  `video` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `products` longtext,
  `is_bundle` varchar(10) DEFAULT NULL,
  `vendor_featured` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `title_ar`, `added_by`, `category`, `description`, `description_ar`, `features`, `features_ar`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(1, 0, '0.00', '[]', 'Citrus Reticulata Mandarino', 'Citrus Reticulata Mandarino ar', '{\"type\":\"admin\",\"id\":\"1\"}', 7, 'If you have space to spare, make an impressive display in your living room with a great eye-catcher Anthurium plant.', 'If you have space to spare, make an impressive display in your living room with a great eye-catcher Anthurium plant ar', '                                        <p></p><ol><li>one of the </li><li>one of the </li><li>one of the </li></ol><p></p>', '                                        <p></p><ol><li>one of the ar</li><li>one of the ar</li></ol><p></p>', NULL, '2', '220.00', '190.00', '5', '1609568258', 'no', 'indoor', 'ok', '0', NULL, 4, '500', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '5', 'percent', '10', 'percent', 'null', '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation`
--

CREATE TABLE `product_affiliation` (
  `product_affiliation_id` bigint(20) NOT NULL,
  `product_affiliator_id` int(11) NOT NULL,
  `product_affiliator_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_affiliation_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `generated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation`
--

INSERT INTO `product_affiliation` (`product_affiliation_id`, `product_affiliator_id`, `product_affiliator_type`, `product_affiliation_code`, `product_id`, `generated_at`) VALUES
(1, 3, '', 'aff_633c966eb2f97153cdeb', 98, '2019-12-10 06:46:48'),
(2, 3, '', 'aff_62a7da485edb52b8808f', 218, '2019-12-10 06:47:50'),
(3, 3, '', 'aff_17725c5b92fc62ebc3f8', 212, '2019-12-12 10:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation_code_use`
--

CREATE TABLE `product_affiliation_code_use` (
  `product_affiliation_code_use_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliation_user_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` decimal(20,2) NOT NULL DEFAULT '0.00',
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation_code_use`
--

INSERT INTO `product_affiliation_code_use` (`product_affiliation_code_use_id`, `affiliator_id`, `product_id`, `code`, `affiliation_user_id`, `points`, `currency`, `used_at`) VALUES
(1, 3, 218, 'aff_62a7da485edb52b8808f', 9, '100.00', '25.00', '2019-12-11 06:26:07'),
(2, 3, 98, 'aff_633c966eb2f97153cdeb', 9, '24.00', '6.00', '2019-12-12 01:41:41'),
(3, 3, 212, 'aff_17725c5b92fc62ebc3f8', 9, '100.00', '25.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_affiliation_points_total`
--

CREATE TABLE `product_affiliation_points_total` (
  `product_affiliation_points_total_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` decimal(20,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_affiliation_points_total`
--

INSERT INTO `product_affiliation_points_total` (`product_affiliation_points_total_id`, `affiliator_id`, `points`, `currency`, `updated_at`) VALUES
(1, 3, '224.00', '56.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` longtext,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '[\"13\",\"17\",\"21\",\"37\",\"41\",\"45\",\"49\"]', 'Manages Products'),
(4, 'Accountant', '[\"9\",\"13\",\"17\",\"21\"]', 'Accountancy and Support'),
(6, 'Manager', '[\"5\",\"13\",\"29\",\"33\",\"37\",\"41\",\"57\",\"63\",\"103\"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext,
  `buyer` longtext,
  `guest_id` varchar(100) DEFAULT NULL,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(11, '20180211', '7', '', '{\"d09bf41544a3365a46c9077ebb5e35c3\":{\"id\":\"75\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":49.99,\"name\":\"Medium Booster Heel\",\"shipping\":\"2.52\",\"tax\":0.74985,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_75_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d09bf41544a3365a46c9077ebb5e35c3\",\"subtotal\":49.99},\"66f041e16a60928b05a7e228a89c3799\":{\"id\":\"58\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":75,\"name\":\"Retro Utility Lace-Up Work Shoe\",\"shipping\":\"5.50\",\"tax\":2.4375,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_58_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"66f041e16a60928b05a7e228a89c3799\",\"subtotal\":75},\"72b32a1f754ba1c09b3695e0cb6cde7f\":{\"id\":\"57\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":80,\"name\":\"Classic Business Shoe\",\"shipping\":\"3.26\",\"tax\":2.6,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_57_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"72b32a1f754ba1c09b3695e0cb6cde7f\",\"subtotal\":80},\"a684eceee76fc522773286a895bc8436\":{\"id\":\"54\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":117.6,\"name\":\"Custom Suit Set\",\"shipping\":\"5.25\",\"tax\":7.5,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_54_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a684eceee76fc522773286a895bc8436\",\"subtotal\":117.6},\"c0c7c76d30bd3dcaefc96f40275bdc0a\":{\"id\":\"50\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":21.99,\"name\":\"Cotton T-Shirt\",\"shipping\":\"3.35\",\"tax\":0.4398,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_50_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c0c7c76d30bd3dcaefc96f40275bdc0a\",\"subtotal\":21.99}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Bw23fKmGdRDZlHSlAJhYRtj\"}', '13.72715', '', '19.88', 'stripe', '[{\"vendor\":\"3\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CKhS3uhFWGJX3s\",\"object\":\"customer\",\"account_balance\":0,\"created\":1518760020,\"currency\":null,\"default_source\":\"card_1Bw23fKmGdRDZlHSTUh4jPql\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"11d2c6544b\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Bw23kKmGdRDZlHSxkLdP77p\",\"object\":\"charge\",\"amount\":37819,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Bw23lKmGdRDZlHSQvK398Ut\",\"captured\":true,\"created\":1518760020,\"currency\":\"usd\",\"customer\":\"cus_CKhS3uhFWGJX3s\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '378.18715', '1518760021', '', '[{\"vendor\":\"3\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(12, '20180212', '7', '', '{\"ed3d2c21991e3bef5e069713af9fa6ca\":{\"id\":\"98\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38,\"name\":\"Classified php script\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.104\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_98_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ed3d2c21991e3bef5e069713af9fa6ca\",\"subtotal\":38}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '38', '1519796196', '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok'),
(16, '20180316', '7', '', '{\"38b3eff8baf56627478ec76a704e9b52\":{\"id\":\"101\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":909.09,\"name\":\"ABC\",\"shipping\":\"9\",\"tax\":89.91,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_101_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"38b3eff8baf56627478ec76a704e9b52\",\"subtotal\":909.09}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C7EtmKmGdRDZlHSUSdRUYbX\"}', '89.91', '', '9', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CWHS0eT2pl9oga\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521430988,\"currency\":null,\"default_source\":\"card_1C7EtlKmGdRDZlHS2wkgaNjv\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"FF5D36B\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C7EttKmGdRDZlHSI5m5fQ46\",\"object\":\"charge\",\"amount\":100800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C7EttKmGdRDZlHSgCoEWtCI\",\"captured\":true,\"created\":1521430989,\"currency\":\"usd\",\"customer\":\"cus_CWHS0eT2pl9oga\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1008', '1521430987', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(17, '20180317', '7', '', '{\"ac627ab1ccbdb62ec96e702f07f6425b\":{\"id\":\"99\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":26,\"name\":\"Colored Solution\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_99_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ac627ab1ccbdb62ec96e702f07f6425b\",\"subtotal\":26}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '26', '1521541152', '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(18, '20180318', '7', '', '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":131.6}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '14', '', '2', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '147.6', '1521616455', '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(19, '20180319', '7', '', '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":7,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":921.2}}', '{\"firstname\":\"Jescie\",\"lastname\":\"Torres\",\"address1\":\"46 New Parkway\",\"address2\":\"Necessitatibus veniam exercitation laboriosam veritatis omnis ex officiis dolor incididunt inventore expedita ut molestiae\",\"zip\":\"98985\",\"email\":\"kevapav@gmail.com\",\"phone\":\"+436-94-1073464\",\"langlat\":\"(44.3086839, -77.96090420000002)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C81AnKmGdRDZlHSY1Pwu146\"}', '98', '', '14', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX5L5G0ieMXtmd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521616555,\"currency\":null,\"default_source\":\"card_1C81AnKmGdRDZlHS8raAj9Jn\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"90EC3D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C81AvKmGdRDZlHS9LAYRgEH\",\"object\":\"charge\",\"amount\":103320,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C81AvKmGdRDZlHS8G0lkt9X\",\"captured\":true,\"created\":1521616557,\"currency\":\"usd\",\"customer\":\"cus_CX5L5G0ieMXtmd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1033.2', '1521616557', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(20, '20180320', '7', '', '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":131.6}}', '{\"firstname\":\"Harrison\",\"lastname\":\"Ross\",\"address1\":\"90 Cowley Extension\",\"address2\":\"Velit quia sed qui quos aliquid odit sit commodo magni voluptates\",\"zip\":\"38800\",\"email\":\"lefuzyjor@hotmail.com\",\"phone\":\"+323-54-7755047\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C81GYKmGdRDZlHSH8grYiVK\"}', '14', '', '2', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX5RnBJCNRxgbB\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521616912,\"currency\":null,\"default_source\":\"card_1C81GYKmGdRDZlHSoQ3ti8Al\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"E8AFF08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C81GfKmGdRDZlHSjnhuSNgi\",\"object\":\"charge\",\"amount\":14760,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C81GgKmGdRDZlHSiUV1m1xb\",\"captured\":true,\"created\":1521616913,\"currency\":\"usd\",\"customer\":\"cus_CX5RnBJCNRxgbB\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '147.6', '1521616913', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(21, '20180421', '7', '', '{\"9b8619251a19057cff70779273e95aa6\":{\"id\":\"130\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":79.2,\"name\":\"Suit Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_130_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9b8619251a19057cff70779273e95aa6\",\"subtotal\":79.2}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CG1WmKmGdRDZlHSmgQ4nHTv\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CfMFfKd9xfvsl3\",\"object\":\"customer\",\"account_balance\":0,\"created\":1523524541,\"currency\":null,\"default_source\":\"card_1CG1WmKmGdRDZlHSOqbDYafa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"7DE816C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CG1WsKmGdRDZlHSMlyAYLJK\",\"object\":\"charge\",\"amount\":7920,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CG1WtKmGdRDZlHSPNiSOI5F\",\"captured\":true,\"created\":1523524542,\"currency\":\"usd\",\"customer\":\"cus_CfMFfKd9xfvsl3\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '79.2', '1523524543', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(22, '20180422', '9', '', '{\"3def184ad8f4755ff269862ea77393dd\":{\"id\":\"125\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":60000,\"name\":\"Land Cruiser v8\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_125_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3def184ad8f4755ff269862ea77393dd\",\"subtotal\":60000}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '60000', '1523535450', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(23, '20180423', '9', '', '{\"9b8619251a19057cff70779273e95aa6\":{\"id\":\"130\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":79.2,\"name\":\"Suit Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_130_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9b8619251a19057cff70779273e95aa6\",\"subtotal\":79.2},\"76dc611d6ebaafc66cc0879c71b5db5c\":{\"id\":\"128\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":372.06,\"name\":\"Travel Stretch Fit Blazer\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_128_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"76dc611d6ebaafc66cc0879c71b5db5c\",\"subtotal\":372.06}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '451.26', '1523535591', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(24, '20180424', '7', '', '{\"069059b7ef840f0c74a814ec9237b6ec\":{\"id\":\"126\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":23,\"name\":\"Women\'s Scarlett Cocktail Dress\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_126_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"069059b7ef840f0c74a814ec9237b6ec\",\"subtotal\":23},\"07e1cd7dca89a1678042477183b7ac3f\":{\"id\":\"119\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":879.2,\"name\":\" Small Space Package \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_119_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"07e1cd7dca89a1678042477183b7ac3f\",\"subtotal\":879.2}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '902.2', '1523852571', '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(29, '20180429', '7', '', '{\"06409663226af2f3114485aa4e0a23b4\":{\"id\":\"158\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":158.99,\"name\":\"Ch\\u00e2n\\u00eal coco Noir\",\"shipping\":\"0\",\"tax\":3.1798,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_158_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"06409663226af2f3114485aa4e0a23b4\",\"subtotal\":158.99}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"cash_on_delivery\"}', '3.1798', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '162.1698', '1524471441', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(39, '20180539', '11', '', '{\"3def184ad8f4755ff269862ea77393dd\":{\"id\":\"125\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(0,0,0,1)\\\"}}\",\"price\":60000,\"name\":\"Land Cruiser v8\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/192.168.0.107\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_125_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3def184ad8f4755ff269862ea77393dd\",\"subtotal\":60000}}', '{\"firstname\":\"Demo\",\"lastname\":\"testing\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"8765\",\"email\":\"demotesting@gmail.com\",\"phone\":\"+546-50-8760220\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CQuY9KmGdRDZlHS67Mp5r2M\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \r\n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cqblhah6prGO2A\",\"object\":\"customer\",\"account_balance\":0,\"created\":1526119326,\"currency\":null,\"default_source\":\"card_1CQuY9KmGdRDZlHSXrK8NfCy\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"demotesting@gmail.com\",\"invoice_prefix\":\"40129DD\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\r\n \r\n Charge Info: \r\n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CQuYFKmGdRDZlHSQvChJhxK\",\"object\":\"charge\",\"amount\":6000000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CQuYGKmGdRDZlHSRyaTITv9\",\"captured\":true,\"created\":1526119327,\"currency\":\"usd\",\"customer\":\"cus_Cqblhah6prGO2A\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '60000', '1526119327', '', '[{\"admin\":\"\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1526121996}]', 'ok'),
(38, '20180438', '10', '', '{\"a4a042cf4fd6bfb47701cbc8a1653ada\":{\"id\":\"171\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1176,\"name\":\"iPhone 6 (Gold)\",\"shipping\":\"15\",\"tax\":144,\"image\":\"http:\\/\\/192.168.0.107\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_171_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a4a042cf4fd6bfb47701cbc8a1653ada\",\"subtotal\":1176}}', '{\"firstname\":\"lavat\",\"lastname\":\"Tyson\",\"address1\":\"793 First Street\",\"address2\":\"Nulla reprehenderit voluptas consectetur quos quisquam ducimus eius aute et ipsa magnam nostrum Nam dolorem a aliquam quaerat\",\"zip\":\"96935\",\"email\":\"saide.mahid@gmail.com\",\"phone\":\"+884-43-7818135\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CMY0xKmGdRDZlHSNCjmX2qf\"}', '144', '', '15', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cm6DmQaDMf9QIf\",\"object\":\"customer\",\"account_balance\":0,\"created\":1525079389,\"currency\":null,\"default_source\":\"card_1CMY0xKmGdRDZlHSUI710xGr\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid@gmail.com\",\"invoice_prefix\":\"5F371F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CMY15KmGdRDZlHSumaSlw4c\",\"object\":\"charge\",\"amount\":133500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CMY15KmGdRDZlHSP17GwKBT\",\"captured\":true,\"created\":1525079391,\"currency\":\"usd\",\"customer\":\"cus_Cm6DmQaDMf9QIf\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1335', '1525079391', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(45, '20180645', '13', '', '{\"b73ce398c39f506af761d2277d853a92\":{\"id\":\"160\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1200,\"name\":\"iPhone X\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/192.168.0.107\\/shop\\/v1.5.1\\/uploads\\/product_image\\/product_160_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"b73ce398c39f506af761d2277d853a92\",\"subtotal\":1200}}', '{\"firstname\":\"Customer\",\"lastname\":\"Shop\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"4321\",\"email\":\"customer.shop@gmail.com\",\"phone\":\"+546-50-8760220\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CYs0gKmGdRDZlHSeIuPSM1v\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypgLfi6vsYcKh\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528016188,\"currency\":null,\"default_source\":\"card_1CYs0gKmGdRDZlHSnyIeUva9\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.shop@gmail.com\",\"invoice_prefix\":\"F7A735A\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYs0nKmGdRDZlHS9hcl4FpE\",\"object\":\"charge\",\"amount\":120000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYs0nKmGdRDZlHSckYOEn54\",\"captured\":true,\"created\":1528016189,\"currency\":\"usd\",\"customer\":\"cus_CypgLfi6vsYcKh\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1200', '1528016175', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(44, '20180544', '7', '', '{\"c81e728d9d4c2f636f067f89cc14862c\":{\"id\":\"2\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(28,25,173,1)\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Condition\\\",\\\"value\\\":null}}\",\"price\":22000,\"name\":\"Harley Davidson Fatboy\",\"shipping\":\"2000\",\"tax\":1540,\"image\":\"http:\\/\\/192.168.0.107\\/shop\\/v1.5.1\\/uploads\\/product_image\\/product_2_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c81e728d9d4c2f636f067f89cc14862c\",\"subtotal\":44000}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"hgxfjdfsg\",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(36.778261, -119.41793239999998)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CUsQ6KmGdRDZlHSr6Vtbddi\"}', '3080', '', '4000', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cuhp7tNa2KbPCM\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527064452,\"currency\":null,\"default_source\":\"card_1CUsQ6KmGdRDZlHS0wRaPYQk\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"D2583E1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CUsQDKmGdRDZlHSz76qiXaP\",\"object\":\"charge\",\"amount\":5108000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CUsQDKmGdRDZlHS5cMpMwWN\",\"captured\":true,\"created\":1527064453,\"currency\":\"usd\",\"customer\":\"cus_Cuhp7tNa2KbPCM\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '51080', '1527064445', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(56, '20180656', '7', '', '{\"4c5bde74a8f110656874902f07378009\":{\"id\":\"182\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":440,\"name\":\"Nulla magnam dolore et est modi dolore quod voluptatem qui nulla dolor est enim dolorum vel iure\",\"shipping\":\"0\",\"tax\":125,\"image\":\"http:\\/\\/192.168.0.107\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_182_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4c5bde74a8f110656874902f07378009\",\"subtotal\":440}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CfKldKmGdRDZlHSykDIjfU2\"}', '125', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D5VnmdkM56PGC6\",\"object\":\"customer\",\"account_balance\":0,\"created\":1529556701,\"currency\":null,\"default_source\":\"card_1CfKldKmGdRDZlHSSwWk7rCs\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"D941A4C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CfKlnKmGdRDZlHSBgW4vPKp\",\"object\":\"charge\",\"amount\":66580,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CfKlnKmGdRDZlHSLKCUfnjD\",\"captured\":true,\"created\":1529556703,\"currency\":\"usd\",\"customer\":\"cus_D5VnmdkM56PGC6\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '565', '1529556702', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(64, '20180664', '7', '', '{\"82161242827b703e6acf9c726942a1e4\":{\"id\":\"175\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":68,\"name\":\"Playboy London\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_175_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82161242827b703e6acf9c726942a1e4\",\"subtotal\":68}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChvPJKmGdRDZlHSMreEt3Lf\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8Bm2aPMkAu3X7\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530174197,\"currency\":null,\"default_source\":\"card_1ChvPIKmGdRDZlHSjbzZFhEH\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"9CCD6A3\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChvPOKmGdRDZlHSewymXvfG\",\"object\":\"charge\",\"amount\":6800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChvPOKmGdRDZlHS43GE7Cf2\",\"captured\":true,\"created\":1530174198,\"currency\":\"usd\",\"customer\":\"cus_D8Bm2aPMkAu3X7\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '68', '1530174197', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(63, '20180663', '7', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '12', '', '2', 'wallet', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', '', NULL, '200', '1530166970', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(62, '20180662', '7', '', '{\"0a09c8844ba8f0936c20bd791130d6b6\":{\"id\":\"144\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":409,\"name\":\"NEW Asus Zenfone 5\",\"shipping\":\"28\",\"tax\":94.07,\"image\":\"http:\\/\\/localhost\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_144_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"0a09c8844ba8f0936c20bd791130d6b6\",\"subtotal\":409}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChZL6KmGdRDZlHSLt3xdB84\"}', '94.07', '', '28', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7ozNYGkRsMH4d\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530089370,\"currency\":null,\"default_source\":\"card_1ChZL6KmGdRDZlHSeaiEZwCH\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"9C075F2\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChZLEKmGdRDZlHSowbXJnuq\",\"object\":\"charge\",\"amount\":53107,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChZLEKmGdRDZlHSDPkJCC4j\",\"captured\":true,\"created\":1530089372,\"currency\":\"usd\",\"customer\":\"cus_D7ozNYGkRsMH4d\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '531.07', '1530089371', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(65, '20180665', '7', '', '{\"8f53295a73878494e9bc8dd6c3c7104f\":{\"id\":\"179\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":99,\"name\":\"PLAYBOY - Bundle Offer \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_179_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f53295a73878494e9bc8dd6c3c7104f\",\"subtotal\":99}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChvTEKmGdRDZlHSW0i6JqxO\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8Br4Mecw0YbV0\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530174441,\"currency\":null,\"default_source\":\"card_1ChvTEKmGdRDZlHSPsnhJJHu\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"B85C87D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChvTJKmGdRDZlHSVeHIbJAp\",\"object\":\"charge\",\"amount\":9900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChvTJKmGdRDZlHSwHHRd27R\",\"captured\":true,\"created\":1530174441,\"currency\":\"usd\",\"customer\":\"cus_D8Br4Mecw0YbV0\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '99', '1530174441', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(93, '20180793', 'guest', '93-RqjTnes0Bl', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO KOLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Guest\",\"lastname\":\"Demo\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"+475-16-8754228\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CkOwbKmGdRDZlHSNwBr6Tgz\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkRYpF8eUvf6A\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530764394,\"currency\":null,\"default_source\":\"card_1CkOwbKmGdRDZlHS8wrOmjdY\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"E929C5C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkOwgKmGdRDZlHSCovhPqpx\",\"object\":\"charge\",\"amount\":4000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkOwhKmGdRDZlHSHgfp3ZTB\",\"captured\":true,\"created\":1530764394,\"currency\":\"usd\",\"customer\":\"cus_DAkRYpF8eUvf6A\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '40', '1530764395', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok');
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(67, '20180667', '9', '', '{\"8f85517967795eeef66c225f7883bdcb\":{\"id\":\"178\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":74.8,\"name\":\"RABBIT HEAD WATCH\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_178_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f85517967795eeef66c225f7883bdcb\",\"subtotal\":74.8}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChvzGKmGdRDZlHSuxqJ8Rqk\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8COubGgdIcNm6\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530176426,\"currency\":null,\"default_source\":\"card_1ChvzFKmGdRDZlHSyRpoeYxA\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"3CCCA72\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChvzLKmGdRDZlHS309DnOej\",\"object\":\"charge\",\"amount\":7480,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChvzLKmGdRDZlHS78eXQssh\",\"captured\":true,\"created\":1530176427,\"currency\":\"usd\",\"customer\":\"cus_D8COubGgdIcNm6\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '74.8', '1530176426', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(68, '20180668', '9', '', '{\"82161242827b703e6acf9c726942a1e4\":{\"id\":\"175\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":68,\"name\":\"Playboy London\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_175_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82161242827b703e6acf9c726942a1e4\",\"subtotal\":68},\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":30},\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwKkKmGdRDZlHSpiVbb1fT\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8Ck2tLSNpHc8A\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530177758,\"currency\":null,\"default_source\":\"card_1ChwKjKmGdRDZlHSdKT0RSfJ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"201CF9F\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwKoKmGdRDZlHSCyQv0z7e\",\"object\":\"charge\",\"amount\":359800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwKpKmGdRDZlHSKWmtM1g6\",\"captured\":true,\"created\":1530177758,\"currency\":\"usd\",\"customer\":\"cus_D8Ck2tLSNpHc8A\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '3598', '1530177758', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(69, '20180669', '9', '', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":30},\"82161242827b703e6acf9c726942a1e4\":{\"id\":\"175\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":68,\"name\":\"Playboy London\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_175_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82161242827b703e6acf9c726942a1e4\",\"subtotal\":68}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwO7KmGdRDZlHSTfgberXI\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8CniGaeLIKZDn\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530177969,\"currency\":null,\"default_source\":\"card_1ChwO6KmGdRDZlHSgzcnwHni\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"2D62E2C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwODKmGdRDZlHSlBE1yPVc\",\"object\":\"charge\",\"amount\":9800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwODKmGdRDZlHSelbyn0lI\",\"captured\":true,\"created\":1530177969,\"currency\":\"usd\",\"customer\":\"cus_D8CniGaeLIKZDn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '98', '1530177969', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(70, '20180670', '9', '', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":30},\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwTYKmGdRDZlHS3V3xxuha\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8CtBLDZ7Tr7IQ\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530178304,\"currency\":null,\"default_source\":\"card_1ChwTYKmGdRDZlHSCUvHfUrB\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"1A969F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwTdKmGdRDZlHSqVySlKlV\",\"object\":\"charge\",\"amount\":353000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwTdKmGdRDZlHSG04mJLHW\",\"captured\":true,\"created\":1530178305,\"currency\":\"usd\",\"customer\":\"cus_D8CtBLDZ7Tr7IQ\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '3530', '1530178305', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(71, '20180671', '9', '', '{\"8f85517967795eeef66c225f7883bdcb\":{\"id\":\"178\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":74.8,\"name\":\"RABBIT HEAD WATCH\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_178_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f85517967795eeef66c225f7883bdcb\",\"subtotal\":74.8},\"82161242827b703e6acf9c726942a1e4\":{\"id\":\"175\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":68,\"name\":\"Playboy London\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_175_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82161242827b703e6acf9c726942a1e4\",\"subtotal\":68}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwW0KmGdRDZlHSWI9KxVbY\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8CvtdVtfDKHGL\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530178457,\"currency\":null,\"default_source\":\"card_1ChwW0KmGdRDZlHSXlDDcd3F\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"8F3BC33\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwW5KmGdRDZlHSG7Sg7OlJ\",\"object\":\"charge\",\"amount\":14281,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwW6KmGdRDZlHS6VswU62f\",\"captured\":true,\"created\":1530178457,\"currency\":\"usd\",\"customer\":\"cus_D8CvtdVtfDKHGL\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '142.8', '1530178457', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(72, '20180672', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186},\"202cb962ac59075b964b07152d234b70\":{\"id\":\"123\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":300,\"name\":\"Kylie Beauty Bundle\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_123_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"202cb962ac59075b964b07152d234b70\",\"subtotal\":300},\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwZBKmGdRDZlHS6bObaULt\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8Czi6LOsMbL5F\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530178654,\"currency\":null,\"default_source\":\"card_1ChwZBKmGdRDZlHSFuDHSby3\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"B4C95F6\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwZGKmGdRDZlHSlObvfyST\",\"object\":\"charge\",\"amount\":400000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwZHKmGdRDZlHSm51Enunj\",\"captured\":true,\"created\":1530178654,\"currency\":\"usd\",\"customer\":\"cus_D8Czi6LOsMbL5F\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '4000', '1530178654', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(73, '20180673', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwbyKmGdRDZlHS26d1f1dy\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8D2ivo80g5Vga\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530178826,\"currency\":null,\"default_source\":\"card_1ChwbxKmGdRDZlHScw7zB2wC\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"E1379A8\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chwc3KmGdRDZlHScBMFxyz7\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chwc3KmGdRDZlHScqJFgHEd\",\"captured\":true,\"created\":1530178827,\"currency\":\"usd\",\"customer\":\"cus_D8D2ivo80g5Vga\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530178827', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(74, '20180674', '9', '', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":30},\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO KOLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChwgNKmGdRDZlHSdaHbsg49\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8D6DVOU8QpsYk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530179102,\"currency\":null,\"default_source\":\"card_1ChwgNKmGdRDZlHSbLsLZTFj\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"4D6C6C0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChwgUKmGdRDZlHSqtfyLbRN\",\"object\":\"charge\",\"amount\":7000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChwgVKmGdRDZlHSL2KlneXG\",\"captured\":true,\"created\":1530179102,\"currency\":\"usd\",\"customer\":\"cus_D8D6DVOU8QpsYk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '70', '1530179102', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(75, '20180675', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Chx1xKmGdRDZlHS0EXjiCO6\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8DSqzI07WvL85\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530180438,\"currency\":null,\"default_source\":\"card_1Chx1xKmGdRDZlHSpKhyc6g0\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"9683834\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chx22KmGdRDZlHSV5NzlMKv\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chx22KmGdRDZlHSGAuUABMR\",\"captured\":true,\"created\":1530180438,\"currency\":\"usd\",\"customer\":\"cus_D8DSqzI07WvL85\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530180438', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(76, '20180676', '9', '', '{\"0777d5c17d4066b82ab86dff8a46af6f\":{\"id\":\"163\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":7200,\"name\":\"Apple Bundle Offer\",\"shipping\":\"100\",\"tax\":\"10\",\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_163_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"0777d5c17d4066b82ab86dff8a46af6f\",\"subtotal\":7200},\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxFaKmGdRDZlHS5fCemdez\"}', '22', '', '102', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8DhjuekjHCIGb\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530181282,\"currency\":null,\"default_source\":\"card_1ChxFZKmGdRDZlHS5xX3Roi9\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"190470A\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxFfKmGdRDZlHS4am3Xt8m\",\"object\":\"charge\",\"amount\":751000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxFfKmGdRDZlHS61VejE6T\",\"captured\":true,\"created\":1530181283,\"currency\":\"usd\",\"customer\":\"cus_D8DhjuekjHCIGb\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '7510', '1530181282', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(77, '20180677', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxHUKmGdRDZlHS4fbebBri\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8DjzfK4bQUIwP\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530181401,\"currency\":null,\"default_source\":\"card_1ChxHUKmGdRDZlHSTxOQSKYP\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"FAA2A46\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxHZKmGdRDZlHSWLYXyI5X\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxHaKmGdRDZlHSWHD524k1\",\"captured\":true,\"created\":1530181401,\"currency\":\"usd\",\"customer\":\"cus_D8DjzfK4bQUIwP\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530181401', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(78, '20180678', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxJDKmGdRDZlHSfGN3GZOi\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8Dk7WbSuaVczl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530181508,\"currency\":null,\"default_source\":\"card_1ChxJDKmGdRDZlHSONMGHQzm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"1A7E5D6\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxJIKmGdRDZlHSOGKQYZ5R\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxJJKmGdRDZlHS01RHw9Jp\",\"captured\":true,\"created\":1530181508,\"currency\":\"usd\",\"customer\":\"cus_D8Dk7WbSuaVczl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530181508', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(79, '20180679', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":372}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxVfKmGdRDZlHSJmCcgvvz\"}', '24', '', '4', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8DxGvVW48LBRm\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530182282,\"currency\":null,\"default_source\":\"card_1ChxVfKmGdRDZlHST6QrnPAU\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"620992B\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxVnKmGdRDZlHSJTiHFiwV\",\"object\":\"charge\",\"amount\":40000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxVnKmGdRDZlHSF3J8sz7D\",\"captured\":true,\"created\":1530182283,\"currency\":\"usd\",\"customer\":\"cus_D8DxGvVW48LBRm\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '400', '1530182283', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(80, '20180680', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxaRKmGdRDZlHSp4zDMHzj\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8E2WK4xw1Itv3\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530182576,\"currency\":null,\"default_source\":\"card_1ChxaRKmGdRDZlHSOTgvBRpd\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"CBCCEB9\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxaXKmGdRDZlHSaO4oqBmz\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxaYKmGdRDZlHS9qrwpfcJ\",\"captured\":true,\"created\":1530182577,\"currency\":\"usd\",\"customer\":\"cus_D8E2WK4xw1Itv3\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530182577', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(81, '20180681', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxfWKmGdRDZlHS43KCGZLF\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8E7BqsA5Y74vR\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530182891,\"currency\":null,\"default_source\":\"card_1ChxfWKmGdRDZlHS9OD1hF2N\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"E3E3127\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxfbKmGdRDZlHSGlQaPCMw\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxfcKmGdRDZlHSZWgKcbpn\",\"captured\":true,\"created\":1530182891,\"currency\":\"usd\",\"customer\":\"cus_D8E7BqsA5Y74vR\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530182891', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(82, '20180682', '9', '', '{\"cedebb6e872f539bef8c3f919874e9d7\":{\"id\":\"183\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":186,\"name\":\"Corporis incididunt maiores molestias non aliqua Temporibus rerum fugit dolore dolorem facilis asperiores cillum dolorem earum\",\"shipping\":\"2\",\"tax\":12,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_183_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cedebb6e872f539bef8c3f919874e9d7\",\"subtotal\":186}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1ChxiZKmGdRDZlHSA0Aw2WnV\"}', '12', '', '2', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8EAN2zlduzNi1\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530183079,\"currency\":null,\"default_source\":\"card_1ChxiYKmGdRDZlHSi9eNe2FX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"developer.activeitzone@gmail.com\",\"invoice_prefix\":\"82683FB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChxidKmGdRDZlHSYz5Yumla\",\"object\":\"charge\",\"amount\":20000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChxieKmGdRDZlHSaKRdO7wl\",\"captured\":true,\"created\":1530183079,\"currency\":\"usd\",\"customer\":\"cus_D8EAN2zlduzNi1\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '200', '1530183079', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(83, '20180783', '7', '', '{\"a4a042cf4fd6bfb47701cbc8a1653ada\":{\"id\":\"171\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(224,166,15,1)\\\"}}\",\"price\":1176,\"name\":\"iPhone 6 (Gold)\",\"shipping\":\"15\",\"tax\":144,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_171_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a4a042cf4fd6bfb47701cbc8a1653ada\",\"subtotal\":1176}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CixlyKmGdRDZlHSVCrbqBIK\"}', '144', '', '15', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9GI4i7BSjSLvR\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530421619,\"currency\":null,\"default_source\":\"card_1CixlyKmGdRDZlHSRcGHHohA\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"B868B42\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Cixm4KmGdRDZlHSM8KUSv0N\",\"object\":\"charge\",\"amount\":133500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cixm4KmGdRDZlHSiJKdHvkA\",\"captured\":true,\"created\":1530421620,\"currency\":\"usd\",\"customer\":\"cus_D9GI4i7BSjSLvR\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1335', '1530421619', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(84, '20180784', '7', '', '{\"a4a042cf4fd6bfb47701cbc8a1653ada\":{\"id\":\"171\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1176,\"name\":\"iPhone 6 (Gold)\",\"shipping\":\"15\",\"tax\":144,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_171_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a4a042cf4fd6bfb47701cbc8a1653ada\",\"subtotal\":1176}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CixuCKmGdRDZlHSpHuRximM\"}', '144', '', '15', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9GRy1Lz43vyBc\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530422129,\"currency\":null,\"default_source\":\"card_1CixuCKmGdRDZlHSjbMi6GGp\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"0204AFD\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CixuIKmGdRDZlHSErvEIRck\",\"object\":\"charge\",\"amount\":133500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CixuIKmGdRDZlHSR3Zjfsgr\",\"captured\":true,\"created\":1530422130,\"currency\":\"usd\",\"customer\":\"cus_D9GRy1Lz43vyBc\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1335', '1530422129', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(85, '20180785', '21', '', '{\"8f85517967795eeef66c225f7883bdcb\":{\"id\":\"178\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":74.8,\"name\":\"RABBIT HEAD WATCH\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_178_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f85517967795eeef66c225f7883bdcb\",\"subtotal\":74.8}}', '{\"firstname\":\"pajezupebu\",\"lastname\":\"Burgess\",\"address1\":\"525 Oak Court\",\"address2\":\"Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem\",\"zip\":\"42072\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+499-60-2936405\",\"langlat\":\"(35.1172586, -89.9155414)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Ciy0CKmGdRDZlHSM7kWDSZ5\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9GXLvsTnIMwaO\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530422501,\"currency\":null,\"default_source\":\"card_1Ciy0CKmGdRDZlHSvK387PpB\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"23F302B\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Ciy0IKmGdRDZlHSHjxv0xKg\",\"object\":\"charge\",\"amount\":7480,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Ciy0IKmGdRDZlHS8bZF8RbM\",\"captured\":true,\"created\":1530422502,\"currency\":\"usd\",\"customer\":\"cus_D9GXLvsTnIMwaO\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '74.8', '1530422501', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(86, '20180786', '21', '', '{\"a4a042cf4fd6bfb47701cbc8a1653ada\":{\"id\":\"171\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1176,\"name\":\"iPhone 6 (Gold)\",\"shipping\":\"15\",\"tax\":144,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_171_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a4a042cf4fd6bfb47701cbc8a1653ada\",\"subtotal\":1176},\"9b8619251a19057cff70779273e95aa6\":{\"id\":\"130\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":79.2,\"name\":\"Suit Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_130_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9b8619251a19057cff70779273e95aa6\",\"subtotal\":79.2}}', '{\"firstname\":\"pajezupebu\",\"lastname\":\"Burgess\",\"address1\":\"525 Oak Court\",\"address2\":\"Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem\",\"zip\":\"42072\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+499-60-2936405\",\"langlat\":\"(35.1172586, -89.9155414)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CiyDyKmGdRDZlHSxAD1sNm0\"}', '144', '', '15', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9GlCqmjBn1Ivg\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530423355,\"currency\":null,\"default_source\":\"card_1CiyDyKmGdRDZlHS738cmed0\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"6F96192\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CiyE3KmGdRDZlHSNZhyeu0n\",\"object\":\"charge\",\"amount\":141420,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CiyE4KmGdRDZlHSR4gY26pj\",\"captured\":true,\"created\":1530423355,\"currency\":\"usd\",\"customer\":\"cus_D9GlCqmjBn1Ivg\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1414.2', '1530423355', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(87, '20180787', '21', '', '{\"a4a042cf4fd6bfb47701cbc8a1653ada\":{\"id\":\"171\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1176,\"name\":\"iPhone 6 (Gold)\",\"shipping\":\"15\",\"tax\":144,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_171_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a4a042cf4fd6bfb47701cbc8a1653ada\",\"subtotal\":1176}}', '{\"firstname\":\"pajezupebu\",\"lastname\":\"Burgess\",\"address1\":\"525 Oak Court\",\"address2\":\"Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem\",\"zip\":\"42072\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+499-60-2936405\",\"langlat\":\"(35.1172586, -89.9155414)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CiyMwKmGdRDZlHShKQYfdA5\"}', '144', '', '15', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9GuwMEU4HFTlh\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530423910,\"currency\":null,\"default_source\":\"card_1CiyMwKmGdRDZlHSghSKUoWI\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"EC4C51C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CiyN1KmGdRDZlHSKJpcXbQu\",\"object\":\"charge\",\"amount\":133500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CiyN1KmGdRDZlHSqdmEEmQA\",\"captured\":true,\"created\":1530423911,\"currency\":\"usd\",\"customer\":\"cus_D9GuwMEU4HFTlh\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1335', '1530423911', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(89, '20180789', '7', '', '{\"202cb962ac59075b964b07152d234b70\":{\"id\":\"123\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":300,\"name\":\"Kylie Beauty Bundle\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_123_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"202cb962ac59075b964b07152d234b70\",\"subtotal\":300}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CjjYXKmGdRDZlHSNq34kOKY\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DA3fVybQ3vgtU9\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530605298,\"currency\":null,\"default_source\":\"card_1CjjYXKmGdRDZlHSdBgsrXND\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer@shop.com\",\"invoice_prefix\":\"D3F1BB1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CjjYdKmGdRDZlHSBDxjQjDq\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CjjYdKmGdRDZlHS4oSXgDAz\",\"captured\":true,\"created\":1530605299,\"currency\":\"usd\",\"customer\":\"cus_DA3fVybQ3vgtU9\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '300', '1530605298', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(90, '20180790', 'guest', '90-KMrNxJZxc4', '{\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":6,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":21000}}', '{\"firstname\":\"Branden\",\"lastname\":\"Schroeder\",\"address1\":\"60 North Cowley Extension\",\"address2\":\"Iste incidunt exercitation laudantium laboris non iste cum ipsum officia enim et enim sunt voluptatem Eaque cumque dignissimos amet\",\"zip\":\"40767\",\"email\":\"dybuwazawe@mailinator.net\",\"phone\":\"+542-91-3505960\",\"langlat\":\"(41.8311329, -87.81490450000001)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '21000', '1530703163', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(91, '20180791', 'guest', '91-usdMXU4Lbi', '{\"82161242827b703e6acf9c726942a1e4\":{\"id\":\"175\",\"qty\":95,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":68,\"name\":\"Playboy London\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_175_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82161242827b703e6acf9c726942a1e4\",\"subtotal\":6460}}', '{\"firstname\":\"Amery\",\"lastname\":\"Mccarthy\",\"address1\":\"580 Old Boulevard\",\"address2\":\"Rem qui labore hic quisquam libero minima voluptatem Sed adipisicing eius sit consectetur culpa dolore\",\"zip\":\"85108\",\"email\":\"qukimozara@mailinator.com\",\"phone\":\"+438-54-1133948\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '6460', '1530708356', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(94, '20180794', 'guest', '94-Tfqhcf5vkW', '{\"202cb962ac59075b964b07152d234b70\":{\"id\":\"123\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":300,\"name\":\"Kylie Beauty Bundle\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_123_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"202cb962ac59075b964b07152d234b70\",\"subtotal\":300}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"+946-95-4774972\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CkP5DKmGdRDZlHSoQdYoxDQ\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAka6RK8bgxJyk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530764927,\"currency\":null,\"default_source\":\"card_1CkP5DKmGdRDZlHSaRg1Bdy3\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"16AA337\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkP5IKmGdRDZlHSihgdnkAr\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkP5IKmGdRDZlHSg8lEbkNz\",\"captured\":true,\"created\":1530764928,\"currency\":\"usd\",\"customer\":\"cus_DAka6RK8bgxJyk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '300', '1530764928', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(95, '20180795', '22', '', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":30}}', '{\"firstname\":\"Guest\",\"lastname\":\"Demo\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"+736-68-4155522\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CkP7SKmGdRDZlHSsW5AA4B6\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \r\n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkcwfRoa92K1o\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765067,\"currency\":null,\"default_source\":\"card_1CkP7SKmGdRDZlHSwLeDWb0B\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"marketing.activeitzone@gmail.com\",\"invoice_prefix\":\"2AA6ACA\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\r\n \r\n Charge Info: \r\n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkP7XKmGdRDZlHSxImhiK2K\",\"object\":\"charge\",\"amount\":3000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkP7YKmGdRDZlHSy8Y1T14d\",\"captured\":true,\"created\":1530765067,\"currency\":\"usd\",\"customer\":\"cus_DAkcwfRoa92K1o\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '30', '1530765068', '', '[{\"admin\":\"\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1609587625}]', 'ok'),
(96, '20180796', 'guest', '96-LSDbhPXaJO', '{\"8f85517967795eeef66c225f7883bdcb\":{\"id\":\"178\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":74.8,\"name\":\"RABBIT HEAD WATCH\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.2\\/uploads\\/product_image\\/product_178_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f85517967795eeef66c225f7883bdcb\",\"subtotal\":74.8}}', '{\"firstname\":\"Guest\",\"lastname\":\"Example\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"+546-50-8760234\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CkPAHKmGdRDZlHS4vyCAL4c\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkfZgDDVQCdPf\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765241,\"currency\":null,\"default_source\":\"card_1CkPAGKmGdRDZlHSG6mFSSic\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"3EFFD42\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkPAMKmGdRDZlHSgfpfIwd8\",\"object\":\"charge\",\"amount\":7480,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkPAMKmGdRDZlHSWpKzBlnG\",\"captured\":true,\"created\":1530765242,\"currency\":\"usd\",\"customer\":\"cus_DAkfZgDDVQCdPf\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '74.8', '1530765242', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(149, '201807149', '23', '', '{\"013d407166ec4fa56eb1e1f8cbe183b9\":{\"id\":\"138\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":31.8,\"name\":\"Roll-Up Button Down Shirt\",\"shipping\":\"10\",\"tax\":3.18,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_138_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"013d407166ec4fa56eb1e1f8cbe183b9\",\"subtotal\":31.8}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"usa\",\"address2\":\"usa\",\"zip\":\"10024\",\"email\":\"Demo@gmail.com\",\"phone\":\"1234567890\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co37SKmGdRDZlHSY1r9AG9P\"}', '3.18', '', '10', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEW9j8m4jCsniW\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531633812,\"currency\":null,\"default_source\":\"card_1Co37SKmGdRDZlHSByVcLXDg\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"Demo@gmail.com\",\"invoice_prefix\":\"CC11A57\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co37ZKmGdRDZlHSQ5jUO9aD\",\"object\":\"charge\",\"amount\":4498,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co37aKmGdRDZlHSfJnZvIV1\",\"captured\":true,\"created\":1531633813,\"currency\":\"usd\",\"customer\":\"cus_DEW9j8m4jCsniW\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '44.98', '1531633810', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(148, '201807148', '23', '', '{\"82aa4b0af34c2313a562076992e50aa3\":{\"id\":\"162\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":1000,\"name\":\"Macbook Pro 2017\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_162_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"82aa4b0af34c2313a562076992e50aa3\",\"subtotal\":1000}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"usa\",\"address2\":\"usa\",\"zip\":\"10024\",\"email\":\"Demo@gmail.com\",\"phone\":\"1234567890\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co35sKmGdRDZlHSoLv33Tui\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEW8sLvn5vm9qx\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531633714,\"currency\":null,\"default_source\":\"card_1Co35sKmGdRDZlHSnUcj08h0\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"Demo@gmail.com\",\"invoice_prefix\":\"7D29F50\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co360KmGdRDZlHSy0dWZVCx\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co360KmGdRDZlHS1P0lfA5c\",\"captured\":true,\"created\":1531633716,\"currency\":\"usd\",\"customer\":\"cus_DEW8sLvn5vm9qx\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1000', '1531633712', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(107, '201807107', '7', '', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO KOLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.2\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '40', '1531038537', '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(108, '201807108', '21', '', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(196,15,26,1)\\\"}}\",\"price\":40,\"name\":\"KOKO KOLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.2\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"pajezupebu\",\"lastname\":\"Burgess\",\"address1\":\"525 Oak Court\",\"address2\":\"Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem\",\"zip\":\"42072\",\"email\":\"customer12@shop.com\",\"phone\":\"+499-60-2936405\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '40', '1531038756', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(153, '201807153', 'guest', '153-oEVcWj5OwA', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":45,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":1350}}', '{\"firstname\":\"Beatrice\",\"lastname\":\"Leonard\",\"address1\":\"103 Second Lane\",\"address2\":\"Aut doloribus quasi quasi aliquam debitis nostrud omnis consequatur Non qui ducimus sit irure\",\"zip\":\"68686\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+477-82-9293004\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4JTKmGdRDZlHSZWFJKH7O\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXO8UgqbT8riK\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531638400,\"currency\":null,\"default_source\":\"card_1Co4JSKmGdRDZlHSESRSWbux\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"27400BB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4JaKmGdRDZlHSgic7F25G\",\"object\":\"charge\",\"amount\":135000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4JaKmGdRDZlHSiBRHLuZT\",\"captured\":true,\"created\":1531638402,\"currency\":\"usd\",\"customer\":\"cus_DEXO8UgqbT8riK\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1350', '1531638403', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(147, '201807147', '23', '', '{\"a8baa56554f96369ab93e4f3bb068c22\":{\"id\":\"142\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":794,\"name\":\"Apple iPhone-8-PLUS\",\"shipping\":\"200\",\"tax\":238.2,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_142_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a8baa56554f96369ab93e4f3bb068c22\",\"subtotal\":794}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"usa\",\"address2\":\"usa\",\"zip\":\"10024\",\"email\":\"Demo@gmail.com\",\"phone\":\"1234567890\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co31HKmGdRDZlHSpAXkWmId\"}', '238.2', '', '200', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEW321Elq13vGp\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531633431,\"currency\":null,\"default_source\":\"card_1Co31HKmGdRDZlHSYkYZrpdC\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"Demo@gmail.com\",\"invoice_prefix\":\"C38C9B4\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co31SKmGdRDZlHSAJeylIJl\",\"object\":\"charge\",\"amount\":123220,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co31SKmGdRDZlHSf30yhuED\",\"captured\":true,\"created\":1531633434,\"currency\":\"usd\",\"customer\":\"cus_DEW321Elq13vGp\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1232.2', '1531633431', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(152, '201807152', 'guest', '152-FFQEplFn0C', '{\"2a79ea27c279e471f4d180b08d62b00a\":{\"id\":\"155\",\"qty\":50,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":18.99,\"name\":\"BriLove Necklace Set\",\"shipping\":\"11\",\"tax\":0.3798,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_155_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"2a79ea27c279e471f4d180b08d62b00a\",\"subtotal\":949.5}}', '{\"firstname\":\"Blair\",\"lastname\":\"Haley\",\"address1\":\"709 South Cowley Parkway\",\"address2\":\"Possimus sit sit necessitatibus provident voluptatum quis consequuntur dolores\",\"zip\":\"16253\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+453-67-9487132\",\"langlat\":\"(47.649888, -117.40726210000003)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4HQKmGdRDZlHSLzMNei91\"}', '18.99', '', '550', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXM0LjJZPcvsr\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531638274,\"currency\":null,\"default_source\":\"card_1Co4HQKmGdRDZlHSuBBi6Vz2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"0238F91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4HXKmGdRDZlHShMtj5olj\",\"object\":\"charge\",\"amount\":151849,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4HYKmGdRDZlHSKRUKwuq9\",\"captured\":true,\"created\":1531638275,\"currency\":\"usd\",\"customer\":\"cus_DEXM0LjJZPcvsr\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1518.49', '1531638276', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(150, '201807150', 'guest', '150-Upsdbw7Auw', '{\"4c56ff4ce4aaf9573aa5dff913df997a\":{\"id\":\"121\",\"qty\":16,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":449.1,\"name\":\"ELLIOTT Formal Dining Set \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_121_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"4c56ff4ce4aaf9573aa5dff913df997a\",\"subtotal\":7185.6}}', '{\"firstname\":\"Yuli\",\"lastname\":\"Curry\",\"address1\":\"580 South Oak Extension\",\"address2\":\"Rerum officiis voluptate cum voluptatem ipsam ea eius eveniet et sit maiores reprehenderit perferendis accusamus\",\"zip\":\"62140\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+759-97-3182931\",\"langlat\":\"(40.77369600000001, -74.32561599999997)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co3tBKmGdRDZlHSvQUEj6ml\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEWxRJa4YCBnli\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531636771,\"currency\":null,\"default_source\":\"card_1Co3tBKmGdRDZlHS52QcSKfw\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"DAEEFE7\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co3tJKmGdRDZlHScmYUZM5W\",\"object\":\"charge\",\"amount\":718560,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co3tJKmGdRDZlHSSpuhrgJR\",\"captured\":true,\"created\":1531636773,\"currency\":\"usd\",\"customer\":\"cus_DEWxRJa4YCBnli\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '7185.6', '1531636774', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(142, '201807142', 'guest', '142-RTkCLqR7Jz', '{\"f7e6c85504ce6e82442c770f7c8606f0\":{\"id\":\"173\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":62,\"name\":\"THE WET SET\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_173_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"f7e6c85504ce6e82442c770f7c8606f0\",\"subtotal\":62},\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1210\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"123213\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co2xjKmGdRDZlHSuqdwEi2K\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEVzV8CiVMF3JR\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531633210,\"currency\":null,\"default_source\":\"card_1Co2xjKmGdRDZlHSqhgMPbV2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"0A1473D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co2xsKmGdRDZlHSkSBpfFUR\",\"object\":\"charge\",\"amount\":10200,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co2xsKmGdRDZlHSIqwTUp4j\",\"captured\":true,\"created\":1531633212,\"currency\":\"usd\",\"customer\":\"cus_DEVzV8CiVMF3JR\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '102', '1531633208', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL);
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(151, '201807151', 'guest', '151-Tds4oD1yKF', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":44,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":1760}}', '{\"firstname\":\"Olivia\",\"lastname\":\"Mathis\",\"address1\":\"697 Cowley Freeway\",\"address2\":\"Similique quia ad accusantium delectus sapiente omnis pariatur Aliqua Autem et\",\"zip\":\"13416\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+667-58-9297672\",\"langlat\":\"(37.5621565, -122.28612190000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4FSKmGdRDZlHSsQnqBiRk\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXKDw6dv3R5RD\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531638152,\"currency\":null,\"default_source\":\"card_1Co4FSKmGdRDZlHSXSmaTZdT\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"C113E19\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4FaKmGdRDZlHS5lkLqCdC\",\"object\":\"charge\",\"amount\":176000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4FaKmGdRDZlHSc0s7eye9\",\"captured\":true,\"created\":1531638154,\"currency\":\"usd\",\"customer\":\"cus_DEXKDw6dv3R5RD\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1760', '1531638155', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(134, '201807134', 'guest', '134-ymShOBdhzY', '{\"ca46c1b9512a7a8315fa3c5a946e8265\":{\"id\":\"214\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(31,29,29,1)\\\"}}\",\"price\":535500,\"name\":\"Lamborghini Aventador LP 750-4 Superveloce\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_214_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ca46c1b9512a7a8315fa3c5a946e8265\",\"subtotal\":535500}}', '{\"firstname\":\"Demo\",\"lastname\":\"test\",\"address1\":\"usa\",\"address2\":\"usa\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"0987654321\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co25QKmGdRDZlHSqE9NOhwW\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEV5kXwPPPmIQ3\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531629842,\"currency\":null,\"default_source\":\"card_1Co25PKmGdRDZlHStSYIFv4O\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"995D652\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co25YKmGdRDZlHSKJ8i2JOq\",\"object\":\"charge\",\"amount\":53550000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co25YKmGdRDZlHShwSn6L8O\",\"captured\":true,\"created\":1531629844,\"currency\":\"usd\",\"customer\":\"cus_DEV5kXwPPPmIQ3\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '535500', '1531629840', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(154, '201807154', 'guest', '154-aw8M5YvsRc', '{\"3644a684f98ea8fe223c713b77189a77\":{\"id\":\"200\",\"qty\":600,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12.97,\"name\":\"Women\'s Elegant Envelope Clutch\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_200_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3644a684f98ea8fe223c713b77189a77\",\"subtotal\":7782}}', '{\"firstname\":\"Joshua\",\"lastname\":\"Camacho\",\"address1\":\"273 Second Freeway\",\"address2\":\"Quia neque sit et perferendis ea occaecat magna in esse ipsam qui est natus aperiam elit\",\"zip\":\"13988\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+119-17-9551886\",\"langlat\":\"(37.5621565, -122.28612190000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4QxKmGdRDZlHS0VzBFAMl\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"1\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXWuLNePFLLPA\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531638865,\"currency\":null,\"default_source\":\"card_1Co4QwKmGdRDZlHSsU2L5Noh\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"D60D469\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4R4KmGdRDZlHSxnVEaPBn\",\"object\":\"charge\",\"amount\":778200,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4R4KmGdRDZlHS7ZYjUeUG\",\"captured\":true,\"created\":1531638866,\"currency\":\"usd\",\"customer\":\"cus_DEXWuLNePFLLPA\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '7782', '1531638867', '', '[{\"vendor\":\"1\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(155, '201807155', 'guest', '155-tAQZAGC0Fj', '{\"63dc7ed1010d3c3b8269faf0ba7491d4\":{\"id\":\"217\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"size\\\",\\\"value\\\":null},\\\"choice_1\\\":{\\\"title\\\":\\\"Top Note\\\",\\\"value\\\":null},\\\"choice_3\\\":{\\\"title\\\":\\\"Exp\\\",\\\"value\\\":null},\\\"choice_4\\\":{\\\"title\\\":\\\"Exp 2\\\",\\\"value\\\":null}}\",\"price\":88.95,\"name\":\"Handmade Leather Oxfords Shoes\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_217_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"63dc7ed1010d3c3b8269faf0ba7491d4\",\"subtotal\":88.95}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"demo@gmail.com\",\"phone\":\"087654321\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"vendor\":\"17\",\"status\":\"paid\"}]', NULL, NULL, '88.95', '1531638930', '', '[{\"vendor\":\"17\",\"status\":\"delivered\",\"comment\":\"Done\",\"delivery_time\":1531639223}]', 'ok'),
(156, '201807156', 'guest', '156-5hRqZMn18D', '{\"8f85517967795eeef66c225f7883bdcb\":{\"id\":\"178\",\"qty\":56,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":74.8,\"name\":\"RABBIT HEAD WATCH\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_178_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f85517967795eeef66c225f7883bdcb\",\"subtotal\":4188.8}}', '{\"firstname\":\"Caleb\",\"lastname\":\"James\",\"address1\":\"215 West Second Court\",\"address2\":\"Culpa asperiores et adipisci enim repudiandae amet\",\"zip\":\"96690\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+911-39-9172614\",\"langlat\":\"(25.8815702, -80.2878627)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4hMKmGdRDZlHShQtRwSKH\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXnQG4PewuBmZ\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531639882,\"currency\":null,\"default_source\":\"card_1Co4hMKmGdRDZlHScnRqfCyV\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"9228F91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4hVKmGdRDZlHSB6d4X9h2\",\"object\":\"charge\",\"amount\":418880,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4hVKmGdRDZlHSi4fjAGuG\",\"captured\":true,\"created\":1531639885,\"currency\":\"usd\",\"customer\":\"cus_DEXnQG4PewuBmZ\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '4188.8', '1531639886', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(157, '201807157', 'guest', '157-zotfhWRyEd', '{\"202cb962ac59075b964b07152d234b70\":{\"id\":\"123\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":300,\"name\":\"Kylie Beauty Bundle\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_123_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"202cb962ac59075b964b07152d234b70\",\"subtotal\":600}}', '{\"firstname\":\"Gage\",\"lastname\":\"Mendoza\",\"address1\":\"824 Rocky Fabien Extension\",\"address2\":\"Voluptatibus magni neque eaque labore rerum eligendi expedita sunt consequuntur amet sed et sed dolore pariatur Molestiae qui ullam unde\",\"zip\":\"13516\",\"email\":\"tokepali@mailinator.com\",\"phone\":\"+466-73-1965800\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4nfKmGdRDZlHSSTuw5Y9x\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXtFv5kCkGWAq\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531640273,\"currency\":null,\"default_source\":\"card_1Co4nfKmGdRDZlHSVtQrPa3Z\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"05A5609\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4nnKmGdRDZlHS1HaGX8iG\",\"object\":\"charge\",\"amount\":60000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4nnKmGdRDZlHSpVWWIlPn\",\"captured\":true,\"created\":1531640275,\"currency\":\"usd\",\"customer\":\"cus_DEXtFv5kCkGWAq\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '600', '1531640276', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(158, '201807158', 'guest', '158-Tt66Xig6Xo', '{\"202cb962ac59075b964b07152d234b70\":{\"id\":\"123\",\"qty\":26,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":300,\"name\":\"Kylie Beauty Bundle\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_123_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"202cb962ac59075b964b07152d234b70\",\"subtotal\":7800}}', '{\"firstname\":\"Dahlia\",\"lastname\":\"Moore\",\"address1\":\"99 South Hague Street\",\"address2\":\"Quia ipsum irure commodo alias est eaque voluptatem debitis quisquam error consequatur eiusmod quis ipsum et incididunt\",\"zip\":\"75135\",\"email\":\"curu@mailinator.net\",\"phone\":\"+118-25-3032667\",\"langlat\":\"(39.9528279, -83.07399199999998)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4q4KmGdRDZlHSldgPpi2r\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXwGNuMj8neHO\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531640423,\"currency\":null,\"default_source\":\"card_1Co4q3KmGdRDZlHSqnHDkcIL\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"710615D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4qEKmGdRDZlHSi2JYExRJ\",\"object\":\"charge\",\"amount\":780000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4qEKmGdRDZlHSLq6vqAuT\",\"captured\":true,\"created\":1531640426,\"currency\":\"usd\",\"customer\":\"cus_DEXwGNuMj8neHO\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '7800', '1531640427', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(159, '201807159', 'guest', '159-m3LCgbTpa5', '{\"f7e6c85504ce6e82442c770f7c8606f0\":{\"id\":\"173\",\"qty\":49,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":62,\"name\":\"THE WET SET\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_173_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"f7e6c85504ce6e82442c770f7c8606f0\",\"subtotal\":3038}}', '{\"firstname\":\"Dillon\",\"lastname\":\"Scott\",\"address1\":\"22 White Milton Street\",\"address2\":\"Aut ipsam quis ex consectetur elit voluptate voluptatem ullam excepteur nihil ipsum\",\"zip\":\"82547\",\"email\":\"jyfazen@mailinator.net\",\"phone\":\"+394-12-8603537\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4tlKmGdRDZlHSUmzhbfPp\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEXzFpKIyy8lwU\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531640651,\"currency\":null,\"default_source\":\"card_1Co4tkKmGdRDZlHSGsKKCzgj\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"8FCC169\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4tsKmGdRDZlHSd3jETckY\",\"object\":\"charge\",\"amount\":303800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4ttKmGdRDZlHSNJOETyqy\",\"captured\":true,\"created\":1531640652,\"currency\":\"usd\",\"customer\":\"cus_DEXzFpKIyy8lwU\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '3038', '1531640653', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(160, '201807160', 'guest', '160-LU0r6I4prj', '{\"a0a080f42e6f13b3a2df133f073095dd\":{\"id\":\"122\",\"qty\":20,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":80,\"name\":\"Best Makeup deal\",\"shipping\":\"0\",\"tax\":26.4,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_122_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a0a080f42e6f13b3a2df133f073095dd\",\"subtotal\":1600}}', '{\"firstname\":\"Shelley\",\"lastname\":\"Savage\",\"address1\":\"47 East White Hague Boulevard\",\"address2\":\"Aliquip quaerat officia in dolor neque nulla voluptates omnis et maxime aut aut fugiat voluptas provident nulla\",\"zip\":\"60893\",\"email\":\"zidewepex@mailinator.net\",\"phone\":\"+476-37-9361359\",\"langlat\":\"(52.0704978, 4.3006999000000405)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co4w0KmGdRDZlHSS7Wbmsnb\"}', '528', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEY2ClJTNAIfPP\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531640789,\"currency\":null,\"default_source\":\"card_1Co4vzKmGdRDZlHS6riE4kBs\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"835C151\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co4w7KmGdRDZlHSUFqClLxH\",\"object\":\"charge\",\"amount\":212800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co4w7KmGdRDZlHS6gg2aGep\",\"captured\":true,\"created\":1531640791,\"currency\":\"usd\",\"customer\":\"cus_DEY2ClJTNAIfPP\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '2128', '1531640792', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(161, '201807161', 'guest', '161-b2hNGYMHbZ', '{\"0aa1883c6411f7873cb83dacb17b0afc\":{\"id\":\"191\",\"qty\":100,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":56.99,\"name\":\"Classic Casual Comfortable Dress Shoes\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_191_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"0aa1883c6411f7873cb83dacb17b0afc\",\"subtotal\":5699}}', '{\"firstname\":\"Jael\",\"lastname\":\"Whitfield\",\"address1\":\"67 White Oak Court\",\"address2\":\"Non sint ea error minima exercitationem ad et odit pariatur\",\"zip\":\"22207\",\"email\":\"saide.mahid21@gmail.com\",\"phone\":\"+453-64-1423051\",\"langlat\":\"(41.1112236, -73.52905520000002)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Co51JKmGdRDZlHSoTQ7VXbR\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', NULL, NULL, '5699', '1531641121', '', '[{\"vendor\":\"16\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1532335554}]', 'ok'),
(170, '201807170', '23', '', '{\"a2557a7b2e94197ff767970b67041697\":{\"id\":\"189\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38.98,\"name\":\"Lightweight Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_189_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a2557a7b2e94197ff767970b67041697\",\"subtotal\":38.98}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"usa\",\"address2\":\"\",\"zip\":\"10024\",\"email\":\"Demo@gmail.com\",\"phone\":\"1234567890\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CrIyyKmGdRDZlHS1Cv0U6jt\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DHskxAxrBGhfyj\",\"object\":\"customer\",\"account_balance\":0,\"created\":1532409776,\"currency\":null,\"default_source\":\"card_1CrIyyKmGdRDZlHS71bj3OGF\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"Demo@gmail.com\",\"invoice_prefix\":\"9A25972\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CrIz8KmGdRDZlHSJvunOCNL\",\"object\":\"charge\",\"amount\":3898,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CrIz8KmGdRDZlHSnPOJPk5v\",\"captured\":true,\"created\":1532409778,\"currency\":\"usd\",\"customer\":\"cus_DHskxAxrBGhfyj\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '38.98', '1532409777', '', '[{\"vendor\":\"16\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(171, '201807171', '23', '', '{\"cfecdb276f634854f3ef915e2e980c31\":{\"id\":\"190\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":99.84,\"name\":\"Withings Lightweight Watch\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_190_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"cfecdb276f634854f3ef915e2e980c31\",\"subtotal\":99.84}}', '{\"firstname\":\"Demo\",\"lastname\":\"Test\",\"address1\":\"usa\",\"address2\":\"\",\"zip\":\"10024\",\"email\":\"Demo@gmail.com\",\"phone\":\"1234567890\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"16\",\"status\":null}]', NULL, NULL, '99.84', '1532410812', '', '[{\"vendor\":\"16\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1532498754}]', 'ok'),
(169, '201807169', '7', '', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"admin\":\"\",\"status\":\"due\"}]', 'none', NULL, '40', '1532344043', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(165, '201807165', 'guest', '165-js67aTI7lb', '{\"bf8229696f7a3bb4700cfddef19fa23f\":{\"id\":\"174\",\"qty\":500,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":30,\"name\":\"MAKEUP BAG\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_174_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"bf8229696f7a3bb4700cfddef19fa23f\",\"subtotal\":15000}}', '{\"firstname\":\"Basil\",\"lastname\":\"May\",\"address1\":\"993 Oak Drive\",\"address2\":\"\",\"zip\":\"18677\",\"email\":\"fupi@mailinator.net\",\"phone\":\"+138-14-2020951\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CoSybKmGdRDZlHSQfdIfHdD\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEwsDhIUU4oFBT\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531733207,\"currency\":null,\"default_source\":\"card_1CoSyaKmGdRDZlHScqFL3lCJ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"71443F3\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CoSyjKmGdRDZlHSJTGZqOoR\",\"object\":\"charge\",\"amount\":1500000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CoSyjKmGdRDZlHS1pi4VT5t\",\"captured\":true,\"created\":1531733209,\"currency\":\"usd\",\"customer\":\"cus_DEwsDhIUU4oFBT\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '15000', '1531733208', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(168, '201807168', '7', '', '{\"7eabe3a1649ffa2b3ff8c02ebfd5659f\":{\"id\":\"206\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":399,\"name\":\"Wireless Bluetooth Headphones With Microphone\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_206_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"7eabe3a1649ffa2b3ff8c02ebfd5659f\",\"subtotal\":399}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"vendor\":\"16\",\"status\":\"paid\"}]', NULL, NULL, '399', '1532334222', '', '[{\"vendor\":\"16\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1532335515}]', 'ok'),
(180, '201807180', 'guest', '180-9XmZ8X4QLg', '{\"85d8ce590ad8981ca2c8286f79f59954\":{\"id\":\"197\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":23.99,\"name\":\"Floral Print Crop Cami Top\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_197_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"85d8ce590ad8981ca2c8286f79f59954\",\"subtotal\":23.99}}', '{\"firstname\":\"sdcf\",\"lastname\":\"fgh\",\"address1\":\"dfgh\",\"address2\":\"fgh\",\"zip\":\"asdfg\",\"email\":\"member@gmail.com\",\"phone\":\"8765432\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"1\",\"status\":\"paid\"}]', 'none', '1532469600', '23.99', '1532511438', '', '[{\"vendor\":\"1\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(174, '201807174', '7', '', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'none', '1532383200', '40', '1532415524', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(175, '201807175', '7', '', '{\"a0a080f42e6f13b3a2df133f073095dd\":{\"id\":\"122\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":80,\"name\":\"Best Makeup deal\",\"shipping\":\"0\",\"tax\":26.4,\"image\":\"http:\\/\\/localhost\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_122_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a0a080f42e6f13b3a2df133f073095dd\",\"subtotal\":80}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '26.4', '', '0', 'sslcommerz', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'none', '1532383200', '106.4', '1532415744', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(176, '201807176', NULL, '', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(196,15,26,1)\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"sdcf\",\"lastname\":\"fgh\",\"address1\":\"dfgh\",\"address2\":\"fgh\",\"zip\":\"asdfg\",\"email\":\"member@gmail.com\",\"phone\":\"8765432\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'none', '1532383200', '40', '1532423210', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(177, '201807177', NULL, '', '{\"84d9ee44e457ddef7f2c4f25dc8fa865\":{\"id\":\"199\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":34.98,\"name\":\"Women\'s Wedge Sandals Pearls \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_199_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"84d9ee44e457ddef7f2c4f25dc8fa865\",\"subtotal\":34.98}}', '{\"firstname\":\"sdcf\",\"lastname\":\"fgh\",\"address1\":\"dfgh\",\"address2\":\"fgh\",\"zip\":\"asdfg\",\"email\":\"member@gmail.com\",\"phone\":\"8765432\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"1\",\"status\":\"paid\"}]', 'none', '1532469600', '34.98', '1532496572', '', '[{\"vendor\":\"1\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(178, '201807178', '22', '', '{\"85d8ce590ad8981ca2c8286f79f59954\":{\"id\":\"197\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":23.99,\"name\":\"Floral Print Crop Cami Top\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_197_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"85d8ce590ad8981ca2c8286f79f59954\",\"subtotal\":23.99}}', '{\"firstname\":\"Guest\",\"lastname\":\"Demo\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"+736-68-4155522\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"1\",\"status\":\"paid\"}]', 'none', '1532469600', '23.99', '1532497464', '', '[{\"vendor\":\"1\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(179, '201807179', '22', '', '{\"63dc7ed1010d3c3b8269faf0ba7491d4\":{\"id\":\"217\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"size\\\",\\\"value\\\":null},\\\"choice_1\\\":{\\\"title\\\":\\\"Top Note\\\",\\\"value\\\":null},\\\"choice_3\\\":{\\\"title\\\":\\\"Exp\\\",\\\"value\\\":null},\\\"choice_4\\\":{\\\"title\\\":\\\"Exp 2\\\",\\\"value\\\":null}}\",\"price\":88.95,\"name\":\"Handmade Leather Oxfords Shoes\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_217_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"63dc7ed1010d3c3b8269faf0ba7491d4\",\"subtotal\":88.95}}', '{\"firstname\":\"Guest\",\"lastname\":\"Demo\",\"address1\":\"USA\",\"address2\":\"USA\",\"zip\":\"10024\",\"email\":\"marketing.activeitzone@gmail.com\",\"phone\":\"+736-68-4155522\",\"langlat\":\"(37.09024, -95.71289100000001)\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"17\",\"status\":\"paid\"}]', 'none', '1532469600', '88.95', '1532497871', '', '[{\"vendor\":\"17\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(181, '201807181', 'guest', '181-BKDb2Gvss5', '{\"0e65972dce68dad4d52d063967f0a705\":{\"id\":\"198\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":34.99,\"name\":\"Comfort Fit Stretch Slim Pant\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_198_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"0e65972dce68dad4d52d063967f0a705\",\"subtotal\":34.99}}', '{\"firstname\":\"sdcf\",\"lastname\":\"fgh\",\"address1\":\"dfgh\",\"address2\":\"\",\"zip\":\"asdfg\",\"email\":\"member@gmail.com\",\"phone\":\"8765432\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"vendor\":\"1\",\"status\":\"paid\"}]', 'none', '1532469600', '34.99', '1532512350', '', '[{\"vendor\":\"1\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(182, '201807182', 'guest', '182-EyvEXjaXKu', '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(196,15,26,1)\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.105\\/shop\\/v1.5.3\\/main\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"sdcf\",\"lastname\":\"fgh\",\"address1\":\"dfgh\",\"address2\":\"\",\"zip\":\"asdfg\",\"email\":\"member@gmail.com\",\"phone\":\"8765432\",\"langlat\":\"\",\"payment_type\":\"sslcommerz\"}', '0', '', '0', 'sslcommerz', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'none', '1532469600', '40', '1532514006', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(186, '201903186', 'guest', '186-eYwKc9q5xi', '{\"060ad92489947d410d897474079c1477\":{\"id\":\"221\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":-100,\"name\":\"Jumanji\",\"shipping\":\"0\",\"tax\":480,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_221_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"060ad92489947d410d897474079c1477\",\"subtotal\":-100}}', '{\"firstname\":\"f dsfsdfa\",\"lastname\":\"ds fdsf\",\"address1\":\"dsf dsf\",\"address2\":\"ds fsdaf \",\"zip\":\" dasfasf\",\"email\":\"we fsaf \",\"phone\":\" sdfdsf \",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '480', '', '0', 'cash_on_delivery', '[{\"vendor\":\"18\",\"status\":\"due\"}]', '', NULL, '380', '1554033364', '', '[{\"vendor\":\"18\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(185, '201903185', 'guest', '185-sXQPw3R4P3', '{\"ec8ce6abb3e952a85b8551ba726a1227\":{\"id\":\"220\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":195,\"name\":\"Pxc\",\"shipping\":\"24\",\"tax\":8.75,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_220_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8ce6abb3e952a85b8551ba726a1227\",\"subtotal\":195}}', '{\"firstname\":\"f dasf\",\"lastname\":\"ds fdas\",\"address1\":\"df gdas\",\"address2\":\"wdfg d2\",\"zip\":\"re dfg\",\"email\":\"wre gdg\",\"phone\":\"e gdfg\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1EK1TUKmGdRDZlHSdqt9l9Ej\"}', '8.75', '', '24', 'stripe', '[{\"vendor\":\"18\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Encj4BUfFPecD9\",\"object\":\"customer\",\"account_balance\":0,\"created\":1554030322,\"currency\":null,\"default_source\":\"card_1EK1TTKmGdRDZlHSrjMeijpG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"E15EBF8D\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1EK1TcKmGdRDZlHSvrUGgsrA\",\"object\":\"charge\",\"amount\":22775,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1EK1TcKmGdRDZlHS8zbMFcZT\",\"billing_details\":{},\"captured\":true,\"created\":1554030324,\"currency\":\"usd\",\"customer\":\"cus_Encj4BUfFPecD9\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1EK1TcKmGdRDZlHSvrUGgsrA\\/rcpt_EncjBacb8GHdaeRbnZSmjmScm534Yqc\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '227.75', '1554030325', '', '[{\"vendor\":\"18\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(187, '201903187', '24', NULL, '{\"060ad92489947d410d897474079c1477\":{\"id\":\"221\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":-100,\"name\":\"Jumanji\",\"shipping\":\"0\",\"tax\":480,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_221_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"060ad92489947d410d897474079c1477\",\"subtotal\":-100}}', '{\"firstname\":\"Hridoy\",\"lastname\":\"Mahmud\",\"address1\":\"Dhaka\",\"address2\":\"Uttara\",\"zip\":\"1122\",\"email\":\"hridoymahmud71@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '480', '', '0', 'cash_on_delivery', '[{\"vendor\":\"18\",\"status\":\"due\"}]', '', NULL, '380', '1554033644', '', '[{\"vendor\":\"18\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(188, '201904188', '24', NULL, '{\"ed3d2c21991e3bef5e069713af9fa6ca\":{\"id\":\"98\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38,\"name\":\"Classified php script\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_98_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ed3d2c21991e3bef5e069713af9fa6ca\",\"subtotal\":38}}', '{\"firstname\":\"Hridoy\",\"lastname\":\"Mahmud\",\"address1\":\"Dhaka\",\"address2\":\"Uttara\",\"zip\":\"1122\",\"email\":\"hridoymahmud71@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '38', '1554103346', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(189, '201904189', '24', NULL, '{\"ed3d2c21991e3bef5e069713af9fa6ca\":{\"id\":\"98\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38,\"name\":\"Classified php script\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_98_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ed3d2c21991e3bef5e069713af9fa6ca\",\"subtotal\":38}}', '{\"firstname\":\"Hridoy\",\"lastname\":\"Mahmud\",\"address1\":\"Dhaka\",\"address2\":\"Uttara\",\"zip\":\"1122\",\"email\":\"hridoymahmud71@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1EKKVIKmGdRDZlHSxXEJ1yYr\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_EnwOf780fYybLg\",\"object\":\"customer\",\"account_balance\":0,\"created\":1554103472,\"currency\":null,\"default_source\":\"card_1EKKVIKmGdRDZlHSh8p92JCS\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"hridoymahmud71@gmail.com\",\"invoice_prefix\":\"E05D8274\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1EKKVRKmGdRDZlHSG1N7C2jq\",\"object\":\"charge\",\"amount\":3800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1EKKVSKmGdRDZlHSOZf6QmTI\",\"billing_details\":{},\"captured\":true,\"created\":1554103473,\"currency\":\"usd\",\"customer\":\"cus_EnwOf780fYybLg\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1EKKVRKmGdRDZlHSG1N7C2jq\\/rcpt_EnwOIsAmjOg4FqfAPAm1OG4xdhRY251\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '38', '1554103474', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok');
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(190, '201904190', '24', NULL, '{\"ed3d2c21991e3bef5e069713af9fa6ca\":{\"id\":\"98\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38,\"name\":\"Classified php script\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_v1.5.4\\/uploads\\/product_image\\/product_98_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ed3d2c21991e3bef5e069713af9fa6ca\",\"subtotal\":38}}', '{\"firstname\":\"Hridoy\",\"lastname\":\"Mahmud\",\"address1\":\"Dhaka\",\"address2\":\"Uttara\",\"zip\":\"1122\",\"email\":\"hridoymahmud71@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '38', '1554103623', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(193, '201906193', '24', NULL, '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"firstname\":\"H\",\"lastname\":\"M\",\"address1\":\"USA\",\"address2\":\"NY\",\"zip\":\"1122\",\"email\":\"hm@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '40', '1560848821', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(194, '201906194', '24', NULL, '{\"f899139df5e1059396431415e770c6dd\":{\"id\":\"100\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":20,\"name\":\"3D Impact\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop\\/uploads\\/product_image\\/product_100_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"f899139df5e1059396431415e770c6dd\",\"subtotal\":20}}', '{\"firstname\":\"H\",\"lastname\":\"M\",\"address1\":\"USA\",\"address2\":\"NY\",\"zip\":\"1122\",\"email\":\"hm@gmail.com\",\"phone\":\"1234\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"paid\"}]', '', NULL, '20', '1560853989', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(195, '201910195', '25', NULL, '{\"9cfdf10e8fc047a44b08ed031e1f0ed1\":{\"id\":\"226\",\"qty\":4,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(37,27,54,1)\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"size\\\",\\\"value\\\":[\\\"M\\\",\\\"L\\\"]},\\\"choice_1\\\":{\\\"title\\\":\\\"Quality\\\",\\\"value\\\":\\\"brand new\\\"}}\",\"price\":27,\"name\":\"test product\",\"shipping\":\"2\",\"tax\":\"1\",\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/shop_2.0\\/uploads\\/product_image\\/product_226_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9cfdf10e8fc047a44b08ed031e1f0ed1\",\"subtotal\":108}}', '{\"firstname\":\"tokegidov\",\"lastname\":\"Price\",\"address1\":\"60 Second Court\",\"address2\":\"Eaque cillum ut a eu\",\"zip\":\"46284\",\"email\":\"lolodag@mailinator.net\",\"phone\":\"+ 798-6429\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '4', '', '8', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', '', NULL, '120', '1571652104', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(197, '201912197', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoQZsKmGdRDZlHSrwKundEc\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL6nVC7jab97jC\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576052993,\"currency\":null,\"default_source\":\"card_1FoQZsKmGdRDZlHSjsA9fFFG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"9FA52364\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoQZyKmGdRDZlHSLHXDXEZN\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoQZzKmGdRDZlHShPgPO8DQ\",\"billing_details\":{},\"captured\":true,\"created\":1576052994,\"currency\":\"usd\",\"customer\":\"cus_GL6nVC7jab97jC\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoQZsKmGdRDZlHSjsA9fFFG\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoQZyKmGdRDZlHSLHXDXEZN\\/rcpt_GL6nvypngSdRxdkd9ez8obPuGZLDNj0\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576052995', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(198, '201912198', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoRoFKmGdRDZlHS7Itjgqmf\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL84S9wB6Mv486\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576057727,\"currency\":null,\"default_source\":\"card_1FoRoFKmGdRDZlHSZjYn7MhV\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"9AB81220\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoRoKKmGdRDZlHSqvFfgVuk\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoRoKKmGdRDZlHSZVK059m4\",\"billing_details\":{},\"captured\":true,\"created\":1576057728,\"currency\":\"usd\",\"customer\":\"cus_GL84S9wB6Mv486\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoRoFKmGdRDZlHSZjYn7MhV\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoRoKKmGdRDZlHSqvFfgVuk\\/rcpt_GL84rKmUZqVHKkBsUUYz0JsRq4wLa0n\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576057728', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(199, '201912199', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoS6sKmGdRDZlHSah4LcqM5\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL8NNtKQCHUacK\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576058882,\"currency\":null,\"default_source\":\"card_1FoS6sKmGdRDZlHSrQYLXv4s\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"38656152\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoS6xKmGdRDZlHSrVaeb56U\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoS6xKmGdRDZlHSPCjmn0cF\",\"billing_details\":{},\"captured\":true,\"created\":1576058883,\"currency\":\"usd\",\"customer\":\"cus_GL8NNtKQCHUacK\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoS6sKmGdRDZlHSrQYLXv4s\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoS6xKmGdRDZlHSrVaeb56U\\/rcpt_GL8NjugJy4r724qB1MxtiRgY43SBdUT\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576058884', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(200, '201912200', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSD9KmGdRDZlHSuAv8hSC1\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL8U46Ac3ufhbN\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576059272,\"currency\":null,\"default_source\":\"card_1FoSD9KmGdRDZlHSX23OHipl\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"0304385E\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoSDEKmGdRDZlHSOfhhxF8x\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoSDEKmGdRDZlHSiZg21doB\",\"billing_details\":{},\"captured\":true,\"created\":1576059272,\"currency\":\"usd\",\"customer\":\"cus_GL8U46Ac3ufhbN\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSD9KmGdRDZlHSX23OHipl\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoSDEKmGdRDZlHSOfhhxF8x\\/rcpt_GL8UjdJv4VLfPultue4EKm8tFwOVsjW\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576059273', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(201, '201912201', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSK7KmGdRDZlHSRkcq4TB7\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL8b7xvnR51eLJ\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576059703,\"currency\":null,\"default_source\":\"card_1FoSK7KmGdRDZlHSPZyYB4pX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"6F953911\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoSKCKmGdRDZlHSN1TWgFNo\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoSKCKmGdRDZlHSRGNdLt6d\",\"billing_details\":{},\"captured\":true,\"created\":1576059704,\"currency\":\"usd\",\"customer\":\"cus_GL8b7xvnR51eLJ\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSK7KmGdRDZlHSPZyYB4pX\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoSKCKmGdRDZlHSN1TWgFNo\\/rcpt_GL8bF5jlVtHUyXibJ6GeQfUqsaz1t6l\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576059705', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(202, '201912202', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSVwKmGdRDZlHSGCr5WfhA\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL8n5eXvySdGql\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576060436,\"currency\":null,\"default_source\":\"card_1FoSVwKmGdRDZlHSC71Ji75j\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"005247E5\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoSW1KmGdRDZlHSuFVVmGIo\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoSW1KmGdRDZlHSUrhuEeau\",\"billing_details\":{},\"captured\":true,\"created\":1576060437,\"currency\":\"usd\",\"customer\":\"cus_GL8n5eXvySdGql\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSVwKmGdRDZlHSC71Ji75j\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoSW1KmGdRDZlHSuFVVmGIo\\/rcpt_GL8nAo6y9rp2mnD1WEGXMYMGf0sO1ZD\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576060437', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(203, '201912203', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSh6KmGdRDZlHSwnMDuB38\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL8zvwFklcsNuB\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576061128,\"currency\":null,\"default_source\":\"card_1FoSh6KmGdRDZlHS4eU6BZac\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"66AD629E\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoShBKmGdRDZlHSxu78CLho\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoShBKmGdRDZlHSi7YXTDfx\",\"billing_details\":{},\"captured\":true,\"created\":1576061129,\"currency\":\"usd\",\"customer\":\"cus_GL8zvwFklcsNuB\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSh6KmGdRDZlHS4eU6BZac\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoShBKmGdRDZlHSxu78CLho\\/rcpt_GL8zhu6myiDnO7EUiX6xFdVJaVN0KT1\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576061130', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(204, '201912204', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSkTKmGdRDZlHSw2fRtN7A\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL92cROcQygOPP\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576061337,\"currency\":null,\"default_source\":\"card_1FoSkSKmGdRDZlHSSP0A4tUJ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"91E2C9EB\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoSkXKmGdRDZlHS5yTXumYH\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoSkYKmGdRDZlHSTcZ6NwT5\",\"billing_details\":{},\"captured\":true,\"created\":1576061337,\"currency\":\"usd\",\"customer\":\"cus_GL92cROcQygOPP\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSkSKmGdRDZlHSSP0A4tUJ\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoSkXKmGdRDZlHS5yTXumYH\\/rcpt_GL92NknetXXbFen73suBRm74hsGzakc\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576061338', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(205, '201912205', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoSrqKmGdRDZlHSKcalasc6\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9A7GtHESSRtA\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576061794,\"currency\":null,\"default_source\":\"card_1FoSrqKmGdRDZlHSvI4hKa0z\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"0D80EBC0\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoSruKmGdRDZlHSS694CwbL\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoSrvKmGdRDZlHSP1c3OhKt\",\"billing_details\":{},\"captured\":true,\"created\":1576061794,\"currency\":\"usd\",\"customer\":\"cus_GL9A7GtHESSRtA\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoSrqKmGdRDZlHSvI4hKa0z\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoSruKmGdRDZlHSS694CwbL\\/rcpt_GL9Abv98fc31EOCV5veSevSUnqB0iMK\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576061795', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(206, '201912206', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoT3KKmGdRDZlHSm3muzgEr\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9MklOTgMZzko\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576062506,\"currency\":null,\"default_source\":\"card_1FoT3KKmGdRDZlHSNb9bdhCV\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"715C51FA\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoT3PKmGdRDZlHSdm0hLLdQ\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoT3PKmGdRDZlHSbkrgOpeB\",\"billing_details\":{},\"captured\":true,\"created\":1576062507,\"currency\":\"usd\",\"customer\":\"cus_GL9MklOTgMZzko\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoT3KKmGdRDZlHSNb9bdhCV\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoT3PKmGdRDZlHSdm0hLLdQ\\/rcpt_GL9MyUZTnOT2fQFpbAYh8OhbsSSTZV4\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576062508', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(207, '201912207', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoT9YKmGdRDZlHSybFuqBoi\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9SFFCObBiHwx\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576062892,\"currency\":null,\"default_source\":\"card_1FoT9YKmGdRDZlHSzEPyzml3\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"0473F446\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoT9dKmGdRDZlHSjq4tuKJT\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoT9dKmGdRDZlHSi2a1shzF\",\"billing_details\":{},\"captured\":true,\"created\":1576062893,\"currency\":\"usd\",\"customer\":\"cus_GL9SFFCObBiHwx\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoT9YKmGdRDZlHSzEPyzml3\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoT9dKmGdRDZlHSjq4tuKJT\\/rcpt_GL9Szuays4yXCwFmPrPYHZhLmSPeqlS\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576062893', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(208, '201912208', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoTKPKmGdRDZlHS1ppJ0cim\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9df40Pwt09YZ\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576063565,\"currency\":null,\"default_source\":\"card_1FoTKPKmGdRDZlHS3HzFBGg1\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"961C1D4B\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoTKUKmGdRDZlHScZO4sD0S\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoTKUKmGdRDZlHSJnvsrZMS\",\"billing_details\":{},\"captured\":true,\"created\":1576063566,\"currency\":\"usd\",\"customer\":\"cus_GL9df40Pwt09YZ\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoTKPKmGdRDZlHS3HzFBGg1\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoTKUKmGdRDZlHScZO4sD0S\\/rcpt_GL9dtm7BRWrz4P1rh12Ngfd33LBqTpS\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576063567', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(209, '201912209', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoTMyKmGdRDZlHSwGizOiOM\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9gpZgbK5jGqx\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576063724,\"currency\":null,\"default_source\":\"card_1FoTMyKmGdRDZlHSnDLaeBSZ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"CFF8FA9C\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoTN3KmGdRDZlHSZZejRmkc\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoTN3KmGdRDZlHS8RngQEFq\",\"billing_details\":{},\"captured\":true,\"created\":1576063725,\"currency\":\"usd\",\"customer\":\"cus_GL9gpZgbK5jGqx\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoTMyKmGdRDZlHSnDLaeBSZ\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoTN3KmGdRDZlHSZZejRmkc\\/rcpt_GL9gcsRGIc1xuYnSbEy3Y8keIo7HMKs\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576063725', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(210, '201912210', '9', NULL, '{\"e96ed478dab8595a7dbda4cbcbee168f\":{\"id\":\"218\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":12345,\"name\":\"Demo product\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_218_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e96ed478dab8595a7dbda4cbcbee168f\",\"subtotal\":12345}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoTOoKmGdRDZlHSiPNp6c1f\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GL9iVVzj9Ldw65\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576063838,\"currency\":null,\"default_source\":\"card_1FoTOnKmGdRDZlHSHh1w42AB\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"F9C2A585\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoTOsKmGdRDZlHSSszgtRDl\",\"object\":\"charge\",\"amount\":1234500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoTOtKmGdRDZlHSEIBFZecL\",\"billing_details\":{},\"captured\":true,\"created\":1576063838,\"currency\":\"usd\",\"customer\":\"cus_GL9iVVzj9Ldw65\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoTOnKmGdRDZlHSHh1w42AB\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoTOsKmGdRDZlHSSszgtRDl\\/rcpt_GL9ioXpR3Wwp524hqEKT5Lg54Abi0xm\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '12345', '1576063839', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok');
INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(215, '201912215', '9', NULL, '{\"1534b76d325a8f591b52d302e7181331\":{\"id\":\"212\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(15,14,14,1)\\\"}}\",\"price\":63750,\"name\":\"2018 BMW X5 xDrive40e iPerformance\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_212_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1534b76d325a8f591b52d302e7181331\",\"subtotal\":63750}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoodaKmGdRDZlHSg3B3MODv\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GLVewX64Jt8xP6\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576145478,\"currency\":null,\"default_source\":\"card_1FoodaKmGdRDZlHSVIyZqaxI\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"D441B2C9\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoodfKmGdRDZlHSvvOYOLnN\",\"object\":\"charge\",\"amount\":6375000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoodfKmGdRDZlHSzPXJDfil\",\"billing_details\":{},\"captured\":true,\"created\":1576145479,\"currency\":\"usd\",\"customer\":\"cus_GLVewX64Jt8xP6\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoodaKmGdRDZlHSVIyZqaxI\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoodfKmGdRDZlHSvvOYOLnN\\/rcpt_GLVe6dW6hcu9wF4j5c25WKyQnr99tt4\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '63750', '1576145480', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(216, '201912216', '9', NULL, '{\"1534b76d325a8f591b52d302e7181331\":{\"id\":\"212\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":63750,\"name\":\"2018 BMW X5 xDrive40e iPerformance\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/localhost\\/shop_2_with_features\\/uploads\\/product_image\\/product_212_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1534b76d325a8f591b52d302e7181331\",\"subtotal\":63750}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"customer5@shop.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1FoogHKmGdRDZlHSJPg14ByJ\"}', '0', '', '0', 'stripe', '[{\"vendor\":\"10\",\"status\":\"paid\"}]', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GLVhEfBVSRbqc9\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1576145645,\"currency\":null,\"default_source\":\"card_1FoogHKmGdRDZlHSBJJXTmli\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer5@shop.com\",\"invoice_prefix\":\"445C6B3F\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1FoogMKmGdRDZlHS2OtJ9WxQ\",\"object\":\"charge\",\"amount\":6375000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FoogMKmGdRDZlHSaZITlP2F\",\"billing_details\":{},\"captured\":true,\"created\":1576145646,\"currency\":\"usd\",\"customer\":\"cus_GLVhEfBVSRbqc9\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FoogHKmGdRDZlHSBJJXTmli\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1FoogMKmGdRDZlHS2OtJ9WxQ\\/rcpt_GLVhnxFpocQ644TFxe63QCiPRICRO3s\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '63750', '1576145647', '', '[{\"vendor\":\"10\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"WELCOME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"YOUR SHOP NAME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"SHOP TITLE\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', 'ok', 'Welcome 2', '1', 1),
(4, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"Introducing \",\"color\":\"rgba(33,38,51,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"Active Super Shop\",\"color\":\"rgba(101,3,199,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"Multi-vendor CMS version 1.5.2\",\"color\":\"rgba(167,0,181,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', 'ok', 'Welcome Slider', '1', 3),
(5, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"WELCOME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"New Collection\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"big offers\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', 'ok', 'new collections', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:6500;transition2d:all;transition3d:15;\\\"\",\n   \"background\":\"bg\",\n   \"images\":[\n\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"WELCOME\",\n         \"name\":\"text_1\",\n         \"style\":\"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"YOUR SHOP NAME\",\n         \"name\":\"text_2\",\n         \"style\":\"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"SHOP TITLE\",\n         \"name\":\"text_3\",\n         \"style\":\"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      }\n   ]\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext,
  `text_color` longtext,
  `text1` varchar(300) DEFAULT NULL,
  `text1_ar` varchar(300) NOT NULL,
  `text2` varchar(250) NOT NULL,
  `text2_ar` varchar(250) NOT NULL,
  `text3` varchar(350) NOT NULL,
  `text3_ar` varchar(250) NOT NULL,
  `button_link` varchar(500) DEFAULT NULL,
  `uploaded_by` longtext,
  `added_by` longtext,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `text1`, `text1_ar`, `text2`, `text2_ar`, `text3`, `text3_ar`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(15, '', '', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(25, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(26, 'rgba(255,0,0,1)', 'rgba(255,255,255,1)', 'Demo', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"12\"}', '0'),
(27, 'rgba(134,217,29,1)', 'rgba(29,92,214,1)', 'link', '', '', '', '', '0', 'www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"13\"}', 'ok'),
(30, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(31, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(32, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(33, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', '', '', '', '0', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(34, 'rgba(245,233,233,1)', 'rgba(18,17,17,1)', 'Demo', '', '', '', '', '0', 'https://www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"17\"}', 'ok'),
(35, NULL, NULL, 'GET UPTO 50% OFF', 'GET UPTO 50% OFF AR ', 'NEW COLLECTIONS', 'NEW COLLECTIONS AR', 'BIG OFFERS', 'big offfers ar ', 'indoor-plants.php', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL),
(61, 'destroy', '4', '36', '74', '2', NULL, '0', 'sale', '1517725191', '5', NULL),
(62, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732450', '6', NULL),
(63, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732639', '7', NULL),
(64, 'add', '4', '10', '37', '100', '150.00', '15000', '', '1517942532', NULL, NULL),
(65, 'add', '4', '8', '36', '100', '210.00', '0', '', '1517942542', NULL, NULL),
(66, 'add', '4', '35', '35', '100', '240.00', '24000', '', '1517942553', NULL, NULL),
(67, 'add', '4', '9', '26', '100', '10.00', '1000', '', '1517942563', NULL, NULL),
(68, 'add', '4', '37', '25', '100', '250.00', '25000', '', '1517942574', NULL, NULL),
(69, 'add', '4', '37', '24', '100', '400.00', '40000', '', '1517942585', NULL, NULL),
(70, 'add', '4', '37', '23', '100', '210.00', '21000', '', '1517942598', NULL, NULL),
(71, 'add', '4', '40', '18', '200', '100.00', '20000', '', '1517942609', NULL, NULL),
(72, 'add', '4', '35', '17', '150', '120.00', '18000', '', '1517942624', NULL, NULL),
(73, 'add', '4', '39', '16', '200', '110.00', '22000', '', '1517942637', NULL, NULL),
(74, 'add', '4', '37', '15', '200', '130.00', '0', '', '1517942647', NULL, NULL),
(75, 'add', '4', '34', '14', '100', '320.00', '32000', '', '1517942656', NULL, NULL),
(76, 'add', '4', '8', '12', '200', '180.00', '36000', '', '1517942666', NULL, NULL),
(77, 'add', '4', '11', '11', '100', '6500.00', '650000', '', '1517942677', NULL, NULL),
(78, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1517942691', NULL, NULL),
(79, 'add', '4', '10', '7', '500', '35.00', '17500', '', '1517942704', NULL, NULL),
(80, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1517942726', NULL, NULL),
(81, 'add', '5', '28', '9', '500', '120.00', '60000', '', '1517942751', NULL, NULL),
(82, 'add', '16', '78', '101', '10', '95.00', '950', '', '1518078812', NULL, NULL),
(83, 'add', '16', '78', '103', '20', '125.00', '2500', '', '1518079324', NULL, NULL),
(84, 'add', '16', '78', '102', '15', '125.00', '1875', '', '1518079332', NULL, NULL),
(85, 'add', '16', '78', '104', '15', '125.00', '1875', '', '1518079423', NULL, NULL),
(86, 'add', '16', '78', '104', '100', '125.00', '12500', '', '1518079433', NULL, NULL),
(87, 'add', '16', '78', '103', '150', '125.00', '18750', '', '1518079443', NULL, NULL),
(88, 'add', '16', '78', '102', '90', '125.00', '11250', '', '1518079453', NULL, NULL),
(89, 'add', '16', '78', '101', '120', '95.00', '11400', '', '1518079464', NULL, NULL),
(90, 'add', '1', '6', '89', '50', '42000.00', '2100000', '', '1518079474', NULL, NULL),
(91, 'add', '1', '6', '88', '50', '33890.00', '1694500', '', '1518079483', NULL, NULL),
(92, 'add', '1', '6', '87', '80', '41000.00', '3280000', '', '1518079495', NULL, NULL),
(93, 'add', '1', '6', '86', '80', '45000.00', '3600000', '', '1518079507', NULL, NULL),
(94, 'add', '16', '78', '105', '120', '110.00', '13200', '', '1518079727', NULL, NULL),
(95, 'add', '16', '78', '106', '150', '122.00', '18300', '', '1518079898', NULL, NULL),
(96, 'add', '16', '79', '107', '120', '145.00', '17400', '', '1518080173', NULL, NULL),
(97, 'add', '16', '79', '108', '80', '144.00', '11520', '', '1518080359', NULL, NULL),
(98, 'add', '16', '79', '110', '50', '75.00', '3750', '', '1518081142', NULL, NULL),
(99, 'add', '16', '79', '109', '60', '140.00', '8400', '', '1518081151', NULL, NULL),
(100, 'add', '16', '79', '111', '100', '95.00', '9500', '', '1518081235', NULL, NULL),
(101, 'add', '16', '79', '112', '150', '50.00', '7500', '', '1518081346', NULL, NULL),
(102, 'add', '16', '80', '113', '150', '95.00', '14250', '', '1518081575', NULL, NULL),
(103, 'add', '16', '80', '114', '130', '98.00', '12740', '', '1518081650', NULL, NULL),
(104, 'add', '16', '80', '115', '200', '100.00', '20000', '', '1518081994', NULL, NULL),
(105, 'add', '5', '27', '117', '85', '45.00', '3825', '', '1518082666', NULL, NULL),
(106, 'add', '16', '80', '116', '100', '92.00', '9200', '', '1518082674', NULL, NULL),
(107, 'add', '5', '27', '118', '80', '56.00', '4480', '', '1518082825', NULL, NULL),
(108, 'add', '5', '27', '120', '80', '65.00', '5200', '', '1518083101', NULL, NULL),
(109, 'add', '5', '27', '119', '80', '65.00', '5200', '', '1518083110', NULL, NULL),
(110, 'add', '5', '28', '121', '50', '79.00', '3950', '', '1518083320', NULL, NULL),
(111, 'add', '5', '28', '122', '60', '55.00', '3300', '', '1518083433', NULL, NULL),
(112, 'add', '5', '28', '123', '60', '66.00', '3960', '', '1518083632', NULL, NULL),
(113, 'add', '5', '29', '124', '82', '45.00', '3690', '', '1518083830', NULL, NULL),
(114, 'add', '5', '29', '124', '56', '45.00', '2520', '', '1518084168', NULL, NULL),
(115, 'add', '5', '30', '126', '55', '90.00', '4950', '', '1518084178', NULL, NULL),
(116, 'add', '5', '30', '127', '80', '125.00', '10000', '', '1518084186', NULL, NULL),
(117, 'add', '5', '29', '125', '50', '56.00', '2800', '', '1518084194', NULL, NULL),
(118, 'add', '4', '37', '128', '80', '120.00', '9600', '', '1518086137', NULL, NULL),
(119, 'add', '4', '37', '129', '100', '145.00', '14500', '', '1518086245', NULL, NULL),
(120, 'add', '1', '2', '130', '50', '32000.00', '1600000', '', '1518091220', NULL, NULL),
(121, 'destroy', '4', '36', '75', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(122, 'destroy', '5', '28', '58', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(123, 'destroy', '5', '28', '57', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(124, 'destroy', '5', '27', '54', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(125, 'destroy', '5', '29', '50', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(126, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1519796196', '12', NULL),
(127, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521374128', '15', NULL),
(128, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521430987', '16', NULL),
(129, 'destroy', '13', '75', '99', '1', NULL, '0', 'sale', '1521541152', '17', NULL),
(130, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616455', '18', NULL),
(131, 'destroy', '0', '0', '102', '7', NULL, '0', 'sale', '1521616557', '19', NULL),
(132, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616913', '20', NULL),
(133, 'add', '4', '10', '37', '500', '150.00', '75000', '', '1522827326', NULL, NULL),
(134, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1522827360', NULL, NULL),
(135, 'add', '4', '10', '7', '1000', '35.00', '35000', '', '1522827390', NULL, NULL),
(136, 'add', '4', '34', '14', '150', '320.00', '0', '', '1522827433', NULL, NULL),
(137, 'add', '4', '37', '15', '200', '130.00', '0', '', '1522827463', NULL, NULL),
(138, 'add', '4', '39', '16', '200', '110.00', '0', '', '1522827488', NULL, NULL),
(139, 'add', '4', '35', '17', '100', '120.00', '12000', '', '1522827994', NULL, NULL),
(140, 'add', '4', '40', '18', '150', '100.00', '15000', '', '1522828021', NULL, NULL),
(141, 'add', '4', '35', '35', '200', '240.00', '0', '', '1522828073', NULL, NULL),
(142, 'add', '4', '9', '26', '200', '10.00', '0', '', '1522828105', NULL, NULL),
(143, 'add', '4', '37', '25', '200', '250.00', '50000', '', '1522828132', NULL, NULL),
(144, 'add', '4', '37', '24', '200', '400.00', '0', '', '1522828163', NULL, NULL),
(145, 'add', '4', '37', '23', '300', '210.00', '0', '', '1522828256', NULL, NULL),
(146, 'add', '4', '8', '36', '400', '210.00', '0', '', '1522828286', NULL, NULL),
(147, 'add', '4', '8', '12', '300', '180.00', '0', '', '1522828328', NULL, NULL),
(148, 'add', '4', '11', '11', '250', '6500.00', '0', '', '1522828413', NULL, NULL),
(149, 'add', '5', '28', '9', '250', '120.00', '0', '', '1522828467', NULL, NULL),
(150, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1522828488', NULL, NULL),
(151, 'add', '17', '78', '103', '30', '4.40', '132', '', '1522837440', NULL, NULL),
(152, 'add', '17', '78', '104', '50', '4.72', '236', '', '1522837706', NULL, NULL),
(153, 'add', '17', '78', '105', '20', '5.50', '110', '', '1522837862', NULL, NULL),
(154, 'add', '18', '79', '106', '15', '18.30', '274.5', '', '1522838553', NULL, NULL),
(155, 'add', '18', '79', '107', '12', '22.63', '271.56', '', '1522838928', NULL, NULL),
(156, 'add', '21', '80', '108', '5', '57.53', '287.65', '', '1522841201', NULL, NULL),
(157, 'add', '21', '80', '109', '1', '58.77', '58.77', '', '1522841562', NULL, NULL),
(158, 'add', '16', '81', '110', '5', '719.99', '3599.95', '', '1522842237', NULL, NULL),
(159, 'add', '16', '81', '111', '3', '209.99', '629.97', '', '1522842721', NULL, NULL),
(160, 'add', '16', '81', '112', '2', '629.99', '1259.98', '', '1522842852', NULL, NULL),
(161, 'add', '1', '3', '124', '200', '54000.00', '10800000', '', '1522922112', NULL, NULL),
(162, 'add', '1', '3', '125', '300', '59000.00', '17700000', '', '1522922301', NULL, NULL),
(163, 'add', '5', '27', '127', '25', '169.99', '4249.75', '', '1522925860', NULL, NULL),
(164, 'add', '5', '27', '127', '75', '169.99', '12749.25', '', '1522925881', NULL, NULL),
(165, 'add', '5', '27', '128', '100', '372.06', '37206', '', '1522926055', NULL, NULL),
(166, 'add', '5', '27', '130', '500', '79.20', '0', '', '1522930929', NULL, NULL),
(167, 'add', '5', '28', '129', '500', '50.00', '0', '', '1522930942', NULL, NULL),
(168, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523524543', '21', NULL),
(169, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1523535450', '22', NULL),
(170, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(171, 'destroy', '5', '27', '128', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(172, 'destroy', '0', '0', '126', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(173, 'destroy', '0', '0', '119', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(174, 'add', '1', '6', '131', '25', '26999.00', '674975', '', '1523857079', NULL, NULL),
(175, 'add', '1', '6', '132', '10', '4999.00', '49990', '', '1523861112', NULL, NULL),
(176, 'add', '1', '63', '133', '5', '117139.33', '585696.65', '', '1523863280', NULL, NULL),
(177, 'add', '1', '63', '134', '10', '794782.29', '7947822.9', '', '1523863576', NULL, NULL),
(178, 'add', '5', '28', '135', '200', '63.75', '12750', '', '1523867199', NULL, NULL),
(179, 'add', '5', '28', '136', '150', '44.99', '6748.5', '', '1523867819', NULL, NULL),
(180, 'add', '5', '29', '137', '500', '52.99', '26495', '', '1523868841', NULL, NULL),
(181, 'add', '5', '29', '138', '300', '31.80', '9540', '', '1523869110', NULL, NULL),
(182, 'add', '5', '29', '139', '300', '45.99', '13797', '', '1523869336', NULL, NULL),
(183, 'add', '5', '30', '140', '50', '26724.99', '1336249.5', '', '1523870296', NULL, NULL),
(184, 'add', '5', '30', '141', '100', '664.99', '66499', '', '1523870578', NULL, NULL),
(185, 'add', '16', '81', '142', '100', '794.00', '79400', '', '1523871020', NULL, NULL),
(186, 'add', '16', '81', '143', '100', '625.00', '62500', '', '1523871351', NULL, NULL),
(187, 'add', '16', '81', '144', '200', '409.00', '81800', '', '1523871782', NULL, NULL),
(188, 'add', '16', '83', '145', '50', '70.72', '3536', '', '1523872591', NULL, NULL),
(189, 'add', '16', '83', '146', '100', '11.58', '1158', '', '1523872944', NULL, NULL),
(190, 'add', '16', '83', '147', '140', '91.97', '12875.8', '', '1523873194', NULL, NULL),
(191, 'add', '16', '83', '148', '200', '96.28', '19256', '', '1523873449', NULL, NULL),
(192, 'add', '16', '83', '149', '50', '105.97', '5298.5', '', '1523873845', NULL, NULL),
(193, 'add', '16', '83', '150', '200', '36.43', '7286', '', '1523874195', NULL, NULL),
(194, 'add', '4', '9', '151', '300', '43.98', '13193.999999999998', '', '1523874895', NULL, NULL),
(195, 'add', '4', '10', '152', '250', '13.59', '3397.5', '', '1523875175', NULL, NULL),
(196, 'add', '4', '9', '153', '300', '19.99', '5996.999999999999', '', '1523875678', NULL, NULL),
(197, 'add', '4', '10', '154', '200', '16.29', '3258', '', '1523875974', NULL, NULL),
(198, 'add', '4', '11', '155', '50', '18.99', '949.4999999999999', '', '1523876663', NULL, NULL),
(199, 'add', '4', '11', '156', '10', '4530.00', '45300', '', '1523876990', NULL, NULL),
(200, 'add', '4', '37', '157', '100', '51.00', '5100', '', '1523877983', NULL, NULL),
(201, 'add', '4', '37', '158', '120', '158.99', '19078.800000000003', '', '1523878181', NULL, NULL),
(202, 'destroy', '4', '37', '158', '1', NULL, '0', 'sale', '1524471441', '29', NULL),
(203, 'add', '16', '87', '159', '500', '4500.00', '2250000', '', '1524784507', NULL, NULL),
(204, 'add', '16', '85', '160', '500', '1000.00', '0', '', '1524784752', NULL, NULL),
(205, 'add', '16', '88', '161', '500', '800.00', '0', '', '1524784866', NULL, NULL),
(206, 'add', '16', '86', '162', '500', '900.00', '450000', '', '1524845655', NULL, NULL),
(207, 'add', '16', '81', '166', '12', '125.00', '1500', '', '1524911159', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(208, 'add', '16', '81', '168', '5', '1190.00', '5950', '', '1524984498', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(209, 'add', '16', '83', '169', '5', '800.00', '4000', '', '1524984850', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(210, 'add', '16', '81', '170', '25', '1195.00', '29875', '', '1524984898', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(211, 'add', '16', '81', '171', '25', '1190.00', '29750', '', '1524985905', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(212, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1525079391', '38', NULL),
(213, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1526119327', '39', NULL),
(214, 'destroy', '1', '5', '2', '2', NULL, '0', 'sale', '1527064445', '44', NULL),
(215, 'destroy', '16', '85', '160', '1', NULL, '0', 'sale', '1528016175', '45', NULL),
(216, 'add', '4', '11', '172', '50', '40.00', '2000', '', '1528779289', NULL, NULL),
(217, 'add', '4', '11', '173', '50', '62.00', '3100', '', '1528779815', NULL, NULL),
(218, 'add', '4', '11', '174', '50', '30.00', '1500', '', '1528780266', NULL, NULL),
(219, 'add', '5', '89', '175', '100', '68.00', '6800', '', '1528785307', NULL, NULL),
(220, 'add', '5', '89', '176', '120', '12.00', '1440', '', '1528785411', NULL, NULL),
(221, 'add', '5', '89', '177', '45', '10.00', '450', '', '1528785743', NULL, NULL),
(222, 'add', '5', '89', '178', '60', '74.80', '4488', '', '1528786064', NULL, NULL),
(223, 'add', '16', '88', '180', '10', '3500.00', '35000', '', '1528787255', NULL, NULL),
(224, 'destroy', '13', '74', '182', '1', NULL, '0', 'sale', '1529556702', '56', NULL),
(225, 'destroy', '16', '81', '144', '1', NULL, '0', 'sale', '1530089371', '62', NULL),
(226, 'add', '4', '8', '183', '25', '180.00', '4500', '', '1530166850', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(227, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530166970', '63', NULL),
(228, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530174197', '64', NULL),
(229, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530174441', '65', NULL),
(230, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530176426', '67', NULL),
(231, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(232, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(233, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(234, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(235, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(236, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(237, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(238, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(239, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(240, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(241, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(242, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(243, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178827', '73', NULL),
(244, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(245, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(246, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530180438', '75', NULL),
(247, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(248, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(249, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181401', '77', NULL),
(250, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181508', '78', NULL),
(251, 'destroy', '4', '8', '183', '2', NULL, '0', 'sale', '1530182283', '79', NULL),
(252, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182577', '80', NULL),
(253, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182891', '81', NULL),
(254, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530183079', '82', NULL),
(255, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530421619', '83', NULL),
(256, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530422129', '84', NULL),
(257, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530422501', '85', NULL),
(258, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(259, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(260, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423911', '87', NULL),
(261, 'add', '21', '80', '184', '500', '189.99', '94995', '', '1530427971', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(262, 'add', '21', '80', '185', '50', '40.99', '2049.5', '', '1530428579', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(263, 'add', '16', '83', '186', '300', '249.00', '74700', '', '1530428936', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(264, 'add', '16', '86', '187', '50', '1049.00', '52450', '', '1530429328', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(265, 'add', '5', '90', '188', '100', '154.99', '15499', '', '1530429645', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(266, 'add', '5', '90', '189', '500', '38.98', '19490', '', '1530431736', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(267, 'add', '5', '30', '190', '500', '99.84', '49920', '', '1530434062', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(268, 'add', '5', '28', '191', '100', '56.99', '5699', '', '1530434437', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(269, 'add', '21', '80', '192', '200', '385.00', '77000', '', '1530435423', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(270, 'add', '21', '80', '193', '300', '80.00', '24000', '', '1530435832', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(271, 'add', '21', '80', '194', '50', '199.99', '9999.5', '', '1530436258', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(272, 'add', '21', '80', '195', '400', '39.99', '15996', '', '1530436731', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(273, 'add', '21', '80', '196', '100', '230.97', '23097', '', '1530437119', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(274, 'add', '4', '40', '197', '200', '23.99', '4798', '', '1530437673', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(275, 'add', '4', '35', '198', '500', '34.99', '17495', '', '1530438201', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(276, 'add', '4', '36', '199', '140', '34.98', '4897.2', '', '1530438511', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(277, 'add', '4', '11', '200', '600', '12.97', '7782', '', '1530439263', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(278, 'add', '16', '87', '201', '50', '1049.00', '52450', '', '1530440570', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(279, 'add', '16', '87', '202', '300', '28.99', '8697', '', '1530441002', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(280, 'add', '16', '86', '203', '100', '49.34', '4934', '', '1530441771', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(281, 'add', '16', '81', '204', '200', '249.99', '49998', '', '1530442235', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(282, 'add', '16', '81', '205', '500', '49.99', '24995', '', '1530442480', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(283, 'add', '16', '85', '206', '100', '399.00', '39900', '', '1530444192', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(284, 'add', '17', '93', '207', '500', '39.00', '19500', '', '1530509804', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(285, 'add', '17', '78', '208', '500', '40.00', '20000', '', '1530511789', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(286, 'add', '17', '91', '209', '400', '28.50', '11400', '', '1530512382', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(287, 'add', '17', '96', '210', '100', '75.00', '7500', '', '1530512762', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(288, 'add', '17', '93', '211', '500', '28.00', '14000', '', '1530513333', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(289, 'add', '1', '1', '212', '50', '63750.00', '3187500', '', '1530514188', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(290, 'add', '1', '1', '213', '150', '39190.00', '5878500', '', '1530514879', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(291, 'add', '1', '2', '214', '1000', '535500.00', '535500000', '', '1530515357', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(292, 'add', '1', '1', '215', '100', '15350.00', '1535000', '', '1530523300', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(293, 'add', '1', '1', '216', '100', '44100.00', '4410000', '', '1530523869', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(294, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530605298', '89', NULL),
(295, 'destroy', '16', '88', '180', '6', NULL, '0', 'sale', '1530703163', '90', NULL),
(296, 'destroy', '5', '89', '175', '95', NULL, '0', 'sale', '1530708356', '91', NULL),
(297, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530764395', '93', NULL),
(298, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530764928', '94', NULL),
(299, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530765068', '95', NULL),
(300, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530765242', '96', NULL),
(301, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530779882', '99', NULL),
(302, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530780344', '100', NULL),
(303, 'destroy', '5', '30', '190', '1', NULL, '0', 'sale', '1530780876', '103', NULL),
(304, 'destroy', '0', '0', '122', '1', NULL, '0', 'sale', '1530781627', '104', NULL),
(305, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038537', '107', NULL),
(306, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038756', '108', NULL),
(307, 'destroy', '1', '2', '214', '1', NULL, '0', 'sale', '1531629840', '134', NULL),
(308, 'destroy', '4', '11', '173', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(309, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(310, 'destroy', '16', '81', '142', '1', NULL, '0', 'sale', '1531633431', '147', NULL),
(311, 'destroy', '16', '86', '162', '1', NULL, '0', 'sale', '1531633712', '148', NULL),
(312, 'destroy', '5', '29', '138', '1', NULL, '0', 'sale', '1531633810', '149', NULL),
(313, 'destroy', '0', '0', '121', '16', NULL, '0', 'sale', '1531636774', '150', NULL),
(314, 'add', '5', '28', '217', '200', '88.95', '17790', '', '1531637332', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(315, 'add', '5', '28', '217', '100', '88.95', '8895', '', '1531637661', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(316, 'destroy', '4', '11', '172', '44', NULL, '0', 'sale', '1531638155', '151', NULL),
(317, 'destroy', '4', '11', '155', '50', NULL, '0', 'sale', '1531638276', '152', NULL),
(318, 'destroy', '4', '11', '174', '45', NULL, '0', 'sale', '1531638403', '153', NULL),
(319, 'destroy', '4', '11', '200', '600', NULL, '0', 'sale', '1531638867', '154', NULL),
(320, 'destroy', '5', '28', '217', '1', NULL, '0', 'sale', '1531638930', '155', NULL),
(321, 'destroy', '5', '89', '178', '56', NULL, '0', 'sale', '1531639886', '156', NULL),
(322, 'destroy', '0', '0', '123', '2', NULL, '0', 'sale', '1531640276', '157', NULL),
(323, 'destroy', '0', '0', '123', '26', NULL, '0', 'sale', '1531640427', '158', NULL),
(324, 'destroy', '4', '11', '173', '49', NULL, '0', 'sale', '1531640653', '159', NULL),
(325, 'destroy', '0', '0', '122', '20', NULL, '0', 'sale', '1531640792', '160', NULL),
(326, 'destroy', '5', '28', '191', '100', NULL, '0', 'sale', '1531641121', '161', NULL),
(327, 'add', '16', '88', '180', '500', '3500.00', '1750000', '', '1531642809', NULL, NULL),
(328, 'add', '4', '11', '200', '500', '12.97', '6485', '', '1531642840', NULL, NULL),
(329, 'add', '4', '11', '174', '500', '30.00', '15000', '', '1531642856', NULL, NULL),
(330, 'add', '4', '11', '172', '500', '40.00', '20000', '', '1531642878', NULL, NULL),
(331, 'add', '4', '11', '155', '500', '18.99', '9495', '', '1531642899', NULL, NULL),
(332, 'destroy', '4', '11', '174', '500', NULL, '0', 'sale', '1531733208', '165', NULL),
(333, 'destroy', '16', '85', '206', '1', NULL, '0', 'sale', '1532334222', '168', NULL),
(334, 'destroy', '5', '90', '189', '1', NULL, '0', 'sale', '1532409777', '170', NULL),
(335, 'add', '5', '27', '220', '125', '110.00', '13750', '', '1554029932', NULL, '{\"type\":\"vendor\",\"id\":\"18\"}'),
(336, 'destroy', '5', '27', '220', '1', NULL, '0', 'sale', '1554030325', '185', NULL),
(337, 'destroy', '13', '75', '221', '1', NULL, '0', 'sale', '1554033364', '186', NULL),
(338, 'destroy', '13', '75', '221', '1', NULL, '0', 'sale', '1554033644', '187', NULL),
(339, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103346', '188', NULL),
(340, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103474', '189', NULL),
(341, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1554103623', '190', NULL),
(342, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1560848821', '193', NULL),
(343, 'destroy', '13', '73', '100', '1', NULL, '0', 'sale', '1560853989', '194', NULL),
(344, 'add', '24', '114', '226', '10', '20.00', '200', '', '1571652007', NULL, NULL),
(345, 'destroy', '24', '114', '226', '4', NULL, '0', 'sale', '1571652104', '195', NULL),
(346, 'add', '24', '114', '227', '100', '117.00', '11700', '', '1571724012', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(347, 'add', '24', '114', '228', '100', '36.00', '3600', '', '1571724396', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(350, 'add', '4', '5', '225', '100', '19.00', '1900', '', '1574742818', NULL, NULL),
(351, 'add', '1', '1', '218', '100', '234', '23400', '', '1575877383', NULL, NULL),
(352, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576052995', '197', NULL),
(353, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576057728', '198', NULL),
(354, 'destroy', '1', '1', '218', '1', NULL, '0', 'sale', '1576063839', '210', NULL),
(355, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064394', '211', NULL),
(356, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064677', '212', NULL),
(357, 'destroy', '1', '1', '212', '1', NULL, '0', 'sale', '1576145480', '215', NULL),
(358, 'destroy', '1', '1', '212', '1', NULL, '0', 'sale', '1576145647', '216', NULL),
(359, 'add', '7', '', '1', '4', '190.00', '760', '', '1609568313', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'sub1@mail.com'),
(2, 'sub2@mail.com'),
(3, 'sub3@mail.com'),
(4, 'sub4@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext,
  `category` longtext,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext,
  `affiliation` tinyint(4) NOT NULL DEFAULT '0',
  `affiliation_points` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(1, '1475585594', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'check', 'ok'),
(3, '1528018344', '{\"type\":\"user\",\"id\":\"13\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'demo', 'ok'),
(4, '1528095351', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Aut omnis quas in vero rerum vitae omnis accusantium', 'ok'),
(5, '1530002748', '{\"type\":\"user\",\"id\":\"17\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Demo', 'ok'),
(6, '1531634451', '{\"type\":\"user\",\"id\":\"23\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'qwert', 'ok'),
(7, '1554012558', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Hey Admin ', 'ok'),
(8, '1554012692', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'New', 'ok'),
(9, '1554012735', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'rr', 'ok'),
(10, '1554012767', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Keu ', 'ok'),
(11, '1554013847', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'sdfdsf', 'ok'),
(12, '1554014266', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'sdfds sf sdf', 'ok'),
(13, '1554014514', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'ddfg ', 'ok'),
(14, '1554014780', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'dfgd', 'ok'),
(15, '1554015729', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'rtrt', 'ok'),
(16, '1554015759', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'Samuel', 'ok'),
(17, '1554016172', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'JJ ', 'ok'),
(18, '1554020190', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'sam', 'ok'),
(19, '1560245785', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 'ss', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(1, '1475585594', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'check ticket'),
(2, '1476180432', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'example ticket'),
(3, '1476180432', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'example ticket'),
(4, '1526117716', '{\"type\":\"user\",\"id\":\"11\"}', '{\"type\":\"admin\",\"id\":\"\"}', 2, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'dummy text'),
(5, '1526117806', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"11\"}', 2, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'DEmo'),
(6, '1528018344', '{\"type\":\"user\",\"id\":\"13\"}', '{\"type\":\"admin\",\"id\":\"\"}', 3, 'demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'demo'),
(7, '1528095351', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Excepturi aut repellendus Incidunt quia atque voluptatum quasi nihil dolore nihil anim corporis ut nulla delectus'),
(8, '1528095981', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'hi'),
(9, '1528095997', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'hjkhkj'),
(10, '1530002748', '{\"type\":\"user\",\"id\":\"17\"}', '{\"type\":\"admin\",\"id\":\"\"}', 5, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Demo text'),
(11, '1531634451', '{\"type\":\"user\",\"id\":\"23\"}', '{\"type\":\"admin\",\"id\":\"\"}', 6, 'qwert', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'qwertyuiop'),
(12, '1531634471', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"23\"}', 6, 'qwert', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'dfghjkl;\''),
(13, '1554012558', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 7, 'Hey Admin ', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'I have a problem'),
(14, '1554012639', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"24\"}', 7, 'Hey Admin ', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Here is the solution'),
(15, '1554012692', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 8, 'New', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'New Problem'),
(16, '1554012735', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 9, 'rr', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'rrtt'),
(17, '1554012767', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 10, 'Keu ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Jert'),
(18, '1554013847', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dsfds'),
(19, '1554014267', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 12, 'sdfds sf sdf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'sd fdsf'),
(20, '1554014514', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 13, 'ddfg ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'g dfgdg'),
(21, '1554014780', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 14, 'dfgd', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dfgdfg'),
(22, '1554015730', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 15, 'rtrt', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'rtretrfggf dfg dfgdf gdfg \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(23, '1554015759', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 16, 'Samuel', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Jackson'),
(24, '1554016172', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 17, 'JJ ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'aBRAHAM\r\n'),
(25, '1554019237', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dj'),
(26, '1554019253', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Samind Ujal '),
(27, '1554020191', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 18, 'sam', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'mas\r\nsms '),
(28, '1554020208', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Santakul'),
(29, '1560245785', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 19, 'ss', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '83'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '78'),
(9, 'home_bottom_logo', '83'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'purple-1'),
(15, 'header_color', 'purple-1'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '3'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'ok'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'ok'),
(26, 'blog_show', 'ok'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '3'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', '6'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"4\",\"sub_category\":[\"11\",\"36\"],\"color_back\":\"rgba(250,101,235,1)\",\"color_text\":\"rgba(255,255,255,1)\"}]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', '[\"1\",\"4\",\"5\",\"16\",\"17\",\"18\",\"23\",\"12\",\"13\",\"21\"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'product_bundle_show', 'ok'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '2'),
(43, 'customer_product_show', 'ok'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'yes'),
(48, 'header_todays_deal_status', 'yes'),
(49, 'header_bundled_product_status', 'yes'),
(50, 'header_classifieds_status', 'yes'),
(51, 'header_latest_products_status', 'yes'),
(52, 'header_all_brands_status', 'yes'),
(53, 'header_all_vendors_status', 'yes'),
(54, 'header_blogs_status', 'yes'),
(55, 'header_store_locator_status', 'yes'),
(56, 'header_contact_status', 'yes'),
(57, 'header_more_status', 'yes'),
(58, 'home3_categories', '[{\\\"category\\\":\\\"4\\\",\\\"sub_category\\\":[\\\"8\\\",\\\"11\\\",\\\"34\\\",\\\"35\\\",\\\"36\\\",\\\"37\\\",\\\"39\\\",\\\"40\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null},{\\\"category\\\":\\\"5\\\",\\\"sub_category\\\":[\\\"27\\\",\\\"28\\\",\\\"29\\\",\\\"30\\\",\\\"89\\\",\\\"90\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null}]'),
(59, 'todays_deal_show', 'ok'),
(60, 'todays_deal_product_box_style', '4'),
(61, 'no_of_deal_products', '8'),
(62, 'promotions_logo', '78'),
(63, 'promotion_banner_one', '80'),
(64, 'promotion_banner_two', '81'),
(65, 'promotion_banner_three', '82');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` longtext,
  `zip` longtext,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]',
  `country` longtext,
  `state` longtext,
  `wallet` varchar(1000) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `package_info` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `wallet`, `product_upload`, `package_info`) VALUES
(1, 'rorurehy', 'Fleming', 'customer1@shop.com', '+532-55-5730682', 'USA', 'USA', 'New York', '88604', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453509', '', '', '', '[]', '1609825122', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 0, '[]'),
(22, 'Guest', 'Demo', 'marketing@gmail.com', '+736-68-4155522', 'USA', 'USA', 'New York', '10024', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1530764839', NULL, NULL, NULL, '[\"172\"]', '1532842963', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 47, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"SSLcommerz\"}]'),
(2, 'rorurehy', 'Fleming', 'customer2@shop.com', '+532-55-5730682', 'USA', '', 'New York', '88604', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453555', '', '', '', '[]', '1575973145', 'default', NULL, '[]', '[]', '', '', NULL, 0, '[]'),
(3, 'Customer', 'Seller', 'customer3@shop.com', '1000452345', 'Demo address  line 1', 'Demo address  line 2', 'Newyork', '1234', '(40.7127837, -74.00594130000002)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474454007', '', '', '', '[\"63\",\"100\",\"99\",\"73\",\"71\",\"57\",\"55\",\"82\",\"83\"]', '1576129195', 'default', NULL, '[]', '[{\"sale\":1,\"product\":\"44\"}]', '', '', 'MTMx', 18, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Stripe\"}]'),
(4, 'Developer Activeitzone', NULL, 'customer4@shop.com', NULL, NULL, NULL, NULL, NULL, NULL, '8cb623db6471', NULL, '107111794830756336948', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '1475421685', NULL, NULL, NULL, '[]', '1475421685', 'default', NULL, '[]', '[]', NULL, NULL, NULL, 0, '[]'),
(7, 'Demo', 'customer', 'customer@shop.com', '07894561234', 'Rio Vista, ', 'CA', 'California', '1219', '(38.1557502, -121.69134389999999)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1475479276', '', '', '', '[\"126\",\"78\",\"79\",\"98\",\"71\",\"216\"]', '1575181533', 'default', NULL, '[]', '[{\"sale\":12,\"product\":\"98\"},{\"sale\":17,\"product\":\"99\"},{\"sale\":56,\"product\":\"182\"}]', 'USA', 'CA', 'NjUwLjI=', 49, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"SSLcommerz\"}]'),
(9, 'Demo', 'Name', 'customer5@shop.com', '0789456123', 'Dhaka', 'Lalmatia', 'Dhaka', '1207', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1519797521', NULL, NULL, NULL, '[]', '1576145412', 'default', NULL, '[]', '[{\"sale\":211,\"product\":\"98\"},{\"sale\":212,\"product\":\"98\"}]', 'Bangladesh', 'Dhaka', NULL, 0, '[]'),
(13, 'Customer', 'Shop', 'customer6@shop.com', '+546-50-8760220', 'USA', 'USA', 'NY', '4321', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528012629', NULL, NULL, NULL, '[\"126\"]', '1528172761', 'default', NULL, '[]', '[]', 'Usa', 'NY', 'MjAwMA==', 9, '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Stripe\"}]'),
(14, 'demo', 'user', 'customer7@shop.com', '+546-50-8760221', 'Usa', 'usa', 'NY', '1234', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528017067', NULL, NULL, NULL, '[]', '1528017080', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 2, '[]'),
(15, 'Georgia ', 'Ray', 'customer8@shop.com', '+546-50-8760222', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528256799', NULL, NULL, NULL, '[\"121\",\"156\"]', '1528348360', 'default', NULL, '[]', '[]', 'USA', 'NY', 'NTAwMA==', 10, '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Stripe\"}]'),
(16, 'Travis ', 'Lee', 'customer9@shop.com', '+546-50-8760223', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528274410', NULL, NULL, NULL, '[]', '1528274442', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 15, '[{\"current_package\":\"Silver\",\"package_price\":\"25\",\"payment_type\":\"Stripe\"}]'),
(17, 'Larry ', 'Pena', 'customer10@shop.com', '+546-50-8760224', 'USA', 'USA', 'New York', '4321', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528277606', '', '', '', '[\"180\"]', '1530430385', 'default', NULL, '[]', '[]', 'USA', 'NY', 'NTAwMA==', 19, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"Stripe\"}]'),
(18, 'Nora ', 'Harris', 'customer11@shop.com', '+546-50-8760225', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528278159', NULL, NULL, NULL, '[]', '1530430727', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 25, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Stripe\"}]'),
(21, 'pajezupebu', 'Burgess', 'customer12@shop.com', '+499-60-2936405', '525 Oak Court', 'Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem', 'Eum doloribus dolores eos ea ex irure quaerat repellendus', '42072', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1530422295', NULL, NULL, NULL, '[]', '1531038698', 'default', NULL, '[]', '[]', 'Deleniti atque minim deserunt cupiditate fugiat voluptatibus quos autem modi perspiciatis est error', 'Quia officiis est est dolore et dolorum', NULL, 2, '[]'),
(23, 'Demo', 'Test', 'Demo@gmail.com', '1234567890', 'usa', '', 'New York', '10024', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1531631611', NULL, NULL, NULL, '[]', '1532409701', 'default', NULL, '[]', '[]', 'USA', 'NY', 'Mzk1NQ==', 26, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Wallet\"}]'),
(24, 'H', 'M', 'hm@gmail.com', '1234', 'USA', 'NY\r\n', 'NYC', '1122', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1554012425', NULL, NULL, NULL, '[]', '1560848755', 'default', NULL, '[]', '[{\"sale\":187,\"product\":\"221\"},{\"sale\":188,\"product\":\"98\"},{\"sale\":189,\"product\":\"98\"},{\"sale\":190,\"product\":\"98\"},{\"sale\":194,\"product\":\"100\"}]', 'Bangladesh', 'Dhk div', NULL, 69, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Stripe\"}]'),
(25, 'tokegidov', 'Price', 'lolodag@mailinator.net', '+ 798-6429', '60 Second Court', 'Eaque cillum ut a eu', 'Dolore quam unde qui', '46284', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1571651783', NULL, NULL, NULL, '[]', '1571724448', 'default', NULL, '[]', '[]', 'Quod quia laboriosam', 'Exercitationem sed t', NULL, 2, '[]'),
(26, 'adminanji', NULL, 'anji.naga1@gmail.com', '9014675474', NULL, NULL, NULL, NULL, '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1609835827', NULL, NULL, NULL, '[]', '1609842673', 'default', NULL, '[]', '[]', NULL, NULL, NULL, 2, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `rating_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` longtext,
  `city` longtext,
  `zip` longtext,
  `state` longtext,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext,
  `c2_secret` longtext,
  `vp_set` varchar(50) DEFAULT NULL,
  `vp_merchant_id` varchar(500) DEFAULT NULL,
  `pum_set` varchar(20) DEFAULT NULL,
  `pum_merchant_key` varchar(500) DEFAULT NULL,
  `pum_merchant_salt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `description`, `lat_lang`, `country`, `city`, `zip`, `state`, `c2_set`, `c2_user`, `c2_secret`, `vp_set`, `vp_merchant_id`, `pum_set`, `pum_merchant_key`, `pum_merchant_salt`) VALUES
(1, 'Lydia Moran', 'vendor1@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Short Frye Associates', 'Lavinia Mckee', '88 South Clarendon Drive', 'Voluptatem et dolores quas et architecto est enim aut est et aut cum et aut aut praesentium sint', 'approved', '0', 1473433365, 0, NULL, 1533031057, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', 'ok', '123456799', NULL, NULL, '(40.7859464, -73.9741874)', 'USA', 'New York', '10024', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(3, 'Tom Cruise', 'vendor@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Dark Lane', 'Tom', '3367 Essex Court Grand Isle, VT 05458 ', '3367 Essex Court Grand Isle, VT 05458 B', 'approved', '0', 1474269533, 0, NULL, 1535022478, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', '', NULL, 'ok', NULL, NULL, '', NULL, NULL, '(44.72254359999999, -73.2923538)', '', '711-2880 Nulla St. Mankato Mississippi 96522 (257) ', '563-7401', '', NULL, '', '', NULL, '', 'ok', 'RR2LThlB', '3M85o3dezx'),
(5, 'Youn Sijin', 'vendor2@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'DOTS', 'Youn', '2759 Wyatt Street, HINSDALE, New York', '2759 Wyatt Street, HINSDALE, New York', 'approved', '0', 1474568426, 0, NULL, 1477161249, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(41.804962, -87.922823)', 'USA', 'New York', '10025', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(7, 'Tony Stark', 'vendor3@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Brenton', 'Tony Stark', '6649 N Blue Gum St, New Orleans', 'Louisiana, USA', 'approved', '0', 1475065812, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760222', NULL, NULL, '(29.95106579999999, -90.0715323)', 'usa', 'New York', '', 'ny', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(9, 'Ray Torres', 'vendor4@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Gallegos and Everett Co.', 'Cheyenne Medina', '462 Nobel Road', 'Est sint vel irure nulla numquam voluptatem quae et ullam eu dolor corporis sed sed eiusmod enim odio dolore', 'approved', '0', 1524910945, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760200', NULL, NULL, '(0,0)', 'Et laborum Dolores qui voluptatem quam', 'Esse ullam dolore lorem exercitationem expedita quidem deserunt aliquid amet unde facere amet', '34026', 'Sunt eaque quis ea necessitatibus commodo aut consequatur quas non consectetur', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(10, 'Amaya Dixon', 'vendor5@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Daniels and Wiley Associates', 'Denton Hansen', '957 West Milton Drive', 'Laboriosam dignissimos enim quidem sapiente qui et excepturi animi alias vitae', 'approved', '0', 1524982214, 0, NULL, 1527668695, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', 'alvi@gmail.com', NULL, NULL, 'ok', 'ok', '+546-50-8760218999', NULL, NULL, '(0,0)', 'Omnis ab nulla tenetur sit voluptatem officiis ut delectus ut illum illo excepturi totam soluta sit ', 'Dolor magna soluta officia aut delectus voluptates', '83862', 'Sunt voluptate consequatur amet ut sint veniam saepe velit aut optio accusantium nisi non qui', NULL, '', '', NULL, '', '', '', ''),
(12, 'Deborah Cohen', 'vendor6@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Johns Atkinson Trading', 'Idona Snider', '566 South Rocky Fabien Extension', 'Nostrum ullamco ratione nihil do sed vero esse dolor officia neque commodi voluptatum pariatur', 'approved', '0', 1530074631, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(0,0)', 'Anim pariatur Enim commodo enim excepteur', 'Velit quia eaque earum id quis impedit et ad blanditiis non asperiores', '71533', 'Et non modi dolor magni enim minus', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(16, 'Arsenio Mckenzie', 'vendor7@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Reid and Kennedy Traders', 'Carissa Newman', '834 West Old Court', 'Dolores corrupti quae ut aut totam laborum Fugiat pariatur Aut esse repudiandae illo', 'approved', '0', 1530089088, 0, NULL, 1532761512, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', 'vendor7@shop.com', NULL, 'ok', 'ok', 'ok', '098775543213', NULL, NULL, '(0,0)', 'Illo recusandae Aut obcaecati ut exercitation corrupti fugiat accusantium occaecat', 'Sit illum consequatur Ullam sequi dolor ipsum est quam veniam est aut enim vel porro hic', '92170', 'Aliquid irure id amet anim repellendus Eos in laborum Eum exercitation fuga Quis eiusmod voluptas es', NULL, '', '', NULL, '', '', '', ''),
(17, 'vendor', 'vendor@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Demo', 'demo vendor', 'usa', '', 'pending', '0', 1531634920, 0, NULL, 1534230745, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', '', NULL, 'ok', 'ok', 'ok', '0987654321', NULL, NULL, '(0,0)', 'usa', 'new york', '10024', 'ny', NULL, '', '', NULL, '', '', '', ''),
(19, 'Mevendor', 'me@vendor.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1234', 'mevendor', '1234', '1234', 'approved', '0', 1554028232, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', '1234', '1234', '1234', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_invoice`
--

INSERT INTO `vendor_invoice` (`vendor_invoice_id`, `vendor_id`, `amount`, `timestamp`, `status`, `method`, `payment_details`) VALUES
(2, 3, '324.9273', 1525579407, 'paid', 'cash', ''),
(3, 3, '5.6843418860808E-14', 1528263035, 'due', 'cash', ''),
(4, 3, '5.6843418860808E-14', 1528263055, 'paid', 'cash', ''),
(6, 3, '250', 1529559027, 'due', 'payUmoney', NULL),
(7, 3, '0', 1529559101, 'due', 'payUmoney', NULL),
(8, 3, '0', 1529559230, 'due', 'payUmoney', NULL),
(9, 3, '0', 1529559369, 'due', 'payUmoney', NULL),
(10, 3, '0', 1529559610, 'due', 'payUmoney', NULL),
(11, 3, '0', 1529559624, 'due', 'payUmoney', NULL),
(12, 3, '0', 1529559765, 'due', 'payUmoney', NULL),
(13, 3, '0', 1529559781, 'due', 'payUmoney', NULL),
(14, 3, '220', 1529560632, 'due', 'payUmoney', NULL),
(15, 3, '250', 1529560733, 'due', 'payUmoney', NULL),
(25, 16, '4295.89', 1532512294, 'paid', 'stripe', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DIKJSgpKH7t3sV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1532512293,\"currency\":null,\"default_source\":\"card_1CrjeUKmGdRDZlHSSgm3uUI8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"ceo.activeitzone@gmail.com\",\"invoice_prefix\":\"8A7DC79\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CrjedKmGdRDZlHSytg15z2v\",\"object\":\"charge\",\"amount\":5370,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CrjedKmGdRDZlHSNzJEg10u\",\"captured\":true,\"created\":1532512295,\"currency\":\"usd\",\"customer\":\"cus_DIKJSgpKH7t3sV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_load`
--

CREATE TABLE `wallet_load` (
  `wallet_load_id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `status` longtext,
  `timestamp` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_load`
--

INSERT INTO `wallet_load` (`wallet_load_id`, `user`, `amount`, `method`, `status`, `timestamp`, `payment_details`) VALUES
(1, '8', '500', 'stripe', 'paid', '1517724197', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CGD0YQw7B62I38\",\"object\":\"customer\",\"account_balance\":0,\"created\":1517724196,\"currency\":null,\"default_source\":\"card_1BrgapKmGdRDZlHSSMFOLv2m\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"6d34e931e9\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1BrgavKmGdRDZlHSmk8RfDyU\",\"object\":\"charge\",\"amount\":50000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1BrgavKmGdRDZlHSovrdDAZr\",\"captured\":true,\"created\":1517724197,\"currency\":\"usd\",\"customer\":\"cus_CGD0YQw7B62I38\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(4, '7', '1000', 'stripe', 'paid', '1518067735', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CHhMag8O50VaHI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1518067734,\"currency\":null,\"default_source\":\"card_1Bt7xlKmGdRDZlHSPQR35wSG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"4a211cb13d\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Bt7xrKmGdRDZlHSIOGetvuw\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Bt7xrKmGdRDZlHS4aoaW4pY\",\"captured\":true,\"created\":1518067735,\"currency\":\"usd\",\"customer\":\"cus_CHhMag8O50VaHI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(5, '7', '500', 'paypal', 'due', '1518455611', '[]'),
(7, '7', '50', 'paypal', 'due', '1519804590', '[]'),
(8, '7', '50', 'paypal', 'due', '1519805069', '[]'),
(40, '7', '1000', 'paypal', 'pending', '1527662380', 'testing'),
(41, '7', '1000', 'stripe', 'paid', '1523850882', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CglyFhGtTEn5Rw\",\"object\":\"customer\",\"account_balance\":0,\"created\":1523850881,\"currency\":null,\"default_source\":\"card_1CHOQKKmGdRDZlHSWlsub8PR\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"55A02F2\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CHOQQKmGdRDZlHSmVqPSfof\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CHOQQKmGdRDZlHSHTZAUnwy\",\"captured\":true,\"created\":1523850882,\"currency\":\"usd\",\"customer\":\"cus_CglyFhGtTEn5Rw\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(42, '11', '1000', 'paypal', 'due', '1526117372', '[]'),
(43, '11', '1000', 'stripe', 'paid', '1526117453', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CqbGW0YNtvcREq\",\"object\":\"customer\",\"account_balance\":0,\"created\":1526117452,\"currency\":null,\"default_source\":\"card_1CQu3uKmGdRDZlHSrzC62YUh\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"66A1B35\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CQu41KmGdRDZlHSpp4r8Atn\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CQu41KmGdRDZlHSfawtbM2r\",\"captured\":true,\"created\":1526117453,\"currency\":\"usd\",\"customer\":\"cus_CqbGW0YNtvcREq\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(44, '13', '4000', 'paypal', 'due', '1528014769', '[]'),
(45, '13', '2000', 'stripe', 'paid', '1528014852', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypKoO0j152SBl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528014864,\"currency\":null,\"default_source\":\"card_1CYrfKKmGdRDZlHSpMLENA98\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"B82E3F3\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYrfSKmGdRDZlHSYJxiAZgz\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYrfSKmGdRDZlHSDavgb3gk\",\"captured\":true,\"created\":1528014866,\"currency\":\"usd\",\"customer\":\"cus_CypKoO0j152SBl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(46, '15', '5000', 'stripe', 'paid', '1528348710', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D0H4Qix0Od4VKZ\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528348726,\"currency\":null,\"default_source\":\"card_1CaGWBKmGdRDZlHSO3Fff73X\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"1AD0DFE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CaGWJKmGdRDZlHSEnZ0FTBn\",\"object\":\"charge\",\"amount\":500000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CaGWKKmGdRDZlHSwbeV2PTy\",\"captured\":true,\"created\":1528348727,\"currency\":\"usd\",\"customer\":\"cus_D0H4Qix0Od4VKZ\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(47, '7', '10000', 'pum', 'due', '1529490145', '[]'),
(48, '7', '', 'pum', 'due', '1529492063', '[]'),
(49, '7', '', 'pum', 'due', '1529492100', '[]'),
(50, '7', '', 'payu', 'due', '1529492324', '[]'),
(51, '7', '1000', 'pum', 'due', '1529492411', '[]'),
(52, '7', '', 'pum', 'due', '1529492473', '[]'),
(53, '7', '', 'pum', 'due', '1529492681', '[]'),
(54, '7', '1000', 'pum', 'due', '1529493122', '[]'),
(55, '7', '1000', 'pum', 'due', '1529493178', '[]'),
(56, '7', '10000', 'pum', 'due', '1529493787', '[]'),
(61, '7', '9', 'stripe', 'paid', '1530002551', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7ReEvEpBqS4NK\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530002549,\"currency\":null,\"default_source\":\"card_1ChCklKmGdRDZlHSUIPmOpTa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"C9E4A94\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChCksKmGdRDZlHSirYxwBQw\",\"object\":\"charge\",\"amount\":900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChCktKmGdRDZlHSx0iE3JF7\",\"captured\":true,\"created\":1530002550,\"currency\":\"usd\",\"customer\":\"cus_D7ReEvEpBqS4NK\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(62, '17', '5000', 'stripe', 'paid', '1530002584', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7RewmuWEVXK8O\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530002582,\"currency\":null,\"default_source\":\"card_1ChClIKmGdRDZlHSEAlZ37dY\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"72A87E5\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChClPKmGdRDZlHSFSoPTHXd\",\"object\":\"charge\",\"amount\":500000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChClPKmGdRDZlHSEiZYfL6z\",\"captured\":true,\"created\":1530002583,\"currency\":\"usd\",\"customer\":\"cus_D7RewmuWEVXK8O\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(63, '7', '100', 'pum', 'due', '1530684206', '[]'),
(64, '23', '4000', 'stripe', 'paid', '1531631786', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEVcnI3Zo7vX2x\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531631788,\"currency\":null,\"default_source\":\"card_1Co2amKmGdRDZlHSkv9Pbbss\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"0D4B893\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co2avKmGdRDZlHSpSoSEvEQ\",\"object\":\"charge\",\"amount\":400000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co2awKmGdRDZlHSRLWeQBT2\",\"captured\":true,\"created\":1531631789,\"currency\":\"usd\",\"customer\":\"cus_DEVcnI3Zo7vX2x\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(66, '7', '10', 'ssl', 'paid', '1532421610', '[]'),
(71, '3', '6', 'affiliation_point_conversion', 'paid', '1576132901', '[]'),
(70, '3', '25', 'affiliation_point_conversion', 'paid', '1576063567', '[]'),
(72, '3', '25', 'affiliation_point_conversion', 'paid', '1576145647', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_affiliation`
--
ALTER TABLE `product_affiliation`
  ADD PRIMARY KEY (`product_affiliation_id`);

--
-- Indexes for table `product_affiliation_code_use`
--
ALTER TABLE `product_affiliation_code_use`
  ADD PRIMARY KEY (`product_affiliation_code_use_id`);

--
-- Indexes for table `product_affiliation_points_total`
--
ALTER TABLE `product_affiliation_points_total`
  ADD PRIMARY KEY (`product_affiliation_points_total_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `wallet_load`
--
ALTER TABLE `wallet_load`
  ADD PRIMARY KEY (`wallet_load_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `customer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_payment`
--
ALTER TABLE `package_payment`
  MODIFY `package_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_affiliation`
--
ALTER TABLE `product_affiliation`
  MODIFY `product_affiliation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_affiliation_code_use`
--
ALTER TABLE `product_affiliation_code_use`
  MODIFY `product_affiliation_code_use_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_affiliation_points_total`
--
ALTER TABLE `product_affiliation_points_total`
  MODIFY `product_affiliation_points_total_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `rating_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wallet_load`
--
ALTER TABLE `wallet_load`
  MODIFY `wallet_load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
