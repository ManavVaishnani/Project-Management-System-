-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 06:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_reports`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `Id` int(255) NOT NULL,
  `Collage_id` varchar(20) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Description` text NOT NULL,
  `Group_id` int(20) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`Id`, `Collage_id`, `Title`, `Description`, `Group_id`, `Date`) VALUES
(18, '21CS002', 'fgnrft', 'rt', 55, '2023-10-15'),
(19, '21CS002', 'dfvdfv', 'dfvdfvd', 55, '2023-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `Name`, `Email`, `Password`) VALUES
(1, 'Amit', 'amitthakkar.it@charusat.ac.in', '123456'),
(2, 'Vidisha', 'vidishapradhan.cse@charusat.ac.in\n', '123456'),
(3, 'Dharmendrasinh', 'dharmendrarathod.cse@charusat.ac.in', '123456'),
(4, 'ABHISHEK', 'abhishekpatel.cse@charusat.ac.in\n', '123456'),
(5, 'Brinda', 'brindapatel.cse@charusat.ac.in\n', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_data` mediumblob NOT NULL,
  `Group_id` int(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `Collage_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indevidual`
--

CREATE TABLE `indevidual` (
  `id` int(200) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `work` varchar(200) NOT NULL,
  `week_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indevidual`
--

INSERT INTO `indevidual` (`id`, `user_id`, `work`, `week_id`) VALUES
(0, '21CS002', ' f g', 44);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` varchar(15) NOT NULL,
  `Designation` varchar(10) NOT NULL DEFAULT 'Member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `project_id`, `member_id`, `Designation`) VALUES
(0, 55, '21CS002', 'Leader'),
(0, 56, '21CS002', 'Leader');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'not seen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `openproject`
--

CREATE TABLE `openproject` (
  `id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `projectTechnology` varchar(255) DEFAULT NULL,
  `projectMembers` varchar(255) DEFAULT NULL,
  `projectStatus` varchar(255) DEFAULT NULL,
  `projectDuration` varchar(255) DEFAULT NULL,
  `projectAbstract` text DEFAULT NULL,
  `technologyKeywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(100) NOT NULL,
  `project_name` text DEFAULT NULL,
  `Description` text NOT NULL,
  `start_date` date DEFAULT current_timestamp(),
  `end_date` date DEFAULT '2023-09-05',
  `member_count` int(11) DEFAULT NULL,
  `f_id` int(100) NOT NULL,
  `open_project_id` int(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `Description`, `start_date`, `end_date`, `member_count`, `f_id`, `open_project_id`, `status`) VALUES
(55, 'ecejhbc1', 'dsd dj ', '2023-09-03', '2023-09-05', 1, 1, 0, 1),
(56, 'App developement', 'fgnfgnnfgn', '2023-10-15', '2023-09-05', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(100) NOT NULL,
  `Collage_id` varchar(10) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `Collage_id`, `First_name`, `Last_name`, `Email`, `Password`) VALUES
(1, '21CS001', 'KHYATI ', 'AMIN ', '21CS001@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(2, '21CS002', 'BHAVYAKUMAR  ', 'BHAGAT ', '21CS002@charusat.edu.in', '$2y$10$0c.YwYCSE/AsRkfsxrAAIuwwSGX9sp7sfx6/10ZUUALrLh2A5NHvO'),
(3, '21CS003', 'DHAIRYA', 'BHAVSAR ', '21CS003@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(4, '21CS004', 'YUVRAJSINH  ', 'BODANA ', '21CS004@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(5, '21CS005', 'ANMOL  ', 'CHAUHAN ', '21CS005@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(6, '21CS006', 'FORAM  ', 'DALSANIYA ', '21CS006@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(7, '21CS007', 'DAKSHKUMAR  ', 'DARJI ', '21CS007@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(8, '21CS008', 'IKRAMALI  ', 'DEDHROTIYA ', '21CS008@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(9, '21CS009', 'ARPIT  ', 'GHODASARA ', '21CS009@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(10, '21CS010', 'AYUSH  ', 'GHODASARA ', '21CS010@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(11, '21CS011', 'VAIDEHI  ', 'GHODASARA ', '21CS011@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(12, '21CS012', 'DHAIRYA  ', 'GOHIL ', '21CS012@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(13, '21CS013', 'AYUSHI  ', 'GONDALIYA ', '21CS013@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(14, '21CS014', 'SHIKHA  ', 'GOTHI ', '21CS014@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(15, '21CS015', 'DHRUV  ', 'HARANIYA ', '21CS015@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(16, '21CS016', 'HARSHIV  ', 'KINARIWALA ', '21CS016@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(17, '21CS017', 'HELI  ', 'HINGRAJIYA ', '21CS017@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(18, '21CS019', 'MANAV  ', 'JETHVA ', '21CS019@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(19, '21CS020', 'KUSH  ', 'JIVANI ', '21CS020@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(20, '21CS021', 'JAY  ', 'KANZARIYA ', '21CS021@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(21, '21CS022', 'KHUSHI ', 'KATHIRIYA ', '21CS022@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(22, '21CS023', 'MEET  ', 'KOTHARI', '21CS023@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(23, '21CS024', 'DRASHTI', 'MAHYAVANSHI ', '21CS024@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(24, '21CS025', 'JAIMIN', 'MAKADIA ', '21CS025@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(25, '21CS026', 'HARSHAL  ', 'MAKWANA ', '21CS026@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(26, '21CS027', 'MILAP  ', 'MAKWANA ', '21CS027@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(27, '21CS028', 'HAMIR  ', 'MANDHA ', '21CS028@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(28, '21CS029', 'VINAS  ', 'MANGROLIYA ', '21CS029@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(29, '21CS030', 'BHAVYEN ', 'MEHTA ', '21CS030@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(30, '21CS031', 'HEMISH  ', 'MEHTA ', '21CS031@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(31, '21CS032', 'MAHIMA  ', 'MEHTA ', '21CS032@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(32, '21CS033', 'VRUSHALI  ', 'MHASKAR ', '21CS033@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(33, '21CS034', 'KARAN  ', 'MOTIANI ', '21CS034@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(34, '21CS035', 'DEV  ', 'PADALIYA ', '21CS035@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(35, '21CS036', 'SAMARTH  ', 'PANDYA ', '21CS036@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(36, '21CS037', 'JINESHKUMAR  ', 'PAREKH ', '21CS037@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(37, '21CS038', 'ARYAN  ', 'PATEL ', '21CS038@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(38, '21CS039', 'BHAVI  ', 'PATEL ', '21CS039@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(39, '21CS040', 'DHRUV  ', 'PATEL ', '21CS040@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(40, '21CS041', 'DHRUV  ', 'PATEL ', '21CS041@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(41, '21CS042', 'DHYAN  ', 'PATEL ', '21CS042@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(42, '21CS044', 'HEMILKUMAR  ', 'PATEL ', '21CS044@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(43, '21CS045', 'JEEL  ', 'PATEL ', '21CS045@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(44, '21CS047', 'VEDKUMAR  ', 'PATEL ', '21CS047@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(45, '21CS048', 'SHREEDHAR  ', 'PATIL ', '21CS048@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(46, '21CS049', 'SUJAL ', 'POKIYA', '21CS049@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(47, '21CS051', 'NIRAV  ', 'PRAJAPATI ', '21CS051@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(48, '21CS052', 'VRAJ  ', 'PRAJAPATI ', '21CS052@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(49, '21CS053', 'JAY  ', 'RABARI ', '21CS053@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(50, '21CS054', 'JAINIL ', 'RANA ', '21CS054@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(51, '21CS055', 'YASHU  ', 'RANPARIA ', '21CS055@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(52, '21CS056', 'RHYTHM  ', 'RATHOD ', '21CS056@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(53, '21CS057', 'HARSH  ', 'SACHAPARA ', '21CS057@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(54, '21CS058', 'AAKASH  ', 'SARAIYA ', '21CS058@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(55, '21CS059', 'ADITYA  ', 'SHAH ', '21CS059@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(56, '21CS060', 'DEVANSH  ', 'SHAH ', '21CS060@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(57, '21CS062', 'JOY  ', 'SHAH ', '21CS062@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(58, '21CS063', 'MANAN ', 'SHAH ', '21CS063@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(59, '21CS064', 'SAKSHI  ', 'SHAH ', '21CS064@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(60, '21CS065', 'VRAJ  ', 'SHAH ', '21CS065@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(61, '21CS066', 'SHUSHANT  ', 'SINGH ', '21CS066@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(62, '21CS067', 'HARISH  ', 'SONDAGAR ', '21CS067@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(63, '21CS068', 'HET  ', 'SONI ', '21CS068@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(64, '21CS069', 'HARSHIL  ', 'SUTHAR ', '21CS069@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(65, '21CS070', 'AAKASH  ', 'TADHANI ', '21CS070@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(66, '21CS071', 'NISHIT  ', 'UMARETIA ', '21CS071@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(67, '21CS072', 'VISHV  ', 'VAGHASIYA ', '21CS072@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(68, '21CS073', 'JENISH  ', 'VEKARIYA ', '21CS073@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(69, '21CS074', 'VRAJ  ', 'SHAH ', '21CS074@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(70, '21CS075', 'RUDRA ', 'PATEL', '21CS075@charusat.edu.in', '$2y$10$O8Y.FK82KWfv2X6Mc5R6oeupp1aQaJS/yMabc1tN0GOmZ.0kZtFhi'),
(71, 'D22CS076', 'SAHAJ', 'PATEL ', 'D22CS076@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(72, 'D22CS077', 'SIDDHE', 'PATEL ', 'D22CS077@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(73, 'D22CS078', 'MAHARSHI', 'PATEL ', 'D22CS078@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(74, 'D22CS079', 'TIRTHA', 'GANDHI ', 'D22CS079@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(75, 'D22CS080', 'AHMED', 'ANSARI ', 'D22CS080@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(76, 'D22CS081', 'DEVKUMAR', 'GOJARIYA ', 'D22CS081@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(77, 'D22CS082', 'ARCHIT', 'PIDHADIYA ', 'D22CS082@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(78, 'D22CS084', 'BHAKTI', 'PATHAK ', 'D22CS084@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(79, 'D22CS085', 'SHIV', 'MODI ', 'D22CS085@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(80, 'D22CS086', 'VRUTI', 'BHADAJA ', 'D22CS086@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(81, 'D22CS087', 'KUSHAL', 'ASODIA ', 'D22CS087@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(82, 'D22CS088', 'BHAVIK', 'MAKVANA ', 'D22CS088@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(83, 'D22CS089', 'DHRUMIT', 'BORICHA ', 'D22CS089@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(84, 'D22CS090', 'AANCHAL', 'DESAI ', 'D22CS090@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(85, 'D22CS091', 'MANAV', 'VAISHNANI ', 'D22CS091@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(86, 'D22CS092', 'SANJAY', 'CHOUDHARY ', 'D22CS092@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(87, 'D22CS093', 'KEYURI', 'SAVALIYA ', 'D22CS093@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(88, 'D22CS094', 'KRISH', 'PATEL ', 'D22CS094@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(89, 'D22CS095', 'PRAPTI', 'THORIYA ', 'D22CS095@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(90, 'D22CS096', 'KARAN', 'DER ', 'D22CS096@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(91, 'D22CS097', 'RUSHABHGIRI', 'GOSWAMI ', 'D22CS097@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC'),
(92, 'D22CS099', 'HARSHBHAI', 'PATEL', 'D22CS099@charusat.edu.in', '$2y$10$TqGCm89FdNF73xDfaHJzZO6.WvmlxhjuswR.FNfJvPMcZeDnhGptC');

-- --------------------------------------------------------

--
-- Table structure for table `weekly`
--

CREATE TABLE `weekly` (
  `id` int(200) NOT NULL,
  `this_week` text NOT NULL,
  `project_id` int(200) NOT NULL,
  `next_week` text NOT NULL,
  `Faculty_input` text DEFAULT '--',
  `marks` int(10) NOT NULL DEFAULT 0,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly`
--

INSERT INTO `weekly` (`id`, `this_week`, `project_id`, `next_week`, `Faculty_input`, `marks`, `status`) VALUES
(44, 'hello ', 55, 'fb ffg fb f', NULL, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openproject`
--
ALTER TABLE `openproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `weekly`
--
ALTER TABLE `weekly`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `openproject`
--
ALTER TABLE `openproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `weekly`
--
ALTER TABLE `weekly`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
