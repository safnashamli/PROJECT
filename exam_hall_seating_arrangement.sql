-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 11:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_hall_seating_arrangement`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(10) NOT NULL,
  `stud_id` int(10) NOT NULL,
  `complaint` varchar(27) NOT NULL,
  `date` date NOT NULL,
  `time` time(5) NOT NULL,
  `reply` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `stud_id`, `complaint`, `date`, `time`, `reply`) VALUES
(1, 1, 'dfghgffddd', '2022-10-05', '01:57:00.00000', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `exam_duty`
--

CREATE TABLE `exam_duty` (
  `duty_id` int(5) NOT NULL,
  `staff_id` int(5) NOT NULL,
  `room_no` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_duty`
--

INSERT INTO `exam_duty` (`duty_id`, `staff_id`, `room_no`, `date`, `time`) VALUES
(1, 1, 124, '2022-10-05', '09:16:00.00000'),
(2, 1, 43, '2022-09-27', '12:38:00.00000'),
(3, 1, 45, '2022-10-18', '00:43:00.00000'),
(4, 5, 45, '2022-10-18', '00:43:00.00000'),
(5, 6, 12, '2022-10-19', '01:45:00.00000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `u_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(11) NOT NULL,
  `notification` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `notification`, `date`, `time`) VALUES
(1, 'kfugdfg', '2022-10-12', '12:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `seating _arrangement`
--

CREATE TABLE `seating _arrangement` (
  `seating_id` int(5) NOT NULL,
  `stud_id` int(20) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `class_no` int(20) NOT NULL,
  `seat_no` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seating _arrangement`
--

INSERT INTO `seating _arrangement` (`seating_id`, `stud_id`, `roll_no`, `class_no`, `seat_no`, `date`, `time`) VALUES
(1, 1, '344', 32, 2, '2022-10-12', '12:26:00.000000'),
(2, 5, '344', 32, 56, '2022-10-06', '01:19:00.000000'),
(3, 4, '29', 23, 3, '2022-10-19', '10:26:00.000000'),
(4, 6, '32', 23, 6, '2022-10-11', '10:22:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `staff_registration`
--

CREATE TABLE `staff_registration` (
  `full_name` varchar(20) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `department` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_registration`
--

INSERT INTO `staff_registration` (`full_name`, `staff_id`, `username`, `password`, `email`, `dob`, `department`) VALUES
('VASUDHEAN', 2, 'vasudevn', 'vasu123', 'vasudheant@gmai', '1991-06-12', 'MCA'),
('FEBIN AZIZ', 3, 'febinaz', 'febin123', 'febin23@gmail.c', '1998-02-25', 'MCA'),
('NUSHAD', 4, 'nousadc', 'dygsg', 'nousa@gmail.com', '2022-10-19', 'MBA'),
('GEEVER', 5, 'gwwwer', 'dfdtr', 'geee@gmail.com', '2022-10-18', 'B.TECH'),
('PRIYA', 6, 'priap', '1234', 'priya@gmail.com', '2022-10-19', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `stud_id` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Admission_no` varchar(20) NOT NULL,
  `email` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `department` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`stud_id`, `username`, `password`, `Admission_no`, `email`, `dob`, `department`, `name`, `status`) VALUES
(3, 'safnashamli', '1234', '1456', 'shamlisafna24@g', '2022-10-05', 'MCA', 'SHAMLI', 'pending'),
(4, 'mumthazak', '2345', '1324', 'mumtaz@gmail.co', '2022-10-11', 'MCA', 'MUMTHAZ', 'pending'),
(5, 'safnapp', '2897', '8797', 'safna@gmail.com', '2022-10-19', 'MCA', 'SAFNA PP', 'pending'),
(6, 'nabeelap', '69024', '2345', 'nabeela@gmail.c', '2022-11-05', 'MBA', 'NABEELA', 'pending'),
(7, 'jusailap', '90008', '2098', 'jusi@gmail.com', '2022-10-26', 'MBA', 'JUSAILA P', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `t_id` int(10) NOT NULL,
  `time table` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`t_id`, `time table`, `date`, `time`) VALUES
(1, 'studentmarklist.xls', '2022-10-04', '11:54:00.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `exam_duty`
--
ALTER TABLE `exam_duty`
  ADD PRIMARY KEY (`duty_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `seating _arrangement`
--
ALTER TABLE `seating _arrangement`
  ADD PRIMARY KEY (`seating_id`);

--
-- Indexes for table `staff_registration`
--
ALTER TABLE `staff_registration`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_duty`
--
ALTER TABLE `exam_duty`
  MODIFY `duty_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seating _arrangement`
--
ALTER TABLE `seating _arrangement`
  MODIFY `seating_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_registration`
--
ALTER TABLE `staff_registration`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
