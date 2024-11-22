-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Generation Time: Nov 22, 2024 at 01:03 AM
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
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 474313824, 327010697, 'Good morning maam. Nag send na po ako ng certificate of indigency ko po. pwede niyo ma print? puntahan ko lang this afternoon'),
(2, 327010697, 474313824, 'okay ah. just prepare 5 pesos for printing.'),
(3, 474313824, 367654203, 'Maam good morning. nagsend po ako ng paprint po ng barangay clearance. pwede niyo po ma print? puntahan ko this morning po.'),
(4, 367654203, 474313824, 'ok. prepare 5 pesos for printing lang.'),
(5, 474313824, 1462146515, 'good morning. nag fill ako form ka cert of residency. pwede niyo po ma papermahan kay captain kay need ko sa school. kadtuon ko lang karon sa hapon tnx'),
(6, 867734589, 219105116, 'Good pm'),
(7, 867734589, 163006142, 'good pm maam, nagfill up po ako ng form. paki check na lang po'),
(8, 367654203, 867734589, 'hello'),
(9, 867734589, 367654203, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 474313824, 'Dazel ', 'Palo', 'dazel@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17270712391720776083652.jpg', 'Offline now'),
(2, 327010697, 'Renald', 'Capillo', 'renald@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1727140733457223519_1773360513071842_8963537051399412243_n.jpg', 'Offline now'),
(3, 367654203, 'Bryl Cedric', 'Palo', 'bryl@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1727140918426442629_2151138281923530_7802031317283895258_n.jpg', 'Offline now'),
(4, 1462146515, 'Flordale Dane Rio', 'Palo', 'flordalepalo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1731285707Screenshot 2024-11-11 083841.png', 'Offline now'),
(5, 867734589, 'Freesel Joy ', 'Cardinal', 'jcardinal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '173128663071109369_2622641151127231_2011873328393879552_n.jpg', 'Offline now'),
(6, 219105116, 'Rosie Jane', 'Siosan', 'rosiesiosan@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1731993492siosan.jpg', 'Offline now'),
(7, 163006142, 'Jesselyn ', 'Lenaria', 'jlenaria@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17319999081720776083652.jpg', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
