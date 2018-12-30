-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2018 at 07:14 PM
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
-- Database: `techxposure`
--

-- --------------------------------------------------------

--
-- Table structure for table `fine_arts_events`
--

DROP TABLE IF EXISTS `fine_arts_events`;
CREATE TABLE IF NOT EXISTS `fine_arts_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `rules` text,
  `members` text,
  `registration_fees` text,
  `prize` text,
  `time` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_arts_events`
--

INSERT INTO `fine_arts_events` (`id`, `title`, `description`, `rules`, `members`, `registration_fees`, `prize`, `time`) VALUES
(1, 'Quilling', 'Quilling involves the use of strips of paper, fabric, glass, or even fondant that are rolled, shaped, and attached together to create interesting designs. Your artwork should be related to our theme i.e Evolution of Games ', '1. Participant should bring their own material.<br>\r\n2. Material should not contain any readymade artwork.<br>\r\n3. Usage of any digital or physical reference for design patterns at the place of competition is restricted.<br>\r\n4. Judges\' decision will be final.<br>\r\n', '1', 'Rs. 30', 'Certificate + Goodies/Cash Prizes', '1 hr'),
(2, 'T-Shirt Painting', 'Make a colourful painting on a t-shirt based on our theme - Evolution of Games ', '1. One t-shirt will be provided.<br>\r\n2. Electronic devices of any form will not be allowed.<br>\r\n4. The art work should be based on our theme or any technical awareness topic.<br>\r\n5. Participants should carry their own colours and brushes.<br>\r\n6. Any digital or physical reference at the venue are restricted.<br>\r\n3. Judge\'s decision will be the final decision', '1', 'Rs. 30', 'Certificate + Goodies/Cash prizes', '1 hr'),
(3, 'Best out of E-Waste', '\"Think outside the Trash\" ', '1. We will provide the e-waste<br>\r\n2. Glue , scissors, and other stationery material should be carried by the participants.<br>\r\n3. Thirty seconds will be provided to collect the material.<br>\r\n4. Thirty minutes for making funk from junk.<br>\r\n5. Use of mobile phones or other reference materials is not allowed.<br>\r\n6. Judge\'s decision will be the final decision.', '2', 'Rs. 40 ', 'Certificates + Goodies/Cash prizes', '30 mins');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `name` varchar(50) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`name`, `college_name`, `email`, `phone`) VALUES
('Rishi gohil', 'Sk somaiya degree college of arts science and commerce', 'rishigohil2000@gmail.com', '8080915787'),
('Ch', 'Ggg', 'sbsbsn7@gmail.com', '1234567890'),
('Om Thakkar', 'S. K. Somaiya College Of Arts, Science And Commerce', 'om.t@somaiya.edu', '7506576388'),
('Podal Ajay', 'MGM COLLEGE OF ENGINEERING', 'ajaypodal18@gmail.com', '9769921330'),
('Bhavya Doshi', 'Aurobindo ', 'bhavyaVampi@gmail.com', '8169019368'),
('Mehta Darshan', 'S.k somaiya', 'mehtadarshan319@gmail.com', '8879845002'),
('Pratham Mehta', 'Shah and Anchor Kutchhi Engineering College ', 'prathamgenius@gmail.com', '9819001133'),
('ddf', 'dff', 'xdf@gs.c', '8977887788'),
('Shubham Lokhande', 'S.K.Somaiya college', 'shubhamlok23@gmail.com', '9987629034'),
('Meet Maru', 'Mithibai College', 'meetmaru301@gmail.com', '9987735652'),
('Rishika', 'TSEC', '0309rishika@gmail.com', '9967609147'),
('Prathamesh Tari', 'Guru Nanak Khalsa College of Arts, Science and Commerce', 'tariprathamesh55@gmail.com', '9326880417'),
('Dhruti gandhi ', 'Sk somaiya vinay mandir jr.college', 'dhrutigandhi2000@gmail.com', '7303186148'),
('Shubham', 'Somaiya', 'parchureshubham211@gmail.com', '1234567891'),
('Aadi Jain', 'S.K Somaiya college of arts, science and commerce', 'aadijain1313@gmail.com', '9029323213'),
('Vinod more', 'Sk somaiya vinay mandir', 'vmvjarvis123@gmail.com', '9769297724'),
('Omkar sagavekar', 'Sk somaiya vinay mandir', 'sagavekaromkar123@gmail.com', '9967564002'),
('Raj jadhav', 'Sk somaiya vinay mandir', 'rajjdhv2001@gmail.com', '9167126442'),
('Darshan salunke', 'Sk somaiya vinay mandir', 'darshancricket85@gmail.com', '8898336129'),
('Aneesh Karma', 'IIT BOMBAY betic lab', 'aneesh.karma82@gmail.com', '9990864336'),
('Mohit Jain', 'Vidyalankar Institute of technology', 'mohit270900@gmail.com', '9820557346'),
('POOJA SHARMA', 'Sk Somaiya College of arts , science and commerce', 'ps6017157@gmail.com', '8767222557'),
('Siddhi dalvi', 'SK somaiya ', 'siddhidalvi293@gmail.com', '8108875307'),
('Maitri Sanghvi', 'Sk somaiya vinay mandir jr college ', 'matusanghavi@gmail.com', '9082456855'),
('Sagar Birmole', 'NES Ratnam', 'sagarbirmole003@gmail.com', '9757086720'),
('Smit khetiya', 'S.K. Somaiya', 'shkhetiya@gmail.com', '9930150004'),
('Harsha', 'Sies ', 'harshadeep1998915@gmail.com', '7710984909'),
('laxmi', 'Vidyalankar school of information technology', 'yadavlaxmi454@gmail.com', '9137136129'),
('Hrithikaa dhawle', 'Sk somaiya ', 'ritikadhawle1234@gmail.com', '9224238534'),
('Talha Ansari', 'Vidyalankar School of Information Technology', 'talhaansari.ansari7@gmail.com', '8452832553'),
('monali nayak', 'Fr C Rodrigues Institute of Technology', 'nayakmonali7@gmail.com', '9870584540'),
('Jayesh kanojiya', 'Sk somaiya college', 'kanojiyajayesh5@gmail.com', '9819317863'),
('Fahad A khan', 'Sk somaiya college', 'khan.fa@somaiya.edu', '9768412614'),
('Navin', 'Kj science and commerce ', 'panchaldarsh080@gmail.com', '9619252215'),
('Siddhesh sawant', 'Kj arts and commerce', 'sawantsiddhesh562002@gmail.com', '8652597854'),
('Prasant vishwakarma ', 'Sk somaiya college', 'prasantvish@gmail.com', '9004422252'),
('Varun sharma ', 'Mithibai college ', 's.vrex22@gmail.com', '8879194201'),
('Omkar rane', 'Mulund College of Commerce', 'omkarrane2000@gmail.com', '9869079500'),
('Haridini Nishane', 'Vidyalankar School of Information Technology', 'Haridini0@gmail.com', '7738894468'),
('mainak subir karmakar', 'Model college of science and commerce kalyan', 'tisaiphoto@gmail.cim', '8097174350'),
('Siddhant alhat', 'Vidyalankar school of information technology ', 'siddhantalhat2@gmail.com', '9004355347'),
('Srinivas Subramani', 'KJ Simsr', 's.subramani@somaiya.edu', '8097481862'),
('Raj Patel', 'KGCE', 'rajp4256.rp@gmail.com', '7972301146'),
('Austin Paris', 'Shri ram college', 'parisaustin0001@gmail.com', '9326873034'),
('saurabh mishra', 'Sk somaiya ', 'sm295460@gmail.com', '7378709059'),
('saurabh mishra', 'Sk somaiya ', 'saurabh.km@somaiya.edu', '7378709059'),
('Nitin Mishra', 'Khalsa college', 'nitinmishra528@gmail.com', '8452076665'),
('Vedant Vaidya', 'Balmohan Vidyamandir Eng Medium', 'vedantvaidya2017@gmail.com', '9819132155'),
('Ashutosh singh', 'Chhatrapati Shivaji maharaj  institute of technology', 'ashutoshsingh2000.as@gmail.com', '9892507442'),
('Piyush Dhurde', 'Smt. C H M college', 'piyush.dhurde02@gmail.com', '8956008767');

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
(1, 'Write a python function prime_list(l) that takes a python list as a parameter and returns a list of all the prime numbers in the parameter list. The result list should not contain duplicate elements.', 'def prime_list(l):\r\n  #code below', 'prime_list()'),
(2, 'Write a function matched(s) that takes as input a string s and checks if the brackets \"(\" and \")\" in s are matched: that is, every \"(\" has a matching \")\" after it and every \")\" has a matching \"(\" before it.  Your function should ignore all other symbols that appear in s.  Your function should return True if s has matched brackets and False if it does not.', 'def matched(s):\r\n  #code here', 'matched()'),
(3, 'A list of integers is said to be a valley if it consists of a sequence of strictly decreasing values followed by a sequence of strictly increasing values. The decreasing and increasing sequences must be of length at least 2. The last value of the decreasing sequence is the first value of the increasing sequence.\r\nWrite a Python function valley(l) that takes a list of integers and returns True if l is a valley and False otherwise.', 'def valley(l):\r\n  #code here', 'valley()');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_test_cases`
--

INSERT INTO `sample_test_cases` (`st_id`, `input`, `output`, `qid`, `id`) VALUES
(1, '[2,3,6,7]', '[2, 3, 7]', 1, 4),
(2, '[4,6,8,10]', '[]', 1, 5),
(3, '[44,71,356,1032]', '[71]', 1, 6),
(1, '\"zb%78\"', 'True', 2, 10),
(2, '\"(7)(a\"', 'False', 2, 11),
(3, '\"a)*(?\"', 'False', 2, 12),
(1, '[3,2,1,2,3]', 'True', 3, 13),
(2, '[3,2,1]', 'False', 3, 14),
(3, '[3,3,2,1,2]', 'False', 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `solo_registrations`
--

DROP TABLE IF EXISTS `solo_registrations`;
CREATE TABLE IF NOT EXISTS `solo_registrations` (
  `email` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solo_registrations`
