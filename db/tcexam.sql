-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 02:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tce_answers`
--

CREATE TABLE `tce_answers` (
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `answer_question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answer_explanation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer_isright` tinyint(1) NOT NULL DEFAULT 0,
  `answer_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `answer_position` bigint(20) UNSIGNED DEFAULT NULL,
  `answer_keyboard_key` smallint(10) UNSIGNED DEFAULT NULL,
  `answer_weight` smallint(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_answers`
--

INSERT INTO `tce_answers` (`answer_id`, `answer_question_id`, `answer_description`, `answer_explanation`, `answer_isright`, `answer_enabled`, `answer_position`, `answer_keyboard_key`, `answer_weight`) VALUES
(1, 1, 'Network', NULL, 0, 1, 1, NULL, 0),
(2, 1, 'Framework', NULL, 1, 1, 2, NULL, 100),
(3, 1, 'Database', NULL, 0, 1, 3, NULL, 0),
(4, 1, 'Hosting', NULL, 0, 1, 4, NULL, 0),
(5, 1, 'Browser ', NULL, 0, 1, 5, NULL, 0),
(6, 2, 'Codeigniter', NULL, 0, 1, 1, NULL, 0),
(7, 2, 'Laravel', NULL, 0, 1, 2, NULL, 0),
(8, 2, 'Yii', NULL, 0, 1, 3, NULL, 0),
(9, 2, 'Symphony', NULL, 0, 1, 4, NULL, 0),
(10, 2, 'Bootstrap ', NULL, 1, 1, 5, NULL, 100),
(11, 3, '(1)(2) dan (3)', NULL, 0, 1, 1, NULL, 0),
(12, 3, '(1)(3) dan (5)', NULL, 0, 1, 2, NULL, 0),
(13, 3, '(2)(3) dan (4)', NULL, 0, 1, 3, NULL, 0),
(14, 3, '(2)(3) dan (5)', NULL, 1, 1, 4, NULL, 100),
(15, 3, '(3)(4) dan (5)', NULL, 0, 1, 5, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tce_modules`
--

CREATE TABLE `tce_modules` (
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `module_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_modules`
--

INSERT INTO `tce_modules` (`module_id`, `module_name`, `module_enabled`, `module_user_id`) VALUES
(1, 'default', 1, 1),
(2, 'Matematika', 1, 2),
(3, 'PKn', 1, 2),
(4, 'PAI', 1, 2),
(5, 'PWPB', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tce_questions`
--

CREATE TABLE `tce_questions` (
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `question_subject_id` bigint(20) UNSIGNED NOT NULL,
  `question_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `question_explanation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_type` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `question_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `question_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `question_position` bigint(20) UNSIGNED DEFAULT NULL,
  `question_timer` smallint(10) DEFAULT NULL,
  `question_fullscreen` tinyint(1) NOT NULL DEFAULT 0,
  `question_inline_answers` tinyint(1) NOT NULL DEFAULT 0,
  `question_auto_next` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_questions`
--

INSERT INTO `tce_questions` (`question_id`, `question_subject_id`, `question_description`, `question_explanation`, `question_type`, `question_difficulty`, `question_enabled`, `question_position`, `question_timer`, `question_fullscreen`, `question_inline_answers`, `question_auto_next`) VALUES
(1, 2, 'Sebuah software yang memudahkan programmer untuk membuat aplikasi yang di dalamnya terdapat berbagai plugin, fungsi, dan kumpulan-kumpulan instruksi yang dapat digunakan untuk membangun sebuah sistem adalah…&nbsp;', NULL, 1, 1, 1, 1, 0, 0, 0, 0),
(2, 2, 'Berikut merupakan framework untuk bahasa pemrograman PHP, kecuali..&nbsp;', NULL, 1, 1, 1, 2, 0, 0, 0, 0),
(3, 2, '(1) Laravel\n(2) Materialize\n(3) Tailwind\n(4) Codeigniter\n(5) Bootstrap\nFramework untuk membangun tampilan antarmuka web secara responsif ditunjukan oleh nomor…&nbsp;', NULL, 1, 1, 1, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tce_sessions`
--

CREATE TABLE `tce_sessions` (
  `cpsession_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `cpsession_expiry` datetime NOT NULL,
  `cpsession_data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_sessions`
--

INSERT INTO `tce_sessions` (`cpsession_id`, `cpsession_expiry`, `cpsession_data`) VALUES
('1077454e18daa8eea6bef8630eb1d318', '2023-03-28 11:32:58', 'session_hash|s:32:\"ed3a5e55c06121f941c6d52defb8c4d0\";session_user_id|s:1:\"3\";session_user_name|s:7:\"arindwi\";session_user_ip|s:39:\"0000:0000:0000:0000:0000:ffff:7f00:0001\";session_user_level|s:1:\"1\";session_user_firstname|s:8:\"Dwi+Arin\";session_user_lastname|s:9:\"Fajriyani\";session_test_login|s:60:\"$2y$10$mzZyIomn/PZH3X7vsn0mq.Pl7ZqIKX./dNoJ2HIaB5xlqC37E8kPe\";session_last_visit|i:1679974353;logout|b:1;first_question|s:1:\"4\";'),
('b703510038eac2db9b3b83c2f408c981', '2023-03-28 11:29:56', 'session_hash|s:32:\"3088bc9a53b6a1bc0086f0d1291371da\";session_user_id|s:1:\"2\";session_user_name|s:5:\"admin\";session_user_ip|s:39:\"0000:0000:0000:0000:0000:ffff:7f00:0001\";session_user_level|s:2:\"10\";session_user_firstname|s:0:\"\";session_user_lastname|s:0:\"\";session_test_login|s:0:\"\";session_last_visit|i:1679974180;');

-- --------------------------------------------------------

--
-- Table structure for table `tce_sslcerts`
--

CREATE TABLE `tce_sslcerts` (
  `ssl_id` bigint(20) UNSIGNED NOT NULL,
  `ssl_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssl_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ssl_end_date` datetime NOT NULL,
  `ssl_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `ssl_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tce_subjects`
--

CREATE TABLE `tce_subjects` (
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_module_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `subject_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_subjects`
--

INSERT INTO `tce_subjects` (`subject_id`, `subject_module_id`, `subject_name`, `subject_description`, `subject_enabled`, `subject_user_id`) VALUES
(2, 5, 'Framework', 'Materi tentang framework', 1, 2),
(3, 5, 'MVC', 'Model View Controller', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tce_testgroups`
--

CREATE TABLE `tce_testgroups` (
  `tstgrp_test_id` bigint(20) UNSIGNED NOT NULL,
  `tstgrp_group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_testgroups`
--

INSERT INTO `tce_testgroups` (`tstgrp_test_id`, `tstgrp_group_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tce_tests`
--

CREATE TABLE `tce_tests` (
  `test_id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_description` text COLLATE utf8_unicode_ci NOT NULL,
  `test_begin_time` datetime DEFAULT NULL,
  `test_end_time` datetime DEFAULT NULL,
  `test_duration_time` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `test_ip_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `test_results_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `test_report_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `test_score_right` decimal(10,3) DEFAULT 1.000,
  `test_score_wrong` decimal(10,3) DEFAULT 0.000,
  `test_score_unanswered` decimal(10,3) DEFAULT 0.000,
  `test_max_score` decimal(10,3) NOT NULL DEFAULT 0.000,
  `test_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `test_score_threshold` decimal(10,3) DEFAULT 0.000,
  `test_random_questions_select` tinyint(1) NOT NULL DEFAULT 1,
  `test_random_questions_order` tinyint(1) NOT NULL DEFAULT 1,
  `test_questions_order_mode` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `test_random_answers_select` tinyint(1) NOT NULL DEFAULT 1,
  `test_random_answers_order` tinyint(1) NOT NULL DEFAULT 1,
  `test_answers_order_mode` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `test_comment_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `test_menu_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `test_noanswer_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `test_mcma_radio` tinyint(1) NOT NULL DEFAULT 1,
  `test_repeatable` tinyint(1) NOT NULL DEFAULT 0,
  `test_mcma_partial_score` tinyint(1) NOT NULL DEFAULT 1,
  `test_logout_on_timeout` tinyint(1) NOT NULL DEFAULT 0,
  `test_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_tests`
--

INSERT INTO `tce_tests` (`test_id`, `test_name`, `test_description`, `test_begin_time`, `test_end_time`, `test_duration_time`, `test_ip_range`, `test_results_to_users`, `test_report_to_users`, `test_score_right`, `test_score_wrong`, `test_score_unanswered`, `test_max_score`, `test_user_id`, `test_score_threshold`, `test_random_questions_select`, `test_random_questions_order`, `test_questions_order_mode`, `test_random_answers_select`, `test_random_answers_order`, `test_answers_order_mode`, `test_comment_enabled`, `test_menu_enabled`, `test_noanswer_enabled`, `test_mcma_radio`, `test_repeatable`, `test_mcma_partial_score`, `test_logout_on_timeout`, `test_password`) VALUES
(1, 'Simulasi Test', 'Hanya test percobaan', '2023-03-28 08:58:33', '2023-03-28 09:59:33', 60, '*.*.*.*', 0, 0, '1.000', '0.000', '0.000', '3.000', 2, '0.000', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, '$2y$10$hnU33JeMqqKYzuX9tLesJON2s71sfez2fhRhwvd/4BISWVdQ8EaU.'),
(2, 'Simulasi II', 'Percobaan kedua', '2023-03-28 10:25:04', '2023-03-28 11:25:04', 60, '*.*.*.*', 0, 0, '1.000', '0.000', '0.000', '3.000', 2, '0.000', 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, '$2y$10$v6J.tOXgRKsu1a.DH1pDc.KqGgeBnm82dkF4R0yAxjx.N0xr3MLFe');

-- --------------------------------------------------------

--
-- Table structure for table `tce_testsslcerts`
--

CREATE TABLE `tce_testsslcerts` (
  `tstssl_test_id` bigint(20) UNSIGNED NOT NULL,
  `tstssl_ssl_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tce_tests_logs`
--

CREATE TABLE `tce_tests_logs` (
  `testlog_id` bigint(20) UNSIGNED NOT NULL,
  `testlog_testuser_id` bigint(20) UNSIGNED NOT NULL,
  `testlog_user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testlog_question_id` bigint(20) UNSIGNED NOT NULL,
  `testlog_answer_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `testlog_score` decimal(10,3) DEFAULT NULL,
  `testlog_creation_time` datetime DEFAULT NULL,
  `testlog_display_time` datetime DEFAULT NULL,
  `testlog_change_time` datetime DEFAULT NULL,
  `testlog_reaction_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `testlog_order` smallint(6) NOT NULL DEFAULT 1,
  `testlog_num_answers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `testlog_comment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_tests_logs`
--

INSERT INTO `tce_tests_logs` (`testlog_id`, `testlog_testuser_id`, `testlog_user_ip`, `testlog_question_id`, `testlog_answer_text`, `testlog_score`, `testlog_creation_time`, `testlog_display_time`, `testlog_change_time`, `testlog_reaction_time`, `testlog_order`, `testlog_num_answers`, `testlog_comment`) VALUES
(1, 1, '0000:0000:0000:0000:0000:ffff:7f00:0001', 2, NULL, '0.000', '2023-03-28 09:00:27', '2023-03-28 09:00:27', '2023-03-28 09:01:19', 14728, 1, 5, NULL),
(2, 1, '0000:0000:0000:0000:0000:ffff:7f00:0001', 3, NULL, '1.000', '2023-03-28 09:00:27', '2023-03-28 09:01:05', '2023-03-28 09:01:40', 6515, 2, 5, NULL),
(3, 1, '0000:0000:0000:0000:0000:ffff:7f00:0001', 1, NULL, '0.000', '2023-03-28 09:00:27', '2023-03-28 09:00:47', '2023-03-28 09:01:44', 16461, 3, 5, NULL),
(4, 2, '0000:0000:0000:0000:0000:ffff:7f00:0001', 1, NULL, '0.000', '2023-03-28 10:26:16', '2023-03-28 10:26:16', '2023-03-28 10:27:38', 5523, 1, 5, NULL),
(5, 2, NULL, 2, NULL, '0.000', '2023-03-28 10:26:16', '2023-03-28 10:27:19', NULL, 0, 2, 5, NULL),
(6, 2, NULL, 3, NULL, '0.000', '2023-03-28 10:26:16', '2023-03-28 10:27:22', NULL, 0, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tce_tests_logs_answers`
--

CREATE TABLE `tce_tests_logs_answers` (
  `logansw_testlog_id` bigint(20) UNSIGNED NOT NULL,
  `logansw_answer_id` bigint(20) UNSIGNED NOT NULL,
  `logansw_selected` smallint(6) NOT NULL DEFAULT -1,
  `logansw_order` smallint(6) NOT NULL DEFAULT 1,
  `logansw_position` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_tests_logs_answers`
--

INSERT INTO `tce_tests_logs_answers` (`logansw_testlog_id`, `logansw_answer_id`, `logansw_selected`, `logansw_order`, `logansw_position`) VALUES
(1, 6, 0, 1, NULL),
(1, 7, 1, 2, NULL),
(1, 8, 0, 5, NULL),
(1, 9, 0, 3, NULL),
(1, 10, 0, 4, NULL),
(2, 11, 0, 4, NULL),
(2, 12, 0, 2, NULL),
(2, 13, 0, 5, NULL),
(2, 14, 1, 3, NULL),
(2, 15, 0, 1, NULL),
(3, 1, 0, 4, NULL),
(3, 2, 0, 3, NULL),
(3, 3, 1, 1, NULL),
(3, 4, 0, 5, NULL),
(3, 5, 0, 2, NULL),
(4, 1, 0, 4, NULL),
(4, 2, 0, 5, NULL),
(4, 3, 0, 2, NULL),
(4, 4, 1, 1, NULL),
(4, 5, 0, 3, NULL),
(5, 6, -1, 3, NULL),
(5, 7, -1, 4, NULL),
(5, 8, -1, 1, NULL),
(5, 9, -1, 2, NULL),
(5, 10, -1, 5, NULL),
(6, 11, -1, 5, NULL),
(6, 12, -1, 2, NULL),
(6, 13, -1, 1, NULL),
(6, 14, -1, 3, NULL),
(6, 15, -1, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tce_tests_users`
--

CREATE TABLE `tce_tests_users` (
  `testuser_id` bigint(20) UNSIGNED NOT NULL,
  `testuser_test_id` bigint(20) UNSIGNED NOT NULL,
  `testuser_user_id` bigint(20) UNSIGNED NOT NULL,
  `testuser_status` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `testuser_creation_time` datetime NOT NULL,
  `testuser_comment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_tests_users`
--

INSERT INTO `tce_tests_users` (`testuser_id`, `testuser_test_id`, `testuser_user_id`, `testuser_status`, `testuser_creation_time`, `testuser_comment`) VALUES
(1, 1, 3, 4, '2023-03-28 09:00:27', NULL),
(2, 2, 3, 2, '2023-03-28 10:26:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tce_testuser_stat`
--

CREATE TABLE `tce_testuser_stat` (
  `tus_id` bigint(20) UNSIGNED NOT NULL,
  `tus_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_testuser_stat`
--

INSERT INTO `tce_testuser_stat` (`tus_id`, `tus_date`) VALUES
(1, '2023-03-28 09:00:27'),
(2, '2023-03-28 10:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `tce_test_subjects`
--

CREATE TABLE `tce_test_subjects` (
  `subjset_tsubset_id` bigint(20) UNSIGNED NOT NULL,
  `subjset_subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_test_subjects`
--

INSERT INTO `tce_test_subjects` (`subjset_tsubset_id`, `subjset_subject_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tce_test_subject_set`
--

CREATE TABLE `tce_test_subject_set` (
  `tsubset_id` bigint(20) UNSIGNED NOT NULL,
  `tsubset_test_id` bigint(20) UNSIGNED NOT NULL,
  `tsubset_type` smallint(6) NOT NULL DEFAULT 1,
  `tsubset_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `tsubset_quantity` smallint(6) NOT NULL DEFAULT 1,
  `tsubset_answers` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_test_subject_set`
--

INSERT INTO `tce_test_subject_set` (`tsubset_id`, `tsubset_test_id`, `tsubset_type`, `tsubset_difficulty`, `tsubset_quantity`, `tsubset_answers`) VALUES
(1, 1, 1, 1, 3, 5),
(2, 2, 1, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tce_users`
--

CREATE TABLE `tce_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_regdate` datetime NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `user_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_regnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ssn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_verifycode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_otpkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_users`
--

INSERT INTO `tce_users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_lastname`, `user_birthdate`, `user_birthplace`, `user_regnumber`, `user_ssn`, `user_level`, `user_verifycode`, `user_otpkey`) VALUES
(1, 'anonymous', '$2y$10$Uj0i8eUQibn5S7Q2cl8k8ecAzwrK333uG8PWYe9iqz2kig9Ql36g6', NULL, '2001-01-01 01:01:01', '0.0.0.0', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 'admin', '$2y$10$f4hALLkUK06EgTQ8b1OWTu4JFvRTXRc0cxqSz5sKaLKhCNGeLemTO', NULL, '2001-01-01 01:01:01', '127.0.0.0', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(3, 'arindwi', '$2y$10$U6xlAWVRd8LtWHWrXdn2num5ysjKmnSVmq77Jv5KKb6GP1HuV64wy', 'dwiarinf@gmail.com', '2023-03-23 20:14:18', '0000:0000:0000:0000:0000:ffff:7f00:0001', 'Dwi Arin', 'Fajriyani', NULL, 'Sumedang', NULL, NULL, 1, NULL, '45FIMHYRZTM4FTTB');

-- --------------------------------------------------------

--
-- Table structure for table `tce_user_groups`
--

CREATE TABLE `tce_user_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_user_groups`
--

INSERT INTO `tce_user_groups` (`group_id`, `group_name`) VALUES
(1, 'default'),
(2, 'XII RPL 3');

-- --------------------------------------------------------

--
-- Table structure for table `tce_usrgroups`
--

CREATE TABLE `tce_usrgroups` (
  `usrgrp_user_id` bigint(20) UNSIGNED NOT NULL,
  `usrgrp_group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tce_usrgroups`
--

INSERT INTO `tce_usrgroups` (`usrgrp_user_id`, `usrgrp_group_id`) VALUES
(2, 1),
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tce_answers`
--
ALTER TABLE `tce_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `p_answer_question_id` (`answer_question_id`);

--
-- Indexes for table `tce_modules`
--
ALTER TABLE `tce_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `ak_module_name` (`module_name`),
  ADD KEY `p_module_user_id` (`module_user_id`);

--
-- Indexes for table `tce_questions`
--
ALTER TABLE `tce_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `p_question_subject_id` (`question_subject_id`);

--
-- Indexes for table `tce_sessions`
--
ALTER TABLE `tce_sessions`
  ADD PRIMARY KEY (`cpsession_id`);

--
-- Indexes for table `tce_sslcerts`
--
ALTER TABLE `tce_sslcerts`
  ADD PRIMARY KEY (`ssl_id`);

--
-- Indexes for table `tce_subjects`
--
ALTER TABLE `tce_subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `ak_subject_name` (`subject_module_id`,`subject_name`),
  ADD KEY `p_subject_user_id` (`subject_user_id`);

--
-- Indexes for table `tce_testgroups`
--
ALTER TABLE `tce_testgroups`
  ADD PRIMARY KEY (`tstgrp_test_id`,`tstgrp_group_id`),
  ADD KEY `p_tstgrp_test_id` (`tstgrp_test_id`),
  ADD KEY `p_tstgrp_group_id` (`tstgrp_group_id`);

--
-- Indexes for table `tce_tests`
--
ALTER TABLE `tce_tests`
  ADD PRIMARY KEY (`test_id`),
  ADD UNIQUE KEY `ak_test_name` (`test_name`),
  ADD KEY `p_test_user_id` (`test_user_id`);

--
-- Indexes for table `tce_testsslcerts`
--
ALTER TABLE `tce_testsslcerts`
  ADD PRIMARY KEY (`tstssl_test_id`,`tstssl_ssl_id`),
  ADD KEY `p_tstssl_test_id` (`tstssl_test_id`),
  ADD KEY `p_tstssl_ssl_id` (`tstssl_ssl_id`);

--
-- Indexes for table `tce_tests_logs`
--
ALTER TABLE `tce_tests_logs`
  ADD PRIMARY KEY (`testlog_id`),
  ADD UNIQUE KEY `ak_testuser_question` (`testlog_testuser_id`,`testlog_question_id`),
  ADD KEY `p_testlog_question_id` (`testlog_question_id`),
  ADD KEY `p_testlog_testuser_id` (`testlog_testuser_id`);

--
-- Indexes for table `tce_tests_logs_answers`
--
ALTER TABLE `tce_tests_logs_answers`
  ADD PRIMARY KEY (`logansw_testlog_id`,`logansw_answer_id`),
  ADD KEY `p_logansw_answer_id` (`logansw_answer_id`),
  ADD KEY `p_logansw_testlog_id` (`logansw_testlog_id`);

--
-- Indexes for table `tce_tests_users`
--
ALTER TABLE `tce_tests_users`
  ADD PRIMARY KEY (`testuser_id`),
  ADD UNIQUE KEY `ak_testuser` (`testuser_test_id`,`testuser_user_id`,`testuser_status`),
  ADD KEY `p_testuser_user_id` (`testuser_user_id`),
  ADD KEY `p_testuser_test_id` (`testuser_test_id`);

--
-- Indexes for table `tce_testuser_stat`
--
ALTER TABLE `tce_testuser_stat`
  ADD PRIMARY KEY (`tus_id`);

--
-- Indexes for table `tce_test_subjects`
--
ALTER TABLE `tce_test_subjects`
  ADD PRIMARY KEY (`subjset_tsubset_id`,`subjset_subject_id`),
  ADD KEY `p_subjset_subject_id` (`subjset_subject_id`),
  ADD KEY `p_subjset_tsubset_id` (`subjset_tsubset_id`);

--
-- Indexes for table `tce_test_subject_set`
--
ALTER TABLE `tce_test_subject_set`
  ADD PRIMARY KEY (`tsubset_id`),
  ADD KEY `p_tsubset_test_id` (`tsubset_test_id`);

--
-- Indexes for table `tce_users`
--
ALTER TABLE `tce_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ak_user_name` (`user_name`),
  ADD UNIQUE KEY `user_verifycode` (`user_verifycode`),
  ADD UNIQUE KEY `ak_user_regnumber` (`user_regnumber`),
  ADD UNIQUE KEY `ak_user_ssn` (`user_ssn`);

--
-- Indexes for table `tce_user_groups`
--
ALTER TABLE `tce_user_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `tce_usrgroups`
--
ALTER TABLE `tce_usrgroups`
  ADD PRIMARY KEY (`usrgrp_user_id`,`usrgrp_group_id`),
  ADD KEY `p_usrgrp_user_id` (`usrgrp_user_id`),
  ADD KEY `p_usrgrp_group_id` (`usrgrp_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tce_answers`
--
ALTER TABLE `tce_answers`
  MODIFY `answer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tce_modules`
--
ALTER TABLE `tce_modules`
  MODIFY `module_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tce_questions`
--
ALTER TABLE `tce_questions`
  MODIFY `question_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tce_sslcerts`
--
ALTER TABLE `tce_sslcerts`
  MODIFY `ssl_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tce_subjects`
--
ALTER TABLE `tce_subjects`
  MODIFY `subject_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tce_tests`
--
ALTER TABLE `tce_tests`
  MODIFY `test_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tce_tests_logs`
--
ALTER TABLE `tce_tests_logs`
  MODIFY `testlog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tce_tests_users`
--
ALTER TABLE `tce_tests_users`
  MODIFY `testuser_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tce_testuser_stat`
--
ALTER TABLE `tce_testuser_stat`
  MODIFY `tus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tce_test_subject_set`
--
ALTER TABLE `tce_test_subject_set`
  MODIFY `tsubset_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tce_users`
--
ALTER TABLE `tce_users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tce_user_groups`
--
ALTER TABLE `tce_user_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tce_answers`
--
ALTER TABLE `tce_answers`
  ADD CONSTRAINT `tce_answers_ibfk_1` FOREIGN KEY (`answer_question_id`) REFERENCES `tce_questions` (`question_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_modules`
--
ALTER TABLE `tce_modules`
  ADD CONSTRAINT `tce_modules_ibfk_1` FOREIGN KEY (`module_user_id`) REFERENCES `tce_users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_questions`
--
ALTER TABLE `tce_questions`
  ADD CONSTRAINT `tce_questions_ibfk_1` FOREIGN KEY (`question_subject_id`) REFERENCES `tce_subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_subjects`
--
ALTER TABLE `tce_subjects`
  ADD CONSTRAINT `tce_subjects_ibfk_1` FOREIGN KEY (`subject_user_id`) REFERENCES `tce_users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_subjects_ibfk_2` FOREIGN KEY (`subject_module_id`) REFERENCES `tce_modules` (`module_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_testgroups`
--
ALTER TABLE `tce_testgroups`
  ADD CONSTRAINT `tce_testgroups_ibfk_1` FOREIGN KEY (`tstgrp_test_id`) REFERENCES `tce_tests` (`test_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_testgroups_ibfk_2` FOREIGN KEY (`tstgrp_group_id`) REFERENCES `tce_user_groups` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_tests`
--
ALTER TABLE `tce_tests`
  ADD CONSTRAINT `tce_tests_ibfk_1` FOREIGN KEY (`test_user_id`) REFERENCES `tce_users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_testsslcerts`
--
ALTER TABLE `tce_testsslcerts`
  ADD CONSTRAINT `tce_testsslcerts_ibfk_1` FOREIGN KEY (`tstssl_test_id`) REFERENCES `tce_tests` (`test_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_testsslcerts_ibfk_2` FOREIGN KEY (`tstssl_ssl_id`) REFERENCES `tce_sslcerts` (`ssl_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_tests_logs`
--
ALTER TABLE `tce_tests_logs`
  ADD CONSTRAINT `tce_tests_logs_ibfk_1` FOREIGN KEY (`testlog_question_id`) REFERENCES `tce_questions` (`question_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_tests_logs_ibfk_2` FOREIGN KEY (`testlog_testuser_id`) REFERENCES `tce_tests_users` (`testuser_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_tests_logs_answers`
--
ALTER TABLE `tce_tests_logs_answers`
  ADD CONSTRAINT `tce_tests_logs_answers_ibfk_1` FOREIGN KEY (`logansw_answer_id`) REFERENCES `tce_answers` (`answer_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_tests_logs_answers_ibfk_2` FOREIGN KEY (`logansw_testlog_id`) REFERENCES `tce_tests_logs` (`testlog_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_tests_users`
--
ALTER TABLE `tce_tests_users`
  ADD CONSTRAINT `tce_tests_users_ibfk_1` FOREIGN KEY (`testuser_user_id`) REFERENCES `tce_users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_tests_users_ibfk_2` FOREIGN KEY (`testuser_test_id`) REFERENCES `tce_tests` (`test_id`) ON DELETE CASCADE;

--
-- Constraints for table `tce_test_subjects`
--
ALTER TABLE `tce_test_subjects`
  ADD CONSTRAINT `tce_test_subjects_ibfk_1` FOREIGN KEY (`subjset_subject_id`) REFERENCES `tce_subjects` (`subject_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_test_subjects_ibfk_2` FOREIGN KEY (`subjset_tsubset_id`) REFERENCES `tce_test_subject_set` (`tsubset_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_test_subject_set`
--
ALTER TABLE `tce_test_subject_set`
  ADD CONSTRAINT `tce_test_subject_set_ibfk_1` FOREIGN KEY (`tsubset_test_id`) REFERENCES `tce_tests` (`test_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tce_usrgroups`
--
ALTER TABLE `tce_usrgroups`
  ADD CONSTRAINT `tce_usrgroups_ibfk_1` FOREIGN KEY (`usrgrp_user_id`) REFERENCES `tce_users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tce_usrgroups_ibfk_2` FOREIGN KEY (`usrgrp_group_id`) REFERENCES `tce_user_groups` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
