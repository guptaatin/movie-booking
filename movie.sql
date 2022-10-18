-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 04:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `cast` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cast`)),
  `genre` varchar(255) DEFAULT NULL,
  `release` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `user_id`, `movie_name`, `rating`, `cast`, `genre`, `release`, `createdAt`, `updatedAt`) VALUES
(3, '1', 'rrr', 5, '\"[\\\"srk\\\",\\\"sk\\\",\\\"ak\\\"]\"', 'all', '0000-00-00 00:00:00', '2022-10-17 16:46:52', '2022-10-17 16:46:52'),
(4, '1', 'rrr', 5, '\"\\\"srk\\\",\\\"sk\\\",\\\"ak\\\"\"', 'all', '0000-00-00 00:00:00', '2022-10-17 16:50:59', '2022-10-17 16:50:59'),
(5, '1', 'rrr', 5, '[\"srk\",\"sk\"]', 'all', '0000-00-00 00:00:00', '2022-10-17 16:52:41', '2022-10-17 16:52:41'),
(6, '1', 'rrr', 5, '\"\\\"srk\\\",\\\"sk\\\",\\\"ak\\\"\"', 'all', '0000-00-00 00:00:00', '2022-10-17 16:54:59', '2022-10-17 16:54:59'),
(7, '1', 'rrr', 5, '\"\\\"srk\\\",\\\"sk\\\",\\\"ak\\\"\"', 'all', '0000-00-00 00:00:00', '2022-10-17 16:58:24', '2022-10-17 16:58:24'),
(8, '1', 'rrr', 5, '\"\\\"srk\\\",\\\"sk\\\",\\\"ak\\\"\"', 'all', '2022-10-18 00:00:00', '2022-10-17 16:59:06', '2022-10-17 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'mod', 'mod@atin.com', '$2a$08$l/xnUE1I2thN6V29bFPQV.57q7ySZ0gFk05Z1UvsECi2IlpmbVKWu', '2022-10-17 16:34:37', '2022-10-17 16:34:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
