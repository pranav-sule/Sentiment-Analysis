-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 06:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `teacher` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sentiment` int(10) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `teacher`, `name`, `sentiment`, `comment`) VALUES
('EU1174040', 'T001', 'Anita', 0, 'she does not teach good'),
('EU1174040', 'T002', 'Jessica', 0, 'she is not good'),
('EU1174040', 'T003', 'Ahmer', 1, 'he is the best'),
('EU1174040', 'T004', 'Vivek', 1, 'he is excellent'),
('EU1174040', 'T005', 'Jacob', 0, 'he is not a good teacher'),
('EU1174040', 'T006', 'Joyce', 1, 'she is the best teacher in college'),
('EU1174040', 'T007', 'Shraddha', 1, 'she is excellent'),
('EU1174040', 'T008', 'Linda', 1, 'she is the best'),
('EU1174041', 'T001', 'Anita', 1, 'she is the best teacher'),
('EU1174041', 'T002', 'Jessica', 1, 'she is the best teacher'),
('EU1174041', 'T003', 'Ahmer', 1, 'he is the best'),
('EU1174041', 'T004', 'Vivek', 1, 'he is the best'),
('EU1174041', 'T005', 'Jacob', 1, 'he is the best'),
('EU1174041', 'T006', 'Joyce', 1, 'she is excellent'),
('EU1174041', 'T007', 'Shraddha', 0, 'she is not good'),
('EU1174041', 'T008', 'Linda', 0, 'she is not good'),
('EU1174042', 'T001', 'Anita', 1, 'she is the best'),
('EU1174042', 'T002', 'Jessica', 1, 'she is good'),
('EU1174042', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174042', 'T004', 'Vivek', 1, 'he is good'),
('EU1174042', 'T005', 'Jacob', 0, 'he is not good'),
('EU1174042', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174042', 'T007', 'Shraddha', 1, 'she is good'),
('EU1174042', 'T008', 'Linda', 0, 'she is not bad'),
('EU1174043', 'T001', 'Anita', 1, 'she is good'),
('EU1174043', 'T002', 'Jessica', 0, 'she is not good'),
('EU1174043', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174043', 'T004', 'Vivek', 1, 'he is good'),
('EU1174043', 'T005', 'Jacob', 0, 'he is not good'),
('EU1174043', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174043', 'T007', 'Shraddha', 1, 'she is good'),
('EU1174043', 'T008', 'Linda', 0, 'she is not good'),
('EU1174055', 'T001', 'Anita', 0, 'she is not good'),
('EU1174055', 'T002', 'Jessica', 0, 'she is worst'),
('EU1174055', 'T003', 'Ahmer', 0, 'he is the worst '),
('EU1174055', 'T004', 'Vivek', 0, 'he is the worst'),
('EU1174055', 'T005', 'Jacob', 0, 'he is the worst'),
('EU1174055', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174055', 'T007', 'Shraddha', 0, 'she is not good'),
('EU1174055', 'T008', 'Linda', 0, 'she is not good'),
('EU1174044', 'T001', 'Anita', 1, 'she is a good teacher'),
('EU1174044', 'T002', 'Jessica', 1, 'she is a good teacher'),
('EU1174044', 'T003', 'Ahmer', 1, 'he is a good teacher'),
('EU1174044', 'T004', 'Vivek', 1, 'he is a good teacher'),
('EU1174044', 'T005', 'Jacob', 1, 'he is a good teacher'),
('EU1174044', 'T006', 'Joyce', 1, 'she is the best teacher'),
('EU1174044', 'T007', 'Shraddha', 1, 'she is a good teacher'),
('EU1174044', 'T008', 'Linda', 1, 'she is a good teacher'),
('EU1174045', 'T001', 'Anita', 1, 'the is the best'),
('EU1174045', 'T002', 'Jessica', 1, 'bacho is the best'),
('EU1174045', 'T003', 'Ahmer', 1, 'lazmi is the best'),
('EU1174045', 'T004', 'Vivek', 1, 'sir is the best'),
('EU1174045', 'T005', 'Jacob', 1, 'HE is the best'),
('EU1174045', 'T006', 'Joyce', 1, 'she is love'),
('EU1174045', 'T007', 'Shraddha', 1, 'she is is good'),
('EU1174045', 'T008', 'Linda', 1, 'people are the good, ha ya na'),
('EU1174046', 'T001', 'Anita', 1, 'she is good'),
('EU1174046', 'T002', 'Jessica', 0, 'she is not good'),
('EU1174046', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174046', 'T004', 'Vivek', 0, 'he is not good'),
('EU1174046', 'T005', 'Jacob', 1, 'he is good'),
('EU1174046', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174046', 'T007', 'Shraddha', 1, 'she is good'),
('EU1174046', 'T008', 'Linda', 0, 'she is not good'),
('EU1174048', 'T001', 'Anita', 1, 'she is a good teacher'),
('EU1174048', 'T002', 'Jessica', 1, 'she is the best teacher'),
('EU1174048', 'T003', 'Ahmer', 1, 'he teaches well'),
('EU1174048', 'T004', 'Vivek', 1, 'he is good teacher'),
('EU1174048', 'T005', 'Jacob', 0, 'he is not good in teaching'),
('EU1174048', 'T006', 'Joyce', 1, 'she is the best teacher'),
('EU1174048', 'T007', 'Shraddha', 0, 'she is not good teacher'),
('EU1174048', 'T008', 'Linda', 1, 'she is good'),
('EU1174049', 'T001', 'Anita', 1, 'she is a good teacher'),
('EU1174049', 'T002', 'Jessica', 0, 'she is not a good teacher'),
('EU1174049', 'T003', 'Ahmer', 1, 'he is an excellent sir'),
('EU1174049', 'T004', 'Vivek', 1, 'he teaches well'),
('EU1174049', 'T005', 'Jacob', 1, 'he is good'),
('EU1174049', 'T006', 'Joyce', 1, 'she is good'),
('EU1174049', 'T007', 'Shraddha', 0, 'she is not good'),
('EU1174049', 'T008', 'Linda', 1, 'she is good'),
('EU1174050', 'T001', 'Anita', 0, 'she is not good'),
('EU1174050', 'T002', 'Jessica', 1, 'she is a bad teacher'),
('EU1174050', 'T003', 'Ahmer', 1, 'he comes late'),
('EU1174050', 'T004', 'Vivek', 0, 'he is not good'),
('EU1174050', 'T005', 'Jacob', 0, 'he is worse'),
('EU1174050', 'T006', 'Joyce', 0, 'she is the worst'),
('EU1174050', 'T007', 'Shraddha', 1, 'she is bored'),
('EU1174050', 'T008', 'Linda', 1, 'she is pathetic'),
('EU1174054', 'T001', 'Anita', 1, 'she is the good teacher'),
('EU1174054', 'T002', 'Jessica', 0, 'she is not good '),
('EU1174054', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174054', 'T004', 'Vivek', 1, 'he is good'),
('EU1174054', 'T005', 'Jacob', 1, 'he is good '),
('EU1174054', 'T006', 'Joyce', 1, 'she is good'),
('EU1174054', 'T007', 'Shraddha', 1, 'she is good'),
('EU1174054', 'T008', 'Linda', 1, 'she is good'),
('EU1174047', 'T001', 'Anita', 0, 'she is bad'),
('EU1174047', 'T002', 'Jessica', 0, 'she is the worst'),
('EU1174047', 'T003', 'Ahmer', 0, 'he is not good'),
('EU1174047', 'T004', 'Vivek', 0, 'he is always angry'),
('EU1174047', 'T005', 'Jacob', 0, 'he is boring'),
('EU1174047', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174047', 'T007', 'Shraddha', 0, 'she is horrible'),
('EU1174047', 'T008', 'Linda', 0, 'she is the worst'),
('EU1174057', 'T001', 'Anita', 0, 'she is not good'),
('EU1174057', 'T002', 'Jessica', 0, 'she is the worst'),
('EU1174057', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174057', 'T004', 'Vivek', 0, 'he is bad'),
('EU1174057', 'T005', 'Jacob', 0, 'he is boring'),
('EU1174057', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174057', 'T007', 'Shraddha', 1, 'she is irritating'),
('EU1174057', 'T008', 'Linda', 1, 'she is kind'),
('EU1174058', 'T001', 'Anita', 1, 'she is kind'),
('EU1174058', 'T002', 'Jessica', 0, 'she is bad'),
('EU1174058', 'T003', 'Ahmer', 1, 'he is good'),
('EU1174058', 'T004', 'Vivek', 0, 'he is bad'),
('EU1174058', 'T005', 'Jacob', 0, 'he is boring'),
('EU1174058', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174058', 'T007', 'Shraddha', 0, 'she is not good'),
('EU1174058', 'T008', 'Linda', 0, 'she is the worst'),
('EU1174059', 'T001', 'Anita', 1, 'she is a good teacher'),
('EU1174059', 'T002', 'Jessica', 1, 'she is a good teacher '),
('EU1174059', 'T003', 'Ahmer', 0, 'he is a bad sir'),
('EU1174059', 'T004', 'Vivek', 0, 'he does not teach well'),
('EU1174059', 'T005', 'Jacob', 0, 'he is not good'),
('EU1174059', 'T006', 'Joyce', 1, 'she is the best'),
('EU1174059', 'T007', 'Shraddha', 1, 'she is good'),
('EU1174059', 'T008', 'Linda', 0, 'she is boring');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`email`, `password`) VALUES
('A01', 'iamtheadmin'),
('EU1174040', '1235'),
('EU1174041', '1235'),
('EU1174042', '1235'),
('EU1174043', '1235'),
('EU1174044', '1235'),
('EU1174045', '1235'),
('EU1174046', '1235'),
('EU1174047', '1235'),
('EU1174048', '1235'),
('EU1174049', '1235'),
('EU1174050', '1235'),
('EU1174051', '1235'),
('EU1174054', '1230'),
('EU1174055', '1230'),
('EU1174056', 'abcd'),
('EU1174057', 'abc0'),
('EU1174058', 'ab10'),
('EU1174059', '1234'),
('EU1174060', '1235'),
('EU1174061', '1235'),
('EU1174062', '1235'),
('EU1174063', '1235'),
('EU1174064', '1235'),
('EU1174065', '1235'),
('EU1174066', '1235'),
('EU1174067', '1235'),
('EU1174069', '1235'),
('EU1174070', '1235'),
('EU1174071', '1235'),
('EU1174072', '1235'),
('EU1174073', '1235'),
('EU1174074', '1235'),
('EU1174075', '1235'),
('EU1174076', '1235'),
('EU1174077', '1235'),
('EU1174078', '1235'),
('EU1174079', '1235'),
('T001', 'anita'),
('T002', 'jessica'),
('T003', 'ahmer'),
('T004', 'vivek'),
('T005', 'jacob'),
('T006', 'joyce'),
('T007', 'shraddha'),
('T008', 'linda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
