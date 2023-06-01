-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2023 at 08:28 PM
-- Server version: 10.2.44-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gologonoworg_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT 0,
  `changes` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT 0,
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2021-10-06 21:16:26', 4, 'created', 'task', 'test', 1, NULL, 'project', 1, '', 0, 1),
(2, '2021-10-06 21:31:42', 1, 'created', 'task', 'Create PSD', 2, NULL, 'project', 1, '', 0, 1),
(3, '2021-10-06 21:32:51', 1, 'updated', 'task', 'Create PSD', 2, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 1, '', 0, 1),
(4, '2022-05-30 17:56:56', 1, 'created', 'task', 'Landing Page', 3, NULL, 'project', 3, '', 0, 1),
(5, '2022-05-30 17:56:59', 1, 'updated', 'task', 'Landing Page', 3, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 1),
(6, '2022-05-30 17:57:00', 1, 'updated', 'task', 'Landing Page', 3, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 1),
(7, '2022-05-30 17:57:01', 1, 'updated', 'task', 'Landing Page', 3, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 3, '', 0, 1),
(8, '2022-05-30 17:57:13', 1, 'updated', 'task', 'Landing Page', 3, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 3, '', 0, 1),
(9, '2022-05-30 17:57:25', 1, 'created', 'task_comment', 'asbdkjabsd', 1, NULL, 'project', 3, 'task', 3, 1),
(10, '2022-05-30 17:57:44', 1, 'updated', 'task', 'Landing Page', 3, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 3, '', 0, 1),
(11, '2022-05-30 17:58:43', 1, 'created', 'task_comment', 'Jdjfndf', 2, NULL, 'project', 3, 'task', 3, 1),
(12, '2022-05-30 19:07:30', 1, 'created', 'task', 'Landing Page', 4, NULL, 'project', 4, '', 0, 1),
(13, '2022-05-30 19:07:51', 1, 'created', 'task', 'Content', 5, NULL, 'project', 4, '', 0, 1),
(14, '2022-05-30 19:08:18', 1, 'updated', 'task', 'Landing Page', 4, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"5\";s:2:\"to\";s:1:\"6\";}}', 'project', 4, '', 0, 1),
(15, '2022-05-30 21:26:35', 7, 'created', 'task', 'Test', 6, NULL, 'project', 5, '', 0, 1),
(16, '2022-05-30 21:33:45', 7, 'updated', 'task', 'Test', 6, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"5\";s:2:\"to\";s:1:\"2\";}}', 'project', 5, '', 0, 1),
(17, '2022-07-13 15:50:56', 1, 'created', 'task', 'UI UX Design', 7, NULL, 'project', 6, '', 0, 1),
(18, '2022-07-13 15:51:23', 1, 'updated', 'task', 'UI UX Design', 7, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 6, '', 0, 1),
(19, '2022-07-13 15:51:24', 1, 'updated', 'task', 'UI UX Design', 7, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"7\";s:2:\"to\";s:1:\"8\";}}', 'project', 6, '', 0, 1),
(20, '2022-07-13 18:54:21', 1, 'created', 'task', 'Product Uploading', 8, NULL, 'project', 7, '', 0, 1),
(21, '2022-07-13 18:54:50', 1, 'created', 'task_comment', 'Product Images required', 3, NULL, 'project', 7, 'task', 8, 1),
(22, '2022-07-13 18:55:02', 1, 'updated', 'task', 'Product Uploading', 8, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"11\";s:2:\"to\";s:2:\"14\";}}', 'project', 7, '', 0, 1),
(23, '2022-07-13 18:55:49', 1, 'created', 'task_comment', 'P2', 4, NULL, 'project', 7, 'task', 8, 1),
(24, '2022-07-13 18:56:09', 1, 'updated', 'task', 'Product Uploading', 8, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"11\";}}', 'project', 7, '', 0, 1),
(25, '2022-07-13 22:52:26', 17, 'created', 'task', 'Test', 9, NULL, 'project', 8, '', 0, 1),
(26, '2022-11-30 18:47:23', 1, 'created', 'task', 'UI UX', 10, NULL, 'project', 30, '', 0, 0),
(27, '2022-11-30 18:47:37', 1, 'created', 'task_comment', 'fcsdfsdf', 5, NULL, 'project', 30, 'task', 10, 0),
(28, '2022-11-30 20:23:55', 1, 'created', 'task', 'UI UX Design', 11, NULL, 'project', 36, '', 0, 0),
(29, '2022-11-30 20:34:06', 1, 'updated', 'task', 'UI UX Design', 11, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(30, '2022-11-30 20:34:55', 1, 'updated', 'task', 'UI UX Design', 11, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 36, '', 0, 0),
(31, '2022-11-30 21:27:42', 29, 'updated', 'task', 'UI UX Design', 11, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2022-12-05\";s:2:\"to\";s:10:\"2022-12-02\";}}', 'project', 36, '', 0, 0),
(32, '2022-11-30 21:31:41', 29, 'created', 'task_comment', 'Discussed screens.', 6, NULL, 'project', 36, 'task', 11, 0),
(33, '2022-11-30 21:32:55', 29, 'created', 'task_comment', 'Splash screen will also be there @[Yousuf UI UX :41] ', 7, NULL, 'project', 36, 'task', 11, 0),
(34, '2022-12-01 15:09:01', 29, 'created', 'project_comment', 'Application and admin panel is completed from our end, now it is stopped from the client side due to the issues of Radio Platform that client is using.', 8, NULL, 'project', 24, '', 0, 1),
(35, '2022-12-01 16:43:39', 1, 'created', 'task', 'UI UX', 12, NULL, 'project', 35, '', 0, 1),
(36, '2022-12-01 16:44:40', 1, 'updated', 'task', 'UI UX', 12, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"46\";}}', 'project', 35, '', 0, 1),
(37, '2022-12-01 16:56:52', 29, 'created', 'task', 'Notifications', 13, NULL, 'project', 19, '', 0, 0),
(38, '2022-12-01 16:59:15', 29, 'created', 'task', 'UI Minor Changes', 14, NULL, 'project', 33, '', 0, 0),
(39, '2022-12-01 16:59:28', 29, 'updated', 'task', 'UI Minor Changes', 14, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"29\";s:2:\"to\";s:2:\"47\";}}', 'project', 33, '', 0, 0),
(40, '2022-12-01 16:59:52', 29, 'created', 'task', 'Vehicle changes', 15, NULL, 'project', 33, '', 0, 0),
(41, '2022-12-01 17:00:31', 29, 'created', 'task', 'Pricing changes', 16, NULL, 'project', 33, '', 0, 0),
(42, '2022-12-01 17:01:02', 29, 'created', 'task', 'changes in formula for price calculation', 17, NULL, 'project', 33, '', 0, 0),
(43, '2022-12-01 17:15:15', 29, 'created', 'task', 'Currency changes', 18, NULL, 'project', 33, '', 0, 0),
(44, '2022-12-01 17:30:36', 29, 'created', 'project_comment', 'Pricing formula needs to be confirmed from client side, already conveyed query to Azfi', 9, NULL, 'project', 33, '', 0, 0),
(45, '2022-12-01 17:31:05', 29, 'created', 'project_comment', 'AWS is required', 10, NULL, 'project', 33, '', 0, 0),
(46, '2022-12-01 17:43:43', 29, 'created', 'task', 'Individual Session Scheduling', 19, NULL, 'project', 37, '', 0, 0),
(47, '2022-12-01 19:30:13', 1, 'created', 'task', 'UI UX', 20, NULL, 'project', 32, '', 0, 0),
(48, '2022-12-01 19:30:22', 1, 'deleted', 'task', 'UI UX', 20, NULL, 'project', 32, NULL, NULL, 0),
(49, '2022-12-01 19:31:15', 1, 'created', 'task', 'Alpha', 21, NULL, 'project', 32, '', 0, 0),
(50, '2022-12-01 19:31:45', 1, 'created', 'task', 'UI UX', 22, NULL, 'project', 32, '', 0, 0),
(51, '2022-12-02 14:23:05', 1, 'created', 'task', 'UI UX', 23, NULL, 'project', 38, '', 0, 0),
(52, '2022-12-02 14:23:22', 1, 'created', 'task', 'BACKEND APIS', 24, NULL, 'project', 38, '', 0, 0),
(53, '2022-12-02 14:24:26', 1, 'updated', 'task', 'UI UX', 10, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"46\";}}', 'project', 30, '', 0, 0),
(54, '2022-12-02 14:24:28', 1, 'updated', 'task', 'UI UX', 10, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"46\";s:2:\"to\";s:1:\"3\";}}', 'project', 30, '', 0, 0),
(55, '2022-12-02 14:25:17', 1, 'updated', 'task', 'UI UX', 10, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"41\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}', 'project', 30, '', 0, 0),
(56, '2022-12-02 14:25:28', 1, 'created', 'task', 'Alpha', 25, NULL, 'project', 30, '', 0, 0),
(57, '2022-12-02 14:25:44', 1, 'created', 'task', 'BACKEND APIS', 26, NULL, 'project', 30, '', 0, 0),
(58, '2022-12-05 23:14:55', 29, 'updated', 'task', 'BACKEND APIS', 24, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2022-12-30\";}}', 'project', 38, '', 0, 0),
(59, '2022-12-08 15:28:47', 1, 'updated', 'task', 'Alpha', 21, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(60, '2022-12-08 15:28:50', 1, 'updated', 'task', 'UI UX', 22, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"46\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(61, '2022-12-08 15:30:01', 1, 'created', 'task', 'Backend Onboard', 27, NULL, 'project', 32, '', 0, 0),
(62, '2022-12-08 15:33:04', 1, 'created', 'task', 'Signup/Login', 28, NULL, 'project', 32, '', 0, 0),
(63, '2022-12-08 15:33:07', 1, 'deleted', 'task', 'Backend Onboard', 27, NULL, 'project', 32, NULL, NULL, 0),
(64, '2022-12-08 15:33:31', 1, 'created', 'task', 'User Profile', 29, NULL, 'project', 32, '', 0, 0),
(65, '2022-12-08 15:33:47', 1, 'created', 'task', 'Post', 30, NULL, 'project', 32, '', 0, 0),
(66, '2022-12-08 15:34:08', 1, 'created', 'task', 'Funeral Event', 31, NULL, 'project', 32, '', 0, 0),
(67, '2022-12-08 15:34:24', 1, 'created', 'task', 'User Network', 32, NULL, 'project', 32, '', 0, 0),
(68, '2022-12-08 15:34:36', 1, 'created', 'task', 'Search bar', 33, NULL, 'project', 32, '', 0, 0),
(69, '2022-12-08 15:34:48', 1, 'created', 'task', 'Delete Option', 34, NULL, 'project', 32, '', 0, 0),
(70, '2022-12-08 15:35:02', 1, 'created', 'task', 'Notifications', 35, NULL, 'project', 32, '', 0, 0),
(71, '2022-12-08 15:40:12', 1, 'updated', 'task', 'Alpha', 21, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(72, '2022-12-08 15:45:50', 1, 'updated', 'task', 'Signup/Login', 28, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(73, '2022-12-08 15:45:52', 1, 'updated', 'task', 'Signup/Login', 28, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:4:\"29.5\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(74, '2022-12-08 15:46:33', 1, 'updated', 'task', 'Signup/Login', 28, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:2:\"30\";s:2:\"to\";s:4:\"-471\";}}', 'project', 32, '', 0, 0),
(75, '2022-12-12 21:15:08', 1, 'created', 'task', 'Alpha', 36, NULL, 'project', 38, '', 0, 0),
(76, '2022-12-12 21:15:19', 1, 'created', 'task_comment', 'https://xd.adobe.com/view/3e3955e2-6dba-4c00-9c9d-0b00c902784d-6b6a/screen/414b6887-4754-43a4-8d77-dfe30e3626e3/', 11, NULL, 'project', 38, 'task', 36, 0),
(77, '2022-12-12 21:17:07', 1, 'updated', 'task', 'UI UX', 23, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(78, '2022-12-12 21:17:27', 1, 'updated', 'task', 'UI UX Design', 11, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(79, '2023-01-02 21:26:47', 1, 'updated', 'task', 'Alpha', 36, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(80, '2023-01-02 21:28:56', 1, 'created', 'task', 'Sign up', 37, NULL, 'project', 38, '', 0, 0),
(81, '2023-01-02 21:29:06', 1, 'created', 'task', 'Login', 38, NULL, 'project', 38, '', 0, 0),
(82, '2023-01-02 21:29:15', 1, 'created', 'task', 'Forget Password', 39, NULL, 'project', 38, '', 0, 0),
(83, '2023-01-02 21:29:25', 1, 'created', 'task', 'Post', 40, NULL, 'project', 38, '', 0, 0),
(84, '2023-01-02 21:29:35', 1, 'created', 'task', 'Newsfeed', 41, NULL, 'project', 38, '', 0, 0),
(85, '2023-01-02 21:29:48', 1, 'created', 'task', 'Chat', 42, NULL, 'project', 38, '', 0, 0),
(86, '2023-01-02 21:29:58', 1, 'created', 'task', 'Meetings / Schedule Meetings', 43, NULL, 'project', 38, '', 0, 0),
(87, '2023-01-02 21:30:08', 1, 'created', 'task', 'Meetings History', 44, NULL, 'project', 38, '', 0, 0),
(88, '2023-01-02 21:30:16', 1, 'created', 'task', 'Saved  Post', 45, NULL, 'project', 38, '', 0, 0),
(89, '2023-01-02 21:30:30', 1, 'created', 'task', 'Friends suggestions', 46, NULL, 'project', 38, '', 0, 0),
(90, '2023-01-02 21:30:53', 1, 'created', 'task', 'Search', 47, NULL, 'project', 38, '', 0, 0),
(91, '2023-01-02 21:31:07', 1, 'created', 'task', 'Notifications', 48, NULL, 'project', 38, '', 0, 0),
(92, '2023-01-02 21:31:17', 1, 'created', 'task', 'Map for meetings', 49, NULL, 'project', 38, '', 0, 0),
(93, '2023-01-02 21:32:04', 1, 'deleted', 'task', 'BACKEND APIS', 24, NULL, 'project', 38, NULL, NULL, 0),
(94, '2023-01-02 21:32:43', 1, 'updated', 'task', 'Sign up', 37, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(95, '2023-01-02 21:32:44', 1, 'updated', 'task', 'Login', 38, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(96, '2023-01-02 21:32:45', 1, 'updated', 'task', 'Forget Password', 39, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(97, '2023-01-02 21:32:46', 1, 'updated', 'task', 'Post', 40, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10300000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(98, '2023-01-02 21:32:48', 1, 'updated', 'task', 'Newsfeed', 41, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10400000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(99, '2023-01-02 21:32:50', 1, 'updated', 'task', 'Meetings / Schedule Meetings', 43, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10500000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(100, '2023-01-02 21:32:52', 1, 'updated', 'task', 'Meetings History', 44, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10600000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(101, '2023-01-02 21:32:56', 1, 'updated', 'task', 'Map for meetings', 49, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10700000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(102, '2023-01-02 21:34:03', 1, 'created', 'task', 'UI UX', 50, NULL, 'project', 31, '', 0, 0),
(103, '2023-01-02 21:34:35', 1, 'created', 'task', 'Alpha', 51, NULL, 'project', 31, '', 0, 0),
(104, '2023-01-02 21:36:13', 1, 'deleted', 'task', 'BACKEND APIS', 26, NULL, 'project', 30, NULL, NULL, 0),
(105, '2023-01-02 21:36:25', 1, 'updated', 'task', 'Alpha', 25, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"46\";s:2:\"to\";s:1:\"3\";}}', 'project', 30, '', 0, 0),
(106, '2023-01-02 21:37:44', 1, 'created', 'task', 'Sign up', 52, NULL, 'project', 30, '', 0, 0),
(107, '2023-01-02 21:37:55', 1, 'created', 'task', 'Goal Form', 53, NULL, 'project', 30, '', 0, 0),
(108, '2023-01-02 21:38:18', 1, 'created', 'task', 'Protein / Leucine Recommendation', 54, NULL, 'project', 30, '', 0, 0),
(109, '2023-01-02 21:38:33', 1, 'created', 'task', 'Protein / Leucine Taken', 55, NULL, 'project', 30, '', 0, 0),
(110, '2023-01-02 21:38:43', 1, 'created', 'task', 'Calendar / History', 56, NULL, 'project', 30, '', 0, 0),
(111, '2023-01-02 21:38:53', 1, 'created', 'task', 'Protein / Leucine Comparison', 57, NULL, 'project', 30, '', 0, 0),
(112, '2023-01-02 21:39:02', 1, 'created', 'task', 'Status Chart', 58, NULL, 'project', 30, '', 0, 0),
(113, '2023-01-02 21:39:10', 1, 'created', 'task', 'Create Recipe', 59, NULL, 'project', 30, '', 0, 0),
(114, '2023-01-02 21:39:20', 1, 'created', 'task', 'Intermittent Fasting Tracker', 60, NULL, 'project', 30, '', 0, 0),
(115, '2023-01-02 21:48:52', 1, 'created', 'task', 'Role Management', 61, NULL, 'project', 31, '', 0, 0),
(116, '2023-01-02 21:49:08', 1, 'created', 'task', 'User Signup', 62, NULL, 'project', 31, '', 0, 0),
(117, '2023-01-02 21:50:06', 1, 'created', 'task', 'Fitness Trainer Profile', 63, NULL, 'project', 31, '', 0, 0),
(118, '2023-01-02 21:50:15', 1, 'created', 'task', 'Chatting', 64, NULL, 'project', 31, '', 0, 0),
(119, '2023-01-02 21:50:24', 1, 'created', 'task', 'Rating Review', 65, NULL, 'project', 31, '', 0, 0),
(120, '2023-01-02 21:50:32', 1, 'created', 'task', 'Payment', 66, NULL, 'project', 31, '', 0, 0),
(121, '2023-01-02 21:50:44', 1, 'created', 'task', 'Trainer Signup', 67, NULL, 'project', 31, '', 0, 0),
(122, '2023-01-02 21:51:07', 1, 'created', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, '', 0, 0),
(123, '2023-01-02 21:51:20', 1, 'created', 'task', 'Request', 69, NULL, 'project', 31, '', 0, 0),
(124, '2023-01-02 21:51:49', 1, 'updated', 'task', 'Signup/Login', 28, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:4:\"-471\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(125, '2023-01-02 21:51:50', 1, 'updated', 'task', 'User Profile', 29, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(126, '2023-01-02 21:51:52', 1, 'updated', 'task', 'Post', 30, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10300000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(127, '2023-01-02 21:51:53', 1, 'updated', 'task', 'Funeral Event', 31, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10400000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(128, '2023-01-02 21:51:55', 1, 'updated', 'task', 'User Network', 32, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10500000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(129, '2023-01-02 21:51:57', 1, 'updated', 'task', 'Search bar', 33, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10600000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(130, '2023-01-02 21:51:58', 1, 'updated', 'task', 'Delete Option', 34, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10700000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(131, '2023-01-02 21:52:00', 1, 'updated', 'task', 'Notifications', 35, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10800000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(132, '2023-01-02 21:52:51', 1, 'created', 'task', 'Alpha', 70, NULL, 'project', 29, '', 0, 0),
(133, '2023-01-02 21:53:19', 1, 'created', 'task', 'UI UX', 71, NULL, 'project', 29, '', 0, 0),
(134, '2023-01-02 21:53:25', 1, 'updated', 'task', 'UI UX', 71, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 29, '', 0, 0),
(135, '2023-01-02 22:46:34', 1, 'created', 'task', 'UI UX', 72, NULL, 'project', 27, '', 0, 0),
(136, '2023-01-02 22:46:43', 1, 'created', 'task', 'Alpha', 73, NULL, 'project', 27, '', 0, 0),
(137, '2023-01-02 22:46:59', 1, 'created', 'task', 'Sign-up / Profiling', 74, NULL, 'project', 27, '', 0, 0),
(138, '2023-01-02 22:47:16', 1, 'created', 'task', 'Login', 75, NULL, 'project', 27, '', 0, 0),
(139, '2023-01-02 22:47:24', 1, 'updated', 'task', 'Alpha', 73, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:4:\"-428\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 27, '', 0, 0),
(140, '2023-01-02 22:47:26', 1, 'updated', 'task', 'Login', 75, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:4:\"-426\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 27, '', 0, 0),
(141, '2023-01-02 22:47:49', 1, 'created', 'task', 'Request to book cleaning service', 76, NULL, 'project', 27, '', 0, 0),
(142, '2023-01-02 22:47:57', 1, 'updated', 'task', 'Login', 75, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"49\";}}', 'project', 27, '', 0, 0),
(143, '2023-01-02 22:48:04', 1, 'updated', 'task', 'Sign-up / Profiling', 74, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"49\";}}', 'project', 27, '', 0, 0),
(144, '2023-01-02 22:48:43', 1, 'created', 'task', 'Payment', 77, NULL, 'project', 27, '', 0, 0),
(145, '2023-01-02 22:48:56', 1, 'created', 'task', 'Jobs', 78, NULL, 'project', 27, '', 0, 0),
(146, '2023-01-02 22:49:09', 1, 'created', 'task', 'Notifications', 79, NULL, 'project', 27, '', 0, 0),
(147, '2023-01-02 22:49:22', 1, 'created', 'task', 'Chat', 80, NULL, 'project', 27, '', 0, 0),
(148, '2023-01-02 22:49:53', 1, 'created', 'task', 'Referral Code', 81, NULL, 'project', 27, '', 0, 0),
(149, '2023-01-02 22:50:11', 1, 'created', 'task', 'Rating & Reviews', 82, NULL, 'project', 27, '', 0, 0),
(150, '2023-01-02 22:50:58', 1, 'created', 'task', 'Contractor Request', 83, NULL, 'project', 27, '', 0, 0),
(151, '2023-01-02 22:51:18', 1, 'created', 'task', 'Junk Folder', 84, NULL, 'project', 27, '', 0, 0),
(152, '2023-01-02 22:51:47', 1, 'created', 'task', 'In Progress', 85, NULL, 'project', 27, '', 0, 0),
(153, '2023-01-02 22:52:09', 1, 'created', 'task', 'Account Ban', 86, NULL, 'project', 27, '', 0, 0),
(154, '2023-01-02 22:54:32', 1, 'created', 'task', 'UI UX', 87, NULL, 'project', 25, '', 0, 0),
(155, '2023-01-02 22:54:46', 1, 'created', 'task', 'Alpha', 88, NULL, 'project', 25, '', 0, 0),
(156, '2023-01-02 22:55:03', 1, 'created', 'task', 'Sign up', 89, NULL, 'project', 25, '', 0, 0),
(157, '2023-01-02 22:55:09', 1, 'updated', 'task', 'Alpha', 88, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 25, '', 0, 0),
(158, '2023-01-02 22:55:11', 1, 'updated', 'task', 'Alpha', 88, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 25, '', 0, 0),
(159, '2023-01-02 22:57:33', 1, 'created', 'task', 'Normal Profile', 90, NULL, 'project', 25, '', 0, 0),
(160, '2023-01-02 22:57:53', 1, 'created', 'task', 'Alter Ego Profile', 91, NULL, 'project', 25, '', 0, 0),
(161, '2023-01-02 22:58:07', 1, 'created', 'task', 'Post (Profile dependent)', 92, NULL, 'project', 25, '', 0, 0),
(162, '2023-01-02 22:58:22', 1, 'created', 'task', 'Event (version dependent)', 93, NULL, 'project', 25, '', 0, 0),
(163, '2023-01-02 22:58:37', 1, 'created', 'task', 'User Network (Profile dependent)', 94, NULL, 'project', 25, '', 0, 0),
(164, '2023-01-02 22:58:46', 1, 'updated', 'task', 'User Network (Profile dependent)', 94, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 25, '', 0, 0),
(165, '2023-01-02 22:59:03', 1, 'created', 'task', 'News Feed (version dependent)', 95, NULL, 'project', 25, '', 0, 0),
(166, '2023-01-02 22:59:15', 1, 'created', 'task', 'Notifications (Profile dependent)', 96, NULL, 'project', 25, '', 0, 0),
(167, '2023-01-02 22:59:27', 1, 'created', 'task', 'Chatting', 97, NULL, 'project', 25, '', 0, 0),
(168, '2023-01-02 22:59:41', 1, 'created', 'task', 'Vault', 98, NULL, 'project', 25, '', 0, 0),
(169, '2023-01-02 22:59:57', 1, 'created', 'task', 'Darkest Secrets', 99, NULL, 'project', 25, '', 0, 0),
(170, '2023-01-02 23:00:09', 1, 'created', 'task', 'Private Page', 100, NULL, 'project', 25, '', 0, 0),
(171, '2023-01-02 23:00:21', 1, 'created', 'task', 'Create Group', 101, NULL, 'project', 25, '', 0, 0),
(172, '2023-01-02 23:00:37', 1, 'created', 'task', 'Videos', 102, NULL, 'project', 25, '', 0, 0),
(173, '2023-01-02 23:00:52', 1, 'created', 'task', 'Saved Posts', 103, NULL, 'project', 25, '', 0, 0),
(174, '2023-01-31 18:37:51', 29, 'created', 'project_comment', '1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n2. Have the option to Enable Notifications\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n4. Send confirmation of booking through Transmissions (as well as Email)\na. This incentivizes to have people to communicate through the app\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy\n', 12, NULL, 'project', 38, '', 0, 0),
(175, '2023-01-31 18:40:11', 29, 'created', 'project_comment', '1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n(Design)\n\n2. Have the option to Enable Notifications\n\n(Design)\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n(Design)\n\n4. Send confirmation of booking through Transmissions (as well as Email)\n\n(Design and development)\n\na. This incentivizes to have people to communicate through the app\n\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy\n', 13, NULL, 'project', 38, '', 0, 0),
(176, '2023-01-31 18:42:36', 29, 'created', 'project_comment', 'Changes from client\n\n1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n(Design)\n\n2. Have the option to Enable Notifications\n\n(Design)\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n(Design)\n\n4. Send confirmation of booking through Transmissions (as well as Email)\n\n(Design and development)\n\na. This incentivizes to have people to communicate through the app\n\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy', 14, NULL, 'project', 28, '', 0, 0),
(177, '2023-01-31 18:45:34', 29, 'created', 'project_comment', 'Please find the additional changes for the Food Baby application below:\n \nIn the logo, fill the white spaces with the peach color and enlarge that baby\'s face.\nThe dates for the app there shouldn\'t be any before 2022 but more future dates.\nChange the name from “Grocery List” to “List”\nEnlarge the font a bit more on everything\nAdd the provided list to the food item list and make sure that the names of the food don’t get repeated at all. (Waffle and Tilefish. They can remove the \"Tilefish from the Gulf of Mexico\" and keep the Tilefish (Gulf of Mexico) but make sure they capitalize the G in Gulf)\n', 15, NULL, 'project', 42, '', 0, 0),
(178, '2023-01-31 18:57:26', 1, 'created', 'project_comment', 'Test', 16, NULL, 'project', 38, '', 0, 0),
(179, '2023-03-09 21:58:45', 29, 'created', 'project_comment', 'Deletion test', 17, NULL, 'project', 38, '', 0, 0),
(180, '2023-03-09 21:58:53', 29, 'created', 'project_comment_reply', 'ooop', 18, NULL, 'project', 38, '', 0, 0),
(181, '2023-03-09 22:00:54', 29, 'updated', 'task', 'Individual Session Scheduling', 19, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"48\";}}', 'project', 37, '', 0, 0),
(182, '2023-03-10 17:08:09', 1, 'created', 'task_comment', 'Test', 19, NULL, 'project', 32, 'task', 21, 0),
(183, '2023-03-10 17:12:14', 1, 'created', 'project_comment', 'Test', 20, NULL, 'project', 38, '', 0, 0),
(184, '2023-03-10 17:12:24', 1, 'created', 'project_comment_reply', 'Test2', 21, NULL, 'project', 38, '', 0, 0),
(185, '2023-03-13 19:05:37', 29, 'updated', 'task', 'Individual Session Scheduling', 19, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"48\";s:2:\"to\";s:1:\"3\";}}', 'project', 37, '', 0, 0),
(186, '2023-03-13 19:08:37', 29, 'created', 'project_comment', 'Revisions in designs are in progress \n\nArtist flow', 22, NULL, 'project', 28, '', 0, 0),
(187, '2023-03-30 16:33:21', 29, 'created', 'task', '1- 1 chat', 104, NULL, 'project', 43, '', 0, 1),
(188, '2023-03-30 16:33:29', 29, 'updated', 'task', '1- 1 chat', 104, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"48\";}}', 'project', 43, '', 0, 1),
(189, '2023-03-30 17:34:18', 29, 'created', 'project_file', '_file6425c81a0f0fc-D2124667-3B7A-44B2-B8CD-4485C9F319DA.jpg', 1, NULL, 'project', 43, '', 0, 1),
(190, '2023-03-30 17:35:20', 29, 'created', 'project_comment', 'dasdas', 23, NULL, 'project', 43, 'file', 1, 1),
(191, '2023-03-30 17:39:08', 1, 'updated', 'task', 'Signup/Login', 28, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2023-03-15\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2023-03-30\";}}', 'project', 32, '', 0, 0),
(192, '2023-03-30 17:39:37', 1, 'updated', 'task', 'Signup/Login', 28, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(193, '2023-03-30 17:41:04', 1, 'updated', 'task', 'Post', 30, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10300000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"48\";}}', 'project', 32, '', 0, 0),
(194, '2023-03-30 17:41:29', 1, 'updated', 'task', 'Post', 30, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"48\";s:2:\"to\";s:2:\"47\";}}', 'project', 32, '', 0, 0),
(195, '2023-03-30 17:41:47', 1, 'created', 'task_comment', 'Test', 24, NULL, 'project', 32, 'task', 30, 0),
(196, '2023-04-03 15:44:44', 29, 'updated', 'task', 'Request', 69, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(197, '2023-04-03 15:44:45', 29, 'updated', 'task', 'Trainer Dashborad', 68, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(198, '2023-04-03 15:44:46', 29, 'updated', 'task', 'Trainer Signup', 67, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(199, '2023-04-03 15:44:48', 29, 'updated', 'task', 'Chatting', 64, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(200, '2023-04-03 15:44:49', 29, 'updated', 'task', 'Rating Review', 65, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(201, '2023-04-03 15:44:50', 29, 'updated', 'task', 'Payment', 66, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(202, '2023-04-03 15:44:51', 29, 'updated', 'task', 'Fitness Trainer Profile', 63, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(203, '2023-04-03 15:44:52', 29, 'updated', 'task', 'User Signup', 62, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(204, '2023-04-03 15:44:53', 29, 'updated', 'task', 'Role Management', 61, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(205, '2023-04-03 15:44:55', 29, 'updated', 'task', 'Alpha', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 31, '', 0, 0),
(206, '2023-04-03 15:45:03', 29, 'deleted', 'task', 'User Signup', 62, NULL, 'project', 31, NULL, NULL, 0),
(207, '2023-04-03 15:45:06', 29, 'deleted', 'task', 'Role Management', 61, NULL, 'project', 31, NULL, NULL, 0),
(208, '2023-04-03 15:45:10', 29, 'deleted', 'task', 'Request', 69, NULL, 'project', 31, NULL, NULL, 0),
(209, '2023-04-03 15:45:11', 29, 'deleted', 'task', 'Request', 69, NULL, 'project', 31, NULL, NULL, 0),
(210, '2023-04-03 15:45:12', 29, 'deleted', 'task', 'Request', 69, NULL, 'project', 31, NULL, NULL, 0),
(211, '2023-04-03 15:45:13', 29, 'deleted', 'task', 'Request', 69, NULL, 'project', 31, NULL, NULL, 0),
(212, '2023-04-03 15:45:14', 29, 'deleted', 'task', 'Request', 69, NULL, 'project', 31, NULL, NULL, 0),
(213, '2023-04-03 15:45:15', 29, 'deleted', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, NULL, NULL, 0),
(214, '2023-04-03 15:45:16', 29, 'deleted', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, NULL, NULL, 0),
(215, '2023-04-03 15:45:17', 29, 'deleted', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, NULL, NULL, 0),
(216, '2023-04-03 15:45:18', 29, 'deleted', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, NULL, NULL, 0),
(217, '2023-04-03 15:45:19', 29, 'deleted', 'task', 'Trainer Dashborad', 68, NULL, 'project', 31, NULL, NULL, 0),
(218, '2023-04-03 15:45:39', 29, 'updated', 'task', 'Map for meetings', 49, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(219, '2023-04-03 15:45:41', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(220, '2023-04-03 15:45:42', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(221, '2023-04-03 15:45:43', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(222, '2023-04-03 15:45:44', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(223, '2023-04-03 15:45:45', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(224, '2023-04-03 15:45:46', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(225, '2023-04-03 15:45:47', 29, 'deleted', 'task', 'Map for meetings', 49, NULL, 'project', 38, NULL, NULL, 0),
(226, '2023-04-03 15:45:48', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(227, '2023-04-03 15:45:50', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(228, '2023-04-03 15:45:51', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(229, '2023-04-03 15:45:52', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(230, '2023-04-03 15:45:53', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(231, '2023-04-03 15:45:54', 29, 'deleted', 'task', 'Notifications', 48, NULL, 'project', 38, NULL, NULL, 0),
(232, '2023-04-03 15:48:03', 29, 'created', 'milestone', 'Milestone 1 - Bait Okhti', 1, NULL, 'project', 38, '', 0, 0),
(233, '2023-04-03 15:50:10', 29, 'created', 'task', 'Login', 105, NULL, 'project', 38, '', 0, 0),
(234, '2023-04-03 15:51:01', 29, 'created', 'task', 'Sign up', 106, NULL, 'project', 38, '', 0, 0),
(235, '2023-04-03 16:09:58', 29, 'created', 'task', 'Create Post', 107, NULL, 'project', 38, '', 0, 0),
(236, '2023-04-03 16:11:16', 29, 'created', 'task', 'Edit Profile', 108, NULL, 'project', 38, '', 0, 0),
(237, '2023-04-03 16:11:48', 29, 'updated', 'task', 'Sign up', 106, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:2:\"48\";s:2:\"to\";s:5:\"48,29\";}}', 'project', 38, '', 0, 0),
(238, '2023-04-03 16:11:55', 29, 'updated', 'task', 'Login', 105, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:2:\"48\";s:2:\"to\";s:5:\"48,29\";}}', 'project', 38, '', 0, 0),
(239, '2023-04-03 16:13:03', 29, 'created', 'task', 'Find friends', 109, NULL, 'project', 38, '', 0, 0),
(240, '2023-04-03 16:13:39', 29, 'updated', 'task', 'Find friends', 109, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(241, '2023-04-03 16:14:29', 29, 'updated', 'task', '1- 1 chat', 104, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:2:\"48\";s:2:\"to\";s:1:\"3\";}}', 'project', 43, '', 0, 1),
(242, '2023-04-03 16:14:31', 29, 'updated', 'task', '1- 1 chat', 104, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 43, '', 0, 1),
(243, '2023-04-03 16:15:25', 29, 'updated', 'task', '1- 1 chat', 104, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 43, '', 0, 1),
(244, '2023-04-03 16:15:39', 29, 'deleted', 'task', 'Search', 47, NULL, 'project', 38, NULL, NULL, 0),
(245, '2023-04-03 16:15:45', 29, 'deleted', 'task', 'Friends suggestions', 46, NULL, 'project', 38, NULL, NULL, 0),
(246, '2023-04-03 16:15:45', 29, 'deleted', 'task', 'Friends suggestions', 46, NULL, 'project', 38, NULL, NULL, 0),
(247, '2023-04-03 16:15:47', 29, 'deleted', 'task', 'Meetings History', 44, NULL, 'project', 38, NULL, NULL, 0),
(248, '2023-04-03 16:15:54', 29, 'deleted', 'task', 'Saved  Post', 45, NULL, 'project', 38, NULL, NULL, 0),
(249, '2023-04-03 16:15:57', 29, 'deleted', 'task', 'Chat', 42, NULL, 'project', 38, NULL, NULL, 0),
(250, '2023-04-03 16:15:59', 29, 'deleted', 'task', 'Newsfeed', 41, NULL, 'project', 38, NULL, NULL, 0),
(251, '2023-04-03 16:16:02', 29, 'deleted', 'task', 'Post', 40, NULL, 'project', 38, NULL, NULL, 0),
(252, '2023-04-03 16:16:04', 29, 'deleted', 'task', 'Forget Password', 39, NULL, 'project', 38, NULL, NULL, 0),
(253, '2023-04-03 16:16:06', 29, 'deleted', 'task', 'Login', 38, NULL, 'project', 38, NULL, NULL, 0),
(254, '2023-04-03 16:16:08', 29, 'deleted', 'task', 'Meetings / Schedule Meetings', 43, NULL, 'project', 38, NULL, NULL, 0),
(255, '2023-04-03 16:16:11', 29, 'deleted', 'task', 'Sign up', 37, NULL, 'project', 38, NULL, NULL, 0),
(256, '2023-04-03 16:17:39', 29, 'created', 'task', 'Newsfeed', 110, NULL, 'project', 38, '', 0, 0),
(257, '2023-04-03 16:21:27', 29, 'created', 'task', 'Edit Post', 111, NULL, 'project', 38, '', 0, 0),
(258, '2023-04-03 16:21:46', 29, 'updated', 'task', 'Newsfeed', 110, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2023-01-02\";s:2:\"to\";s:10:\"2022-12-02\";}}', 'project', 38, '', 0, 0),
(259, '2023-04-03 16:32:29', 29, 'created', 'task', 'Add friend', 112, NULL, 'project', 38, '', 0, 0),
(260, '2023-04-03 16:36:27', 29, 'created', 'task', 'Request', 113, NULL, 'project', 38, '', 0, 0),
(261, '2023-04-03 16:43:09', 29, 'created', 'task', 'Create meeting / create meeting request', 114, NULL, 'project', 38, '', 0, 0),
(262, '2023-04-03 16:48:49', 29, 'created', 'task', 'Meeting request', 115, NULL, 'project', 38, '', 0, 0),
(263, '2023-04-03 16:52:03', 29, 'created', 'task', 'Edit meeting', 116, NULL, 'project', 38, '', 0, 0),
(264, '2023-04-03 16:52:44', 29, 'updated', 'task', 'Meeting request', 115, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2022-12-02\";s:2:\"to\";s:10:\"2023-04-03\";}}', 'project', 38, '', 0, 0),
(265, '2023-04-03 16:53:26', 29, 'updated', 'task', 'Meeting request', 115, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2023-03-28\";s:2:\"to\";s:10:\"2023-04-07\";}}', 'project', 38, '', 0, 0),
(266, '2023-04-03 16:58:03', 29, 'updated', 'task', 'Create meeting / create meeting request', 114, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2022-12-02\";s:2:\"to\";s:10:\"2023-04-03\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2023-03-28\";s:2:\"to\";s:10:\"2023-04-06\";}}', 'project', 38, '', 0, 0),
(267, '2023-04-03 16:59:27', 29, 'created', 'task', 'Cancel meeting ', 117, NULL, 'project', 38, '', 0, 0),
(268, '2023-04-03 16:59:39', 29, 'updated', 'task', 'Meeting request', 115, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2023-04-07\";s:2:\"to\";s:10:\"2023-04-06\";}}', 'project', 38, '', 0, 0),
(269, '2023-04-03 17:04:10', 29, 'updated', 'task', 'Cancel meeting ', 117, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:68:\"User can cancel meeting by providing a valid reason for cancellation\";s:2:\"to\";s:114:\"User can cancel meeting by providing a valid reason for cancellation\n\nMeeting will be cancelled on both user\'s end\";}}', 'project', 38, '', 0, 0),
(270, '2023-04-03 17:07:28', 29, 'created', 'task', 'Meeting', 118, NULL, 'project', 38, '', 0, 0),
(271, '2023-04-03 17:08:09', 29, 'created', 'task', 'History of meeting', 119, NULL, 'project', 38, '', 0, 0),
(272, '2023-04-03 17:08:47', 29, 'updated', 'task', 'History of meeting', 119, 'a:5:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:81:\"in history all completed and cancelled meeting will be displayed of specific user\";}s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2023-04-03\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2023-04-06\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"29\";s:2:\"to\";s:2:\"32\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"48,29\";}}', 'project', 38, '', 0, 0),
(273, '2023-04-03 17:08:57', 29, 'updated', 'task', 'Meeting', 118, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2023-04-07\";s:2:\"to\";s:10:\"2023-04-06\";}}', 'project', 38, '', 0, 0),
(274, '2023-04-03 17:22:49', 29, 'created', 'task', 'Share post', 120, NULL, 'project', 38, '', 0, 0),
(275, '2023-04-03 17:23:28', 29, 'updated', 'task', 'Sign up', 106, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2023-03-31\";s:2:\"to\";s:10:\"2023-03-28\";}}', 'project', 38, '', 0, 0),
(276, '2023-04-03 17:25:27', 29, 'created', 'task', 'Like / unlike post', 121, NULL, 'project', 38, '', 0, 0),
(277, '2023-04-03 17:32:54', 29, 'created', 'task', 'Comments', 122, NULL, 'project', 38, '', 0, 0),
(278, '2023-04-03 17:33:27', 29, 'updated', 'task', 'Comments', 122, 'a:4:{s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2022-12-02\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2023-03-28\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"29\";s:2:\"to\";s:2:\"32\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"29,48\";}}', 'project', 38, '', 0, 0),
(279, '2023-04-03 17:35:54', 29, 'created', 'task', 'Save post', 123, NULL, 'project', 38, '', 0, 0),
(280, '2023-04-03 17:37:32', 29, 'created', 'task', 'Search', 124, NULL, 'project', 38, '', 0, 0),
(281, '2023-04-03 17:39:18', 29, 'created', 'task', 'Chat', 125, NULL, 'project', 38, '', 0, 0),
(282, '2023-04-03 17:42:34', 29, 'created', 'task', 'Notification', 126, NULL, 'project', 38, '', 0, 0),
(283, '2023-04-03 17:44:21', 29, 'updated', 'task', 'Notification', 126, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"29\";s:2:\"to\";s:2:\"32\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"48,29\";}}', 'project', 38, '', 0, 0),
(284, '2023-04-03 17:45:00', 29, 'updated', 'task', 'Chat', 125, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:128:\"in this application only 1-1 chat is allowed\n\nin chat user is able to send image/video & voice note along with the text messages\";s:2:\"to\";s:179:\"in this application only 1-1 chat is allowed\n\nin chat user is able to send image/video & voice note along with the text messages\n\nthere be push notifications for incoming messages\";}}', 'project', 38, '', 0, 0),
(285, '2023-04-03 17:46:16', 29, 'updated', 'task', 'Notification', 126, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"Notification\";s:2:\"to\";s:13:\"Notification \";}s:11:\"description\";a:2:{s:4:\"from\";s:343:\"User will have notification for the following actions :\n\n- Friend request received\n- Friend request accepted\n- Meeting request\n- Meeting request accepted\n- Meeting status changed (mark arrived, completed & cancelled) on every status user will receive notification\n- like post\n- like comment\n- comment on post\n- replied on comment\n- shared post\";s:2:\"to\";s:437:\"User will have notification for the following actions :\n\n- Friend request received\n- Friend request accepted\n- Meeting request\n- Meeting request accepted\n- Meeting status changed (mark arrived, completed & cancelled) on every status user will receive notification\n- like post\n- like comment\n- comment on post\n- replied on comment\n- shared post\n\nNote : every notification will appear in a list and push notification will generated as well\";}}', 'project', 38, '', 0, 0),
(286, '2023-04-03 17:53:27', 29, 'created', 'task', 'Settings', 127, NULL, 'project', 38, '', 0, 0),
(287, '2023-04-03 17:56:58', 29, 'created', 'task', 'Block', 128, NULL, 'project', 38, '', 0, 0),
(288, '2023-04-03 17:58:43', 29, 'updated', 'task', 'Block', 128, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:362:\"Blocking feature :\n\n- User will not be able to send / receive messages from or to blocked user\n\n- User will not be able get the blocked user in search resulte\n\n- user will not be able to see blocked user\'s post on newsfeed & search results as well\n\n- If a user blocks any user connection between users will be ended\n\n- A list of blocked user\'s will be generated \";s:2:\"to\";s:361:\"Blocking feature :\n\n- User will not be able to send / receive messages from or to blocked user\n\n- User will not be able get the blocked user in search result\n\n- user will not be able to see blocked user\'s post on newsfeed & search results as well\n\n- If a user blocks any user connection between users will be ended\n\n- A list of blocked user\'s will be generated \";}}', 'project', 38, '', 0, 0),
(289, '2023-04-03 17:59:38', 29, 'created', 'task', 'Unfriend', 129, NULL, 'project', 38, '', 0, 0),
(290, '2023-04-03 18:00:03', 29, 'updated', 'task', 'Unfriend', 129, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(291, '2023-04-03 18:00:20', 29, 'updated', 'task', 'Save post', 123, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(292, '2023-04-03 18:05:28', 29, 'updated', 'task', 'Login', 105, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(293, '2023-04-03 18:05:31', 29, 'updated', 'task', 'Sign up', 106, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(294, '2023-04-03 18:05:33', 29, 'updated', 'task', 'Edit Profile', 108, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(295, '2023-04-03 18:05:34', 29, 'updated', 'task', 'Create Post', 107, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(296, '2023-04-03 18:05:36', 29, 'updated', 'task', 'Find friends', 109, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(297, '2023-04-03 18:05:39', 29, 'updated', 'task', 'Newsfeed', 110, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(298, '2023-04-03 18:05:41', 29, 'updated', 'task', 'Add friend', 112, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(299, '2023-04-03 18:05:43', 29, 'updated', 'task', 'Request', 113, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(300, '2023-04-03 18:05:56', 29, 'updated', 'task', 'Like / unlike post', 121, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(301, '2023-04-03 18:06:40', 29, 'updated', 'task', 'Unfriend', 129, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(302, '2023-04-03 18:07:08', 29, 'updated', 'task', 'Login', 105, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(303, '2023-04-03 18:07:09', 29, 'updated', 'task', 'Sign up', 106, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(304, '2023-04-03 18:07:10', 29, 'updated', 'task', 'Create Post', 107, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(305, '2023-04-03 18:07:11', 29, 'updated', 'task', 'Edit Profile', 108, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(306, '2023-04-03 18:07:12', 29, 'updated', 'task', 'Find friends', 109, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(307, '2023-04-03 18:07:13', 29, 'updated', 'task', 'Newsfeed', 110, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(308, '2023-04-03 18:07:14', 29, 'updated', 'task', 'Add friend', 112, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(309, '2023-04-03 18:07:15', 29, 'updated', 'task', 'Request', 113, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(310, '2023-04-03 18:07:16', 29, 'updated', 'task', 'Unfriend', 129, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(311, '2023-04-03 18:07:17', 29, 'updated', 'task', 'Like / unlike post', 121, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(312, '2023-04-03 18:07:31', 29, 'updated', 'task', 'Login', 105, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(313, '2023-04-03 18:07:41', 29, 'updated', 'task', 'Sign up', 106, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(314, '2023-04-03 18:07:55', 29, 'updated', 'task', 'Create Post', 107, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(315, '2023-04-03 18:27:44', 29, 'updated', 'task', 'Find friends', 109, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(316, '2023-04-03 18:27:46', 29, 'updated', 'task', 'Find friends', 109, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(317, '2023-04-03 18:27:50', 29, 'updated', 'task', 'Newsfeed', 110, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(318, '2023-04-03 18:28:01', 29, 'updated', 'task', 'Add friend', 112, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(319, '2023-04-03 18:28:09', 29, 'updated', 'task', 'Request', 113, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(320, '2023-04-03 18:28:16', 29, 'updated', 'task', 'Like / unlike post', 121, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(321, '2023-04-03 18:28:31', 29, 'updated', 'task', 'Unfriend', 129, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 38, '', 0, 0),
(322, '2023-04-03 18:30:48', 29, 'updated', 'task', 'Edit Profile', 108, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(323, '2023-04-03 18:31:43', 29, 'updated', 'task', 'Share post', 120, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}', 'project', 38, '', 0, 0),
(324, '2023-04-03 19:02:06', 29, 'created', 'milestone', 'Milestone 2 - Bait Okhti', 2, NULL, 'project', 38, '', 0, 0),
(325, '2023-04-03 19:02:25', 29, 'created', 'milestone', 'Milestone 3 - Bait Okhti', 3, NULL, 'project', 38, '', 0, 0),
(326, '2023-04-03 19:28:38', 29, 'updated', 'task', 'Create meeting / create meeting request', 114, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"29\";s:2:\"to\";s:2:\"32\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:5:\"32,48\";s:2:\"to\";s:5:\"48,29\";}}', 'project', 38, '', 0, 0),
(327, '2023-04-03 19:30:19', 29, 'updated', 'task', 'Create meeting / create meeting request', 114, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(328, '2023-04-03 19:30:31', 29, 'updated', 'task', 'Meeting request', 115, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(329, '2023-04-03 19:30:44', 29, 'updated', 'task', 'Edit meeting', 116, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(330, '2023-04-03 19:30:55', 29, 'updated', 'task', 'Cancel meeting ', 117, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(331, '2023-04-03 19:31:02', 29, 'updated', 'task', 'Meeting', 118, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(332, '2023-04-03 19:31:14', 29, 'updated', 'task', 'History of meeting', 119, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(333, '2023-04-03 19:32:51', 29, 'updated', 'task', 'Create meeting / create meeting request', 114, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(334, '2023-04-03 19:39:52', 29, 'created', 'task_comment', 'user is unable to change interests', 25, NULL, 'project', 38, 'task', 108, 0),
(335, '2023-04-03 19:48:41', 29, 'created', 'task_comment', 'asdasdad', 26, NULL, 'project', 38, 'task', 107, 0),
(336, '2023-04-03 19:52:23', 29, 'created', 'task', 'UI/UX ', 130, NULL, 'project', 38, '', 0, 0),
(337, '2023-04-03 19:52:57', 29, 'created', 'task_comment', '@[Aizaz Ahmed please check wireframes are completed from my end \n\nhttps://portal.gologonow.org/index.php/projects/view/38', 27, NULL, 'project', 38, 'task', 130, 0),
(338, '2023-04-04 16:03:30', 29, 'created', 'task', 's', 131, NULL, 'project', 31, '', 0, 0),
(339, '2023-04-04 16:03:34', 29, 'deleted', 'task', 's', 131, NULL, 'project', 31, NULL, NULL, 0),
(340, '2023-04-04 16:03:59', 29, 'created', 'task', 'Sign up (user)', 132, NULL, 'project', 31, '', 0, 0),
(341, '2023-04-04 16:04:13', 29, 'created', 'task', 'Signup (Trainer)', 133, NULL, 'project', 31, '', 0, 0),
(342, '2023-04-04 16:04:48', 29, 'created', 'task', 'Login', 134, NULL, 'project', 31, '', 0, 0),
(343, '2023-04-04 16:05:22', 29, 'created', 'task', 'Create Profile &#40;trainer&#41;', 135, NULL, 'project', 31, '', 0, 0),
(344, '2023-04-04 16:05:27', 29, 'deleted', 'task', 'Login', 134, NULL, 'project', 31, NULL, NULL, 0),
(345, '2023-04-04 16:05:34', 29, 'created', 'task', 'Login', 136, NULL, 'project', 31, '', 0, 0),
(346, '2023-04-04 16:06:51', 29, 'deleted', 'task', 'Sign up (user)', 132, NULL, 'project', 31, NULL, NULL, 0),
(347, '2023-04-04 16:11:25', 29, 'created', 'task', 'Home (requests)', 137, NULL, 'project', 31, '', 0, 0),
(348, '2023-04-04 16:13:36', 29, 'created', 'task', 'Create session', 138, NULL, 'project', 31, '', 0, 0),
(349, '2023-04-04 16:17:22', 29, 'updated', 'task', 'Home (requests)', 137, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:92:\"Home screen will have requests from user which are still pending (not accepted not rejected)\";s:2:\"to\";s:265:\"Home screen will have requests from user which are still pending (not declined)\n\nAfter reviewing details that are mentioned in the request form from client side. Trainer can have chat with the client or trainer can directly create a session from the request screen.\";}}', 'project', 31, '', 0, 0),
(350, '2023-04-04 16:18:10', 29, 'updated', 'task', 'Create session', 138, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:97:\"Session can be created from the chat of specific client or from request form came from the client\";}}', 'project', 31, '', 0, 0),
(351, '2023-04-04 16:19:43', 29, 'created', 'task', 'Scheduled / Upcoming sessions', 139, NULL, 'project', 31, '', 0, 0),
(352, '2023-04-04 16:24:24', 29, 'created', 'task', 'Complete session ', 140, NULL, 'project', 31, '', 0, 0),
(353, '2023-04-04 16:25:38', 29, 'updated', 'task', 'Scheduled / Upcoming sessions', 139, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:141:\"Scheduled / upcoming session will be those session which were created by the trainer and client accepted and paid for that specific session. \";s:2:\"to\";s:165:\"Scheduled / upcoming session will be those session which were created by the trainer and client accepted and paid for that specific session. \n\nSessions can be edited\";}}', 'project', 31, '', 0, 0),
(354, '2023-04-04 16:35:33', 29, 'created', 'task', 'Cancel session', 141, NULL, 'project', 31, '', 0, 0),
(355, '2023-04-04 16:37:29', 29, 'created', 'task', 'History', 142, NULL, 'project', 31, '', 0, 0),
(356, '2023-04-04 16:38:19', 29, 'created', 'task', 'Edit Profile &#40;trainer&#41;', 143, NULL, 'project', 31, '', 0, 0),
(357, '2023-04-04 16:38:28', 29, 'updated', 'task', 'History', 142, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:7:\"History\";s:2:\"to\";s:16:\"History(trainer)\";}}', 'project', 31, '', 0, 0),
(358, '2023-04-04 16:38:43', 29, 'updated', 'task', 'Cancel session', 141, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:14:\"Cancel session\";s:2:\"to\";s:23:\"Cancel session(trainer)\";}}', 'project', 31, '', 0, 0),
(359, '2023-04-04 16:38:56', 29, 'updated', 'task', 'Complete session ', 140, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:17:\"Complete session \";s:2:\"to\";s:26:\"Complete session (trainer)\";}}', 'project', 31, '', 0, 0),
(360, '2023-04-04 16:39:11', 29, 'updated', 'task', 'Scheduled / Upcoming sessions', 139, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:29:\"Scheduled / Upcoming sessions\";s:2:\"to\";s:39:\"Scheduled / Upcoming sessions (trainer)\";}}', 'project', 31, '', 0, 0),
(361, '2023-04-04 16:39:23', 29, 'updated', 'task', 'Create session', 138, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:14:\"Create session\";s:2:\"to\";s:23:\"Create session(trainer)\";}}', 'project', 31, '', 0, 0),
(362, '2023-04-04 16:41:33', 29, 'created', 'task', 'View gyms (trainer)', 144, NULL, 'project', 31, '', 0, 0),
(363, '2023-04-04 16:42:00', 29, 'created', 'task', 'Add gym(trainer)', 145, NULL, 'project', 31, '', 0, 0),
(364, '2023-04-04 16:42:30', 29, 'created', 'task', 'Edit gym (trainer)', 146, NULL, 'project', 31, '', 0, 0),
(365, '2023-04-04 16:43:26', 29, 'created', 'task', 'Chat', 147, NULL, 'project', 31, '', 0, 0),
(366, '2023-04-04 17:57:29', 29, 'created', 'task', 'Payment (trainer)', 148, NULL, 'project', 31, '', 0, 0),
(367, '2023-04-04 19:29:36', 29, 'created', 'task_comment', 'Rejected meetings will be in history', 28, NULL, 'project', 38, 'task', 118, 0),
(368, '2023-04-04 19:30:35', 29, 'created', 'task_comment', 'Rejected request will be disposed will not be saved into history', 29, NULL, 'project', 38, 'task', 115, 0),
(369, '2023-04-04 19:35:12', 29, 'updated', 'task', 'Meeting request', 115, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(370, '2023-04-04 19:35:22', 29, 'updated', 'task', 'Edit meeting', 116, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(371, '2023-04-04 19:35:31', 29, 'updated', 'task', 'Cancel meeting ', 117, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(372, '2023-04-04 19:35:39', 29, 'updated', 'task', 'Meeting', 118, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0),
(373, '2023-04-04 19:35:47', 29, 'updated', 'task', 'History of meeting', 119, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"2\";}}', 'project', 38, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(29, 'pending', 1, '2023-05-11 20:39:00', '2023-05-11 20:39:23', NULL, '', NULL, NULL, 0),
(30, 'pending', 27, '2023-05-11 23:12:40', '2023-05-11 23:12:55', NULL, '', NULL, NULL, 0),
(31, 'pending', 27, '2023-05-31 21:12:30', '2023-05-31 21:12:39', NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checklist_items`
--

CREATE TABLE `checklist_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checklist_items`
--

INSERT INTO `checklist_items` (`id`, `title`, `is_checked`, `task_id`, `sort`, `deleted`) VALUES
(1, 'Link: google.com', 1, 25, 0, 0),
(2, 'Sign up', 1, 21, 0, 0),
(3, 'hfhfghj', 1, 80, 0, 0),
(4, 'fghjfghj', 1, 80, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('j02ng7tja25ohromh8ao3hnjr1gtdkdo', '::1', 1633004258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030343235383b757365725f69647c733a313a2231223b),
('38t493fo0ik4v825jjlfc9bnoblpjuus', '::1', 1633004585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030343538353b757365725f69647c733a313a2231223b),
('1daiandhtqnn5qopgc86nagdhp1hvfnp', '::1', 1633004886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030343838363b757365725f69647c733a313a2231223b),
('bdg18l5et027pb4of7hilsluc1r0qd3l', '::1', 1633007141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030373134313b),
('6mvr8iev180p2e87hreo6uqu8taachok', '::1', 1633007505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030373530353b757365725f69647c733a313a2231223b),
('nsjokpfvui8pdoqv58bekkne6c3pc6gj', '::1', 1633007808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030373830383b757365725f69647c733a313a2231223b),
('6lbc7mlkpcvn93c5b6cue5sr5maq0s89', '::1', 1633008126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030383132363b757365725f69647c733a313a2231223b),
('uiku4cd96et6ca4n5kbfj46ohk75k1de', '::1', 1633008188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333030383138353b),
('da66bd7a7331dcff998e42d29ec4ed877f29e0e7', '103.244.179.27', 1633015407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333031353430373b757365725f69647c733a313a2231223b),
('766e4a6bcbdb8a59948167fbc286b72b8dd385f0', '95.111.237.59', 1633015342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333031353334323b),
('ff1e12a0d24ad1bd68027e1bcecf212567fb60f5', '95.111.237.59', 1633015448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333031353434383b),
('7b3b2e1a34de8bb909d409041bee04c2fa176819', '103.244.179.27', 1633015536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333031353533363b),
('1e47b1832600ccd62ac7689c6c9f6271c5561e46', '103.244.179.27', 1633015536, ''),
('249ced811444a9ed76656c8f929ac683d1469847', '162.142.125.60', 1633020570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537303b),
('21edc12f3e25799b75979cfdf84a152f2a36a8f3', '167.94.138.113', 1633020570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537303b),
('a79a3ccfcee5c23a18321f470c5e4d593f05346c', '162.142.125.60', 1633020570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537303b),
('d5cd0bcf95eba64e0550d9ac1b8b5c3410d2c0fd', '162.142.125.60', 1633020570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537303b),
('19718cd203806de02efa036e2ec91cc19ec424c6', '167.94.138.113', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('b20a6546309f09d2fbef44e64ff25a844931ccdb', '167.94.138.113', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('e5fb5e697e03d14374aceed37a2e356289917f74', '162.142.125.60', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('eabd2c263ba787cab3d3afba609cc9808444d8b1', '162.142.125.60', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('7d0307542518205c139b804991f51c8b24729faa', '167.94.138.113', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('77547e5620fafd49b332ae279b46e2b2ad569c86', '167.94.138.113', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('19a74598a613bfbbd4301dc11b8586235a377c58', '162.142.125.60', 1633020571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537313b),
('fcee3b4d5117c0554cc5184e7c83c9523116bfd9', '167.94.138.113', 1633020572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333032303537323b),
('b1765da761baeef0bd665f94d9a7370015bdbd7c', '167.88.104.104', 1633086753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363735323b),
('18f8ee7d63c143754488b4be9a3a173b539cd4b2', '167.88.104.131', 1633086753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363735323b),
('75a19763af4d7044c85bbf6952bdf68f5a0ca4f0', '15.228.50.189', 1633086760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363736303b),
('2a989afa7bc3e6e09c3c6f826aac24d40f8dc5c6', '15.228.122.235', 1633086760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363736303b),
('7e6abfc7ae3826a81e8cc9483aa5cdd49fb23687', '15.228.122.235', 1633086760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363736303b),
('e0bbfc51fd76ae0544eaf9f9a162088932c75a78', '15.228.50.189', 1633086760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333038363736303b),
('0a9269fb0b003dc73e0321d1613e250d2fe119bc', '39.57.210.166', 1633116788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333131363738383b),
('2bc6c221f0d406bb20593351bceba48f44acace6', '212.192.246.83', 1633120955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333132303935353b),
('f55bf306ee27d28611693a0fbfbf30929c2c9e11', '167.88.104.72', 1633183491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333138333439303b),
('14b6ac7f6d1965e3716c58fc5794799981a18c66', '167.88.104.18', 1633183491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333138333439303b),
('37977af9be787f332e7d28f95837979b107ec037', '167.88.104.40', 1633320550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333332303534383b),
('cf391ba1195ed1270f34d369caccc68887781369', '167.88.104.136', 1633320550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333332303534383b),
('e0ca900675dcef63c7ff1becfb41dafa5e4b09c0', '34.96.130.9', 1633384667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333338343636373b),
('bb635e1a996da86a7e37d3dd6b922b048acbe8a0', '34.86.35.14', 1633415096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333431353039353b),
('8417293492dc706561a5929c2a63672b90bbddeb', '34.86.35.5', 1633434161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333433343136313b),
('dc8fca5f275464c86522a124794debeec6cc00e3', '167.88.104.40', 1633446695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333434363639343b),
('aad786dca29489528802afe851cc42f71e4fed44', '167.88.104.82', 1633446695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333434363639333b),
('67a649404d534ff6013a48289477529dcd0a4970', '34.77.162.12', 1633473276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333437333237363b),
('aa767060ce76ed7d5d5c612c721c1345f93270dc', '103.244.179.27', 1633552287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535323238373b757365725f69647c733a313a2231223b),
('3b496b7691f7c890e7b29ab47862ff111489e2b0', '103.244.179.27', 1633552593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535323539333b757365725f69647c733a313a2231223b),
('20a4ccbdc95d8b82481367df66605c57e733996a', '54.174.56.223', 1633552428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535323432373b),
('8b2004aafa632a35e514598da7d971626e8c13ed', '103.244.179.27', 1633553286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535333238363b),
('fcd19e0ca168aa6d91622731fadf401dbd6cfb98', '5.181.234.4', 1633553467, ''),
('7c56e314c36ec9319eb0c8b447cbffe355bcd9f5', '103.244.179.27', 1633555482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353438323b757365725f69647c733a313a2231223b),
('5678832a372c9143492797853b5e6ef80b3d1b36', '103.244.179.27', 1633554300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343330303b757365725f69647c733a313a2234223b),
('d87b5f0bb6e3d1e1c694c8369c4042c45a2606a3', '117.20.31.249', 1633554670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343637303b757365725f69647c733a313a2234223b),
('fb199d3c049f85c6caa747f6685959926d8d8e03', '117.20.31.249', 1633555000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353030303b757365725f69647c733a313a2234223b),
('19d486751c736758f6c616ae07fc4fa331893e08', '95.111.237.59', 1633554871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343837313b),
('a8e5baaddf8922389b7a7fb39b6520c398c9fe40', '95.111.237.59', 1633554892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343839323b),
('f7b57d0eb7d7c0a7276fc535d713ffffb227cb23', '95.111.237.59', 1633554892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343839323b),
('722fb1cf6e751ee9e4167f8d9ab9b0671f0f7747', '95.111.237.59', 1633554986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535343938363b),
('770e2272beabd191984301801df9a4f30253accb', '117.20.31.249', 1633555307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353330373b757365725f69647c733a313a2234223b),
('8d613cf6f9699ca3cd0f4b9c1dbd177035395888', '117.20.31.249', 1633556098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363039383b757365725f69647c733a313a2234223b),
('c9bc075b92c2ad071113bc0d85d8e1e7961bf108', '103.244.179.27', 1633555784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353738343b757365725f69647c733a313a2231223b),
('933b748a3b1097663e81c7fdc52c15ec332646c7', '95.111.237.59', 1633555902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353930323b),
('154bf0c5dc9ee6b5685252c6ae36d94e41efa9ec', '95.111.237.59', 1633555971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535353937313b),
('2fcc8fc36610b78fbbe5dcdb5e27c6c22348a9b2', '103.244.179.27', 1633556530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363533303b),
('16e0b7ec1a20cbfca895479a952fe8ffd06b42cd', '117.20.31.249', 1633560282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363032343b757365725f69647c733a313a2235223b),
('6d01e26a299fcbc13ceefe666bc1ad331f357d29', '117.20.31.249', 1633556416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363431363b757365725f69647c733a313a2234223b),
('76eb05e45e54e887a00c445c2d0f41199d6d97b3', '95.111.237.59', 1633556110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363131303b),
('fe55aef1763822fc6d008f4d745354204e89034a', '95.111.237.59', 1633556383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363338333b),
('7ed2e679eb6451762a5b014697223e337745fd01', '117.20.31.249', 1633560282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363431363b757365725f69647c733a313a2234223b),
('d264dd46b6e2115f22084dc44cbbc160c56b9081', '95.111.237.59', 1633556619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363631393b),
('11296b0d9f438edeb1aefefd8a6cf35a7e87f409', '103.244.179.27', 1633556628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333535363632383b),
('ca41c672da134b353be63b2f0e38da9432092a53', '39.57.157.205', 1633604202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333630343230323b),
('39ced899a2b204d8ff1bd64de39e342ad41c55f9', '103.244.179.27', 1633612468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333631323436383b),
('b2d2fff4063a199f0ea3564785546538e8874fdf', '103.244.179.27', 1633612874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333631323837343b757365725f69647c733a313a2231223b),
('adc39f4b7e61dfcfec0fd948bd0669f3aa8d2ead', '103.244.179.27', 1633616332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333631363333323b),
('3a4f7416d98694476ace840af09a84d4d07e8ffd', '103.244.179.27', 1633620430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333632303433303b),
('e9f30104e572e8199a54428a7de01d8668ab019e', '103.244.179.27', 1633622331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333632323333313b757365725f69647c733a313a2231223b),
('c4a7272746f876439976efbca1d95d2636016bd6', '103.244.179.27', 1633622335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333632323333353b),
('b46966cb210b911a343080d71969cd6dffe7bc89', '167.88.104.25', 1633626993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333632363939323b),
('ccae5cb4d9f203bf937625b6d47e6e5d91204a9f', '167.88.104.146', 1633626993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333632363939323b),
('24e965cd92800430f461c69e587301a8224b78ba', '117.20.31.249', 1633631461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633303331363b757365725f69647c733a313a2234223b),
('eed74968465c018bf64827f0d98ae47066914ea7', '103.244.179.27', 1633635876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633353837353b),
('fe57f235319c1cb31efd7058c8c51ae7d5e5c912', '103.244.179.27', 1633636307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633363330373b757365725f69647c733a313a2231223b),
('0e547bc0ac92d0aae578cec9571a464c56fe16b6', '103.244.179.27', 1633637337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633373333373b757365725f69647c733a313a2231223b),
('30375d2a50714d2b90072828751c8e2aa4cb438a', '103.244.179.27', 1633638567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633383536373b),
('4893f47c5069ff4c87dacd69375436b32f8e4ecd', '103.244.179.27', 1633638664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333633383536373b757365725f69647c733a313a2231223b),
('f5e1c892d6be9d26cba4f972f8fcf7b376d20060', '34.86.35.22', 1633644342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333634343334323b),
('e30c57997c13305d05681a6d7f0adbb586758e78', '34.96.130.6', 1633662859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333636323835393b),
('f7162e8c6e9f4d407a9f823421837bc5913cc7ac', '34.86.35.7', 1633750630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333735303633303b),
('bc0a2e52fabc3ac284ff55bc276826cb1b79424a', '34.77.162.5', 1633750914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333735303931343b),
('8b3e0547746928863b92d2482e4eab0a07c3d116', '92.118.160.41', 1633770844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333737303834343b),
('feb4cac5d2d6d561f9fe1b50526578bc771398d9', '92.118.160.41', 1633770846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333737303834363b),
('7fa74729988e3473439fa508a958ce4f8b4b22ba', '167.88.104.18', 1633817632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333831373633313b),
('35c1070eb0f9b24a796cbcb0abae00ec68678bb5', '167.88.104.163', 1633817632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333831373633313b),
('f3be4fc4669dcd07959699062aba9540f6051884', '92.118.160.17', 1633874040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837343034303b),
('eda7bc427c63b9bdaed2deb12a5921adbecd69ff', '92.118.160.17', 1633874041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837343034313b),
('8f9ed185068f92d5816af280f83d07977b1d9870', '212.192.246.83', 1633878340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837383333393b),
('b64e5c77af02f7e8d090512613454a608c591a2f', '92.118.160.5', 1633925652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932353635323b),
('f2202b1f057c56fc1256f482f62bf1751f2c91cb', '92.118.160.5', 1633925652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932353635323b),
('aa0433614433b7d6c817c4f0ae29723d7a4f7507', '92.118.160.37', 1633994390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333939343339303b),
('8beab76c5f94eccebf7cf0140f37dbdfd16b63a5', '92.118.160.37', 1633994391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333939343339313b),
('4751d0ad0501454c9d98109d00e66013a3f89d90', '34.77.162.8', 1634014548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343031343534383b),
('36e0ed9d391ccff048985b6c5cc1a8e415a51036', '34.77.162.26', 1634022572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343032323537323b),
('820dfd09d6991fe9f5dde7a86cee1ec37cff4ed9', '34.96.130.16', 1634042635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343034323633353b),
('2994094e5aef51912b82c242d082d73a6de24db7', '117.20.31.249', 1634050642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343035303634323b),
('7306c56cf93c9c2aa985177f4268ba037a7ef52b', '117.20.31.249', 1634053255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343035303634323b757365725f69647c733a313a2234223b),
('9af61817b02ab37c7593884450879a656f7707f3', '34.77.162.15', 1634101787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343130313738373b),
('8d6f79cc75ce6a681f3b4eb2bfc6daf84f17fe23', '103.244.179.27', 1634136154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343133363135343b),
('76b1e107bb1db29f194b9e7dbeb28bf81fd47409', '103.244.179.27', 1634136173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343133363137333b),
('6197871a12578c0dae5146014e6b64b94dcc599c', '117.20.31.249', 1634141241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343134303430343b757365725f69647c733a313a2235223b),
('491e5fd1502762f64ae4593261b70c737391b4fb', '103.244.179.27', 1634150744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343135303734343b),
('a79327fd62dff2ebdcb5fb8da7ba308071e781e0', '167.88.104.131', 1634199482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343139393438313b),
('f5ac4911467a19a3f566a6465552e08b100fe071', '167.88.104.50', 1634199490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343139393438393b),
('d2268f0429bedc6e4edd53ad2b5bcc9fbe4bc289', '103.244.179.27', 1634215280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343231353238303b),
('9765955c914d6e358cb94935ed3837e0cbdaf110', '103.244.179.27', 1634216016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343231363031363b),
('c6e41531e8c1d0a4046f26793bbd8fc1ec5bce98', '103.244.179.27', 1634216016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343231363031363b),
('1fb0f9d10616ba6ecaf1cc1f847ea96d61941de9', '103.244.179.27', 1634301982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330313938313b),
('af24aaf0d62a4a2eef583e312d627cdab9cb5c73', '92.118.160.57', 1634340485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343334303438353b),
('611b9908f412d2535ad25326642e177940a0ca05', '92.118.160.57', 1634340486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343334303438363b),
('df4ee08e21cc63ab9fc49f7376ed1eebd20983a4', '92.118.160.13', 1634384343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343338343334323b),
('3d8480213402574f2b4473528528d6f1091d9e56', '92.118.160.13', 1634384344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343338343334343b),
('f43bf54192b6a41e2c48ec44cdc0717d5d241edb', '167.88.104.57', 1634455451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343435353435303b),
('f6acbb9468a2e28020f5a2f8d873137a6904121d', '167.88.104.20', 1634455452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343435353435313b),
('5444ee82ac556a0abad02499a55bef6930c62571', '34.96.130.24', 1634588421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343538383432313b),
('fa84afda0fd8f702fa5d8daa0a01b25c85c54f24', '92.118.160.1', 1634588801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343538383830313b),
('b2248578c5a7d23d2a403a534b6a11b4d2ac34a8', '92.118.160.1', 1634588802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343538383830323b),
('79847e046f4fdd7f45ac3bba45efc60c80472382', '92.118.160.17', 1634626645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343632363634353b),
('900ec36a51c5e95474aaa5bec24f86e75832b2e6', '34.77.162.13', 1634686848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343638363834383b),
('c0baabf88cfff88aaf426f496c8657905d34f650', '103.244.179.27', 1634745081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343734353038313b),
('f72c4980fb8660dbf0e83fc0a8a2f7262f81d8c8', '163.172.148.199', 1635138702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633353133383730323b),
('6d3233f2c00afa7b5e8c6b43e7992ce12a4965fd', '37.19.212.3', 1635179577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633353137393537373b),
('3bd850a286dc297a9537f5907ff4ec12efaecfec', '103.244.179.27', 1635452724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633353435323732343b),
('f03ce65c5aee35a42f338e8b0580ff2ce1dbcbeb', '103.244.179.27', 1635452953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633353435323732343b757365725f69647c733a313a2231223b),
('061c839124b014e6ecca92dba489a22c89768243', '103.244.179.27', 1635776927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633353737363932363b),
('07258784902195077744b9483b1ac9115e921871', '103.244.179.27', 1636060116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363036303131363b),
('bedb4be918c0bb2df9c9deede7093415903800da', '103.244.179.27', 1636060134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363036303131363b),
('1e2c81c024e19fd09d82f38eb92eee7a43cb7880', '134.175.228.189', 1636085945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363038353934353b),
('038bf71552ff83718b1be91e9fc09189337eb20f', '134.175.228.189', 1636085961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363038353936313b),
('7544f69b605ee528ae942539d72ca192242dd7dc', '134.175.228.189', 1636085968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363038353936373b),
('2e305dbe7fc109805b51fccbfd9beb384f363ff5', '103.244.179.27', 1636402722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363430323732323b),
('2047cd5c3eb7394a538f0873e789a78d8d146666', '103.244.179.27', 1636402722, ''),
('fb656b8945efcd35ee679b5729a08787d9662e7e', '34.77.162.14', 1636457967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363435373936363b),
('e08dd7fabe756d652f9472f2a72faac595b8c9b0', '34.96.130.12', 1636477344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363437373334343b),
('906ba7a7fd58302239899543eb9440a8be68a665', '54.183.214.192', 1636563429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363536333432393b),
('9a7a0f6999e9f50979cc4bd807515e739f8debea', '34.86.35.6', 1636661163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363636313136333b),
('abe0cac8d87c4d39d6304b4ac4d5f89baefaad5c', '34.77.162.4', 1636712558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363731323535383b),
('c9638979cddbc63af68d284818228d3f7451c3c5', '34.245.224.50', 1636757599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363735373539393b),
('e48fc5ec119d7dd239221103de2f73001098abd9', '92.118.160.9', 1636816772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363831363737323b),
('ae3c65417d29ba7e2b573667ebeacc6b3e50302b', '92.118.160.9', 1636816773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363831363737333b),
('3e422a2f1493d321d87c125dcf72ab6b78b0ca77', '92.118.160.57', 1636865643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363836353634333b),
('6719199c1831c19b5259b7d16a68be0d72d9d518', '92.118.160.57', 1636865644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363836353634343b),
('685b618643338aaa714cca33531fca078bf57543', '92.118.160.17', 1636961700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363936313730303b),
('9628c953193f388a2fc8ba5d42f6e112e5fdd83c', '92.118.160.17', 1636961701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363936313730313b),
('62d414f707bf0eb71a31ec341ed5625606657232', '92.118.160.1', 1636991320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363939313332303b),
('914064dbc21fdb3b9069bace6a6daa560df555cd', '92.118.160.1', 1636991321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363939313332313b),
('55e435a8ddf25006305dcde2b78c8ef2f6a785ef', '34.96.130.0', 1637037150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373033373135303b),
('0fd31bad9a4d3efa000099e47b5cd4551b94367a', '34.86.35.7', 1637097002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373039373030323b),
('20aefe242ad9c532e81959bc1e4747430c0d684c', '124.126.78.159', 1637105018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373130353031373b),
('b6913c702f10533df816aca7a5f0073c59f63cf0', '124.126.78.159', 1637105021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373130353032313b),
('24c26cc5cea0dbf91cec7e8c5090c9a227248a79', '13.38.48.208', 1637166835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373136363833353b),
('be13135b730f43acea6903a924595a7747d76dc6', '3.250.86.188', 1637216107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373231363130373b),
('1a0236654b50b4c19c670ddcffc0740d1d429bbf', '34.77.162.9', 1637301344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373330313334343b),
('5849a13a40c59d5862658a350f3fce596614684d', '119.152.56.156', 1637345174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373334353137343b),
('bd99461768f4466ccc9cad4848bae053b781fb6b', '92.118.160.57', 1637356792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373335363739323b),
('f01f6ee950e102a90e1ccf3916c0120380ad02a3', '92.118.160.57', 1637356794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373335363739343b),
('6d9c41cde80832f2c0d32d87950f0c4dfa1b1f7a', '34.77.162.0', 1637372691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373337323639313b),
('8d268cd135b1ed2b2e08e129bc219d96223623fd', '34.96.130.28', 1637379427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373337393432373b),
('7ed228496d9bceedad5ab56e2da11c46a7194424', '34.96.130.9', 1637384982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373338343938323b),
('286c56a273cdb746802c2cf941a2bd3b4516a4e6', '92.118.160.57', 1637425726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373432353732363b),
('348356a0ba9e976a333b58af945cabf459a11579', '92.118.160.57', 1637425727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373432353732373b),
('f2157055c6b13f66e877ab34793583a786587c40', '92.118.160.61', 1637448601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373434383630313b),
('1fdb6c97a91aed67a4eb1648da9cbf99c045248d', '92.118.160.61', 1637448606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373434383630363b),
('c71645f18f499d44b355fc2c216b11247251ccdd', '92.118.160.45', 1637480172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373438303137323b),
('c2d006f2803cc1d4fc8067465f6d6d63626f8fb3', '92.118.160.45', 1637480173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373438303137333b),
('ebd92464f5c42e9c67ad5704d54f9dd3467d2b6f', '3.249.15.6', 1637571610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537313631303b),
('5668721acb4e82f58eee17bff9d077fc31c4715e', '51.15.205.3', 1638293572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383239333537323b),
('29d976d57411c9791c5a1fe78736432ecbdca1fb', '139.155.54.119', 1638355327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383335353332363b),
('3fdf08479e01e64ebae0089814b74569dc621c0b', '139.155.54.119', 1638355327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383335353332373b),
('a8f4df2ca9325e14bee99fa8d5c37ad998da9d1b', '139.155.54.119', 1638355340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383335353333393b),
('a77217cbb584a44bb9fb49b8f2db49f54f4478a8', '139.155.54.119', 1638355361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383335353336303b),
('369552ec5811b4b92072981c2f3e506bd7331356', '165.227.180.6', 1638398298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383339383239383b),
('37bfedf976bcc472ca29cb20ba88a90d91f3d0ee', '165.227.180.6', 1638398300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383339383330303b),
('42ce2ab3e4178f9b08d9f47d7ebca85ac8987247', '159.65.245.16', 1638841221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383834313232313b),
('8455c6a05b6c6c59e46fe9fa6523f49e5dbd9f1f', '138.197.105.148', 1638844297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383834343239373b),
('3d7c2e2822ffb47b868054188d413f69318edfa0', '103.244.179.27', 1638896342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839363334313b),
('c7371e933703696f9c8fd578afbb7960d8be5682', '52.114.14.71', 1638896357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839363335373b),
('1e083e7c8fd9d2cee6d4ed4d026b6b27cba31d2d', '103.244.179.27', 1638897011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373031313b),
('2a228942e29fa77b2cb73cbaee00b38ca723a6e0', '52.114.14.71', 1638896487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839363438373b),
('01f965cca415c13229686be6be89aea8a14b89b7', '103.244.179.27', 1638896510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839363531303b),
('159ea9abf9206ba3eeee6bb5161aff6709b3159a', '103.244.179.27', 1638897078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373037383b),
('cbb9046c9fdaa82d0ef0bcc5b350fffa38c009b2', '103.244.179.27', 1638897688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373638383b757365725f69647c733a313a2231223b),
('61e78a41b29ec91017899f835a1f2e109adbab8d', '95.111.237.59', 1638897468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373436383b),
('ca2fde42dfb87a9973f3dd39c2500842c139248e', '95.111.237.59', 1638897477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373437373b),
('c9b3cced78e168ed0031be127e8c6a4fde91471c', '95.111.237.59', 1638897500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373530303b),
('ca53ac77e4309fecdca9c66fc9b8ad2513bb60d6', '95.111.237.59', 1638897752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373735323b),
('a1c69982b5a19e0c189724382ddc19c60f802047', '95.111.237.59', 1638897774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373737343b),
('3447cdc9f306fca6022fcce95d6fc30a66a8a5d2', '103.244.179.27', 1638897820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373832303b),
('c811f02ccd0f69fa3d272569e7ef1da7de5ff5c9', '103.244.179.27', 1638897821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373832313b),
('840e672a4431a407abb6b9738bbc7bd60a01cc5c', '103.244.179.27', 1638902433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373833363b757365725f69647c733a313a2231223b),
('abd25044641d93c72152693e1f0a24ddfe404798', '103.244.179.27', 1638897856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383839373835363b),
('b1f508732c513d1ebec5d604ee5eb4a4a2989f33', '54.93.222.42', 1639119463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393131393436333b),
('9e0eb0c0bfe7593fa3efd813bb6df42236b838d7', '185.220.100.252', 1639620797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632303739373b),
('1b732f1f006ef6edf39814574162cb351b22e4b6', '185.220.100.252', 1639620797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632303739373b),
('651a626c77e1e6011b369ba2356daaebbae3b307', '34.238.119.246', 1639623029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632333032393b),
('06f86d0b6bf71cb02ede1e9a0fea526fc8565f03', '51.15.43.205', 1639625181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138313b),
('fab1745e5839cfb6106bac4f309f88db9b611c72', '51.15.43.205', 1639625181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138313b),
('43f020391f962d8b0929bc649f87caa865a10765', '185.220.100.252', 1639625183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138333b),
('17eb23b1b022c4c0f7dfd7ad299aaeecd2d5cf55', '185.220.100.252', 1639625183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138333b),
('910ebc22b7bb59de2c6378d01c025edd37311a1c', '51.15.43.205', 1639625186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138363b),
('90583f4b9229bd6bcb02104bce306a3b374c4d22', '51.15.43.205', 1639625186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632353138363b),
('f728223cafe0e8ef602a618ce4f143626e09a415', '70.42.131.189', 1639633079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393633333037383b),
('0237cae90e0c741c0cd82b55df1e7483abf1eebd', '221.130.37.150', 1639651234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393635313233343b),
('f9a746edd59d0dd5bb587e64fadf8277f71fe2af', '52.114.14.71', 1639668525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393636383532353b),
('dff31536b1d60f6a87e9764726819a08d25283de', '52.114.14.71', 1639668526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393636383532363b),
('6bb990d5af24ddc6c0e8a7adb3d34b212363b840', '103.244.179.27', 1639668878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393636383837383b757365725f69647c733a313a2231223b),
('a07200a899ef470b08a1d788d262ea85adb7357f', '103.244.179.27', 1639668870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393636383837303b757365725f69647c733a313a2231223b),
('82d553f5706bde4429855150e2d6dd1ab3e144bf', '103.244.179.27', 1639669176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393636393137363b757365725f69647c733a313a2231223b),
('0d41cd311767bc7d05f26215dbb1dd8381ccdeaa', '103.244.179.27', 1639671384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637313338343b),
('151d78885afe47bab3594505a6d8c43adacbdb52', '103.244.179.27', 1639671187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637313138373b757365725f69647c733a313a2231223b),
('9730b9307e512453341207cb328ee0d1045c1922', '103.244.179.27', 1639671527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637313532373b757365725f69647c733a313a2231223b),
('c2398a6768f615612aea9bad27fa3d890e6dd45e', '103.244.179.27', 1639672192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637323139323b),
('22f9777121350f1dbba1bc1f31e6a9f61df1eaf8', '103.244.179.27', 1639671833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637313833333b757365725f69647c733a313a2231223b),
('635edb90c55a007ffe13dd1bb728392edb28e91d', '103.244.179.27', 1639672158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637323135383b757365725f69647c733a313a2231223b),
('3b29ce4d931877a40b9656473acf1f2d63297cd5', '103.244.179.27', 1639672171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637323136383b),
('f7b59339ee371df132c4a70c75b4ba30b3da9f3b', '103.244.179.27', 1639676150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637363135303b757365725f69647c733a313a2231223b),
('aa4a980c4656f95f9a346c4ebcc6f48fafee7941', '103.244.179.27', 1639677820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637363135303b757365725f69647c733a313a2231223b),
('6d5e942144f4700e8579e3934c7bc6c7fc95b35e', '45.90.63.159', 1639678591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637383539313b),
('ca21dce94b0866f2a82cb9fbe3445cbd0ebc0564', '176.113.43.147', 1639678592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393637383539323b),
('8bb1a551c514dfb752407e5108c30dbc03d1d19a', '89.104.101.9', 1639683208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393638333230383b),
('4086460302ddab9e8de59d5ace47a04813061898', '45.90.60.13', 1639683208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393638333230383b),
('e15e52ca08a92c02e8db7541f75237665716b238', '103.244.179.27', 1639693192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393638383739343b757365725f69647c733a313a2231223b),
('dccdba43fbd45ec2c9c66bc4f63903970aea6b75', '51.15.191.81', 1639738134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393733383133343b),
('29d18f6220b28130dc7c11ae07bdf884948af01b', '195.154.61.206', 1639738839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393733383833393b),
('83dc6291273f736058481d622440030a229dfc14', '62.4.14.198', 1639741521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393734313532313b),
('52320aebd2ee3f01b395254e64230fad10a4779b', '195.154.63.222', 1639741545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393734313534353b),
('5d5e0ee7c054e2582049d83e2243ea9c1b8b20e1', '195.154.62.232', 1639745177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393734353137363b),
('ef49d923c13a31b660ea9cf83ae540f8c3982e52', '51.254.49.110', 1639747060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393734373036303b),
('5aafa80cf5d6f1c46d2b34b12ce060d54d7e7be0', '42.236.10.125', 1639751637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393735313633333b),
('f31662f276f397590766f4201a7f16641aff44f1', '123.6.49.6', 1639751719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393735313731353b),
('726f334ddf72b6cdcf4868c2d94b29eb9bcf91bf', '123.6.49.4', 1639751722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393735313732313b),
('ad834d7b46ad32870cb1f2209e03d82e9b2de664', '176.53.216.16', 1639765555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393736353535353b),
('4e118d2ccd03a7be2961d3f158148e4369319e72', '89.104.101.83', 1639765555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393736353535353b),
('db827798459cb7eb4a67b7b58b3569c56639e8c7', '176.53.221.17', 1639770551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393737303535313b),
('da9ea362a1f3cf4d40b4462f4742480c01aff134', '89.104.100.232', 1639770552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393737303535323b),
('a6ebfdc5833bd8a295633e05f31ee16e48957a64', '171.13.14.75', 1639776447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393737363434363b),
('8544e690ba063685339c8fb437e9596f9f4d70e5', '171.13.14.83', 1639776515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393737363531343b),
('6ce57ba800f346062aee60d41cab7a742306dc5b', '36.110.211.66', 1639842997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393834323939373b),
('b36dc446653d4679b45ec40174ea9c41d68933c7', '36.110.211.67', 1639843000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393834333030303b),
('4c00f2e0bcee57ecde35bfb1004cbef0e13ff35e', '36.110.214.195', 1639843002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393834333030323b),
('460b7ce1985e1b5e1621c270c955a69505bf6e49', '36.110.214.195', 1639843002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393834333030323b),
('4553e5ad32eeb5afa355130b65205336a8e96018', '195.154.61.206', 1639879806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393837393830363b),
('622f04bf8d0e7338c17ff847dbe754daffdd671f', '167.94.138.115', 1639941262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393934313236323b),
('c525c481999266e5cbc18b70eb1546f9a5e5b86b', '167.94.138.115', 1639941262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393934313236323b),
('a4c7c5cb96cfbcd158b2de475f4f102732563276', '167.94.138.115', 1639941262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393934313236323b),
('6afc75639b273914470a44a85206875ed6aecfba', '167.94.138.115', 1639941263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393934313236333b),
('f76024868010d77577978b469b2775b34e1cbe14', '34.86.35.27', 1640045636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303034353633363b),
('8296eb9d3ff15911ac531bd2e6292ae84fef93e1', '42.236.10.125', 1640055819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303035353831323b),
('119ac03b5092b17860d81663c07c629ea0537025', '123.6.49.36', 1640055859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303035353835383b),
('fa3c5d6066a3ce7ab9c1a3d9c5176be71023ca77', '34.96.130.29', 1640075876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303037353837363b),
('af10be8df6edbfb5b5da999825c80808eab447ac', '34.96.130.31', 1640078133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303037383133333b),
('69d47765e69c91a414ffdde6b453325e6e8dfa15', '34.86.35.6', 1640084623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303038343632333b),
('f6550f917569fdfab39f276c6b30754398443667', '103.244.179.27', 1640209183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303230393137343b757365725f69647c733a313a2231223b),
('10f730a0d79beaf0281273cd620e5a55264e4264', '34.96.130.24', 1640290831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303239303833313b),
('6b2431a32e2c9273871955506e9123884c6766c4', '54.216.12.171', 1640428281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303432383238313b),
('869457874fd236bc7c9fb0a9a5c774c8559c9586', '92.118.160.37', 1640568763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303536383736333b),
('9d15ad5554dc5c4fa8f2e35a094bccc835856600', '92.118.160.37', 1640568764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303536383736343b),
('f9f06ab5805c80f599b98249835c4eddc3c55bc8', '34.77.162.25', 1640648986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303634383938363b),
('4e4e0da76efe9ff6c2777bc184d703b40a548ac9', '20.39.35.179', 1640733405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303733333430353b),
('85917a43ca86ddd03cd072512bf41f2f72ff8fd5', '20.39.35.179', 1640733405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303733333430353b),
('937694bbee90b631db039ccd1becb2d5e0ce6006', '51.15.251.143', 1640883494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303838333439343b),
('963d4c4d983baa49e9d4f972c41bedb418c9329a', '34.77.162.14', 1640936480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303933363438303b),
('80858205aac4f2b8d377a938264e2c0ade7c06a6', '34.86.35.31', 1641004375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313030343337353b),
('9d294f7525d18d2cb641e5efaa3c893a358530a5', '34.96.130.28', 1641004935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313030343933353b),
('eda365f2b6add4d9e335be29d2dec26f932219ec', '34.77.162.2', 1641006406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313030363430353b),
('27c8207129813f891143d5e81f07072be271d645', '92.118.160.5', 1641095822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313039353832323b),
('539b6c00f6402378dd0bab611d934d9ece3efb46', '92.118.160.5', 1641095824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313039353832343b),
('7450e6eb3c97725430115739822fad7dfd761175', '92.118.160.9', 1641163634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313136333633343b),
('b03cbf7f9828de966b02c32bcfdb674595d58bcf', '92.118.160.9', 1641163635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313136333633353b),
('d1d4dfa2aa1d340e352f6652dc8c474da91133f7', '164.90.140.113', 1641168429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313136383432383b),
('99e7fa8a2ea01c34e74c0952a858a6c98996fec0', '164.90.140.113', 1641168431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313136383433313b),
('cc64aca4fa39c6fd814eb97604a5cf3e40c641ac', '92.118.160.41', 1641208991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313230383939313b),
('069f7259a312b996b15087c87a394cae64c9ed7c', '92.118.160.41', 1641208992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313230383939323b),
('cff6478aa51de8d39ae18ad30ac4c2e20c2e973b', '18.144.101.16', 1641389435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313338393433353b),
('eeb1f28a1a8df9d844f83f0eb5655cdb09c82bf0', '124.29.228.68', 1641391412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313339313431323b757365725f69647c733a313a2231223b),
('441f18b8c0e1d360ea1f468faef1800b8c6d5943', '124.29.228.68', 1641409867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313430393836373b757365725f69647c733a313a2231223b),
('38375e3f4c5bd88b254e7bb53d2a151e26fdb8eb', '73.26.254.160', 1641410133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313431303133333b757365725f69647c733a313a2231223b),
('a54f061a002ac17e52cf1f3583a304adeda7b345', '124.29.228.68', 1641410292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313431303239323b),
('4e6bb178181fecf21b4ea5db38b98644878095dc', '73.26.254.160', 1641410701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313431303730313b757365725f69647c733a313a2231223b),
('e0ea9c7700e11fe6bcb2d55c2228d966f54f1c61', '124.29.228.68', 1641410292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313431303239323b),
('46ccf797672b1936c35266189475b300f6945af9', '73.26.254.160', 1641410879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313431303730313b757365725f69647c733a313a2231223b),
('b84a03f20146eb8289210ac05a6d442fa5b120cd', '209.97.145.198', 1641616319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313631363331393b),
('62abe348f6bfe59ba7b9a3eef16a3867c3089ea1', '143.198.22.91', 1641618074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313631383037343b),
('7a05581c1911a67edd9102e921d57386604c5b59', '3.9.24.82', 1641752532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313735323533323b),
('d86ccf0e35a386c448d2bd3b525952e931cac300', '124.29.228.68', 1642606571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323630363537313b),
('1f8b6b105d4a210bb8b1723bf2be49a3c4e8d38c', '117.20.31.249', 1642635361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323633353336313b),
('e14012a4978825b0729a10d3014e3513f1df98ac', '221.130.37.173', 1643559011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333535393031313b),
('4b93ba15407d0103c7684d1caf36aa18fdbe937e', '221.130.37.173', 1643559022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333535393032323b),
('a1f4ddf61594ba10d511c32b50daeec2eed54a86', '167.248.133.44', 1643736868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333733363836383b),
('e13c615dffc791fb6ecd317fc4c6fc89b01eb7c7', '167.248.133.44', 1643736868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333733363836383b),
('204cd66130012decbe6f7641a3a27b133310b17e', '167.248.133.44', 1643736869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333733363836393b),
('41d319008fe8412570478ceb39ea1ccc11ea6862', '167.248.133.44', 1643736869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333733363836393b),
('5d875dd19748a96d706f5fbde23773c574f92c4f', '44.233.116.232', 1643987704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333938373730343b),
('adebb85b0e7f1636ad65715d86ea036ee292d6c9', '75.119.138.152', 1644067671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343036373637313b),
('8a6aab887dcc26bed3ac5820d086803c3a81f546', '75.119.138.152', 1644067672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343036373637323b),
('99909aa56dfa8d7f66d08287e9879704872940f1', '167.172.241.26', 1644101563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343130313536333b),
('107f3fde11e1960fbcb6461e3b9c9733712ae2ca', '157.245.223.183', 1644104053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343130343035333b),
('7681dc40f0ab742626af9f6a093961525b565530', '54.205.123.192', 1644270634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343237303633343b),
('a442f3a33a9140844c581793643f11f97f93c0c9', '54.205.123.192', 1644270634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343237303633343b),
('8ce80ca4fa8f475e08ca655e2eece90f947e43dc', '54.205.123.192', 1644270635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343237303633353b),
('f6eaf5df59ce71f390df05b285531bb7b46a73b8', '100.26.52.66', 1644273909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343237333930393b),
('473d7ddfde9fd834d3899b5e4afd47eea8a2b8e5', '18.206.55.48', 1644412148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323134383b),
('26991b2f75fa452ad09f6a5b1a93233d59d34d20', '18.206.55.48', 1644412149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323134393b),
('9500073185aef72357ae69ecc2327579dfbffcee', '18.206.55.48', 1644412149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323134393b),
('e2805839bfd35ca63e9e2c256be0e420e3320714', '18.206.55.48', 1644412397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323339373b),
('ceb7420394ee4647a54f38c35305d2bb4b558d34', '18.206.55.48', 1644412397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323339373b),
('a5cbae577d76b23bdacf2ff780069fd1a389cdc3', '18.206.55.48', 1644412397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343431323339373b),
('7c10a24f87162ed95ae156bbd8eed1d496c81b38', '100.26.52.66', 1644431116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343433313131363b),
('1e178a5bc26e938298fdbffda603e4794d53811f', '100.26.52.66', 1644431641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343433313634313b),
('f2d449dc765205f2c190b7da0d1166edb94205c2', '18.206.55.48', 1644534399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533343339393b),
('b1d097dcfa3d141d2a61c234fd67c3f3ae337f35', '18.206.55.48', 1644534400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533343430303b),
('0328aa83519cc2967067f71b2fed3cbb66300138', '18.206.55.48', 1644534400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533343430303b),
('212a1691308ef8a54b36721b46f8aa16a97b4cf3', '18.206.55.48', 1644535765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533353736353b),
('cf101b9c10e4c74885f614589515cd4a52d15290', '18.206.55.48', 1644535766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533353736363b),
('520301ee4326c0d52f8116359b3b387c606c4cb9', '18.206.55.48', 1644535766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343533353736363b),
('7218396b414ae2da3bb428c0c91759f3e2fcc870', '100.26.52.66', 1644545143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343534353134333b),
('798d5484ed81a89e851e8d9b33240604da2f4e45', '100.26.52.66', 1644547605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343534373630353b),
('479a415bbb32ba880fd1c21034f01e194fde0901', '18.206.55.48', 1644624232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343233323b),
('e49174b64b5d954b3be23fc67bfdc9604d666fef', '18.206.55.48', 1644624232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343233323b),
('6e0c55fb37501616b0f85ac00e9f29cca97a700c', '18.206.55.48', 1644624233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343233333b),
('8406afeae60ccecb44ea9e6c12aa61dc6087a6a4', '18.206.55.48', 1644624963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343936333b),
('b90f915cf31ff802e7a838c0b16622d26d3281d9', '18.206.55.48', 1644624964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343936343b),
('ff074d6d6c1a76599e058a33292231a61eab340a', '18.206.55.48', 1644624964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343632343936343b),
('df927612ce3159ceb256c4b3562f798c9d7e0333', '100.26.52.66', 1644630713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343633303731333b),
('da1fafe24d85e6fe651ae1ce434339c5ce2d1bc1', '100.26.52.66', 1644632293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343633323239333b),
('94c6141f2f42c26e2424978f3f8660a0db911391', '18.206.55.48', 1644675690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343637353638393b),
('07191822e8c8b413f9b8a785680c6491355c6ba8', '18.206.55.48', 1644675690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343637353639303b),
('a8e492a154f899b98269720d29594c272ff65fbc', '18.206.55.48', 1644675690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343637353639303b),
('b3a5fe3a5ecae0b41646ed0e879733114ad81e42', '34.243.209.242', 1644677626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343637373632363b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8304d89ed3f2ce2013c392258b5524e42ad8bc37', '100.26.52.66', 1644686660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343638363636303b),
('40a233cb5b5d655704f3d607014362ac866431bb', '18.206.55.48', 1644803860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343830333836303b),
('22b127f12ad7044b9edb2ebbc10caba2c79c1b86', '18.206.55.48', 1644803860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343830333836303b),
('32ba4a1e3f3d22c5db2fc1e2a612a696f30681ff', '18.206.55.48', 1644803861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343830333836313b),
('fa66e5ace84c0a3e7d7508ddd95b9145aad42430', '18.206.55.48', 1644912097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931323039363b),
('3747bcf9894ad6577a5cfe464875f0ff5e0e1cfb', '18.206.55.48', 1644912097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931323039373b),
('72a8c40e7127554812ed214d92f6384a4aaf9c28', '18.206.55.48', 1644912097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931323039373b),
('b3aeff67240e0a5c7177663706109d8fa6ae888e', '100.26.52.66', 1644918095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931383039353b),
('5a5326ece28b979ff980653121344d1e0879e001', '18.206.55.48', 1644919249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931393234393b),
('a0b4a5884735fd055d300dbf18bb00e794afdc63', '18.206.55.48', 1644919249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931393234393b),
('ef4be659118336fa0367cde0ecbf03146b7b8443', '18.206.55.48', 1644919250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343931393234393b),
('cb0a09a72f4a72e67196f65fd5686744ca9cebb8', '54.227.32.154', 1644928983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343932383938333b),
('5259b9006bd40e011c44061eaad3f03bf3416f72', '18.206.55.48', 1644968729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343936383732393b),
('36c99fe70053e8b36b240fe297fdacfed32810c7', '18.206.55.48', 1644968729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343936383732393b),
('e8c21f53ce99251ea8e25ae23616dc9eafa2a098', '18.206.55.48', 1644968730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343936383732393b),
('f110d2bcda5d8f190f4abc63efe176a2a1c8ea14', '18.206.55.48', 1645022259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032323235393b),
('9b6412369575d708c26e5d62eb72d58f4848d42d', '18.206.55.48', 1645022259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032323235393b),
('78759c03647c564bff9b753241f3bab2d6a9be13', '18.206.55.48', 1645022259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032323235393b),
('6f86b78f798e5d528041eaa5472012d6c5dc9cc4', '54.227.32.154', 1645024030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032343033303b),
('f5bca47f947a3365a4ffdaaaac760ed98eeaf05e', '18.206.55.48', 1645039121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393132313b),
('229662499b587d62ac5c4fc7dd89a9f3895903cc', '18.206.55.48', 1645039121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393132313b),
('3688551f4ec0fd6ac740a539eb7c3e5a6f39bc4e', '18.206.55.48', 1645039122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393132323b),
('80c72a7c7b6ceac246bc457f0206df1ec1685e52', '54.227.32.154', 1645042982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034323938323b),
('c7b5196c91d658045e95cde5c7bd4c2430bb85cd', '51.158.118.231', 1645051871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035313837313b),
('4373685b8921747d547349fb9db39a671a11704b', '18.206.55.48', 1645152966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135323936363b),
('1379857d29103811dc26715d090b31e832b9e636', '18.206.55.48', 1645152967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135323936373b),
('85a47cb210be01a58d9325ddeb8c2590fa1a0f5b', '18.206.55.48', 1645152967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135323936373b),
('0b05cda59c8ee1b3f9058a0ea9390209625bcbba', '54.227.32.154', 1645153505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135333530353b),
('7f61f8e86549cd981ba505710268f189d9c363a9', '132.232.81.163', 1645181492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138313439323b),
('70c334f8235b33ced016e32eaf9c36d1e1b0b588', '132.232.81.163', 1645181500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138313530303b),
('873075ee35724ad28aeb214d0c5ab0426f0bf328', '132.232.81.163', 1645181525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138313532343b),
('624340eef5a960be5e1c09590f634f008c7c9c23', '132.232.81.163', 1645181529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138313532383b),
('c02ae38b8920faa68417411775eaa24fe1294f0a', '18.206.55.48', 1646037603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033373630333b),
('ea365c8f35b4cbad545f1bdc5c96e9a13de26222', '18.206.55.48', 1646037604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033373630343b),
('a2da7a65a73a04885d03967e2c508a778e58593f', '18.206.55.48', 1646037604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033373630343b),
('e0078a21fcfdacb4de5d73d6731bc0eb829f128a', '18.206.55.48', 1646038979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033383937393b),
('efec2cecdbf68600d7a4074ffe16ad3fc94902a8', '18.206.55.48', 1646038980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033383938303b),
('999ed6f998bd32f74b280ad5639770d9ab68539b', '18.206.55.48', 1646038980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363033383938303b),
('eb75231697bf1fe4358a80c94950e5b9c9bc64a3', '111.206.170.109', 1646316301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363330313b),
('170dc9f7e079c0dad8d40cb0b35bd7151d7ac54e', '111.206.170.119', 1646312321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331323332313b),
('16622fb9de9fbe578e013a2f62b59495f69203b3', '111.206.170.103', 1646316277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363237373b),
('e72593930a963a99cd1e3d0a560451facb4645f9', '111.206.170.99', 1646316277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363237373b),
('52da3b41286ee25be635bd03a19a7dd783d4c1b5', '36.110.211.3', 1646316290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239303b),
('1ac8f1c9f2b6ac7ce94a7280695eae9cd216bbe9', '36.110.211.66', 1646316290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239303b),
('646cca95f18805562441d1d5a441dd3b11794ad9', '1.192.192.6', 1646316291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239313b),
('69403386b7de07c3595f217b71b28e5e0b25e8fa', '1.192.195.8', 1646316292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239323b),
('1b27b49a87b7f16cbf4d4004cc92c876545f8725', '36.110.211.66', 1646316297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239343b),
('ef7e12fe588a52af2ab4873eb3af49d28c908e9d', '180.163.220.44', 1646316296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363239363b),
('bf4aa20fe66ac66f1922ead608fe803126f62d1b', '111.206.170.106', 1646316301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363331363330313b),
('98816a0879b2d96b925d62524ee508dc2578ae99', '221.130.37.173', 1646396323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363339363332333b),
('a768e50ab989a865641c9ee5bfb742a17eb3e4a1', '221.130.37.173', 1646396372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363339363337323b),
('98fea639956e5b789f98ce9a916904df69e13da2', '89.175.184.250', 1646532742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363533323734323b),
('1f5d06afc315d6d704a2513d43c4bc6697423fa0', '205.169.39.13', 1646532753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363533323735333b),
('1dcda254555c1b89ebb6c21ba8a34c4a6e77c697', '176.113.42.191', 1646590761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363539303736313b),
('37a8b99a56589b6cbf4ad698bdcafd9a7bbb31a8', '176.53.221.236', 1646590762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363539303736323b),
('61a47c34f5983f2a0cb48a76b9479e074091ab97', '176.53.219.253', 1646595485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363539353438353b),
('62e12814101fc65f2849f91cd009148f44c3269d', '176.53.222.104', 1646595485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363539353438353b),
('8ca6554770bef3b6ed92dff4ac56b6148f3a0e5c', '51.255.62.7', 1646661267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313236373b),
('b025e9b4f681dc4f8ed94dbafe57de66ad748eb3', '51.255.62.8', 1646661267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313236373b),
('52390a1312b864b0054c4b89aa087d10ecaf6987', '51.255.62.14', 1646661267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313236373b),
('ab03bc60a93e0cc2024b97d0d661a9b22e59291e', '51.255.62.3', 1646661267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313236373b),
('a6e2f827b133eaa14bb8c1b58a09fd53d91e8549', '188.165.87.98', 1646664473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636343437333b),
('713be7b809e2943db0b40ce429a53d095ebf14f9', '188.165.87.111', 1646664473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636343437333b),
('eca78c5291322572b133415086011f7a6a56ec72', '188.165.87.109', 1646664473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636343437333b),
('97e73e3bfd4ed4112c62c214087225c4dfcdfdab', '188.165.87.98', 1646664473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636343437333b),
('43f63d82c02533f9396f783c1b73f287930e76ab', '51.254.49.108', 1646665225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636353232353b),
('ea63157d2c830cf78b80b37b8a3ac0e521907140', '51.254.49.110', 1646665225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636353232353b),
('7122f567d4ce0e181cf3f99a59275bb7333f1419', '176.53.217.75', 1646681436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638313433363b),
('46757a32564ef3b445ec1588080609ea0e9cdf31', '176.53.216.105', 1646681437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638313433373b),
('2e171dbf48b949b7645ec85a2b4912eef5d76eda', '45.90.63.39', 1646686675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638363637353b),
('315711fff0ce2aef328718bad9a0d6297d3c92e3', '176.53.217.53', 1646686675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638363637353b),
('9bf35bfaa8e24624cd5d5e5da91ceb0ad6a9eeda', '51.255.62.4', 1646782261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363738323236313b),
('92ba1e8a576b4683427125338ddd017655fe0cfb', '51.255.62.6', 1646782261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363738323236313b),
('5023d66c32df23f69b136958276e251d7ccadec9', '51.255.62.4', 1646782263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363738323236333b),
('4f6bc25752c4217c73143cd3eebecfb8fc38703f', '51.255.62.9', 1646782263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363738323236333b),
('c8fea3f3b74e9005d962f580bb565200996f66f8', '51.255.62.5', 1646838057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383035373b),
('4e20213a91f41c12e469d2cf8cee45faf3705a4e', '51.255.62.14', 1646838057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383035373b),
('194991d9ef3b0807b3de2b2396a2792b1d9e3fd9', '51.255.62.7', 1646838058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383035383b),
('23361bf75894704c919d1bc0a6eb811d23e72ba4', '51.255.62.0', 1646838059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383035393b),
('a5c1841989bce0ad67f16d4a55b48e9709cd160f', '51.255.62.15', 1646838062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383036323b),
('acf9a50338a2a0a5a5899a7f5f90ca94d29b059e', '51.255.62.3', 1646838063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383036333b),
('d62169d08969fbe9318b3f16c7f5a2d1c35f1277', '51.255.62.1', 1646838074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383037343b),
('3a121eae72aaac32db008c08628edd53c9321de6', '51.255.62.3', 1646838074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363833383037343b),
('1f22c9b6b4560227927a27a6230b818b4155ac5b', '188.165.87.111', 1646843858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835383b),
('6f8231a1699ca80ab213174a4090a242d6667627', '188.165.87.99', 1646843858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835383b),
('3d73ae63b7c7a568eae2b17ac8eac0c6c03966df', '188.165.87.96', 1646843858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835383b),
('71d6968ac3b6980fb75aa68be59973c791e966bb', '188.165.87.97', 1646843858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835383b),
('b94c8a0ab9b283de6d94a447c0c95a4169883ed2', '188.165.87.101', 1646843859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835393b),
('50577f0a4d109a8f11c7116666b8ca5161aecc4a', '188.165.87.101', 1646843859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835393b),
('122e89d293a13470e2072d5ea2f59d8ebe6fed68', '188.165.87.98', 1646843859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835393b),
('8306c77b6983281d1af4b05618faa13bd9f23ad2', '188.165.87.102', 1646843859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834333835393b),
('268502531c8d3f661ab9da083722fbd109d50c9b', '51.254.49.98', 1646846378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834363337383b),
('b75d33d897ce857665d562a78ef1148d620b5514', '51.254.49.107', 1646846378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363834363337383b),
('ab150d660da17e5630f114f23e87d2b72f9eed7a', '174.138.63.123', 1646884971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363838343937313b),
('7c775b8d267ddbb9fac168506079175380d80d65', '15.237.122.58', 1646887309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363838373330393b),
('cd0eb5f0a15eb2d1837c834d14d3a328337cd3c6', '64.225.50.72', 1646894697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363839343639373b),
('40991cfffbc290ebc6c3b9c4ba94957bc1f70ed0', '34.77.162.4', 1646951921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935313932313b),
('ef00437a893e09c3b00e23813b06604113db8508', '51.255.62.10', 1646956254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363235343b),
('3beb1a0df87c8490c2273e5eca687abcfbcb2707', '51.255.62.1', 1646956254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363235343b),
('629a28c8493687bc3905b0ebf5f10731589d714b', '51.255.62.14', 1646956302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363330323b),
('1520ac5d20a6799108f718c910fab26051c17da1', '51.255.62.3', 1646956330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363333303b),
('8dda26b26990f3e86b293ba902d1eb7e098ea979', '51.255.62.5', 1646956330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363333303b),
('4b9be30f8f1a2fefd3b6f78c9fb005e291c96494', '51.255.62.1', 1646956331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363333313b),
('d2bfb514f8f08c5e9d5d496864ddfe9697dfb604', '51.255.62.2', 1646956389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363338393b),
('eab19eaca440b3e7d13720f6ac50b6d83738b331', '51.255.62.13', 1646956415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363935363431353b),
('1e6884bdf31c82ee9dcae10d22916ab92213f45a', '34.96.130.15', 1647009996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373030393939363b),
('522547c3b75a721f2fe562d1e6235fbe4cf0ff02', '51.255.62.1', 1647010526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031303532363b),
('d9e3ffc833ba4de64d67aeeb2a7cbb3933b4f888', '51.255.62.15', 1647010526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031303532363b),
('1f07b4262f5e51c4e11add4a49131db21199b5db', '51.255.62.6', 1647011222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031313232323b),
('955cb92f784e53a2a04fabaa84345caf556c30c1', '51.255.62.15', 1647011222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031313232323b),
('804cab3417b84dccbc10a52ac237de2fb07b45cf', '51.255.62.5', 1647011298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031313239383b),
('0ac4eeb0665edb4d39eb13b148f5e1e1eb4bbf0b', '51.255.62.13', 1647011298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031313239383b),
('488c6ca2b49abfb30e15ad49d3eef7804cc46713', '188.165.87.106', 1647013534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031333533343b),
('7319947ae4c52245e28700c15a102dbe12019187', '188.165.87.98', 1647013534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031333533343b),
('587b3a8da6908903923535def9b89020e27a7ed3', '188.165.87.109', 1647016673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031363637333b),
('75e51d9cc75bd2487ec3b0522fcd744ca78e59fe', '188.165.87.108', 1647016673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031363637333b),
('2d7f9c63e6fd5be66e84915496cfdf5edbdf462f', '188.165.87.106', 1647016673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031363637333b),
('d480627f8bea964d619f51265628c63fab875f6e', '188.165.87.109', 1647016673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031363637333b),
('bc26a216e4c93a887162eee3e8935149ad7d2341', '51.254.49.100', 1647018705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373031383730353b),
('0e9d913b0bb02a0ed7fbd8fb1554058ca9132cdb', '124.29.228.68', 1647029151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373032393135313b),
('e7896db5e708e867f85be72a2b035f4aa82ca4aa', '34.86.35.3', 1647032328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373033323332383b),
('0425062c9db2e976d7ab36dad60f613b066df56c', '34.86.35.4', 1647041678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373034313637383b),
('7836342135a51adc50148e829e364eb8c9fc932d', '51.255.62.13', 1647130151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133303135303b),
('548c8283795e42ff779e18fbf46f589f567993ff', '51.255.62.4', 1647130151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133303135313b),
('9c158ccb8fbf9f311a176a48801f5db8a6fca504', '51.255.62.14', 1647130686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133303638363b),
('e042486a97c87f58debadf34c646f4470bd0414a', '51.255.62.1', 1647130714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133303731343b),
('faaf552b3d6c1a76188c2955ef82de57a2feb4ac', '51.255.62.15', 1647131060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133313036303b),
('f9126afedda4f536014533ab6a4c3efa0db0f0fc', '51.255.62.7', 1647131060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373133313036303b),
('76f50638cd18eec4465a7c02ea0ee287b802deaf', '34.86.35.0', 1647410489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373431303438393b),
('1e633772245eb1c787d70b10d9341b7887050fd1', '35.87.69.154', 1647651554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373635313535343b),
('9eee83660bd3eb116996a0db1d8b5070a8031919', '92.118.160.61', 1647660027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373636303032373b),
('9b7b24a9b5dfcb75aae3e61e89181515cc2ef253', '92.118.160.61', 1647660029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373636303032393b),
('4185ee33fcda22e0ce79bbc45867ce3a043fe6d4', '144.91.106.14', 1647902912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373930323931323b),
('62709810341f7b154c00f8a2bfa55b0c305bd390', '144.91.106.14', 1647902912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373930323931323b),
('ac31d750393e357e7ef3dbc13138d925d6013b55', '144.91.106.14', 1647902912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373930323931323b),
('612121b84181a3a7a34e8ad6c8031d03824133e2', '144.91.106.14', 1647902912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373930323931323b),
('e1e2197f45e25c38451669329c78e246af649106', '124.29.228.68', 1648051845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383035313834353b),
('fb333d581284d0a7a1d89dbedec432b1ca5bd91a', '51.158.127.119', 1648179426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383137393432363b),
('6111994b8028019d299a2462d32650f7af146297', '178.33.149.171', 1648328233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383332383233323b),
('51ec4ced14fa2e12dc910699f8c7f11dda46dcc5', '178.33.149.171', 1648328233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383332383233333b),
('c6b57fb693b13992f4c50008f2495aa8fb0c89e5', '148.153.85.3', 1648710867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383731303836373b),
('57421bcafaf84a79a3d0528961f5b0b76c0fde26', '68.183.52.111', 1648930661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383933303636313b),
('0ee946be024e2db138cddaed8f5d5ca38e555022', '68.183.52.111', 1648930663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383933303636333b),
('e381907819761c0c266ebf0a0531ec0272b9a4a2', '159.89.182.48', 1649196111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393139363131313b),
('94eb03d28062c3f3816bd9e4f126ee5917124982', '157.245.112.128', 1649199227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393139393232373b),
('a73a7956fa358159bca3186e570bdcfc03a41ab2', '167.94.138.117', 1649360126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393336303132363b),
('1d335ec72217e2707913147681766b5a4cde6077', '167.94.138.117', 1649360126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393336303132363b),
('46bfa444c717c5eb71dd4c2ea24162bda2803bed', '167.94.138.117', 1649360127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393336303132373b),
('b7ebd5f164b008a3730317ba72c087b3c59522e4', '167.94.138.117', 1649360127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393336303132373b),
('d50aff25e8649ec453c30322444db6dcebfd009d', '3.111.48.48', 1649804559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393830343535393b),
('1181dd92f642837fc3a3c55c9a867cfc66f2a4a6', '3.110.78.76', 1650598685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303539383638353b),
('9e0ae4b7380598a6706a52ed836e3860288c0cf3', '124.29.228.68', 1650648177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634383137373b),
('53fe8291229404d07e190ec76692b7925be9f08a', '52.114.77.236', 1650647861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634373836313b),
('784735afcb98b452ed4aad5bdce7bbde665fff13', '124.29.228.68', 1650648947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634383934373b),
('e82aaf57d9f8a959f50c8e0fc08effe2fec177ab', '124.29.228.68', 1650649394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393339343b),
('a985c620fa4f17b25dd42a72b93e9d3afd2b1dba', '124.29.228.68', 1650649677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393637373b),
('c49bda6d88b914e344b6ec758079de3ab4b9b17b', '124.29.228.68', 1650649697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393639373b757365725f69647c733a313a2231223b),
('319c6c6605c1e0885bc6018e545e071921a68fdb', '95.111.237.59', 1650649565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393536353b),
('3d64a44def134df020c23344777a4e2d9a970726', '95.111.237.59', 1650649567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393536373b),
('ba4f17f8849773757d4f821fab74c421549269ef', '124.29.228.68', 1650649963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393637373b),
('1987ccad9606f3ee8a8150896d1da9749f5ebfe6', '124.29.228.68', 1650649919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303634393931393b),
('667f0305f448fbde7bba8298fea20c35a93b24ca', '103.228.156.134', 1650660384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303636303235333b),
('f1ed550f8a30cb61d0c248e97dfdacb6c034124b', '124.29.228.68', 1650661839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303636313833393b),
('51d2c3304acf3e61bca272f968e87baa47436789', '51.158.98.24', 1650924167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303932343136373b),
('617f9fbb5c30849cb470a45608c216ca77acab2d', '106.55.36.107', 1651020071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313032303037313b),
('1cbbd3ce9cc6075626a8ea8ad9d1d1ab53fb5ffa', '106.55.36.107', 1651020071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313032303037313b),
('8e90295c2942b35635996aea5e59f6546bbb0f8c', '106.55.36.107', 1651020088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313032303038383b),
('6ae2e0d8e0c30f686ba42baa35935461151157b0', '124.29.228.68', 1651776782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313737363738323b),
('40bfd6c6604feed2994135d09453811221c6b5d5', '52.114.77.236', 1651776350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313737363335303b),
('c1069d4e1f6de1ceda78a3063744b27feeb21b11', '124.29.228.68', 1651776752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313737363735323b),
('78d9b2cadc80a550320f59bd6e97aa8d5dc1a6a5', '124.29.228.68', 1651790645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313739303634353b757365725f69647c733a313a2231223b),
('c0050d8678608f7f0e3b179ba11d275c048bf0d9', '124.29.228.68', 1651793121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313739333132313b757365725f69647c733a313a2231223b),
('8a227e962d74767cc310a21996f9cd3ef7728155', '124.29.228.68', 1651793121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313739333132313b),
('e0b8afbba93c9a705a46b8407b6a60ce4a417858', '143.198.26.195', 1652020409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323032303430393b),
('fffc05fab03686bbac98a3477a0207393819fc5a', '104.131.68.206', 1652027782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323032373738323b),
('be5aec7d22fcbe9501678eec0c91fe993177c7a5', '54.219.178.17', 1652221221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323232313232313b),
('900d17cacab39ff845477d762058b170cac29b7e', '193.46.254.26', 1653181938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138313933383b),
('8da4f072d97232acbd282495b83e051dec9c6781', '193.46.254.26', 1653181938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138313933383b),
('c0f719f02548badb4ea767b5c7728a08adcfafe3', '193.46.254.26', 1653181939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138313933393b),
('d6728aa99b8c4e509750e9536755e9e514ad840f', '193.46.254.26', 1653181939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138313933393b),
('009bd82c1b18cf5be2112a306c6f454bf41f8ab2', '23.128.248.32', 1653183054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138333035343b),
('b6620110af95f6ae2ed5d832648764ce3aea78f3', '23.128.248.32', 1653183054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333138333035343b),
('692dc2e259d303a38f10bfdfe5787ec33799aa6c', '45.90.61.242', 1653246335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333234363333353b),
('5cc2688b58ae90b369b587b89d6741b16ed8b0d4', '45.90.61.57', 1653246336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333234363333363b),
('ff8c900db5327a7c04023e46606649ecad51a950', '89.104.111.16', 1653251676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333235313637363b),
('be13846cba00a812bc5ab5427a45fceea152970a', '89.104.100.252', 1653251677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333235313637373b),
('ca798ec483a8b12439d24a774e76bec6029f31c6', '51.255.62.13', 1653323343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332333334333b),
('b8554541383eb5a1c4413bac504e64ded63a1428', '51.255.62.3', 1653323343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332333334333b),
('60007a3e786ffb4d80b4c32d3014d55bf6e9bf1e', '51.255.62.7', 1653323343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332333334333b),
('6909dbf7c65700b6820b7f8689565c66ca41daea', '188.165.87.96', 1653328323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332383332333b),
('9f4ec7dc98c11a011c99c3017960ec41003c4408', '188.165.87.97', 1653328323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332383332333b),
('160c61145c3fdf27c2bc8e54ce0bc94dce2b73e3', '188.165.87.107', 1653328323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332383332333b),
('e6f8b4cfe5668357e6944293bec7ef13c3b4c372', '51.254.49.104', 1653329727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332393732373b),
('e195b229e0932071fb5e4e2ef484ae57bc554c86', '51.254.49.98', 1653329743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333332393734333b),
('de7662f120f5d98ba08e50d5a415eba4a5679c6a', '89.104.100.46', 1653332384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333333323338343b),
('7a381fcf1d677f1f7553aa56662a0408322373ee', '176.53.219.253', 1653332385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333333323338353b),
('e641b3aa4bda803d1fc4e4b250e7d0ab94f501a0', '176.53.216.33', 1653338282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333333383238323b),
('d6ebc1609e298905595d9ed992943ebc37585802', '89.104.100.78', 1653338283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333333383238333b),
('d0bff7366f913d9b5b80b0958a688afdb467e5e8', '51.15.195.246', 1653350568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333335303536383b),
('ff975ebe7749326e2be546cb0db34a3ea9f3e77d', '139.227.185.166', 1653367282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373238323b),
('793863d256ad58a9d30a23dc40250dff1e7f0dfe', '139.227.185.166', 1653367282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373238323b),
('b80c983d686520e61fcbf78432a51473733f7b50', '139.227.185.166', 1653367348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373334383b),
('0da985628542d3118d292b918410744ecc785ca8', '139.227.185.166', 1653367378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373337383b),
('8508701a507a33f07906d02a355aaf81df10ae55', '139.227.185.166', 1653367411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373431313b),
('5c60083a961213bbb289ea5b27368e7175ae72d6', '139.227.185.166', 1653367442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373434323b),
('4fe8c3cc37496e3f82f3b426b127c54327473a7e', '139.227.185.166', 1653367475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373437353b),
('a38a986bb55013a4a2bb2142808636838089dc34', '139.227.185.166', 1653367505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373530353b),
('60aa72ee524c6977247bb5ae0641aa2cfe009473', '139.227.185.166', 1653367536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373533353b),
('e8ffeac0bf29e652f9e5127598135f306727d732', '139.227.185.166', 1653367569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333336373536393b),
('6e9fd40fff7d91873b7145a179fee5d9c7940666', '101.36.111.167', 1653371291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337313239313b),
('de1b6fc67b3930670445afdeebb3f114f2fac1a2', '3.101.127.236', 1653381103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333338313130333b),
('9851d0d1657f0c6852548b903b0b5a820ccc9030', '178.33.149.171', 1653403691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333430333639303b),
('30085ebc321460ac338e9dbd97829f9049a4db36', '178.33.149.171', 1653403691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333430333639313b),
('29be903ab50c402fe6ca9023988002123bbb981b', '51.255.62.4', 1653429937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333432393933373b),
('c7bd1b613e11bd1a734e8ca1b97541509d11b23f', '51.255.62.15', 1653429964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333432393936343b),
('14e0d3487f5abac0d3458ae4a6c7744353036326', '51.255.62.5', 1653429964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333432393936343b),
('a848dc459f98d8c1d518dfde58e3a51fd030a8e8', '178.33.149.171', 1653621036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632313033363b),
('b6d9924feef0c70fe2bcc0ad8ba8c86abf1ed562', '178.33.149.171', 1653621036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632313033363b),
('bf9edca4dd93dfd678f739d2ea5c1c4be2a700f5', '178.33.149.171', 1653621036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632313033363b),
('113aa725c7989dc49d0ecc38b08539df856e9293', '178.33.149.171', 1653621037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333632313033363b),
('0b4917c88560c6973036eb100bd8f1754054aeff', '178.33.149.171', 1653825847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333832353834373b),
('7d6af5065339d295067f22e0f7b44ee551a680ab', '178.33.149.171', 1653825848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333832353834383b),
('930d659cd7bf9207e6c940eb58cf53a4b097c57c', '185.195.59.106', 1653933270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333237303b757365725f69647c733a313a2231223b),
('fb9cc39e3870ca5e785f9f40882ab0a06b688205', '95.111.237.59', 1653933262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333236323b),
('b5e6e641a277fc2129fa89415f7186dabf03c7f2', '185.195.59.106', 1653933607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333630373b757365725f69647c733a313a2231223b),
('372ed135e490012a7a01943acaa47f92614b8319', '95.111.237.59', 1653933416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333431363b),
('0b6673ceeb438e5324c92f58822c25f59db2e4d3', '95.111.237.59', 1653933419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333431393b),
('813bc4646bb27d128e4d45722756fcdd6ccb9fc0', '95.111.237.59', 1653933420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333432303b),
('1fc6969cbbf475a7f4da14e1122a35c8111443b1', '95.111.237.59', 1653933421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333432313b),
('2aac42160427a1a394d61462757b50ea3ad274b1', '95.111.237.59', 1653933433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333433333b),
('ce3dda4fb8b8faffe20b3a7461cd79c341dab76e', '95.111.237.59', 1653933445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333434353b),
('689f9abe67df11cf3f6876228ee5fe7c100d6cc8', '95.111.237.59', 1653933464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333436343b),
('0649ad604a2ca5bddebe307eebb149bbf892475d', '95.111.237.59', 1653933523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333532333b),
('1cb787967e2e2ab21a2a1554ed481b719ae5ac28', '185.195.59.106', 1653933908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933333930383b757365725f69647c733a313a2231223b),
('4f4e431240a02630af512bf3c813852d85c176b4', '185.195.59.106', 1653934213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933343231333b757365725f69647c733a313a2231223b),
('09e5f50e5f6a1e3adfad97eb7fc0417e64cebe90', '185.195.59.106', 1653935030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933353033303b757365725f69647c733a313a2231223b),
('c0eef2a5ae46d3b016162872cae1b30b0b966ec8', '185.195.59.106', 1653935382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933353338323b757365725f69647c733a313a2231223b),
('b3cd3ebf756069ee64844bf5de1bf6062742fe25', '95.111.237.59', 1653935104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933353130343b),
('e75c77c663dd51a425eac27182690f699e2312be', '185.195.59.106', 1653935751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933353735313b757365725f69647c733a313a2231223b),
('03695500d0afa94e76c2c51644338da331d2f137', '185.195.59.106', 1653936112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933363131323b757365725f69647c733a313a2231223b),
('135a60f63ba331beb23726ae1b386b4089274bae', '185.195.59.106', 1653936484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933363438343b757365725f69647c733a313a2231223b),
('51b2bfd53a3ef10641050cfe9612cb3f74bf3e69', '185.195.59.106', 1653936930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933363933303b757365725f69647c733a313a2231223b),
('547430b6872c581bede1ba3345d9761e422562d0', '185.195.59.106', 1653937235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373233353b757365725f69647c733a313a2231223b),
('adf4b50bfe82f2df8239175bb77b3f20d15b7782', '95.111.237.59', 1653937229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373232393b),
('01997f188a7181ab6f7c4dec16a8f2cd5a9bc4b6', '185.195.59.106', 1653937537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373533373b757365725f69647c733a313a2231223b),
('83c903f9dea76313341ffef8655ddf16b2beb688', '95.111.237.59', 1653937259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373235393b),
('855cfda068a454c178a561a7e6a0420ffac295e4', '185.195.59.106', 1653937444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373339313b),
('65f2d38671df2d4293b4011bbf27ccde3c646b1a', '95.111.237.59', 1653937444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373434343b),
('171c01f28587d359c9ab36508560f20763c99567', '185.195.59.106', 1653937950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373935303b757365725f69647c733a313a2231223b),
('5659124a9a8ad27a23fe9648667926920826ffda', '95.111.237.59', 1653937607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373630373b),
('48a3c5ff872dad16261282c61801900bd512f52b', '95.111.237.59', 1653937650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373635303b),
('972ddbb894f52c23d4f9271e4ceeb83ece4fc690', '95.111.237.59', 1653937671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373637313b),
('449bf7154013bce3794f0e12fa3a2af375d77496', '95.111.237.59', 1653937698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933373639383b),
('53167b771dc3f49715d79621c6c62cf4df01438e', '185.195.59.106', 1653939402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933393430323b757365725f69647c733a313a2231223b),
('74f8f8599ddc7e05d146213b0451c7d9b56425ee', '63.117.14.70', 1653938427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933383432363b),
('ef561970c275951c017c943d791eb01d26f1565b', '124.29.228.68', 1653938459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933383435393b),
('b6f821bbca52bae10f5de70483f8f4d8160b943c', '185.195.59.106', 1653939402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333933393430323b),
('c50e119cc998eab9bfa0ab0a7ac8f1cba8efb514', '185.195.59.106', 1653939403, ''),
('010ae44c6a18bbf52b7ceb8b0c652be418ffd23c', '124.29.228.68', 1653945917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934353931373b757365725f69647c733a313a2237223b),
('0832b1c16b8e8f2c32f68f4d9197898b7d386d9d', '124.29.228.68', 1653950176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303137363b757365725f69647c733a313a2237223b),
('d06d6a0ad9a4d720e3d0fe50e510c1e3e4d0ad40', '95.111.237.59', 1653945948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934353934383b),
('b69b643fc7c6e6b25591d93e00bafc4e3e4a1857', '95.111.237.59', 1653945995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934353939353b),
('9947bc4aed0d1a43d80e334896f1350780a46ba4', '95.111.237.59', 1653946425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934363432353b),
('7ada6a01f098969570be92ab5b91b0625fcd0c0b', '124.29.228.68', 1653947694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934373639343b757365725f69647c733a313a2231223b),
('2c1dfb93737c785bcf25983af46e096982d76c13', '95.111.237.59', 1653947197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934373139373b),
('f43cb135abe90d612cae2f4f94ac5ff0e4ebac88', '124.29.228.68', 1653947259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934373235393b757365725f69647c733a313a2231223b),
('03635a8d57917be33e3f5fb202eae89ba92518cb', '124.29.228.68', 1653948209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934383230393b757365725f69647c733a313a2231223b),
('c9774de6f93bbe57e96c5e8c847d14f2b5649cd3', '124.29.228.68', 1653948214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333934383231343b),
('4633bbf3e7f17de6602d3e83f0e75ffadd0ed2a1', '124.29.228.68', 1653950486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303438363b757365725f69647c733a313a2237223b),
('68142a2e0ae1392b2a92983bee3f7347bbb08a43', '95.111.237.59', 1653950486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303438363b),
('767961d267441317717ce3fe44c76ad26ad7dc3f', '124.29.228.68', 1653950888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303838383b757365725f69647c733a313a2237223b),
('e7262fe77713a8b39d1bf3d840ea743c8b37037e', '95.111.237.59', 1653950514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303531343b),
('02fb14d0fc4153e4b9f8e0b82cda06986bc70cbe', '95.111.237.59', 1653950539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303533393b),
('2a016b0104208d19f9e9b2124defdc4b3491385c', '95.111.237.59', 1653950550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303535303b),
('2014b0ad2ea52bbd8f6cfc2e3deb76e5fe880468', '124.29.228.68', 1653955320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333935303838383b757365725f69647c733a313a2237223b),
('aad65bdfa287c724e2b4850b180408db101df7f1', '124.29.228.68', 1654008177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343030383137373b757365725f69647c733a313a2231223b),
('5eda9ad3385c592443ed25146e0b9be049156b43', '124.29.228.68', 1654008384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343030383338343b),
('4ded0ea2e8e517dd1bdec4d61792572cd0bf26e4', '124.29.228.68', 1654010982, ''),
('7fd89dddc4b97b2cbc00d9546dbf6a6bb03be3ab', '124.29.228.68', 1654043146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343031313434343b757365725f69647c733a313a2237223b),
('aecd6ef42fc2107bea88ead6dc8d47b91ef5f52c', '124.29.228.68', 1654024665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343032343636353b),
('c293b1f2fb01535f4d55f61b44c381fb69e5e87d', '124.29.228.68', 1654025066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343032353036363b757365725f69647c733a313a2231223b),
('7d164e7944400f097edc0542dd8884b3fbfbb240', '124.29.228.68', 1654025420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343032353432303b757365725f69647c733a313a2231223b),
('33d2b1b0b018993afbb5cbba8f26796f2597f739', '124.29.228.68', 1654029047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343032393034373b757365725f69647c733a313a2231223b),
('5fb27f991ef52c942ec33630fde1ec36f276384d', '124.29.228.68', 1654033330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343033333333303b757365725f69647c733a313a2231223b),
('451f981343a9205e6a40515a1d30af1e512a4d99', '45.15.176.46', 1654034175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343033343137353b757365725f69647c733a313a2231223b),
('6a4942ebb0cdcfa43a80b13b4147801b722319dd', '45.15.176.46', 1654034616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343033343631363b757365725f69647c733a313a2231223b),
('71852dc4a5c4c3a02a7c3de554c7db6868298900', '45.15.176.46', 1654034876, ''),
('de29cdceeb3098125a0a9a116189ef2e788e65fa', '95.111.237.59', 1654034974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343033343937343b),
('85890014d52cf04e24997cd27751712d995d48c7', '45.15.176.46', 1654035203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343033353230333b),
('dce275ba8d3ce627ce661fd81b9bee4f6658ebb5', '45.15.176.46', 1654035204, ''),
('c6eb15862feccc7a5a19d96ab8d687da578ccc87', '124.29.228.68', 1654095751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039353735303b),
('6072c03c9de03c9de53daa8c6ee5b6ea69552eec', '124.29.228.68', 1654097058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039373035383b757365725f69647c733a313a2231223b),
('ebf68ace4b542d5776acb7175f85ff6992f57ab2', '124.29.228.68', 1654097470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039373437303b757365725f69647c733a323a223131223b),
('f1af7e7845b153a5fd9443f7ff20388256833640', '124.29.228.68', 1654097493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039373439333b),
('de816efe7dfab69bd6f6bff9182964e53b574ead', '124.29.228.68', 1654097928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039373932383b757365725f69647c733a313a2231223b),
('e2e758336f9b7cee83fcfbde4423d336055c4804', '95.111.237.59', 1654097964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039373936343b),
('0baf46cc07f2fcd282630a5eb9a927379d6fca18', '95.111.237.59', 1654098278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039383237383b),
('804d854b216f50f32cbe74373d488bae0f0d907b', '124.29.228.68', 1654098311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039383331313b),
('3788622543b1541edd2905992a3a28afdcce9437', '124.29.228.68', 1654112380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343131323338303b),
('aff6c95a673d120f30f0438e4ae66e68011be83d', '64.225.8.244', 1654112459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343131323435393b),
('0ac0d61527f15bca01eddc89d04e2193aa2f30ef', '64.225.8.244', 1654112464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343131323436343b),
('225d45c5f0c4cf50776d836f609329501c0a4d91', '124.29.228.68', 1654124708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343132343730383b),
('70b7c4c57bc9cda3c885a6906de010f017d975d0', '124.29.228.68', 1654206615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230363631353b),
('e2bf1d87f508633c96d7a561e8e4af81f7361d7c', '95.111.237.59', 1654206701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230363730313b),
('37b3c8779fcf89c428ab39927da44d8f3bfa10e5', '95.111.237.59', 1654206780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230363738303b),
('ebfaec6efdd4f8a1aa8e698002fd95cb1d652aa4', '95.111.237.59', 1654207035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230373033353b),
('a7355fcf0e6ede8932a5766a02dfaa7d0a5259f3', '124.29.228.68', 1654207394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230373339343b757365725f69647c733a313a2231223b),
('4398bbcb5f4f95e878d36145580c3284840d4813', '124.29.228.68', 1654207829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230373832393b757365725f69647c733a313a2231223b),
('7ac4af688c7625f3ca96328e200333d2a50eedca', '124.29.228.68', 1654208741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230383734313b757365725f69647c733a313a2231223b),
('6e6ba2153692773abaa2593797f635775239a887', '124.29.228.68', 1654208751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343230383735313b),
('6b334c9403fa62a75f74cc27c8dc5863cebdefbf', '167.172.27.200', 1654452620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343435323632303b),
('91cc6cadbef92df98da3eab36108965cc3da0fc7', '64.225.61.162', 1654458735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343435383733343b),
('bc1ecb7fa6b855e27f084bc5ff17bc14dc22523d', '205.210.31.137', 1654696376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343639363337363b),
('b9300813fa0e53b2082fffba40b8d84bdb0d062d', '124.29.228.68', 1654713475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731333437353b),
('e491ed7e5689a5725b2841043a570e118d62f7b7', '52.114.14.71', 1654708100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343730383130303b),
('95d14aa36147628ed32865c614e3d1e577243f84', '52.114.14.71', 1654708101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343730383130313b),
('bb79160804ba3b74c3d4db016e042fc2a8a1d2c2', '124.29.228.68', 1654708433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343730383433333b757365725f69647c733a313a2231223b),
('907ce81db98ceeddc73cf8a0902060fdd9cdd4bc', '124.29.228.68', 1654731988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343730383433333b757365725f69647c733a313a2231223b),
('b3b4d2868c4daef1c8a997cff7d4d00f18efc472', '95.111.237.59', 1654713512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731333531323b),
('3c51895d776f88eb09980cd101402f629bf01f4e', '95.111.237.59', 1654713515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731333531343b),
('899329018a44741385d4014373665043978e0f9e', '95.111.237.59', 1654713579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731333537393b),
('cb95e133f2c091e51b13c17895153b712eb40503', '124.29.228.68', 1654713746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731333734363b),
('be730b74755f066767aaaba534bb1cb503b48dcd', '13.38.117.129', 1654715673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343731353637333b),
('1e4ea99943450188362bc1310d0f4a4bf3db2ca0', '124.29.228.68', 1654726638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343732363633373b),
('4786c3f5fd0a83755ddf187da124e0ee9e772bf6', '124.29.228.68', 1654727184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343732373138343b),
('28c7aad6f6b95c6a2687303069eacb16a6b5b921', '124.29.228.68', 1654727187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343732373138343b),
('a40a91465c16a65445acb030f9b3c7c911271365', '124.29.228.68', 1654796147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343739363134373b),
('732cd982b5e3298a5f2af1ee094c0e7666794548', '124.29.228.68', 1654870133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837303133333b),
('0f94cebfcbcc5c9287201d7341250b0b7e925926', '124.29.228.68', 1654870593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837303539333b757365725f69647c733a313a2231223b),
('437474aaba98596abe8c560fb3176826da99de9e', '124.29.228.68', 1654871081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837313038313b757365725f69647c733a313a2231223b),
('cf16e84611a81fe10286a1062739d6517fb8d9f1', '124.29.228.68', 1654885956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343838353935363b757365725f69647c733a313a2231223b),
('a23b3ff209e33e78f0fca410cb1a50088507020f', '124.29.228.68', 1654872003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837323030333b757365725f69647c733a323a223236223b),
('e31a1da05d35c55c41083bebc2d526ad58a3dfef', '58.27.225.4', 1654871697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837313639333b),
('b749d5700d959901d27c4c82a98524da5dfc6edf', '124.29.228.68', 1654872057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343837323030333b757365725f69647c733a323a223236223b),
('049c21215386c5cdf5ceff06a9901588995931df', '52.114.32.28', 1654886223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343838363232333b),
('f59684684d05182a18870a30c10da434e1e62e5f', '52.114.32.28', 1654886224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343838363232343b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fd64170f83d4caf5002a232b24fb637d12820f4a', '124.29.228.68', 1654886243, ''),
('f73ab4ff1238d370e62941bd8f22b732b31c3c9f', '124.29.228.68', 1654886290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343838363238373b),
('5a1da5c6eb907146bcece3a9dec6019191ea1fd9', '124.29.228.68', 1654894625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839343632353b),
('cf658324346810062400ae1c3e4f05d37a03d99b', '124.29.228.68', 1654896100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839363130303b757365725f69647c733a313a2231223b),
('7450698c53fec6e4a76e0df13098d8f821363e90', '52.114.14.71', 1654895331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839353333313b),
('b244ef0ec95e11e51f52957c172859c612f715bb', '124.29.228.68', 1654895564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839353335353b),
('29df9c56d31eddc55c8af29ae63616a8ffe0ee66', '124.29.228.68', 1654898989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839383938393b),
('0500654f98f03ab84b5b53feb6c78f66d1c84bbe', '124.29.228.68', 1654898989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343839383938393b),
('7a5e0957ed05b64b68680cd9f772ab4c15ec5322', '134.175.228.189', 1654955665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343935353636343b),
('9c6351b8fa9b24fc8e51bc66017a6b2afe38f98e', '134.175.228.189', 1654955666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343935353636363b),
('a7da591cd080800fc0b96ac509c5114f0aa0a807', '39.34.129.3', 1654964371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343936343337313b),
('19942a3f408cc73758edf0feff7f3f28b019f069', '111.7.100.20', 1654971473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343937313437323b),
('82be3a9262c3a605c1f849aaf18b6ab160b30ad8', '111.7.100.21', 1654971473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343937313437333b),
('07b9c3d26d8532f6f9f2bb3c546795189a47dc90', '124.29.228.68', 1655133124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353133333132343b),
('8337a13c3cdf6c92bcdb5912b8a7dcb975a09dfa', '124.29.228.68', 1655156082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353135363038323b),
('b2fd3377c1a90b12f2efc0103213f37c01367766', '124.29.228.68', 1655219671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353231393637313b),
('e860f774a7899fbb88f3f050d98925a26573e310', '124.29.228.68', 1655298435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353239383433353b),
('742a2f889548456d7dfe7eeef26755581ccb7468', '124.29.228.68', 1655391278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353339313237383b),
('95c97ca65f5167fdeeeb88277668723838bf3303', '124.29.228.68', 1655405045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353430343537323b757365725f69647c733a313a2231223b),
('4561392a819f780856b777cbd84ce58f0312a405', '124.29.228.68', 1655412784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353431323738343b757365725f69647c733a313a2231223b),
('7f4ac887df86683126512b255b047144aeb80551', '124.29.228.68', 1655413091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353431333039313b757365725f69647c733a313a2231223b),
('5878b6c09c854cab108015ae17516f617ea1661d', '124.29.228.68', 1655421454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353431333039313b757365725f69647c733a313a2231223b),
('8ef2b426a13a54beecea4711f8a7039097b9a237', '124.29.228.68', 1655480637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353437373937353b757365725f69647c733a313a2231223b),
('c673b507224cfced5baf3476bef821c210d67ced', '124.29.228.68', 1655500957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353530303932313b),
('bc8b7969063b44c17484aaf914d2a4855ec12e04', '13.37.107.70', 1655587153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353538373135333b),
('44d4de067aa984f0d539e47e93348b6808a2021d', '139.155.54.119', 1655677426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353637373432363b),
('7c957abbc0f12267f974529061c85a883bb030b0', '139.155.54.119', 1655677440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353637373434303b),
('3dd100984d5aa1a5deee65fe3d9a1ab0ca03e79c', '124.29.228.68', 1655739216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353733393231363b),
('6b667e78b6462d25eb7e7110013370d63de30506', '124.29.228.68', 1655825779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353832353737393b),
('7e5c8de0d83b55adeb7df36f2b2204f76878ccab', '124.29.228.68', 1655997150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353939373135303b),
('433df71206b3ae8f078be56da20bfc015b7534d0', '124.29.228.68', 1656026960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363032363936303b),
('170210069933c72fe1e08d937901ad528136bc03', '3.21.98.184', 1656070337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363037303333373b),
('dc0fa52d695e966035033b9b1f3aaafb31442336', '3.21.98.184', 1656070337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363037303333373b),
('e8b357ba12e784c0ffea3dfc4e4c2f77a6034948', '124.29.228.68', 1656085301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363038353330313b),
('70102c814dfb38a120b2a3b44bc1bd487c626f68', '124.29.228.68', 1656113010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363131333031303b757365725f69647c733a313a2231223b),
('dc087db742c2112caab49bf2beb54c454e7a0476', '124.29.228.68', 1656113010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363131333031303b),
('43d331553fa51abe46a6e85cd2c73e7f2177043a', '124.29.228.68', 1656341336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363334313333363b),
('ca7b93c745ea811c2f9594cbb527e4fc2d64fb0b', '124.29.228.68', 1656436412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363433363431323b),
('18098e6bd1f0f9508ef9bec17c929ea20737febe', '124.29.228.68', 1656523106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363532333130363b),
('b69fe07b2f40d8c4b763262c217746917902780a', '124.29.228.68', 1656523106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363532333130363b),
('00d26371e689b067612ea58df4e4eaff8dc67c90', '124.29.228.68', 1656605629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363630353632393b),
('7571806b5ce8a03a873e9766846407843ac5c825', '124.29.228.68', 1656605629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363630353632393b),
('350b01025d8281575879fa3f83ff5420aadcb6c8', '124.29.228.68', 1656690398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363639303339383b),
('b8b123fe8286976e2ac52af20c0d8dd8b868d3bf', '124.29.228.68', 1656718702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363731383730323b),
('3153ef5173280bd5fbc543993ca070a95f6f03e8', '124.29.228.68', 1656718702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363731383730323b),
('e45065ffb509071c09534dfe50eb502914d9aeef', '124.29.228.68', 1656947906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363934373930363b),
('58e9c757c0b007f96c2debeb882197152f487a4c', '144.91.106.14', 1656948739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363934383733393b),
('231ea12781ee8c944cad518d77daf115a65c80c0', '144.91.106.14', 1656948739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363934383733393b),
('bf94ed999282045ec51b20f31998142c80a72ec3', '144.91.106.14', 1656948740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363934383733393b),
('f7c45802869ba312c034b7862a13141c9cec3142', '144.91.106.14', 1656948740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363934383734303b),
('eacf76dced6bf6daafda5bd2fb9d7550e980734b', '124.29.228.68', 1657039510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373033393530393b),
('5558361de1c7936d907d394585f45e6778026cd0', '203.75.213.3', 1657107124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373130373132343b),
('2da1b39d9ca5c5b23e59763ceaac50634566b457', '124.29.228.68', 1657124434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373132343433343b),
('cc56cc6346462e66702ff6290001e6f5b6d8cd11', '120.41.45.194', 1657136237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373133363233363b),
('9f6b0500b43864fed5689202124540f36d37fdd3', '144.91.106.14', 1657166699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373136363639393b),
('5c0118ae36a405f43262184d2b17496e16e7d17d', '144.91.106.14', 1657166699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373136363639393b),
('b732960844acb631ccb4c9dc4ad40a8c92bcdc45', '144.91.106.14', 1657166701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373136363730313b),
('10f1432661bd83629dac1ba5ff0c472f9be44fff', '144.91.106.14', 1657166701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373136363730313b),
('e31e67d6c4173191cecfb03ff54d77da8b1f05b5', '124.29.228.68', 1657236790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373233363739303b757365725f69647c733a323a223230223b),
('77e0ba74a959cd87ac6981e3ee1c4a2f099ecaec', '124.29.228.68', 1657236041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373233363034313b757365725f69647c733a323a223230223b),
('2c437015bd708b9945eeb2081f1bffb379e4a42a', '124.29.228.68', 1657237517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373233363739303b757365725f69647c733a323a223230223b),
('ef44646598589f06ef3c0a4ff27669af764abb20', '124.29.228.68', 1657295301, ''),
('f32f20cca840c3835e060d7202e3bc4f40398da1', '124.29.228.68', 1657301002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373330313030323b),
('c848298fa167795854c4e4ede98852012bf243f2', '185.187.243.124', 1657323439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373332333433393b),
('5dc165b9cc61a256b38b062d292617568a77cbf1', '124.29.228.68', 1657323439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373332333433393b),
('d545eeea2b7af5dc3594bf9f91f869fcb46b1869', '23.22.137.229', 1657465248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373436353234313b),
('4ddcdb590556ea839807bb377667631b9e9712f7', '167.71.108.177', 1657562847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373536323834373b),
('89ab006973e929f37ad602bacd38ae0b452d28e9', '64.225.54.217', 1657575315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373537353331343b),
('cd63d4969bd1c119c003e516415ae6a0590a9aec', '36.99.136.140', 1657600597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630303539373b),
('a9139a7e916c60794179f4d1b1cfbf2d7f445b55', '36.99.136.139', 1657600597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630303539373b),
('93c54b49c956dc611f726ff52b47a0d30582c5af', '36.99.136.141', 1657600604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630303539383b),
('71609870091edd967260e13fc3f2aea4fc6e37aa', '124.29.228.68', 1657726336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732363333363b),
('5c8247e928e3d353d92809f4ce97be9cca68451a', '124.29.228.68', 1657727233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373233333b),
('ecf516726fc89220a614b8634ce45493d007d2b5', '124.29.228.68', 1657727666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373636363b757365725f69647c733a313a2231223b),
('fd0d2c659ec36396871825d4807052b2405c94ba', '95.111.237.59', 1657727392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373339323b),
('8e540095f2b7e9b83c27802880d0d82c13bb5632', '95.111.237.59', 1657727456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373435363b),
('d0b80b9ba4dba0d95cf6a38a08ec5c10009f2341', '95.111.237.59', 1657727484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373438343b),
('8540ed65ceb9b4f01150b7e8217497d0f8d09a13', '95.111.237.59', 1657727665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732373636343b),
('5d68d9bcc8be3711a54bdb9fc06924b72ed8639a', '124.29.228.68', 1657728575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373732383537353b757365725f69647c733a313a2231223b),
('55671beab36e8b2a842ae9c574fb2f4f6a279053', '124.29.228.68', 1657736621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733363632313b757365725f69647c733a313a2231223b),
('574ec9111bc644d8c111630509c152152a3cc2ad', '124.29.228.68', 1657737887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733373838373b757365725f69647c733a313a2231223b),
('a631c5c7d6e8329e11e45ce5d6b343c5804d346d', '124.29.228.68', 1657738204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383230343b757365725f69647c733a313a2231223b),
('83ee72f6bab7bc49a8cf77b6d5a21e07dc1cc242', '124.29.228.68', 1657738554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383535343b757365725f69647c733a313a2231223b),
('f4421a76763e4a6ae418bc6ebbfc6aa8a4fbce3c', '95.111.237.59', 1657738399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383339393b),
('6558792216c4f605cdeacf1c418e36b0b1bd31fc', '95.111.237.59', 1657738461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383436313b),
('95610dff399c01d095d6079500f3f8fe477f7780', '95.111.237.59', 1657738490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383439303b),
('bc867e4e4df4e12c3f8066ab6baa9884ceb11ce4', '95.111.237.59', 1657738502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383530323b),
('ef912769bd664500b95e860aeb8a9eb03d918470', '95.111.237.59', 1657738549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383534393b),
('18c9809833c6dd4ac0d0e97b4b7fb45146288f56', '124.29.228.68', 1657744422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373734343432323b757365725f69647c733a313a2231223b),
('1593c91a01bb4af81f36bc0dc670586a541f2a83', '95.111.237.59', 1657738569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373733383536393b),
('111c5b73980484914807eb44bae8574fc09fdd8a', '124.29.228.68', 1657744429, ''),
('021f348269bda3b31498ff801aa7c28deeb0b7ef', '124.29.228.68', 1657750046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735303034363b757365725f69647c733a313a2231223b),
('540339041a5db0c34b568513cb074ca570e53c63', '124.29.228.68', 1657751270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735313237303b757365725f69647c733a313a2231223b),
('30f961c06e129f062f61a382d0df008f0906ece3', '124.29.228.68', 1657751583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735313538333b757365725f69647c733a313a2231223b),
('ab72ff6f77ecc8fb1bc47d0ff5137c831db35f5a', '124.29.228.68', 1657752176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323137363b757365725f69647c733a313a2231223b),
('9b94f58ae7e96373d92ef99e7b74f93e72682d18', '52.114.32.212', 1657752307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323330373b),
('0ac7325fe20a8a1a1498a7413bae26ccf5fa8a9a', '52.114.32.212', 1657752308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323330383b),
('bda68fc023524d4f1713efbc7d5e0f75ef5810c0', '124.29.228.68', 1657752675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323637353b757365725f69647c733a323a223137223b),
('c1da0b6d907a21fa3ae6396a8966e5b3e0bb8252', '124.29.228.68', 1657753697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323432373b757365725f69647c733a323a223239223b),
('39b0052f47df95937d5f8c325b3956d3b486cb75', '124.29.228.68', 1657752819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323831393b757365725f69647c733a313a2231223b),
('272e2edc507aba635d96535bbd533faa13e5b587', '95.111.237.59', 1657752504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323530343b),
('a1dd6b855c2c017feadb7394e9fc1923f9a964e9', '95.111.237.59', 1657752528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323532383b),
('db9257cef1014edf9b7fc1e4ba35a1f841ca9093', '95.111.237.59', 1657752531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323533313b),
('c1e3661e0b2b25dc2c254df2f10cee566dff779f', '95.111.237.59', 1657752535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323533353b),
('660ce01d9ead87cfbce742fce034678f31ab7507', '124.29.228.68', 1657753094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333039343b757365725f69647c733a323a223232223b),
('71aef95eeff60c8876e28e518cd1b1445257eb32', '124.29.228.68', 1657758282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323632353b757365725f69647c733a323a223235223b),
('8add9786537a6a3780bcfdbc7e68c48cf1ddb670', '124.29.228.68', 1657753024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333032343b757365725f69647c733a323a223137223b),
('43b12276962f0f545e1215e352b5741419f253ba', '124.29.228.68', 1657756985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323730363b757365725f69647c733a323a223335223b),
('60f4e7e45ace5fb58b224a7a69fb82757e0645e8', '95.111.237.59', 1657752729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323732393b),
('dfb4d44e05b8fb90e22123f6d46cc376f788c782', '95.111.237.59', 1657752746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735323734363b),
('5338d07b52f90e0f5b1fe02a269727eb515e2146', '124.29.228.68', 1657753442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333434323b757365725f69647c733a313a2231223b),
('886e86c17c9d1595522aa5eda3cb4cbfe40b14db', '124.29.228.68', 1657753297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333239373b757365725f69647c733a323a223330223b),
('567b93a470188dcd0e05aa216d8ce13927afe187', '124.29.228.68', 1657753778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333737383b757365725f69647c733a323a223138223b),
('ff7e3adec48e8b28bc54c7cbef87d4631fc21075', '124.29.228.68', 1657754327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343332373b757365725f69647c733a323a223137223b),
('197d9e2a65589a6e431e8af521f2ccbe36a8639c', '124.29.228.68', 1657757592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333039343b757365725f69647c733a323a223232223b),
('b56a347da8532da4d8da1caee25d3528363b6d81', '95.111.237.59', 1657753205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333230353b),
('923753922c0247b93e2e0a83554834cf216601bb', '124.29.228.68', 1657758540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333239373b757365725f69647c733a323a223330223b),
('31c4e33b81555c9ec085bb8d801093c346b995a5', '124.29.228.68', 1657753772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333737323b757365725f69647c733a313a2231223b),
('6b274753ed0b817f0e7cf7ecbb83f7db3e582f90', '95.111.237.59', 1657753705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333730353b),
('8ab6af7f2f06abd4befcf74d218551d97afc02b2', '124.29.228.68', 1657758214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735333737383b757365725f69647c733a323a223138223b),
('0f81522e145d5b782329ffd89c08108788826c89', '95.111.237.59', 1657754051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343035313b),
('26c6f55d72c4acfd0511170d5d6cdcf2921c6399', '95.111.237.59', 1657754165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343136353b),
('a47a08a2d737ee28aface4756a5ffcfbcd63d158', '124.29.228.68', 1657754497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343439373b757365725f69647c733a313a2231223b),
('d14abd4dfb2447008f5eac3c1b302a2942b93020', '124.29.228.68', 1657758166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343332373b757365725f69647c733a323a223137223b),
('7a1727494ebc0c8c60bca8c78f7e3d56ccff865b', '45.144.113.51', 1657754425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343337313b757365725f69647c733a323a223331223b),
('9bb89c5c50a2f4afe3ee000fbe5afceda4cb0ae0', '124.29.228.68', 1657754886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735343838363b757365725f69647c733a313a2231223b),
('404ff64156b3254562e7cac2d9f09e60beea4085', '124.29.228.68', 1657755427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735353432373b757365725f69647c733a313a2231223b),
('e28077cf03e8065ba54a2b1e4da88b54aedf37dd', '124.29.228.68', 1657755780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735353738303b757365725f69647c733a313a2231223b),
('e75d3edf5eaa5a5ff61ece21e7869e0faeeb00a7', '124.29.228.68', 1657756241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735363234313b757365725f69647c733a313a2231223b),
('1ca2b10422d23dff6f3212bc24f9d4bc6cc7330c', '124.29.228.68', 1657756447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373735363434373b),
('52da6ca0db24a83fef4dbc045ea5551fea6d7c11', '39.34.132.22', 1657798156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373739383135363b757365725f69647c733a313a2231223b),
('edaafd734ed257da6be02ae3e6e5d1387c1de8bc', '95.111.237.59', 1657796844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373739363834343b),
('0aac18d358073ac468b7c096bdb4446d0ffd11ad', '39.34.132.22', 1657798474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373739383437343b757365725f69647c733a313a2231223b),
('b60f2c72cd8ee228c4f05f22baf53a44695974dc', '39.34.132.22', 1657799033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373739393033333b757365725f69647c733a313a2231223b),
('39921626ef7ed5a566335bad8e1d72bfaed6827a', '39.34.132.22', 1657799039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373739393033393b),
('b9885d07cd60f1c105d3d5456fcb152f54d8edd6', '39.34.132.22', 1657799039, ''),
('d028f849f112deb8f10f940e02537bdbe46a74cf', '124.29.228.68', 1657807019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373830373031393b757365725f69647c733a323a223234223b),
('3f4417992716a2fa49778056f46e77dcefa7f6b6', '124.29.228.68', 1657807388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373830373338383b757365725f69647c733a323a223234223b),
('5486cc240bf2a09d10e41c3c6ea1f1f71e39c73b', '124.29.228.68', 1657839820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373833393832303b757365725f69647c733a323a223234223b),
('f0f544d33bbe2a6647a06c508719ff79dcc61258', '95.111.237.59', 1657807416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373830373431363b),
('423ff7a2bd7e63d781e5178e8616e9705c38e80e', '124.29.228.68', 1657810634, ''),
('d30a73a6957f0a837bdb4d09fbb1d2e245682ddd', '119.160.2.157', 1657811380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831313236393b757365725f69647c733a323a223237223b),
('bccc803b4b39472c11f6e6153325382b5ee162c1', '124.29.228.68', 1657811338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831313332373b),
('55db0ea7b76f3aad2847668f3498d44e7fdc9c32', '124.29.228.68', 1657812487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831323334323b757365725f69647c733a323a223236223b),
('7cfdbc81ea20b860b6b20d85029bd1ed34fe3549', '124.29.228.68', 1657817143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831373134333b757365725f69647c733a323a223139223b),
('41a25558674b98e4dd55bac6c1c13c7429be964d', '124.29.228.68', 1657813518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831333531383b),
('fdc49340ced961d58b9a92fc56b97744021a2d48', '124.29.228.68', 1657813754, ''),
('0691054fee582787690fe510b689d1c1625067cb', '124.29.228.68', 1657838034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373831373134333b757365725f69647c733a323a223139223b),
('a10237db154346a58ddab2200eeafab2af55d58e', '124.29.228.68', 1657842231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373832303136393b757365725f69647c733a323a223235223b),
('5394c023b69062ca516e3679d80c237e42d2dd10', '124.29.228.68', 1657840550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373833393832303b757365725f69647c733a323a223234223b),
('05f9319ea3c7ff600c9c8a6568af9b937ff4ec09', '124.29.228.68', 1657860482, ''),
('bbd4b020b8bda99116cdf120da7cff21f6a90c48', '124.29.228.68', 1657892729, ''),
('dfbabd7f6ab28cbfe6ffe7a197c5970c0bb4ad8a', '124.29.228.68', 1657892729, ''),
('70cbf3fdd38e1818ce0ec57d494d8daac3212057', '124.29.228.68', 1657897011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373839373030303b),
('1844de023f92e670c89c66526593aa67f4d59d2c', '124.29.228.68', 1657922949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373930323235333b757365725f69647c733a323a223139223b),
('7c49a5c34d8ae743047e888ba11f898ab2167030', '124.29.228.68', 1657907474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373930373437343b757365725f69647c733a313a2231223b),
('82417fcdb3c2468e805da648ddc925f13cf9b36f', '124.29.228.68', 1657910255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931303235353b757365725f69647c733a313a2231223b),
('fa4ae50e4933dead90c05e17fba552c8ede4945c', '124.29.228.68', 1657919153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931393135333b757365725f69647c733a313a2231223b),
('3726437ad98e03f270ee0046ecb53d6f2132b8d1', '124.29.228.68', 1657919709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931393730393b757365725f69647c733a313a2231223b),
('d85413c48c24381e59a31a83f406d40db762c0bb', '124.29.228.68', 1657929798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931393730393b757365725f69647c733a313a2231223b),
('14cb3b160246f0ca4d361115e833150a189c6d30', '95.111.237.59', 1657919826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931393832363b),
('9de7a5f7fe1bde0dce87905e447d90834bc7f2d5', '95.111.237.59', 1657919840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373931393834303b),
('c5d7d6d76d1efd71fcecb43f0645ae200ceae0e0', '124.29.228.68', 1658156343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383135363334333b),
('baa0f8d0103a97f6fcfcbcf28c3fcebc1daa259d', '66.249.66.9', 1658160252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383136303235313b),
('0eb4580ea9467cc8d46cb18622473e21b69a54eb', '66.249.66.9', 1658161460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383136313435393b),
('5663d580e7930fcbf17ae25c9cf247b44fe5ab5d', '66.249.66.79', 1658161460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383136313436303b),
('83399e15520ef98ef2970a34c04f24a874c7468d', '124.29.228.68', 1658243046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383234333034363b757365725f69647c733a323a223139223b),
('cb6156be677274c74809381cc0b426890e9f34f8', '124.29.228.68', 1658245292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383234353239323b),
('4bc41c7d62f1504cd43e482866a3ce13aca3c341', '124.29.228.68', 1658268840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383234333034363b757365725f69647c733a323a223139223b),
('62d51e27fdfffb781340a6aaabc5c6e2d1b5302c', '124.29.228.68', 1658253334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383234353239323b757365725f69647c733a313a2231223b),
('e9ceb338d604d52ce8f879ed56037470eef2b5b9', '124.29.228.68', 1658275054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383237353035343b),
('9fbeca69aeda2317dc248f010bdf76cd942938de', '124.29.228.68', 1658275055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383237353035343b),
('423ea1c1b59c132280d0eb27dd94fe6ea291ec90', '124.29.228.68', 1658325603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383332353630333b),
('94a212118fa13e5c525203b2eb9dfbe0f2c0c3b8', '124.29.228.68', 1658331425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383333313432353b),
('0a11529f1b7a48fa0daf736f1a71f55c101f093a', '124.29.228.68', 1658331425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383333313432353b),
('0a1e87a7a2f9a0a5fa6e2ba7a305b7b3cd23f94f', '124.29.228.68', 1658406968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383430363936383b),
('154449905a7fd47e6a03a48e4b67bfc09dbd78dc', '124.29.228.68', 1658439624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383433393632343b),
('b19861ecb8fd9f372690fa1843bdb025d3903224', '124.29.228.68', 1658492752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383439323735323b),
('c2153c9afc81c66a95c2951eabe432d28e7972f1', '124.29.228.68', 1658500158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383530303135383b),
('fb8cb420315f55173a03af59d2719338438bae06', '124.29.228.68', 1658504652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383530343633373b757365725f69647c733a313a2231223b),
('8f6abf6f707a84b7d20dd91cbefb4188643d37e0', '51.15.251.143', 1658633505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383633333530353b),
('1797ec49b40757d920f60ed5f5d2a76e7be01b89', '66.249.66.9', 1658831253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383833313235323b),
('30ad6db0387de62b7055f06b052cef4981803b58', '124.29.228.68', 1658947212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383934373231323b),
('6748733ef4e2a56d5aff67f55b145fee651358ce', '124.29.228.68', 1659024511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393032343531313b),
('ddb75af0669c11a3ba246e042d1af4d6005a1929', '124.29.228.68', 1659135243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393133353234333b),
('7a5d6d01ce9c50cc8858ceac83bd697a24255eea', '124.29.228.68', 1659359975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393335393038383b757365725f69647c733a323a223236223b),
('a5d2ee07b8469f445c7a1be0f8bec8724c0b182d', '124.29.228.68', 1659382017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393338323031373b),
('6bbb608c77eedf4a21908373e5bc84d83c07e936', '124.29.228.68', 1659460017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393436303031373b),
('40170e97a64098ce59cdbe6843e5d315209ebf1c', '124.29.228.68', 1659468888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393436383838383b),
('72f1e1b55a03e271fb9d0700ee8af7b1c72c5fcf', '124.29.228.68', 1659478134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393437383133343b),
('20ee8d13eb35cbca24ef4b190483f13118e780bd', '124.29.228.68', 1659480625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393438303632353b),
('b004d7fa179c9315a7d7d35c48e8da5c4176cd9e', '120.41.45.199', 1659515992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393531353939313b),
('ec293c390d5b45edc13fd84b383ee9f5474b2b13', '120.41.45.199', 1659516001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393531363030313b),
('2d7b967fee78e519df9d4aae9b44aebb46e87d60', '124.29.228.68', 1659646474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393634363437343b),
('7aec1a65812a155e0af88349184071cff45713b5', '124.29.228.68', 1659741193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393734313139333b),
('2b53599f1d3de4fb5fe146a63c563c046be3d16a', '103.26.83.114', 1659982614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393938323631343b),
('0aea03e2a6c5c37ae2ac61d38936e8d38e086743', '124.29.228.68', 1660138596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303133383539363b),
('5705c52d5f58144af1c7206e9b807ebc6d912e39', '124.29.228.68', 1660145306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303134353330353b),
('b8ab4c9122b3e45cf6187f269cbce7b3415dce1e', '124.29.228.68', 1660168230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303136383233303b),
('4039d192270482079ed8021a8b6eebd23ad9ad29', '134.209.43.169', 1660171171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303137313137303b),
('6d21fb93c85cf6584f867864bb258dbb6923f9f3', '64.225.0.18', 1660177606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303137373630363b),
('f74fef5302cbd7183022148d632fc2d76574e548', '124.29.228.68', 1660228393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303232383339323b),
('08a20d2c8a5ec05269761fa49d09c7cf5ce0c55b', '124.29.228.68', 1660336609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303333363630393b),
('da18510a0dc360303c0b5f1bc24b8e3f85858ff7', '124.29.228.68', 1660336626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303333363630393b),
('7a71de5d13ac315ecc5f366f300efae2146d5d3e', '185.220.101.35', 1660525997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303532353939373b),
('6722fc4f77488f2c9feb73287598b4f196127bfa', '185.220.101.8', 1660525997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303532353939373b),
('90085838ec1a8e8c71578885679f16d97d6bec94', '185.220.101.35', 1660525997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303532353939373b),
('e21e0d8bb0ac72037e6817c44fd8a31e771468ab', '185.220.101.8', 1660525997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303532353939373b),
('d810367d1a575119bdda9e15b9edeb5f26f8549f', '176.53.218.88', 1660588393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303538383339333b),
('e64c1bf7cc287431b638caf745bcc197539e658a', '176.53.223.14', 1660588393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303538383339333b),
('85d890e3aeb13353fca71d9b033008fbd9f8b254', '89.104.100.8', 1660593742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303539333734313b),
('0cbec36f56b11ac50922621e6595d46bb0b557f0', '45.90.63.24', 1660593742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303539333734323b),
('9255eec915b5194a94f9e24759189aa9cad720e7', '124.29.228.68', 1660597433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303539373432303b),
('2846ad6d851cdd9a45316b982701d01a3b85773e', '51.255.62.4', 1660666463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303636363436333b),
('960530252638cfca3d8726c3faf92c19724c5d63', '51.255.62.15', 1660666463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303636363436333b),
('44159409c4d39e9722ca7a9a43286d025ad254b2', '51.255.62.11', 1660666463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303636363436333b),
('54509642b78b1dcb033f201d6aecc18533e7c412', '51.255.62.11', 1660666463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303636363436333b),
('dd01eb7dbe1e16339e48fe3fe06997fe2ebaba14', '188.165.87.109', 1660672327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637323332373b),
('02382c02345dc3a44386db6809698d62ee95ae0c', '188.165.87.107', 1660672328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637323332383b),
('45b963408f9c15da4e859e1cbddc2a5a7a79a23a', '188.165.87.111', 1660672328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637323332383b),
('1ce9cf29cd040c7059f70029dcf4bf013d861470', '188.165.87.111', 1660672328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637323332383b),
('112edbc81795725e4c668355225f6678ef9fca35', '51.254.49.101', 1660672942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637323934323b),
('60da4070109f19fa8e43b0b42619656dd5d898bb', '176.113.42.164', 1660675454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637353435343b),
('84b1d1ab18c7c2f7fcdf792e6d8b6567c64c8948', '89.104.100.134', 1660675454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303637353435343b),
('447e814f3da080e68802d82f2fdccfaf34f09b12', '176.113.43.14', 1660681216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303638313231363b),
('895cd5e0c16c2ea3e1928bc0809fa7881be2cd73', '45.90.60.33', 1660681217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303638313231373b),
('3db7b4dac61b24772251e602df31065b16ddc8cb', '124.29.228.68', 1660742480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303734323438303b),
('5df3a6de9d746c1837c49de25c476b0a7abaa09c', '124.29.228.68', 1660742531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303734323438303b),
('c2ce485c56428242250ef1e9cc3cf0becda09aca', '124.29.228.68', 1660757745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303735373733383b),
('33f1c093dc6897becbe76851ed2e9c4ef5c5ba61', '51.255.62.15', 1660771385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303737313338353b),
('a26db063f811a5efcee6553daa98a4632a78e69e', '124.29.228.68', 1660828992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303832383938313b),
('9c77fe18e22fb31839a149a3f0dfefecbb707506', '124.29.228.68', 1660856547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636303835363534373b),
('087524adea59e0de57501f9adf1fb6756275bd86', '51.158.127.119', 1661397309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313339373330393b),
('f37c66445307a6bf681a810395d503d9f5a2a60c', '124.29.228.68', 1661470344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313437303333333b),
('8c3a212e5235461a128b3ddf38812ffddfc691e3', '124.29.228.68', 1661787175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313738373137353b),
('944198968230041f7579551a5d4679edb120005f', '212.47.251.118', 1662027113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323032373131333b),
('b560a20970bf0fcdd2c66709e7127275bc44ae7e', '103.203.46.144', 1662592051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323539323035303b),
('3ff4a880b865d7d89ab7b62dbbd2cd2308588a59', '159.89.36.53', 1662793860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323739333836303b),
('231ff8ebb3545a82cf985e027a9d1bac3971f950', '104.248.9.221', 1662796852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323739363835323b),
('9e8a2071c8cd60f35cbe6902dd0efb4ad1edbfb8', '124.29.228.68', 1662995603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323939353630323b),
('ce494c1ffeed3906900ef0bf80573d7cb285851b', '124.29.228.68', 1663002722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333030323638303b757365725f69647c733a323a223236223b),
('cec2abad73e50e90d06efc555276949e113681d5', '124.29.228.68', 1663011876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333031313836373b),
('d70366c1c33d849b0e0440c8ad0794011efb9224', '124.29.228.68', 1663082765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333038323736353b),
('6a41fd0d549e877a4fe7a93972c5ed1932e03efb', '124.29.228.68', 1663171583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333137313538333b),
('6e96c9f0d01f5665bc5c1d735afc30e983ba2d95', '124.29.228.68', 1663365983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333336353938333b),
('9dcd2a3e06c50443f1cd5b7086a6df6747bd7cc0', '66.249.66.13', 1663427902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333432373930303b),
('ba717e9967ccea20f00f5961d967f50d5ffaf933', '66.249.66.9', 1663427920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333432373931393b),
('9fd47ca375203f96b8e09c30bb6dad1f3b9eca9e', '66.249.66.9', 1663427921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636333432373932303b),
('ffaa9bfdab68f980d39696b84da098afe4792335', '66.249.70.9', 1664016749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343031363734373b),
('1ced45c0a2ec60c10307ff384b5791358b7c7624', '124.29.228.68', 1664309031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343330393033313b),
('a026f6b3b7c81cf5738f17790eda316604f0ba96', '124.29.228.68', 1664490873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343439303837333b),
('2a9bcc5e4bab5dda0e6260a0556b1b1c370c550f', '124.29.228.68', 1664488441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438383434313b),
('044b53baf6e2972018a2e356409735024e575318', '124.29.228.68', 1664488834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438383833343b757365725f69647c733a323a223237223b),
('28f1ee9d9d44eb58355afbad6f1f15b38863969c', '124.29.228.68', 1664489002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438393030323b757365725f69647c733a323a223232223b),
('f1b70526e0e02a60113e16b7f2a0b10084eecdc5', '124.29.228.68', 1664489313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438393331333b757365725f69647c733a323a223237223b),
('2e29c6faf396810f4ddd7f07bdc23493e1cb7d31', '124.29.228.68', 1664489389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438393338393b757365725f69647c733a323a223232223b),
('af7f19af7b587e703682107ef3eac18473d70efc', '124.29.228.68', 1664490352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343438393331333b757365725f69647c733a323a223237223b),
('a254203db8b4e064aa1810cf1509546720434f7d', '124.29.228.68', 1664490406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343439303430363b757365725f69647c733a323a223232223b),
('5cf28fdb43b441353a57710826ec89d9cb26d822', '124.29.228.68', 1664495980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343439303430363b757365725f69647c733a323a223232223b),
('1e3e9b331ae1262cbae9e31c932ee306c6c62206', '124.29.228.68', 1664495752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343439303837333b757365725f69647c733a323a223237223b),
('f0deea92866c7c8fc3f0c5de00a53c8a95840d37', '124.29.228.68', 1664491809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343439313830393b),
('b9f7c5e1e7a17df2f7f6a997c45a0bdd9c49938d', '65.108.247.96', 1664542997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343534323939353b),
('23c66c3cc57d7f09c4061fa00266f19b1df86d3f', '65.108.247.96', 1664542999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343534323939383b),
('4ba34558483d5c8196fc844df3be653ca7b6a2ce', '58.27.234.90', 1664557096, ''),
('efc79e1bdc458fde0fdf82bdbec4520d16b11ab3', '124.29.228.68', 1664564555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343536313433343b757365725f69647c733a323a223139223b),
('9589445695c265a541dd1366ab5718ed35c7e7ce', '124.29.228.68', 1664832553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343833323535323b),
('2f51b344f0b4cd7a4cc39e8f38f8c4bc955eaf19', '165.227.97.183', 1664885714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343838353731343b),
('5c3c32b5787b5661eeba437e9175aecc1dc32ec4', '165.227.97.183', 1664885719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343838353731393b),
('e7db67559e1caf97bfa9cc13bab7d9c1104dbd89', '124.29.228.68', 1665006116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353030363131363b),
('a6ece5a9f740442194afb76830f37afc50d107c0', '124.29.228.68', 1665088558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353038383535323b757365725f69647c733a323a223236223b),
('5cca2194af197f79bdc2bcab8b742cdcf64863c8', '124.29.228.68', 1665177624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353137373632343b),
('2c60e2aa7bd8f3d7d1567d15083c84022ab31137', '124.29.228.68', 1665181229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353138313232393b),
('b30c718b1eb72257ab3f1d682ca996b755f9f8eb', '167.172.31.184', 1665204877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353230343837373b),
('5e85057c80cca9abb76b45a8ed1852f547b9439e', '64.225.61.118', 1665208008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353230383030383b),
('70ac307fd24e0c5446589a801104cd425db88cef', '119.155.202.32', 1665332520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353333323234313b757365725f69647c733a323a223334223b),
('aa6a46b921de16e104deab177ebfd87f60792aca', '111.88.122.1', 1665345828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353334353832383b),
('fdf8c65e0921e3626fa60c3d4245a5b876700354', '175.6.125.254', 1665411424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353431313432343b),
('017870a1a21f94aeba1dd2e7a397af9c2ed1ed0a', '175.6.125.254', 1665411424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353431313432343b),
('ea39abb73e0e240b9402f831272b8d014818f164', '111.7.100.25', 1665437589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373538393b),
('34ce17b93216dbc2a1b7c60704c95cb36c515755', '111.7.100.27', 1665437590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373539303b),
('ff456ac133c02c63d5d7fe8a2aa0b98712150740', '111.7.100.24', 1665437632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373633313b),
('61235149fff8cff828a4d0ee9af6995a553ea8d1', '111.7.100.27', 1665437658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373635383b),
('d3463b8a8ed163941105dcf3351e16146b6674f2', '36.99.136.133', 1665437660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373636303b),
('3919955765bf94feaef688083891a6ee52517c6d', '111.7.100.27', 1665437735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373733303b),
('a23bf559da7ba7a9908c28bb8fc0f20037093726', '36.99.136.134', 1665437754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353433373734343b),
('8d27bc6f7e95b5039145bf93ffe2fc52fc11e891', '124.29.228.68', 1665499911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353439393931313b),
('71488a9593e0d46760d7889d44c1801d7f2fbf9c', '124.29.228.68', 1665506738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353530363733383b),
('6c4d4e0bb94f328b667a1b7c4c821708e761fd0f', '212.47.251.118', 1665539898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353533393839383b),
('e0cd7892ba3d157c6d25f0589edd6b67a2023451', '101.53.225.49', 1665587106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353538373038333b757365725f69647c733a323a223236223b),
('61342e2893a8e312aa9c4e9fbcb9a818f405a5ee', '51.158.98.24', 1665589918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353538393931383b),
('e2e2da8b8dc501abe7b13ea280c7b1481cf24bf4', '124.29.228.68', 1665611907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353631313930373b),
('6f467a1ac83985f477c2ffa799bad975a0f7cbdc', '124.29.228.68', 1665691303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353639313330323b),
('5697d3b1352193ac7ce03cf1a4f1a53a0dac88b3', '117.33.230.194', 1665781739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353738313733393b),
('e5966281c9e4c482132bc49796e43f4e3fc98012', '117.33.230.194', 1665781739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636353738313733393b),
('162a947c53102cb6564991eda47710b54b6276e5', '58.27.234.90', 1666017971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363031373937313b),
('f52b1dfc49a14679a2d97b5f80cadb97268b1fe8', '113.133.172.183', 1666059773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363035393737333b),
('dbeb775ecc91ca73968e3e66a5928bad3cf9690a', '113.133.172.183', 1666059773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363035393737333b),
('aab7efbdbca080c6e89c93e0e0c0a329f3d5383c', '124.29.228.68', 1666126247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363132363234373b),
('783e16b1b4ee2f4e01cb66d7f6b7899fe563e61d', '124.29.228.68', 1666128282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363132363234373b757365725f69647c733a323a223237223b),
('50aec961c79f7b53f6e42e79016b4b976b2412a4', '111.7.96.170', 1666233708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363233333730363b),
('ad21751a6aa0824fa26439528cad9ba48fbcf68e', '111.7.100.30', 1666764404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363736343430333b),
('3e658dba87600305ef59f7dfc55b1a6ba2584940', '211.95.50.8', 1666771632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363737313633303b),
('960a472ef3e64cce1c646f52d53f312f9349e335', '124.29.228.68', 1666907232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363930373233313b),
('5ba753a4aa5d2da5069c1cc555996e95ec005153', '87.250.224.73', 1666947382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363934373338323b),
('41fcb2a4fbda8fa2532f5d9b7fd4af94d96eadbf', '87.250.224.154', 1666947386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363934373338363b),
('c89aba0c27f528f2a0eb1181edeff3c760ca5d86', '209.141.55.120', 1667248532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373234383533323b),
('a3a40eddd9dd987224c75a31ca885ae5d6cacb49', '209.141.55.120', 1667248533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373234383533333b),
('5555890cbf03208b6467b2ef97baa574d5a739d1', '44.199.235.222', 1667273291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373237333239313b),
('6a0377204a661f4d1b0bde69cfa7c209c6c7e3e9', '44.199.235.222', 1667273291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373237333239313b),
('7d92120798cc8e988c67a1bcff4be6c7c7bf711c', '124.29.228.68', 1667310556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373331303535363b),
('8a8b5ed9f8654b1479ba3cb8aff4416bf0d33566', '124.29.228.68', 1667341006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334313030363b),
('eb2a89401ace13ae781cfdc15e6c7c770298dfb9', '34.254.53.125', 1667342370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323337303b),
('7daad805b771bb1a38b3dcedbc7005513374a389', '34.254.53.125', 1667342371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323337313b),
('4c8c2c3664940bc16bf2df61c3e9eacbb7f38ff5', '34.254.53.125', 1667342375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323337353b),
('4257f5051099426131b696206d1124cbbc634545', '34.254.53.125', 1667342389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323338393b),
('a973a9f389e439347fe6ecde5a321da2e2a45edb', '34.254.53.125', 1667342390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323339303b),
('89e23100589d945de40fa8cab2bf8e7611d89e86', '34.254.53.125', 1667342396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373334323339363b),
('3952e34a3791afdf62a59017d11a84dde499dc27', '63.35.175.32', 1667454700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373435343730303b),
('e713beaaf3cef1f6db9ef8aa298ad9249325939a', '63.35.175.32', 1667454702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373435343730323b),
('12764a430f54cb3c78ab1e9fe9e78f6871db721e', '202.47.33.22', 1667837029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373833373032393b),
('a21755d5710c07b57b28e302581cbc969ecb43a4', '143.198.16.111', 1667866112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373836363131313b),
('38e294c7c9d7bc7a2513e5a9754859e5e03bd8f2', '157.245.112.151', 1667867324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373836373332343b),
('c2043be79ff1d07b176134905aac2f717c557138', '154.6.25.37', 1668642472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383634323437323b),
('698e779e12b6b2473ebdd221565eaaf2d0481f0e', '154.6.25.37', 1668642473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383634323437323b),
('7736604d1de801efe247dd6d57daa4b794a506cf', '154.6.25.37', 1668642473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383634323437333b),
('806cf104efbc0df2047957345ae574ec400837f0', '154.6.25.37', 1668642474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383634323437343b),
('345677a3ebd2aaadcd94adf9c4700e9d4bf741c2', '103.31.100.196', 1668725949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383732353934393b),
('ea6cb634beb1bb85edacd7002ce295e0deef4fb3', '51.158.109.3', 1668789013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383738393031333b),
('1450b9d3a14c1dc0d2f8e92d93ba56ee13f9fe8d', '77.88.5.166', 1669067805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393036373830353b),
('b33b119cd4043d68f563c38b78f017308bf66a68', '77.88.5.135', 1669067808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393036373830383b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dae44f497d320e51195d3cff664ceb6315765e2b', '51.158.66.83', 1669122869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393132323836393b),
('8f658d23dde30c892849831a79d6d1ae5cae019f', '66.249.73.236', 1669389326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393338393332313b),
('b7206cb1495cc2496d49080c510f9af68b2024d4', '66.249.73.234', 1669389329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393338393332343b),
('e8876c12b2040f58b83544bf5e09d1f5efbdd448', '103.31.100.196', 1669397485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393339373438343b),
('24b06bf0e36f72f01ef2cffeaadd8a596d7e0d4c', '103.31.100.196', 1669410315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393431303331343b),
('fbbc637a1d491dc6a595aa1bf72854dd81200633', '103.31.100.196', 1669420617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432303631373b757365725f69647c733a313a2231223b),
('2f5c1a4902935d4a4791df0b9886475ff12c6fe9', '95.111.237.59', 1669420643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432303634333b),
('383314c80626854835931febdeb0d97db80e04dd', '95.111.237.59', 1669420646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432303634363b),
('34d3241ae9b9344a74435f4eabf3ed769a03580d', '95.111.237.59', 1669420648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432303634383b),
('cbae2088f557554942794b750d1b8b494fbf83d7', '103.31.100.196', 1669421092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432303939333b),
('3486e199c93d760298fc76e434d1cc1868d412ff', '52.114.32.28', 1669421041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432313034313b),
('d354d47aa0afc3632c1d5de3512f26ed0fdd0661', '52.114.32.28', 1669421042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393432313034323b),
('e760d3b4cc4c1907b10aae0bb8e6b20849be5742', '103.31.100.196', 1669646535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393634363533353b),
('13e8a776efb3fa396f584ba5c5149b248e0d1350', '103.31.100.196', 1669646851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393634363835313b757365725f69647c733a313a2231223b),
('3770730714ea0584356a2247b13cc8cc7d7b52d8', '103.31.100.196', 1669647186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393634373138363b757365725f69647c733a313a2231223b),
('c03d69950d4c162fad1f3f642b33a968be3b2884', '95.111.237.59', 1669647134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393634373133343b),
('d4742f6e486c2d21747494eb2d25305efe3d13b1', '103.31.100.196', 1669652996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635323939363b757365725f69647c733a313a2231223b),
('ece2ce8021e3fd99a59da4e6b5669443ef825ade', '103.31.100.196', 1669652233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635323233333b),
('95306f2711c141c4ac009d97ea0fd095545d082a', '52.114.32.28', 1669649597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393634393539373b),
('0b8761050dea6019a6ec14d78c0aff7bedaa3bf6', '103.31.100.196', 1669652258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635323233333b),
('b5d4f8da7ceb7e3ac18e15c225040c7197aa5061', '103.31.100.196', 1669656432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635363433323b757365725f69647c733a313a2231223b),
('8dc0ef942f184c6398fa8b92d5a78d1809f2c61d', '103.31.100.196', 1669657835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635373833353b757365725f69647c733a313a2231223b),
('06c634f4c3795643a1ae3a736b7abbf1a6bd6e57', '103.31.100.196', 1669658287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383238373b757365725f69647c733a313a2231223b),
('14258de367695a993d2926812ca1b3532b897ba9', '95.111.237.59', 1669658009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383030393b),
('33613ff3f12f526b5001a19c0a2931b1aa710f6d', '103.31.100.196', 1669658680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383638303b757365725f69647c733a313a2231223b),
('29aadab210c3989558ffedf6ac417afeddb52469', '103.31.100.196', 1669659243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635393234333b757365725f69647c733a313a2231223b),
('cd766dfcd35d871e1d257b2d2bdf53288fcc25c4', '95.111.237.59', 1669658718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383731383b),
('8b127ee044dd3c28e4946c1967a85bccfa7b3a12', '95.111.237.59', 1669658772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383737323b),
('6bd4324919972d5215cd94eb7cb7b2f358f44e06', '95.111.237.59', 1669658805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383830353b),
('b06eec956f53f0304cbb2c171cac514e291acf4e', '95.111.237.59', 1669658811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383831313b),
('9e47f4facc35ac3c1eb143f42ddf66850c880543', '95.111.237.59', 1669658817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383831373b),
('0cc8b87a71def2d2ea7ff023ec235e4db5543eb0', '95.111.237.59', 1669658822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383832323b),
('4c9260f09f219e7e7ebc58f1dc031a789d1b9be8', '95.111.237.59', 1669658826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383832363b),
('62042782e57ee93d2f778e4ccf1c84f0e62958a8', '95.111.237.59', 1669658832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383833323b),
('84535feadfbf38d221bcc8d068493c46f0fd8822', '95.111.237.59', 1669658839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383833393b),
('d7614cb5a9245f784f64c4e12fda25db73455cc8', '95.111.237.59', 1669658846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383834363b),
('93da7614c9e6cf7c771291de3a2e76eb023bc981', '95.111.237.59', 1669658852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383835323b),
('becf13cb1b42ab061cd80120b9d6bd15a3655d82', '95.111.237.59', 1669658857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383835363b),
('a23325e1c32381075e899751abfa0f4fe722b313', '95.111.237.59', 1669658862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383836323b),
('a59a66a12bea001d41484a240998012788bf760e', '95.111.237.59', 1669658889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383838393b),
('6c450760a7da800ed0f1d12969469bcba07c3f41', '95.111.237.59', 1669658905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383930353b),
('0f0c7e574c09ea93cef589f2af7e319ea850b578', '95.111.237.59', 1669658910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383931303b),
('df208b7f1b23ffc477e1dbcfe08b78e802baf93f', '95.111.237.59', 1669658915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383931353b),
('f0f07eba173b27ea41ec11efef333865e878c36b', '95.111.237.59', 1669658921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383932313b),
('79e1cd4274ca92fb3affed75e348cb9edbec8145', '95.111.237.59', 1669658929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383932393b),
('0f270bc99c7e59c62dc289caf3c5d056a22e4651', '95.111.237.59', 1669658937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383933373b),
('c5783644e006b9d5b83034306a432da47fc63877', '95.111.237.59', 1669658942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383934323b),
('1e1964e1fe60f7d4c4ef78f962f1747e7694ca56', '95.111.237.59', 1669658949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383934393b),
('9d3f0c31477de35a14a5c2e76539379d5e74709b', '95.111.237.59', 1669658955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383935353b),
('fd3eb34fa757e311341ad8edc12cbe3111ec3f38', '95.111.237.59', 1669658964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635383936343b),
('d98f7216da0eca32e35e6a7dc6814b583c66fb05', '103.31.100.196', 1669660614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303631343b757365725f69647c733a313a2231223b),
('5a4ad3ceabd6375886c8565c47ef560fc5e0db89', '95.111.237.59', 1669659319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393635393331393b),
('297bc920b46f57933a1975889b7754b3d88402ac', '103.31.100.196', 1669660947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303934373b757365725f69647c733a313a2231223b),
('977ad2d18a6e1da66b795828c7299e8587800f21', '103.31.100.196', 1669661738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313733383b757365725f69647c733a313a2231223b),
('6d51bd4a533104538071dda3f2baad67db69e54e', '95.111.237.59', 1669660961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303936313b),
('1005935877f8acf0ae97fc57d16669784fe168e2', '95.111.237.59', 1669660976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303937363b),
('f20d9a6e8999c246573747b6866b3c6e66da1cea', '95.111.237.59', 1669660976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303937363b),
('5ab0c8e80c8b7fb7eb77d8a60cc1204b7448006a', '95.111.237.59', 1669660986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636303938363b),
('785c05a65a5c559aea2e848c1aebe9ad64b53ec1', '95.111.237.59', 1669661075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313037353b),
('be501d2aad643fa88daf42757bd93074b72a50b7', '95.111.237.59', 1669661076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313037363b),
('086783d968bff4004350f45038c57e2b93303e1a', '95.111.237.59', 1669661076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313037363b),
('b9a7a28b7a2e3658c17a1d8df9e094995c095f47', '95.111.237.59', 1669661096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313039363b),
('e2aeef8b014ef0535b4e0d8302c48e776ac5ae24', '95.111.237.59', 1669661096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313039363b),
('6545477b37db2a5d92f97ee3e6ba9814f2999275', '103.31.100.196', 1669663436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636333433363b757365725f69647c733a313a2231223b),
('e3d720cc756018993c9da2af40828e977c363b34', '95.111.237.59', 1669661755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313735353b),
('5559c46797c58589f56ca0090b20d933f8fd2d22', '95.111.237.59', 1669661755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313735353b),
('cc7d8b756960c2c9815a0d3983ac1b3da5a71f42', '95.111.237.59', 1669661755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313735353b),
('b9582199c766c9d744f2391264df40ba4b2d8d2a', '95.111.237.59', 1669661796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313739363b),
('865f52435f829d062738ceb55deefb0aa4277dcc', '95.111.237.59', 1669661796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313739363b),
('38f2d53c9b41e27d8b9c26d1dbf0ffdaa793c2a8', '95.111.237.59', 1669661796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313739363b),
('80975b763ce6a75c78542d276314e1abdff4971e', '95.111.237.59', 1669661847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313834373b),
('7d7d7439f2d39a0357dce6fa8d24838a1fdc7dc3', '95.111.237.59', 1669661847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636313834373b),
('59271dc3e3e70e0ab19da8d3fbe572bef491d258', '103.31.100.196', 1669667781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393636333433363b757365725f69647c733a313a2231223b),
('161ee82a925c8e1d77979d1194a0680cb431c201', '103.31.100.196', 1669674666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393637343636363b757365725f69647c733a323a223237223b),
('6e1d5da8630df4dcefe73eb234ecca112e2c9644', '103.31.100.196', 1669677715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393637343636363b757365725f69647c733a323a223237223b),
('6e2a23b9dd680d0764cd37ac3edc4ab958c799f2', '103.31.100.196', 1669745708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393734353730363b),
('b4f72eebbb40301b3110598bc72b101cd2349d07', '103.31.100.196', 1669766252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393736363235323b),
('b2945e1a70dff27965da5b2527c5093aa5f757dd', '103.31.100.196', 1669766252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393736363235323b),
('0fb9b6e210f2b329daa1072249c87a5e8b248e81', '103.31.100.196', 1669824517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393832343531373b),
('15725457f20cadad03bd25dde38b434a17c02342', '103.31.100.196', 1669829722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393832393732323b757365725f69647c733a313a2231223b),
('1915d750adacc8870dec04b1e0d768903e5606aa', '95.111.237.59', 1669824589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393832343538393b),
('34d4ac8e6c94e844494ed1763222808f4ec9097c', '103.31.100.196', 1669833987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833333938373b757365725f69647c733a313a2231223b),
('943dd951341149d13c18cf5b20c828a97fbe0043', '103.31.100.196', 1669834375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833343337353b757365725f69647c733a313a2231223b),
('9c012e57096e386b8122abb962941a861fd31b1c', '95.111.237.59', 1669834043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833343034333b),
('220958510d8c31dd3adc78557422bd9081074423', '95.111.237.59', 1669834057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833343035373b),
('5035ad316b579205434ca4ea9d06d4bda8dc890c', '103.31.100.196', 1669836650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833363635303b757365725f69647c733a313a2231223b),
('bf7cc5680aadc2301db844b2f544555657e9a92c', '95.111.237.59', 1669834436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833343433363b),
('3fe2ecb12adea98d8e8701f18b8d6732782b27cf', '95.111.237.59', 1669834451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833343435313b),
('02ff02b62eadd5390a666d32dca8b81fe862b20a', '103.31.100.196', 1669839088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393038383b757365725f69647c733a313a2231223b),
('c9905c0223d2629d194156f4ebde3ed10d387959', '103.31.100.196', 1669839397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393339373b757365725f69647c733a313a2231223b),
('5528ac41b826f809fed4e60e78f495b8321737db', '103.31.100.196', 1669839716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393731363b757365725f69647c733a313a2231223b),
('92beb466bfca91bea07fde7a3f8a1bbb1a5369ba', '95.111.237.59', 1669839706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393730353b),
('44f19606e0bddd05ac5aaa844beab3b468dd2ce2', '95.111.237.59', 1669839706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393730363b),
('8495451b032ac78c4ee2f4a599daca4baa993109', '95.111.237.59', 1669839706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393730363b),
('77174f049097a902873e06db161bfcab4a38fea7', '103.31.100.196', 1669840385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834303338353b757365725f69647c733a313a2231223b),
('0f181a73548761b0add639a341fcaf54e819bb48', '95.111.237.59', 1669839835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393833393833353b),
('4f0ed9d71e5d9c0f30829780b068af8c84ef9752', '103.31.100.196', 1669841238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834313233383b757365725f69647c733a313a2231223b),
('d77ac5537b8780d4f89f7cc4f39576c75474d954', '95.111.237.59', 1669840446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834303434363b),
('e1018e7fc18c1a9653203a0e09cb5bb2605d2ecd', '95.111.237.59', 1669840495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834303439353b),
('07a890cb9f6e0907a4907f5e04a8ab771bf68757', '103.31.100.196', 1669843626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834333632363b757365725f69647c733a323a223239223b),
('ed7a808fc24e3a008e259a124874a51777bc170a', '103.31.100.196', 1669845002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834353030323b757365725f69647c733a313a2231223b),
('1a3d47cd8c44b01c1005fb8551a6e86633ed4446', '103.31.100.196', 1669846699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834363639393b757365725f69647c733a323a223239223b),
('530625ef516ca7a2a5cae9646236268f1f35d46e', '95.111.237.59', 1669843663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834333636333b),
('21abc837d661eca9ed9c39c3bc3d0d25d8bd3ee9', '95.111.237.59', 1669843901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834333930313b),
('665452cafc9706f757c01ee920204fedf32e2d6b', '95.111.237.59', 1669843975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834333937353b),
('94f61f42acfee1fdd368c4a99127d14118ba89af', '103.31.100.196', 1669852307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835323330373b757365725f69647c733a313a2231223b),
('e25415a17902a96b53988c3e8df0c6ad57a6f41a', '95.111.237.59', 1669845013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834353031333b),
('e3e1440edb683334b969b58e92b389e5f7adc90f', '103.31.100.196', 1669847032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393834373033323b757365725f69647c733a323a223239223b),
('a56fdfc94ab51e175e2c72a090e04153b5fdf7da', '103.31.100.196', 1669850254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835303235343b757365725f69647c733a323a223239223b),
('32e01f79dba98bdc4116cd887926e8484272a636', '95.111.237.59', 1669850218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835303231383b),
('0656b13f82ba5f0711b8f5c2bb2a2885ac22691a', '103.31.100.196', 1669851053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835313035333b757365725f69647c733a323a223239223b),
('7017bc8d32252e5c2bec0951f4ad5ff96ce7dbac', '103.31.100.196', 1669851391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835313339313b757365725f69647c733a323a223239223b),
('3e63a1059335eda89290e4a89089495b6d7fc96e', '103.31.100.196', 1669852760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835313339313b757365725f69647c733a323a223239223b),
('74d2c3892cdedc81ab09fd58243d1fb787188e21', '103.31.100.196', 1669852501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393835323530313b),
('21cfbaaa91ab524660547b29c712ca3c574bbb58', '103.31.100.196', 1669907613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373631333b),
('ae868451ad52df201bd745153642d8cfca5ecc97', '103.31.100.196', 1669907489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373438393b757365725f69647c733a323a223239223b),
('85180ff1fc3a6e1b17b0d32345e8e08c127aee21', '95.111.237.59', 1669907341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373334313b),
('e1910fa2725ce23ab5db3165657ece8414954b74', '95.111.237.59', 1669907358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373335383b),
('aa4c2a38a5a8c09ca6c03ae42ab362b1cb73c445', '95.111.237.59', 1669907399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373339393b),
('74e601fe29608b4733febdd41a0c585826b816a4', '95.111.237.59', 1669907409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930373430393b),
('9cb22bc1096e30a54a8b1673a192b8d024aca764', '103.31.100.196', 1669913568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333536383b757365725f69647c733a323a223239223b),
('e595782f09e52271680ca8dcb8ae205b8faeaafc', '103.31.100.196', 1669912239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323233393b757365725f69647c733a313a2231223b),
('861eb762d8a6152b7673c8d25f45b277c5802623', '103.31.100.196', 1669919387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930383437353b757365725f69647c733a323a223237223b),
('6490ad1af29279878f7719b49a840dab427d3740', '103.31.100.196', 1669909857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393930393835373b757365725f69647c733a323a223239223b),
('bcb0afcd472816b63df59e4969cd5aba9f46d2ac', '103.31.100.196', 1669912611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323631313b757365725f69647c733a313a2231223b),
('b88061a3044aa22582846083d9db52ebd8f508c5', '103.31.100.196', 1669913026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333032363b757365725f69647c733a313a2231223b),
('42b72090ad6a034d2e05d5b1d84c7c48ce00b632', '95.111.237.59', 1669912623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323632333b),
('9a07bab969e489ca2fbe8c1667bf5fd30f4ac17e', '95.111.237.59', 1669912629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323632393b),
('0bb70499d8d9207f6fe3d99b1e16ac923f2b0445', '95.111.237.59', 1669912989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323938393b),
('267d3ee871705fc9e7c46a445e35cf0a71f83c82', '95.111.237.59', 1669912989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323938393b),
('92a37847bed2d3a0c76d3c95e9713b168439eb5b', '95.111.237.59', 1669912989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323938393b),
('adfe6b3cdf64c04d9cb9097f0fd6791cb743e5cd', '95.111.237.59', 1669912989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323938393b),
('ac5e7b9dfe7cf9e7a31594f40895592f492300f5', '95.111.237.59', 1669912989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931323938393b),
('a86d653a7c6e9658742c707a036f593a4f5fd5ec', '95.111.237.59', 1669913019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333031393b),
('44819743f457b2be7b39a803825db969aa8f1537', '103.31.100.196', 1669922200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932323230303b757365725f69647c733a313a2231223b),
('7e7d6ffcc2f7a2798058079993622d471503e471', '95.111.237.59', 1669913080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333038303b),
('b2917666c5f5f7f50f93d8b74099dcd9dccbc0c0', '103.31.100.196', 1669913903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333930333b757365725f69647c733a323a223239223b),
('3952542baab156f4c74d0fcfc8ade30448ecb102', '95.111.237.59', 1669913634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333633343b),
('3e9f563226f29d83f1df81625607a60441d0ea04', '95.111.237.59', 1669913655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333635353b),
('b012d9a2b0aa32c3e9424729bed568d1612af1d5', '95.111.237.59', 1669913686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333638363b),
('f6653d5e6cf19e9b524c2f6c0cd7a9c7c2711ec1', '95.111.237.59', 1669913727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333732373b),
('e8bcd3610257403182d79d220d83a9dde9a5af45', '95.111.237.59', 1669913813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333831323b),
('e7307e3c0cf2a5a6ed863c9e4311a8251405cc8f', '103.31.100.196', 1669914249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931343234393b757365725f69647c733a323a223239223b),
('8ce0a9341b7babb018721726d838301dfa0efc85', '95.111.237.59', 1669913910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333931303b),
('55910a7102a04ca709aae34157ffa817dbf14a54', '95.111.237.59', 1669913915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333931353b),
('433c69881f16ff49d37c4d41ea4f2a905c2868ae', '95.111.237.59', 1669913955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333935353b),
('b3e43e342357936766e316b313aad020b0d3ec3f', '95.111.237.59', 1669913968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333936383b),
('21c9732e7132f006bc0e0723346cb5dcee15e39f', '95.111.237.59', 1669913992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931333939323b),
('6dcd212ec8b0c831cd39eb4588011da73e502fd4', '95.111.237.59', 1669914031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931343033313b),
('d6a8998baa6601fc8eb6db1dcda1396d700e888f', '95.111.237.59', 1669914062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931343036323b),
('5dc8df185fe63ac4ee5ace599e5dc903108ae231', '103.31.100.196', 1669914666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931343636363b757365725f69647c733a323a223239223b),
('ca272fe8c2e9542aae572c0b4b920933a42e9a9e', '103.31.100.196', 1669915848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931353834383b757365725f69647c733a323a223239223b),
('de8a38b9106abba4040da0d24461db048be5b92d', '95.111.237.59', 1669914915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931343931353b),
('4a4488819e0aa59f3b74fbc2deaa1866ffe1843c', '95.111.237.59', 1669915836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931353833363b),
('4e3de35a7c128790f074f48e0e45553086dfb01c', '103.31.100.196', 1669916234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363233343b757365725f69647c733a323a223239223b),
('80e01bc523dd39b84e85b63f3570cc15d049595b', '95.111.237.59', 1669915865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931353836353b),
('c45d025a09e06863e54b7f1469622c518de970f9', '103.31.100.196', 1669916551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363535313b757365725f69647c733a323a223239223b),
('07e32fa59674f92ce9b76ff6274f85a79724813f', '95.111.237.59', 1669916541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363534313b),
('9c07f18ae6923954f65103dbd8db1a63b25459ff', '103.31.100.196', 1669920115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932303131353b757365725f69647c733a323a223239223b),
('107dd95d14e9169353fdcc61f19d948908bc8664', '95.111.237.59', 1669916623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363632333b),
('2ae27e6ca27ccc72fb04bfabe3754d58efd17bde', '95.111.237.59', 1669916632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363633323b),
('cbb77227607cfcdf3830018deeee41fafdded9c7', '95.111.237.59', 1669916636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363633363b),
('07588a56b06973e1e6efc29d983e6fe3c40bc960', '95.111.237.59', 1669916668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363636383b),
('128c2ff4db9f14b53213519cb18beca366af2e8b', '95.111.237.59', 1669916668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363636383b),
('9385fc8f9194bca51cf5105ac161c1032bb6df76', '95.111.237.59', 1669916675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363637353b),
('de721d38015b184f69b692bf21ff828eb95bcf13', '95.111.237.59', 1669916697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363639373b),
('894023a10e4bb307ba64626203133b904ebf19b7', '95.111.237.59', 1669916703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393931363730333b),
('a56e598629d19af2d20a95dc767be05041f327c7', '103.31.100.196', 1669924371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932303131353b757365725f69647c733a323a223239223b),
('caa3b382f749e034fef526ce3a64e09851e4e285', '103.31.100.196', 1669922999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932323939393b757365725f69647c733a313a2231223b),
('21c318d1ad709c89a5335056860ec9cb45a4f09c', '103.31.100.196', 1669924013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932343031333b757365725f69647c733a313a2231223b),
('e3fed5517ebb2ffd0ef9da66e9ec773b7fccd261', '95.111.237.59', 1669923013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333031333b),
('5ed600d307571ea69464eea9d73d4ec0da92bdd9', '95.111.237.59', 1669923022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333032323b),
('e42ddeae7985efcd8eb027afe60f5f867ce7fdb9', '95.111.237.59', 1669923038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333033383b),
('9567e0fc346cfdf5718f6707b0f87fe7f90f18f5', '95.111.237.59', 1669923038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333033383b),
('c32da2136ae503ccb945f99549837bacb25f88f0', '95.111.237.59', 1669923038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333033383b),
('141fe128ed31acc20738a63988df543a41ec51b7', '95.111.237.59', 1669923075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333037353b),
('8fe171067bd0c6a0febc2b0850f50c063d1202ab', '95.111.237.59', 1669923083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333038333b),
('3642d5ea8ef59896c034d27ec473d4e9cad0cd18', '95.111.237.59', 1669923105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393932333130353b),
('f5c2eef5c7f759404b620ac784226a5eba03d76b', '103.31.100.196', 1669930956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933303935363b757365725f69647c733a313a2231223b),
('792dc42ba683f25b2b77119b11ec5684a0a20f08', '103.31.100.196', 1669933184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933333138343b757365725f69647c733a313a2231223b),
('8ae37ac658cea651f06fb69ad0d5a08dce080c11', '103.31.100.196', 1669933591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933333539313b757365725f69647c733a323a223239223b),
('95316cb0a5172cbfeb53df4fc8a7389c7cc6f09a', '103.31.100.196', 1669937625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933373632353b757365725f69647c733a313a2231223b),
('a46b02960809e6ecd76c48d6331f7129d2819fff', '103.31.100.196', 1669934340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933343334303b757365725f69647c733a323a223239223b),
('b13c6f2a5ba1d2a3e724752e2f693d5447dbd2ce', '95.111.237.59', 1669933832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933333833323b),
('0593e751d6d7bfac69cd85158de97cef8e9b4254', '103.31.100.196', 1669940330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393934303333303b757365725f69647c733a323a223239223b),
('e6339339f69d069ba201381bdb9e22b486336fec', '95.111.237.59', 1669934354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933343335343b),
('7a81b0efda95c551996c9f3ce0401585afc17dff', '95.111.237.59', 1669934354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933343335343b),
('ec7ddb2a6c07fb7ff79822089b211d16b256ca81', '103.31.100.196', 1669938035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383033353b757365725f69647c733a313a2231223b),
('0d0885a7816eeb7395388389fadd449411f097d2', '103.31.100.196', 1669938346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383334363b757365725f69647c733a313a2231223b),
('910deb525d095b8c62942409d83dc30a861eccd9', '103.31.100.196', 1669938870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383837303b757365725f69647c733a313a2231223b),
('90810b6d59e1e62c0204e03f218f8a17380d6925', '95.111.237.59', 1669938482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383438323b),
('dbb0aefda3423a909e3856d78246c5d5745d33a5', '95.111.237.59', 1669938857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383835373b),
('51af9ee167f6309318fe0d8d3318982e71d1b867', '103.31.100.196', 1669939475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933393437353b757365725f69647c733a313a2231223b),
('813ce76f5c43122a7fe9bc4f45344e3a7915fbd9', '95.111.237.59', 1669938907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933383930373b),
('4eba6cf3d315f2a6d17e3b4125746fa17c85af17', '103.31.100.196', 1669939528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393933393532383b),
('68b351aa7a70bd97701356e1db4db32730e5235a', '103.31.100.196', 1669940688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393934303333303b757365725f69647c733a323a223239223b),
('7a99314944a78fdfce11f8f9e0d10a746dcb6cb6', '103.31.100.196', 1669959492, ''),
('6df90f57605ee0c2d612ff8b30fd52aecdc63fa3', '103.31.100.196', 1669993551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939333535313b757365725f69647c733a313a2231223b),
('f5cffada4941c752da3193e715cc62731c0e98e8', '95.111.237.59', 1669990970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939303937303b),
('28d3eec8b6ada1b56828556e912ac2593911e38f', '95.111.237.59', 1669990970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939303937303b),
('20f2b207638bafa5b1acbcb6af73f07ffe1f759d', '95.111.237.59', 1669990985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939303938353b),
('29f0b584c9d8f0c477bfb0a03e950969fb0ecf06', '95.111.237.59', 1669991002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313030323b),
('def01e01e9e6eb283702a519fd1e20e556674cc0', '95.111.237.59', 1669991066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313036363b),
('09d5ea9a23424a29f870e64862c7d995c586cb0f', '95.111.237.59', 1669991068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313036383b),
('9194e9553fc74fda4aa2f5f58125abb2a2eae7e0', '95.111.237.59', 1669991097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313039373b),
('78459e35609ac8e8a0d30e46a6c3c62652c77605', '95.111.237.59', 1669991097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313039373b),
('c315b1a95dea57d163408100f37330f3268e1dc6', '95.111.237.59', 1669991097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313039373b),
('239067b703336834f4827e87be05a37a1d4f1a77', '95.111.237.59', 1669991107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313130373b),
('f81948769c623af290c0b8bc00cf472a4cec4d7a', '95.111.237.59', 1669991117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313131373b),
('e87bb4141f9102fb5634f09b25e4dd1c29961b7d', '95.111.237.59', 1669991128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313132383b),
('00653b5348efe35802330b8c349ce50e11502539', '95.111.237.59', 1669991144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939313134343b),
('73a43c101b16447b3cd7f35b869bba805e173668', '95.111.237.59', 1669993548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636393939333534383b),
('181b417f3b952e3da80876e59816dce67d438e0c', '103.31.100.196', 1670000671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030303637313b757365725f69647c733a313a2231223b),
('339d8ea55124b9167e7c481216dc04808f5a169f', '103.31.100.196', 1670002179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323137393b757365725f69647c733a313a2231223b),
('1e96c9d8a5ebf8e01533bde2e6f151bebdf4ed54', '103.31.100.196', 1670002648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323634383b757365725f69647c733a313a2231223b),
('1b71c5fe4f9366005f2a0660751c291b426d6ffc', '95.111.237.59', 1670002194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323139343b),
('410974b755095c2193c4dbb78c152a7e44c9eea8', '95.111.237.59', 1670002203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323230333b),
('dcac7e7aaf6cd3707ecaa9dd41a02aa2eb11ec57', '95.111.237.59', 1670002221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323232313b),
('52cca3c96941f05f2543c5cdff61caabdf52f8cf', '95.111.237.59', 1670002262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030323236323b),
('60f01189b4821db9689bd44f6451e4ebc14a5d07', '103.31.100.196', 1670009840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030393834303b757365725f69647c733a313a2231223b),
('4a68f3c31dd19ca4e74f8ae524c6064feb7a2f09', '103.31.100.196', 1670009926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303030393834303b757365725f69647c733a313a2231223b),
('8ef15493fd5e0d0daaff59d74db193720bc9c2cd', '103.31.100.196', 1670025687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303031343939353b757365725f69647c733a323a223239223b),
('7ee63991e7ee403f616a483602df4f76db0c96fa', '103.31.100.196', 1670023140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303032333134303b),
('945e07134744f58dce8cb4f4438418e1155d7171', '103.31.100.196', 1670025071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303032333134303b757365725f69647c733a313a2231223b),
('95166632775f62107ca5c726309e7ce1e10f09f9', '103.31.100.196', 1670255413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303235343537343b757365725f69647c733a323a223237223b),
('5fc7230add45b85e2b94266c6938f5d244d0e409', '103.31.100.196', 1670258364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303235383336343b),
('c87827caf48ad0fcdbffa63eab684e0d4eceb893', '103.31.100.196', 1670258565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303235383336343b757365725f69647c733a313a2231223b),
('c508440f71336e7ca55927f95952303faf00dc00', '124.29.228.68', 1670285381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303238303432393b757365725f69647c733a313a2231223b),
('338f799e5ff57abf3301ceb42d669ff1e3ba7d5f', '103.31.100.196', 1670282056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303238323035353b),
('99c142e3d3c578bc4a28f19c4f8a256a6fd3f63d', '103.31.100.196', 1670285425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303238323035353b757365725f69647c733a323a223239223b),
('677aa934362b86195c8797668f6a69eadcc40ffd', '95.111.237.59', 1670282096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303238323039353b),
('2a2d135539034618f4e5afca726d12650c5dc3ee', '95.111.237.59', 1670282120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303238323132303b),
('bf26a74e0362ac58df5b8dab8b1c2d8cf6167995', '124.29.228.68', 1670341577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303334313537373b),
('d17acb383c3a72a6e1c45ec7509e8cbf4da1bf79', '103.31.100.196', 1670346198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303334363139373b),
('37091d3db09b833c739850d2954fae2ac41be30f', '103.31.100.196', 1670348898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303334363139383b757365725f69647c733a323a223239223b),
('38a4973adc3828f3fd71b398c9b050fda3de1046', '3.253.111.119', 1670355170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303335353137303b),
('da90aab6caf65a0be458ddd95db06dc885fb62ea', '3.253.111.119', 1670355171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303335353137313b),
('2d0420d295d64d3fb3d7e2bdc5d70c198c70bff6', '124.29.228.68', 1670427827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432373832373b),
('10ac64e88eecf4c7f1899b3c752cd8ab9a8a35bb', '103.31.100.196', 1670450905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303435303930353b),
('493f8b248af2eea5b01f18883af56a2467e1ef69', '175.107.217.62', 1670513307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333330373b),
('6062a0be05fa1ffea38cbfb23d2a30cf2ecc5377', '175.107.217.62', 1670513717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333731373b757365725f69647c733a313a2231223b),
('0331b3bde84e8fc3510aa4037c1d17a902ab3c6b', '95.111.237.59', 1670513327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333332373b),
('f1813eb9941a020d096df5ec0a13dbba489f07ee', '95.111.237.59', 1670513330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333333303b),
('621b8038abaf5373e548864c4a6fcfbd70150ba1', '95.111.237.59', 1670513364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333336333b),
('35c6406ce430a117d812e12cea18a401ff0d64b1', '95.111.237.59', 1670513401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333430313b),
('89b976fd8e802de94cfbd973dcd4ee1a4cd4a65a', '95.111.237.59', 1670513584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333538343b),
('d1ce6cb293ab0d40fad33981e3c826173f2810a3', '95.111.237.59', 1670513587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333538373b),
('93da5bf4613e781f009340dd7872769b46e778d8', '95.111.237.59', 1670513611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333631313b),
('ded1af20bdc45fa9c344361e9d54abf70da60e23', '95.111.237.59', 1670513627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333632373b),
('abd7a23d15a626e6fdf7195effaae49d95fbd7e9', '95.111.237.59', 1670513648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333634383b),
('5b6643c30f596b7d64086512a6bb28df8d1f8625', '95.111.237.59', 1670513664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333636343b),
('b6df021508e274c1abe84537b4fafe908561c192', '95.111.237.59', 1670513676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333637363b),
('8bd4750b973ce0876fe97e51f3cabb8abb8db30d', '95.111.237.59', 1670513688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333638383b),
('7aa8a028e050dbb2bbfd5d23078968674f0413a1', '95.111.237.59', 1670513702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531333730323b),
('99716985548745e56ef5aee43d66c21f5537c31f', '175.107.217.62', 1670514053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531343035333b757365725f69647c733a313a2231223b),
('16353bc175b4211f4702c6c063a684f16e8e9917', '95.111.237.59', 1670514012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531343031323b),
('8dc1b0c0ecfc64376fd81cc3bce24201c9367a83', '175.107.217.62', 1670514354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531343335343b757365725f69647c733a313a2231223b),
('02216412ea7edfc0c7ff448eb90e4df6c782d1c6', '95.111.237.59', 1670514350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531343335303b),
('2cc9b212e191b0e7f508a71a66054f3bdece8b32', '95.111.237.59', 1670514353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531343335333b),
('b1a7ee50b659cfec19ae5703838c0e7bbf56832e', '175.107.217.62', 1670519991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303531393939313b757365725f69647c733a313a2231223b),
('750ca5302483e23794c7638c69794de7488a86f0', '124.29.228.68', 1670528971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303532383937313b757365725f69647c733a313a2231223b),
('5917eb937e756d339bac9c021a1f05177f6d7f5a', '124.29.228.68', 1670530437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303533303433373b757365725f69647c733a313a2231223b),
('dbc0fbd296fd57d8c8cf61d85476fa8f57f7d76b', '124.29.228.68', 1670544167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303533303433373b757365725f69647c733a313a2231223b),
('9b71b7d90fef802163f59c985493e6bbe70796ab', '124.29.228.68', 1670599734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303539393733333b),
('951747d38692c7446439b062ecdc3625d0be034c', '103.31.100.196', 1670629516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303632393531353b),
('90dfaa86484ac0e3c06c0b49996e9cdc56af0447', '51.159.102.248', 1670629899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303632393839383b),
('6a84656ccc75c285329e53b747c15a1a8eea369f', '51.159.102.248', 1670629899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303632393839393b),
('eae135706e6fa5af01c340ab108b8073d9113944', '124.29.228.68', 1670863798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303836333739383b),
('8e4bb3a4267d0b993db8da59b915a6a86f17d9b0', '124.29.228.68', 1670868340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303836383334303b),
('01be3f34d4f35f734d0d76f9e15d201bb571fbaf', '124.29.228.68', 1670879049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393034393b757365725f69647c733a313a2231223b),
('bc73f94cf45629de840de0f74a7c4b8e84de33e5', '124.29.228.68', 1670879676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393637363b757365725f69647c733a313a2231223b),
('e3d208eea7a39f08a33fde8c42854f75f726a0ad', '124.29.228.68', 1670883463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393637363b757365725f69647c733a313a2231223b),
('8cc1b48860c696663a3aae7aa57f1271b458bf90', '95.111.237.59', 1670879690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393639303b),
('4e55bcc23c9ca259e5c412f0ffbacb191ab1dac6', '95.111.237.59', 1670879708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393730383b),
('944441514aaa87e2bbb0e8b582e70a9ffc4498d2', '95.111.237.59', 1670879719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393731393b),
('d88c4e0ec9a166a600c684d6df144d08c67e4507', '95.111.237.59', 1670879827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393832373b),
('c9ec539dd0736c1b4c6ade528f9cbaad957ebbe5', '95.111.237.59', 1670879847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303837393834373b),
('fce2e5bb327ac165c561b6b88b91feb70a4a7d00', '124.29.228.68', 1670951241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303935313234313b),
('5fab7281463fe666015df2815489ff94355c87df', '124.29.228.68', 1671032222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313033323232323b),
('7fbb1284e996b4f1d0934702e24251ad6c5137a7', '124.29.228.68', 1671043432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313034333433323b),
('5344e1089b02e9abc55f2f1bfc02574af3ad9103', '103.31.100.196', 1671055647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313035353634373b),
('fced26e614edbc58f9741176be953529e1f39568', '45.55.128.208', 1671064720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313036343732303b),
('b69980f735736b748d2a6c2256c56e167d44a777', '138.197.10.105', 1671074545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313037343534353b),
('c6f8067faab20677e2974aac34a1cde5470181c7', '124.29.228.68', 1671116315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313131363331353b),
('090d830fde8e763e96b03a537e72a8410d64b588', '103.31.100.196', 1671140020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313132313935303b757365725f69647c733a323a223237223b),
('85cb2efe9ec2d0dbb07e3cacb8129ebeeeb05a4e', '124.29.228.68', 1671146808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313134363830383b),
('0702677f4265d164b8d55b337e2c8b7227af7991', '124.29.228.68', 1671203127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313230333132373b),
('e692bb96492b3eec1047513a6860bdf7760e911c', '124.29.228.68', 1671236948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313233363934383b),
('261019db188aac28f51526266f0a4f95ba06d357', '202.28.120.40', 1671372563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313337323536333b),
('156a1aee3af48d18367c96adc8f1c225044f3c3b', '124.29.228.68', 1671462818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313436323831383b),
('e0e01dbe2fdd75fbee0ba6fbfd78f27a9d5118f8', '157.97.134.109', 1671482222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313438323232313b),
('c1cbea7af40b430729d09de64b42e69107d1ca45', '66.249.70.9', 1671543332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313534333332373b),
('647d8619a8c19aec5e6402cb4c22947eaf7fae14', '66.249.70.11', 1671543339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313534333333303b),
('d40ce4fc8e2f271a20bced735567fb22725c2ce4', '124.29.228.68', 1671550766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313535303736363b),
('71218bec52c0f500e4f39f7c467612d84aca4757', '124.29.228.68', 1671638681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313633383638313b),
('02d03f23e0b09f678f9fca98293f452291079d3c', '124.29.228.68', 1671653057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313635313336333b757365725f69647c733a313a2231223b),
('48ac3016c02072ab8f0f4c741585d7e0c5153d93', '94.140.8.85', 1671723566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313732333536363b),
('407a809ac8d7e00af7e59f4799d544b9c513014e', '124.29.228.68', 1671723607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313732333630373b),
('17321e5ded6d8f13924a79aee5b00ddcbc2b3248', '135.181.91.119', 1671728878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313732383837383b),
('2260b4deca7bf63896760c7af2d79c110171602c', '135.181.91.119', 1671728878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313732383837383b),
('c61715e017dbe292c12a1e4bc6708fd956277776', '34.28.15.213', 1671741179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313734313137383b),
('90fe96ab1b5bcaadf4d78b5f95ae2352e01eeeff', '34.28.15.213', 1671741179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313734313137393b),
('7fe7ff013395cec4a697796100561f8e6080eaa1', '34.28.15.213', 1671741205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313734313230353b),
('7dbdc389c3b34912f499fca2b6cce3179f89428c', '104.154.226.69', 1671753260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313735333235393b),
('b0240d81c858061d1205f466235acf36a26bc257', '124.29.228.68', 1671824475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832343437353b),
('bda086dc3ff62b4cbaf51959cb3a32efe02f6d1f', '124.29.228.68', 1671824475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832343437353b),
('322fae431e83fd9945491b770effe6745e8c12d2', '34.28.109.76', 1671827195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832373139343b),
('d92f00f0fedbeabb4126709549e2c001fcb28cf7', '34.28.109.76', 1671827197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832373139373b),
('59a17ec608e5467846021bba077eb8ac9c6f705b', '34.28.109.76', 1671827203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832373230333b),
('b7f33686956ce77eb06712beab495eee4d141507', '34.28.109.76', 1671827204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313832373230343b),
('390c67dd9ffe188ff294fe6c4b89e1481c2973e3', '202.165.234.83', 1671842120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313834323132303b),
('2345b9bfee461d129e8309629565b52764459a40', '35.239.11.1', 1671854089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313835343038393b),
('33894621a15da8ac27b39d9046372189215fae88', '35.239.11.1', 1671854090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313835343039303b),
('4c7e037e35ce3f490bf2d5a8842ff62ece8b82d4', '35.239.11.1', 1671854096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313835343039363b),
('783d038181ce8565a62202b85b28a07c83c4434c', '35.239.11.1', 1671854106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313835343130353b),
('f7d79f44240f2113cbe5facd6bbf7c5d381bb5ba', '35.223.115.56', 1671919228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313931393232383b),
('02929ab5777071075b6f8efbebdffd0b180c40b4', '35.223.115.56', 1671919239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313931393233393b),
('13c80bb4b7fcf49b6a10e937fd84fe2749aec167', '35.223.115.56', 1671919256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313931393235363b),
('d3bf7c822ec587e8fef6434fd3a2b4cdae3b21e8', '35.223.115.56', 1671919257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313931393235373b),
('a0bc9ca14a554079f51fb147ea9fc3a7a259f8c5', '34.67.38.26', 1672006671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323030363637313b),
('fb1f5d8d4199bf9c105d772674b03d8e594b36a6', '34.67.38.26', 1672006674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323030363637343b),
('a65385a54fee9f59564a2d82646cb92c2877c05a', '34.67.38.26', 1672006675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323030363637353b),
('4acdae9ad8b2d5bb49041283f3bdfd5d3b9da816', '34.67.38.26', 1672006678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323030363637383b),
('bad30e23e0991f5e7e4fee5acea5be97840c5e01', '34.136.174.190', 1672094324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323039343332333b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9a3a1f8c3f629d96fa8ccfe5313f4a1138d62a0e', '34.136.174.190', 1672094335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323039343333353b),
('cdc458cbd2a66956873a9e79de6d5fe6bfe9739c', '34.136.174.190', 1672094336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323039343333363b),
('31a47bede77f92df8d2b6c17da519ac7223cff12', '34.136.174.190', 1672094336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323039343333363b),
('7916a801e9c56903b59b4e2818530b7e567f2a7f', '202.165.234.83', 1672239276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323233393237363b),
('2a4817b0a730937de71afce0937fa4e603b96e2d', '202.165.234.83', 1672241281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323233393237363b757365725f69647c733a313a2231223b),
('9e7efcfddee388370f8523714ca94f3f80733ed8', '66.249.70.13', 1672657070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323635373036393b),
('2cddc073edae6c0fc4725ed6980585aace2757d7', '66.249.70.13', 1672657091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323635373039303b),
('f6e7891b82bb762de5c8d9a2af3dee12b79d62d5', '66.249.70.11', 1672657091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323635373039303b),
('8da1df3eb9e08bce27490afede60e3de76ca0108', '202.165.234.83', 1672672530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323637323533303b),
('4980a727bb3ec785e6a4140f786d77ab68f496e3', '202.165.234.83', 1672681424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323638313432343b),
('d9f654977bb9e42dbe45bc2ecd46afce60185a2b', '202.165.234.83', 1672695158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353135383b757365725f69647c733a313a2231223b),
('3f948c581cb557fa5f2b3cb08ff04d0e12dafd21', '95.111.237.59', 1672694808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343830383b),
('4405f9c583aadb0367e36d44e4c8c30e188fff12', '95.111.237.59', 1672694936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343933363b),
('a03b6541f43e50bdd706b9df0c0edb4a4b21c1e9', '95.111.237.59', 1672694946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343934363b),
('3f97ba435284eea9d9c11ac0ba808c86051ca83a', '95.111.237.59', 1672694955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343935353b),
('64c8184d3935607dfa95464ff6ad2d68586d4cf7', '95.111.237.59', 1672694965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343936353b),
('f5dcd09ff029eff41446a2feb01afdb0b1b84d9c', '95.111.237.59', 1672694975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343937353b),
('ef771b6aa06ea31ece619b052fdfdd0a82a8fd73', '95.111.237.59', 1672694988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343938383b),
('44ff8a0fbf49759d7747d1dbaeea63bbdac7768f', '95.111.237.59', 1672694998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639343939383b),
('b7395eb0aaf1e9eab103fe92ed02e75ef656950c', '95.111.237.59', 1672695008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353030383b),
('1b314ca9c9dcb19c22f634ccfb05e98f63415adc', '95.111.237.59', 1672695016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353031363b),
('2dea8e677041dc02291bd0d19ad889119bcb0ee2', '95.111.237.59', 1672695030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353033303b),
('a76c97dc9aea64c87ff4d928bb3db81f00b2fe11', '95.111.237.59', 1672695054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353035343b),
('3199ff9ae5c080dea59c4daba56a56a437f448aa', '95.111.237.59', 1672695067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353036373b),
('8d1bee3dcb966d1955df8249882b774bf4bdf8d8', '95.111.237.59', 1672695077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353037373b),
('abd4c6808bd9071d4e1a49623fad74e86dcb76d8', '95.111.237.59', 1672695124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353132343b),
('b6e15bb9332faf6df69584f27c6a9413f787785b', '202.165.234.83', 1672695563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353536333b757365725f69647c733a313a2231223b),
('d38b8c2a365406fba9fd205e178c90239f15d7f6', '95.111.237.59', 1672695163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353136333b),
('22777d804e198faccbd4fe7f98305389f1b35b78', '95.111.237.59', 1672695164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353136343b),
('a466faa125984e7a983d5c7de280dd248d76a798', '95.111.237.59', 1672695165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353136353b),
('c2bdb44060a2ff7c18d4d6b51cd406020c16c46c', '95.111.237.59', 1672695167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353136363b),
('a4c4ebea8df633ba15979fae322a0dab0581da7c', '95.111.237.59', 1672695168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353136383b),
('405d75e5914b57943c580b5fe465922791e6df46', '95.111.237.59', 1672695170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353137303b),
('657efc45c4af4245adca2df548e525471edfa1cb', '95.111.237.59', 1672695172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353137323b),
('2ccfc0433581e694127531b797a43ccdbfc889f2', '95.111.237.59', 1672695176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353137363b),
('922c67f462de8e094c0c14b8bd12b6cf58d7708f', '95.111.237.59', 1672695231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353233313b),
('e71b1460864057e65b7a51d10be072883b378988', '95.111.237.59', 1672695231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353233313b),
('5b88f72f0013eb13937f46b661ae4e46523508d2', '95.111.237.59', 1672695243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353234333b),
('30f518c3767008da153556a8934400d0e43f457f', '95.111.237.59', 1672695259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353235393b),
('a6d700702ca6647928f23225bc6efc35a4bae9eb', '95.111.237.59', 1672695275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353237353b),
('e579f551d9397a0017ff3eb02f81af4ec7e40d74', '95.111.237.59', 1672695373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353337333b),
('365a29d430d3fc4a85af045fe4d64943d79dfe7b', '95.111.237.59', 1672695385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353338353b),
('878a44940a7318759a091b80dcd57b0b12de8412', '95.111.237.59', 1672695464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353436343b),
('a148ba8d4c2a2c014779b2f54e4e700ecdcf6184', '95.111.237.59', 1672695475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353437353b),
('57c6f0b3a63d9cf33dabf4bb9f73f29b014786ce', '95.111.237.59', 1672695498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353439383b),
('7593b22d2cf6026a39383cbc72cb27a69504ddbf', '95.111.237.59', 1672695513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353531333b),
('2978d4e1cd029d5902ca8906642ddcbc4446d3ef', '95.111.237.59', 1672695523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353532333b),
('7a635bbfd7f5536dfa973300bb4a6a5f25590d59', '95.111.237.59', 1672695533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353533333b),
('8a665bfd10602fc9c372d999d285c09c6041b632', '95.111.237.59', 1672695542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353534323b),
('ef35ba358cc77f77682893c2c93fc02489ddd916', '95.111.237.59', 1672695550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353535303b),
('8488d7857bd5abae5bac34c7d1594b83fd586a46', '95.111.237.59', 1672695560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639353536303b),
('47e631075031e366d83fc7b81b76f8d29de072b4', '202.165.234.83', 1672696283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363238333b757365725f69647c733a313a2231223b),
('fad8a57a331689994fdbe99f842faf21cf66dfaa', '95.111.237.59', 1672696132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363133323b),
('2817ddd3949dd213c80c0c31899aca30e9f6fc6b', '95.111.237.59', 1672696148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363134383b),
('97d9c2cd9d5d25d918b102495a649ec3b013f8b2', '95.111.237.59', 1672696215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363231353b),
('0271af029368f1b05911b52ea64908d44c76365d', '95.111.237.59', 1672696224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363232343b),
('13ad5b75e6d42864acfd2febea0b659f3fe58b1d', '95.111.237.59', 1672696232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363233323b),
('b10aa2b3a36065211a06053230bcc92a51efae90', '95.111.237.59', 1672696244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363234343b),
('7909034e833c5f581e0d84d5dc16f0c16f6c3faf', '95.111.237.59', 1672696267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363236373b),
('2f2e13e719309f3445703d19bb1626fbf1d11d46', '95.111.237.59', 1672696281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363238313b),
('5eb2d72bf4b027e11e6ef214dae9b156c33d4b91', '202.165.234.83', 1672697116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639373131363b757365725f69647c733a313a2231223b),
('1a72de5298a34cbbd6275791962f4383f641b7da', '95.111.237.59', 1672696309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363330393b),
('20e7c9bd7cbc868d9cfe2959feffc93454c3a2a8', '95.111.237.59', 1672696310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331303b),
('150c89dc3f7b800441050ab8fada893701d01ade', '95.111.237.59', 1672696312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331323b),
('32cfde0757e6cbdc894af1fa4da40851c73162da', '95.111.237.59', 1672696313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331333b),
('9ec72f2d660db75a4da55256238f0d89dce00a00', '95.111.237.59', 1672696315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331353b),
('119dabc268be6fd50220a725c9fe3dc4a6213458', '95.111.237.59', 1672696317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331373b),
('b58fd7193e6bbd067bf3789d4709d1de237038a9', '95.111.237.59', 1672696318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363331383b),
('fc245cf8b0d1b20d1519dca5c9e9e3a70e238251', '95.111.237.59', 1672696320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363332303b),
('0529f3719a6920861a7c1db780014098558d2ca9', '95.111.237.59', 1672696361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363336313b),
('0b730650edc0c992959c9d1d9f018902c9f19171', '95.111.237.59', 1672696361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363336313b),
('2ad4a2956fdc12a9dc455132a808baa52baa2b76', '95.111.237.59', 1672696361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363336313b),
('502ed86007ee5925a1bb03b31f1e9b8859960d9e', '95.111.237.59', 1672696371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363337313b),
('e2fdb7eb17b18ad0b12f35672609ee4f93232c6c', '95.111.237.59', 1672696388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363338383b),
('8601c829f801e9496b45ee9468c85d279b86e31e', '95.111.237.59', 1672696399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363339393b),
('e150b82d356a3ccd9c939d163a0e0f61008a9abd', '95.111.237.59', 1672696405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639363430353b),
('75375d275ad79ca6875d0172677f568326d9c04c', '202.165.234.83', 1672699339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393333393b757365725f69647c733a313a2231223b),
('17e9d279b05c17616d4313b1bfaa5e6443dc01c6', '202.165.234.83', 1672699691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393639313b757365725f69647c733a313a2231223b),
('88d288995a62e1ea3e95ba82c1aaf8b60bd69faf', '95.111.237.59', 1672699583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393538333b),
('fed6ccc9644438ad958c873c6e76506a9cd50a65', '95.111.237.59', 1672699583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393538333b),
('d6fb5c7a5a8d146c113c2de639213a582e458b81', '95.111.237.59', 1672699594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393539343b),
('663fc6912a10cf9b0b1c83ffe393de08a5ff8b9a', '95.111.237.59', 1672699603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393630333b),
('4c11afaa25989adbfbb16e1179fc4ce1fc1936e0', '95.111.237.59', 1672699619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393631393b),
('6101ff9a7a260d4e419f247053fa2a02881ba13e', '95.111.237.59', 1672699636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393633363b),
('9343771920af7ce4ad80f5e9bafd7c972dfddfc0', '95.111.237.59', 1672699644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393634343b),
('de9579ca072a3cbf90a92218c868687b3937e186', '95.111.237.59', 1672699646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393634363b),
('316dee10fb5375b5c610beac6932f04f5d04dbbc', '95.111.237.59', 1672699669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393636393b),
('c40f87f871185ec2fa4428bc2b8a94cbfc826109', '95.111.237.59', 1672699677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393637373b),
('afe9f0c671affee5c936b8d3228000e37c84274a', '95.111.237.59', 1672699684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393638343b),
('29f6804aa46417dc5ed1e21c9899a45151be9502', '202.165.234.83', 1672700022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303032323b757365725f69647c733a313a2231223b),
('7c4525c0bc19df3a54b672c51d63b8e1d1886261', '95.111.237.59', 1672699723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393732333b),
('ab6b97e0cb674119b8b9cc18431f8e6d20945da1', '95.111.237.59', 1672699736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393733363b),
('062c0dbf88a367f2dbb8ee8bebc5f987e33c8ab6', '95.111.237.59', 1672699749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393734393b),
('5d7b42b590a573f1d3aa47811dbf91be10db1d91', '95.111.237.59', 1672699762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393736323b),
('ad87df5dd02104dcdc2e509519a0f6629d32dd3b', '95.111.237.59', 1672699793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393739333b),
('d5367dfdf7b1867ca3fafbf29f9de1cf68be312b', '95.111.237.59', 1672699811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393831313b),
('58eb413d2ea83676e02643a045ecf58153fd6d40', '95.111.237.59', 1672699858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393835383b),
('55f563c9f11a3fcd0fec257d43d8a2af0565db33', '95.111.237.59', 1672699878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393837383b),
('4eff6e99ccd1a9d4dc79a894b296c28626f0db4d', '95.111.237.59', 1672699907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393930373b),
('9502ef2bdc642d7892db72a7e0e73c6ab84f7d54', '95.111.237.59', 1672699929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639393932393b),
('ec14134695a695c7b94699ac47b113e620e03987', '202.165.234.83', 1672700456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303435363b757365725f69647c733a313a2231223b),
('3871c3d6e2bc905f7ffe124a35e3d029ac9cbe96', '95.111.237.59', 1672700052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303035323b),
('0c7c32b97c160310586d6f254b7b5ff8b6a10c81', '95.111.237.59', 1672700052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303035323b),
('31036d573fdd27bca01faf35f09f5672ab421950', '95.111.237.59', 1672700052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303035323b),
('d33408c82a4341559e9744fba1944994560aab3e', '95.111.237.59', 1672700052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303035323b),
('93fc77482d8d9f36cb5a672061b546c8d1ca64bc', '95.111.237.59', 1672700052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303035323b),
('6f0f1f6421ab1904259e8b3e88a1bb87a5b3abbe', '95.111.237.59', 1672700072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303037323b),
('5ce6bcdcb717460cf6542d7d93de463f8c1abc25', '95.111.237.59', 1672700086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303038363b),
('23cdf2a251d6ec512253c83333bd5730347ed12c', '95.111.237.59', 1672700103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303130333b),
('941b10e4c300109f8d4574ffd4cdec8f1a862e8e', '95.111.237.59', 1672700109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303130393b),
('8b5baa54f9f56b70068d8e80edc93b7b79d6e398', '95.111.237.59', 1672700111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303131313b),
('d9db81816d47c51fc7d79944f72fa454448fa23a', '95.111.237.59', 1672700253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303235333b),
('6d1e3a217ac5e6bfedd57e58cb708abf2cfa0d81', '95.111.237.59', 1672700273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303237333b),
('37f80c3ee77d97dc3f00bcb214af4d30ecf84a2c', '95.111.237.59', 1672700287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303238373b),
('2ad71277d841754b56c78a661c47e949949fe7c6', '95.111.237.59', 1672700302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303330323b),
('a9e5eea7b1fdaf5a672d89c3511425a0ad418fb4', '95.111.237.59', 1672700317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303331373b),
('bf0fe13978d976848ddb4e8f9fd99bcfd5790de0', '95.111.237.59', 1672700326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303332363b),
('312e97eb107532e52e40865f18f23220fd9e7dc7', '95.111.237.59', 1672700343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303334333b),
('1bdbaffcffc65a02d0c3feaf795176458e07a1c1', '95.111.237.59', 1672700355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303335353b),
('7872e41d3018ff926a67c4891eaf9dd4b7f7437b', '95.111.237.59', 1672700367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303336373b),
('d24d7ab6d9eb9d7177a5b44bfd43b58d2b11bb17', '95.111.237.59', 1672700381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303338313b),
('1a97310e10b80ef68c602012d96390ae7e9683cd', '95.111.237.59', 1672700397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303339373b),
('1b6479a950f6c277ff741c518cc231f630bcb114', '95.111.237.59', 1672700409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303430393b),
('ad5b0693836fbd06167f7113f168c86806848cd2', '95.111.237.59', 1672700421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303432313b),
('b673a4a1d73d883925cee8be81996d60f7f87563', '95.111.237.59', 1672700437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303433373b),
('6b2bc6d68858eb707b07b7f0ba40197c496ab013', '95.111.237.59', 1672700452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730303435323b),
('59332a3961d2bbc2c5fd891410ff2e2d3354f9c7', '202.165.234.83', 1672703453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730333435333b757365725f69647c733a313a2231223b),
('ac13a10aee4b6778aa4e17bf5a41f0fb69aafcce', '202.165.234.83', 1672703456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730333435343b),
('2956cbf28172a721397ce849d5dc23412e9b352a', '202.165.234.83', 1672759826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323735393832363b),
('eac93ec8f74cdc113502711889d41a6de4ba9ca7', '202.165.234.83', 1672762983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323736323938333b757365725f69647c733a313a2231223b),
('6d866e2c92e049229d304c19378f263bfa7a7663', '202.165.234.83', 1672766317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323736323938333b757365725f69647c733a313a2231223b),
('666f2ed4bec73ece699ee6dd5431e8943ca5a939', '95.111.237.59', 1672763398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323736333339383b),
('c82941762a59a242d105dba61a1d5a9a401ebb5c', '124.29.228.68', 1672845194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323834353139333b),
('584beb84e7b62b6d1a9f7e2d5320793ac944bd70', '124.29.228.68', 1672878162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323837383136323b),
('52de62de492320ff2ccc7dde99a9220e695d9a08', '124.29.228.68', 1672933231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323933333233313b),
('2288108dd2e45c8560887a553758bd5978c32075', '124.29.228.68', 1672952559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323935323535393b),
('e311c49ec681eb70e1843f02b1c093d6b0532f59', '157.97.134.109', 1672961968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323936313936383b),
('286d9e2c5cb06d03adb72501036bc97ee5922052', '124.29.228.68', 1673020816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333032303831363b),
('3527941f24c8f030ae8c59c013be53269aa69ab2', '124.29.228.68', 1673049572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333034393537323b),
('0a19e293e19276868f2fdf23f7fd82dcc92dd928', '64.225.2.235', 1673226181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333232363138313b),
('bb0a8bf3838362d92b1d8796dc4f018c2bd59be5', '68.183.146.15', 1673231181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333233313138313b),
('1c7fb51bd2d54537fe660ce90f4c3d13d0a7c39d', '124.29.228.68', 1673291015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333239313031353b),
('e4a8f28623355fb84ecbaa7d4c70d677fe19b4f5', '124.29.228.68', 1673361414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333336313431343b),
('3d0f4b0b45defaa0fcb3b1752fd5e97bc1fd9fbe', '124.29.228.68', 1673451290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333435313238393b),
('1d9aaeeb584a54fc5de55be699ab10ad2fe926c6', '124.29.228.68', 1673467235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333436373233343b),
('ed28c23451df2a17f25ae098d76f0252add6cd30', '124.29.228.68', 1673479602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333437393630323b),
('69c80c9b533a842449b013d28e8271dc6726c712', '34.251.8.253', 1673492672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333439323637323b),
('0f03522a9e250c612aa7dad661a485f52a5356c1', '34.251.8.253', 1673492693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333439323639333b),
('02c3e40cadf2d2df7cb0b1008528a8113776111b', '124.29.228.68', 1673536475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333533363437353b),
('db287397191164960ab29ef7844a62bf1b2ba307', '124.29.228.68', 1673566237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333536363233373b),
('a0b816d7cb2c3852c0f1255a7af0b9c01b9aa3f2', '124.29.228.68', 1673628977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333632383937373b),
('82925e67d4ec8db920bd2725224faa90bdb0d840', '124.29.228.68', 1673634543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333633343534333b757365725f69647c733a323a223230223b),
('ff49853990dbd5f2f3b0e54212e1b1b811c178fa', '124.29.228.68', 1673651154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333635313135343b757365725f69647c733a323a223230223b),
('1b201b23b2d1c057e782c8589a47d82832c611d2', '20.193.146.83', 1673641543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333634313534333b),
('d50539eb176e5d7cf73bc96a5eb24a3f561d1727', '124.29.228.68', 1673653047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333635333034373b757365725f69647c733a323a223230223b),
('f2ea95c3598f4f3f340e4bbbe075d508003a6b99', '124.29.228.68', 1673653048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333635333034383b),
('38469b680c20b33b8c1cb237dd27c2663e46feb4', '124.29.228.68', 1673969507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333936393530373b),
('4332f2d27c31078d9ec2e06b682dc76a64b24098', '137.184.147.18', 1674008448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383434383b),
('e558451ff625b02ff562f0aa2c027ad881d657df', '137.184.147.18', 1674008449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383434393b),
('3ad85e488447060e2da6578712ff34890506fd0e', '142.93.55.255', 1674008451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383435313b),
('1584d4842248d166a06dcf83ebbbd3d8ded64a3d', '142.93.55.255', 1674008452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383435323b),
('1e0b3707d768754a5de692c7dba89a07ac8af11f', '91.90.120.14', 1674008463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383436333b),
('29d9fdf03600897c28a2aa5bcb00931dc1e681de', '91.90.120.14', 1674008463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383436333b),
('f0217a2b159425cf0d549dad5357ff6775f4aee4', '91.90.120.14', 1674008475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383437353b),
('86ed639cc3fd1134813bb2e47133edfe9a7d4728', '91.90.120.14', 1674008475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343030383437353b),
('fb3e4645d56c8c3fa873415ee6b84cbdbe674882', '124.29.228.68', 1674057036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343035373033363b),
('05291da3e56046def7b94a3e42d24cf22c5ba832', '124.29.228.68', 1674156670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343135363637303b),
('4395f928c7bce767855ce252e6b4416e60ef08dd', '125.209.127.70', 1674229805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343232393830353b),
('0b8060b2dff52a448a95cfa8b2f3cf4da3e7c0e3', '125.209.127.70', 1674232169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343232393830353b757365725f69647c733a313a2231223b),
('660540c02af2037adf86cca28cef473399c3ece9', '124.29.228.68', 1674501550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343530313534393b),
('c622ced4b12cb7b0456fc6a1a8611c4f07e351d4', '124.29.228.68', 1674578978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343537383937373b),
('96b8f142ad9540808a990a58fc95af70f404f3cc', '66.249.70.9', 1674582270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343538323236393b),
('56c719b60008e9c4555ebc6333ad98abff43d159', '66.249.70.13', 1674582270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343538323236393b),
('0705a4b26bed8fe7d40bd8414d03b89e19043216', '124.29.228.68', 1674661445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343636313434353b),
('18ef66bee8ba5dba851a0b889c7083b6a830bb55', '66.249.70.11', 1674768072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343736383037313b),
('fbd6c881fa0c4f76861a573c15edc9c68e461d22', '124.29.228.68', 1675097070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353039373036393b),
('e2e06c9d05b4f0f1688468ceb96d5dfab6a4cc6f', '52.114.32.28', 1675097079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353039373037393b),
('59bf15e3872e850f4be838bcd4ca5a8388d6eef7', '124.29.228.68', 1675097824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353039373832343b757365725f69647c733a323a223239223b),
('adfc5b5c592b045e6c876c3364e104ca17e6a570', '95.111.237.59', 1675097329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353039373332393b),
('2d6bb26715d690dc3f0d45d93795e62cb09e79be', '124.29.228.68', 1675123612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353039373832343b757365725f69647c733a323a223239223b),
('4d0fa69929402d611948ba8e4f80c706d9f37f65', '124.29.228.68', 1675134366, ''),
('7aded49380375b0686dcad4f82709f3448f2fa82', '124.29.228.68', 1675190450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303435303b757365725f69647c733a323a223239223b),
('2dac82366ba1293e4957668f8be82f91ea5efc2d', '95.111.237.59', 1675190271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303237313b),
('40131a3e521858bd62e78654f386e0c5673a738e', '95.111.237.59', 1675190411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303431313b),
('25b85f334b553136bb5442ed35c01840888b0c2c', '124.29.228.68', 1675190754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303735343b757365725f69647c733a323a223239223b),
('e6f171bd0acb46cb69e3623796e06c22c56ccf61', '95.111.237.59', 1675190556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303535363b),
('c505c75ba21e2572a44ada49fc828bd741b827ce', '95.111.237.59', 1675190722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303732323b),
('45b37186f85a1d5fa17627911883c1116b508d65', '95.111.237.59', 1675190734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139303733343b),
('7d6b1422f8e1dbf9251bae8a87f9d7c8751d223f', '124.29.228.68', 1675191252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139313235323b757365725f69647c733a323a223239223b),
('006c896362617eac1f50250ec6e9be415d58192a', '124.29.228.68', 1675192972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139323937323b757365725f69647c733a323a223239223b),
('cab9abf2b33721ec19192a62f0af3cbbf323111a', '124.29.228.68', 1675192392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139323339323b757365725f69647c733a313a2231223b),
('17c1aaf481447df6e7f81cf2a607d6c59ef270c6', '95.111.237.59', 1675191446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139313434363b),
('af85637abf3850e26297965457df3a53843c96fd', '124.29.228.68', 1675197237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139323339323b757365725f69647c733a313a2231223b),
('e8e71cf468845859dc6df01291cf834b8dd29983', '124.29.228.68', 1675214276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353139323937323b757365725f69647c733a323a223239223b),
('7fe91b63e8b3ba96da3b1bcef8c4bba9fb9657d4', '124.29.228.68', 1675227682, ''),
('6b2b3cc62b30e80736bd91fa91e73ce6150ee700', '34.243.102.61', 1675386406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353338363430363b),
('62d3bfce5eaafc0c438a750807e395c8176acb26', '34.243.102.61', 1675386407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353338363430373b),
('74282087393e0af258697e949efe07604f8d77cc', '5.78.73.233', 1675743699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353734333639393b),
('caea6bcf3fa4214047b08bda76ad423c5860bcdc', '5.78.73.233', 1675743699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353734333639393b),
('de348c2783225318ea2c62970157ad32e949d975', '54.194.253.206', 1675777601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353737373630313b),
('7dac700b42467db4b6a878368384bb20783911db', '3.249.120.230', 1675787263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637353738373236333b),
('70783aa76b6e18a104ca5e664603965c248f0e19', '101.198.0.152', 1676203259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363230333235393b),
('b48115548f62e16a88beac0912a066cb16a9702c', '101.198.0.182', 1676203271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363230333237313b),
('f570d2d91642f90c6412cc9704c2b196d365acc1', '1.192.195.8', 1676263793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363236333739333b),
('b52560df96cad75bb53b221217bc97ce20b1f3c5', '1.192.192.4', 1676263800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363236333830303b),
('bdde0c0398489d19db6b868a4ab62c8caad319a5', '1.192.195.5', 1676263822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363236333832313b),
('20c8e4bc345bac5d0eb7a7dd4ad1e8b363dc5d2a', '35.217.35.215', 1677260426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373236303432363b),
('c545ed4c4668ec31b059ce8b2d29f913228e3d6d', '35.217.35.215', 1677260427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373236303432373b),
('bb6652439eb3421addfdc56d0881254d81f754d6', '180.163.220.95', 1677445436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373434353433363b),
('870e6e144575eb87930fc466855c73ddf3b29660', '180.163.220.100', 1677445471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373434353437313b),
('a24a9b6786a8491e79a5270caf95783ef4122a97', '180.163.220.50', 1677445478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373434353437383b),
('7268f88129283235992a4b3c6fe884e88395c615', '115.85.30.27', 1677478412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373437383431313b),
('2dfe7610a3521489c59903c6e6f5e66f96b2e7ea', '74.234.236.10', 1677697595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373639373539353b),
('eebaeaaa3ebb40a2af142b0309035a2365607396', '66.249.66.34', 1677784195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373738343139303b),
('5be921dc53202a15f08b8b6cb4a285cb2a78385d', '66.249.66.34', 1677784197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373738343139323b),
('5620dc35f04935e984d00f19055bdd6a56071fa5', '74.234.236.10', 1677870072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373837303037323b),
('fa6edad683734668461694bdb352ca4e4efa5b93', '52.215.219.120', 1678205991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383230353939313b),
('469f517abc8d3ea829758ce86ff94264514950d1', '34.245.77.130', 1678207291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383230373239303b),
('509849625ba012d3835e3e1b3d86e8bc8d93a0df', '69.167.12.206', 1678223497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383232333439373b),
('1980d571c5f5147b0b16e7744f1aac51ec2b66fe', '69.167.12.206', 1678223498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383232333439383b),
('8c16bf0e628db4f808c17f015aeea5c1ce651a79', '124.29.228.68', 1678392426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339323031383b757365725f69647c733a313a2231223b),
('066a2b1d4e26ae5d7d2bd40ee82286607d205369', '124.29.228.68', 1678393848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339333834383b757365725f69647c733a313a2231223b),
('8bdc350e1ef04664020802e16c4feba9c84cdde4', '124.29.228.68', 1678394164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339343136343b757365725f69647c733a313a2231223b),
('03c772c7eb91144c932b3e1928062976efe5cea2', '124.29.228.68', 1678394176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339343136343b757365725f69647c733a313a2231223b),
('0670993915e20f1cb7a4c9d25b3a4e3ee8a18a4e', '124.29.228.68', 1678399092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393039323b),
('7e2518086a0e9ad40851ccd776aa31a3989a7ebf', '124.29.228.68', 1678398844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339383834343b757365725f69647c733a323a223531223b),
('a7e02908c70f773cf7dc33ee62e4acad2a03160b', '95.111.237.59', 1678398552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339383535323b),
('25a5dc2142e413f7b5670cb10292a10dcdbc20c6', '124.29.228.68', 1678398588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339383538383b),
('1f19f6b5052fc418ae7329a808a6349b650d76d9', '124.29.228.68', 1678398588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339383538383b),
('21abe417af484053a23d466fefc8f9575478c175', '124.29.228.68', 1678399394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393339343b757365725f69647c733a323a223239223b),
('bac31e8c5ae809cbbd69536c5a1bfaba9d6faa8e', '124.29.228.68', 1678399092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393039323b),
('8b056f7e7d16f1deafaf1211b3d1955921dfdee3', '95.111.237.59', 1678399125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393132353b),
('a7f552e02be214ed0553da62ef0b24fe6ce4cacc', '95.111.237.59', 1678399133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393133333b),
('01ab16f154decf3b66532a0396794371fa23a743', '95.111.237.59', 1678399254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383339393235343b),
('22a18156f43bda47382313b73e7c15f1280bf759', '124.29.228.68', 1678400101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383430303130313b757365725f69647c733a323a223239223b),
('6cb9ee2509fdc143822f6eaa81c1f1b60c52457f', '124.29.228.68', 1678406857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383430303130313b757365725f69647c733a323a223239223b),
('5d844857daceef5f9023191263bc80dbc0d8c032', '124.29.228.68', 1678414111, ''),
('873b45f01b610725d58897376f120b422a36e9ab', '124.29.228.68', 1678468313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383331333b757365725f69647c733a313a2231223b),
('d251e6dfce25835d4940e1c091a18478ec301205', '95.111.237.59', 1678468089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383038393b),
('687e8891584d9fbe73698b4a6bb90e178c3ec15c', '124.29.228.68', 1678468615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383631353b757365725f69647c733a313a2231223b),
('ee7c179c70cd813cb486824b2979447b50a61d77', '95.111.237.59', 1678468335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383333353b),
('f6adc128ed41ed4c7a9520b4433f7bb729bc3a12', '95.111.237.59', 1678468344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383334343b),
('2785f0a6034f3c0ed105f7feb98066f1e3233fcb', '124.29.228.68', 1678471583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383436383631353b757365725f69647c733a313a2231223b),
('95dfda0d9e23883ea7f943230cbba8b5eaa5658b', '124.29.228.68', 1678488067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438383036373b),
('f2754d37a75c9f3b5c5edf5e2dc7441d5a9f74de', '87.249.138.37', 1678491029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438383036373b757365725f69647c733a323a223239223b),
('7116b9a32ada30d0477f05d7d2ad12b1b0522ab9', '31.187.78.66', 1678489411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438393431313b757365725f69647c733a313a2231223b),
('f3204279fdcd203fd4c7e7f49dfa33ccf28bf102', '31.187.78.66', 1678489810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438393831303b757365725f69647c733a313a2231223b),
('3a7e5cc496d3b4dca864664bdaf5b6baa13166fe', '95.111.237.59', 1678489751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438393735313b),
('dddfcc76b3c590ebd71076496b2a726a9663273b', '31.187.78.66', 1678489913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383438393931333b),
('a7c8a190be44069bfe4d8016d603c5566e3be896', '139.135.34.234', 1678698017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383639373836363b757365725f69647c733a313a2231223b),
('1e44f3b342f61a1d1fe2715f34c9cd72669692b6', '124.29.228.68', 1678734487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383733343438373b757365725f69647c733a323a223239223b),
('7f265cbfbdcc12079d8956b165f255a53a3e78cd', '95.111.237.59', 1678734322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383733343331393b),
('b7792b8dbe66e86749291e66190c0f6fb6a8e1be', '95.111.237.59', 1678734337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383733343333373b),
('f16a8ff2dcc7861a1d6e2baa97b276954cdc470a', '124.29.228.68', 1678735034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383733343438373b757365725f69647c733a323a223239223b),
('769205c34b00629c11950e570e4e016c139b9c24', '95.111.237.59', 1678734519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383733343531373b),
('3c4f041faab59fe78a8fb05e20324518774a7d73', '124.29.228.68', 1678744260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383734333937343b757365725f69647c733a323a223239223b),
('cd3d48debc78a1988f849969dc451d506e99bd98', '31.187.78.133', 1678824804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383832343732333b757365725f69647c733a313a2231223b),
('89bf7ffd01166bfb9c2028a73edb968ce8b7cc4d', '124.29.228.68', 1678900400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930303430303b757365725f69647c733a323a223239223b),
('d5723f39e22e9e99260780d8024c7bbd83371d78', '124.29.228.68', 1678905838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930353833383b757365725f69647c733a323a223239223b),
('54a3896ea1359c55c9c33d56e16f787a227c22fa', '124.29.228.68', 1678906143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930363134333b757365725f69647c733a323a223239223b),
('c49c6917279096cf74b9b06da8d25133910e468e', '124.29.228.68', 1678906690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930363639303b757365725f69647c733a323a223239223b),
('0882d42046dc75d289e717d83a065e33abcad247', '124.29.228.68', 1678907860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930373836303b757365725f69647c733a323a223239223b),
('cf4bfc9088b79788c60f4492b0c166a6e0401c12', '124.29.228.68', 1678907399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930373339393b757365725f69647c733a323a223239223b),
('c60ab9e9325738ce9f1c9fc095157ec53d17917c', '124.29.228.68', 1678910418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637383930373836303b757365725f69647c733a323a223239223b),
('efefb2b8fde7fab1a8d7a929e904987dc4cb01ff', '124.29.228.68', 1679339065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393333393036353b),
('90eeee3a97615027ff3a9329222bf1cd575b9450', '51.158.118.231', 1679514992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393531343939323b),
('fd399c6ac3930fba0a9cac4ee04a13d838dabd42', '163.172.180.25', 1679517349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393531373334393b),
('c3ec850ac239ec1058045b913a03685d6173975f', '101.199.254.232', 1679804910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393830343931303b),
('2353fedf180922d415399f604f4ed071db0583ca', '101.199.254.202', 1679804920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393830343932303b),
('3d739b1de7f191e19ff0e06b2614fd95d9f89e06', '101.199.254.235', 1679805154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393830353135343b),
('e43198338cdcbbfb49d12c10f5edaa8c4128ba96', '101.199.254.233', 1679805165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393830353136353b),
('fcb86df50e0015ee4cc801b33bf7b390ec2e3a93', '66.249.66.4', 1679934642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393933343634303b),
('8d154f643046ff40b41c8ea9d6af2063db5cd606', '66.249.66.5', 1679934642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393933343634313b),
('921b1487bdbaba2b9ee5910da88bab438f209c6e', '148.153.255.36', 1679945401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393934353333363b),
('85b05c0b12a96260353efae45f4a7959514c4e34', '202.165.234.139', 1680192847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139323834373b757365725f69647c733a323a223239223b),
('a696f41d7a8e68be9526b1ababb9e3aa1155b023', '95.111.237.59', 1680192700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139323730303b),
('df1d77a07dae9e7fc27fc27ea9298ae7d2d13e7b', '202.165.234.139', 1680193178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139333137383b757365725f69647c733a323a223239223b),
('4fdafe57d515a10916b12d53e409f8b5dd32dc8e', '95.111.237.59', 1680193174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139333137343b),
('305d43bb1c2866cf591b192d15109cb1d5ab69cf', '202.165.234.139', 1680194022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139343032323b757365725f69647c733a323a223239223b),
('72668ebb8e91b9b8853ecb5573acb049075f67e2', '95.111.237.59', 1680194001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139343030313b),
('12f3d1c2acbe23e2a424f4aeb4b9d03d8d893d8c', '95.111.237.59', 1680194009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139343030393b),
('7d5c523a97fe07a027463535f6f5f0b6ff10597c', '202.165.234.139', 1680197518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139373531383b757365725f69647c733a323a223239223b),
('0c6e0a3ac7f7ec4c172c6d5c7ccca678cc54ec7e', '202.165.234.139', 1680198333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383333333b757365725f69647c733a323a223239223b),
('5796dfa53f63f0f32b937a7589adab80477b185c', '95.111.237.59', 1680197658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139373635383b),
('49d9b0154f22fb12ece6cde87b7e5fe12ec25dd1', '95.111.237.59', 1680197720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139373732303b),
('a0f290996593a1f0190b079a690c240da7d224ca', '202.165.234.139', 1680198181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383138313b757365725f69647c733a313a2231223b),
('32b4b49fb4315d32a44ed875e5f907c5ca72b96d', '95.111.237.59', 1680197949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139373934383b),
('915aea15ef4aab1d681ec744f5e5be6c826b60a4', '95.111.237.59', 1680197978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139373937373b),
('a56e17f0e722996a6afc832d1256f9d749be7e86', '95.111.237.59', 1680198065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383036343b),
('bffc2808df9d1c6d79f89d5c65c074d987917b89', '95.111.237.59', 1680198090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383038393b),
('2f2bcb4db612f3d8ff257c47ce42eec024943874', '95.111.237.59', 1680198108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383130383b),
('c424afca91e99a7c62fc53764472d2b5aa440a6f', '202.165.234.139', 1680198278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383237383b),
('4ff180774d125a53e0030a6fbf05768c697dc5e8', '202.165.234.139', 1680198710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303139383333333b757365725f69647c733a323a223239223b),
('cb2aebf2171d08c7301f321cc9b4f438be1f5450', '124.29.228.68', 1680538432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383433323b757365725f69647c733a323a223239223b),
('72693275880e52d7a0dcab6c571e29013dd232e3', '95.111.237.59', 1680536685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363638343b),
('7f608d263ed5db0458abc818753454b3be384cec', '95.111.237.59', 1680536686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363638353b),
('4d2a83e11651ed4f1174f221623f38fafd000898', '95.111.237.59', 1680536687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363638363b),
('e6518828bd36030a2f98d3ba8a1635883d384dd9', '95.111.237.59', 1680536689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363638383b),
('0c1932a182182c912f841c136b52fc5e4c4d34e0', '95.111.237.59', 1680536690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363638393b),
('18d9788b09181040a59e938c250b23de47af1afa', '95.111.237.59', 1680536691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363639303b),
('f668c12f7388ff5039b7c988bafd79b612cf79ef', '95.111.237.59', 1680536692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363639313b),
('6c0eb6575a45c72b675c2557d848cf69a1211f8a', '95.111.237.59', 1680536693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363639323b),
('a76377c093555422073af72ab2be20c5b8b96dd5', '95.111.237.59', 1680536694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363639333b),
('3acd91c92d177a86d6613cc401eafaae17ecb200', '95.111.237.59', 1680536696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363639353b),
('814d863ba0b0602aee408e1d8478d326a8ae3033', '95.111.237.59', 1680536704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363730333b),
('356eac41dd2c2a46f370a9958e9de04ebf264717', '95.111.237.59', 1680536707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363730363b),
('e0cf581d5fdfa3e86ba2eb4be48c3461d3084351', '95.111.237.59', 1680536711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731303b),
('5eb3cf36b06772148d2128b5a929b7d4f904c952', '95.111.237.59', 1680536712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731313b),
('aca4d52a5da68eb74cce8167fe1149dc9e65eaa2', '95.111.237.59', 1680536714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731333b),
('88d792bc2954acfe1d63af1ca6c3e7d956526843', '95.111.237.59', 1680536715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731343b),
('66d05e93790597235e1547f87c28ff512f04b03f', '95.111.237.59', 1680536716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731353b),
('f6b5d6831ebdf2199f9f8ad43b34aaa5029b83bf', '95.111.237.59', 1680536717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731363b),
('8b75074d0644d1dbb97cd063976f4f6c5e24c0a9', '95.111.237.59', 1680536718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731373b),
('8ed47746deb23adddc0c36edb98c0cd710b000bd', '95.111.237.59', 1680536719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731383b),
('85a5d29f3b35de2078666cb01e91941f001edb8a', '95.111.237.59', 1680536720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731393b),
('f3e74b9f446006b9c9615f850e0645c8a973354c', '95.111.237.59', 1680536720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363731393b),
('64380307e42073fa49678a5e7036cd2b8ff9e810', '95.111.237.59', 1680536740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363733393b),
('b9adb95d7ffe9d4a1224761c827fc17e26f2bfa5', '95.111.237.59', 1680536742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734313b),
('5cc03acced59881905eeea1e9b7063bd96378773', '95.111.237.59', 1680536743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734323b),
('7db990e626df0d6603173f6bb6fe437b5638eadf', '95.111.237.59', 1680536745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734343b),
('1a7d21bd21f87c1ac1b2b28ec948630be021535e', '95.111.237.59', 1680536746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734353b),
('66a0a582cd12ece260e445eb99ee73b60acbd607', '95.111.237.59', 1680536747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734363b),
('88885ecc6d374a7d91b5d816618967bf51f648eb', '95.111.237.59', 1680536748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734373b),
('7d1075fb113d03d33d5b203ea340be93a82ef3bc', '95.111.237.59', 1680536749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363734383b),
('6113032d1839bf79bcaa4df85c522a08af8e9ed9', '95.111.237.59', 1680536750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735303b),
('7272f33bd4830ab9021f8acb287b2dd7f7dea119', '95.111.237.59', 1680536751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735313b),
('293f0958a4910ff69a376dfd427c0267ca28982f', '95.111.237.59', 1680536752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735323b),
('2ea41946174f12ec7bdff7ec413014865d4a9c66', '95.111.237.59', 1680536754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735333b),
('5ac204736d65802468cdb02cf0e53256feca48a1', '95.111.237.59', 1680536754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735343b),
('fa51a3618fa01195161e2d020f752c969bf76204', '95.111.237.59', 1680536755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533363735343b),
('9267bac9e2b531c3a1bbdb191dd57d3fe563ded9', '95.111.237.59', 1680537011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533373031303b),
('42146bbac942ee5905f29c485beb5fb9148aabc5', '95.111.237.59', 1680537062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533373036313b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('cdcb703c61c2c107df099207bb00a8b8e2b5dfc9', '95.111.237.59', 1680538200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383139393b),
('bbe9bd9668b202a6738835056a31b1b14155906e', '95.111.237.59', 1680538278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383237363b),
('556b0c77ce100fed2e70eda8f66a4cef79f434f3', '95.111.237.59', 1680538309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383330383b),
('0f0d475061008fe638b2ea1e1c68925cd05066cc', '95.111.237.59', 1680538316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383331363b),
('15066d63c896ef6f05e00ba1b69b24092a3c1d92', '95.111.237.59', 1680538384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383338333b),
('01fe48caeee483bc7053f19379e81f4d414acc6f', '95.111.237.59', 1680538420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383431393b),
('a4b12635797c0b7cafbcbcefee25d4020f1ad49d', '124.29.228.68', 1680541031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313033313b757365725f69647c733a323a223239223b),
('5f74a7cafd467186e461c457341a1ba21f494824', '95.111.237.59', 1680538469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383436393b),
('721ae70fdd8845929a1f2099cd49e9fc814996d1', '95.111.237.59', 1680538471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383437313b),
('d935d70f654cffac9193c148fa73b14c215beb0a', '95.111.237.59', 1680538525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383532353b),
('64c49a5d5a237404d749cace311b045aafc7ccc4', '95.111.237.59', 1680538540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383533393b),
('bc453e0c493b95aee8f163c9047e679c868987ab', '95.111.237.59', 1680538545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383534353b),
('285880eab3eb71457cd8fe22c7a0a97e0edb25ff', '95.111.237.59', 1680538546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383534363b),
('4d3350699b32cb17fa9c8a2fd964bbf756eaa5b1', '95.111.237.59', 1680538548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383534373b),
('b1b6a598fddac66180d96447aec9f4474563efd8', '95.111.237.59', 1680538555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383535343b),
('aa5c6aef26446191efe03665ad2b96bb2122d330', '95.111.237.59', 1680538558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383535373b),
('7630f23246fd30fbba8a9f6db8728bf126e0eec2', '95.111.237.59', 1680538560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383535393b),
('5567729c0abb3598d36317d2227cdeb51a60f1f9', '95.111.237.59', 1680538563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383536323b),
('9e7bc72e81e9f12d65e7cb3f20d8a64dfeff84c6', '95.111.237.59', 1680538565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383536343b),
('07991a80d55193044613f3ed10d2dbfee1412919', '95.111.237.59', 1680538567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383536363b),
('f4ea78acbd15f9c1d3bfb11d6a4f6bf7ed3e4af3', '95.111.237.59', 1680538569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383536383b),
('9b685fe322a8754655c7f1d6fd183485445363ca', '95.111.237.59', 1680538572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383537313b),
('4c7be02ac7a7481eed4eac8af956d787c68c1f17', '95.111.237.59', 1680538661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383635393b),
('5b1a39328936d4e8316be77c19a3ee3e226d991f', '95.111.237.59', 1680538889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383838383b),
('a202c88c5decf106d6c3806f170af585dc54d5c0', '95.111.237.59', 1680538907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533383930363b),
('5935cd46f6ceb795aba34f5eb31ef772b289f96a', '95.111.237.59', 1680539550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533393534393b),
('e439e2f3a76ddfeefe38dfcbbd02dbc12666e67e', '95.111.237.59', 1680539788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303533393738373b),
('7b18bfb4dc64d609e42d8cfbaf6421af0846c09b', '95.111.237.59', 1680540190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534303138393b),
('129c6ea5e8d703596c3c5a46ee89567692d70580', '95.111.237.59', 1680540531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534303533303b),
('aa82c82e7fceee81a5ae07a024759aa0cbe7dcfe', '95.111.237.59', 1680540725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534303732333b),
('bc660e1422aedd516b1dea00a1f7bc91ce001389', '95.111.237.59', 1680540765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534303736343b),
('7fabcb4ef144503d1653d88dd5b598ddb8e48113', '95.111.237.59', 1680540806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534303830363b),
('f7db982a0d253ab4a97624ee2cbc0bacb09b77c3', '124.29.228.68', 1680541351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313335313b757365725f69647c733a323a223239223b),
('22160eb5b3e2905a6f2273b815242510f50a28cf', '95.111.237.59', 1680541083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313038333b),
('805dafcc64e9070619fe1c4860cd406e5fd3ac1f', '95.111.237.59', 1680541168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313136373b),
('93024aecc51fc4ed987cdad55ee448b06dee2ea7', '95.111.237.59', 1680541180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313137393b),
('cbd72421cd7aac76ab807cd2f1e25782af2a4dce', '124.29.228.68', 1680541941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313934313b757365725f69647c733a323a223239223b),
('3f985f1de62c47ded6b00fef4589faa7d5c86a9d', '95.111.237.59', 1680541452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313435303b),
('89165d9db74293863dc126bdbca17ce3ab6597c2', '95.111.237.59', 1680541649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313634383b),
('acfcf3d9ea0e76e85738ed6e1baaea4a476625d6', '95.111.237.59', 1680541690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313638393b),
('d6bb256b2b4ddbfcbb012daa845edb9a3e2a332f', '95.111.237.59', 1680541728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313732373b),
('8fce0834bfd0aece804f9399e15c9171a5f4078d', '95.111.237.59', 1680541737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534313733373b),
('6e7f46bd57f05a93fc58462c0e7a137b40b79105', '124.29.228.68', 1680542846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534323834363b757365725f69647c733a323a223239223b),
('311b1ba2477d5e1a84556562226768d5d038b4f7', '95.111.237.59', 1680542570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534323536393b),
('4a82d932083b42651961b8a4722e094b7ec098ec', '95.111.237.59', 1680542609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534323630383b),
('781d529ae2ee91c44ae55107f64493e7f794d90e', '95.111.237.59', 1680542728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534323732373b),
('ba8babf11ca637520710988bd3efd5eef71206d2', '124.29.228.68', 1680544823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343832333b757365725f69647c733a323a223239223b),
('025551bf550724f502f8f48e0c40de5c1f4cfd21', '95.111.237.59', 1680543174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333137343b),
('c830b545f939c8ddf18d836551b2a6cd78d0d75a', '95.111.237.59', 1680543208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333230383b),
('9fb770d2ce7e020296ce52a457dffe5955db8d41', '95.111.237.59', 1680543355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333335343b),
('42058a7d29ad26097de5664b1b27f8c6a7768591', '95.111.237.59', 1680543453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333435323b),
('66d5664ca40f6610ce73717b40468ad32ca7c407', '95.111.237.59', 1680543755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333735343b),
('b9d767cca160b228f1e0760a42c23149df06fead', '95.111.237.59', 1680543862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333836313b),
('a04ee283e9bd81bf6377fe5bb2eb98b2f9ff15c0', '95.111.237.59', 1680543901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333930303b),
('65e248038f0da5ec72c0682a34eec5ad6cec7ecc', '95.111.237.59', 1680543977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534333937363b),
('1f0755c758829b0ba6254211975478df4d05e632', '95.111.237.59', 1680544408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343430373b),
('a2cac87b6c4327cf36462d147c8118605025414b', '95.111.237.59', 1680544620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343631383b),
('0f8ae43316e6f034eee2a35460a3b2e2c35cdf47', '95.111.237.59', 1680544724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343732333b),
('fd37de9a187d223445e35aa55453668d5daba54b', '95.111.237.59', 1680544779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343737383b),
('08fb5788eb670d02ae9d0c926410612d6a222773', '95.111.237.59', 1680544805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343830343b),
('f3f167d01fecd990958d6e7361b4f408191e453e', '95.111.237.59', 1680544821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534343832303b),
('d3c3fa0f5a5250632c0b77fec62d47b73eaedb3c', '124.29.228.68', 1680546532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363533323b757365725f69647c733a323a223239223b),
('5215a7d549033946de50eaf10b973951a856d61c', '95.111.237.59', 1680545129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353132383b),
('d74b48175608c44868551a8a5134bd66df4f6736', '95.111.237.59', 1680545132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353133313b),
('631aa3b169b7fb0d3250fa00499895158f10d92c', '95.111.237.59', 1680545134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353133333b),
('aa6fe384df9606d183540c15d5737ad2ab595e5f', '95.111.237.59', 1680545135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353133343b),
('b3b934ef156abc36e9193998d1686920bd3d79a1', '95.111.237.59', 1680545137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353133363b),
('5942c615d2b7aa33ae41c01b2df3eca10910416f', '95.111.237.59', 1680545140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353133393b),
('5cc741764cfd5f07dda970022cbc7969afba4ae1', '95.111.237.59', 1680545142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353134313b),
('3a9cdbdd3652c83bcd2c60da03eaa417f8864e90', '95.111.237.59', 1680545144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353134333b),
('66c212b0ab06ec8dbf869410a44f61aef452d66a', '95.111.237.59', 1680545157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353135363b),
('0d0ea23cdce525e3b061040b0f4f20f6c552b07c', '95.111.237.59', 1680545201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353230303b),
('caf344d7f277dcfaff54c6c455229987865e5cb9', '95.111.237.59', 1680545223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353232323b),
('7ff1f17d2efaba0908266db465650e48ead0b571', '95.111.237.59', 1680545229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353232383b),
('46546dc7545bad2ca774022ac87d1d34d40c46f2', '95.111.237.59', 1680545230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353232393b),
('262611ad2b5b8c1aec0989142e32f549ffe103e6', '95.111.237.59', 1680545231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233303b),
('bb77d6aa214f02404fcf1a77e6200a01ea2777a1', '95.111.237.59', 1680545232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233313b),
('ed096609af620969d0ee9b535241d0fc09e70a40', '95.111.237.59', 1680545233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233323b),
('e725ed507f259fca23988905d8a0db589b261b57', '95.111.237.59', 1680545234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233333b),
('911ea40ae8c6143af4b9db740a30b05e60951717', '95.111.237.59', 1680545235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233343b),
('2aab74868251b29e72433e25e03a47b32307d8ea', '95.111.237.59', 1680545235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233353b),
('676ad513de8a958f1142bf0681dcd4cf69ff99df', '95.111.237.59', 1680545237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233363b),
('cf5842c4b13bb9955359746a79b3f3946f3b67b7', '95.111.237.59', 1680545238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353233373b),
('1d1a58bf10b3ff6f0246248d6db73a95aefc59f4', '95.111.237.59', 1680545252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353235313b),
('392cb094b33be969d14e6eab7ecb4f8441f48486', '95.111.237.59', 1680545262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353236313b),
('55d791f49f887e485d870dbb87615c05c47847fc', '95.111.237.59', 1680545276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534353237353b),
('ab3b50ae5fbcaf2bb672a0219855dedcb44b0055', '95.111.237.59', 1680546465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363436343b),
('ce4a3cdb3e2ef3e2b64f961a4b9f7e1571c2ffb2', '95.111.237.59', 1680546467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363436363b),
('5d79fa145232aa9ac093075e639e043658940bcc', '95.111.237.59', 1680546471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363437303b),
('25f6dcfbfb399e59cf71d06ac39b5b8d73410acf', '95.111.237.59', 1680546482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363438313b),
('8eee6877af8910edd96bde8b2bb27985e9fa38c3', '95.111.237.59', 1680546490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363438393b),
('f4338a894f91a64f131f67afee9ff881c92d08fa', '95.111.237.59', 1680546497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363439363b),
('ce2ae0dcab7ed1b1a6c83b7b5afcee69be0c4fff', '95.111.237.59', 1680546512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363531313b),
('fa5845100ce6370e3f364d86069029cc52d08054', '124.29.228.68', 1680548480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534383438303b757365725f69647c733a323a223239223b),
('bcc7e1c5a1a7d248e761afd88d7dfbf33f13b599', '95.111.237.59', 1680546629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363632393b),
('5d34ff182438d2910b14fcb4774c46b40507bdda', '95.111.237.59', 1680546649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363634393b),
('799935025120e30288e7b0da87363679969a6802', '95.111.237.59', 1680546704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534363730333b),
('7dd51116ebf2bb676dfd8d5b5a6ada7fc415a276', '124.29.228.68', 1680549953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303534393935333b757365725f69647c733a323a223239223b),
('b50453052040a654a086d17f324251c800ba5c92', '124.29.228.68', 1680550281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303238313b757365725f69647c733a323a223239223b),
('76ce5180fd8ee6bba1a51dac3a3924cf699db340', '95.111.237.59', 1680550119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303131383b),
('bd75dbfb67a89ec0567ec38b122ef3915c0cf125', '95.111.237.59', 1680550220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303231393b),
('f21c21d92012e9b65231330b5676abc2a9ffce8e', '95.111.237.59', 1680550232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303233313b),
('6dc362852d2cddb0dfddaa9d579e0f167c5bf95a', '95.111.237.59', 1680550245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303234343b),
('c864c8005bd53a89fa72ce95ab458e78e6d5e179', '95.111.237.59', 1680550256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303235353b),
('006f93687d415b4d763af2e0655e06df5f91fa6e', '95.111.237.59', 1680550263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303236323b),
('721e57b365705e23867c6f0b682ba7997e55cfcc', '95.111.237.59', 1680550275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303237343b),
('eddfdc8a33ca299895f27c185e1fe4790f13355e', '124.29.228.68', 1680550696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303639363b757365725f69647c733a323a223239223b),
('689be67441a4fd81647c29a0c699e74fbce86951', '95.111.237.59', 1680550372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303337313b),
('2374156cadb52daf6c6dc0812342e71751b320f7', '124.29.228.68', 1680551152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313135323b757365725f69647c733a323a223239223b),
('364ee7f7eeb28395b193df185969e38c0e343505', '95.111.237.59', 1680550793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535303739323b),
('98dd6826621334cd90906347daf65c70898cec1b', '124.29.228.68', 1680551483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313438333b757365725f69647c733a323a223239223b),
('9028b01e2db6a8cef755a586e17c2ddde3cef4a9', '95.111.237.59', 1680551322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313332313b),
('bbde78c06ad854855d2db745719e0dba0c4dcbc6', '124.29.228.68', 1680551805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313830353b757365725f69647c733a323a223239223b),
('fc04bbe6746e2314b35cbad04567f67dfe9d9a9d', '95.111.237.59', 1680551544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313534333b),
('46bd5527ae606d35bbca2d2e3d12224140649173', '95.111.237.59', 1680551578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535313537383b),
('b60a91d62b8391ef48b423801be6f440723e823e', '124.29.228.68', 1680552494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535323439343b757365725f69647c733a323a223239223b),
('f1cbd324bc04e4d3fb19d28b5e59ef729bf73ad5', '124.29.228.68', 1680554315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535343331353b757365725f69647c733a323a223239223b),
('baa8ae643df6141dfb19b38a298d2ac0ff46f2a1', '95.111.237.59', 1680553618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535333631383b),
('9d697201594fca1712d5474e0af9a29d4c85b065', '124.29.228.68', 1680555747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535343331353b757365725f69647c733a323a223239223b),
('141e375fd8b26bee03a8291c798a5ce092ec03f9', '125.209.127.70', 1680556280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303535363238303b),
('ffdce8d846f7b0108fecc4f7be8356461867224a', '124.29.228.68', 1680625983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353938333b757365725f69647c733a323a223239223b),
('b28995eff6b75abc09b848c20ae4c3629a34ffb7', '95.111.237.59', 1680624055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343035343b),
('caebf88d69aca23029dbbc4bd4d54abf95bbac66', '95.111.237.59', 1680624059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343035383b),
('40fdb78fe44147641cd13288a8d733efb72d078e', '95.111.237.59', 1680624092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343039303b),
('4f9e8d931659b324058638e58160124c2647026d', '95.111.237.59', 1680624211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343231303b),
('91dc971401a321f35613c0cd6a847a83f258e0e7', '95.111.237.59', 1680624215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343231353b),
('309b339605d7c4cac3918b5c534e094ea118d622', '95.111.237.59', 1680624240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343233393b),
('d6c2016aa0ac96aced1c3a7fc2667c06921e4c06', '95.111.237.59', 1680624254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343235333b),
('0bb4a2b809c37486adcc2076f1cd7ca71d86a845', '95.111.237.59', 1680624289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343238383b),
('cd04ecc17cfe37f88c9ff3de9e90f61e40735871', '95.111.237.59', 1680624322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343332323b),
('ae4954820c2cc1da57bbd0174f64a85b9b7e83f8', '95.111.237.59', 1680624327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343332373b),
('634a111e4f66e2ac6fad76af928a32f4a98f42cb', '95.111.237.59', 1680624335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343333343b),
('849b09e271287a359d358a59fae2c3dbab367764', '95.111.237.59', 1680624411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343431313b),
('c12da02ea1596a1be932a4ac9032156320100980', '95.111.237.59', 1680624686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343638353b),
('c619727a7e5944438f3777da3180b67cf8ef2a06', '95.111.237.59', 1680624817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632343831363b),
('356236c14cd5a9dd369270ea7178d90252412f08', '95.111.237.59', 1680625042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353034323b),
('29c06efb65ec52dade40af58c175ad54cbe7bf77', '95.111.237.59', 1680625090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353039303b),
('b7dcc14bc7b8f2ecc644e6b5fb0e414428f138a4', '95.111.237.59', 1680625184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353138333b),
('7472750eb70d46a94575ce62ba32b0c3d67ce6b8', '95.111.237.59', 1680625465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353436343b),
('640af57a8ffef9572e68c900d2ae991c77081d78', '95.111.237.59', 1680625538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632353533383b),
('2c3efa4cbbfc7169916059885fbf5b5720d045fe', '124.29.228.68', 1680636348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363334383b757365725f69647c733a323a223239223b),
('963b305300841add6a3f4252cb48a0c9eb584920', '95.111.237.59', 1680626134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363133343b),
('66f4c00626a082491668a8fa48026de172d72f7e', '95.111.237.59', 1680626250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363234393b),
('5c2446cd6152e222464c34573a24eafe1f681bdf', '95.111.237.59', 1680626300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363239393b),
('1bb5e7c72ae6eadae7a2c5381f1c86cb7fdd36dd', '95.111.237.59', 1680626308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363330383b),
('d4d717f4be1c711f3f0baa35079fb275cc1e9b6f', '95.111.237.59', 1680626323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363332333b),
('c199fc87292df05c6ff81da903e27bcdc5edc135', '95.111.237.59', 1680626336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363333363b),
('3cdff92b110c943622d4936ce1c13ae82cb9101a', '95.111.237.59', 1680626351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363335313b),
('d28c7cdc9313435ffefd38494ae94975416a9e95', '95.111.237.59', 1680626363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363336333b),
('bef0eed7952518234892268ca2fdf54ec5f84cc6', '95.111.237.59', 1680626494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363439333b),
('24e0d4f04fa7e6ca07555a061449781cf98944d8', '95.111.237.59', 1680626521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363532303b),
('3fe43a8baad61d44e8863f542c3a18316b66f972', '95.111.237.59', 1680626551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363535303b),
('61bff5f645dbaea2864ec4a64c8becacc8763438', '95.111.237.59', 1680626607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303632363630363b),
('55dbf5b0e34255baa276a4eb58def2472a633bbd', '95.111.237.59', 1680631050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633313034393b),
('27b0a6d916551570afeb138f6450a3814f695425', '124.29.228.68', 1680638244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363334383b757365725f69647c733a323a223239223b),
('785778c1f96a6b6553de4e9117bae3c8f325fdc4', '95.111.237.59', 1680636577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363537363b),
('d36df1b4ddf649f6da1716ac5a51b01448244dd4', '95.111.237.59', 1680636636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363633353b),
('a9f079cb27dc48335ff31ae636d14c01f20afb61', '95.111.237.59', 1680636901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363930303b),
('5d8935c1631c495c2224da530358ca0fd126b84c', '95.111.237.59', 1680636914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363931333b),
('da191575bdf09d01dfec495c727025568a35a7ae', '95.111.237.59', 1680636923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363932323b),
('ce098db1485d21ed476c0abb779405993a23cf44', '95.111.237.59', 1680636932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363933313b),
('6c1b5db95a29b16b5d683a565f3207515259a014', '95.111.237.59', 1680636940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363933393b),
('224fda6e6a513166799305aea61fa32a0d4adf7d', '95.111.237.59', 1680636948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303633363934373b),
('0e0ac51ed0d4ed449952bdf8e622274d613645c8', '205.169.39.237', 1680743679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303734333637383b),
('b2ab208014e8a012aa32ae415250c747db2f5b39', '205.169.39.237', 1680743687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303734333638373b),
('2650ba2c46c220a82521e75634eecfa636ff0df4', '65.154.226.168', 1680753099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303735333039383b),
('1d1d78890de7a464ab81e1ed2db3b2c7bb89535e', '207.241.235.249', 1680771079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303737313037393b),
('f72b77fef94b641fc9abfbadecbf7a60233a54d4', '142.147.89.231', 1680840874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303834303837343b),
('942fd6f6d18cbd2d1ed359cb0d67cfbea4f75b9a', '142.147.89.231', 1680849748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303834393734383b),
('10709c737965a12104b99eea5233a7d9b63e8e3d', '194.26.135.17', 1680863030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303836333033303b),
('f47f29f3732e3ea894688ce8f4062189c1cc27c5', '54.74.3.183', 1680921292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303932313239313b),
('39896120b7287b09f575be76bbf11f0834888e98', '34.254.246.108', 1680933734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303933333733343b),
('e666e1a56da733a1026c0c49bef6aa6ffd117f78', '134.209.105.206', 1681122077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313132323037353b),
('d9f1cf110ead5ca964033c61b50464f9c151acfa', '124.29.228.68', 1681144549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313134343534393b757365725f69647c733a323a223239223b),
('ec8c11c47a86d0df74f355af274944d1c651cad6', '124.29.228.68', 1681145189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313134353138393b757365725f69647c733a323a223239223b),
('7f7c5a5be44e078971d5bff088080bd965ad815d', '124.29.228.68', 1681145417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313134353138393b757365725f69647c733a323a223239223b),
('b8e53a2ca47cf216b109d3c2497156e4fc3bc31c', '124.29.228.68', 1681159467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313135393436373b),
('9339dffd7ada7781e68971e78931e5893fcffcc0', '124.29.228.68', 1681244819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313234343831393b757365725f69647c733a323a223239223b),
('92fa9a6a2af86c188648f9fa8173f503292b3d69', '124.29.228.68', 1681246985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313234343831393b757365725f69647c733a323a223239223b),
('c0324405510958ce12a0bbf199961c9412b842e5', '66.249.66.8', 1681390996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313339303939353b),
('85e01a400dd74ef3a69d8a4480cc4378ff51c7ad', '66.249.66.66', 1681391012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313339313031313b),
('4c6267677f6de691928c1d635243538e1dcc1d60', '66.249.66.66', 1681391012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313339313031313b),
('fa011ba1f0277837b80c3ebc8007e41026b136d2', '66.249.66.35', 1681395641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313339353634303b),
('6fe388144fa2e56f1587dfd26e53a224d397e7f5', '52.50.164.227', 1681766343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313736363334333b),
('38d91aef2d08e34bc2056b9fdd9c835d5f66bed8', '115.85.30.27', 1681820192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313832303139303b),
('1cae5cfef36a55f5de802dcd4b0501808ad639f5', '115.85.30.27', 1681822132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313832323132393b),
('bf19440aff1711b2545b0d0f8d42289925baf3d1', '34.94.43.172', 1681883555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838333535353b),
('30898a5b7d185266baafcf23329bd9e0ee21269c', '51.255.62.10', 1682006289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363238383b),
('91730c881ce910f60c64fa783dc713c19f7e8a8e', '51.255.62.15', 1682006289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363238393b),
('7520043a93fb2108e945d843c772c728277c6506', '51.255.62.3', 1682006289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363238393b),
('21c91f1e86d05d6bbc681815e0821aff4645ca0a', '51.255.62.9', 1682006289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363238393b),
('d359672edbcb197e202609b6ee090e8056fd1935', '51.254.49.96', 1682010389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031303338393b),
('f7b2b05779654dcaf4b2940fac5bd563b735acb3', '51.254.49.110', 1682010389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031303338393b),
('5cb85e1a39d33b9af69110ebe2147754b1f8f633', '188.165.87.103', 1682015258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031353235383b),
('213f633bb5215ba603fc657bed90c2dbc173d7a6', '188.165.87.98', 1682015263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031353236333b),
('c2f5e5ead3b89d56139563dd2486a9616d53594c', '13.53.45.42', 1682141083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323134313038333b),
('7c96723d32088d2c265069eb4736cdda5a958cdc', '124.29.228.68', 1682531848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533313834383b),
('4fac1e698642cbb83be3017580a1fbb8c89edaf4', '124.29.228.68', 1682561394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533313834383b757365725f69647c733a313a2231223b),
('42616e89fb6c1bee36c4369401d6d17222c812a8', '65.154.226.168', 1682565533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323536353533333b),
('1b35fad7c7f8bdebc452459ebb2fd3b5c306c21b', '65.154.226.170', 1682565707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323536353730373b),
('94749ec6ea33688eacd22fe037d29e179629abea', '115.85.30.27', 1682580282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323538303238303b),
('d9fd00549cb35dec8ea713eec4cf715f8d16d0cf', '45.130.81.5', 1682794829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323739343832383b),
('84e0f4909c69e3fda493713fbfae00bf8d102e4c', '45.130.81.50', 1682813040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323831333033343b),
('449a8f1ba506bb5955d9aafe6473f3ed35495f12', '209.146.23.178', 1682897527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323839373532363b),
('5038222d6dbffcb2a28e1719eb18d3bc6e502031', '34.247.93.146', 1683149194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333134393139343b),
('e30b7a285ff2b83aaad0cee79a3e56fe00e9843d', '34.247.93.146', 1683149196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333134393139363b),
('ca469bb33ff25c97a66979375c53e91a9aebc4dd', '27.115.124.96', 1683528291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333532383239303b),
('e18a4bf6a984fa577da34e5f318aca36642fd247', '27.115.124.40', 1683528305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333532383330353b),
('73cd54b3f0d63329331b0de7263c9d88870e2022', '27.115.124.66', 1683528377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333532383337373b),
('a95c24eb0c5dd49562ed3353cf2677ad8ba6642c', '27.115.124.49', 1683528395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333532383339353b),
('0abca1cb9cccb0f938ad010cf5abac867232c8d0', '3.10.232.50', 1683639046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333633393034363b),
('dfbfafb1339d1fc74650c6e3650edeab2bce6a7f', '124.29.228.68', 1683653493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333635323139313b757365725f69647c733a313a2231223b),
('b6038e6518bce673d30b4a29b1996d19fcf9fc19', '180.163.220.50', 1683706278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333730363237383b),
('4de1731bc83f377f37f2461ebbce3295740c8ff0', '180.163.220.61', 1683706294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333730363239343b),
('a27004140284667e0eb8c85f010ac2cb86d21436', '180.163.220.95', 1683706493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333730363439333b),
('d664713d111240dcf6b55d7771c9e486e7acda47', '180.163.220.45', 1683706504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333730363530343b),
('ce042c095e5a78662ae9a8a420d3002444aa9c07', '3.253.91.184', 1683790439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333739303433393b),
('7a2597d9bd45cefcfbd2583bf22d1f8f996f20f0', '52.17.136.202', 1683798586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333739383538353b),
('27f964da9620d66ad27d47bd709501bf3edf85a8', '31.187.78.211', 1683835931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833353933313b757365725f69647c733a313a2231223b),
('4ad204f5c3abeee641d7e4c5a4de51ef67243347', '31.187.78.211', 1683836336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833363333363b757365725f69647c733a313a2231223b),
('dff5c05101d3f3d33f589e4fd9d36d3f6e411244', '31.187.78.211', 1683836638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833363633383b757365725f69647c733a313a2231223b),
('90da620740435ea1405e8ce025e4e1eaa198156f', '31.187.78.211', 1683837516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833373531363b757365725f69647c733a313a2231223b),
('83d1deec725a6e618f5ccca7be948474d9d793b3', '31.187.78.211', 1683836968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833363936383b757365725f69647c733a313a2231223b),
('5cabcba9694125b60db10c7855dfd96a77811239', '31.187.78.211', 1683837598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833373539383b),
('be88b49ad1d8abc169c1d3c7a8caa18a50fc8ff5', '52.114.14.71', 1683837929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333833373932393b),
('59133904984108f5abe88855013c0f1cd4f75879', '124.29.228.68', 1683846779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333834363737393b757365725f69647c733a323a223237223b),
('35366a109fbd66aba4c98b9c1dd2677ff804fd8d', '124.29.228.68', 1683850640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333834363737393b757365725f69647c733a323a223237223b),
('298847858197194b5d2079e5e4f31aea48312454', '115.85.30.27', 1683922676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333932323637343b),
('bec0d17f571c4b44cbbfc1ec37d3993d62900090', '115.85.30.27', 1683941755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638333934313735343b),
('21354b1ebb8e6af4a01ae30324ce12023e0b85ef', '3.129.211.36', 1684153639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343135333633393b),
('6480cb1856c8c8bfa504fe2cd596b4885ef19696', '115.85.30.27', 1684162183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136323138323b),
('439442e50a7c239f58fbafeb6678606c5903a016', '104.131.5.33', 1684165314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353331343b),
('fccd6d44d8068cc8488139313371ce75cfd3d362', '104.131.5.33', 1684165314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353331343b),
('11da2319ddc66cc927ee29d9d9276c56173b1061', '167.99.114.51', 1684165423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353432333b),
('99103ab56d955e866efab952f3a4968facc05c1f', '167.99.114.51', 1684165424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353432343b),
('c8779e0b02e2e87273124bab96bd73927c30ba0e', '170.64.140.244', 1684165921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353932313b),
('05182138cee607ea0ae87b4e5516ac07d55bf5ce', '170.64.140.244', 1684165922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343136353932323b),
('116e998090c2ee9c20a9db63696ab4b187f3d4da', '27.115.124.2', 1684209375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343230393337353b),
('70db1ca2d23214b9671bebe645de7e8224f32e50', '27.115.124.34', 1684209389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343230393338393b),
('2b7cd737bb776f4f0e29a3d54d54af8b23385128', '46.101.89.45', 1684839186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343833393138363b),
('617af133ad4098cb562d661da3b179a343b252dc', '46.101.89.45', 1684839187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343833393138373b),
('8ab0d681ad72bd6b9f744f44ea7e40c183c74ed9', '54.146.214.15', 1684932039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343933323033393b),
('03965ccbf8cdaa8ddeb789a80b40e1680f1f9ab2', '54.146.214.15', 1684932039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343933323033393b),
('d4b35861406e873502cb9a312ad895eb95636557', '34.233.125.235', 1685185333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353138353333333b),
('fdcc3ffaa58104a6db2e6e1a1b1f85a7c3208288', '31.187.78.238', 1685386843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353338363834333b),
('f4547de022cfdd8f04ec7c2cc541e8a2ffd4b6e4', '52.114.32.28', 1685386918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353338363931383b),
('42020ad6165dd6fb573ce3d166d25cd9d3621d5e', '124.29.228.68', 1685567686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353536373638363b757365725f69647c733a323a223237223b),
('36ea1a02bb97ce25e54986e45a3e594ece1b7e32', '124.29.228.68', 1685608626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353536373638363b757365725f69647c733a323a223237223b),
('474ea7ea6c424961e99e3a0bf7a7a162f81077e6', '124.29.228.68', 1685567778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353536373736353b),
('187e5d554e6150966719ac66fe3988005d420f87', '124.29.228.68', 1685631312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353633313331323b),
('e5f5ac27123cfe87851637f1c742373b3d6f784a', '124.29.228.68', 1685644034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638353634343033343b);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_lead` tinyint(1) NOT NULL DEFAULT 0,
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `is_lead`, `lead_status_id`, `owner_id`, `sort`, `lead_source_id`, `last_lead_status`, `client_migration_date`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Gologonow', '', '', '', '', '', '2021-09-30', '', '', '', '', '', 1, 0, 1, 1, 0, 1, 'New', '2021-09-30', '', 'USD', 0),
(2, 'Test', '', '', '', '', '', '2021-10-06', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(3, 'Mark', 'asd', 'asd', 'asd', '1001', 'New York', '2022-05-30', 'abc.com', '4524504540', '$', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '454548', 'USD', 0),
(4, 'Andy', '', '', '', '', '', '2022-05-30', '', '', '', '', '', 1, 0, 1, 1, 0, 5, 'New', '2022-05-30', '', '', 0),
(5, 'Gologonow', '852  Griffin Street', 'Phoenix', 'Arizona', '85041', 'United Kingdom', '2022-05-30', NULL, '12025550191', NULL, '', '', 1, 1, 1, 0, 0, 0, '', '0000-00-00', NULL, NULL, 0),
(6, 'Teresa Langlois', '', '', '', '', '', '2022-05-30', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(7, 'dfgf', '', '', '', '', '', '2022-05-30', '', '', '', '', '', 1, 1, 1, 7, 10000000, 1, '', '0000-00-00', '', '', 0),
(8, 'New Lead Testing', '', '', '', '', '', '2022-05-31', '', '', '', '', '', 1, 0, 7, 10, 10000000, 1, 'Assigned', '2022-05-31', '', '', 0),
(9, 'Glam', '', '', '', '', '', '2022-06-01', '', '', '', '', '', 1, 0, 7, 7, 0, 1, 'Assigned', '2022-06-01', '', '', 0),
(10, 'ASD', '', '', '', '', '', '2022-06-02', '', '', '', '', '', 1, 0, 7, 10, 0, 1, 'Assigned', '2022-06-02', '', '', 0),
(11, 'Test Client', '', '', '', '', '', '2022-07-13', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(12, 'Test', '', '', '', '', '', '2022-07-13', '', '', NULL, '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', NULL, 0),
(13, 'fghfgh', '', '', '', '', '', '2022-07-15', '', '', '', '', '', 1, 0, 1, 1, 0, 1, 'New', '2022-07-15', '', '', 0),
(14, 'Anwar', '', '', '', '', '', '2022-11-28', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(15, 'Client', '', '', '', '', '', '2022-11-28', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(16, 'GLN', '', '', '', '', '', '2022-12-01', '', '', '', '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', 0),
(17, 'GLN', '', '', '', '', '', '2022-12-02', '', '', '', '', '', 1, 0, 1, 17, 0, 1, 'New', '2022-12-02', '', '', 0),
(18, 'FourFox', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '', '', 1, 0, 0, 0, 0, 0, '', '0000-00-00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_groups`
--

CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `example_variable_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `title`, `placeholder`, `example_variable_name`, `options`, `field_type`, `related_to`, `sort`, `required`, `show_in_table`, `show_in_invoice`, `show_in_estimate`, `visible_to_admins_only`, `hide_from_clients`, `deleted`) VALUES
(1, 'Name', 'Name', NULL, '', 'text', 'estimate_form-1', 1, 1, 0, 0, 0, 0, 0, 0),
(2, 'About Project', 'About', NULL, '', 'textarea', 'estimate_form-1', 2, 1, 0, 0, 0, 0, 0, 0),
(3, 'Website Name', '', NULL, '', 'text', 'estimate_form-2', 1, 0, 0, 0, 0, 0, 0, 0),
(4, 'Project Description', '', NULL, '', 'textarea', 'estimate_form-2', 2, 0, 0, 0, 0, 0, 0, 0),
(5, 'Budget', '', NULL, '', 'number', 'estimate_form-2', 3, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `related_to_type`, `related_to_id`, `custom_field_id`, `value`, `deleted`) VALUES
(1, 'estimate_request', 1, 1, 'Daniel Bryan', 0),
(2, 'estimate_request', 1, 2, 'ASD', 0),
(3, 'estimate_request', 2, 3, 'rtert', 0),
(4, 'estimate_request', 2, 4, 'fgdfgdfg', 0),
(5, 'estimate_request', 3, 3, 'Glam', 0),
(6, 'estimate_request', 3, 5, '900', 0),
(7, 'estimate_request', 4, 3, 'Test', 0),
(8, 'estimate_request', 4, 4, 'testtest', 0),
(9, 'estimate_request', 4, 5, '600', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_widgets`
--

CREATE TABLE `custom_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT 0,
  `show_border` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', 'Powered By: <a href=\"https://gologonow.com/\" target=\"_blank\">Gologonow</a>', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(17, 'project_task_deadline_reminder', 'Project task deadline reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0);
INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(18, 'estimate_sent', 'New estimate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(19, 'estimate_request_received', 'Estimate request received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(20, 'estimate_rejected', 'Estimate rejected', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(21, 'estimate_accepted', 'Estimate accepted', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT 0,
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `client_id`, `estimate_request_id`, `estimate_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `discount_type`, `discount_amount`, `discount_amount_type`, `project_id`, `deleted`) VALUES
(1, 1, 0, '2021-10-30', '2021-11-30', '', NULL, 'draft', 1, 1, 'before_tax', 0, 'percentage', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `enable_attachment` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_forms`
--

INSERT INTO `estimate_forms` (`id`, `title`, `description`, `status`, `assigned_to`, `public`, `enable_attachment`, `deleted`) VALUES
(1, 'Quotation Form', '', 'active', 1, 1, 1, 1),
(2, 'Web Development', '', 'active', 7, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_requests`
--

INSERT INTO `estimate_requests` (`id`, `estimate_form_id`, `created_by`, `created_at`, `client_id`, `lead_id`, `assigned_to`, `status`, `files`, `deleted`) VALUES
(1, 1, 0, '2022-05-30 19:04:04', 5, 0, 1, 'new', 'a:0:{}', 1),
(2, 2, 0, '2022-05-30 21:46:37', 7, 0, 7, 'new', 'a:0:{}', 1),
(3, 2, 0, '2022-06-01 15:39:24', 9, 0, 7, 'new', 'a:0:{}', 1),
(4, 2, 0, '2022-06-02 21:51:41', 10, 0, 7, 'new', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT 0,
  `google_event_id` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `editable_google_event`, `google_event_id`, `deleted`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`) VALUES
(1, 'Picnic', 'Annual Picnic', '2021-10-10', '2021-10-11', '18:30:00', '18:30:00', 1, 'Ideal Farm House', 0, '', 'all', 0, '', 0, '#29c2c2', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(2, 'Orientation of new employees', 'Orientation of new employees', '2023-03-07', '2023-03-07', '01:00:00', '01:00:00', 29, 'Four-Fox auditorium', 0, '', 'member:1,member:20', 0, '', 0, '#29c2c2', 0, 1, 'months', 0, '0000-00-00', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `general_files`
--

CREATE TABLE `general_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_articles`
--

CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `help_articles`
--

INSERT INTO `help_articles` (`id`, `title`, `description`, `category_id`, `created_by`, `created_at`, `status`, `files`, `total_views`, `deleted`) VALUES
(1, 'How to close client', '<p>Test Test Test</p>', 1, 1, '2023-03-10 22:16:51', 'active', 'a:0:{}', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `help_categories`
--

CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `help_categories`
--

INSERT INTO `help_categories` (`id`, `title`, `description`, `type`, `sort`, `status`, `deleted`) VALUES
(1, 'Client Closing', 'Test', 'knowledge_base', 3, 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_invoice_id` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `labels`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `recurring`, `recurring_invoice_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `due_reminder_date`, `recurring_reminder_date`, `discount_amount`, `discount_amount_type`, `discount_type`, `cancelled_at`, `cancelled_by`, `deleted`) VALUES
(1, 2, 1, '2021-10-06', '2021-10-06', '', '', NULL, 'not_paid', 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 0),
(2, 4, 4, '2022-06-01', '2022-06-04', '', '', NULL, 'draft', 1, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 1),
(3, 16, 39, '2022-12-02', '2022-12-03', '', '', NULL, 'not_paid', 1, 1, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 1),
(4, 17, 40, '2022-12-02', '2022-12-03', '', '', NULL, 'not_paid', 1, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 0),
(5, 15, 38, '2023-03-11', '2023-03-13', 'Website Payment', '', NULL, 'not_paid', 1, 1, 1, 0, 3, 'years', 1, '2026-03-11', 0, NULL, NULL, 2, 'percentage', 'after_tax', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `invoice_id`, `deleted`) VALUES
(1, 'Logo', 'Logo', 1, '', 500, 500, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 300, '2021-10-06', 1, '', 1, 0, NULL, 4, '2021-10-06 21:39:43'),
(2, 500, '2022-12-02', 1, '', 3, 0, NULL, 1, '2022-12-01 23:54:17'),
(3, 500, '2022-12-02', 1, '', 4, 0, NULL, 1, '2022-12-02 17:31:02'),
(4, 588, '2023-03-11', 1, '', 5, 1, NULL, 1, '2023-03-10 23:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `unit_type`, `rate`, `deleted`) VALUES
(1, 'Logo', 'Logo', 'Hours', 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

CREATE TABLE `lead_source` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`id`, `title`, `sort`, `deleted`) VALUES
(1, 'Google', 1, 0),
(2, 'Facebook', 2, 0),
(3, 'Twitter', 3, 0),
(4, 'Youtube', 4, 0),
(5, 'Elsewhere', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Qualified', '#2d9cdb', 2, 0),
(3, 'Discussion', '#29c2c2', 3, 0),
(4, 'Negotiation', '#2d9cdb', 4, 0),
(5, 'Won', '#83c340', 5, 0),
(6, 'Lost', '#e74c3c', 6, 0),
(7, 'Assigned', '#ad159e', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 1, '2021-12-16', '2021-12-31', 128.00, 16.00, 1, 'kuch bhe', 'approved', '2021-12-07 17:22:32', 0, '2021-12-07 17:22:54', 1, 0),
(2, 1, '2022-05-31', '2022-05-31', 8.00, 1.00, 7, 'Test', 'approved', '2022-05-30 22:41:26', 0, '2022-05-30 22:41:54', 7, 0),
(3, 2, '2022-05-31', '2022-05-31', 8.00, 1.00, 7, 'Test', 'rejected', '2022-05-30 22:42:19', 0, '2022-05-30 22:42:29', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0),
(2, 'Sick', 'active', '#e74c3c', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, '1', 'hi there\n', '2021-12-07 17:17:48', 1, 3, 'unread', 0, 0, 'a:0:{}', ''),
(2, '', 'hello', '2021-12-07 17:17:57', 1, 3, 'unread', 1, 0, 'a:0:{}', ''),
(3, '2', 'hi', '2021-12-07 17:18:20', 1, 3, 'unread', 0, 0, 'a:0:{}', ''),
(4, 'test', 'dlasndlkadlkadmasdsadadssdadaasd', '2022-07-13 22:48:24', 29, 1, 'read', 0, 0, 'a:0:{}', ''),
(5, '', 'asdasd', '2022-07-13 22:48:38', 1, 29, 'read', 4, 0, 'a:0:{}', ''),
(6, '', 'efadasd', '2022-07-13 22:48:48', 29, 1, 'read', 4, 0, 'a:0:{}', ''),
(7, '', 'asddasd', '2022-07-13 22:48:51', 29, 1, 'read', 4, 0, 'a:0:{}', ''),
(8, '', 'asdd', '2022-07-13 22:48:55', 29, 1, 'read', 4, 0, 'a:0:{}', ''),
(9, 'Hello', 'Hello', '2022-07-13 23:00:05', 30, 22, 'read', 0, 0, 'a:0:{}', ''),
(10, '', 'Hello', '2022-07-13 23:00:28', 22, 30, 'read', 9, 0, 'a:0:{}', ''),
(11, '', 'j', '2022-11-30 20:48:18', 29, 1, 'read', 4, 0, 'a:0:{}', ''),
(12, '', 'hello\n', '2022-11-30 21:50:13', 1, 29, 'read', 4, 0, 'a:0:{}', ''),
(13, '', 'Getting messages?', '2022-11-30 22:19:01', 29, 1, 'read', 4, 0, 'a:0:{}', ''),
(14, '', 'yes', '2022-11-30 23:51:57', 1, 29, 'read', 4, 0, 'a:0:{}', ''),
(15, '', 'hello', '2023-03-10 22:58:22', 1, 29, 'unread', 4, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `title`, `project_id`, `due_date`, `description`, `deleted`) VALUES
(1, 'Milestone 1 - Bait Okhti', 38, '2023-03-31', '', 0),
(2, 'Milestone 2 - Bait Okhti', 38, '2023-04-06', '', 0),
(3, 'Milestone 3 - Bait Okhti', 38, '2023-04-13', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `files`, `is_public`, `deleted`) VALUES
(1, 29, '2023-03-09 22:17:27', 'test title', 'sadadadad', 38, 0, 0, 'Important', 'a:0:{}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(1, 4, '', '2021-10-06 21:14:52', '3', '', 'project_member_added', 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 4, '', '2021-10-06 21:14:52', '1,3', '', 'project_member_added', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 4, '', '2021-10-06 21:16:26', '1,3', ',1', 'project_task_created', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 1, '', '2021-10-06 21:31:42', '3,4', '', 'project_task_created', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 1, '', '2021-10-06 21:32:51', '3', '', 'project_task_updated', 1, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(6, 1, '', '2021-12-07 17:22:54', '', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, '', '2022-05-30 17:56:56', '', '', 'project_task_created', 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(8, 1, '', '2022-05-30 17:56:59', '', '', 'project_task_updated', 3, 3, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(9, 1, '', '2022-05-30 17:57:00', '', '', 'project_task_updated', 3, 3, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, 1, '', '2022-05-30 17:57:01', '', '', 'project_task_updated', 3, 3, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(11, 1, '', '2022-05-30 17:57:13', '', '', 'project_task_updated', 3, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(12, 1, '', '2022-05-30 17:57:25', '', '', 'project_task_commented', 3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(13, 1, '', '2022-05-30 17:57:44', '', '', 'project_task_updated', 3, 3, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 1, '', '2022-05-30 17:58:43', '', '', 'project_task_commented', 3, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15, 1, '', '2022-05-30 19:07:30', '', '', 'project_task_created', 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(16, 1, '', '2022-05-30 19:07:51', '', '', 'project_task_created', 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(17, 1, '', '2022-05-30 19:08:18', '', '', 'project_task_updated', 4, 4, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(18, 7, '', '2022-05-30 21:26:35', '', '', 'project_task_created', 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(19, 7, '', '2022-05-30 21:33:45', '', '', 'project_task_updated', 5, 6, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(20, 7, '', '2022-05-30 22:41:54', '', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 2, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 7, '', '2022-05-30 22:42:30', '', '', 'leave_rejected', 0, 0, 0, 0, 0, 0, 3, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, '', '2022-06-08 18:39:39', '10', '', 'ticket_closed', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 1, '', '2022-07-13 15:50:56', '', '', 'project_task_created', 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(24, 1, '', '2022-07-13 15:51:24', '', '', 'project_task_updated', 6, 7, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(25, 1, '', '2022-07-13 18:54:21', '', '', 'project_task_created', 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(26, 1, '', '2022-07-13 18:54:50', '', '', 'project_task_commented', 7, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(27, 1, '', '2022-07-13 18:55:02', '', '', 'project_task_updated', 7, 8, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(28, 1, '', '2022-07-13 18:55:49', '', '', 'project_task_commented', 7, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(29, 1, '', '2022-07-13 18:56:09', '', '', 'project_task_updated', 7, 8, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(30, 17, '', '2022-07-13 22:52:26', '', '', 'project_task_created', 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(31, 1, '', '2022-07-14 11:07:24', '37', '', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(32, 1, '', '2022-11-28 18:42:41', '36', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 1, '', '2022-11-28 18:42:56', '36,45', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 1, '', '2022-11-28 18:42:56', '36,45,47', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 1, '', '2022-11-28 18:43:06', '36,43,45,47', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 1, '', '2022-11-28 18:44:35', '32', '', 'project_member_added', 27, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 1, '', '2022-11-28 18:44:36', '32,36', '', 'project_member_added', 27, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 1, '', '2022-11-28 18:44:36', '32,36,49', '', 'project_member_added', 27, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 1, '', '2022-11-28 18:44:56', '36', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(40, 1, '', '2022-11-28 18:44:56', '36,44', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(41, 1, '', '2022-11-28 18:55:55', '36', '', 'project_member_added', 33, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 1, '', '2022-11-28 18:55:55', '36,43', '', 'project_member_added', 33, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 1, '', '2022-11-28 18:55:55', '36,43,47', '', 'project_member_added', 33, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 1, '', '2022-11-28 18:56:36', '36', '', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(45, 1, '', '2022-11-28 18:56:36', '36,47', '', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(46, 1, '', '2022-11-28 18:56:36', '36,43,47', '', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(47, 1, '', '2022-11-28 18:57:27', '36', '', 'project_member_added', 20, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 1, '', '2022-11-28 18:57:27', '36,48', '', 'project_member_added', 20, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 1, '', '2022-11-30 18:47:23', '', '', 'project_task_created', 30, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, '', '2022-11-30 18:47:37', '', '', 'project_task_commented', 30, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 1, '', '2022-11-30 20:21:46', '41', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 1, '', '2022-11-30 20:21:46', '29,41', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 1, '', '2022-11-30 20:21:46', '29,36,41', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 1, '', '2022-11-30 20:23:55', '29,41', '', 'project_task_created', 36, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 1, '', '2022-11-30 20:34:06', '41', '', 'project_task_updated', 36, 11, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 1, '', '2022-11-30 20:34:55', '41', '', 'project_task_updated', 36, 11, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 29, '', '2022-11-30 21:27:43', '41', '', 'project_task_updated', 36, 11, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 29, '', '2022-11-30 21:31:41', '41', ',1', 'project_task_commented', 36, 11, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 29, '', '2022-11-30 21:32:55', '41', ',1', 'project_task_commented', 36, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 29, '', '2022-11-30 23:16:58', '1,21,36,41', ',1', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 29, '', '2022-12-01 15:09:01', '1', '', 'project_comment_added', 24, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(62, 29, '', '2022-12-01 15:09:18', '1,17', '', 'project_member_added', 24, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(63, 29, '', '2022-12-01 15:09:59', '1,17,48', '', 'project_member_added', 24, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(64, 29, '', '2022-12-01 15:10:09', '1,17,48', '', 'project_member_added', 24, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(65, 1, '', '2022-12-01 16:43:09', '41', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(66, 1, '', '2022-12-01 16:43:09', '36,41', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(67, 1, '', '2022-12-01 16:43:09', '29,36,41', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(68, 1, '', '2022-12-01 16:43:09', '25,29,36,41', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(69, 1, '', '2022-12-01 16:43:09', '21,25,29,36,41', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(70, 1, '', '2022-12-01 16:43:39', '21,25,29,41', '', 'project_task_created', 35, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(71, 1, '', '2022-12-01 16:44:40', '41', '', 'project_task_updated', 35, 12, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(72, 29, '', '2022-12-01 16:53:54', '1,36', '', 'project_member_added', 30, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 29, '', '2022-12-01 16:54:15', '1,36', '', 'project_member_added', 19, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 29, '', '2022-12-01 16:54:46', '1,36', ',1', 'project_member_added', 16, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 29, '', '2022-12-01 16:55:27', '1', '', 'project_member_added', 31, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 29, '', '2022-12-01 16:56:52', '1', '', 'project_task_created', 19, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 29, '', '2022-12-01 16:58:30', '1,43,47', '', 'project_member_deleted', 33, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 29, '', '2022-12-01 16:58:35', '1,43,47', '', 'project_member_added', 33, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 29, '', '2022-12-01 16:59:15', '1', '', 'project_task_created', 33, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 29, '', '2022-12-01 16:59:28', '47', '', 'project_task_assigned', 33, 14, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 29, '', '2022-12-01 16:59:52', '1,43', '', 'project_task_created', 33, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 29, '', '2022-12-01 17:00:31', '1,43', '', 'project_task_created', 33, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 29, '', '2022-12-01 17:01:02', '1,43', '', 'project_task_created', 33, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 29, '', '2022-12-01 17:15:15', '1,43', '', 'project_task_created', 33, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 29, '', '2022-12-01 17:30:36', '1,43,47', '', 'project_comment_added', 33, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 29, '', '2022-12-01 17:31:05', '1,43,47', '', 'project_comment_added', 33, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 29, '', '2022-12-01 17:43:43', '', '', 'project_task_created', 37, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 29, '', '2022-12-01 17:43:52', '45', '', 'project_member_added', 37, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 29, '', '2022-12-01 17:43:56', '45', '', 'project_member_deleted', 37, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 29, '', '2022-12-01 17:44:28', '1,45', '', 'project_member_added', 37, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 29, '', '2022-12-01 17:44:28', '1,36,45', '', 'project_member_added', 37, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 29, '', '2022-12-01 17:44:35', '1,36,45', '', 'project_member_added', 37, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 29, '', '2022-12-01 17:44:57', '1,36,43,45,47', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 29, '', '2022-12-01 17:45:03', '1,22,36,43,45,47', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 1, '', '2022-12-01 19:30:13', '', '', 'project_task_created', 32, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 1, '', '2022-12-01 19:30:22', '', '', 'project_task_deleted', 32, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 1, '', '2022-12-01 19:30:38', '36', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 1, '', '2022-12-01 19:30:38', '29,36', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 1, '', '2022-12-01 19:30:38', '29,36,48', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 1, '', '2022-12-01 19:31:15', '29,48', '', 'project_task_created', 32, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 1, '', '2022-12-01 19:31:23', '29,36,41,48', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 1, '', '2022-12-01 19:31:45', '29,41', ',29', 'project_task_created', 32, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 29, '', '2022-12-01 22:39:14', '1', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 29, '', '2022-12-01 22:39:14', '1,32', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 1, '', '2022-12-01 23:55:07', '26', '', 'project_member_added', 39, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(106, 1, '', '2022-12-02 14:22:50', '29,32,36', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 1, '', '2022-12-02 14:22:50', '29,32,36,41', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 1, '', '2022-12-02 14:23:05', '29,41', '', 'project_task_created', 38, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 1, '', '2022-12-02 14:23:22', '29,32', '', 'project_task_created', 38, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 1, '', '2022-12-02 14:24:26', '', '', 'project_task_updated', 30, 10, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 1, '', '2022-12-02 14:24:28', '', '', 'project_task_updated', 30, 10, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 1, '', '2022-12-02 14:24:57', '29,36', '', 'project_member_added', 30, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 1, '', '2022-12-02 14:24:57', '29,31,36', '', 'project_member_added', 30, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 1, '', '2022-12-02 14:24:57', '29,31,36,48', '', 'project_member_added', 30, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 1, '', '2022-12-02 14:25:07', '29,31,36,41,48', '', 'project_member_added', 30, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 1, '', '2022-12-02 14:25:17', '41', '', 'project_task_updated', 30, 10, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 1, '', '2022-12-02 14:25:28', '29,48', '', 'project_task_created', 30, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 1, '', '2022-12-02 14:25:44', '29,31', '', 'project_task_created', 30, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 29, '', '2022-12-05 23:14:55', '32', '', 'project_task_updated', 38, 24, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 1, '', '2022-12-08 15:28:47', '48', '', 'project_task_updated', 32, 21, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 1, '', '2022-12-08 15:28:50', '41', '', 'project_task_updated', 32, 22, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 1, '', '2022-12-08 15:29:24', '29,36,41,45,48', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 1, '', '2022-12-08 15:30:01', '29,45', '', 'project_task_created', 32, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 1, '', '2022-12-08 15:33:04', '29,45', '', 'project_task_created', 32, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 1, '', '2022-12-08 15:33:07', '45', '', 'project_task_deleted', 32, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 1, '', '2022-12-08 15:33:31', '29,45', '', 'project_task_created', 32, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 1, '', '2022-12-08 15:33:47', '29,45', '', 'project_task_created', 32, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 1, '', '2022-12-08 15:34:08', '29,45', '', 'project_task_created', 32, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 1, '', '2022-12-08 15:34:24', '29,45', '', 'project_task_created', 32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 1, '', '2022-12-08 15:34:36', '29,45', '', 'project_task_created', 32, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 1, '', '2022-12-08 15:34:48', '29,45', '', 'project_task_created', 32, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 1, '', '2022-12-08 15:35:02', '29,45', '', 'project_task_created', 32, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 1, '', '2022-12-08 15:40:12', '48', '', 'project_task_updated', 32, 21, 0, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 1, '', '2022-12-08 15:45:50', '45', '', 'project_task_updated', 32, 28, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 1, '', '2022-12-08 15:45:53', '45', '', 'project_task_updated', 32, 28, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 1, '', '2022-12-12 21:14:50', '29,32,36,41,48', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 1, '', '2022-12-12 21:15:08', '29,48', '', 'project_task_created', 38, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 1, '', '2022-12-12 21:15:19', '48', '', 'project_task_commented', 38, 36, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 1, '', '2022-12-12 21:17:07', '41', '', 'project_task_updated', 38, 23, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 1, '', '2022-12-12 21:17:27', '41', '', 'project_task_updated', 36, 11, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 1, '', '2023-01-02 21:26:48', '48', '', 'project_task_updated', 38, 36, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 1, '', '2023-01-02 21:28:56', '29,32', '', 'project_task_created', 38, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 1, '', '2023-01-02 21:29:06', '29,32', '', 'project_task_created', 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 1, '', '2023-01-02 21:29:15', '29,32', '', 'project_task_created', 38, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 1, '', '2023-01-02 21:29:25', '29,32', '', 'project_task_created', 38, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 1, '', '2023-01-02 21:29:35', '29,32', '', 'project_task_created', 38, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 1, '', '2023-01-02 21:29:48', '29,32', '', 'project_task_created', 38, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 1, '', '2023-01-02 21:29:58', '29,32', '', 'project_task_created', 38, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 1, '', '2023-01-02 21:30:08', '29,32', '', 'project_task_created', 38, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 1, '', '2023-01-02 21:30:16', '29,32', '', 'project_task_created', 38, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 1, '', '2023-01-02 21:30:30', '29,32', '', 'project_task_created', 38, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 1, '', '2023-01-02 21:30:54', '29,32', '', 'project_task_created', 38, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 1, '', '2023-01-02 21:31:07', '29,32', '', 'project_task_created', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 1, '', '2023-01-02 21:31:17', '29,32', '', 'project_task_created', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 1, '', '2023-01-02 21:32:04', '32', '', 'project_task_deleted', 38, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 1, '', '2023-01-02 21:32:43', '32', '', 'project_task_updated', 38, 37, 0, 0, 0, 0, 0, 0, 0, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 1, '', '2023-01-02 21:32:44', '32', '', 'project_task_updated', 38, 38, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 1, '', '2023-01-02 21:32:45', '32', '', 'project_task_updated', 38, 39, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 1, '', '2023-01-02 21:32:47', '32', '', 'project_task_updated', 38, 40, 0, 0, 0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 1, '', '2023-01-02 21:32:48', '32', '', 'project_task_updated', 38, 41, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 1, '', '2023-01-02 21:32:50', '32', '', 'project_task_updated', 38, 43, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 1, '', '2023-01-02 21:32:52', '32', '', 'project_task_updated', 38, 44, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 1, '', '2023-01-02 21:32:56', '32', '', 'project_task_updated', 38, 49, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 1, '', '2023-01-02 21:33:51', '29,36', '', 'project_member_added', 31, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 1, '', '2023-01-02 21:33:51', '29,36,41', '', 'project_member_added', 31, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 1, '', '2023-01-02 21:34:03', '29,41', '', 'project_task_created', 31, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 1, '', '2023-01-02 21:34:19', '29,36,41,48', '', 'project_member_added', 31, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 1, '', '2023-01-02 21:34:35', '29,48', '', 'project_task_created', 31, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 1, '', '2023-01-02 21:36:13', '31', '', 'project_task_deleted', 30, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 1, '', '2023-01-02 21:36:25', '48', '', 'project_task_updated', 30, 25, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 1, '', '2023-01-02 21:37:44', '29,31', '', 'project_task_created', 30, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 1, '', '2023-01-02 21:37:55', '29,31', '', 'project_task_created', 30, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 1, '', '2023-01-02 21:38:18', '29,31', '', 'project_task_created', 30, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 1, '', '2023-01-02 21:38:33', '29,31', '', 'project_task_created', 30, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 1, '', '2023-01-02 21:38:43', '29,31', '', 'project_task_created', 30, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 1, '', '2023-01-02 21:38:53', '29,31', '', 'project_task_created', 30, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 1, '', '2023-01-02 21:39:02', '29,31', '', 'project_task_created', 30, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 1, '', '2023-01-02 21:39:10', '29,31', '', 'project_task_created', 30, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 1, '', '2023-01-02 21:39:20', '29,31', '', 'project_task_created', 30, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 1, '', '2023-01-02 21:48:52', '29', '', 'project_task_created', 31, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 1, '', '2023-01-02 21:49:08', '29', '', 'project_task_created', 31, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 1, '', '2023-01-02 21:50:15', '29', '', 'project_task_created', 31, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 1, '', '2023-01-02 21:50:24', '29', '', 'project_task_created', 31, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 1, '', '2023-01-02 21:50:32', '29', '', 'project_task_created', 31, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 1, '', '2023-01-02 21:50:44', '29', '', 'project_task_created', 31, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 1, '', '2023-01-02 21:51:07', '29', '', 'project_task_created', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 1, '', '2023-01-02 21:51:21', '29', '', 'project_task_created', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 1, '', '2023-01-02 21:51:49', '45', '', 'project_task_updated', 32, 28, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 1, '', '2023-01-02 21:51:50', '45', '', 'project_task_updated', 32, 29, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 1, '', '2023-01-02 21:51:52', '45', '', 'project_task_updated', 32, 30, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 1, '', '2023-01-02 21:51:53', '45', '', 'project_task_updated', 32, 31, 0, 0, 0, 0, 0, 0, 0, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 1, '', '2023-01-02 21:51:55', '45', '', 'project_task_updated', 32, 32, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 1, '', '2023-01-02 21:51:57', '45', '', 'project_task_updated', 32, 33, 0, 0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 1, '', '2023-01-02 21:51:58', '45', '', 'project_task_updated', 32, 34, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 1, '', '2023-01-02 21:52:00', '45', '', 'project_task_updated', 32, 35, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 1, '', '2023-01-02 21:52:41', '36', '', 'project_member_added', 29, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 1, '', '2023-01-02 21:52:41', '29,36', '', 'project_member_added', 29, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 1, '', '2023-01-02 21:52:41', '29,36,48', '', 'project_member_added', 29, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 1, '', '2023-01-02 21:52:51', '29,48', '', 'project_task_created', 29, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 1, '', '2023-01-02 21:53:08', '29,36,41,48', '', 'project_member_added', 29, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 1, '', '2023-01-02 21:53:19', '29,41', '', 'project_task_created', 29, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 1, '', '2023-01-02 21:53:25', '41', '', 'project_task_updated', 29, 71, 0, 0, 0, 0, 0, 0, 0, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 1, '', '2023-01-02 22:46:23', '29,32,36,49', '', 'project_member_added', 27, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 1, '', '2023-01-02 22:46:23', '29,32,36,41,49', '', 'project_member_added', 27, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 1, '', '2023-01-02 22:46:34', '29,41', '', 'project_task_created', 27, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 1, '', '2023-01-02 22:46:43', '29,49', '', 'project_task_created', 27, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 1, '', '2023-01-02 22:46:59', '29,32', '', 'project_task_created', 27, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 1, '', '2023-01-02 22:47:16', '29,32', '', 'project_task_created', 27, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 1, '', '2023-01-02 22:47:24', '49', '', 'project_task_updated', 27, 73, 0, 0, 0, 0, 0, 0, 0, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 1, '', '2023-01-02 22:47:26', '32', '', 'project_task_updated', 27, 75, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 1, '', '2023-01-02 22:47:49', '29,32,49', '', 'project_task_created', 27, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 1, '', '2023-01-02 22:47:57', '32', '', 'project_task_updated', 27, 75, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 1, '', '2023-01-02 22:48:04', '32', '', 'project_task_updated', 27, 74, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 1, '', '2023-01-02 22:48:43', '29,32,49', '', 'project_task_created', 27, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 1, '', '2023-01-02 22:48:56', '29,32,49', '', 'project_task_created', 27, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 1, '', '2023-01-02 22:49:09', '29,32,49', '', 'project_task_created', 27, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 1, '', '2023-01-02 22:49:22', '29,32,49', '', 'project_task_created', 27, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 1, '', '2023-01-02 22:49:53', '29,32,49', '', 'project_task_created', 27, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 1, '', '2023-01-02 22:50:11', '29,32,49', '', 'project_task_created', 27, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 1, '', '2023-01-02 22:50:58', '29,32,49', '', 'project_task_created', 27, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 1, '', '2023-01-02 22:51:18', '29,32,49', '', 'project_task_created', 27, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 1, '', '2023-01-02 22:51:47', '29,32,49', '', 'project_task_created', 27, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 1, '', '2023-01-02 22:52:09', '29,32,49', '', 'project_task_created', 27, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 1, '', '2023-01-02 22:54:12', '36', '', 'project_member_added', 25, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 1, '', '2023-01-02 22:54:12', '29,36', '', 'project_member_added', 25, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 1, '', '2023-01-02 22:54:12', '29,36,41', '', 'project_member_added', 25, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 1, '', '2023-01-02 22:54:12', '29,36,41,47', '', 'project_member_added', 25, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 1, '', '2023-01-02 22:54:12', '29,36,41,45,47', '', 'project_member_added', 25, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 1, '', '2023-01-02 22:54:32', '29,41', '', 'project_task_created', 25, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 1, '', '2023-01-02 22:54:46', '29,47', '', 'project_task_created', 25, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 1, '', '2023-01-02 22:55:03', '29,45,47', '', 'project_task_created', 25, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 1, '', '2023-01-02 22:55:09', '47', '', 'project_task_updated', 25, 88, 0, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 1, '', '2023-01-02 22:55:11', '47', '', 'project_task_updated', 25, 88, 0, 0, 0, 0, 0, 0, 0, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 1, '', '2023-01-02 22:57:33', '29,45,47', '', 'project_task_created', 25, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 1, '', '2023-01-02 22:57:53', '29,45,47', '', 'project_task_created', 25, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 1, '', '2023-01-02 22:58:07', '29,45', '', 'project_task_created', 25, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 1, '', '2023-01-02 22:58:22', '29,45,47', '', 'project_task_created', 25, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 1, '', '2023-01-02 22:58:37', '29,45,47', '', 'project_task_created', 25, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 1, '', '2023-01-02 22:58:46', '45', '', 'project_task_updated', 25, 94, 0, 0, 0, 0, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 1, '', '2023-01-02 22:59:03', '29,45,47', '', 'project_task_created', 25, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 1, '', '2023-01-02 22:59:15', '29,45,47', '', 'project_task_created', 25, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 1, '', '2023-01-02 22:59:27', '29,45', '', 'project_task_created', 25, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 1, '', '2023-01-02 22:59:41', '29,45,47', '', 'project_task_created', 25, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 1, '', '2023-01-02 22:59:57', '29,45,47', '', 'project_task_created', 25, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 1, '', '2023-01-02 23:00:09', '29,45,47', '', 'project_task_created', 25, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 1, '', '2023-01-02 23:00:21', '29,45,47', '', 'project_task_created', 25, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 1, '', '2023-01-02 23:00:37', '29,45,47', '', 'project_task_created', 25, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 1, '', '2023-01-02 23:00:52', '29,45,47', '', 'project_task_created', 25, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 29, '', '2023-01-31 18:37:51', '1,32,36,41,48', '', 'project_comment_added', 38, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 29, '', '2023-01-31 18:40:11', '1,32,36,41,48', '', 'project_comment_added', 38, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 29, '', '2023-01-31 18:42:36', '1', ',1', 'project_comment_added', 28, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 29, '', '2023-01-31 18:45:34', '', '', 'project_comment_added', 42, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 1, '', '2023-01-31 18:57:26', '29,32,36,41,48', '', 'project_comment_added', 38, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 29, '', '2023-03-09 21:58:45', '1,32,36,41,48', '', 'project_comment_added', 38, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 29, '', '2023-03-09 21:58:53', '1,32,36,41,48', ',1', 'project_comment_replied', 38, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 29, '', '2023-03-09 22:00:54', '', '', 'project_task_updated', 37, 19, 0, 0, 0, 0, 0, 0, 0, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 1, '', '2023-03-10 17:08:09', '48', '', 'project_task_commented', 32, 21, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 1, '', '2023-03-10 17:12:15', '29,32,36,41,48', '', 'project_comment_added', 38, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 1, '', '2023-03-10 17:12:24', '29,32,36,41,48', '', 'project_comment_replied', 38, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 29, '', '2023-03-13 19:05:19', '1,21,36,45', '', 'project_member_added', 37, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 29, '', '2023-03-13 19:05:37', '', '', 'project_task_updated', 37, 19, 0, 0, 0, 0, 0, 0, 0, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 29, '', '2023-03-13 19:08:37', '1', '', 'project_comment_added', 28, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 29, '', '2023-03-30 16:33:21', '', '', 'project_task_created', 43, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(264, 29, '', '2023-03-30 16:33:29', '', '', 'project_task_updated', 43, 104, 0, 0, 0, 0, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(265, 29, '', '2023-03-30 17:34:18', '', '', 'project_file_added', 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(266, 29, '', '2023-03-30 17:35:20', '', '', 'project_file_commented', 43, 0, 23, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(267, 1, '', '2023-03-30 17:39:08', '45', '', 'project_task_updated', 32, 28, 0, 0, 0, 0, 0, 0, 0, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 1, '', '2023-03-30 17:39:37', '45', '', 'project_task_updated', 32, 28, 0, 0, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 1, '', '2023-03-30 17:41:04', '45', '', 'project_task_updated', 32, 30, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 1, '', '2023-03-30 17:41:29', '45', '', 'project_task_updated', 32, 30, 0, 0, 0, 0, 0, 0, 0, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 1, '', '2023-03-30 17:41:48', '45', '', 'project_task_commented', 32, 30, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 29, '', '2023-04-03 15:44:44', '1', '', 'project_task_updated', 31, 69, 0, 0, 0, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 29, '', '2023-04-03 15:44:45', '1', '', 'project_task_updated', 31, 68, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 29, '', '2023-04-03 15:44:46', '1', '', 'project_task_updated', 31, 67, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 29, '', '2023-04-03 15:44:48', '1', '', 'project_task_updated', 31, 64, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 29, '', '2023-04-03 15:44:49', '1', '', 'project_task_updated', 31, 65, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 29, '', '2023-04-03 15:44:50', '1', '', 'project_task_updated', 31, 66, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 29, '', '2023-04-03 15:44:51', '1', '', 'project_task_updated', 31, 63, 0, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 29, '', '2023-04-03 15:44:52', '1', '', 'project_task_updated', 31, 62, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 29, '', '2023-04-03 15:44:53', '1', '', 'project_task_updated', 31, 61, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 29, '', '2023-04-03 15:44:55', '48', '', 'project_task_updated', 31, 51, 0, 0, 0, 0, 0, 0, 0, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 29, '', '2023-04-03 15:45:03', '1', '', 'project_task_deleted', 31, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 29, '', '2023-04-03 15:45:06', '1', '', 'project_task_deleted', 31, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 29, '', '2023-04-03 15:45:10', '1', '', 'project_task_deleted', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 29, '', '2023-04-03 15:45:11', '1', '', 'project_task_deleted', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 29, '', '2023-04-03 15:45:13', '1', '', 'project_task_deleted', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 29, '', '2023-04-03 15:45:14', '1', '', 'project_task_deleted', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 29, '', '2023-04-03 15:45:15', '1', '', 'project_task_deleted', 31, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 29, '', '2023-04-03 15:45:16', '1', '', 'project_task_deleted', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 29, '', '2023-04-03 15:45:17', '1', '', 'project_task_deleted', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 29, '', '2023-04-03 15:45:18', '1', '', 'project_task_deleted', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 29, '', '2023-04-03 15:45:19', '1', '', 'project_task_deleted', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 29, '', '2023-04-03 15:45:19', '1', '', 'project_task_deleted', 31, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 29, '', '2023-04-03 15:45:39', '32', '', 'project_task_updated', 38, 49, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 29, '', '2023-04-03 15:45:41', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 29, '', '2023-04-03 15:45:42', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 29, '', '2023-04-03 15:45:44', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 29, '', '2023-04-03 15:45:45', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 29, '', '2023-04-03 15:45:46', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 29, '', '2023-04-03 15:45:47', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 29, '', '2023-04-03 15:45:49', '32', '', 'project_task_deleted', 38, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 29, '', '2023-04-03 15:45:50', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 29, '', '2023-04-03 15:45:51', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 29, '', '2023-04-03 15:45:52', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 29, '', '2023-04-03 15:45:53', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 29, '', '2023-04-03 15:45:54', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 29, '', '2023-04-03 15:45:54', '32', '', 'project_task_deleted', 38, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 29, '', '2023-04-03 15:50:10', '1,32,48', '', 'project_task_created', 38, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 29, '', '2023-04-03 15:51:01', '1,32,48', '', 'project_task_created', 38, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 29, '', '2023-04-03 16:09:59', '1,32,48', '', 'project_task_created', 38, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 29, '', '2023-04-03 16:11:16', '1,32,48', '', 'project_task_created', 38, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 29, '', '2023-04-03 16:11:48', '32', '', 'project_task_updated', 38, 106, 0, 0, 0, 0, 0, 0, 0, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 29, '', '2023-04-03 16:11:56', '32', '', 'project_task_updated', 38, 105, 0, 0, 0, 0, 0, 0, 0, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 29, '', '2023-04-03 16:13:03', '1,32,48', '', 'project_task_created', 38, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(315, 29, '', '2023-04-03 16:13:39', '32', '', 'project_task_updated', 38, 109, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(316, 29, '', '2023-04-03 16:14:29', '', '', 'project_task_updated', 43, 104, 0, 0, 0, 0, 0, 0, 0, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(317, 29, '', '2023-04-03 16:14:31', '', '', 'project_task_updated', 43, 104, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(318, 29, '', '2023-04-03 16:15:25', '', '', 'project_task_updated', 43, 104, 0, 0, 0, 0, 0, 0, 0, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(319, 29, '', '2023-04-03 16:15:39', '32', '', 'project_task_deleted', 38, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 29, '', '2023-04-03 16:15:45', '32', '', 'project_task_deleted', 38, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 29, '', '2023-04-03 16:15:46', '32', '', 'project_task_deleted', 38, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 29, '', '2023-04-03 16:15:47', '32', '', 'project_task_deleted', 38, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 29, '', '2023-04-03 16:15:55', '32', '', 'project_task_deleted', 38, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 29, '', '2023-04-03 16:15:57', '32', '', 'project_task_deleted', 38, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(325, 29, '', '2023-04-03 16:15:59', '32', '', 'project_task_deleted', 38, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(326, 29, '', '2023-04-03 16:16:02', '32', '', 'project_task_deleted', 38, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(327, 29, '', '2023-04-03 16:16:04', '32', '', 'project_task_deleted', 38, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(328, 29, '', '2023-04-03 16:16:06', '32', '', 'project_task_deleted', 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(329, 29, '', '2023-04-03 16:16:08', '32', '', 'project_task_deleted', 38, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(330, 29, '', '2023-04-03 16:16:11', '32', '', 'project_task_deleted', 38, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(331, 29, '', '2023-04-03 16:17:39', '1,32,48', '', 'project_task_created', 38, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(332, 29, '', '2023-04-03 16:21:28', '1,32,48', '', 'project_task_created', 38, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(333, 29, '', '2023-04-03 16:21:46', '32', '', 'project_task_updated', 38, 110, 0, 0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(334, 29, '', '2023-04-03 16:32:29', '1,32,48', '', 'project_task_created', 38, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(335, 29, '', '2023-04-03 16:36:27', '1,32,48', '', 'project_task_created', 38, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(336, 29, '', '2023-04-03 16:43:09', '1,32,48', '', 'project_task_created', 38, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(337, 29, '', '2023-04-03 16:48:50', '1,32,48', '', 'project_task_created', 38, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(338, 29, '', '2023-04-03 16:52:03', '1,32,48', '', 'project_task_created', 38, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(339, 29, '', '2023-04-03 16:52:44', '32', '', 'project_task_updated', 38, 115, 0, 0, 0, 0, 0, 0, 0, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(340, 29, '', '2023-04-03 16:53:26', '32', '', 'project_task_updated', 38, 115, 0, 0, 0, 0, 0, 0, 0, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(341, 29, '', '2023-04-03 16:58:03', '', '', 'project_task_updated', 38, 114, 0, 0, 0, 0, 0, 0, 0, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 29, '', '2023-04-03 16:59:27', '1,32,48', '', 'project_task_created', 38, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(343, 29, '', '2023-04-03 16:59:39', '32', '', 'project_task_updated', 38, 115, 0, 0, 0, 0, 0, 0, 0, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 29, '', '2023-04-03 17:04:10', '32', '', 'project_task_updated', 38, 117, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 29, '', '2023-04-03 17:07:28', '1,32,48', '', 'project_task_created', 38, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(346, 29, '', '2023-04-03 17:08:09', '1', '', 'project_task_created', 38, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(347, 29, '', '2023-04-03 17:08:47', '32', '', 'project_task_updated', 38, 119, 0, 0, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(348, 29, '', '2023-04-03 17:08:57', '32', '', 'project_task_updated', 38, 118, 0, 0, 0, 0, 0, 0, 0, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(349, 29, '', '2023-04-03 17:22:49', '1,32,48', '', 'project_task_created', 38, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(350, 29, '', '2023-04-03 17:23:28', '32', '', 'project_task_updated', 38, 106, 0, 0, 0, 0, 0, 0, 0, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(351, 29, '', '2023-04-03 17:25:27', '1,32,48', '', 'project_task_created', 38, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(352, 29, '', '2023-04-03 17:32:54', '1', '', 'project_task_created', 38, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 29, '', '2023-04-03 17:33:28', '32', '', 'project_task_updated', 38, 122, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 29, '', '2023-04-03 17:35:54', '1,32,48', '', 'project_task_created', 38, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 29, '', '2023-04-03 17:37:32', '1,32,48', '', 'project_task_created', 38, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 29, '', '2023-04-03 17:42:34', '1', '', 'project_task_created', 38, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 29, '', '2023-04-03 17:44:21', '32', '', 'project_task_updated', 38, 126, 0, 0, 0, 0, 0, 0, 0, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 29, '', '2023-04-03 17:45:00', '32', '', 'project_task_updated', 38, 125, 0, 0, 0, 0, 0, 0, 0, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 29, '', '2023-04-03 17:46:16', '32', '', 'project_task_updated', 38, 126, 0, 0, 0, 0, 0, 0, 0, 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 29, '', '2023-04-03 17:53:27', '1,32,48', '', 'project_task_created', 38, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 29, '', '2023-04-03 17:56:58', '1,32,48', '', 'project_task_created', 38, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 29, '', '2023-04-03 17:58:43', '32', '', 'project_task_updated', 38, 128, 0, 0, 0, 0, 0, 0, 0, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(363, 29, '', '2023-04-03 17:59:38', '1,32,48', '', 'project_task_created', 38, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 29, '', '2023-04-03 18:00:04', '32', '', 'project_task_updated', 38, 129, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 29, '', '2023-04-03 18:00:20', '32', '', 'project_task_updated', 38, 123, 0, 0, 0, 0, 0, 0, 0, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 29, '', '2023-04-03 18:05:28', '32', '', 'project_task_updated', 38, 105, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 29, '', '2023-04-03 18:05:31', '32', '', 'project_task_updated', 38, 106, 0, 0, 0, 0, 0, 0, 0, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 29, '', '2023-04-03 18:05:33', '32', '', 'project_task_updated', 38, 108, 0, 0, 0, 0, 0, 0, 0, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(369, 29, '', '2023-04-03 18:05:34', '32', '', 'project_task_updated', 38, 107, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(370, 29, '', '2023-04-03 18:05:36', '32', '', 'project_task_updated', 38, 109, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(371, 29, '', '2023-04-03 18:05:39', '32', '', 'project_task_updated', 38, 110, 0, 0, 0, 0, 0, 0, 0, 297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(372, 29, '', '2023-04-03 18:05:41', '32', '', 'project_task_updated', 38, 112, 0, 0, 0, 0, 0, 0, 0, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(373, 29, '', '2023-04-03 18:05:43', '32', '', 'project_task_updated', 38, 113, 0, 0, 0, 0, 0, 0, 0, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(374, 29, '', '2023-04-03 18:05:56', '32', '', 'project_task_updated', 38, 121, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(375, 29, '', '2023-04-03 18:06:40', '32', '', 'project_task_updated', 38, 129, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(376, 29, '', '2023-04-03 18:07:02', '32', '', 'project_task_updated', 38, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(377, 29, '', '2023-04-03 18:07:08', '32', '', 'project_task_updated', 38, 105, 0, 0, 0, 0, 0, 0, 0, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(378, 29, '', '2023-04-03 18:07:09', '32', '', 'project_task_updated', 38, 106, 0, 0, 0, 0, 0, 0, 0, 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(379, 29, '', '2023-04-03 18:07:10', '32', '', 'project_task_updated', 38, 107, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(380, 29, '', '2023-04-03 18:07:11', '32', '', 'project_task_updated', 38, 108, 0, 0, 0, 0, 0, 0, 0, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(381, 29, '', '2023-04-03 18:07:12', '32', '', 'project_task_updated', 38, 109, 0, 0, 0, 0, 0, 0, 0, 306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(382, 29, '', '2023-04-03 18:07:13', '32', '', 'project_task_updated', 38, 110, 0, 0, 0, 0, 0, 0, 0, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(383, 29, '', '2023-04-03 18:07:14', '32', '', 'project_task_updated', 38, 112, 0, 0, 0, 0, 0, 0, 0, 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(384, 29, '', '2023-04-03 18:07:15', '32', '', 'project_task_updated', 38, 113, 0, 0, 0, 0, 0, 0, 0, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(385, 29, '', '2023-04-03 18:07:16', '32', '', 'project_task_updated', 38, 129, 0, 0, 0, 0, 0, 0, 0, 310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(386, 29, '', '2023-04-03 18:07:17', '32', '', 'project_task_updated', 38, 121, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(387, 29, '', '2023-04-03 18:07:31', '32', '', 'project_task_updated', 38, 105, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(388, 29, '', '2023-04-03 18:07:41', '32', '', 'project_task_updated', 38, 106, 0, 0, 0, 0, 0, 0, 0, 313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(389, 29, '', '2023-04-03 18:07:55', '32', '', 'project_task_updated', 38, 107, 0, 0, 0, 0, 0, 0, 0, 314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(390, 29, '', '2023-04-03 18:27:44', '32', '', 'project_task_updated', 38, 109, 0, 0, 0, 0, 0, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(391, 29, '', '2023-04-03 18:27:46', '32', '', 'project_task_updated', 38, 109, 0, 0, 0, 0, 0, 0, 0, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(392, 29, '', '2023-04-03 18:27:50', '32', '', 'project_task_updated', 38, 110, 0, 0, 0, 0, 0, 0, 0, 317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(393, 29, '', '2023-04-03 18:28:01', '32', '', 'project_task_updated', 38, 112, 0, 0, 0, 0, 0, 0, 0, 318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(394, 29, '', '2023-04-03 18:28:09', '32', '', 'project_task_updated', 38, 113, 0, 0, 0, 0, 0, 0, 0, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(395, 29, '', '2023-04-03 18:28:16', '32', '', 'project_task_updated', 38, 121, 0, 0, 0, 0, 0, 0, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(396, 29, '', '2023-04-03 18:28:31', '32', '', 'project_task_updated', 38, 129, 0, 0, 0, 0, 0, 0, 0, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(397, 29, '', '2023-04-03 18:30:29', '32', '', 'project_task_updated', 38, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(398, 29, '', '2023-04-03 18:30:49', '32', '', 'project_task_updated', 38, 108, 0, 0, 0, 0, 0, 0, 0, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(399, 29, '', '2023-04-03 18:31:43', '32', '', 'project_task_updated', 38, 120, 0, 0, 0, 0, 0, 0, 0, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(400, 29, '', '2023-04-03 19:28:38', '32', '', 'project_task_updated', 38, 114, 0, 0, 0, 0, 0, 0, 0, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 29, '', '2023-04-03 19:30:19', '32', '', 'project_task_updated', 38, 114, 0, 0, 0, 0, 0, 0, 0, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(402, 29, '', '2023-04-03 19:30:31', '32', '', 'project_task_updated', 38, 115, 0, 0, 0, 0, 0, 0, 0, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(403, 29, '', '2023-04-03 19:30:44', '32', '', 'project_task_updated', 38, 116, 0, 0, 0, 0, 0, 0, 0, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(404, 29, '', '2023-04-03 19:30:55', '32', '', 'project_task_updated', 38, 117, 0, 0, 0, 0, 0, 0, 0, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(405, 29, '', '2023-04-03 19:31:02', '32', '', 'project_task_updated', 38, 118, 0, 0, 0, 0, 0, 0, 0, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(406, 29, '', '2023-04-03 19:31:14', '32', '', 'project_task_updated', 38, 119, 0, 0, 0, 0, 0, 0, 0, 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(407, 29, '', '2023-04-03 19:32:51', '32', '', 'project_task_updated', 38, 114, 0, 0, 0, 0, 0, 0, 0, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(408, 29, '', '2023-04-03 19:39:52', '32', '', 'project_task_commented', 38, 108, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(409, 29, '', '2023-04-03 19:48:41', '32', '', 'project_task_commented', 38, 107, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(410, 29, '', '2023-04-03 19:52:23', '1', '', 'project_task_created', 38, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(411, 29, '', '2023-04-03 19:52:58', '', '', 'project_task_commented', 38, 130, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(412, 29, '', '2023-04-04 16:00:54', '1,36,41', '', 'project_member_deleted', 31, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(413, 29, '', '2023-04-04 16:00:58', '1,36', '', 'project_member_deleted', 31, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(414, 29, '', '2023-04-04 16:01:30', '1,32,36', '', 'project_member_added', 31, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(415, 29, '', '2023-04-04 16:03:30', '1', '', 'project_task_created', 31, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(416, 29, '', '2023-04-04 16:03:35', '', '', 'project_task_deleted', 31, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(417, 29, '', '2023-04-04 16:03:59', '1', ',1', 'project_task_created', 31, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(418, 29, '', '2023-04-04 16:04:13', '1', '', 'project_task_created', 31, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(419, 29, '', '2023-04-04 16:04:48', '1', '', 'project_task_created', 31, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(420, 29, '', '2023-04-04 16:05:22', '1', ',1', 'project_task_created', 31, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 29, '', '2023-04-04 16:05:27', '', '', 'project_task_deleted', 31, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(422, 29, '', '2023-04-04 16:05:34', '1', '', 'project_task_created', 31, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(423, 29, '', '2023-04-04 16:06:51', '', '', 'project_task_deleted', 31, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(424, 29, '', '2023-04-04 16:11:25', '1', '', 'project_task_created', 31, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(425, 29, '', '2023-04-04 16:13:36', '1', '', 'project_task_created', 31, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(426, 29, '', '2023-04-04 16:17:22', '', '', 'project_task_updated', 31, 137, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(427, 29, '', '2023-04-04 16:18:10', '', '', 'project_task_updated', 31, 138, 0, 0, 0, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(428, 29, '', '2023-04-04 16:19:43', '1', '', 'project_task_created', 31, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(429, 29, '', '2023-04-04 16:24:24', '1', '', 'project_task_created', 31, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(430, 29, '', '2023-04-04 16:25:38', '', '', 'project_task_updated', 31, 139, 0, 0, 0, 0, 0, 0, 0, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(431, 29, '', '2023-04-04 16:35:34', '1', '', 'project_task_created', 31, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(432, 29, '', '2023-04-04 16:37:29', '1', '', 'project_task_created', 31, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(433, 29, '', '2023-04-04 16:38:19', '1', '', 'project_task_created', 31, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(434, 29, '', '2023-04-04 16:38:28', '', '', 'project_task_updated', 31, 142, 0, 0, 0, 0, 0, 0, 0, 357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 29, '', '2023-04-04 16:38:43', '', '', 'project_task_updated', 31, 141, 0, 0, 0, 0, 0, 0, 0, 358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(436, 29, '', '2023-04-04 16:38:56', '', '', 'project_task_updated', 31, 140, 0, 0, 0, 0, 0, 0, 0, 359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(437, 29, '', '2023-04-04 16:39:11', '', '', 'project_task_updated', 31, 139, 0, 0, 0, 0, 0, 0, 0, 360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(438, 29, '', '2023-04-04 16:39:23', '', '', 'project_task_updated', 31, 138, 0, 0, 0, 0, 0, 0, 0, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(439, 29, '', '2023-04-04 16:41:33', '1', '', 'project_task_created', 31, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(440, 29, '', '2023-04-04 16:42:00', '1', '', 'project_task_created', 31, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(441, 29, '', '2023-04-04 16:42:30', '1', '', 'project_task_created', 31, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, 29, '', '2023-04-04 16:43:26', '1', '', 'project_task_created', 31, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, 29, '', '2023-04-04 17:57:29', '1', '', 'project_task_created', 31, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, 29, '', '2023-04-04 19:29:37', '32', '', 'project_task_commented', 38, 118, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445, 29, '', '2023-04-04 19:30:35', '32', '', 'project_task_commented', 38, 115, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(446, 29, '', '2023-04-04 19:35:00', '32', '', 'project_task_updated', 38, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(447, 29, '', '2023-04-04 19:35:13', '32', '', 'project_task_updated', 38, 115, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(448, 29, '', '2023-04-04 19:35:22', '32', '', 'project_task_updated', 38, 116, 0, 0, 0, 0, 0, 0, 0, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 29, '', '2023-04-04 19:35:31', '32', '', 'project_task_updated', 38, 117, 0, 0, 0, 0, 0, 0, 0, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 29, '', '2023-04-04 19:35:39', '32', '', 'project_task_updated', 38, 118, 0, 0, 0, 0, 0, 0, 0, 372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(451, 29, '', '2023-04-04 19:35:47', '32', '', 'project_task_updated', 38, 119, 0, 0, 0, 0, 0, 0, 0, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT 0,
  `enable_web` int(1) NOT NULL DEFAULT 0,
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, '', '', '', 32, 0),
(33, 'estimate_sent', 'estimate', 0, 0, '', '', '', 33, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 0, 0, '', '', '', 39, 0),
(40, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, '', '', '', 22, 0),
(41, 'new_announcement_created', 'announcement', 0, 0, '', '', 'recipient', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 0, '', '', '', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 0, '', '', '', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, '', '', '', 22, 0),
(45, 'project_completed', 'project', 0, 0, '', '', '', 2, 0),
(46, 'lead_created', 'lead', 0, 0, '', '', '', 21, 0),
(47, 'client_created_from_lead', 'lead', 0, 0, '', '', '', 21, 0),
(48, 'project_task_deadline_pre_reminder', 'project', 0, 1, '', '', 'task_assignee', 20, 0),
(49, 'project_task_reminder_on_the_day_of_deadline', 'project', 0, 1, '', '', 'task_assignee', 20, 0),
(50, 'project_task_deadline_overdue_reminder', 'project', 0, 1, '', '', 'task_assignee', 20, 0),
(51, 'recurring_task_created_via_cron_job', 'project', 0, 1, '', '', 'project_members,task_assignee', 20, 0),
(52, 'calendar_event_modified', 'event', 0, 0, '', '', '', 39, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT 0,
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_payment_amount` double NOT NULL DEFAULT 0,
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 1, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:107:\"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\";s:15:\"publishable_key\";s:107:\"pk_live_51JhLKDBoXjSKn6FqMK8T9wGVnX7qNubKdPYxlPzGsLABQyV1L1XI7N16HKLHRvXw9cyilLnT7iB0TFpHCdmEpMS800qHF4XDi2\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 1, '2021-10-07 19:53:44', 'Testing posts', 0, '', 'a:0:{}', 1),
(2, 1, '2021-10-07 19:53:53', 'done', 1, '', 'a:0:{}', 0),
(3, 19, '2022-07-14 15:38:02', 'Lets go team\n50k!!', 0, '', 'a:0:{}', 1),
(4, 29, '2023-03-30 16:09:33', 'Testing', 0, '', 'a:0:{}', 1),
(5, 29, '2023-03-30 16:09:44', 'easdadasdsad', 4, '', 'a:0:{}', 0),
(6, 29, '2023-03-30 16:09:49', 'asdadd', 3, '', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `estimate_id`, `deleted`) VALUES
(1, 'Logo Design', 'Client is looking for a Car Rental Business Logo', '2021-10-06', '2021-10-09', 2, '2021-10-06', 4, 'open', '', 0, '', 0, 1),
(2, 'Web Design', '', NULL, NULL, 2, '2021-10-06', 4, 'open', '', 0, '', 0, 1),
(3, 'Website', 'asdasd', '2022-05-30', '2022-06-16', 3, '2022-05-30', 1, 'open', 'asd,asdad', 200, '', 0, 1),
(4, 'Zipporaa', '', '2022-05-31', '2022-06-07', 4, '2022-05-30', 1, 'open', 'WooCommerce', 200, '', 0, 1),
(5, 'Teresa Langlois - 0953 - Website - Test', '', NULL, NULL, 6, '2022-05-30', 7, 'open', '', 0, '', 0, 1),
(6, 'TEst project', 'asdasd', '2022-07-13', '2022-07-26', 11, '2022-07-13', 1, 'open', '', 0, '', 0, 1),
(7, 'Sutsa Print', '', '2022-07-01', '2022-08-31', 11, '2022-07-13', 1, 'open', '', 0, '', 0, 1),
(8, 'Test', 'Test', '2022-07-13', '2022-07-16', 12, '2022-07-13', 17, 'open', '', 50, '', 0, 1),
(9, 'New Project', '', '2022-07-14', '2022-07-16', 11, '2022-07-13', 1, 'open', '', 0, '', 0, 1),
(10, 'ZIPPORAA', '', '2022-07-14', '2022-08-03', 12, '2022-07-13', 1, 'open', '', 0, '', 0, 1),
(11, 'NEWTEST', '', '2022-07-14', '2022-07-16', 12, '2022-07-13', 31, 'open', '', 0, '', 0, 1),
(12, 'Sporkit', '', '2021-07-06', NULL, 14, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(13, 'Civic Eye', '', '2021-07-05', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(14, 'Polykon', '', NULL, NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(15, 'In Line', '', '2021-11-22', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(16, 'Blade Ryderz', '', '2021-12-01', NULL, 15, '2022-11-28', 1, 'open', '', 0, ',:1:', 0, 0),
(17, 'Xuma', '', '2021-12-16', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(18, 'The Pot', '', '2022-08-12', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(19, 'Medicor Health', '', '2021-12-17', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(20, 'PDM Training Systems', '', '2022-03-23', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(21, 'Safe Word', '', NULL, NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(22, 'Inside the Company', '', '2022-01-24', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(23, 'New Game', '', '2022-06-16', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(24, 'CCM Radio', '', '2022-07-13', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(25, 'Hero Self', '', '2022-08-22', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(26, 'Book a Party', '', '2022-07-15', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(27, 'VFC - Kaino', '', '2022-09-02', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(28, 'Hubble', '', '2022-09-19', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(29, 'Bloodlines', '', '2022-09-24', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(30, 'Get Protein', '', '2022-11-16', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(31, 'Fittness Exchange ', 'The application offers fitness trainers and users to connect. Both parties will fill out a required form that will have all the necessary questions. The user has a map to be able to view all the trainers near him. Once he connects with the trainer, the trainer is able to view the user’s request and get in touch with him through the in app chatting feature which will be available no matter what. The trainer edits the prices by himself and the location is decided mutually for the service to happen. There will also be a gym profile where the user can view all the gym trainers affiliated with that specific gym.\n\nInitial Document : https://docs.google.com/document/d/1aEa44FR2DQT1pU7QHFdijwe5pJMsgTj_WnH3WpDdWgg/edit#\n\nScreen Designs : https://xd.adobe.com/view/0aa58fb5-7c6e-4e6e-a4c6-b937b3320fe8-5ff6/  ', '2023-03-14', '2023-05-24', 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(32, 'Keepsake', '', '2022-11-04', NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(33, 'Quicky', 'Ride Booking Application', NULL, NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(34, 'Divvi', '', NULL, NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 0),
(35, 'Muslim Community', '', NULL, NULL, 15, '2022-11-28', 1, 'open', '', 0, '', 0, 1),
(36, 'Metro Soccer NY', '', '2022-11-30', NULL, 15, '2022-11-30', 1, 'open', '', 0, '', 0, 0),
(37, 'BRED WINNER FITNESS', '', NULL, NULL, 15, '2022-12-01', 29, 'open', '', 0, '', 0, 0),
(38, 'Bait Okhti', 'This application is being developed for Muslim Women where they can interact with other. They can post, make friends, hold a meeting and much more.\n\nDocumentation of project is attached below\n\nDocument : https://docs.google.com/document/d/1-xKfGnafhIMZKEVfIXJH9cTY6AaP44nH6LoPtNzn91Y/edit?usp=sharing\n\nXD Design : https://xd.adobe.com/view/3e3955e2-6dba-4c00-9c9d-0b00c902784d-6b6a/\n\nAPK link : https://install.appcenter.ms/users/kurt-gologonow.com/apps/bait-okhti/distribution_groups/public', '2022-12-02', '2023-04-19', 15, '2022-12-01', 29, 'open', '', 0, '', 0, 0),
(39, 'Website', '', '2022-12-02', '2023-01-07', 16, '2022-12-01', 1, 'open', '', 15000, '', 0, 1),
(40, 'WEB', '', '2022-12-02', '2023-01-05', 17, '2022-12-02', 1, 'open', '', 1500, '', 0, 1),
(41, 'In-line (Job Portal)', '', NULL, NULL, 15, '2023-01-30', 29, 'open', '', 0, '', 0, 0),
(42, 'Food Baby', '', NULL, NULL, 15, '2023-01-31', 29, 'open', '', 0, '', 0, 0),
(43, 'Testing project', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2023-03-30', '2023-04-27', 18, '2023-03-30', 29, 'open', '', 10000, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `customer_feedback_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_comments`
--

INSERT INTO `project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 1, '2022-05-30 17:57:25', 'asbdkjabsd', 3, 0, 3, 0, 0, 'a:0:{}', 1),
(2, 1, '2022-05-30 17:58:43', 'Jdjfndf', 3, 0, 3, 0, 0, 'a:0:{}', 1),
(3, 1, '2022-07-13 18:54:50', 'Product Images required', 7, 0, 8, 0, 0, 'a:0:{}', 1),
(4, 1, '2022-07-13 18:55:49', 'P2', 7, 0, 8, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:49:\"project_comment_file62cf1535c9215-75537402040.jpg\";s:9:\"file_size\";s:5:\"45917\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(5, 1, '2022-11-30 18:47:37', 'fcsdfsdf', 30, 0, 10, 0, 0, 'a:0:{}', 0),
(6, 29, '2022-11-30 21:31:41', 'Discussed screens.', 36, 0, 11, 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:52:\"project_comment_file6387cbbd6bcde-1669843806765.JPEG\";s:9:\"file_size\";s:5:\"34962\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:52:\"project_comment_file6387cbbd6bfb2-1669843806790.JPEG\";s:9:\"file_size\";s:5:\"42992\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(7, 29, '2022-11-30 21:32:55', 'Splash screen will also be there @[Yousuf UI UX :41] ', 36, 0, 11, 0, 0, 'a:0:{}', 0),
(8, 29, '2022-12-01 15:09:01', 'Application and admin panel is completed from our end, now it is stopped from the client side due to the issues of Radio Platform that client is using.', 24, 0, 0, 0, 0, 'a:0:{}', 1),
(9, 29, '2022-12-01 17:30:36', 'Pricing formula needs to be confirmed from client side, already conveyed query to Azfi', 33, 0, 0, 0, 0, 'a:0:{}', 0),
(10, 29, '2022-12-01 17:31:05', 'AWS is required', 33, 0, 0, 0, 0, 'a:0:{}', 0),
(11, 1, '2022-12-12 21:15:19', 'https://xd.adobe.com/view/3e3955e2-6dba-4c00-9c9d-0b00c902784d-6b6a/screen/414b6887-4754-43a4-8d77-dfe30e3626e3/', 38, 0, 36, 0, 0, 'a:0:{}', 0),
(12, 29, '2023-01-31 18:37:51', '1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n2. Have the option to Enable Notifications\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n4. Send confirmation of booking through Transmissions (as well as Email)\na. This incentivizes to have people to communicate through the app\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy\n', 38, 0, 0, 0, 0, 'a:0:{}', 1),
(13, 29, '2023-01-31 18:40:11', '1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n(Design)\n\n2. Have the option to Enable Notifications\n\n(Design)\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n(Design)\n\n4. Send confirmation of booking through Transmissions (as well as Email)\n\n(Design and development)\n\na. This incentivizes to have people to communicate through the app\n\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy\n', 38, 0, 0, 0, 0, 'a:0:{}', 1),
(14, 29, '2023-01-31 18:42:36', 'Changes from client\n\n1. In the services feature of the ARTIST, there should be a Customizable service feature\na. This means that when the USER wants to send a Custom services request to the ARTIST, they have the opportunity to do so\nb. For example, if a DJ only provides certain services like playing house music but someone wants them for another genre, the USER can send a custom request with details listing what service they would like from the ARTIST\ni. Or they could simply be requesting for a smaller price\nc. The ARTIST will still have the same abilities to accept or decline the request\n\n(Design)\n\n2. Have the option to Enable Notifications\n\n(Design)\n\n3. Pull user data for receipts or have the ability to do so on the app\na. Potential tax purposes\n\n(Design)\n\n4. Send confirmation of booking through Transmissions (as well as Email)\n\n(Design and development)\n\na. This incentivizes to have people to communicate through the app\n\n\n5. MUST HAVE – Remove contact information from being available for both parties\na. Both USERS and ARTISTS will still need to have contact information so they can remain traceable and available for contact by HUBBLE\ni. Also for login purposes\nb. However, we want to make it harder for the USER/ARTIST to get off the app and conduct business away from HUBBLE\ni. People cling to convenience – if they see a number or email, they might be tempted to just work directly and contact through text/social media\n1. We want to eliminate this possibility\nc. This will be updated in Privacy Policy', 28, 0, 0, 0, 0, 'a:0:{}', 1),
(15, 29, '2023-01-31 18:45:34', 'Please find the additional changes for the Food Baby application below:\n \nIn the logo, fill the white spaces with the peach color and enlarge that baby\'s face.\nThe dates for the app there shouldn\'t be any before 2022 but more future dates.\nChange the name from “Grocery List” to “List”\nEnlarge the font a bit more on everything\nAdd the provided list to the food item list and make sure that the names of the food don’t get repeated at all. (Waffle and Tilefish. They can remove the \"Tilefish from the Gulf of Mexico\" and keep the Tilefish (Gulf of Mexico) but make sure they capitalize the G in Gulf)\n', 42, 0, 0, 0, 0, 'a:0:{}', 0),
(16, 1, '2023-01-31 18:57:26', 'Test', 38, 0, 0, 0, 0, 'a:0:{}', 1),
(17, 29, '2023-03-09 21:58:45', 'Deletion test', 38, 0, 0, 0, 0, 'a:0:{}', 1),
(18, 29, '2023-03-09 21:58:53', 'ooop', 38, 17, 0, 0, 0, 'a:0:{}', 0),
(19, 1, '2023-03-10 17:08:09', 'Test', 32, 0, 21, 0, 0, 'a:0:{}', 1),
(20, 1, '2023-03-10 17:12:14', 'Test', 38, 0, 0, 0, 0, 'a:0:{}', 1),
(21, 1, '2023-03-10 17:12:24', 'Test2', 38, 20, 0, 0, 0, 'a:0:{}', 1),
(22, 29, '2023-03-13 19:08:37', 'Revisions in designs are in progress \n\nArtist flow', 28, 0, 0, 0, 0, 'a:0:{}', 0),
(23, 29, '2023-03-30 17:35:20', 'dasdas', 43, 0, 0, 1, 0, 'a:0:{}', 1),
(24, 1, '2023-03-30 17:41:47', 'Test', 32, 0, 30, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:43:\"project_comment_file6425c9dbeafd7-SARAH.jpg\";s:9:\"file_size\";s:4:\"9083\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(25, 29, '2023-04-03 19:39:52', 'user is unable to change interests', 38, 0, 108, 0, 0, 'a:0:{}', 0),
(26, 29, '2023-04-03 19:48:41', 'asdasdad', 38, 0, 107, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:74:\"project_comment_file642b2d994edb1-9B0727F7-8AB4-4401-9508-E2D966D147C9.jpg\";s:9:\"file_size\";s:6:\"114440\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(27, 29, '2023-04-03 19:52:57', '@[Aizaz Ahmed please check wireframes are completed from my end \n\nhttps://portal.gologonow.org/index.php/projects/view/38', 38, 0, 130, 0, 0, 'a:0:{}', 0),
(28, 29, '2023-04-04 19:29:36', 'Rejected meetings will be in history', 38, 0, 118, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:52:\"project_comment_file642c7aa0e0cc9-1680636556913.JPEG\";s:9:\"file_size\";s:5:\"41838\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(29, 29, '2023-04-04 19:30:35', 'Rejected request will be disposed will not be saved into history', 38, 0, 115, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:52:\"project_comment_file642c7adb6a671-1680636556913.JPEG\";s:9:\"file_size\";s:5:\"41838\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_files`
--

INSERT INTO `project_files` (`id`, `file_name`, `file_id`, `service_type`, `description`, `file_size`, `created_at`, `project_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file6425c81a0f0fc-D2124667-3B7A-44B2-B8CD-4485C9F319DA.jpg', '', '', '', 121172, '2023-03-30 17:34:18', 43, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 4, 1, 1, 0),
(2, 3, 1, 0, 0),
(3, 1, 1, 0, 0),
(4, 4, 2, 1, 0),
(5, 1, 3, 1, 0),
(6, 1, 4, 1, 0),
(7, 7, 5, 1, 0),
(8, 1, 6, 1, 0),
(9, 1, 7, 1, 0),
(10, 17, 8, 1, 0),
(11, 1, 9, 1, 0),
(12, 1, 10, 1, 0),
(13, 31, 11, 1, 0),
(14, 37, 10, 0, 0),
(15, 1, 12, 1, 0),
(16, 1, 13, 1, 0),
(17, 1, 14, 1, 0),
(18, 1, 15, 1, 0),
(19, 1, 16, 1, 0),
(20, 1, 17, 1, 0),
(21, 1, 18, 1, 0),
(22, 1, 19, 1, 0),
(23, 1, 20, 1, 0),
(24, 1, 21, 1, 0),
(25, 1, 22, 1, 0),
(26, 1, 23, 1, 0),
(27, 1, 24, 1, 0),
(28, 1, 25, 1, 0),
(29, 1, 26, 1, 0),
(30, 1, 27, 1, 0),
(31, 1, 28, 1, 0),
(32, 1, 29, 1, 0),
(33, 1, 30, 1, 0),
(34, 1, 31, 1, 0),
(35, 1, 32, 1, 0),
(36, 1, 33, 1, 0),
(37, 1, 34, 1, 0),
(38, 1, 35, 1, 0),
(39, 36, 17, 0, 0),
(40, 45, 17, 0, 0),
(41, 47, 17, 0, 0),
(42, 43, 17, 0, 0),
(43, 32, 27, 0, 0),
(44, 36, 27, 0, 0),
(45, 49, 27, 0, 0),
(46, 36, 18, 0, 0),
(47, 44, 18, 0, 0),
(48, 36, 33, 0, 1),
(49, 43, 33, 0, 0),
(50, 47, 33, 0, 0),
(51, 36, 14, 0, 0),
(52, 47, 14, 0, 0),
(53, 43, 14, 0, 0),
(54, 36, 20, 0, 0),
(55, 48, 20, 0, 0),
(56, 1, 36, 1, 0),
(57, 41, 36, 0, 0),
(58, 29, 36, 0, 0),
(59, 36, 36, 0, 0),
(60, 21, 36, 0, 0),
(61, 17, 24, 0, 0),
(62, 48, 24, 0, 0),
(63, 29, 24, 0, 0),
(64, 41, 35, 0, 0),
(65, 36, 35, 0, 0),
(66, 29, 35, 0, 0),
(67, 25, 35, 0, 0),
(68, 21, 35, 0, 0),
(69, 36, 30, 0, 0),
(70, 36, 19, 0, 0),
(71, 36, 16, 0, 0),
(72, 29, 31, 0, 0),
(73, 29, 33, 0, 0),
(74, 29, 37, 1, 0),
(75, 45, 37, 0, 0),
(76, 1, 37, 0, 0),
(77, 36, 37, 0, 0),
(78, 29, 17, 0, 0),
(79, 22, 17, 0, 0),
(80, 36, 32, 0, 0),
(81, 29, 32, 0, 0),
(82, 48, 32, 0, 0),
(83, 41, 32, 0, 0),
(84, 29, 38, 1, 0),
(85, 1, 38, 0, 0),
(86, 32, 38, 0, 0),
(87, 1, 39, 1, 0),
(88, 26, 39, 0, 0),
(89, 36, 38, 0, 0),
(90, 41, 38, 0, 0),
(91, 29, 30, 0, 0),
(92, 31, 30, 0, 0),
(93, 48, 30, 0, 0),
(94, 41, 30, 0, 0),
(95, 1, 40, 1, 0),
(96, 45, 32, 0, 0),
(97, 48, 38, 0, 0),
(98, 36, 31, 0, 0),
(99, 41, 31, 0, 1),
(100, 48, 31, 0, 1),
(101, 36, 29, 0, 0),
(102, 29, 29, 0, 0),
(103, 48, 29, 0, 0),
(104, 41, 29, 0, 0),
(105, 29, 27, 0, 0),
(106, 41, 27, 0, 0),
(107, 36, 25, 0, 0),
(108, 29, 25, 0, 0),
(109, 41, 25, 0, 0),
(110, 47, 25, 0, 0),
(111, 45, 25, 0, 0),
(112, 29, 41, 1, 0),
(113, 29, 42, 1, 0),
(114, 21, 37, 0, 0),
(115, 29, 43, 1, 0),
(116, 32, 31, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_settings`
--

CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_time`
--

INSERT INTO `project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `status`, `note`, `task_id`, `deleted`) VALUES
(1, 1, 4, '2021-10-06 21:15:11', NULL, 'open', NULL, 0, 0),
(2, 30, 1, '2022-12-02 17:37:27', '2022-12-02 17:37:38', 'logged', '', 0, 0),
(3, 38, 29, '2023-01-31 18:32:53', '2023-01-31 18:33:12', 'logged', '', 0, 0),
(4, 38, 29, '2023-04-03 17:15:15', '2023-04-03 20:12:49', 'logged', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Employee', NULL, 1),
(2, 'Clients', NULL, 1),
(3, 'Admin', NULL, 1),
(4, 'Accounts / Finance', NULL, 1),
(5, 'Account Managers', NULL, 1),
(6, 'IT', NULL, 1),
(7, 'Sales', NULL, 1),
(8, 'HR', NULL, 1),
(9, 'Account Manager', 'a:36:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:3:\"all\";s:4:\"lead\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;}', 0),
(10, 'Production', 'a:36:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";s:1:\"1\";s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";s:1:\"1\";s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;}', 0),
(11, 'Designers', NULL, 1),
(12, 'Sale', NULL, 1),
(13, 'UI UX', NULL, 1),
(14, 'Content Writer', NULL, 1),
(15, 'HR', 'a:36:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";s:1:\"1\";s:28:\"can_delete_leave_application\";N;}', 0),
(16, 'IT', NULL, 1),
(17, 'IT', 'a:36:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";s:1:\"1\";s:28:\"can_delete_leave_application\";N;}', 0),
(18, 'Sales', 'a:36:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:3:\"all\";s:4:\"lead\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;}', 0),
(19, 'Head of Department', 'a:36:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";s:1:\"1\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,doc', 'app', 0),
('allow_partial_invoice_payment_from_clients', '1', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', 'Shazar CRM', 'app', 0),
('client_can_add_project_files', '', 'app', 0),
('client_can_comment_on_files', '', 'app', 0),
('client_can_comment_on_tasks', '', 'app', 0),
('client_can_create_projects', '', 'app', 0),
('client_can_create_tasks', '', 'app', 0),
('client_can_edit_tasks', '', 'app', 0),
('client_can_view_activity', '1', 'app', 0),
('client_can_view_gantt', '1', 'app', 0),
('client_can_view_milestones', '1', 'app', 0),
('client_can_view_overview', '1', 'app', 0),
('client_can_view_project_files', '1', 'app', 0),
('client_can_view_tasks', '1', 'app', 0),
('client_message_own_contacts', '', 'app', 0),
('client_message_users', '', 'app', 0),
('company_address', '', 'app', 0),
('company_email', 'abdullah@four-fox.com', 'app', 0),
('company_name', 'Gologonow', 'app', 0),
('company_phone', '+1 (888) 910 1613', 'app', 0),
('company_vat_number', '', 'app', 0),
('company_website', 'https://gologonow.com/', 'app', 0),
('currency_position', 'left', 'app', 0),
('currency_symbol', '$', 'app', 0),
('date_format', 'd-m-Y', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_currency', 'USD', 'app', 0),
('default_due_date_after_billing_date', '', 'app', 0),
('disable_client_login', '', 'app', 0),
('disable_client_signup', '', 'app', 0),
('email_protocol', 'smtp', 'app', 0),
('email_sent_from_address', 'support@gologonow.co', 'app', 0),
('email_sent_from_name', 'Gologonow - CRM', 'app', 0),
('email_smtp_host', 'mail.gologonow.co', 'app', 0),
('email_smtp_pass', '1IXCWvqs@9rh', 'app', 0),
('email_smtp_port', '465', 'app', 0),
('email_smtp_security_type', 'ssl', 'app', 0),
('email_smtp_user', 'support@gologonow.co', 'app', 0),
('enable_push_notification', '1', 'app', 0),
('enable_recurring_option_for_tasks', '1', 'app', 0),
('enable_rich_text_editor', '0', 'app', 0),
('estimate_color', '#ffaa17', 'app', 0),
('favicon', 'a:1:{s:9:\"file_name\";s:30:\"_file6478e2a18b916-favicon.png\";}', 'app', 0),
('first_day_of_week', '1', 'app', 0),
('hidden_client_menus', '', 'app', 0),
('initial_number_of_the_estimate', '2', 'app', 0),
('initial_number_of_the_invoice', '3', 'app', 0),
('invoice_color', '#ffaa17', 'app', 0),
('invoice_footer', '<p><br></p>', 'app', 0),
('invoice_logo', 'a:1:{s:9:\"file_name\";s:35:\"_file629513eb7c33e-invoice-logo.png\";}', 'app', 0),
('invoice_prefix', 'GLN-INVOICE #', 'app', 0),
('invoice_style', 'style_1', 'app', 0),
('item_purchase_code', '123456', 'app', 0),
('language', 'english', 'app', 0),
('module_announcement', '', 'app', 0),
('module_attendance', '', 'app', 0),
('module_chat', '', 'app', 0),
('module_estimate', '', 'app', 0),
('module_estimate_request', '', 'app', 0),
('module_event', '', 'app', 0),
('module_expense', '', 'app', 0),
('module_help', '', 'app', 0),
('module_invoice', '', 'app', 0),
('module_knowledge_base', '', 'app', 0),
('module_lead', '', 'app', 0),
('module_leave', '', 'app', 0),
('module_message', '', 'app', 0),
('module_note', '', 'app', 0),
('module_project_timesheet', '', 'app', 0),
('module_ticket', '', 'app', 0),
('module_timeline', '', 'app', 0),
('module_todo', '', 'app', 0),
('no_of_decimals', '2', 'app', 0),
('project_task_deadline_overdue_reminder', '1', 'app', 0),
('project_task_deadline_pre_reminder', '1', 'app', 0),
('project_task_reminder_on_the_day_of_deadline', '1', 'app', 0),
('pusher_app_id', '1262234', 'app', 0),
('pusher_cluster', 'ap1', 'app', 0),
('pusher_key', '30e16c324f92a2fddf82', 'app', 0),
('pusher_secret', 'b5b961614eab30c326e9', 'app', 0),
('rows_per_page', '10', 'app', 0),
('scrollbar', 'jquery', 'app', 0),
('send_bcc_to', '', 'app', 0),
('send_estimate_bcc_to', '', 'app', 0),
('send_invoice_due_after_reminder', '1', 'app', 0),
('send_invoice_due_pre_reminder', '2', 'app', 0),
('send_recurring_invoice_reminder_before_creation', '', 'app', 0),
('show_background_image_in_signin_page', 'no', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('signin_page_background', 'sigin-background-image.jpg', 'app', 0),
('site_logo', 'a:1:{s:9:\"file_name\";s:32:\"_file6478e2a18a2a4-site-logo.png\";}', 'app', 0),
('time_format', 'capital', 'app', 0),
('timezone', 'Asia/Karachi', 'app', 0),
('user_1_dashboard', '', 'user', 0),
('user_1_disable_push_notification', '0', 'user', 0),
('user_1_hidden_topbar_menus', '', 'user', 0),
('user_1_notification_sound_volume', '9', 'user', 0),
('user_1_personal_language', 'english', 'user', 0),
('user_10_dashboard', '', 'user', 0),
('user_11_dashboard', '', 'user', 0),
('user_17_dashboard', '', 'user', 0),
('user_18_dashboard', '', 'user', 0),
('user_19_dashboard', '', 'user', 0),
('user_20_dashboard', '', 'user', 0),
('user_21_dashboard', '', 'user', 0),
('user_22_dashboard', '', 'user', 0),
('user_23_dashboard', '', 'user', 0),
('user_24_dashboard', '', 'user', 0),
('user_25_dashboard', '', 'user', 0),
('user_26_dashboard', '', 'user', 0),
('user_27_dashboard', '', 'user', 0),
('user_28_dashboard', '', 'user', 0),
('user_29_dashboard', '', 'user', 0),
('user_3_dashboard', '', 'user', 0),
('user_30_dashboard', '', 'user', 0),
('user_31_dashboard', '', 'user', 0),
('user_34_dashboard', '', 'user', 0),
('user_35_dashboard', '', 'user', 0),
('user_37_dashboard', '', 'user', 0),
('user_4_dashboard', '', 'user', 0),
('user_5_dashboard', '', 'user', 0),
('user_51_dashboard', '', 'user', 0),
('user_7_dashboard', '', 'user', 0),
('user_8_dashboard', '', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `digg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tumblr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vine` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `facebook`, `twitter`, `linkedin`, `googleplus`, `digg`, `youtube`, `pinterest`, `instagram`, `github`, `tumblr`, `vine`, `deleted`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `recurring_task_id` int(11) NOT NULL DEFAULT 0,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `created_date` date NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `start_date`, `collaborators`, `sort`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `recurring_task_id`, `no_of_cycles_completed`, `created_date`, `next_recurring_date`, `reminder_date`, `ticket_id`, `deleted`) VALUES
(1, 'test', '', 1, 0, 0, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 0, '', 0, 0, 0, '2021-10-06', NULL, '0000-00-00', 0, 1),
(2, 'Create PSD', '', 1, 0, 3, '2021-10-07', '', 2, 'to_do', 3, '2021-10-06', '', 0, 0, 0, '', 0, 0, 0, '2021-10-06', NULL, '0000-00-00', 0, 1),
(3, 'Landing Page', '', 3, 0, 1, '2022-06-01', '', 3, 'to_do', 3, '2022-05-30', '', 10000000, 0, 0, '', 0, 0, 0, '2022-05-30', NULL, '0000-00-00', 0, 1),
(4, 'Landing Page', '', 4, 0, 1, '2022-06-02', '', 5, 'to_do', 6, '2022-05-31', '', 10000000, 0, 0, '', 0, 0, 0, '2022-05-30', NULL, '0000-00-00', 0, 1),
(5, 'Content', '', 4, 0, 1, '2022-06-04', '', 5, 'to_do', 5, '2022-05-31', '', 0, 0, 0, '', 0, 0, 0, '2022-05-30', NULL, '0000-00-00', 0, 1),
(6, 'Test', 'Test', 5, 0, 7, NULL, '', 1, 'to_do', 2, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-05-30', NULL, '0000-00-00', 0, 1),
(7, 'UI UX Design', 'asdasd', 6, 0, 1, '2022-07-14', '', 1, 'to_do', 8, '2022-07-13', '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-07-13', NULL, '0000-00-00', 0, 1),
(8, 'Product Uploading', 'Product work', 7, 0, 1, '2022-07-20', '', 1, 'to_do', 11, '2022-07-13', '', 0, 0, 1, 'months', 0, 0, 0, '2022-07-13', NULL, '0000-00-00', 0, 1),
(9, 'Test', 'Test', 8, 0, 17, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-07-13', NULL, '0000-00-00', 0, 1),
(10, 'UI UX', '', 30, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-11-30', NULL, '0000-00-00', 0, 0),
(11, 'UI UX Design', '6 Screens design', 36, 0, 41, '2022-12-02', '', 1, 'to_do', 3, '2022-12-01', '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-11-30', NULL, '0000-00-00', 0, 0),
(12, 'UI UX', '', 35, 0, 41, NULL, '', 1, 'to_do', 46, '2022-12-01', '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 1),
(13, 'Notifications', 'Notifications', 19, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(14, 'UI Minor Changes', '', 33, 0, 47, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(15, 'Vehicle changes', '', 33, 0, 43, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(16, 'Pricing changes', '', 33, 0, 43, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(17, 'changes in formula for price calculation', '', 33, 0, 43, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(18, 'Currency changes', '', 33, 0, 43, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(19, 'Individual Session Scheduling', '', 37, 0, 29, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(20, 'UI UX', '', 32, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 1),
(21, 'Alpha', '', 32, 0, 48, '2022-12-09', '', 1, 'to_do', 2, '2022-12-01', '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(22, 'UI UX', '', 32, 0, 41, '2022-12-01', '', 1, 'to_do', 3, '2022-11-01', '', 9999500, 0, 1, 'months', 0, 0, 0, '2022-12-01', NULL, '0000-00-00', 0, 0),
(23, 'UI UX', '', 38, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-12-02', NULL, '0000-00-00', 0, 0),
(24, 'BACKEND APIS', '', 38, 0, 32, '2022-12-30', '', 1, 'to_do', 2, '2022-12-02', '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-02', NULL, '0000-00-00', 0, 1),
(25, 'Alpha', '', 30, 0, 48, NULL, '', 1, 'to_do', 3, NULL, '', 10100000, 0, 1, 'months', 0, 0, 0, '2022-12-02', NULL, '0000-00-00', 0, 0),
(26, 'BACKEND APIS', '', 30, 0, 31, NULL, '', 1, 'to_do', 2, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-02', NULL, '0000-00-00', 0, 1),
(27, 'Backend Onboard', '', 32, 0, 45, '2022-12-23', '', 1, 'to_do', 2, '2022-12-08', '', 0, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 1),
(28, 'Signup/Login', '', 32, 0, 45, '2023-03-30', '', 1, 'to_do', 3, '2023-03-15', '', 10100000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(29, 'User Profile', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10200000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(30, 'Post', '', 32, 0, 45, NULL, '', 1, 'to_do', 47, NULL, '', 10000000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(31, 'Funeral Event', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10400000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(32, 'User Network', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10500000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(33, 'Search bar', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10600000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(34, 'Delete Option', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10700000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(35, 'Notifications', '', 32, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '', 10800000, 0, 1, 'months', 0, 0, 0, '2022-12-08', NULL, '0000-00-00', 0, 0),
(36, 'Alpha', '', 38, 0, 48, '2022-12-28', '', 1, 'to_do', 3, '2022-12-15', '', 10100000, 0, 1, 'months', 0, 0, 0, '2022-12-12', NULL, '0000-00-00', 0, 0),
(37, 'Sign up', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10000000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(38, 'Login', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10100000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(39, 'Forget Password', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10200000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(40, 'Post', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10300000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(41, 'Newsfeed', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10400000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(42, 'Chat', '', 38, 0, 32, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(43, 'Meetings / Schedule Meetings', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10500000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(44, 'Meetings History', '', 38, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '', 10600000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(45, 'Saved  Post', '', 38, 0, 32, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(46, 'Friends suggestions', '', 38, 0, 32, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(47, 'Search', '', 38, 0, 32, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(48, 'Notifications', '', 38, 0, 32, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(49, 'Map for meetings', '', 38, 0, 32, NULL, '', 1, 'to_do', 3, NULL, '', 10700000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(50, 'UI UX', '', 31, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(51, 'Alpha', '', 31, 0, 48, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(52, 'Sign up', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(53, 'Goal Form', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(54, 'Protein / Leucine Recommendation', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(55, 'Protein / Leucine Taken', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(56, 'Calendar / History', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(57, 'Protein / Leucine Comparison', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(58, 'Status Chart', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(59, 'Create Recipe', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(60, 'Intermittent Fasting Tracker', '', 30, 0, 31, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(61, 'Role Management', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(62, 'User Signup', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(63, 'Fitness Trainer Profile', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(64, 'Chatting', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(65, 'Rating Review', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(66, 'Payment', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(67, 'Trainer Signup', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(68, 'Trainer Dashborad', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(69, 'Request', '', 31, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 1),
(70, 'Alpha', '', 29, 0, 48, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(71, 'UI UX', '', 29, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(72, 'UI UX', '', 27, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(73, 'Alpha', '', 27, 0, 49, NULL, '', 1, 'to_do', 3, NULL, '', -428, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(74, 'Sign-up / Profiling', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(75, 'Login', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', -426, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(76, 'Request to book cleaning service', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(77, 'Payment', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(78, 'Jobs', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(79, 'Notifications', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(80, 'Chat', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(81, 'Referral Code', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(82, 'Rating & Reviews', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(83, 'Contractor Request', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(84, 'Junk Folder', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(85, 'In Progress', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(86, 'Account Ban', '', 27, 0, 32, NULL, '', 1, 'to_do', 2, NULL, '49', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(87, 'UI UX', '', 25, 0, 41, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(88, 'Alpha', '', 25, 0, 47, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(89, 'Sign up', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(90, 'Normal Profile', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(91, 'Alter Ego Profile', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(92, 'Post (Profile dependent)', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '45', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(93, 'Event (version dependent)', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(94, 'User Network (Profile dependent)', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(95, 'News Feed (version dependent)', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(96, 'Notifications (Profile dependent)', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(97, 'Chatting', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '45', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(98, 'Vault', '', 25, 0, 45, NULL, '', 1, 'to_do', 2, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(99, 'Darkest Secrets', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(100, 'Private Page', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(101, 'Create Group', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(102, 'Videos', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(103, 'Saved Posts', '', 25, 0, 45, NULL, '', 1, 'to_do', 1, NULL, '47', 0, 0, 1, 'months', 0, 0, 0, '2023-01-02', NULL, '0000-00-00', 0, 0),
(104, '1- 1 chat', 'asdasdsaddasdasdaddad', 43, 0, 29, NULL, '', 1, 'to_do', 3, '2023-03-31', '', 0, 0, 1, 'months', 0, 0, 0, '2023-03-30', NULL, '0000-00-00', 0, 1),
(105, 'Login', '', 38, 1, 32, '2023-03-27', '', 1, 'to_do', 3, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(106, 'Sign up', '', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(107, 'Create Post', 'Create post :\n \n- Text only\n- Text with coloured background\n- Text (coloured background) with checkin\n-  Text (coloured background) with tag friend\n- Text (coloured background) with tag friend & checkin\n-  Image only\n- Image with text\n- Image with tag friend\n- Image with checkin\n- Text, image with tag friend\n- Text, image with checkin\n- Text,image, checkin with tag friend\n', 38, 1, 32, '2023-03-28', '', 5, 'to_do', 3, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(108, 'Edit Profile', '', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(109, 'Find friends', 'Find friends section will have list of suggested users based on mutual connection & interests', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(110, 'Newsfeed', 'On newsfeed / home user will be able to see the posts of his/her connections. (friends)', 38, 0, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(111, 'Edit Post', 'Every details can be edited', 38, 0, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(112, 'Add friend', 'Add friend task will have sub tasks which are necessary\n\n- send friend request\n- cancel friend request\n- hide from the suggested user list (if exists)', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(113, 'Request', 'Request will have multiple sub tasks :\n\n- get request\n- accept request : if user accepts the request, request will disappear from requests and user will be added as friend\n- reject request : on rejection of request will dispose the request and on sender side cancel request will be changed to add as friend again\n', 38, 0, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(114, 'Create meeting / create meeting request', 'Creation of meeting should have :\n\n1 - Latlng of place where meeting is going to held\n2 -  friend with whom user is going have meeting\n3 - Valid date/time of meeting : other user / friend with home meeting is going to held should not have any meeting on the same date time\n4 - Meeting notes (optional)\n', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(115, 'Meeting request', 'Meeting request will have following things\n\n-  Accept request : meeting will be scheduled & that will slot will be occupied for both users\n- Reject request : meeting request will be disposed.', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(116, 'Edit meeting', 'Every details of meeting can be edit', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(117, 'Cancel meeting ', 'User can cancel meeting by providing a valid reason for cancellation\n\nMeeting will be cancelled on both user\'s end', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '32,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(118, 'Meeting', 'User can the status from scheduled to mark arrived once users is reached to the location so other user will be able to view and notified\n\nThen user can not save meeting / complete meeting until other user arrives at the location and change the status of meeting mark arrived from his end.\n\nOnce the meeting is saved it cannot be edited or cancelled and will be moved into the history section', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(119, 'History of meeting', 'in history all completed and cancelled meeting will be displayed of specific user', 38, 2, 32, '2023-04-06', '', 1, 'to_do', 2, '2023-04-03', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(120, 'Share post', 'Post can be shared \n\n- Into chat\n- can be shared with text / without text\n- can be shared with check-in / tag friend', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(121, 'Like / unlike post', 'post can be liked or unliked(if liked) by the user count should increase/ decrease on realtime', 38, 0, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(122, 'Comments', 'Comments on post can be edited and deleted as well\n\n- comments can have like\n- comments can have replies', 38, 0, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(123, 'Save post', 'user can save his friend\'s or his own post those saved post will appear in a separate screen', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 1, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(124, 'Search', 'Search option will have different results\n\n1 - Users\n2 - Posts', 38, 0, 32, '2023-04-06', '', 1, 'to_do', 1, '2023-04-03', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(125, 'Chat', 'in this application only 1-1 chat is allowed\n\nin chat user is able to send image/video & voice note along with the text messages\n\nthere be push notifications for incoming messages', 38, 0, 32, '2023-04-14', '', 1, 'to_do', 1, '2023-04-10', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(126, 'Notification ', 'User will have notification for the following actions :\n\n- Friend request received\n- Friend request accepted\n- Meeting request\n- Meeting request accepted\n- Meeting status changed (mark arrived, completed & cancelled) on every status user will receive notification\n- like post\n- like comment\n- comment on post\n- replied on comment\n- shared post\n\nNote : every notification will appear in a list and push notification will generated as well', 38, 0, 32, '2023-04-20', '', 1, 'to_do', 1, '2023-04-17', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(127, 'Settings', 'User can make his profile public and private as well\n\nPublic : All content of the user\'s profile will be displayed to other users and other user are allowed to send messages to public profile through the profile\n\nPrivate : all content of private profiles will be hidden along with the messaging option', 38, 0, 32, '2023-04-13', '', 1, 'to_do', 1, '2023-04-10', '48,29', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(128, 'Block', 'Blocking feature :\n\n- User will not be able to send / receive messages from or to blocked user\n\n- User will not be able get the blocked user in search result\n\n- user will not be able to see blocked user\'s post on newsfeed & search results as well\n\n- If a user blocks any user connection between users will be ended\n\n- A list of blocked user\'s will be generated ', 38, 0, 32, '2023-04-13', '', 1, 'to_do', 1, '2023-04-10', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(129, 'Unfriend', '', 38, 1, 32, '2023-03-28', '', 1, 'to_do', 3, '2022-12-02', '29,48', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(130, 'UI/UX ', 'asdasdasdd', 38, 0, 29, '2023-04-06', '', 1, 'to_do', 1, '2023-04-04', '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-03', NULL, '0000-00-00', 0, 0),
(131, 's', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 1),
(132, 'Sign up (user)', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 1),
(133, 'Signup (Trainer)', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(134, 'Login', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 1),
(135, 'Create Profile &#40;trainer&#41;', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(136, 'Login', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(137, 'Home (requests)', 'Home screen will have requests from user which are still pending (not declined)\n\nAfter reviewing details that are mentioned in the request form from client side. Trainer can have chat with the client or trainer can directly create a session from the request screen.', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(138, 'Create session(trainer)', 'Session can be created from the chat of specific client or from request form came from the client', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(139, 'Scheduled / Upcoming sessions (trainer)', 'Scheduled / upcoming session will be those session which were created by the trainer and client accepted and paid for that specific session. \n\nSessions can be edited', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(140, 'Complete session (trainer)', 'Make sure trainer wont be able to complete the session before end time date of any session\n\n\nOnce trainer has marked any session completed user will get notified to rate the trainer', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(141, 'Cancel session(trainer)', 'Trainer have to provide the reason of cancellation while cancelling any session', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(142, 'History(trainer)', 'In history only completed & cancelled session will be displayed', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(143, 'Edit Profile &#40;trainer&#41;', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(144, 'View gyms (trainer)', 'On view gym screen trainer will be able to see list of gyms ', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(145, 'Add gym(trainer)', 'Trainer will be able to add gym', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(146, 'Edit gym (trainer)', 'Trainer will be able to edit gyms he has added', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(147, 'Chat', 'In this application only 1-1 chat is allowed', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0),
(148, 'Payment (trainer)', '', 31, 0, 29, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 1, 'months', 0, 0, 0, '2023-04-04', NULL, '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_status`
--

INSERT INTO `task_status` (`id`, `title`, `key_name`, `color`, `sort`, `deleted`) VALUES
(1, 'New Task', 'to_do', '#29c2c2', 0, 0),
(2, 'Reviewed By Head', 'in_progress', '#f1c40f', 1, 0),
(3, 'Cancel', 'done', '#83c340', 2, 0),
(7, 'UI UX Design', '', '#83c340', 5, 1),
(8, 'UI UX Approval', '', '#2d9cdb', 6, 1),
(9, 'Alpha', '', '#f1c40f', 7, 1),
(10, 'Web Design Query', '', '#e74c3c', 8, 1),
(11, 'WP Development', '', '#29c2c2', 9, 1),
(12, 'WP Revision', '', '#f1c40f', 10, 1),
(13, 'WP Development Completed', '', '#83c340', 11, 1),
(14, 'WP Query', '', '#e74c3c', 12, 1),
(15, 'HTML Development ', '', '#29c2c2', 13, 1),
(16, 'HTML Revision', '', '#f1c40f', 14, 1),
(17, 'HTML Development Completed', '', '#83c340', 15, 1),
(18, 'HTML Query', '', '#e74c3c', 16, 1),
(19, 'Mobile APP Wire Frame Design', '', '#29c2c2', 17, 1),
(20, 'Mobile APP Wire Frame Revision', '', '#f1c40f', 18, 1),
(21, 'Mobile APP Wire Frame Completed', '', '#83c340', 19, 1),
(22, 'Mobile APP Wire Frame Query', '', '#e74c3c', 20, 1),
(23, 'Mobile APP Development', '', '#29c2c2', 21, 1),
(24, 'Mobile APP Development Revision', '', '#f1c40f', 22, 1),
(25, 'Mobile APP Development Completed', '', '#83c340', 23, 1),
(26, 'Mobile APP Development  Query', '', '#e74c3c', 24, 1),
(27, 'Content New Order', '', '#29c2c2', 25, 1),
(28, 'Content Revision', '', '#f1c40f', 26, 1),
(29, 'Content Query', '', '#e74c3c', 27, 1),
(30, 'Content Completed', '', '#83c340', 28, 1),
(31, 'Logo New Order', '', '#29c2c2', 29, 1),
(32, 'Logo Revision', '', '#f1c40f', 30, 1),
(33, 'Logo Query', '', '#e74c3c', 31, 1),
(34, 'Logo Completed', '', '#83c340', 32, 1),
(35, 'Server Management New Order', '', '#29c2c2', 33, 1),
(36, 'Server Management Completed', '', '#83c340', 34, 1),
(37, 'Server Management Query', '', '#e74c3c', 35, 1),
(38, 'SMM New Order', '', '#29c2c2', 36, 1),
(39, 'SMM Revision', '', '#f1c40f', 37, 1),
(40, 'SMM Completed', '', '#83c340', 38, 1),
(41, 'SMM Query', '', '#e74c3c', 39, 1),
(42, 'SEO New Order', '', '#29c2c2', 40, 1),
(43, 'SEO Revision', '', '#f1c40f', 41, 1),
(44, 'SEO Completed', '', '#83c340', 42, 1),
(45, 'SEO Query', '', '#e74c3c', 43, 1),
(46, 'Client Approval', '', '#e18a00', 6, 0),
(47, 'Discussion Required', '', '#d43480', 4, 0),
(48, 'QA Review', '', '#37b4e1', 3, 0),
(49, 'Brief missing', '', '#dbadff', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'Tax (10%)', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'WordPress Team', '1,3', 1),
(2, 'Backend Developers', '2,1', 1),
(3, 'Frontend Developers', '3', 1),
(4, 'Mobile Application', '2', 1),
(5, 'QA', '3', 1),
(6, 'Project Coordinator', '2,1', 1),
(7, 'Mobile Application', '1', 1),
(8, 'WordPress', '31,28,50', 0),
(9, 'Web Application / API', '1,8', 1),
(10, 'Frontend', '1', 1),
(11, 'Backend', '1,8', 1),
(12, 'SEO', '1', 0),
(13, 'Social Media Management', '1', 0),
(14, 'Graphic Design', '38,40,39', 0),
(15, 'Content Writers', '30', 0),
(16, 'Mobile App Development', '37,48,49,47', 0),
(17, 'Mobile App Design', '48,49', 1),
(18, 'Backend Developers', '1,32,43,44,45', 0),
(19, 'UI UX', '41,42', 0),
(20, 'Front-End Developers', '1,46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `salary` double NOT NULL DEFAULT 0,
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_member_job_info`
--

INSERT INTO `team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, '2021-06-01', 0, 0, ''),
(2, 3, '2020-10-01', 0, 0, ''),
(3, 1, '2021-04-19', 0, 0, ''),
(4, 4, '0000-00-00', 0, 0, ''),
(5, 7, '0000-00-00', 0, 0, ''),
(6, 8, '0000-00-00', 0, 0, ''),
(7, 10, '0000-00-00', 0, 0, ''),
(8, 11, '0000-00-00', 0, 0, ''),
(9, 14, '0000-00-00', 0, 0, ''),
(10, 15, '0000-00-00', 0, 0, ''),
(11, 16, '0000-00-00', 0, 0, ''),
(12, 17, '0000-00-00', 0, 0, ''),
(13, 18, '0000-00-00', 0, 0, ''),
(14, 19, '0000-00-00', 0, 0, ''),
(15, 20, '0000-00-00', 0, 0, ''),
(16, 21, '0000-00-00', 0, 0, ''),
(17, 22, '0000-00-00', 0, 0, ''),
(18, 23, '0000-00-00', 0, 0, ''),
(19, 24, '0000-00-00', 0, 0, ''),
(20, 25, '0000-00-00', 0, 0, ''),
(21, 26, '0000-00-00', 0, 0, ''),
(22, 27, '0000-00-00', 0, 0, ''),
(23, 28, '0000-00-00', 0, 0, ''),
(24, 29, '0000-00-00', 0, 0, ''),
(25, 30, '0000-00-00', 0, 0, ''),
(26, 31, '0000-00-00', 0, 0, ''),
(27, 32, '0000-00-00', 0, 0, ''),
(28, 33, '0000-00-00', 0, 0, ''),
(29, 34, '0000-00-00', 0, 0, ''),
(30, 35, '0000-00-00', 0, 0, ''),
(31, 36, '0000-00-00', 0, 0, ''),
(32, 37, '0000-00-00', 0, 0, ''),
(33, 38, '0000-00-00', 0, 0, ''),
(34, 39, '0000-00-00', 0, 0, ''),
(35, 40, '0000-00-00', 0, 0, ''),
(36, 41, '0000-00-00', 0, 0, ''),
(37, 42, '0000-00-00', 0, 0, ''),
(38, 43, '0000-00-00', 0, 0, ''),
(39, 44, '0000-00-00', 0, 0, ''),
(40, 45, '0000-00-00', 0, 0, ''),
(41, 46, '0000-00-00', 0, 0, ''),
(42, 47, '0000-00-00', 0, 0, ''),
(43, 48, '0000-00-00', 0, 0, ''),
(44, 49, '0000-00-00', 0, 0, ''),
(45, 50, '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT 0,
  `creator_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creator_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `client_id`, `project_id`, `ticket_type_id`, `title`, `created_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `creator_name`, `creator_email`, `labels`, `task_id`, `closed_at`, `deleted`) VALUES
(1, 9, 0, 1, 'ahsdansd', 10, '2022-06-02 21:57:15', 'closed', '2022-06-02 21:57:15', 0, '', '', 'qwbe', 0, '2022-06-08 18:39:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `deleted`) VALUES
(1, 10, '2022-06-02 21:57:15', 'hsvdjhdasv', 1, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0);

-- --------------------------------------------------------

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT 0,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT 1,
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `deleted`) VALUES
(1, 'Muhmmad', 'Abdullah', 'staff', 1, 0, 'abdullah@four-fox.com', '25f9e794323b453885f5181f1b624d0b', 'a:1:{s:9:\"file_name\";s:29:\"_file6295174a311c0-avatar.png\";}', 'active', '2023-03-10 22:58:24', 0, '2023-05-11 20:36:04', 0, 'Head of Department', 0, NULL, '', '', '', '', '1996-07-18', '', 'male', '', '', 1, 1, '2021-09-30 14:12:20', '2023-06-01 18:26:03', 0),
(6, 'Daniel', 'Bryan', 'lead', 0, 0, 'danielbryan@gologonow.com', NULL, NULL, 'active', NULL, 5, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-30 19:04:04', NULL, 1),
(7, 'Errol', 'D\'Souza', 'staff', 1, 0, 'errol@gologonow.com', '7bb6054a6fdd6567cb78061845b8b804', NULL, 'active', NULL, 0, NULL, 0, 'Account Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-30 19:11:30', '2022-06-01 00:25:06', 1),
(8, 'William', 'Vale', 'staff', 0, 10, 'william@gologonow.com', '4974c0dd6cc91aa51d8fb59cd915580e', NULL, 'active', NULL, 0, NULL, 0, 'Web Application Developer', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-30 19:18:26', '2022-05-30 19:20:49', 1),
(9, 'dfgdfg', 'dfgdfg', 'lead', 0, 0, 'asd@GMAIL.COM', NULL, NULL, 'active', NULL, 7, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-30 21:46:37', NULL, 1),
(10, 'Test', 'Account Manager', 'staff', 0, 9, 'accountmanager@gologonow.com', 'dcca8cd57daedad94e485106f042d842', NULL, 'active', '2022-06-02 21:54:57', 0, NULL, 0, 'Account Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-31 22:06:26', '2022-06-02 21:57:36', 1),
(11, 'Test', 'Sales', 'staff', 0, 18, 'salesmanager@gologonow.com', 'dcca8cd57daedad94e485106f042d842', NULL, 'active', NULL, 0, NULL, 0, 'Sales Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-05-31 22:07:00', '2022-06-02 21:53:06', 1),
(12, 'John', 'Connor', 'client', 0, 0, 'john@gmail.com', 'd429410b0b32f2fb92025d77c39f394c', NULL, 'active', NULL, 9, NULL, 0, 'Untitled', 0, NULL, NULL, NULL, '', NULL, NULL, NULL, 'male', NULL, '', 1, 1, '2022-06-01 15:39:24', NULL, 1),
(13, 'qwrtwer', 'qweqwe', 'client', 0, 0, 'asdasd@gmail.com', '835b31a33deac8c6feb92d86495b9d52', NULL, 'active', NULL, 10, NULL, 0, 'Untitled', 0, NULL, NULL, NULL, '', NULL, NULL, NULL, 'male', NULL, '', 1, 1, '2022-06-02 21:51:41', NULL, 1),
(14, 'Errol', 'D\'souza', 'staff', 0, 9, 'errol@gologonow.com', '0506ffd7d3b84b3bfbea98408567c05b', NULL, 'active', NULL, 0, NULL, 0, 'Project Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:12:57', NULL, 1),
(15, 'William', 'Scott', 'staff', 0, 10, 'ameeq@four-fox.com', '833ff40346bebcb82d508ed2ddda788f', NULL, 'active', NULL, 0, NULL, 0, 'Backend Developer', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:14:15', NULL, 1),
(16, 'Franklin', 'Philip', 'staff', 0, 9, 'franklin@gologonow.com', '08b57ef2ca0137833a0b2226bd8417a0', NULL, 'active', NULL, 0, NULL, 0, 'Account Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:15:32', NULL, 1),
(17, 'Errol', 'D\'souza', 'staff', 0, 9, 'errol@gologonow.com', '0506ffd7d3b84b3bfbea98408567c05b', NULL, 'active', NULL, 0, NULL, 0, 'Project Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:19:46', '2022-07-14 00:22:06', 0),
(18, 'Franklin', 'Philip', 'staff', 0, 9, 'franklin@gologonow.com', '08b57ef2ca0137833a0b2226bd8417a0', NULL, 'active', NULL, 0, NULL, 0, 'Account Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:20:42', '2022-07-14 00:22:46', 0),
(19, 'Oliver', 'Wright', 'staff', 0, 18, 'oliver@gologonow.com', '8734e1774018de9d6657869ff645d0d4', 'a:1:{s:9:\"file_name\";s:29:\"_file62d0397651076-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Solution Architech - Web, Mob Apps & Game Development', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:22:14', '2022-09-30 19:02:30', 1),
(20, 'Jordan', 'Peters', 'staff', 0, 17, 'jordan@gologonow.com', '2ce2155be503884d55be5becc0e6ddc7', NULL, 'active', '2023-01-13 18:24:46', 0, NULL, 0, 'IT Head', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:23:09', '2023-01-13 23:37:25', 0),
(21, 'John', 'Morrison', 'staff', 0, 9, 'john@gologonow.com', 'e6801fc94c124c855f85f843796439ca', NULL, 'active', NULL, 0, NULL, 0, 'Account Manager', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:24:17', '2022-11-26 00:02:32', 0),
(22, 'Allen', 'Brown', 'staff', 0, 9, 'allen@gologonow.com', 'fe31ab560f5d28ed81e0dd631420a6b2', NULL, 'active', '2022-07-13 23:00:51', 0, NULL, 0, 'Sr. Account Manger (Web & Mob Apps)', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:25:58', '2022-09-29 23:59:17', 0),
(23, 'Steven', 'Black', 'staff', 0, 15, 'steven@gologonow.com', '9439081513631f0b16f60dba0d9b3c6a', NULL, 'active', NULL, 0, NULL, 0, 'Legal Advisor', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:28:09', '2022-07-13 22:18:15', 0),
(24, 'Kairi', 'Green', 'staff', 0, 9, 'kairi@gologonow.com', '60970a8f5438387f944de41ca191bcf3', NULL, 'active', NULL, 0, NULL, 0, 'Account Manager (Logo & Web)', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', 'Call with Tracey on 14/7\ncall with Cassandra 14/7\ncall with Jennifer on 15/7', NULL, 1, 1, '2022-06-10 14:29:03', '2022-07-14 23:15:22', 0),
(25, 'Kurt', 'Goodwin', 'staff', 0, 9, 'kurt@gologonow.com', '636140160ad26b25a96992fd6cb7e2a7', NULL, 'active', NULL, 0, NULL, 0, 'Project Manager (Web, Mob Apps & Game Dev)', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:30:10', '2023-06-01 18:27:00', 0),
(26, 'Ben', 'Fox', 'staff', 0, 18, 'ben@gologonow.com', '3817635d2cbcc50a01f4d97fc30f25e4', NULL, 'active', '2022-06-10 14:40:01', 0, '2022-06-10 14:39:56', 0, 'Brand Analyst - Graphic & Logo', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:31:19', '2022-10-12 15:04:50', 0),
(27, 'Travis', 'Walker', 'staff', 0, 18, 'travis@gologonow.com', '22655cc4ff96d8535bdf18697f56b5a5', NULL, 'active', '2022-09-27 20:03:48', 0, '2022-09-27 20:03:49', 0, 'Business Unit Head - Web & Mob Apps', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-06-10 14:33:57', '2023-06-01 18:22:18', 0),
(28, 'Muhammad', 'Danish', 'staff', 0, 10, 'danish@four-fox.com', 'c0e90d5272a839ac40d82856061a82e1', NULL, 'active', NULL, 0, NULL, 0, 'WordPress Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:10:07', '2022-07-13 22:17:37', 0),
(29, 'Aizaz', 'Ahmed', 'staff', 0, 19, 'matthias@gologonow.com', '5d143b4147403661eb1c88577055e163', 'a:1:{s:9:\"file_name\";s:29:\"_file6387d8667ad10-avatar.png\";}', 'active', '2023-04-03 20:14:05', 0, '2023-04-03 20:14:14', 0, 'Project Coordinator / SQA', 0, NULL, 'aizaz@four-fox.com', 'matthias@gologonow.com', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:23:16', '2023-04-11 20:27:00', 0),
(30, 'Ameen', 'Content Writer', 'staff', 0, 10, 'ameen@four-fox.com', 'c266a53119b79b764ba29cee9cd8a15a', NULL, 'active', '2022-07-13 23:01:43', 0, NULL, 0, 'Content Writer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', '==================\nXUMA\n==================\n', '', 1, 1, '2022-07-13 22:25:22', '2022-09-29 22:47:59', 0),
(31, 'Muhammad', 'Ali', 'staff', 0, 10, 'ali@four-fox.com', 'e45cbffda6440f3af91b7577684237f3', NULL, 'active', NULL, 0, NULL, 0, 'Website Developer - WordPress, Shopify & Wix', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:27:19', '2022-07-13 23:20:04', 0),
(32, 'Hafiz Ameeq', 'Khan', 'staff', 0, 10, 'william@gologonow.com', 'e40198a8dbd313e9982fb8ae9672c420', NULL, 'active', NULL, 0, NULL, 0, 'Backend Developer - Laravel PHP', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:28:48', NULL, 0),
(33, 'Arj', 'F', 'staff', 1, 0, 'arj@four-fox.com', '1e64966f9281ab5c87193d841c0658dc', NULL, 'active', NULL, 0, NULL, 0, 'CEO', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-07-13 22:30:12', NULL, 0),
(34, 'Muhammad', 'Shaheryar', 'staff', 1, 0, 'boss@four-fox.com', '070df2bb94b47cb0746c5bb96aa71b13', NULL, 'active', NULL, 0, NULL, 0, 'CEO', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:32:33', '2022-10-09 16:21:12', 0),
(35, 'TJ', 'Kohen', 'staff', 0, 18, 'tj-kohen@gologonow.com', '3a7b38c46cb8b65490995b371e64fbd0', NULL, 'active', NULL, 0, NULL, 0, 'Solution Architect - Web & Mobile Apps', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-07-13 22:50:03', '2022-07-14 00:02:47', 1),
(36, 'Abdul', 'Haseeb', 'staff', 0, 10, 'abdulhaseeb@four-fox.com', 'db0fb9bfc0ee3878cc73af3d3a224966', NULL, 'active', NULL, 0, NULL, 0, 'Lead Software Quality Assurance', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 22:57:03', NULL, 0),
(37, 'Mahboob', 'A.', 'staff', 0, 10, 'mahboob@four-fox.com', 'f0ce32c8368767e76bb52f4950aefa18', NULL, 'active', NULL, 0, '2022-09-27 20:00:34', 0, 'Technical Head', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-07-13 23:01:59', '2022-09-27 20:00:27', 1),
(38, 'Maaz', 'Graphic Designer', 'staff', 0, 10, 'maaz@four-fox.com', 'a48eff553c9e69c57ae3387d908289ea', NULL, 'active', NULL, 0, NULL, 0, 'Graphic Designer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 23:44:34', NULL, 0),
(39, 'Sumair', 'Graphic Designer', 'staff', 0, 10, 'sumair@four-fox.com', 'e79da513a58089b3b1b5f23ef3e15059', NULL, 'active', NULL, 0, NULL, 0, 'Graphic Designer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 23:45:55', NULL, 0),
(40, 'Krumnado', 'K.', 'staff', 0, 10, 'adnan@four-fox.com', 'e5e988d65216bf29424e33eddecaca64', NULL, 'active', NULL, 0, NULL, 0, 'Graphic Designer', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-07-13 23:46:40', NULL, 1),
(41, 'Yousuf', 'UI UX', 'staff', 0, 10, 'yousuf@four-fox.com', 'd65b769e51957a5e9d218655263c5798', NULL, 'active', NULL, 0, NULL, 0, 'UI UX Designer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-13 23:49:26', NULL, 1),
(42, 'Cullen', 'C.', 'staff', 0, 10, 'osama.qadri@four-fox.com', '03593db410c5dec17616f62beb9b929e', NULL, 'active', NULL, 0, NULL, 0, 'UI UX Designer', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-07-13 23:50:27', NULL, 1),
(43, 'Javed', 'Abbasi', 'staff', 0, 10, 'javed@four-fox.com', '36261793a6704dffdf1aa3317a6dcea7', NULL, 'active', NULL, 0, NULL, 0, 'Full Stack Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:18:24', NULL, 1),
(44, 'Moazzam', 'Ali', 'staff', 0, 10, 'moazzam@four-fox.com', 'd65b769e51957a5e9d218655263c5798', NULL, 'active', NULL, 0, NULL, 0, 'Full Stack Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:21:20', NULL, 0),
(45, 'Salman', 'Irshad', 'staff', 0, 10, 'salman@four-fox.com', 'adda1ac14a109665b9cc011529f29c41', NULL, 'active', NULL, 0, NULL, 0, 'Full Stack Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:22:17', NULL, 0),
(46, 'Sheraz', 'Khan', 'staff', 0, 10, 'sheraz@four-fox.com', '3f996f07911b2d4e26184c4f38b6df4e', NULL, 'active', NULL, 0, NULL, 0, 'Front-End Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:23:12', NULL, 1),
(47, 'Hamza', 'Siddiqui', 'staff', 0, 10, 'hamza@four-fox.com', '42c392932c61cc58717fbd0c46012d6f', NULL, 'active', NULL, 0, NULL, 0, 'Mobile App Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:27:45', NULL, 0),
(48, 'Hubaib', 'Ahmed', 'staff', 0, 10, 'hubaib@four-fox.com', '52bb65ff5a530004d49d96329019a157', NULL, 'active', NULL, 0, NULL, 0, 'Mobile App Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:28:52', NULL, 0),
(49, 'Osama', 'Anwar', 'staff', 0, 10, 'osama.anwar@four-fox.com', '7150fe76cd567fbe04f38f7b3b842b41', NULL, 'active', NULL, 0, NULL, 0, 'Mobile App Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:31:27', NULL, 0),
(50, 'Maaz', 'Ali', 'staff', 0, 10, 'maazali@four-fox.com', '23f77a3a0dbd716d321cf027a3000060', NULL, 'active', NULL, 0, NULL, 0, 'WordPress Developer', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-07-14 11:34:27', NULL, 1),
(51, 'Arsalan', 'Saeed', 'client', 0, 0, 'arsalan@four-fox.com', '5a41b3459efc9f92ed6acf0b7de13597', NULL, 'active', NULL, 18, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2023-03-09 21:49:12', '2023-03-09 21:57:16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `checklist_items`
--
ALTER TABLE `checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_groups`
--
ALTER TABLE `client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_widgets`
--
ALTER TABLE `custom_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_files`
--
ALTER TABLE `general_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_articles`
--
ALTER TABLE `help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_categories`
--
ALTER TABLE `help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_settings`
--
ALTER TABLE `project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indexes for table `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `checklist_items`
--
ALTER TABLE `checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client_groups`
--
ALTER TABLE `client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `custom_widgets`
--
ALTER TABLE `custom_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_files`
--
ALTER TABLE `general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_articles`
--
ALTER TABLE `help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `help_categories`
--
ALTER TABLE `help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
