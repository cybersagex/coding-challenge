-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2018 at 11:49 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

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

CREATE TABLE `fine_arts_events` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `rules` text,
  `members` text,
  `registration_fees` text,
  `prize` text,
  `time` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_arts_events`
--

INSERT INTO `fine_arts_events` (`id`, `title`, `description`, `rules`, `members`, `registration_fees`, `prize`, `time`) VALUES
(1, 'Quilling', 'Quilling involves the use of strips of paper, fabric, glass, or even fondant that are rolled, shaped, and attached together to create interesting designs. Your artwork should be related to our theme i.e Evolution of Games ', '1. Participant should bring their own material.<br>\r\n2. Material should not contain any readymade artwork.<br>\r\n3. Usage of any digital or physical reference for design patterns at the place of competition is restricted.<br>\r\n4. Judges\' decision will be final.<br>\r\n', '1', 'Rs. 30', 'Certificate + Goodies/Cash Prizes', '1 hr'),
(2, 'T-Shirt Painting', 'Make a colourful painting on a t-shirt based on our theme - Evolution of Games ', '1. One t-shirt will be provided.<br>\r\n2. Electronic devices of any form will not be allowed.<br>\r\n4. The art work should be based on our theme or any technical awareness topic.<br>\r\n5. Participants should carry their own colours and brushes.<br>\r\n6. Any digital or physical reference at the venue are restricted.<br>\r\n3. Judge\'s decision will be the final decision', '1', 'Rs. 30', 'Certificate + Goodies/Cash prizes', '1 hr'),
(3, 'Best Out of E-Waste', '\"Think outside the Trash\" ', '1. We will provide the e-waste<br>\r\n2. Glue , scissors, and other stationery material should be carried by the participants.<br>\r\n3. Thirty seconds will be provided to collect the material.<br>\r\n4. Thirty minutes for making funk from junk.<br>\r\n5. Use of mobile phones or other reference materials is not allowed.<br>\r\n6. Judge\'s decision will be the final decision.', '2', 'Rs. 40 ', 'Certificates + Goodies/Cash prizes', '30 mins');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `name` varchar(50) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
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
('Mohit Jain', 'Vidyalankar Institute of technology', 'mohit270900@gmail.com', '9820557346');

-- --------------------------------------------------------

--
-- Table structure for table `solo_registrations`
--

CREATE TABLE `solo_registrations` (
  `email` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solo_registrations`
--

INSERT INTO `solo_registrations` (`email`, `event_name`) VALUES
('xdf@gs.c', 'Photoshop'),
('prathamgenius@gmail.com', 'Rubics Cube'),
('prathamgenius@gmail.com', 'Code Mapper'),
('prathamgenius@gmail.com', 'Code Mapper'),
('rishigohil2000@gmail.com', 'Photoshop'),
('shubhamlok23@gmail.com', 'Rubics Cube'),
('meetmaru301@gmail.com', 'PUBG Solo'),
('meetmaru301@gmail.com', 'PUBG Solo'),
('0309rishika@gmail.com', 'Error Hunt'),
('0309rishika@gmail.com', 'Web Designing'),
('tariprathamesh55@gmail.com', 'Quiz'),
('tariprathamesh55@gmail.com', 'Web Designing'),
('tariprathamesh55@gmail.com', 'Quiz'),
('tariprathamesh55@gmail.com', 'Web Designing'),
('dhrutigandhi2000@gmail.com', 'Quilling'),
('dhrutigandhi2000@gmail.com', 'Quilling'),
('dhrutigandhi2000@gmail.com', 'Quilling'),
('parchureshubham211@gmail.com', 'Code Mapper'),
('aadijain1313@gmail.com', 'PUBG Solo'),
('aadijain1313@gmail.com', 'PUBG Solo'),
('mohit270900@gmail.com', 'PUBG Solo'),
('mehtadarshan319@gmail.com', 'Quilling'),
('bhavyaVampi@gmail.com', 'Rubics Cube'),
('ajaypodal18@gmail.com', 'Rubics Cube'),
('ajaypodal18@gmail.com', 'Quiz'),
('om.t@somaiya.edu', 'Web Designing'),
('sbsbsn7@gmail.com', 'Error Hunt'),
('sbsbsn7@gmail.com', 'Quilling'),
('sbsbsn7@gmail.com', 'Photoshop');

-- --------------------------------------------------------

--
-- Table structure for table `sub_events`
--

