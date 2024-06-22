-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221220.e5e070c814
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 11:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_connection`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_code`
--

CREATE TABLE `access_code` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_code`
--

INSERT INTO `access_code` (`id`, `code`, `created_at`) VALUES
(1, 'initialAccessCode123', '2024-06-16 08:02:13'),
(2, 'd7f658c1a50010c0', '2024-06-16 08:02:27'),
(3, 'ee3a0535457c3b33', '2024-06-16 08:03:06'),
(4, 'd46d5b2fa65c6dd0', '2024-06-16 08:05:59'),
(5, 'efd50ea3d7621fdd', '2024-06-16 08:06:28'),
(6, 'fe05b1de51ca0302', '2024-06-16 08:07:02'),
(7, '2a5ebfd74fb4f423', '2024-06-16 08:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `access_codes`
--

CREATE TABLE `access_codes` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `code` varchar(32) NOT NULL,
  `expiration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_codes`
--

INSERT INTO `access_codes` (`id`, `role`, `code`, `expiration_time`) VALUES
(6, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-16 00:49:21'),
(7, 'admin', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-16 00:49:21'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 18:52:39'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 18:53:56'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 18:54:55'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 18:55:58'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 18:58:13'),
(0, 'doctor', 'fb186ff4b9bae0f60d461115fb662f50', '2024-06-15 19:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `activation_tokens`
--

CREATE TABLE `activation_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activation_tokens`
--

INSERT INTO `activation_tokens` (`id`, `token`, `patient_id`, `created_at`) VALUES
(6, '8a1bce6cbfcb902d22e2922250176b77', 62, '2024-05-14 19:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `address_line1`, `address_line2`, `city`, `state`, `postcode`, `patient_id`) VALUES
(13, 'taman selesa', 'jalan silat harimau 21', 'jb', 'Johor', '81300', 70),
(14, 'Kelantan 1', 'Shah alam subang jaya', 'kelanatan', 'Pulau Pinang', '785469', 75),
(15, 'taman selesa', 'jalan silat harimau 21', 'jb', 'WP Putrajaya', '81300', 79),
(16, 'taman selesa', 'jalan silat harimau 21', 'jb', 'WP Putrajaya', '81300', 80),
(17, 'taman selesa', 'jalan silat harimau 21', 'jb', 'WP Putrajaya', '81300', 81),
(18, 'taman selesa', 'jalan silat harimau 21', '', NULL, NULL, 82),
(19, 'taman selesa', 'jalan silat harimau 21', '', NULL, NULL, 83),
(20, 'Hang Lekir', 'Nusa Bestari', '', NULL, NULL, 94),
(21, 'taman selesa', 'jalan silat harimau 21', '', NULL, NULL, 103),
(22, 'sri bayu apartment jalan silat harimau 21', 'Nusa Bestari', '', NULL, NULL, 107),
(23, 'taman selesa', 'jalan silat harimau 21', '', NULL, NULL, 110),
(24, 'sri bayu apartment jalan silat harimau 21', 'Nusa Bestari', '', NULL, NULL, 111),
(25, 'sri bayu apartment jalan silat harimau 21', 'Nusa Bestari', '', NULL, NULL, 112),
(26, 'sri bayu apartment jalan silat harimau 21', 'tun hussein onn', '', NULL, NULL, 113),
(27, 'A4-12 Jalan Silat Harimau 21, Bandar Selesa Jaya,81300 Skudai,Johor', 'JALAN SILAT HARIMAU 21,', 'JB', 'Johor', '81300', 119),
(28, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', '', NULL, NULL, 134),
(29, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', '', NULL, NULL, 135),
(30, 'Nusa bestari 2 ', 'terranganu', 'Unknown', '', '', 136),
(31, 'tan sri yakob ', 'nusa bestari 1', 'Unknown', '', '', 62),
(32, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', '', NULL, NULL, 137),
(33, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', 'Unknown', '', '', 137),
(34, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', '', NULL, NULL, 138),
(35, 'A4-12 Jalan Silat Harimau 21, Bandar Selesa Jaya,81300 Skudai,Johor', 'JALAN SILAT HARIMAU 21,', 'Unknown', '', '', 119),
(38, 'A4-12 Jalan Silat Harimau 21, Bandar Selesa Jaya,81300 Skudai,Johor', 'JALAN SILAT HARIMAU 21,', 'Unknown', '', '', 119),
(39, 'sri bayu apartment jalan silat harimau 21', 'Shah alam subang jaya', 'Unknown', '', '', 135),
(40, '01245789654', 'tun hussein onn', '', NULL, NULL, 143);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(4, 'admin', '$2y$10$UK4ul8hCQPQpzSmyydeX.eBssKVSRxDQGgXNQcmIOYrwOc4DcUPeC'),
(5, 'admin1', '9ff178e70e057bb93a593ec62aff3a68a1f7a28a2ead6d7a8e36ce2b4843e9e6');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `appointment_time` datetime NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `patient_id`, `doctor_id`, `service_id`, `appointment_time`, `phone`, `email`, `status`) VALUES
(167, 119, 73, 2, '2024-06-15 17:30:00', '145789654', NULL, 'Pending'),
(169, 136, 73, 4, '2024-06-15 16:50:00', '0127788965', 'ndheshini@gmail.com', 'Pending'),
(170, 135, 73, 3, '2024-06-15 19:01:00', '0103843391', NULL, 'Pending'),
(183, 142, 72, 2, '2024-06-16 11:31:00', '01245796654', NULL, 'Pending'),
(200, 145, 81, 1, '2024-06-16 15:55:00', '0127788965', 'dheshini.sheesh@gmail.com', 'Pending'),
(201, 145, 81, 1, '2024-06-16 20:30:00', '012345879', 'dheshini.sheesh@Gmail.com', 'Pending'),
(204, 144, 81, 1, '2024-06-17 16:50:00', '012589745', 'ndheshini@gmail.com', 'Cancelled'),
(205, 144, 81, 1, '2024-06-18 19:55:00', '5689784589', 'ndheshini@gmail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verification_code` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `gender` enum('male','female') NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `identity_card` varchar(50) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `login_attempts` int(11) DEFAULT NULL,
  `account_locked` tinyint(1) DEFAULT NULL,
  `lock_time` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `verification_code_expires` datetime DEFAULT NULL,
  `max_appointments_per_day` int(11) DEFAULT 10,
  `user_type` varchar(10) NOT NULL DEFAULT 'doctor',
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `username`, `email`, `phone`, `password`, `verification_code`, `verified`, `gender`, `home_address`, `religion`, `identity_card`, `dateOfBirth`, `first_name`, `last_name`, `login_attempts`, `account_locked`, `lock_time`, `last_login`, `verification_code_expires`, `max_appointments_per_day`, `user_type`, `status`) VALUES
(72, 'Teddy00!', 'teddyboy2910@gmail.com', '5689784589', '$2y$10$BXdzgeddVyt7l9bsn4NJi.lorlcr.rqfK7zsjotf76wudOjXfOHCO', '663302b84765e', 1, 'male', '0', 'Christian', '001029070112', '2000-10-24', 'Bavan Raj', 'Thever', 0, 0, NULL, '2024-06-18 05:13:41', '2024-05-02 05:05:24', NULL, 'doctor', 'Active'),
(81, 'Dheshini11!', 'dheshini.sheesh@gmail.com', '0167766391', '$2y$10$SQPLKYBgP1D4DTIQ2qvmPuhnfjVAdcCIJu1UaEWc8BVNQh9hs/U.W', '666c38b804686', 1, 'male', '', '', '', NULL, '', '', 0, NULL, NULL, '2024-06-18 06:30:25', '2024-06-14 14:35:00', 10, 'doctor', 'Active'),
(86, 'Persheela22!', 'persha1473@gmail.com', '0103843391', '$2y$10$p8pGa.RAmC9cGDOGfRZsmON6Z6oFkIMt3AesW0mSCIxGZmHJb4FyS', 'dAfiFGw4', 1, 'male', '', '', '', NULL, '', '', 0, NULL, NULL, '2024-06-18 16:11:59', '2024-06-18 21:48:27', 10, 'doctor', 'On Hold');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `availability_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`availability_id`, `doctor_id`, `date`, `start_time`, `end_time`, `service_id`) VALUES
(210, 72, '2024-06-24', '12:54:00', '19:50:00', 1),
(211, 72, '2024-06-24', '12:54:00', '19:50:00', 2),
(212, 72, '2024-06-24', '12:54:00', '19:50:00', 3),
(213, 81, '2024-06-18', '09:50:00', '21:53:00', 1),
(214, 81, '2024-06-18', '09:50:00', '21:53:00', 2),
(215, 81, '2024-06-18', '09:50:00', '21:53:00', 3),
(216, 81, '2024-06-18', '09:50:00', '21:53:00', 4),
(217, 81, '2024-06-18', '09:50:00', '21:53:00', 7),
(218, 81, '2024-06-18', '09:50:00', '21:53:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability_services`
--

