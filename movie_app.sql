-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 01:09 PM
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
-- Database: `movie_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `name` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `sl` int(100) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`name`, `year`, `rating`, `genre`, `sl`, `url`, `language`) VALUES
('KGF-2', '2022-o4-14', 0, 'Action', 1, 'https://www.deccanherald.com/sites/dh/files/styles/article_detail/public/articleimages/2022/05/07/file7kvi55wd6ywm71m431t-1107229-1651918967.jpg', 'Kannada'),
('spider man ', '2001-12-22', 0, 'Action', 2, 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Spider-Man_PS4_cover.jpg/220px-Spider-Man_PS4_cover.jpg', 'English'),
('Avengers', '2001-06-06', 0, 'Adventure', 9, 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_FMjpg_UX1000_.jpg', 'English'),
('RRR', '2022-06-06', 0, 'Drama', 10, 'https://stat2.bollywoodhungama.in/wp-content/uploads/2019/03/RRR-2022-306x393.jpeg', 'Telugu'),
('Conjuring', '2006-11-14', 0, 'Horror', 33, 'https://images.squarespace-cdn.com/content/v1/511eea22e4b06642027a9a99/1473717135106-6WRDQJ3A6DBGMP2O938T/The+Conjuring+2.jpg', 'English'),
('Pushpa', '2021-12-17', 0, 'Action/Drama', 34, 'https://www.filmibeat.com/img/190x100x237/popcorn/movie_posters/pushpa-20200408090657-18075.jpg', 'Telugu');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `sl` int(10) NOT NULL,
  `movie_id` int(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_role` int(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`sl`, `movie_id`, `user_id`, `user_role`, `rating`, `value`) VALUES
(24, 1, 'raju@gmail.com', 0, 8, 'good'),
(26, 33, 'raju@gmail.com', 2, 8, 'good movie'),
(27, 2, 'reddy@gmail.com', 0, 7, 'good'),
(28, 1, 'reddy@gmail.com', 0, 8, 'good movie'),
(29, 9, 'reddy@gmail.com', 0, 9, 'very good movie'),
(30, 10, 'reddy@gmail.com', 0, 8, 'good movie'),
(31, 34, 'admin@gmail.com', 1, 8, 'good movie'),
(32, 9, 'admin@gmail.com', 0, 8, 'good movie'),
(33, 10, 'admin@gmail.com', 0, 9, 'good'),
(34, 33, 'admin@gmail.com', 0, 6, 'ok movie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sl` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sl`, `name`, `email`, `password`, `role`) VALUES
(1, 'Godarshan reddy', 'godarshanreddy@gmail.com', 'reddy', 2),
(8, 'raju', 'raju@gmail.com', '123', 2),
(9, 'Ghouse', 'ghouse@gmail.com', '123', 0),
(10, 'Reddy', 'reddy@gmail.com', 'reddy', 2);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `movie_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
