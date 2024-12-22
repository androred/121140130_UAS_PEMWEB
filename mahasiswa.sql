-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 12:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `agree` tinyint(1) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `email`, `gender`, `agree`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Male', 1, '192.168.1.1', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Female', 1, '192.168.1.2', 'Chrome/107.0', '2024-12-20 16:47:18'),
(3, 'Robert Brown', 'robert.brown@example.com', 'Male', 0, '192.168.1.3', 'Edge/106.0', '2024-12-20 16:47:18'),
(4, 'Emily Davis', 'emily.davis@example.com', 'Female', 1, '192.168.1.4', 'Safari/16.0', '2024-12-20 16:47:18'),
(5, 'Michael Johnson', 'michael.johnson@example.com', 'Male', 1, '192.168.1.5', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(6, 'Sarah Wilson', 'sarah.wilson@example.com', 'Female', 0, '192.168.1.6', 'Chrome/107.0', '2024-12-20 16:47:18'),
(7, 'William Martinez', 'william.martinez@example.com', 'Male', 1, '192.168.1.7', 'Firefox/105.0', '2024-12-20 16:47:18'),
(8, 'Olivia Garcia', 'olivia.garcia@example.com', 'Female', 1, '192.168.1.8', 'Edge/106.0', '2024-12-20 16:47:18'),
(9, 'James Miller', 'james.miller@example.com', 'Male', 0, '192.168.1.9', 'Safari/16.0', '2024-12-20 16:47:18'),
(10, 'Isabella Rodriguez', 'isabella.rodriguez@example.com', 'Female', 1, '192.168.1.10', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(11, 'Alexander Lee', 'alexander.lee@example.com', 'Male', 1, '192.168.1.11', 'Chrome/107.0', '2024-12-20 16:47:18'),
(12, 'Sophia Hernandez', 'sophia.hernandez@example.com', 'Female', 0, '192.168.1.12', 'Edge/106.0', '2024-12-20 16:47:18'),
(13, 'Benjamin Walker', 'benjamin.walker@example.com', 'Male', 1, '192.168.1.13', 'Safari/16.0', '2024-12-20 16:47:18'),
(14, 'Charlotte Hall', 'charlotte.hall@example.com', 'Female', 1, '192.168.1.14', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(15, 'Lucas Young', 'lucas.young@example.com', 'Male', 0, '192.168.1.15', 'Chrome/107.0', '2024-12-20 16:47:18'),
(16, 'Amelia Allen', 'amelia.allen@example.com', 'Female', 1, '192.168.1.16', 'Firefox/105.0', '2024-12-20 16:47:18'),
(17, 'Elijah Wright', 'elijah.wright@example.com', 'Male', 1, '192.168.1.17', 'Edge/106.0', '2024-12-20 16:47:18'),
(18, 'Mia King', 'mia.king@example.com', 'Female', 1, '192.168.1.18', 'Safari/16.0', '2024-12-20 16:47:18'),
(19, 'Logan Scott', 'logan.scott@example.com', 'Male', 0, '192.168.1.19', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(20, 'Grace Green', 'grace.green@example.com', 'Female', 1, '192.168.1.20', 'Chrome/107.0', '2024-12-20 16:47:18'),
(21, 'Ethan Adams', 'ethan.adams@example.com', 'Male', 1, '192.168.1.21', 'Edge/106.0', '2024-12-20 16:47:18'),
(22, 'Ava Baker', 'ava.baker@example.com', 'Female', 0, '192.168.1.22', 'Safari/16.0', '2024-12-20 16:47:18'),
(23, 'Henry Gonzalez', 'henry.gonzalez@example.com', 'Male', 1, '192.168.1.23', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(24, 'Chloe Perez', 'chloe.perez@example.com', 'Female', 1, '192.168.1.24', 'Chrome/107.0', '2024-12-20 16:47:18'),
(25, 'Daniel Turner', 'daniel.turner@example.com', 'Male', 0, '192.168.1.25', 'Edge/106.0', '2024-12-20 16:47:18'),
(26, 'Ella Carter', 'ella.carter@example.com', 'Female', 1, '192.168.1.26', 'Safari/16.0', '2024-12-20 16:47:18'),
(27, 'Matthew Evans', 'matthew.evans@example.com', 'Male', 1, '192.168.1.27', 'Mozilla/5.0', '2024-12-20 16:47:18'),
(28, 'Victoria Collins', 'victoria.collins@example.com', 'Female', 0, '192.168.1.28', 'Chrome/107.0', '2024-12-20 16:47:18'),
(29, 'Jackson Edwards', 'jackson.edwards@example.com', 'Male', 1, '192.168.1.29', 'Edge/106.0', '2024-12-20 16:47:18'),
(30, 'Sofia Morris', 'sofia.morris@example.com', 'Female', 1, '192.168.1.30', 'Safari/16.0', '2024-12-20 16:47:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