--

INSERT INTO `solo_registrations` (`email`, `event_name`, `id`) VALUES
('yadavlaxmi454@gmail.com', 'Error Hunt', 1),
('yadavlaxmi454@gmail.com', 'Blind Coding', 2),
('yadavlaxmi454@gmail.com', 'Quiz', 3),
('harshadeep1998915@gmail.com', 'FIFA19', 5),
('shkhetiya@gmail.com', 'FIFA19', 6),
('sagarbirmole003@gmail.com', 'FIFA19', 7),
('shkhetiya@gmail.com', 'FIFA19', 9),
('xdf@gs.c', 'Photoshop', 11),
('prathamgenius@gmail.com', 'Rubiks Cube', 12),
('prathamgenius@gmail.com', 'Code Mapper', 13),
('piyush.dhurde02@gmail.com', 'Quiz', 71),
('rishigohil2000@gmail.com', 'Photoshop', 15),
('shubhamlok23@gmail.com', 'Rubiks Cube', 16),
('meetmaru301@gmail.com', 'PUBG Solo', 17),
('0309rishika@gmail.com', 'Error Hunt', 19),
('0309rishika@gmail.com', 'Web Designing', 20),
('tariprathamesh55@gmail.com', 'Quiz', 21),
('tariprathamesh55@gmail.com', 'Web Designing', 22),
('ashutoshsingh2000.as@gmail.com', 'PUBG Solo', 70),
('nitinmishra528@gmail.com', 'PUBG Solo', 69),
('dhrutigandhi2000@gmail.com', 'Quilling', 25),
('saurabh.km@somaiya.edu', 'Quiz', 68),
('saurabh.km@somaiya.edu', 'Error Hunt', 67),
('aadijain1313@gmail.com', 'PUBG Solo', 28),
('saurabh.km@somaiya.edu', 'Code Mapper', 66),
('mohit270900@gmail.com', 'PUBG Solo', 30),
('ps6017157@gmail.com', 'Web Designing', 31),
('siddhidalvi293@gmail.com', 'Web Designing', 32),
('sm295460@gmail.com', 'Error Hunt', 65),
('s.subramani@somaiya.edu', 'Blind Coding', 64),
('s.subramani@somaiya.edu', 'Code Mapper', 63),
('matusanghavi@gmail.com', 'Quilling', 36),
('mehtadarshan319@gmail.com', 'Quilling', 37),
('bhavyaVampi@gmail.com', 'Rubiks Cube', 38),
('ajaypodal18@gmail.com', 'Rubiks Cube', 39),
('ajaypodal18@gmail.com', 'Quiz', 40),
('om.t@somaiya.edu', 'Web Designing', 41),
('sbsbsn7@gmail.com', 'Error Hunt', 42),
('sbsbsn7@gmail.com', 'Quilling', 43),
('sbsbsn7@gmail.com', 'Photoshop', 44),
('yadavlaxmi454@gmail.com', 'Quiz', 45),
('yadavlaxmi454@gmail.com', 'Blind Coding', 46),
('ritikadhawle1234@gmail.com', 'Error Hunt', 47),
('omkarrane2000@gmail.com', 'Web Designing', 62),
('talhaansari.ansari7@gmail.com', 'Photoshop', 49),
('talhaansari.ansari7@gmail.com', 'Tech Debate', 50),
('nayakmonali7@gmail.com', 'Code Mapper', 51),
('khan.fa@somaiya.edu', 'FIFA19', 52),
('sawantsiddhesh562002@gmail.com', 'PUBG Solo', 53),
('s.vrex22@gmail.com', 'Rubiks Cube', 54),
('aneesh.karma82@gmail.com', 'Tech Exhibition', 55),
('as@asd.co', 'Code Mapper', 56),
('as@asd.co', 'Error Hunt', 57);

