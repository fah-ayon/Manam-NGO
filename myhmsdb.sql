-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Ramin', 'Alom', 'Male', 'ramim@gmail.com', '0171226768', 'rahul', 500, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Shuvendu', 'Paul', 'Male', 'shuvendu@gmail.com', '0192234355', 'Tousif', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Shahruk', 'Lal', 'Male', 'shahrukh@gmail.com', '0192244355', 'munna', 1000, '2020-02-19', '03:00:00', 0, 1);


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Karim', 'karim@gmail.com', '0151176557', 'Hey Admin'),
(' Amina', 'amina@gmail.com', '0186717663', 'Good Job, Pal'),
('Anika', 'anika@gmail.com', '0131673974', 'How can I reach you?'),
('Akash', 'akash@gmail.com', '01878897996', 'Love your site'),
('Manilal', 'manilal@gmail.com', '0189777689', 'Want some coffee?'),
('Jethalal', 'jethiya@gmail.com', '01989898989', 'Good service');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `doc_id` int(10) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `name`, `email`, `doc_id`, `spec`, `room_no`, `docFees`) VALUES
('rahul', 'rahul123', 'Rahul', 'rahul123@gmail.com', 421, 'General', 'A100', 700),
('mohin', 'mohin123', 'Mohinul', 'mohin123@gmail.com', 420, 'Cardiologist', 'A101', 500),
('tousif', 'tousif123', 'Tousif', 'tousif123@gmail.com', 320, 'General', 'A102', 1000);


-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `house_no` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `union` varchar(50),
  `ward_no` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `house_no`, `district`, `union`, `ward_no`, `contact`, `password`, `cpassword`) VALUES 
(1, 'Ramin', 'Khan', 'Male', 'ramim123@gmail.com', '646/ab', 'Dhaka', 'Badda', '14', '0171226768', 'ramim123', 'ramim123'), 
(2, 'Shuvendu', 'Paul', 'Male', 'shuvendu123@gmail.com', '527/eb', 'Dhaka', 'Vatara', '16', '0192234355', 'shuv123', 'shuv123'), 
(3, 'Shahrukh', 'Alam', 'Male', 'shahrukhalam123@gmail.com', '68/we', 'CTG', 'Harirampur', '18', '0162233777', 'shahrukh123', 'shahrukh123'), 
(4, 'Siam', 'Khan', 'Male', 'siamkhan123@gmail.com', '978/kj', 'Barishal', 'Dumni', '20', '0183335556', 'siamkhan123', 'siamkhan123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `disease` varchar(250) NOT NULL,
  `advise` varchar(1000) NOT NULL,
  `medication` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `disease`, `advise`, `medication`) VALUES
('Tousif', 4, 1, 'Siam', 'Khan', '2020-03-27', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Mohin', 2, 3, 'Shuvendu', 'Paul', '2020-03-21', 'Severe Fever', 'Take bed rest', 'Take Napa 3 times');

-- --------------------------------------------------------

--
-- Table structure for table `donorf`
--

CREATE TABLE `donorf` (
  `serial_id` int(11) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donorf`
--

INSERT INTO `donorf` (`serial_id`, `blood_group`, `name`,`amount`) VALUES
(1, '0+', 'Siam khan', 10000),
(2, 'ab+', 'Alam khan', 1000),
(3, '0-', 'Anik khan', 5000);


-- --------------------------------------------------------


CREATE TABLE `medical_eqp` (
  `name` varchar(50) NOT NULL,
  `availability` int(10) NOT NULL,
  `usages` varchar(100) NOT NULL,
  `alternatives` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_eqp`
--

INSERT INTO `medical_eqp`(`name`, `availability`, `usages`, `alternatives`) VALUES
('Oxygen Cylinder', 10, 'patients with respiratory conditions or during surgical procedures','NULL'),
('Napa', 500,'used for alleviate pain and reduce fever', 'Reset'),
('Inhaler', 20, 'For Asthema Patient','Nebulizer');




-- --------------------------------------------------------

CREATE TABLE `DISEASE_PROFILE` (
  `Disease name` varchar(50) NOT NULL,
  `no of affected` int(10) NOT NULL,
  `Primary assistance` varchar(100) NOT NULL,
  `Area` varchar(50)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DISEASE_PROFILE`
--

INSERT INTO `DISEASE_PROFILE`(`Disease name`, `no of affected`, `Primary assistance`, `Area`) VALUES
('Asthma','12','Allergy Medications','Habiganj'),
('Thalassemia','23','Consuming Iron containing food','Rangpur'),
('Food Poisoning','31','Saline','Narayanganj');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
