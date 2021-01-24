-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2021 at 04:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express-backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Action', '2021-01-20 03:01:58', '0000-00-00 00:00:00'),
(2, 'Sci-Fi', '2021-01-20 03:09:19', '0000-00-00 00:00:00'),
(3, 'Fantasy', '2021-01-20 03:09:52', '0000-00-00 00:00:00'),
(4, 'Horror', '2021-01-20 03:10:37', '0000-00-00 00:00:00'),
(5, 'Mystery', '2021-01-20 03:10:48', '0000-00-00 00:00:00'),
(6, 'Drama', '2021-01-20 03:10:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `releaseDate` date NOT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `picture`, `releaseDate`, `createdBy`, `createdAt`, `updatedAt`) VALUES
(1, 'Naruto', NULL, '2021-01-01', NULL, '2021-01-18 04:47:18', '2021-01-24 15:20:45'),
(2, 'Doraemon', NULL, '2021-01-01', NULL, '2021-01-18 04:57:03', '2021-01-24 15:20:45'),
(3, 'Attack on titan', NULL, '2021-01-01', NULL, '2021-01-18 05:12:14', '2021-01-24 15:20:45'),
(4, 'Shingeki no kyojin', NULL, '2021-01-01', NULL, '2021-01-18 05:12:22', '2021-01-24 15:20:45'),
(5, 'Barakamon', NULL, '2021-01-01', NULL, '2021-01-18 05:12:29', '2021-01-24 15:20:45'),
(6, 'Akame ga kill', NULL, '2021-01-01', NULL, '2021-01-18 05:12:38', '2021-01-24 15:20:45'),
(10, 'Batman', NULL, '2021-01-01', NULL, '2021-01-18 05:43:42', '2021-01-24 15:20:45'),
(11, 'Nussa', NULL, '2021-01-01', NULL, '2021-01-18 05:50:16', '2021-01-24 15:20:45'),
(12, 'Kimi no na wa', NULL, '2021-01-01', NULL, '2021-01-20 03:50:36', '2021-01-24 15:20:45'),
(13, 'Pink Panther', NULL, '2021-01-01', NULL, '2021-01-20 04:06:58', '2021-01-24 15:20:45'),
(14, 'MIB', NULL, '2021-01-01', NULL, '2021-01-20 04:25:44', '2021-01-24 15:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `idMovie`, `idGenre`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2021-01-20 03:41:40', '0000-00-00 00:00:00'),
(2, 1, 2, '2021-01-20 03:41:40', '0000-00-00 00:00:00'),
(3, 1, 3, '2021-01-20 03:41:40', '0000-00-00 00:00:00'),
(4, 12, 1, '2021-01-20 03:50:36', '0000-00-00 00:00:00'),
(5, 12, 3, '2021-01-20 03:50:36', '0000-00-00 00:00:00'),
(6, 12, 5, '2021-01-20 03:50:36', '0000-00-00 00:00:00'),
(7, 13, 1, '2021-01-20 04:06:58', '0000-00-00 00:00:00'),
(8, 13, 3, '2021-01-20 04:06:58', '0000-00-00 00:00:00'),
(9, 13, 5, '2021-01-20 04:06:58', '0000-00-00 00:00:00'),
(10, 14, 2, '2021-01-20 04:27:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(60) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idGenre` (`idGenre`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`idGenre`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`idMovie`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
