-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2026 at 01:54 AM
-- Server version: 8.0.38
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auraglobaledu_auraglobaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Admin',
  `dev_password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `createdAt`, `updatedAt`, `name`, `dev_password`) VALUES
(1, 'admin@auraglobal.com', '$2b$10$U5DxzQ9PV1GmYOEegEKnF.Qr0.xQTN63P3KNnTfMBngWPeCdD.Pfa', '2026-05-30 06:10:41', '2026-06-12 09:14:10', 'Aura Admin', '$2b$10$oZ1D75yuXwrn33eeUaNTv.XjuUU1mBhjjlIB/hj88kAv9uWxUpFOG');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `button` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `buttonLink` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `description`, `button`, `buttonLink`, `image`, `createdAt`, `updatedAt`) VALUES
(5, 'Empower Your Future With  Aura Global Education', 'Admissions Open for 2026 to  2027 Academic Year', 'Build a successful future with quality international education. Aura Global Education helps students explore the best study opportunities around the world.', 'Apply Now', '/study-abroad', '/uploads/banners/1781181589596-1780471370615-studying-abroad-1--1-.jpg', '2026-05-30 07:29:57', '2026-06-12 04:38:45'),
(9, 'Study in Top Universities Around the World', 'Expert Guidance for Admissions, Scholarships & Visa Success', 'Achieve your international education goals with personalized support at every step. From choosing the right course and university to securing scholarships and visas, Aura Global Education helps you build a successful future abroad.', 'Book Free Consultation', '/contact', '/uploads/banners/1781238953794-banner2.jpg', '2026-06-12 04:35:53', '2026-06-12 04:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int NOT NULL,
  `studiesAbroadId` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `studiesAbroadId`, `name`, `createdAt`, `updatedAt`) VALUES
(6, 9, 'High School (12th) Completed secondary level schooling', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(7, 9, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(8, 9, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(9, 9, 'Diploma Holder Technical or short vocational streams', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(10, 9, 'Certificate Course Short-term professional certification', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(11, 9, 'Doctorate / PhD Advanced global research programs', '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(12, 10, 'High School (12th) Completed secondary level schooling', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(13, 10, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(14, 10, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(15, 10, 'Certificate Course Short-term professional certification', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(16, 10, 'Doctorate / PhD', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(17, 10, 'Diploma Holder Technical or short vocational streams', '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(18, 11, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(19, 11, 'High School (12th) Completed secondary level schooling', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(20, 11, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(21, 11, 'Doctorate / PhD Advanced global research programs', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(22, 11, 'Diploma Holder Technical or short vocational streams', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(23, 11, 'Certificate Course Short-term professional certification', '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(24, 12, 'High School (12th) Completed secondary level schooling', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(25, 12, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(26, 12, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(27, 12, 'Doctorate / PhD Advanced global research programs', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(28, 12, 'Certificate Course Short-term professional certification', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(29, 12, 'Diploma Holder Technical or short vocational streams', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(30, 13, 'High School (12th) Completed secondary level schooling', '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(31, 13, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(32, 13, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(33, 13, 'Doctorate / PhD Advanced global research programs', '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(34, 13, 'Diploma Holder Technical or short vocational streams', '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(35, 14, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(36, 14, 'Doctorate / PhD Advanced global research programs', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(37, 14, 'High School (12th) Completed secondary level schooling', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(38, 14, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(39, 14, 'Diploma Holder Technical or short vocational streams', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(40, 14, 'Certificate Course Short-term professional certification', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(41, 15, 'High School (12th) Completed secondary level schooling', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(42, 15, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(43, 15, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(44, 15, 'Doctorate / PhD Advanced global research programs', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(45, 15, 'Diploma Holder Technical or short vocational streams', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(46, 15, 'Certificate Course Short-term professional certification', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(47, 16, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(48, 16, 'High School (12th) Completed secondary level schooling', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(49, 16, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(50, 16, 'Doctorate / PhD Advanced global research programs', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(51, 16, 'Diploma Holder Technical or short vocational streams', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(52, 16, 'Certificate Course Short-term professional certification', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(53, 17, 'Bachelor\'s Degree Undergraduate academic degree courses', '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(54, 17, 'High School (12th) Completed secondary level schooling', '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(55, 17, 'Master\'s Degree Postgraduate specialized career track', '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(56, 17, 'Doctorate / PhD Advanced global research programs', '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(57, 17, 'Certificate Course Short-term professional certification', '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(58, 17, 'Diploma Holder Technical or short vocational streams', '2026-06-03 11:47:32', '2026-06-03 11:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `testMode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_general_ci,
  `isRead` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `fullName`, `email`, `phone`, `testMode`, `education`, `note`, `isRead`, `createdAt`, `updatedAt`) VALUES
