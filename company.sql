-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 06:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(200) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Bus_id` int(11) NOT NULL,
  `Seats_no` int(11) NOT NULL,
  `Total_fare` double NOT NULL,
  `Bank` varchar(200) NOT NULL,
  `Payment_method` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `user`, `Date`, `Bus_id`, `Seats_no`, `Total_fare`, `Bank`, `Payment_method`) VALUES
(3, 'sai', '2015-11-04 07:34:38', 15, 2, 2200, 'SBH', 'Net Banking'),
(4, 'sai', '2015-11-05 00:03:02', 18, 1, 350, 'SBH', 'Net Banking'),
(5, 'sai', '2015-11-05 02:52:06', 18, 1, 350, 'SBH', 'Net Banking'),
(6, 'sai', '2015-11-06 02:37:32', 10, 2, 2000, 'SBH', 'Debit card');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(200) NOT NULL,
  `Origin` varchar(200) NOT NULL,
  `Destination` varchar(200) NOT NULL,
  `Seats` int(11) NOT NULL,
  `Arrival_time` time NOT NULL,
  `Departure_time` time NOT NULL,
  `Date` date NOT NULL,
  `Fare` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Id`, `Name`, `Origin`, `Destination`, `Seats`, `Arrival_time`, `Departure_time`, `Date`, `Fare`) VALUES