CREATE TABLE `sub_events` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `rules` text,
  `members` text,
  `registration_fees` text,
  `prize` text,
  `time` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_events`
--

INSERT INTO `sub_events` (`id`, `title`, `description`, `rules`, `members`, `registration_fees`, `prize`, `time`) VALUES
(1, 'Maze Racing', 'On the Spot Pay and Play', 'NA', 'NA', 'Rs.20', 'Certificate + Goodies/Cash Prize', 'NA'),
(2, 'Rubik\'s Cube', 'A puzzle to be solved in the form of a 3x3 plastic cube covered with multicoloured squares, which the player has to twist and turn so that all the squares on each face are of the same colour. The fastest one wins!', '1. Ten seconds will be given for inspection of the cube. <br>\r\n2. Only 1 chance will be given to solve the 3x3 cube.', '1', 'FREE', 'Certificate', 'No time limit. The fastest one wins!'),
(3, 'PUBG', 'DAY 1: Squad<br>\r\nDAY 2: Solo', '3 classic room matches will be played. Average of these matches will be taken to decide the 1st and 2nd positions.\r\n', 'DAY 1: Squad<br>\r\nDAY 2: Solo', 'DAY 1: Squad - Rs. 160 per Team<br>\r\nDAY 2: Solo - Rs. 30', '<pre>\r\nSOLO:\r\n1st Prize - Elite Pass\r\n2nd Prize - Goodies\r\nMost Kills - Rs. 500\r\n\r\nSQUAD:\r\n1st Prize - Rs. 2500\r\n2nd Prize - Goodies\r\nAggregate of Most Kills - Rs. 500\r\n</pre>', 'NA'),
(4, 'Treasure Hunt', 'Level after another, get closer to the treasure, be intelligent, smarter and faster to reach the ultimate goal!', '1. Maximum 5 members in a team.<br>\r\n2. Details of the event will be disclosed at the venue', '1 to 5', 'Rs. 50', 'Certificate + Goodies/Cash Prize', 'NA'),
(5, 'PPT', 'Present a PPT to showcase your communication and interaction skills. Research on the interesting topics(to be disclosed soon) and present and convince the audience and judges with the best of the facts and valid explanations!', '1. PPT should be ready before the event.<br>\r\n2. PPT should be brought in a pen drive or it should be mailed to <b>techxposuretxp@gmail.com</b> half an hour before the event.<br>\r\n3. One minute will be given for preparation.<br>\r\n4. Five minutes for presentation.<br>\r\n5.Judgement will be based on the presentation skills and content.', 'NA', 'FREE', 'Certificate + Goodies/Cash Prize', '5 mins per presentation'),
(6, 'Instrumental', 'Beat the drums, tune in to your guitar, feel the music! ', '1. Backing tracks are not allowed.<br>\r\n2. No of members: minimum 1, maximum 2.<br>\r\n3. No vocals are allowed<br>\r\n4. Participants are expected to carry their own instruments.\r\n', 'Maximum 2', 'Stay Tuned, will be disclosed soon!', 'Stay Tuned, will be disclosed soon!', 'NA'),
(7, 'CS:GO', 'Shoot what you see!', '1. Players cannot be replaced between the game.<br>\r\n2. Five players per team<br>\r\n3. Banned items: Kreig 550 command. Bullpup. D3. Tactical Shield and Smoke Grenade. <br>\r\n4. Tournament will be on knockout basis.<br>\r\n5. Only 2 mins will be allotted to make changes in the control settings and knockout settings. <br>\r\n6. Use of foul language and disagreement/misbehavior with crew members will lead to disqualification.', '5', NULL, NULL, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `team_registrations`
--

CREATE TABLE `team_registrations` (
  `email` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `no_of_members` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_registrations`
--