CREATE TABLE `doctor_availability_services` (
  `availability_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `type` enum('feedback','inquiry','complaint') NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `patient_id`, `type`, `message`, `created_at`, `status`) VALUES
(23, 144, 'complaint', 'okpl', '2024-06-18 08:57:55', 'replied'),
(24, 144, 'complaint', 'COULD NOT LOGIN', '2024-06-18 09:03:12', 'replied'),
(30, 144, 'complaint', 'QA', '2024-06-18 09:09:57', 'replied');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_replies`
--

CREATE TABLE `feedback_replies` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `reply_message` text NOT NULL,
  `replied_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_replies`
--

INSERT INTO `feedback_replies` (`id`, `feedback_id`, `reply_message`, `replied_at`) VALUES
(18, 24, 'TRY NOW TO LOGIN ', '2024-06-18 17:03:25'),
(19, 24, 'TRY NOW TO LOGIN ', '2024-06-18 17:04:39'),
(27, 24, 'DONE', '2024-06-18 17:09:44'),
(28, 30, 'DONE', '2024-06-18 17:10:04'),
(29, 30, 'done', '2024-06-18 17:12:58'),
(30, 30, 'done', '2024-06-18 17:13:17'),
(31, 23, 'done', '2024-06-18 17:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `medical_record_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `record_date` date NOT NULL,
  `symptoms` text DEFAULT NULL,
  `vital_signs` text DEFAULT NULL,
  `examination_findings` text DEFAULT NULL,
  `treatment_plan` text DEFAULT NULL,
  `follow_up_instructions` text DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`medical_record_id`, `patient_id`, `record_date`, `symptoms`, `vital_signs`, `examination_findings`, `treatment_plan`, `follow_up_instructions`, `notes`) VALUES
(26, 144, '2024-06-17', 'nothing', 'vomit', 'smotach atched', '', '', ''),
(27, 144, '2024-06-17', 'k', 'k', 'k', 'ok', 'kk', 'kk');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nric_passport` varchar(20) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `home_phone` varchar(255) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `verification_code` varchar(50) DEFAULT NULL,
  `verify_code` varchar(255) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `gender` varchar(10) NOT NULL,
  `verification_timestamp` datetime DEFAULT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `account_locked` tinyint(1) DEFAULT 0,
  `lock_time` datetime DEFAULT NULL,
  `verification_code_expires` datetime DEFAULT NULL,
  `emergency_number` varchar(255) NOT NULL,
  `added_by_admin` int(11) DEFAULT 0,
  `otp` varchar(10) DEFAULT NULL,
  `otp_expires` datetime DEFAULT NULL,
  `temporary_password` tinyint(1) DEFAULT 0,
  `temporary_password_timestamp` datetime DEFAULT NULL,
  `race` varchar(50) NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'patient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `username`, `email`, `nric_passport`, `phone`, `password`, `first_name`, `last_name`, `home_phone`, `office_phone`, `date_of_birth`, `verification_code`, `verify_code`, `verified`, `gender`, `verification_timestamp`, `login_attempts`, `last_login`, `account_locked`, `lock_time`, `verification_code_expires`, `emergency_number`, `added_by_admin`, `otp`, `otp_expires`, `temporary_password`, `temporary_password_timestamp`, `race`, `user_type`) VALUES
(62, 'Dheshini', 'radi@gmail.com', '012478965', '0167766391', '', 'Olimathi ', 'Supramaniam', NULL, NULL, '2024-05-15', NULL, '', 0, 'Male', NULL, 0, NULL, 0, NULL, NULL, '0167766391', 0, NULL, NULL, 0, NULL, 'Indian', 'patient'),
(144, 'Dheshini29!', 'ndheshini@gmail.com', NULL, '0167766391', '$2y$10$mV6sMSRyKKSjoKdO7QamMOWv3xxB1PaH8s118YnX2Vw8znxwqnH.S', NULL, NULL, NULL, NULL, NULL, '666c39ec5881e', '', 1, '', NULL, 0, '2024-06-18 17:01:46', 0, NULL, '2024-06-14 14:41:08', '', 0, NULL, NULL, 0, NULL, '', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `record_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `record_date` date NOT NULL,
  `medical_surgical_family_history` text DEFAULT NULL,
  `surgery_year` varchar(4) DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `past_medical_history` text DEFAULT NULL,
  `clinical_summary` text DEFAULT NULL,
  `allergies_specify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`record_id`, `patient_id`, `appointment_id`, `record_date`, `medical_surgical_family_history`, `surgery_year`, `allergies`, `past_medical_history`, `clinical_summary`, `allergies_specify`) VALUES
(18, 144, NULL, '0000-00-00', 'qqaa', '1934', 'Yes', 'SPINAL OPERATIONS', 'OPEARTES SPINAL L4,L5', 'Asthma');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `name`, `description`) VALUES
(1, 'ANC', 'Antenatal Care'),
(2, 'Minor Surgery', 'These procedures may include the removal of skin tags, moles, cysts, or other minor skin lesions.'),
(3, 'Medical Check Up', 'BMI\r\nBlood pressure\r\nUrine Test'),
(4, 'Dressing', 'Cleaning Dirt And Dressing For Feet For Diabetes'),
(7, 'General Consultation', 'General consultations with a physician for diagnosis and treatment of common illnesses, routine check-ups, health screenings, and preventive care'),
(8, 'Vaccinations and Immunizations', 'Flu shots, MMR (measles, mumps, rubella), tetanus, and travel-specific vaccines like hepatitis A and B, typhoid, and yellow fever.'),
(9, 'Women\'s Health Services', 'Pap smears, breast examinations, contraceptive advice, pregnancy tests, prenatal care, and menopause management.'),
(10, 'Pediatric Care', 'Children, and adolescents, including regular health check-ups, growth and development assessments, vaccinations, and treatment for common childhood illnesses and conditions.'),
(11, 'Chronic Disease Management', 'Diabetes, hypertension, asthma, and cardiovascular diseases.'),
(13, 'Mental Health Services', 'Counseling and therapy services for individuals dealing with mental health issues such as anxiety, depression, stress, and other emotional difficulties'),
(14, 'Dermatology Services', 'Acne, eczema, psoriasis, and skin infections.'),
(15, 'Nutrition and Weight Management', 'Diet plans, lifestyle advice, and support for achieving and maintaining a healthy weight.'),
(16, 'Travel Medicine', 'Pre-travel consultations, vaccinations, and health advice for individuals traveling to different parts of the world.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_code`
--
ALTER TABLE `access_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activation_tokens`
--
ALTER TABLE `activation_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `fk_doctor_availability_doctor_id` (`doctor_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `feedback_replies`
--
ALTER TABLE `feedback_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_replies_ibfk_1` (`feedback_id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`medical_record_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_2` (`username`,`email`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_code`
--
ALTER TABLE `access_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `activation_tokens`
--
ALTER TABLE `activation_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `feedback_replies`
--
ALTER TABLE `feedback_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `medical_record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activation_tokens`
--
ALTER TABLE `activation_tokens`
  ADD CONSTRAINT `activation_tokens_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`);

--
-- Constraints for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD CONSTRAINT `fk_doctor_availability_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);

--
-- Constraints for table `feedback_replies`
--
ALTER TABLE `feedback_replies`
  ADD CONSTRAINT `feedback_replies_ibfk_1` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`) ON DELETE CASCADE;

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`);

--
-- Constraints for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD CONSTRAINT `patient_records_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_records_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
