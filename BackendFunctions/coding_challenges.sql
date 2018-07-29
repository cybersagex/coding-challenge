-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2018 at 02:05 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding_challenges`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(10) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `initial_code` text NOT NULL,
  `function_name` text NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `initial_code`, `function_name`) VALUES
(1, 'Write a python function fact(n) that returns factorial of a number', 'def fact(n):\r\n	#code here..', 'fact()'),
(2, 'Write a python function list_sum(l) that takes a python list as a parameter and returns the sum of all the elements in the list', 'def list_sum(l):\r\n	#code here', 'list_sum()'),
(3, 'Write a python function end_by_zero(t) that takes a number as a parameter and returns True if the number ends with 0 else returns False', 'def end_by_zero(n):\r\n	#code here', 'end_by_zero()'),
(4, 'Write a python function tuple_eq(n) that takes a python tuple as a parameter and returns True if the first element of the tuple is equal to the second element of the tuple', 'def tuple_eq(n):\r\n	#code here', 'tuple_eq()'),
(5, 'Write a python function ZipMerge(l) that takes a python list of lists as a parameter and returns a list that contains the elements of all the lists', 'def ZipMerge(l):\n	#code here', 'ZipMerge()');

-- --------------------------------------------------------

--
-- Table structure for table `sample_test_cases`
--

DROP TABLE IF EXISTS `sample_test_cases`;
CREATE TABLE IF NOT EXISTS `sample_test_cases` (
  `st_id` int(1) NOT NULL,
  `input` text NOT NULL,
  `output` text NOT NULL,
  `qid` int(11) DEFAULT NULL,
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_test_cases`
--

INSERT INTO `sample_test_cases` (`st_id`, `input`, `output`, `qid`) VALUES
(1, '5', '120', 1),
(2, '7', '5040', 1),
(3, '4', '24', 1),
(1, '[1,2,3]', '6', 2),
(2, '[3,4,5]', '12', 2),
(3, '[4,7,8]', '19', 2),
(1, '10', 'True', 3),
(2, '99', 'False', 3),
(3, '1080', 'True', 3),
(1, '(1,1)', 'True', 4),
(2, '(23,32)', 'False', 4),
(3, '(a,a)', 'True', 4),
(1, '[[1,2],[3,4]]', '[1,3,2,4]', 5),
(2, '[[1,a],[2,b]]', '[1,2,a,b]', 5),
(3, '[[2,3],[a,b]]', '[2,a,3,b]', 5);

-- --------------------------------------------------------

--
-- Table structure for table `testcase`
--

DROP TABLE IF EXISTS `testcase`;
CREATE TABLE IF NOT EXISTS `testcase` (
  `tc_no` int(11) NOT NULL,
  `input_function_call` text NOT NULL,
  `expected_output` text NOT NULL,
  `qid` int(11) DEFAULT NULL,
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tc_id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcase`
--

INSERT INTO `testcase` (`tc_no`, `input_function_call`, `expected_output`, `qid`, `tc_id`) VALUES
(1, 'print(fact(10))', '3628800', 1, 1),
(2, 'print(fact(9))', '362880', 1, 2),
(3, 'print(fact(5))', '120', 1, 3),
(4, 'print(fact(-5))', 'None', 1, 4),
(5, 'print(fact(-7))', 'None', 1, 5),
(1, 'print(list_sum([1,2,3,4]))', '10', 2, 6),
(2, 'print(list_sum([13,-13,0]))', '0', 2, 7),
(3, 'print(list_sum([23,-23,3]))', '3', 2, 8),
(4, 'print(list_sum([-4,-5,-7]))', '-16', 2, 9),
(5, 'print(list_sum([3,-3]))', '0', 2, 10),
(1, 'print(end_by_zero(10))', 'True', 3, 11),
(2, 'print(end_by_zero(1080))', 'True', 3, 12),
(3, 'print(end_by_zero(88))', 'False', 3, 13),
(4, 'print(end_by_zero(0))', 'True', 3, 14),
(5, 'print(end_by_zero(1008))', 'False', 3, 15),
(1, 'print(tuple_eq((1,2)))', 'False', 4, 16),
(2, 'print(tuple_eq((22,22)))', 'True', 4, 17),
(3, 'print(tuple_eq((-22,22)))', 'False', 4, 18),
(4, 'print(tuple_eq((\"a\",\"a\")))', 'True', 4, 19),
(5, 'print(tuple_eq((\"aba\",\"baa\")))', 'False', 4, 20),
(4, 'print(ZipMerge([[\"a\",\"b\"],[\"c\",\"d\"]]))', '[\'a\', \'c\', \'b\', \'d\']', 5, 24),
(3, 'print(ZipMerge([[\"a\",2],[\"b\",3]]))', '[\'a\', \'b\', 2, 3]', 5, 23),
(2, 'print(ZipMerge([[3,66],[2,4]]))', '[3, 2, 66, 4]', 5, 22),
(1, 'print(ZipMerge([[3,-3],[2,2]]))', '[3, 2, -3, 2]', 5, 21),
(5, 'print(ZipMerge([[4,4],[2,2]]))', '[4, 2, 4, 2]', 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_pwd`) VALUES
(2, 'Shubham', 'Parchure', 'parchureshubham211@gmail.com', '$2y$10$gcelgtlirai7UYQbnJzq0ecRVddz.Rxa6mFgzA.b.BZ4K0e5Nf/VC'),
(7, 'Rucha', 'Mahabal', 'ruchamahabal812@gmail.com', '$2y$10$mYIGoONQegdFU0yTaivWyuO36NFcHolWMYQPabH7n0uNejqt8VB7C');

-- --------------------------------------------------------

--
-- Table structure for table `user_scores`
--

DROP TABLE IF EXISTS `user_scores`;
CREATE TABLE IF NOT EXISTS `user_scores` (
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_scores`
--

INSERT INTO `user_scores` (`user_id`, `score`) VALUES
(7, 0),
(7, 50),
(7, 100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