(1, '2017-9-10 travels', 'Pkr', 'Ktm', 8, '10:00:00', '16:00:00', '2015-12-10', 800),
(2, 'ABC travels', 'Pkr', 'Ktm', 18, '10:00:00', '16:00:00', '2015-10-17', 800),
(3, 'ABC travels', 'Pkr', 'Ktm', 22, '10:00:00', '16:00:00', '2015-10-18', 800),
(4, 'Sr travels', 'Pkr', 'Ktm', 11, '12:00:00', '19:00:00', '2016-09-13', 850),
(5, 'Sr travels', 'Pkr', 'Ktm', 12, '12:00:00', '19:00:00', '2015-10-17', 850),
(6, 'Sr travels', 'Pkr', 'Ktm', 20, '12:00:00', '19:00:00', '2015-10-18', 850),
(7, 'Rocky travels', 'Pkr', 'Ktm', 12, '14:00:00', '21:00:00', '2015-10-17', 900),
(8, 'Rocky travels', 'Pkr', 'Ktm', 16, '14:00:00', '21:00:00', '2015-10-18', 900),
(9, 'lolly travels', 'Pkr', 'Btl', 10, '09:00:00', '18:00:00', '2017-09-10', 1000),
(10, 'lolly travels', 'Pkr', 'Btl', 12, '09:00:00', '18:00:00', '2015-10-17', 1000),
(11, 'lolly travels', 'Pkr', 'Btl', 23, '09:00:00', '18:00:00', '2015-10-18', 1000),
(12, 'Patel travels', 'Pkr', 'Btl', 8, '07:00:00', '16:00:00', '2017-09-10', 1200),
(13, 'Patel travels', 'Pkr', 'Btl', 11, '07:00:00', '16:00:00', '2015-10-18', 1200),
(14, 'Sbt travels', 'Pkr', 'Btl', 7, '14:00:00', '23:00:00', '2017-09-10', 1100),
(15, 'Sbt travels', 'Pkr', 'Btl', 14, '14:00:00', '23:00:00', '2015-10-17', 1100),
(16, 'Sbt travels', 'Pkr', 'Btl', 25, '14:00:00', '23:00:00', '2015-10-18', 1100),
(18, 'Vijaya travels', 'Pkr', 'Dar', 8, '09:00:00', '04:00:00', '2017-09-10', 350),
(19, 'ABC travels', 'Ktm', 'Pkr', 10, '04:00:00', '10:00:00', '2017-09-10', 800),
(20, 'ABC travels', 'Ktm', 'Pkr', 11, '04:00:00', '10:00:00', '2015-10-17', 800),
(21, 'ABC travels', 'Ktm', 'Pkr', 12, '04:00:00', '10:00:00', '2015-10-18', 800),
(22, 'Sr travels', 'Ktm', 'Pkr', 9, '03:00:00', '09:00:00', '2017-09-10', 850),
(23, 'Sr travels', 'Ktm', 'Pkr', 10, '03:00:00', '09:00:00', '2015-10-17', 850),
(24, 'Sr travels', 'Ktm', 'Pkr', 12, '03:00:00', '09:00:00', '2015-10-18', 850),
(25, 'lolly travels', 'Btl', 'Pkr', 5, '01:00:00', '08:00:00', '2017-09-10', 1000),
(26, 'lolly travels', 'Btl', 'Pkr', 11, '01:00:00', '08:00:00', '2015-10-17', 1000),
(27, 'lolly travels', 'Btl', 'Pkr', 20, '01:00:00', '08:00:00', '2015-10-18', 1000),
(28, 'lolly travels', 'Dar', 'Pkr', 10, '02:00:00', '07:00:00', '2017-09-10', 350),
(29, 'lolly travels', 'Dar', 'Pkr', 20, '02:00:00', '07:00:00', '2015-10-17', 350),
(30, 'lolly travels', 'Dar', 'Pkr', 24, '02:00:00', '07:00:00', '2015-10-18', 350);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `Employe_code` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Designation` varchar(40) NOT NULL,
  `DOJ` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`Employe_code`, `Name`, `Designation`, `DOJ`) VALUES
(3, 'S.Sankaranarayana', 'PI', '2007-05-01'),
(5, 'G.Madeshwaran', 'Foreman', '2008-01-01'),
(9, 'M.Sivaraj', 'Foreman', '2008-07-02'),
(15, 'S.Rajendran(O)', 'SI', '2009-08-07'),
(27, 'V.Elango', 'M.G Operator', '2012-09-04'),
(36, 'P.Balasubramanian', 'MM', '2013-10-01'),
(50, 'R.Karthikeyan', 'EE', '2014-09-05'),
(62, 'S.Rajendran (N)', 'SI', '2016-02-12'),
(65, 'C.Murugeshan', 'SI', '2016-07-14'),
(66, 'Muthupandi', 'M.G Operator', '2016-07-30'),
(107, 'P.Senthil', 'M.G Operator', '2018-01-28'),
(128, 'M.Thiyagarajan', 'SI', '2019-08-22'),
(217, 'G.Mohan Babu', 'PM', '2019-07-29'),
(231, 'T.Vairavel', 'Foreman', '2019-11-16'),
(243, 'R.Mani', 'SI', '2020-01-01'),
(25, 'R.Arunkumar', 'Dryer Boy', '2011-11-02'),
(13, 'K.Rajesh', 'Dryer Boy', '2009-03-18'),
(128, 'A.Ranjithkumar', 'Dryer Boy', '2019-07-16'),
(237, 'E.Arivazhagan', 'Dryer Boy', '2019-12-02'),
(99, 'Vellimalai', 'Wire Boy', '2018-01-18'),
(194, 'Proskhan', 'Wire Boy', '2019-04-20'),
(224, 'B.Ajay Kumar', 'Wire Boy', '2019-08-22'),
(160, 'M.Ragupathy', 'Press Boy', '2018-08-28'),
(246, 'M.Bala', 'Press Boy', '2020-05-11'),
(37, 'V.KandaSubramani', 'Pulper Operator', '2013-11-15'),
(206, 'N.Shanmugasundara', 'Pulper Operator', '2019-06-10'),
(16, 'R.Marimuthu', 'Color Man', '2009-11-01'),
(118, 'S.Sujintharan', 'Color Man', '2018-03-13'),
(32, 'P.Muthu', 'Color Man Helper', '2013-06-25'),
(204, 'R.Ram shevak', 'Color Man Helper', '2019-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Mobile_number` varchar(40) NOT NULL,
  `Location` varchar(40) NOT NULL,
  `Pin_code` varchar(40) NOT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Marital_status` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Blood` varchar(10) DEFAULT NULL,
  `N_id` varchar(40) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `Passport` varchar(10) DEFAULT NULL,
  `Father_name` varchar(30) DEFAULT NULL,
  `Emergency_contact` varchar(40) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `Name`, `Mobile_number`, `Location`, `Pin_code`, `Password`, `Email`, `DOB`, `Marital_status`, `Address`, `Blood`, `N_id`, `education`, `Passport`, `Father_name`, `Emergency_contact`, `Gender`) VALUES