-- --------------------------------------------------------

--
-- Table structure for table `sub_events`
--

DROP TABLE IF EXISTS `sub_events`;
CREATE TABLE IF NOT EXISTS `sub_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `rules` text,
  `members` text,
  `registration_fees` text,
  `prize` text,
  `time` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_events`
--

INSERT INTO `sub_events` (`id`, `title`, `description`, `rules`, `members`, `registration_fees`, `prize`, `time`) VALUES
(1, 'Maze Racing', 'On the Spot Pay and Play', 'NA', 'NA', 'Rs.20', 'Certificate + Goodies/Cash Prize', 'NA'),
(2, 'Rubiks Cube', 'A puzzle to be solved in the form of a 3x3 plastic cube covered with multicoloured squares, which the player has to twist and turn so that all the squares on each face are of the same colour. The fastest one wins!', '1. Ten seconds will be given for inspection of the cube. <br>\r\n2. Only 1 chance will be given to solve the 3x3 cube.', '1', 'FREE', 'Certificate', 'No time limit. The fastest one wins!'),
(3, 'PUBG', 'DAY 1: Squad<br>\r\nDAY 2: Solo', '3 classic room matches will be played. Average of these matches will be taken to decide the 1st and 2nd positions.\r\n', 'DAY 1: Squad<br>\r\nDAY 2: Solo', 'DAY 1: Squad - Rs. 160 per Team<br>\r\nDAY 2: Solo - Rs. 30', '<pre>\r\nSOLO:\r\n1st Prize - Elite Pass\r\n2nd Prize - Goodies\r\nMost Kills - Rs. 500\r\n\r\nSQUAD:\r\n1st Prize - Rs. 2500\r\n2nd Prize - Goodies\r\nAggregate of Most Kills - Rs. 500\r\n</pre>', 'NA'),
(4, 'Treasure Hunt', 'Level after another, get closer to the treasure, be intelligent, smarter and faster to reach the ultimate goal!', '1. Maximum 5 members in a team.<br>\r\n2. Details of the event will be disclosed at the venue', '1 to 5', 'Rs. 50', 'Certificate + Goodies/Cash Prize', 'NA'),
(5, 'PPT Competition', 'Present a PPT to showcase your communication and interaction skills. Research on the interesting topics(to be disclosed soon) and present and convince the audience and judges with the best of the facts and valid explanations!', '1. PPT should be ready before the event.<br>\r\n2. PPT should be brought in a pen drive or it should be mailed to <b>techxposuretxp@gmail.com</b> half an hour before the event.<br>\r\n3. One minute will be given for preparation.<br>\r\n4. Five minutes for presentation.<br>\r\n5.Judgement will be based on the presentation skills and content.', 'NA', 'FREE', 'Certificate + Goodies/Cash Prize', '5 mins per presentation'),
(6, 'Instrumental', 'Beat the drums, tune in to your guitar, feel the music! ', '1. Backing tracks are not allowed.<br>\r\n2. No of members: minimum 1, maximum 2.<br>\r\n3. No vocals are allowed<br>\r\n4. Participants are expected to carry their own instruments.\r\n', 'Maximum 2', 'Stay Tuned, will be disclosed soon!', 'Stay Tuned, will be disclosed soon!', 'NA'),
(7, 'CS:GO', 'Shoot what you see!', '1. Players cannot be replaced between the game.<br>\r\n2. Five players per team<br>\r\n3. Map would be selected by veto system out of the 7 maps in the current competitive map pool <br>\r\n4. Tournament will be on knockout basis.<br>\r\n5. Only 2 mins will be allotted to make changes in the control settings and knockout settings. <br>\r\n6. Use of foul language and disagreement/misbehavior with crew members will lead to disqualification.', '5', 'NA', 'NA', 'NA'),
(8, 'FIFA19', 'A LAN Gaming Event...', '1. Each half will be of 4 mins.<br>\r\n2. In case of equalizer there will be penalty shootouts.<br>\r\n3. Controllers will be provided.<br>\r\n4. Other rules will be declared on the day of event.', '1', 'Rs. 50', '1st Prize: Rs. 500', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `team_registrations`
--

DROP TABLE IF EXISTS `team_registrations`;
CREATE TABLE IF NOT EXISTS `team_registrations` (
  `email` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `no_of_members` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_registrations`
--

INSERT INTO `team_registrations` (`email`, `event_name`, `no_of_members`, `id`) VALUES
('s.subramani@somaiya.edu', 'Tech Exhibition', '2', 25),
('prasantvish@gmail.com', 'PUBG Squad', '5', 2),
('panchaldarsh080@gmail.com', 'PUBG Squad', '5', 3),
('kanojiyajayesh5@gmail.com', 'PUBG Squad', '5', 4),
('rajjdhv2001@gmail.com', 'Tech Exhibition', '2', 5),
('sagavekaromkar123@gmail.com', 'Tech Exhibition', '2', 6),
('vmvjarvis123@gmail.com', 'Tech Exhibition', '2', 7),
('parisaustin0001@gmail.com', 'CS:GO', '5', 24),
('darshancricket85@gmail.com', 'Tech Exhibition', '2', 9),
('ritikadhawle1234@gmail.com', 'Treasure Hunt', 'Adnan moses', 10),
('rajp4256.rp@gmail.com', 'PUBG Squad', '4', 23),
('siddhantalhat2@gmail.com', 'Tech Exhibition', '2', 22),
('siddhantalhat2@gmail.com', 'Code Relay', '2', 21),
('siddhantalhat2@gmail.com', 'Switch-Hero', '2', 20),
('Haridini0@gmail.com', 'Tech Exhibition', '1', 19),
('tisaiphoto@gmail.cim', 'Tech Exhibition', '2', 17),
('saurabh.km@somaiya.edu', 'Code Relay', '2', 26),
('nitinmishra528@gmail.com', 'PUBG Squad', '4', 27),
('vedantvaidya2017@gmail.com', 'Tech Exhibition', '3', 28);

-- --------------------------------------------------------

--
-- Table structure for table `tech_events`
--

DROP TABLE IF EXISTS `tech_events`;
CREATE TABLE IF NOT EXISTS `tech_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `members` text,
  `languages` text NOT NULL,
  `registration_fees` text NOT NULL,
  `prize` text NOT NULL,
  `time` text,
  `levels` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_events`
--

INSERT INTO `tech_events` (`id`, `title`, `description`, `rules`, `members`, `languages`, `registration_fees`, `prize`, `time`, `levels`) VALUES
(1, 'Code Mapper', 'Get your brains thinking in this amazing Python Coding Challenge!', '1. Three python levels to be solved as a part of the challenge.<br>\r\n2. Access to any electronic media is prohibited.<br>\r\n3. Compilation is allowed only limited number of times in the entire challenge.<br>\r\n4. Judgement will be based on the final score which comprises of time taken to solve the entire challenge and the testcases passes. (There will be some hidden test cases as well)<br>\r\n5. More details regarding rules will be provided before the challenge.', '1', 'Python', '20 Rs.', 'Trophy + Certificate + Goodies', '2 hrs', 1),
(2, 'Error Hunt', 'Test how observant and speedy you are by finding the errors in the 3 C snippets given to you, as fast\r\nas possible!', '1. 3 codes in C language would be given.<br>\r\n2. First one to solve all errors wins.<br>\r\n3. Factor to decide positions = No of critical errors solved.', '1', 'C', '20 Rs.', 'Certificate + Cash Prizes + Goodies', '1 hr', 1),
(3, 'Blind Coding', 'Master of Code? Blind Coding should be an easy task for you then! Participants will have their monitors shut as\r\nthey race against time and of course other programmers to code 1 simple program in Java. Winner takes all!\r\n', '1. First one to develop the most error-free code wins. <br>\r\n2. You can only switch on the monitor when you submit the final code. Your code will be executed after you submit and switch on the monitor. <br>\r\n3. Evaluation will be based on how much error free your code is. <br>\r\n4. No IDE would be provided, coding only in notepad.', '1', 'Java', '10 Rs.', 'Certificate + Goodies/Cash Prizes', '1 hr.', 1),
(4, 'Photoshop', 'Inspired by James Friedman?! We got your backs! Come here and showcase how creative you can get with your\r\nPhotoshop skills and how fast you can come up with exemplary ideas in a pinch situation!', '1. Judgement based on creativity and techniques used <br>\r\n2. 20 images will be provided <br>\r\n3. Minimum 5 images are to be used to create a composite image.', '1', 'NA', '10 Rs.', 'Certificate + Goodies/Cash Prize', '1 hr', 1),
(5, 'Code In Less', 'Fan of optimization? Prepare the Best code using as few lines and resources as possible and solve the problem in the most fashionable\r\nway possible! Choose from either c++, Java or Python, but most importantly, choose wisely.\r\n', 'NA', '1', 'PHP, Java, Python, C++', '20', '300 Rs.', '60', 1),
(6, 'Switch-Hero', 'Venture into the wilderness of creating codes for the corporates! Write codes which will be completed by your partner\r\nwithout any means of communication!<br> Consequently, complete his code in as less time as possible and become The\r\nUltimate Switch Hero!\r\n<br>\r\n2 man teams, race against a time limit of 1:30 hrs', '1. Two questions would be given, one in C and one in Python. <br>\r\n2. Pair has to start coding on these two different questions and switch in every 10 mins to complete each others codes. <br>\r\n3. Switching after every 10 minutes', '2', 'C, Python', '20 Rs.', 'Certificates + Goodies/Cash Prizes', '1 hr 30 mins', 1),
(7, 'Quiz', 'Got a Million Tera Bytes of Tech Data in your head? Participate in the Ultimate quizzing event and go from Self\r\nProclaimed Tech Guru to Certified Tech Guru! Take from your past experiences of gaming and tech knowledge to\r\nmake your competition bite the dust!\r\n', '1. Round 1 Topic = Tech Quiz <br>\r\n2. Participants will be distributed in                               batches of 5 and from each batch top 2 winners will advance for next round. <br>\r\n3. Finale = All people will face-off <br>\r\n4. Finale Topic = Evolution of Games.', '1', 'NA', '10 Rs.', 'Certificate + Goodies/Cash Prizes', '2 hrs.', 2),
(8, 'Tech Debate', 'Indulge yourself in the most productive event at TXP 2.0 as you debate your way along the most controversial tech\r\ntopics and showcase not just new ideas but win peoples hearts with the amazing deductions and best possible\r\nconclusions!', '1. Topic will be disclosed 10 minutes before the event and participants will be given this time to discuss within their teams. <br>\r\n2. Teams have to debate for 10 minutes. <br>\r\n3. While starting the debate team needs to decide whether it is against or in favour of the topic. <br>\r\n4. Judges decision will be the final decision <br>\r\n5. Any misbehaviour will lead to immediate disqualification.', '2 to 5', 'NA', 'FREE', 'Certificate + Goodies/Cash Prizes', '10 mins', 1),
(9, 'Code Relay', 'Level 1: Prepare codes in as many languages as possible using the input output set given to you!\r\nTeam to get expected outputs in as many languages as possible wins! 2PC\'s Per team\r\n<br>Level 2: Put your cognitive abilities to the test as you analyse the given code and translate it into another language!', '1. Level 1 = code in as many languages as you can to produce from the given pool of languages <br>\r\n2. Level 2 = Convert code written in one language i.e Python to another language i.e. C <br>\r\n3. 1 hour for each level', '1 to 3', 'C, C++, Python, Java, PHP, C# ', '20 Rs.', 'Certificate + Goodies/Cash Prize', '2 hrs.', 2),
(10, 'Web Designing', 'Love Naruto? Become a master of cloning and coding as you try and create the same website as flashed on screen!', '1. web site will be shown for initial 10 minutes and then again for 10 mins after an hour. <br>\r\n2. Players will be given a sheet to write down details or do rough work. <br>\r\n3. They have to clone the webpage as it is flashed. <br>\r\n4. Judging will be based on the time taken to clone the webpage and the accuracy of cloning.', '1', 'HTML 5 and CSS 3', '20 Rs.', 'Certificate + Goodies/Cash Prize', '2 hrs.', 2),
(11, 'Tech Exhibition', 'Think something new and out of the box! Come up with something innovative and impressive in the form of a project and showcase your skills to the world!', '1. Max 3 student per team.<br>\r\n2. Student should bring their own laptop and electronic associate needed for their project.<br>\r\n3. Abstract should be mailed on or before 1st Jan ,2019 along with student\'s name , department, year, college name, mail id, and phone number.<br>\r\n4. Only working projects are allowed to be showcased.<br>\r\n5. Judge\'s decision will be the final\r\ndecision', '1 to 3 members per team', 'NA', 'FREE', 'Certificate + Goodies/Cash Prize', 'NA', 1),
(12, 'Tech PPT Competition', 'Present a PPT to showcase your communication and interaction skills. Research on the interesting topics(to be disclosed soon) and present and convince the audience and judges with the best of the facts and valid explanations!', 'NA', 'NA', 'NA', '0', 'NA', '0', 1);

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
  `difficulty_level` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`tc_id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcase`
--

INSERT INTO `testcase` (`tc_no`, `input_function_call`, `expected_output`, `qid`, `tc_id`, `difficulty_level`, `type`) VALUES
(1, 'print(prime_list([2,3,6,7]))', '[2, 3, 7]', 1, 6, 5, 'sample'),
(2, 'print(prime_list([4,6,8,10]))', '[]', 1, 7, 10, 'sample'),
(3, 'print(prime_list([44,71,356,1032]))', '[71]', 1, 8, 5, 'sample'),
(4, 'print(prime_list([2,3,3,6,7,2]))', '[2, 3, 7]', 1, 9, 10, 'hidden'),
(5, 'print(prime_list([5,6,9,8,5,6,9,8]))', '[5]', 1, 10, 10, 'hidden'),
(1, 'print(matched(\"zb%78\"))', 'True', 2, 16, 10, 'sample'),
(2, 'print(matched(\"(7)(a\"))', 'False', 2, 17, 10, 'sample'),
(3, 'print(matched(\"a)*(?\"))', 'False', 2, 18, 20, 'sample'),
(4, 'print(matched(\"((jkl)78(A)&l(8(dd(FJI:),):)?)\"))', 'True', 2, 19, 20, 'hidden'),
(5, 'print(matched(\"a3qw3;4w3(aasdgsd)((agadsgdsgag)agaga)\"))', 'True', 2, 20, 20, 'hidden'),
(4, 'print(valley([3,2,1,2,3]))', 'True', 3, 24, 10, 'sample'),
(3, 'print(valley([3,2,1]))', 'False', 3, 23, 30, 'sample'),
(2, 'print(valley([3,3,2,1,2]))', 'False', 3, 22, 40, 'sample'),
(1, 'print(valley([2]))', 'False', 3, 21, 40, 'hidden'),
(5, 'print(valley([5,4,3,2,1,2]))', 'True', 3, 25, 20, 'hidden'),
(5, 'print(prime_list([]))', '[]', 1, 29, 10, 'hidden'),
(5, 'print(matched(\"(ag(Gaga(agag)Gaga)GG)a)33)cc(\"))', 'False', 2, 30, 20, 'hidden'),
(5, 'print (valley([17,1,2,3,4,5]))', 'True', 3, 31, 10, 'hidden');

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_pwd`) VALUES
(15, 'Shubham', 'Parchure', 'parchureshubham211@gmail.com', '$2y$10$vYNBSHolgW4wx71CrQzU4On4lArMUlEGo8jSVbBV5Zf2Sub56Cx2e'),
(7, 'Rucha', 'Mahabal', 'ruchamahabal812@gmail.com', '$2y$10$mYIGoONQegdFU0yTaivWyuO36NFcHolWMYQPabH7n0uNejqt8VB7C'),
(8, 'rucha', 'mahabal', 'ruchamahabal2@gmail.com', '$2y$10$h5zcYxhyo/s/ZgIEx/0HZ.KyI9mm6m7dXafjVpox2K1mE3DlGmYxe'),
(16, 'jlkjhjh', 'iiiii', 'o5648740@nwytg.net', '$2y$10$RXeI5dveEd6FncKMN/8EKedxv7Z0XMM7GvfTM1N6EMJi9m.fcEEIy'),
(10, 'Jasraj', 'Bedekar', 'abc@xyz.com', '$2y$10$oGy/4dk/sArtTSuWT0aFxeokoinTDAGwX3PkxvHUoy2Y2clqcqMOy'),
(11, 'parth', 'm', 'parth.majethia@somaiya.edu', '$2y$10$8bQYqWpbZmwNx8x0kCCoUO73lYY8eiiKmI/OBFmBtseNIBcxX6NIG'),
(12, 'Gursheen', 'Anand', 'gur.k.anand@gmail.com', '$2y$10$5vrgUrKUsDUlslwGK/NNtukdA1WuNt3xPqMXR1YCYD2h01a55UTyO'),
(13, 'het', 'vejani', 'vejanihet12@gmail.com', '$2y$10$uNmK6LRUD9tvO53cEVxNZu.skaNcMUSomJHCpGhFEL8yElKx/OFja'),
(14, 'Vishal', 'parab', 'vishalparab@gmail.com', '$2y$10$eRRC8rbgHFRhBteLbeNgzOubtMk5Hv8KWDYgkxQTGSuniLH6BMwyW'),
(17, 'Om', 'Thakkar', 'om.t@somaiya.edu', '$2y$10$DuDP/sYHK34qkWI5xmCLpO70retiCx/3qcrNmIKYdeZD0oZ4GEjOO');

-- --------------------------------------------------------

--
-- Table structure for table `user_scores`
--

DROP TABLE IF EXISTS `user_scores`;
CREATE TABLE IF NOT EXISTS `user_scores` (
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `time_remaining` int(11) DEFAULT NULL,
  `compilation_calls_remaining` int(11) DEFAULT NULL,
  `hidden_passed` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_scores`
--

INSERT INTO `user_scores` (`user_id`, `score`, `time_remaining`, `compilation_calls_remaining`, `hidden_passed`) VALUES
(12, 210, 6124, 14, 0),
(8, 0, 0, 20, 0),
(8, 0, 0, 19, 0),
(8, 300, 28, 16, 9),
(8, 0, 105, -1, 0),
(8, 0, 112, 0, 0),
(8, 0, 113, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