INSERT INTO `team_registrations` (`email`, `event_name`, `no_of_members`) VALUES
('rajjdhv2001@gmail.com', 'Tech Exhibition', '2'),
('sagavekaromkar123@gmail.com', 'Tech Exhibition', '2'),
('vmvjarvis123@gmail.com', 'Tech Exhibition', '2'),
('parchureshubham211@gmail.com', 'Tech Exhibition', '4'),
('darshancricket85@gmail.com', 'Tech Exhibition', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tech_events`
--

CREATE TABLE `tech_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `members` text,
  `languages` text NOT NULL,
  `registration_fees` text NOT NULL,
  `prize` text NOT NULL,
  `time` text,
  `levels` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_events`
--

INSERT INTO `tech_events` (`id`, `title`, `description`, `rules`, `members`, `languages`, `registration_fees`, `prize`, `time`, `levels`) VALUES
(1, 'CodeMapper', 'Get your brains thinking in this amazing Python Coding Challenge!', '1. Three python levels to be solved as a part of the challenge.<br>\r\n2. Access to any electronic media is prohibited.<br>\r\n3. Compilation is allowed only ten times in the entire challenge.', '1', 'Python', '20 Rs.', 'Trophy + Certificate + Goodies', '2 hrs', 1),
(2, 'Error Hunt', 'Test how observant and speedy you are by finding the errors in the 3 Java or C++ snippets given to you, as fast\r\nas possible!', 'NA', '1', 'C++, Java', '20 Rs.', 'Certificate + Cash Prizes + Goodies', '1 hr', 3),
(3, 'Blind Coding', 'Master of Code? Blind Coding should be an easy task for you then! Participants will have their monitors shut as\r\nthey race against time and of course other programmers to code 1 simple program in Java. Winner takes all!\r\n', '1. You can only switch on the monitor when you submit the final code.<br>\r\n2. Evaluation will be based on how much error free your code is.', '1', 'Java', '10 Rs.', 'Certificate + Goodies/Cash Prizes', '1 hr.', 1),
(4, 'Photoshop', 'Inspired by James Friedman?! We got your backs! Come here and showcase how creative you can get with your\r\nPhotoshop skills and how fast you can come up with exemplary ideas in a pinch situation!', '1.Twenty images will be provided. Participants have to create a composite image using atleast 5 images.<br>\r\n', '1', 'NA', '10 Rs.', 'Certificate + Goodies/Cash Prize', '1 hr', 1),
(5, 'Code In Less', 'Fan of optimization? Prepare the Best code using as few lines and resources as possible and solve the problem in the most fashionable\r\nway possible! Choose from either c++, Java or Python, but most importantly, choose wisely.\r\n', 'NA', '1', 'PHP, Java, Python, C++', '20', '300 Rs.', '60', 1),
(6, 'Switch Hero', 'Venture into the wilderness of creating codes for the corporates! Write codes which will be completed by your partner\r\nwithout any means of communication!<br> Consequently, complete his code in as less time as possible and become The\r\nUltimate Switch Hero!\r\n<br>\r\n2 man teams, race against a time limit of 1:30 hrs', '1. The switch will be done either after completing 5 lines of code or after every ten minutes.<br>\r\n2. Switching will happen till both the team members finish their code or the time limit is exceeded. ', '2', 'Java, Python', '20 Rs.', 'Certificates + Goodies/Cash Prizes', '1 hr 30 mins', 1),
(7, 'Quiz', 'Got a Million Tera Bytes of Tech Data in your head? Participate in the Ultimate quizzing event and go from Self\r\nProclaimed Tech Guru to Certified Tech Guru! Take from your past experiences of gaming and tech knowledge to\r\nmake your competition bite the dust!\r\n<br>\r\nLevel 1: Evolution of Games\r\n<br>\r\nLevel 2: Tech Quiz', 'NA', '1', 'NA', '10 Rs.', 'Certificate + Goodies/Cash Prizes', '2 hrs.', 2),
(8, 'Tech Debate', 'Indulge yourself in the most productive event at TXP 2.0 as you debate your way along the most controversial tech\r\ntopics and showcase not just new ideas but win people\'s hearts with the amazing deductions and best possible\r\nconclusions!', 'NA', '2 to 5', 'NA', 'FREE', 'Certificate + Goodies/Cash Prizes', '10 mins', 1),
(9, 'Code Relay', 'Level 1: Prepare codes in as many languages as possible using the input output set given to you!\r\nTeam to get expected outputs in as many languages as possible wins! 2PC\'s Per team\r\n<br>Level 2: Put your cognitive abilities to the test as you analyse the given code and translate it into another language!', 'NA', '1 to 3', 'NA', '20 Rs.', 'Certificate + Goodies/Cash Prize', '2 hrs.', 2),
(10, 'Web Designing', 'Love Naruto? Become a master of cloning and coding as you try and create the same website as flashed on screen!', 'NA', '1', 'NA', '20 Rs.', 'Certificate + Goodies/Cash Prize', '2 hrs.', 2),
(11, 'Tech Exhibition', 'Think something new and out of the box! Come up with something innovative and impressive in the form of a project and showcase your skills to the world!', '1. Max 3 student per team.\r\n2. Student should bring their own laptop and electronic associate needed for their project.\r\n3. Abstract should be mailed on or before 1st Jan ,2019 along with student\'s name , department, year, college name, mail id, and phone number.\r\n4. Only working projects are allowed to be showcased.\r\n5. Judge\'s decision will be the final\r\ndecision', '1 to 3 members per team', 'NA', 'FREE', 'Certificate + Goodies/Cash Prize', 'NA', 1),
(12, 'Tech PPT Competition', 'Present a PPT to showcase your communication and interaction skills. Research on the interesting topics(to be disclosed soon) and present and convince the audience and judges with the best of the facts and valid explanations!', 'NA', 'NA', 'NA', '0', 'NA', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fine_arts_events`
--
ALTER TABLE `fine_arts_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `solo_registrations`
--
ALTER TABLE `solo_registrations`
  ADD KEY `email` (`email`);

--
-- Indexes for table `sub_events`
--
ALTER TABLE `sub_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_registrations`
--
ALTER TABLE `team_registrations`
  ADD KEY `email` (`email`);

--
-- Indexes for table `tech_events`
--
ALTER TABLE `tech_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fine_arts_events`
--
ALTER TABLE `fine_arts_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_events`
--
ALTER TABLE `sub_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tech_events`
--
ALTER TABLE `tech_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
