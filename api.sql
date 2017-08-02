-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2017 at 09:58 PM
-- Server version: 10.1.25-MariaDB
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
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `occupation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`, `date_of_birth`, `phone`, `country`, `city`, `firstname`, `lastname`, `gender`, `occupation`) VALUES
(1, 'georgiana', 'georgiana@gmail.com', 'georgiana', 'georgiana', '1995-10-17', '0909099090', 'romania', 'georgiana', 'georgiana', 'georgiana', 'feminin', 'stau'),
(2, '', 'Catrinel@yahoo.com', 'catrinel', 'Catrinel nr 22', '2017-09-06', '07635345475', 'Catrinel', 'Catrinel', 'catrinel3434', 'catrinel', 'F', 'Catrinel'),
(3, '', 'Catrinel@yahoo.com', 'catrinel', 'Catrinel nr 22', '2017-09-06', '07635345475', 'Catrinel', 'Catrinel', 'catrinel3434', 'catrinel', 'F', 'Catrinel'),
(4, '', 'Catrinel@yahoo.com', 'catrinel', 'Catrinel nr 22', '2017-09-06', '07635345475', 'Catrinel', 'Catrinel', 'catrinel3434', 'catrinel', 'F', 'Catrinel'),
(5, '', 'stefan@yahoo.com', 'stefan', 'stefan nr 33', '1994-01-01', '07457754677', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan'),
(6, '', 'stefan@yahoo.com', 'stefan', 'stefan nr 33', '1994-01-01', '07457754677', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan'),
(7, '', 'stefan@yahoo.com', 'stefan', 'stefan nr 33', '1994-01-01', '07457754677', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan'),
(8, '', 'stefan@yahoo.com', 'stefan', 'stefan nr 33', '1994-01-01', '07457754677', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan'),
(9, '', 'stefan@yahoo.com', 'stefan', 'stefan nr 33', '1994-01-01', '07457754677', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan', 'stefan'),
(10, '', 'gaby@yahoo.com', 'gaby', 'gaby nr. 22', '2015-11-30', '07543566445', 'gaby', 'gaby', 'gaby', 'gaby', 'gaby', 'gaby');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