(6, 'Kaviyarasu R', '7904683175', 'dharapuram', '638657', 'kavi', 'kaviyarasugovindammal@gmail.com', '1999-07-23', 'Unmarried', '13', 'b+', '123456', 'B.E/CSE/2020', 'No', 'RAJAMANI', '9659815715', 'Male'),
(7, 'Arun Kumar M', '8098042295', 'dharapuram', '638657', 'arun', 'arunmuruka@gmail.com', '2002-12-17', 'Unmarried', '63,Vengittipalayam', 'A+', '123456', 'B.E/CSE/2020', 'No', 'MURUKESAN K', '9965820242', 'Male'),
(8, 'Madhan Kumar G', '6369776378', 'dharapuram', '638657', 'madhan', 'madhanvpm007@gmail.com', '2002-11-26', 'Unmarried', '14,vengittipalayam\r\nEllis nagar(po),\r\nDharapuram', 'b+', '1234567789', 'Bcom/CA/2023', '567895', 'GOVINDARAJ S', '9944767201', 'Male'),
(9, 'bharathkumar Subramaniyan', '8489310936', 'dharapuram', '638657', 'bharathkumar', 'bharathsubbu05@gmail.com', '1999-05-23', 'Unmarried', '16, Venkittipalayam, Ellis Nager(po), Dharapuram(tk), Tiruppur(dt)-638657', 'o+', 'jyhg', 'B.E/EEE/2020', 'NA', 'Subramaniyan', '9159775897', 'Male'),
(10, 'mohan M', '9080706050', 'dharapuram', '638657', 'moan', 'mohan@gmail.com', '1999-07-23', 'Unmarried', '34,vengittipalayam', 'b-', '12345', 'B.E/CSE/2020', 'NA', 'MURALI', '7898073410', 'Male'),
(11, 'Manikandan R', '9807654321', 'dharapuram', '638657', 'mani', 'mani@gmail.com', '1999-08-20', 'Unmarried', '3/200 vengittipalayam,Ellis nagar(po),Dharapuram', 'A+', 'NA', 'B.E/CSE/2019', 'NA', 'RAJA', '9807654321', 'Male'),
(12, 'Kavin Siva S', '9942121993', 'Tiruchengode', '637215', 'kavin', 'kavincracy@gmail.com', '2000-10-04', 'Unmarried', 'thiruchengode,namakkal', 'B+', 'NA', 'B.E/CSE/2020', 'NA', 'Subramani', '9942121993', 'Male'),
(13, 'Gokul K', '9889110010', 'Tiruppur', '637215', 'gokul', 'gokulkrish@gmail.com', '1999-09-08', 'Unmarried', '12/16 chinnakarai,paladam road,Tiruppur', 'O+', 'NA', 'B.E/CSE/2020', 'NA', 'Kannan', '9889110010', 'Male'),
(14, 'Manoj B', '9786756453', 'Dharapuram', '638657', 'manoj', 'mano@gmail.com', '2000-02-13', 'Unmarried', '20,vengittipalayam', 'A+', 'NA', 'B.E/ECE/2020', 'NA', 'Bala', '9786756453', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `UserID` int(11) NOT NULL DEFAULT '0',
  `Fname` varchar(200) DEFAULT NULL,
  `Lname` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Security` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserID`, `Fname`, `Lname`, `Email`, `Username`, `Password`, `Timestamp`, `Security`) VALUES
(2, 'sai', 'boppana', 'sai@gmail.com', 'sai', 'sai', '2015-10-14 18:28:12', 'Challapalli'),
(3, 'ramya', 'boppana', 'ramyasusanth@gmail.com', 'ramya', 'a7ed34bfd8445010e0ab542561043a0bdd760e9a', '2017-09-10 05:12:14', 'Challapalli'),
(4, 'Ramya Sree', 'Boppana', 'ramyasusanth@gmail.com', 'Ramya Sree Boppana', '48be96eebb964cd9b885296a815b06e201e6f782', '2017-09-10 05:28:01', 'Challapalli'),
(5, 'Susanth', 'Boppana', 'susanthboppana@gmail.com', 'Susanth Boppana', 'bf2203c3d945b7bb81092db307bfedbf3765d48d', '2017-09-10 05:29:31', 'Challapalli'),
(6, 'Mani', 'Boppana', 'mani@gmail.com', 'mani', 'c29222e98de6437a383e8d946a9b202298e0aa3a', '2017-09-10 06:12:54', 'Challapalli'),
(7, 'Srinu', 'Boppana', 'srinu@gmail.com', 'srinu', '0d29204fc6676ae4c8e5d4efd45c50ea583bb804', '2017-09-10 06:13:52', 'Challapalli'),
(8, 'Ram', '', 'ram@gmail.com', 'ram', '77c7960e890deddebb7ff2e55e340d2ed1708368', '2017-09-10 06:15:08', 'Dar'),
(9, 'sita', '', 'sita@gmail.com', 'sita', 'da3ffa02d0505ada3490157e6d1f800f5d484930', '2017-09-10 07:11:33', 'Dar'),
(10, 'Susanth', 'Chowdary', 'boppanasusanth29@gmail.com', 'susanth29', '2a1fcf5856d9ffd2f2b815c9967fe51e2c5b39cc', '2015-10-18 03:16:16', 'Pkr'),
(12, 'githa', '', 'githa@gmail.com', 'githa', '32ef949c28f99c02d41a19897e3a624548445e8f', '2015-11-04 01:10:34', 'Pkr'),
(13, 'venkat', 'boppana', 'venky@gmail.com', 'venkat', '5803ef16bb1b95f4966c74bd695ca564481afdac', '2015-11-06 03:14:28', 'Pkr'),
(14, 'ashwin', 'asa', 'ajayabimanyu@gmail.com', 'ajay', '1c58a446a63e719d7b90156a8998ccc461609ed7', '2019-03-20 09:24:57', 'ssss'),
(15, 'sasas', 'sgahjs', 'ajayabimany1u@gmail.com', 'kavi', '70ba9e82d2bc4f0e2376481b64d88de226d8ead4', '2019-03-20 09:26:27', 'ssss11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