(5, 'kalai', 'kalaiyarasiravi2005@gmail.com', '9047355879', 'Jan-Feb', 'B.E CSE', 'Other countries / quick enquiry', 1, '2026-06-04 10:35:08', '2026-06-04 10:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `studiesAbroadId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `description`, `createdAt`, `updatedAt`, `studiesAbroadId`) VALUES
(6, 'IELTS (International English Language Testing System)', 'Prepare for the IELTS exam with comprehensive training in Listening, Reading, Writing, and Speaking modules. Our expert trainers provide personalized guidance, practice sessions, mock tests, and exam strategies to help students achieve their target band score for study, work, or migration purposes.', '2026-06-02 11:42:49', '2026-06-02 11:42:49', 8);

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` int NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inboxes`
--

INSERT INTO `inboxes` (`id`, `fullName`, `email`, `phone`, `country`, `message`, `isRead`, `createdAt`, `updatedAt`) VALUES
(15, 'Kalaiyarasi Ravi', 'kalaiyarasiravi2005@gmail.com', '9163696214', 'India', 'test', 0, '2026-06-18 11:24:17', '2026-06-18 11:24:17'),
(16, 'Gokul', 'gokulrajravi@gmail.com', '9994817310', 'Latvia', 'Im looking for rtu univ', 1, '2026-06-19 17:15:48', '2026-06-25 04:29:32'),
(17, 'GUAG Evelyn', 'guagevelyn008@gmail.com', '6757343126', 'Papua New Guinea', 'I\'m thinking of studying law at one of the best law school in the world', 0, '2026-08-22 10:18:23', '2026-08-22 10:18:23'),
(18, 'Guag Evelyn', 'guagevelyn008@gmail.com', '6757343126', 'India', 'I was planning to taking up law after I graduated in the best law school in India the following year', 0, '2026-08-22 10:33:52', '2026-08-22 10:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `totalSessions` int NOT NULL,
  `sessionDuration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `timing` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mockTests` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `examId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title`, `duration`, `totalSessions`, `sessionDuration`, `timing`, `mockTests`, `price`, `isActive`, `createdAt`, `updatedAt`, `examId`) VALUES
(15, 'Extensive Program(Online)', '4 Weeks', 20, '1 Hour', 'Monday - Friday | 12:00 pm to 1:00 pm', 4, 7998.00, 1, '2026-06-11 06:16:31', '2026-06-11 06:16:31', 6),
(16, 'Weekend Batch(Online)', '6 Saturdays', 6, '3 hours', 'Saturday| 3:00 pm to 6:00 pm', 4, 7999.00, 1, '2026-06-11 06:16:31', '2026-06-11 06:16:31', 6);

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` int NOT NULL,
  `studiesAbroadId` int NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `isActive` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `coursename` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `studiesAbroadId`, `amount`, `description`, `isActive`, `createdAt`, `updatedAt`, `coursename`) VALUES
(5, 10, 16000.00, 'Financial support for international students pursuing higher education in Germany.', 0, '2026-06-03 08:37:03', '2026-06-11 14:11:01', 'DAAD Scholarship'),
(8, 17, 4500.00, 'Special Edition', 0, '2026-06-11 05:34:59', '2026-06-11 14:10:45', 'Singapore Scholar');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `features` text COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bannerImage` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `button` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `buttonLink` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `subtitle`, `description`, `features`, `image`, `bannerImage`, `button`, `buttonLink`, `createdAt`, `updatedAt`) VALUES
(3, 'Free Counselling', 'Get Expert Guidance for Your Study Abroad', 'Receive personalized counselling from experienced education advisors. We assess your academic background, career goals, budget, and preferred destinations to help you choose the best study options and create a clear roadmap for your international education journey.', '[\"Personalized career guidance\",\"University and course recommendations\",\"Country selection assistance\",\"Admission process guidance\"]', '/uploads/services/1780568096491-Gemini-Generated-Image-7g9s0a7g9s0a7g9s.png', '/uploads/services/1781088526084-WhatsApp-Image-2026-06-10-at-16-00-27.jpeg', 'Book Free Consultation', '/contact', '2026-06-02 12:13:12', '2026-06-10 10:49:54'),
(4, 'University Selection Assistance', 'Find the Right University for Your Future', 'Our experts help you shortlist and select universities that match your academic profile, career aspirations, budget, and preferred location. We provide detailed information about courses, rankings, admission requirements, and future opportunities.', '[\"Personalized university shortlisting\",\"Course and program guidance\",\"Admission requirements review\",\"Ranking and accreditation analysis\",\"Budget-friendly options\"]', '/uploads/services/1780567856609-pexels-zandatsu-31367495.jpg', '/uploads/services/1781160290160-pexels-clmcdk-fejcn-2057437867-29646491--1-.jpg', 'Get Visa Support', '/university-selection', '2026-06-02 12:18:32', '2026-06-11 06:44:50'),
(5, 'Visa Assistance', 'Simplifying Your Student Visa Process', 'Our visa experts provide end-to-end support to ensure your student visa application is accurate, complete, and submitted on time, increasing your chances of approval.', '[\"Visa documentation guidance\",\"Application form assistance\",\"Financial document review\",\"Visa interview preparation\"]', '/uploads/services/1780402886778-visa-thumb.avif', '/uploads/services/1781160547264-pexels-mrborys-8061986--2-.jpg', 'Get Visa Support', '/visa-assistance', '2026-06-02 12:21:26', '2026-06-11 06:49:07'),
(6, 'Scholarship Assistance', 'Unlock Funding Opportunities for Your Education', 'We help students discover and apply for scholarships that can significantly reduce the cost of studying abroad, making international education more accessible.', '[\"Scholarship identification\",\"Eligibility assessment\",\"Application guidance\",\"Essay and SOP support\",\"Documentation assistance\"]', '/uploads/services/1780403101871-sholership-thumb.avif', '/uploads/services/1780403101872-scholership-banner.webp', 'Find Scholarships', '/scholarships', '2026-06-02 12:25:01', '2026-06-02 12:25:01'),
(7, 'Educational Loan Support', 'Financial Solutions for Your Global Education', 'Secure funding for your studies through our educational loan assistance services. We guide students through loan options, documentation, and approval processes.', '[\"Loan eligibility evaluation\",\"Partner bank assistance\",\"Documentation support\",\"Loan application guidance\",\"Financial planning consultation\"]', '/uploads/services/1780403333494-loan-thumb.jpg', '/uploads/services/1780403333500-loans-banner.avif', 'Check Eligibility', '/education-loan', '2026-06-02 12:28:53', '2026-06-02 12:28:53'),
(8, 'IELTS Coaching', 'Achieve Your Desired IELTS Band Score', 'Our IELTS coaching program is designed to help students excel in Listening, Reading, Writing, and Speaking through expert instruction and regular practice.', '[\"Expert IELTS trainers\",\"Comprehensive study materials\",\"Speaking practice sessions\",\"Writing evaluation and feedback\",\"Full-length mock tests\"]', '/uploads/services/1780568166121-Gemini-Generated-Image-ucg2u8ucg2u8ucg2--1-.png', '/uploads/services/1781161576176-pexels-zen-chung-5537527--2-.jpg', 'Join IELTS Course', '/ielts-coaching', '2026-06-02 12:32:29', '2026-06-11 07:06:16'),
(9, 'Mock Interview Preparation', 'Prepare Confidently for University and Visa Interviews', 'Build confidence and improve communication skills through realistic mock interview sessions tailored for university admissions and visa applications.', '[\"One-on-one interview sessions\",\"University interview practice\",\"Visa interview simulation\",\"Personalized feedback\",\"Communication skill enhancement\"]', '/uploads/services/1780568731752-mock.webp', '/uploads/services/1781158398546-WhatsApp-Image-2026-06-10-at-16-00-12--1-.jpeg', 'Book Mock Interview', '/mock-interview', '2026-06-02 12:35:53', '2026-06-11 06:13:18'),
(10, 'Student Accommodation Assistance', 'Find Safe and Comfortable Housing Abroad', 'We help students find secure and affordable accommodation options that suit their lifestyle, preferences, and budget.', '[\"On-campus housing assistance\",\"Off-campus accommodation options\",\"Shared apartment guidance\",\"Homestay recommendations\"]', '/uploads/services/1780568835361-student.jpg', '/uploads/services/1781161238489-pexels-mart-production-8472913--1-.jpg', 'Find Accommodation', '/student-accommodation', '2026-06-02 12:39:00', '2026-06-11 07:00:38'),
(11, 'Pre-Departure & Post-Arrival Assistance', 'Supporting You Before You Leave and After You Arrive', 'Our comprehensive support services ensure students are well-prepared before departure and receive guidance after arriving in their destination country.', '[\"Pre-departure orientation\",\"Travel and packing guidance\",\"Local accommodation support\",\"Banking and SIM card assistance\"]', '/uploads/services/1781089066285-arrive-thum.jpg', '/uploads/services/1781158355353-WhatsApp-Image-2026-06-10-at-16-00-12.jpeg', 'Get Support', 'https://kavinhealthcare.saitechnosolutions.co.in/', '2026-06-02 12:53:55', '2026-06-11 06:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_applications`
--

CREATE TABLE `student_applications` (
  `id` int NOT NULL,
  `studiesAbroadId` int NOT NULL,
  `testSectionId` int NOT NULL,
  `educationId` int NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_applications`
--

INSERT INTO `student_applications` (`id`, `studiesAbroadId`, `testSectionId`, `educationId`, `fullName`, `email`, `phone`, `isRead`, `createdAt`, `updatedAt`) VALUES
(13, 14, 23, 38, 'kalai', 'kalaiyarasiravi2005@gmail.com', '6369621417', 0, '2026-06-18 11:35:42', '2026-06-18 11:35:42'),
(14, 14, 23, 35, 'Shyam', 'testing@gmail.com', '7852535688', 0, '2026-06-19 17:14:11', '2026-06-19 17:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `studies_abroads`
--

CREATE TABLE `studies_abroads` (
  `id` int NOT NULL,
  `countryName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `features` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studies_abroads`
--

INSERT INTO `studies_abroads` (`id`, `countryName`, `image`, `description`, `features`, `createdAt`, `updatedAt`) VALUES
(9, 'United Kingdom', '/uploads/studies-abroad/1780475436837-uk.jpg', 'The UK is one of the world\'s leading destinations for international students, offering globally recognized degrees, excellent research opportunities, and a multicultural learning environment.', '[\"Globally recognized universities\",\"Strong academic reputation\"]', '2026-06-03 08:30:36', '2026-06-03 08:30:36'),
(10, 'Germany', '/uploads/studies-abroad/1780485790426-german.jpg', 'Germany is known for affordable education, world-class engineering programs, and excellent career opportunities for international students.', '[\"Low tuition fees\",\"High-quality education\",\"Research-focused learning\"]', '2026-06-03 08:37:03', '2026-06-03 11:23:10'),
(11, 'France', '/uploads/studies-abroad/1780485886644-fran.jpg', 'France offers excellent education, rich cultural experiences, and internationally recognized business and management programs.', '[\"Affordable tuition\",\"Strong business schools\",\"Cultural diversity\"]', '2026-06-03 08:41:53', '2026-06-03 11:24:46'),
(12, 'Australia', '/uploads/studies-abroad/1780476376779-Australia.jpg', 'Australia provides world-class education, excellent quality of life, and attractive post-study work opportunities.', '[\"Globally ranked universities\",\"Post-study work rights\",\"High quality of life\"]', '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(13, 'New Zealand', '/uploads/studies-abroad/1780485967459-newz.avif', 'New Zealand offers quality education, safe living conditions, and excellent support services for international students.', '[\"Safe country\",\"Globally recognized qualifications\",\"Post-study work options\"]', '2026-06-03 09:00:47', '2026-06-03 11:26:07'),
(14, 'Ireland', '/uploads/studies-abroad/1780486252008-Ireland.jpg', 'Ireland is a rapidly growing education hub known for technology, business, and pharmaceutical programs.', '[\"English-speaking country\",\"Strong IT sector\",\"Post-study work visa\"]', '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(15, 'Canada', '/uploads/studies-abroad/1780486635298-Canada.jpg', 'Canada is one of the most preferred destinations for international students due to its quality education and immigration opportunities.', '[\"High-quality education\",\"Post-graduation work permit\",\"Affordable tuition\"]', '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(16, 'United States (USA)', '/uploads/studies-abroad/1780487012725-United-States--USA-.jpg', 'The USA hosts many of the world\'s top universities and offers extensive academic and research opportunities.', '[\"Top-ranked universities\",\"Research excellence\",\"Diverse course options\"]', '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(17, 'Singapore', '/uploads/studies-abroad/1780487252728-singapore.jpg', 'Singapore is a leading education hub in Asia offering globally recognized degrees and excellent career opportunities.', '[\"World-class universities\",\"Strategic location\",\"Strong economy\"]', '2026-06-03 11:47:32', '2026-06-03 11:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `test_sections`
--

CREATE TABLE `test_sections` (
  `id` int NOT NULL,
  `studiesAbroadId` int NOT NULL,
  `startMonth` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `endMonth` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `year` int NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_sections`
--

INSERT INTO `test_sections` (`id`, `studiesAbroadId`, `startMonth`, `endMonth`, `year`, `isActive`, `createdAt`, `updatedAt`) VALUES
(7, 9, 'January', 'February', 2025, 1, '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(8, 9, 'September', 'October', 2026, 1, '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(9, 9, 'May', 'June', 2026, 1, '2026-06-03 08:30:37', '2026-06-03 08:30:37'),
(10, 10, 'January', 'February', 2025, 1, '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(11, 10, 'September', 'October', 2026, 1, '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(12, 10, 'May', 'June', 2026, 1, '2026-06-03 08:37:03', '2026-06-03 08:37:03'),
(13, 11, 'October', 'November', 2026, 1, '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(14, 11, 'January', 'February', 2026, 1, '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(15, 11, 'June', 'July', 2026, 1, '2026-06-03 08:41:53', '2026-06-03 08:41:53'),
(16, 12, 'October', 'November', 2026, 1, '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(17, 12, 'May', 'June', 2026, 1, '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(18, 12, 'January', 'February', 2026, 1, '2026-06-03 08:46:16', '2026-06-03 08:46:16'),
(19, 13, 'January', 'February', 2026, 1, '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(20, 13, 'October', 'November', 2026, 1, '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(21, 13, 'May', 'June', 2026, 1, '2026-06-03 09:00:47', '2026-06-03 09:00:47'),
(22, 14, 'May', 'June', 2026, 1, '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(23, 14, 'January', 'February', 2026, 1, '2026-06-03 11:30:52', '2026-06-03 11:30:52'),
(24, 14, 'November', 'December', 2026, 1, '2026-06-03 11:32:00', '2026-06-03 11:32:00'),
(25, 15, 'January', 'February', 2026, 1, '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(26, 15, 'May', 'June', 2026, 1, '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(27, 15, 'October', 'November', 2026, 1, '2026-06-03 11:37:15', '2026-06-03 11:37:15'),
(28, 16, 'January', 'February', 2026, 1, '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(29, 16, 'May', 'June', 2026, 1, '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(30, 16, 'October', 'November', 2026, 1, '2026-06-03 11:43:32', '2026-06-03 11:43:32'),
(31, 17, 'May', 'June', 2026, 1, '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(32, 17, 'November', 'December', 2026, 1, '2026-06-03 11:47:32', '2026-06-03 11:47:32'),
(33, 17, 'January', 'February', 2026, 1, '2026-06-03 11:47:32', '2026-06-10 11:44:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`),
  ADD UNIQUE KEY `email_16` (`email`),
  ADD UNIQUE KEY `email_17` (`email`),
  ADD UNIQUE KEY `email_18` (`email`),
  ADD UNIQUE KEY `email_19` (`email`),
  ADD UNIQUE KEY `email_20` (`email`),
  ADD UNIQUE KEY `email_21` (`email`),
  ADD UNIQUE KEY `email_22` (`email`),
  ADD UNIQUE KEY `email_23` (`email`),
  ADD UNIQUE KEY `email_24` (`email`),
  ADD UNIQUE KEY `email_25` (`email`),
  ADD UNIQUE KEY `email_26` (`email`),
  ADD UNIQUE KEY `email_27` (`email`),
  ADD UNIQUE KEY `email_28` (`email`),
  ADD UNIQUE KEY `email_29` (`email`),
  ADD UNIQUE KEY `email_30` (`email`),
  ADD UNIQUE KEY `email_31` (`email`),
  ADD UNIQUE KEY `email_32` (`email`),
  ADD UNIQUE KEY `email_33` (`email`),
  ADD UNIQUE KEY `email_34` (`email`),
  ADD UNIQUE KEY `email_35` (`email`),
  ADD UNIQUE KEY `email_36` (`email`),
  ADD UNIQUE KEY `email_37` (`email`),
  ADD UNIQUE KEY `email_38` (`email`),
  ADD UNIQUE KEY `email_39` (`email`),
  ADD UNIQUE KEY `email_40` (`email`),
  ADD UNIQUE KEY `email_41` (`email`),
  ADD UNIQUE KEY `email_42` (`email`),
  ADD UNIQUE KEY `email_43` (`email`),
  ADD UNIQUE KEY `email_44` (`email`),
  ADD UNIQUE KEY `email_45` (`email`),
  ADD UNIQUE KEY `email_46` (`email`),
  ADD UNIQUE KEY `email_47` (`email`),
  ADD UNIQUE KEY `email_48` (`email`),
  ADD UNIQUE KEY `email_49` (`email`),
  ADD UNIQUE KEY `email_50` (`email`),
  ADD UNIQUE KEY `email_51` (`email`),
  ADD UNIQUE KEY `email_52` (`email`),
  ADD UNIQUE KEY `email_53` (`email`),
  ADD UNIQUE KEY `email_54` (`email`),
  ADD UNIQUE KEY `email_55` (`email`),
  ADD UNIQUE KEY `email_56` (`email`),
  ADD UNIQUE KEY `email_57` (`email`),
  ADD UNIQUE KEY `email_58` (`email`),
  ADD UNIQUE KEY `email_59` (`email`),
  ADD UNIQUE KEY `email_60` (`email`),
  ADD UNIQUE KEY `email_61` (`email`),
  ADD UNIQUE KEY `email_62` (`email`),
  ADD UNIQUE KEY `email_63` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studiesAbroadId` (`studiesAbroadId`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studiesAbroadId` (`studiesAbroadId`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examId` (`examId`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studiesAbroadId` (`studiesAbroadId`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applications`
--
ALTER TABLE `student_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studiesAbroadId` (`studiesAbroadId`),
  ADD KEY `testSectionId` (`testSectionId`),
  ADD KEY `educationId` (`educationId`);

--
-- Indexes for table `studies_abroads`
--
ALTER TABLE `studies_abroads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_sections`
--
ALTER TABLE `test_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studiesAbroadId` (`studiesAbroadId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_applications`
--
ALTER TABLE `student_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `studies_abroads`
--
ALTER TABLE `studies_abroads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `test_sections`
--
ALTER TABLE `test_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`studiesAbroadId`) REFERENCES `studies_abroads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`examId`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD CONSTRAINT `scholarships_ibfk_1` FOREIGN KEY (`studiesAbroadId`) REFERENCES `studies_abroads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_applications`
--
ALTER TABLE `student_applications`
  ADD CONSTRAINT `student_applications_ibfk_1` FOREIGN KEY (`studiesAbroadId`) REFERENCES `studies_abroads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_applications_ibfk_2` FOREIGN KEY (`testSectionId`) REFERENCES `test_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_applications_ibfk_3` FOREIGN KEY (`educationId`) REFERENCES `education` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_sections`
--
ALTER TABLE `test_sections`
  ADD CONSTRAINT `test_sections_ibfk_1` FOREIGN KEY (`studiesAbroadId`) REFERENCES `studies_abroads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
