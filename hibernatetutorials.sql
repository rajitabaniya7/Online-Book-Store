-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 01:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hibernatetutorials`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) NOT NULL,
  `isbn` text NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `book_name`, `Author`, `publisher`, `price`, `quantity`, `category`, `image`) VALUES
(2, '1245', 'java', 'wikibooks', 'havard', 55, 1, 'books', 'images/java programming.jpg'),
(3, '4444', 'Finding gobi', 'dion leonard', 'goldmines', 57, 5, 'books', 'images/finding gobi.jpg'),
(5, '6666', 'Restful web service', 'leonard', 'oreally pub house', 30, 4, 'books', 'images/RESTful.jpg'),
(11, '5678', 'javascript and json essential', 'sai srinivas', 'havard', 45, 3, 'books', 'images/javascript and json essentials.jpg'),
(22, 'R2345', 'DOGS LOVE', 'collins', 'collins', 0, 8, 'books', 'images/dogbookcover1.jpg'),
(24, '6789', 'king', 'collins', 'collins', 0, 9, 'books', 'Book1.jpg'),
(25, '786', 'plagarism', 'collins', 'collins', 0, 7, 'books', 'book.jpg'),
(26, '7777', 'hachiko', 'collins', 'collins', 0, 4, 'books', 'Book1.jpg'),
(27, '6743', 'operating system', 'collins', 'collins', 44, 5, 'books', 'Book1.jpg'),
(28, '', 'CG', 'havard', 'havard', 48, 7, 'books', 'images/dogbookcover1.jpg'),
(29, '3456', 'Airbuddies', 'havard', 'havard', 60, 6, 'books', 'images/Airbud.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employeehibernatejersey`
--

CREATE TABLE `employeehibernatejersey` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `AGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeehibernatejersey`
--

INSERT INTO `employeehibernatejersey` (`ID`, `NAME`, `AGE`) VALUES
(1, 'Florene', 3),
(2, 'Ryan', 5),
(3, 'chris', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeehibernatejersey`
--
ALTER TABLE `employeehibernatejersey`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employeehibernatejersey`
--
ALTER TABLE `employeehibernatejersey`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
