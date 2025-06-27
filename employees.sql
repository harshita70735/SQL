-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 05:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_ID` int(100) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `First_name` varchar(100) DEFAULT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Dep_ID` int(255) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_ID`, `Salary`, `First_name`, `Last_name`, `city`, `Department`, `Dep_ID`, `Joining_date`) VALUES
(1, 40000, 'Ravi', 'Sharma', 'Jaipur', 'IT', 101, '0000-00-00'),
(2, 45000, 'Kirti', 'Goyal', 'Jaipur', 'IT', 101, '0000-00-00'),
(3, 34000, 'Hari ohm', 'Kumawat', 'Delhi', 'Medical', 102, '2024-04-09'),
(4, 45000, 'Rakhi', 'Goyal', 'Jaipur', 'IT', 101, '2022-06-04'),
(5, 39000, 'Tanvi', 'Kumawat', 'Delhi', 'Medical', 102, '2023-04-07'),
(6, 65000, 'Meenu', 'Kaur', 'Delhi', 'IT', 101, '2020-11-03'),
(7, 55000, 'Rahul', 'Kumawat', 'Delhi', 'Medical', 102, '2024-07-09'),
(8, 65000, 'Sakshi', 'Gupta', 'Delhi', 'IT', 101, '2020-11-03'),
(9, 45000, 'Prithvi', 'Khan', 'Delhi', 'Medical', 102, '2024-07-09'),
(10, 67000, 'Sonia', 'Kaur', 'Kanpur', 'IT', 101, '2022-09-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
