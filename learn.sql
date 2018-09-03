-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 08:55 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `addnewcourse`
--

CREATE TABLE `addnewcourse` (
  `coid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addnewcourse`
--

INSERT INTO `addnewcourse` (`coid`, `uname`, `coursename`, `duration`) VALUES
(50, 'mgu@gmail.com', 'introduction to python', '5.00 Hour'),
(51, 'mgu@gmail.com', 'introduction to html', '4:00 Hour'),
(52, 'mgu@gmail.com', 'python', '10.00 Hour'),
(53, 'ktu@gmail.com', 'deep learning', '2.00 Hour'),
(54, 'ktu@gmail.com', 'nureal network', '4.50 Hour'),
(55, 'ktu@gmail.com', 'Android Basics', '8.00 Hour'),
(56, 'ktu@gmail.com', 'Asp.net', '5:00 Hour'),
(57, 'lpu@gmail.com', 'javascripts basics', '2.00 Hour');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `enrollnewcourse`
--

CREATE TABLE `enrollnewcourse` (
  `eid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `enrollcoursename` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollnewcourse`
--

INSERT INTO `enrollnewcourse` (`eid`, `fullname`, `userEmail`, `enrollcoursename`, `status`) VALUES
(57, 'ajil raju', 'ajil@gmail.com', 'introduction to python', 'pending'),
(58, 'ajil raju', 'ajil@gmail.com', 'introduction to html', 'pending'),
(61, 'ajil raju', 'ajil@gmail.com', 'javascripts basics', 'pending'),
(64, 'jojo joseph', 'jojojoseph1996@gmail.com', 'introduction to python', 'pending'),
(66, 'jojo joseph', 'jojojoseph1996@gmail.com', 'Asp.net', 'pending'),
(67, 'jomy', 'jomy@gmail.com', 'introduction to html', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(50) NOT NULL,
  `stateDescription` varchar(50) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'kerala', 'Educated People are very large in this place', '2018-02-04 10:52:19', '0000-00-00 00:00:00'),
(3, 'Tamil Nadu', 'uneducated people are very large in this state', '2018-02-04 10:54:23', '0000-00-00 00:00:00'),
(4, 'Andhra Pradesh', 'Comparitively Less populated area ', '2018-02-13 11:48:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactno` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` int(6) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  `apstatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`uid`, `uname`, `uemail`, `password`, `contactno`, `address`, `state`, `country`, `pincode`, `regdate`, `updationdate`, `status`, `apstatus`) VALUES
(9, 'lpu', 'lpu@gmail.com', 'cd721f657be19f9caf05e0c6617ecdf2', '9874567460', 'kanjirappalyy p  s kjbdhjdbjhd dgdghrgfh', 'kerala', 'INDIA', 686541, '2018-02-17 16:12:03', '2018-02-19 19:39:01', 1, 'approved'),
(10, 'Mahatma Gandhi University', 'mgu@gmail.com', 'b351bb9b0af6e4fc678749675c53ad67', '9874563214', 'kottayam karunagappally p o kottayam', 'kerala', 'india', 686541, '2018-02-19 19:05:06', '0000-00-00 00:00:00', 1, 'approved'),
(11, 'kalam techinical university', 'ktu@gmail.com', '2e18bc3df6490504a467d30c1541bdfb', '9562854647', 'Tamilnadu , dindikal kaduthuthrhr', 'Tamil Nadu', 'indaia', 686541, '2018-02-19 19:19:27', '2018-02-19 19:37:28', 1, 'approved'),
(12, 'kerala university', 'kerala@gmail.com', 'e7dee419f91aa9e65939d3677fb9c4f5', '3696857412', '', '', '', 0, '2018-02-19 19:20:19', '2018-02-19 19:20:19', 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `universitylog`
--

CREATE TABLE `universitylog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universitylog`
--

INSERT INTO `universitylog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(3, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:48:41', '13-02-2018 04:18:51 PM', 1),
(4, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:49:55', '13-02-2018 04:20:01 PM', 1),
(5, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:54:48', '', 1),
(6, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:56:45', '', 1),
(7, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:57:28', '13-02-2018 04:27:56 PM', 1),
(8, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:58:16', '', 1),
(9, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:22:34', '', 1),
(10, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:28:18', '13-02-2018 04:59:45 PM', 1),
(11, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 11:30:17', '', 0),
(12, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 11:30:24', '', 0),
(13, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 11:30:34', '', 0),
(14, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:31:00', '13-02-2018 05:05:45 PM', 1),
(15, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:35:54', '13-02-2018 05:07:59 PM', 1),
(16, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:38:04', '', 1),
(17, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:43:44', '13-02-2018 05:14:00 PM', 1),
(18, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:44:05', '13-02-2018 05:14:14 PM', 1),
(19, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 11:44:19', '13-02-2018 05:15:02 PM', 0),
(20, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:44:29', '13-02-2018 05:14:33 PM', 1),
(21, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:45:45', '13-02-2018 05:15:47 PM', 1),
(22, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 11:46:06', '13-02-2018 05:16:09 PM', 1),
(23, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 13:48:36', '', 0),
(24, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 13:48:45', '13-02-2018 08:41:30 PM', 0),
(25, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:48:54', '', 1),
(26, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-15 04:31:01', '', 0),
(27, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:31:06', '', 1),
(28, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:06:58', '', 1),
(29, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-16 05:39:47', '16-02-2018 11:34:00 AM', 0),
(30, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 05:39:55', '', 1),
(31, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 05:56:17', '', 1),
(32, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 09:29:56', '', 1),
(33, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-16 10:01:15', '', 0),
(34, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 10:01:33', '16-02-2018 03:34:04 PM', 1),
(35, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 10:04:10', '', 1),
(36, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 13:15:53', '', 1),
(37, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 04:29:02', '', 1),
(38, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 05:03:13', '', 1),
(39, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 05:49:50', '', 1),
(40, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 05:58:54', '', 0),
(41, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 05:59:00', '17-02-2018 11:45:22 AM', 1),
(42, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:15:27', '17-02-2018 11:54:58 AM', 1),
(43, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 06:25:03', '', 0),
(44, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 06:25:09', '', 0),
(45, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 06:25:13', '', 0),
(46, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 06:25:19', '', 0),
(47, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:25:25', '', 1),
(48, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:29:59', '', 1),
(49, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:34:50', '17-02-2018 12:42:42 PM', 1),
(50, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 13:15:53', '', 0),
(51, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:58:14', '', 0),
(52, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:58:30', '', 0),
(53, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:58:44', '', 0),
(54, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:59:06', '', 0),
(55, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:59:12', '', 0),
(56, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:59:17', '', 0),
(57, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:59:30', '', 0),
(58, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 15:59:39', '', 0),
(59, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:00:03', '', 0),
(60, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:00:13', '', 0),
(61, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:00:19', '', 0),
(62, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:01:19', '', 0),
(63, 0, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:01:47', '17-02-2018 09:32:44 PM', 1),
(64, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:02:57', '', 0),
(65, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:03:15', '', 0),
(66, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:03:36', '', 0),
(67, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:03:55', '', 0),
(68, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:04:00', '', 0),
(69, 0, 'xyz@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:07:10', '', 1),
(70, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:07:46', '', 0),
(71, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:10:02', '17-02-2018 09:40:07 PM', 1),
(72, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:10:15', '', 0),
(73, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 16:12:15', '', 0),
(74, 0, 'lpu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:12:39', '17-02-2018 09:49:47 PM', 1),
(75, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-17 18:48:41', '', 0),
(76, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 18:49:02', '', 1),
(77, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 18:57:29', '18-02-2018 01:00:38 AM', 1),
(78, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 04:00:44', '', 1),
(79, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 13:52:17', '18-02-2018 07:24:07 PM', 1),
(80, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 16:08:27', '', 1),
(81, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-18 16:09:13', '', 0),
(82, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 16:09:23', '', 1),
(83, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 06:27:40', '', 0),
(84, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 06:27:47', '', 0),
(85, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 06:27:59', '', 0),
(86, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 06:30:50', '19-02-2018 12:36:42 PM', 1),
(87, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 16:06:07', '', 0),
(88, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 16:06:22', '', 1),
(89, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 17:54:51', '', 0),
(90, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 17:55:00', '', 0),
(91, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 17:55:31', '', 1),
(92, 0, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:01:47', '', 1),
(93, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:04:15', '', 0),
(94, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:05:14', '', 0),
(95, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:06:15', '', 0),
(96, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:06:40', '', 0),
(97, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:06:46', '', 0),
(98, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:07:01', '', 0),
(99, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:07:29', '', 1),
(100, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:15:15', '', 0),
(101, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:15:21', '', 1),
(102, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:20:43', '20-02-2018 12:59:30 AM', 1),
(103, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:29:39', '', 1),
(104, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:30:27', '20-02-2018 01:00:33 AM', 1),
(105, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:31:04', '20-02-2018 01:02:37 AM', 1),
(106, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:32:45', '20-02-2018 01:05:34 AM', 1),
(107, 0, 'ktu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:35:40', '20-02-2018 01:07:33 AM', 1),
(108, 0, 'lpu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:37:41', '20-02-2018 01:09:07 AM', 1),
(109, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-19 19:39:49', '', 0),
(110, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:39:56', '20-02-2018 01:10:12 AM', 1),
(111, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:40:16', '20-02-2018 01:10:19 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploadstudymeterial`
--

CREATE TABLE `uploadstudymeterial` (
  `upid` int(11) NOT NULL,
  `slcoursename` varchar(50) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `studymeterial` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadstudymeterial`
--

INSERT INTO `uploadstudymeterial` (`upid`, `slcoursename`, `heading`, `studymeterial`) VALUES
(10, 'deep learning', 'Basics', 'jojo applications of Graph Theory Work.pdf'),
(11, 'nureal network', 'Full note', 'jpg2pdfjojo.pdf'),
(12, 'Android Basics', 'Full note', 'Graph Theory Work.docx'),
(13, 'Asp.net', 'complete reference', 'SFP18-PG-Bonafide.pdf'),
(14, 'introduction to python', 'complete reference', 'jojopayement1.pdf'),
(15, 'introduction to html', 'Overoll idea', 'jojopayement1.pdf'),
(16, 'python', 'Full note', 'vytilaproject.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `uploadvedio`
--

CREATE TABLE `uploadvedio` (
  `upv` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `websitelink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadvedio`
--

INSERT INTO `uploadvedio` (`upv`, `coursename`, `websitelink`) VALUES
(10, 'python', 'https://www.youtube.com/embed/l9v1ewQXv5M'),
(12, 'introduction to python', 'https://www.youtube.com/embed/MVFGAZd5O5E'),
(13, 'deep learning', 'https://www.youtube.com/embed/b99UVkWzYTQ'),
(14, 'nureal network', 'https://www.youtube.com/embed/aircAruvnKk'),
(15, 'Android Basics', 'https://www.youtube.com/embed/d3BxFv4wTxE'),
(16, 'Asp.net', 'https://www.youtube.com/embed/KVlXccl-XBA'),
(17, 'introduction to html', 'https://www.youtube.com/embed/fS7w-TXinPE');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 08:41:17', '11-02-2018 02:11:19 PM', 1),
(2, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 08:41:31', '11-02-2018 02:12:13 PM', 1),
(3, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 08:42:40', '11-02-2018 02:12:53 PM', 1),
(7, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 08:56:31', '', 1),
(8, 3, 'abin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 09:09:52', '11-02-2018 02:40:19 PM', 1),
(9, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 09:10:32', '', 1),
(13, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 14:34:53', '11-02-2018 08:15:51 PM', 1),
(14, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 14:45:58', '11-02-2018 08:46:42 PM', 1),
(15, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:17:50', '11-02-2018 08:47:52 PM', 1),
(16, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:19:18', '11-02-2018 08:49:20 PM', 1),
(17, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:20:18', '11-02-2018 09:22:32 PM', 1),
(18, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:53:52', '', 1),
(19, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:55:57', '11-02-2018 09:26:07 PM', 1),
(20, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:56:34', '11-02-2018 09:26:36 PM', 1),
(22, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:57:36', '11-02-2018 09:27:42 PM', 1),
(23, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:58:12', '11-02-2018 09:28:14 PM', 1),
(24, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:58:41', '11-02-2018 09:28:42 PM', 1),
(25, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 15:59:25', '11-02-2018 09:29:26 PM', 1),
(26, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 16:00:01', '', 1),
(27, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 16:00:11', '11-02-2018 09:30:59 PM', 1),
(28, 3, 'abin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 16:01:05', '', 1),
(29, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 18:06:22', '11-02-2018 11:38:54 PM', 1),
(30, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 18:09:03', '11-02-2018 11:39:23 PM', 1),
(31, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-11 18:09:33', '', 1),
(32, 4, 'mas@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-12 16:54:44', '', 1),
(33, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-12 17:09:06', '12-02-2018 10:39:18 PM', 1),
(34, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-12 17:09:22', '', 1),
(35, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 05:56:03', '', 1),
(36, 0, '', 0x3a3a3100000000000000000000000000, '2018-02-13 06:00:02', '13-02-2018 08:44:03 PM', 0),
(37, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 06:00:08', '13-02-2018 03:01:18 PM', 1),
(38, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 09:31:32', '', 1),
(39, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 09:35:12', '', 1),
(40, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:08:14', '13-02-2018 03:39:05 PM', 1),
(41, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:09:09', '20-02-2018 12:45:38 AM', 1),
(42, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 10:55:18', '', 1),
(43, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:34:38', '', 0),
(44, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:34:47', '', 0),
(45, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:34:56', '', 0),
(46, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:35:12', '', 0),
(47, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:35:26', '', 1),
(48, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:51:34', '', 0),
(49, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:51:41', '', 0),
(50, 3, 'abin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-13 13:51:53', '', 1),
(51, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-14 16:14:56', '', 0),
(52, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-14 16:15:01', '', 0),
(53, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-14 16:15:33', '', 1),
(54, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-14 17:29:06', '', 1),
(55, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:16:21', '', 1),
(56, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:53:06', '', 1),
(57, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:08', '', 0),
(58, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:12', '', 0),
(59, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:16', '', 0),
(60, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:20', '', 0),
(61, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:45', '', 0),
(62, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:54:50', '', 0),
(63, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 04:55:08', '', 1),
(64, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:07:41', '', 0),
(65, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:07:48', '15-02-2018 10:39:31 AM', 1),
(66, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:09:39', '', 1),
(67, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:10:25', '', 1),
(68, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:53:00', '', 0),
(69, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 05:53:11', '15-02-2018 12:06:40 PM', 1),
(70, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 06:36:55', '', 0),
(71, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-15 06:52:32', '', 1),
(72, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:11:32', '', 0),
(73, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:11:40', '16-02-2018 09:53:09 AM', 1),
(74, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:23:29', '16-02-2018 09:57:32 AM', 1),
(75, 3, 'abin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:27:41', '16-02-2018 10:11:24 AM', 1),
(76, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:41:30', '16-02-2018 10:16:40 AM', 1),
(77, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:46:46', '16-02-2018 10:19:39 AM', 1),
(78, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 04:49:44', '16-02-2018 10:34:26 AM', 1),
(79, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 05:04:33', '', 1),
(80, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 05:43:52', '', 1),
(81, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 06:04:11', '16-02-2018 11:44:37 AM', 1),
(82, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 06:14:43', '16-02-2018 12:45:55 PM', 1),
(83, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 08:06:42', '', 1),
(84, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 09:30:43', '16-02-2018 03:13:30 PM', 1),
(85, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 09:43:37', '16-02-2018 03:27:03 PM', 1),
(86, 3, 'abin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 09:57:11', '16-02-2018 03:27:16 PM', 1),
(87, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-16 09:57:21', '16-02-2018 03:28:11 PM', 1),
(88, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 04:25:08', '', 1),
(89, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 05:14:38', '', 1),
(90, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:29:21', '17-02-2018 11:59:47 AM', 1),
(91, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 06:33:52', '17-02-2018 12:04:05 PM', 1),
(92, 2, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 07:12:57', '', 1),
(93, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:45:11', '17-02-2018 10:15:24 PM', 1),
(94, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:45:57', '17-02-2018 10:17:54 PM', 1),
(95, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:48:00', '17-02-2018 10:18:18 PM', 0),
(96, 1, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 16:48:49', '17-02-2018 10:19:03 PM', 0),
(97, 5, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 17:25:48', '17-02-2018 10:55:50 PM', 1),
(98, 6, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-17 17:28:04', '17-02-2018 11:11:03 PM', 1),
(99, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 04:02:56', '', 1),
(100, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 04:08:51', '18-02-2018 10:21:35 AM', 1),
(101, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 13:54:29', '', 1),
(102, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 15:04:00', '', 1),
(103, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 16:30:32', '', 1),
(104, 0, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 16:32:05', '', 0),
(105, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 16:32:15', '', 1),
(106, 0, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 18:18:31', '', 0),
(107, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 18:18:36', '19-02-2018 12:42:59 AM', 1),
(108, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-18 19:38:06', '', 1),
(109, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 05:17:16', '', 1),
(110, 0, 'sabints@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 07:06:55', '', 0),
(111, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 07:07:04', '', 1),
(112, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 07:12:03', '', 1),
(113, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 07:16:18', '', 1),
(114, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 14:24:55', '19-02-2018 08:04:14 PM', 1),
(115, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 15:14:24', '19-02-2018 09:25:40 PM', 1),
(116, 7, 'jomy@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 15:56:06', '19-02-2018 09:31:20 PM', 1),
(117, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 16:01:26', '19-02-2018 09:32:06 PM', 1),
(118, 7, 'jomy@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 16:02:13', '', 1),
(119, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 16:07:30', '19-02-2018 09:37:33 PM', 1),
(120, 7, 'jomy@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 16:07:40', '19-02-2018 11:18:01 PM', 1),
(121, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 17:51:40', '', 1),
(122, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 17:56:19', '19-02-2018 11:57:28 PM', 1),
(123, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 18:27:35', '', 1),
(124, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:03:12', '', 1),
(125, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:12:43', '', 1),
(126, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:15:43', '20-02-2018 12:46:01 AM', 1),
(127, 9, 'ajil@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:16:51', '', 1),
(128, 0, 'mgu@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:30:53', '', 0),
(129, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:40:44', '20-02-2018 01:11:36 AM', 1),
(130, 9, 'ajil@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:41:42', '20-02-2018 01:21:05 AM', 1),
(131, 8, 'jojojoseph1996@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:51:10', '20-02-2018 01:23:49 AM', 1),
(132, 7, 'jomy@gmail.com', 0x3a3a3100000000000000000000000000, '2018-02-19 19:53:58', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactNo` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` int(6) NOT NULL,
  `userImage` varchar(500) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(7, 'jomy', 'jomy@gmail.com', '237c17f7b1a15d751b1b1f52f19f8015', '9562135598', 'kottayam p o kottayam', 'kerala', 'INDIA', 0, '', '2018-02-17 18:05:25', '2018-02-19 19:54:30', 1),
(8, 'jojo joseph', 'jojojoseph1996@gmail.com', '7510d498f23f5815d3376ea7bad64e29', '9745674659', 'edakadathi p o ,erumely', 'kerala', 'India', 686510, '', '2018-02-17 18:20:23', '2018-02-19 19:41:00', 1),
(9, 'ajil raju', 'ajil@gmail.com', '1ed09e82663a771ec7c98e896e37a501', '9745685744', '', '', '', 0, '', '2018-02-19 19:16:39', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addnewcourse`
--
ALTER TABLE `addnewcourse`
  ADD PRIMARY KEY (`coid`),
  ADD UNIQUE KEY `coursename` (`coursename`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollnewcourse`
--
ALTER TABLE `enrollnewcourse`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `universitylog`
--
ALTER TABLE `universitylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadstudymeterial`
--
ALTER TABLE `uploadstudymeterial`
  ADD PRIMARY KEY (`upid`);

--
-- Indexes for table `uploadvedio`
--
ALTER TABLE `uploadvedio`
  ADD PRIMARY KEY (`upv`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addnewcourse`
--
ALTER TABLE `addnewcourse`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `enrollnewcourse`
--
ALTER TABLE `enrollnewcourse`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `universitylog`
--
ALTER TABLE `universitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `uploadstudymeterial`
--
ALTER TABLE `uploadstudymeterial`
  MODIFY `upid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `uploadvedio`
--
ALTER TABLE `uploadvedio`
  MODIFY `upv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
