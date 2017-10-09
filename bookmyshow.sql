-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2017 at 04:23 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `book_myshow`
--
CREATE DATABASE IF NOT EXISTS `book_myshow` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `book_myshow`;

-- --------------------------------------------------------

--
-- Table structure for table `booking_ticket_for_theatre`
--

DROP TABLE IF EXISTS `booking_ticket_for_theatre`;
CREATE TABLE IF NOT EXISTS `booking_ticket_for_theatre` (
  `booking_id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) NOT NULL,
  `theatre_show_time_id` int(1) NOT NULL,
  `date_of_booking` date NOT NULL,
  `show_time_id` int(1) NOT NULL,
  `ticket_rate_id` int(1) NOT NULL,
  `number_of_seats` int(10) NOT NULL,
  `seat_numbers` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_theatre_show_time_id` (`theatre_show_time_id`),
  KEY `fk_ticket_rate_id` (`ticket_rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Truncate table before insert `booking_ticket_for_theatre`
--

TRUNCATE TABLE `booking_ticket_for_theatre`;
--
-- Dumping data for table `booking_ticket_for_theatre`
--

INSERT INTO `booking_ticket_for_theatre` (`booking_id`, `user_id`, `theatre_show_time_id`, `date_of_booking`, `show_time_id`, `ticket_rate_id`, `number_of_seats`, `seat_numbers`) VALUES
(1, 1, 6, '2012-11-05', 1, 1, 3, '1,2,3'),
(2, 1, 6, '2012-11-12', 2, 3, 9, '80,81,82,83,84,85,86,87,88'),
(3, 1, 6, '2012-11-09', 2, 3, 2, '88,89'),
(4, 1, 9, '2012-11-14', 2, 1, 3, '6,16,26,36'),
(5, 1, 11, '2012-11-13', 2, 1, 4, '35,36,38,41'),
(6, 1, 8, '2012-11-14', 3, 3, 3, '107,108,118,127,128'),
(7, 6, 8, '2012-11-15', 4, 2, 5, '56,67,78,87,99'),
(8, 6, 8, '2012-11-14', 3, 3, 3, '119,120,129'),
(9, 1, 9, '2012-11-17', 2, 1, 6, '16,18,19,28,29,34'),
(10, 6, 9, '2012-11-20', 2, 1, 3, '16,26,36'),
(11, 6, 9, '2012-11-17', 2, 1, 2, '27,38'),
(12, 1, 7, '2012-11-20', 2, 1, 3, '5,15,25'),
(13, 6, 3, '2012-11-20', 2, 1, 5, '6,17,18,27,28'),
(14, 2, 11, '2012-11-21', 4, 2, 6, '62,63,64,65,66,67'),
(15, 1, 7, '2012-11-22', 2, 1, 3, '35,36,46'),
(16, 8, 7, '2012-11-23', 1, 1, 2, '24,25'),
(17, 1, 8, '2012-11-22', 4, 1, 3, '27,37,47'),
(18, 1, 61, '2012-11-23', 1, 1, 8, '31,32,33,34,35,36,37,38'),
(19, 12, 29, '2012-11-24', 1, 1, 4, '31,32,33,34'),
(20, 12, 30, '2012-11-24', 2, 2, 1, '71'),
(21, 12, 29, '2012-11-24', 1, 1, 1, '35');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `city_id` int(1) NOT NULL AUTO_INCREMENT,
  `city` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Truncate table before insert `cities`
--

TRUNCATE TABLE `cities`;
--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city`) VALUES
(1, 'bangalore'),
(2, 'gulbarga'),
(3, 'manipal'),
(4, 'shimoga'),
(5, 'mangalore'),
(6, 'udupi'),
(7, 'bhidar'),
(8, 'mysore'),
(9, 'hubli'),
(10, 'dharwad');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(1) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(32) NOT NULL,
  `movie_director` varchar(32) NOT NULL,
  `movie_decription` varchar(100) DEFAULT NULL,
  `movie_language` varchar(32) DEFAULT NULL,
  `movie_poster` varchar(100) NOT NULL,
  `islive` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Truncate table before insert `movies`
--

TRUNCATE TABLE `movies`;
--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_director`, `movie_decription`, `movie_language`, `movie_poster`, `islive`) VALUES
(1, 'Son Of Sardars', 'Ashwni Dhir', 'Bollywood Action Comedy Film', 'Hindi', 'Son-Of-Sardars.png', 'Running'),
(2, 'Jab Tak Hai Jann', 'yash chopra', 'Indian Romance Movie By Late Yash Raj', 'Hindi', 'Jab-Tak-Hai-Jann.png', 'Running'),
(3, 'Sky Fall', 'Sam Mendes', 'Latest Bond Movie of 2012', 'English', 'Sky-Fall.png', 'Running'),
(4, 'Denikaina Ready', 'G. Nageswara Reddy', 'Slapstick telugu movie with comedy', 'Telugu', 'Denikaina-Ready.png', 'Running'),
(5, 'Student Of The Year', 'karan johar', 'Indian Comedy with touch of romance', 'Hindi', 'Student-Of-The-Year.png', 'not Running'),
(6, 'Life Of Pie', 'Ang Lee', 'Hollywood film based on Fantasy Novel', 'English', 'Life-Of-Pie.png', 'Running'),
(7, 'English Vinglish', 'Gauri Shinde', 'House-wife comedy Drama', 'Hindi', 'English-Vinglish.png', 'Running'),
(8, 'Krantiveera Sangolli Rayanna', 'naganna', 'Based on freedom fighter Rayanna', 'kannada', 'Krantiveera.png', 'Running'),
(9, 'bus stop ', 'maruthi', 'Romance in today''s Generation', 'telugu', 'bus-stop.png', 'Running'),
(10, 'thuppaki', 'A. R. Murugadoss', 'Military-terrorism with thrilling action', 'tamil', 'thuppakki.png', 'Running'),
(11, 'guru', 'Prashanth Raj', 'Sandalwood action Movie', 'kannada', 'guru.png', 'Running'),
(12, 'super shasthri', 'Raviraj', 'Kannada romantic comedy movie', 'kannada', 'super-shasthri.png', 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `rid` int(1) NOT NULL AUTO_INCREMENT,
  `role` varchar(32) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Truncate table before insert `roles`
--

TRUNCATE TABLE `roles`;
--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rid`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

DROP TABLE IF EXISTS `screens`;
CREATE TABLE IF NOT EXISTS `screens` (
  `screen_id` int(1) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(32) NOT NULL,
  `theatre_id` int(1) NOT NULL,
  `movie_id` int(1) NOT NULL,
  `screen_capactiy` int(1) NOT NULL,
  PRIMARY KEY (`screen_id`),
  KEY `fk_theatre_id` (`theatre_id`),
  KEY `fk_movie_id` (`movie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=164 ;

--
-- Truncate table before insert `screens`
--

TRUNCATE TABLE `screens`;
--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`screen_id`, `screen_name`, `theatre_id`, `movie_id`, `screen_capactiy`) VALUES
(101, 'A', 1, 1, 100),
(102, 'B', 1, 2, 200),
(103, 'C', 1, 3, 150),
(104, 'D', 1, 9, 120),
(105, 'E', 1, 10, 100),
(106, 'A', 2, 11, 150),
(107, 'B', 2, 2, 130),
(108, 'C', 2, 3, 100),
(109, 'D', 2, 1, 120),
(110, 'A', 3, 2, 100),
(111, 'B', 3, 3, 110),
(112, 'C', 3, 1, 110),
(113, 'D', 3, 10, 120),
(114, 'A', 4, 5, 100),
(115, 'B', 4, 7, 100),
(116, 'C', 4, 3, 120),
(117, 'D', 4, 1, 130),
(118, 'A', 5, 4, 140),
(119, 'B', 5, 9, 115),
(120, 'C', 5, 11, 110),
(121, 'A', 6, 9, 100),
(122, 'B', 6, 2, 111),
(123, 'C', 6, 3, 150),
(124, 'A', 7, 12, 100),
(125, 'A', 8, 8, 120),
(126, 'A', 9, 1, 145),
(127, 'B', 9, 2, 135),
(128, 'A', 10, 12, 120),
(129, 'A', 11, 2, 115),
(130, 'A', 12, 11, 120),
(131, 'A', 13, 8, 0),
(132, 'A', 14, 12, 0),
(133, 'A', 15, 1, 125),
(134, 'B', 15, 2, 130),
(135, 'C', 15, 3, 150),
(136, 'A', 16, 8, 115),
(137, 'A', 17, 1, 120),
(138, 'B', 17, 3, 100),
(139, 'A', 18, 12, 200),
(140, 'A', 19, 11, 135),
(141, 'A', 20, 8, 115),
(142, 'A', 21, 1, 115),
(143, 'A', 22, 1, 100),
(144, 'A', 23, 1, 140),
(145, 'A', 24, 11, 200),
(146, 'A', 25, 1, 160),
(147, 'B', 25, 9, 160),
(148, 'C', 25, 2, 175),
(149, 'D', 25, 8, 200),
(150, 'A', 26, 3, 180),
(151, 'B', 26, 1, 100),
(152, 'C', 26, 11, 115),
(153, 'D', 26, 2, 175),
(154, 'A', 27, 11, 120),
(155, 'A', 28, 12, 200),
(156, 'A', 29, 2, 145),
(157, 'A', 30, 1, 130),
(158, 'A', 31, 8, 110),
(159, 'A', 32, 9, 150),
(160, 'A', 33, 5, 120),
(161, 'A', 34, 12, 125),
(162, 'A', 35, 8, 119),
(163, 'A', 36, 12, 139);

-- --------------------------------------------------------

--
-- Table structure for table `show_timing`
--

DROP TABLE IF EXISTS `show_timing`;
CREATE TABLE IF NOT EXISTS `show_timing` (
  `show_time_id` int(1) NOT NULL AUTO_INCREMENT,
  `show_time` varchar(50) NOT NULL,
  PRIMARY KEY (`show_time_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Truncate table before insert `show_timing`
--

TRUNCATE TABLE `show_timing`;
--
-- Dumping data for table `show_timing`
--

INSERT INTO `show_timing` (`show_time_id`, `show_time`) VALUES
(1, 'Morning Show  [09:30am - 12:00pm]'),
(2, 'Matinee Show [12:30pm - 30:00pm]'),
(3, 'First Show [06:30pm - 09:00pm]'),
(4, 'Second Show [09:30pm - 12:00pm]');

-- --------------------------------------------------------

--
-- Table structure for table `theatres`
--

DROP TABLE IF EXISTS `theatres`;
CREATE TABLE IF NOT EXISTS `theatres` (
  `theatre_id` int(1) NOT NULL AUTO_INCREMENT,
  `city_id` int(1) NOT NULL,
  `theatre_name` varchar(32) NOT NULL,
  `manager` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`theatre_id`),
  KEY `fk_city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Truncate table before insert `theatres`
--

TRUNCATE TABLE `theatres`;
--
-- Dumping data for table `theatres`
--

INSERT INTO `theatres` (`theatre_id`, `city_id`, `theatre_name`, `manager`) VALUES
(1, 1, 'cinema plex', 'pramod'),
(2, 1, 'Cinepolis Theatre', 'pramod'),
(3, 1, 'Fame Cinemas', 'pramod'),
(4, 1, 'Inox Cinemas', 'pramod'),
(5, 1, 'Pvr Cinemas', 'pramod'),
(6, 1, 'Q Cinemas', 'pramod'),
(7, 2, 'mahatesh', 'chandu'),
(8, 2, 'sangam talkies', 'chandu'),
(9, 2, 'shetty''multipllex', 'chandu'),
(10, 2, 'triveni talkies', 'chandu'),
(11, 3, 'movie dome ', 'ashok'),
(12, 4, 'hpc talkies ', 'dan'),
(13, 4, 'sree venkatesha ', 'dan'),
(14, 4, 'laxmi chitramandira', 'dan'),
(15, 5, 'big cinemas ', 'teja'),
(16, 5, 'cenrtal theatre', 'teja'),
(17, 5, 'new chitra theatre ', 'teja'),
(18, 5, 'platinum ', 'teja'),
(19, 5, 'prabhath theatre ', 'teja'),
(20, 6, 'alankar theatre ', 'ramesh'),
(21, 6, 'ashirvad theatre', 'ramesh'),
(22, 6, 'diana theatre ', 'ramesh'),
(23, 6, 'planet cinema ', 'ramesh'),
(24, 7, 'deepak theatre ', 'pali'),
(25, 8, 'Drc Cinemas', 'bhaghat'),
(26, 8, 'Satyam Cineplexes', 'bhaghat'),
(27, 8, 'new opera theatre', 'bhaghat'),
(28, 8, 'olympia theatre', 'bhaghat'),
(29, 9, 'apsara theatre ', 'suresh'),
(30, 9, 'laxmi mata theatre ', 'suresh'),
(31, 9, 'sanjota theatre ', 'suresh'),
(32, 9, 'sudha theatre', 'suresh'),
(33, 10, 'apsara theatre', 'dinesh'),
(34, 10, 'padma talkies', 'dinesh'),
(35, 10, 'rupam theatres', 'dinesh'),
(36, 10, 'sudha theatre', 'dinesh');

-- --------------------------------------------------------

--
-- Table structure for table `theatre_show_timings`
--

DROP TABLE IF EXISTS `theatre_show_timings`;
CREATE TABLE IF NOT EXISTS `theatre_show_timings` (
  `theatre_show_time_id` int(1) NOT NULL AUTO_INCREMENT,
  `screen_id` int(1) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`theatre_show_time_id`),
  KEY `fk_screen_id` (`screen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Truncate table before insert `theatre_show_timings`
--

TRUNCATE TABLE `theatre_show_timings`;
--
-- Dumping data for table `theatre_show_timings`
--

INSERT INTO `theatre_show_timings` (`theatre_show_time_id`, `screen_id`, `start_date`, `end_date`) VALUES
(1, 106, '2012-10-31', '2012-11-29'),
(2, 110, '2012-11-04', '2012-11-30'),
(3, 114, '2012-11-02', '2012-11-21'),
(4, 108, '2012-11-05', '2012-12-12'),
(5, 112, '2012-11-03', '2012-11-30'),
(6, 101, '2012-11-04', '2013-01-26'),
(7, 102, '2012-11-14', '2012-11-30'),
(8, 103, '2012-11-01', '2012-12-29'),
(9, 104, '2012-11-01', '2012-11-22'),
(10, 105, '2012-11-07', '2012-11-30'),
(11, 107, '2012-11-01', '2012-11-22'),
(12, 109, '2012-11-02', '2012-12-26'),
(13, 111, '2012-11-07', '2012-11-30'),
(14, 113, '2012-11-01', '2012-11-24'),
(15, 115, '2012-11-22', '2012-11-23'),
(16, 116, '2012-11-09', '2012-11-30'),
(17, 117, '2012-11-01', '2012-12-30'),
(18, 118, '2012-11-13', '2013-01-30'),
(19, 119, '2012-11-23', '2012-12-20'),
(20, 120, '2012-11-22', '2012-12-12'),
(21, 121, '2012-11-22', '2012-11-30'),
(22, 122, '2012-11-09', '2012-12-09'),
(23, 123, '2012-11-10', '2012-11-30'),
(24, 124, '2012-11-03', '2012-12-03'),
(25, 125, '2012-11-03', '2012-12-03'),
(26, 126, '2012-10-03', '2012-11-24'),
(27, 127, '2012-11-03', '2012-12-03'),
(28, 128, '2012-11-03', '2012-12-04'),
(29, 129, '2012-11-03', '2012-12-03'),
(30, 130, '2012-11-03', '2012-12-04'),
(31, 131, '2012-11-03', '2012-12-04'),
(32, 132, '2012-11-03', '2012-12-05'),
(33, 133, '2012-11-20', '2012-12-03'),
(34, 134, '2012-11-03', '2012-12-30'),
(35, 135, '2012-01-19', '2012-12-30'),
(36, 136, '2012-10-03', '2012-12-28'),
(37, 137, '2012-10-03', '2012-12-28'),
(38, 138, '2012-10-03', '2012-12-31'),
(39, 139, '2012-11-07', '2012-12-31'),
(40, 140, '2012-11-13', '2012-12-12'),
(41, 141, '2012-11-19', '2012-12-20'),
(42, 142, '2012-11-08', '2012-12-20'),
(43, 143, '2012-01-03', '2012-12-30'),
(44, 144, '2012-11-20', '2012-12-03'),
(45, 145, '2012-10-03', '2012-12-03'),
(46, 146, '2012-11-13', '2012-11-30'),
(47, 147, '2012-11-01', '2012-12-03'),
(48, 148, '2012-12-05', '2013-01-03'),
(49, 149, '2012-10-24', '2013-01-02'),
(50, 150, '2012-11-06', '2013-01-04'),
(51, 151, '2012-11-03', '2012-11-29'),
(52, 152, '2012-11-19', '2012-12-04'),
(53, 153, '2012-11-08', '2013-01-13'),
(54, 154, '2012-11-06', '2013-01-23'),
(55, 155, '2012-11-14', '2012-12-28'),
(56, 156, '2011-10-04', '2013-01-30'),
(57, 157, '2011-01-13', '2013-01-13'),
(58, 158, '2012-01-03', '2013-01-26'),
(59, 159, '2012-01-03', '2013-01-28'),
(60, 160, '2012-01-03', '2012-11-30'),
(61, 161, '2011-11-10', '2013-01-24'),
(62, 162, '2012-01-17', '2013-01-05'),
(63, 163, '2012-01-20', '2013-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_rate`
--

DROP TABLE IF EXISTS `ticket_rate`;
CREATE TABLE IF NOT EXISTS `ticket_rate` (
  `ticket_rate_id` int(1) NOT NULL AUTO_INCREMENT,
  `ticket_type` varchar(32) CHARACTER SET utf8 NOT NULL,
  `ticket_price` int(1) NOT NULL,
  PRIMARY KEY (`ticket_rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Truncate table before insert `ticket_rate`
--

TRUNCATE TABLE `ticket_rate`;
--
-- Dumping data for table `ticket_rate`
--

INSERT INTO `ticket_rate` (`ticket_rate_id`, `ticket_type`, `ticket_price`) VALUES
(1, 'Platinium', 300),
(2, 'Gold', 200),
(3, 'Silver', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(1) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  `rid` int(1) NOT NULL DEFAULT '3',
  `sid` varchar(50) NOT NULL DEFAULT '0',
  `login_time` varchar(32) NOT NULL,
  `logout_time` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_rid` (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `address`, `mobile_number`, `rid`, `sid`, `login_time`, `logout_time`) VALUES
(1, 'bhagat', '18427a4a7f0aaf3f78ec13c5dc121894', 'bhagat.sangam1992@gmail.com', 'Bhagat', 'Sangam', 'Mumbai', '7204856706', 1, '0', '1356509700', '1356509769'),
(2, 'teja', '19edacd33ab84209efc96eb76f578f38', 'tejakikat@gmail.com', 'Teja', 'Palisheety', 'Vizag', '7894561237', 2, '0', '1353515438', '1353516630'),
(3, 'ravi', '63dd3e154ca6d948fc380fa576343ba6', 'raviteja@gmail.com', 'Ravi', 'Teja', 'Vijaywada', '9111222333', 3, '0', '1353430467', '1353430497'),
(4, 'bharath', '7616b81196ee6fe328497da3f1d9912d', 'bharath.k.sangam@gmail.com', 'Bharath', 'Sangam', 'Mumbai', '7208612664', 3, '0', '1353352936', '1353349436'),
(5, 'drupal', '08d15a4aef553492d8971cdd5198f314', 'drupal.cool.expert1@gmail.com', 'Drupal', 'Expert', 'Mumbai', '7208612664', 3, '0', '1353430829', '1353430905'),
(6, 'heman', '2c015b9d98247a59a2d574a972d49076', 'heman.sangam@gmail.com', 'heman', 'Sangam', 'koliwadaa', '7208612664', 3, '0', '1353432863', '1353432878'),
(7, 'sunil', 'b0b86080c976aa7651bffe0801644d74', 'sunil@gmail.com', 'nayana', 'maam', 'vijay nagar antophill', '1234567898', 3, '0', '2012-11-22', '1353579323'),
(8, 'bhagat1', '085f0531712389160156d198519d3a03', 'bhagatj@gamail.com', 'bhagat', 'bhagat', 'vijay nagar antophill', '7898645784', 3, '4hjo0t0mel9rlosh5sai0ggh70', '2012-11-22', ''),
(9, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', 3, 's8hu4f1ov64uu762j5v9bftmo6', '1507546340', '1353646341'),
(12, 'chandrakanth', 'ad845a24a47deecbfa8396e90db75c6a', 'vishal.chandru@gmail.com', 'Chandra', 'Kanth', 'nitk hostels surathkal', '9538908515', 3, '0', '1353642980', '1353643060');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `screens`
--
ALTER TABLE `screens`
  ADD CONSTRAINT `fk_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `fk_theatre_id` FOREIGN KEY (`theatre_id`) REFERENCES `theatres` (`theatre_id`);

--
-- Constraints for table `theatres`
--
ALTER TABLE `theatres`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `theatre_show_timings`
--
ALTER TABLE `theatre_show_timings`
  ADD CONSTRAINT `fk_screen_id` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`screen_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rid` FOREIGN KEY (`rid`) REFERENCES `roles` (`rid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
