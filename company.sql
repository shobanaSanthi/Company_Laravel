-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 12:57 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_skill`
--

CREATE TABLE `employee_skill` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_percentage` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_skill`
--

INSERT INTO `employee_skill` (`id`, `user_id`, `skill_id`, `skill_percentage`, `created_at`, `updated_at`) VALUES
(3, 23, 2, 80, '2022-05-03 14:09:12', '2022-05-04 07:20:19'),
(4, 15, 1, 50, '2022-05-04 03:01:22', '2022-05-04 03:01:22'),
(5, 16, 2, 90, '2022-05-04 03:04:31', '2022-05-04 03:04:31'),
(6, 20, 3, 87, '2022-05-04 03:05:04', '2022-05-04 03:05:04'),
(7, 15, 3, 80, '2022-05-04 03:05:39', '2022-05-04 03:05:39'),
(11, 23, 4, 90, '2022-05-04 05:19:36', '2022-05-04 05:19:36'),
(12, 23, 5, 80, '2022-05-04 05:19:55', '2022-05-04 05:19:55'),
(13, 23, 2, 80, '2022-05-04 05:21:03', '2022-05-04 05:21:03'),
(14, 23, 3, 80, '2022-05-04 05:22:58', '2022-05-04 05:22:58'),
(15, 15, 1, 80, '2022-05-04 05:25:15', '2022-05-04 05:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_02_210620_create_skills_table', 2),
(5, '2022_05_02_210638_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_on`, `updated_on`) VALUES
(1, 'manager', '2022-05-02 09:16:43', '2022-05-02 09:16:55'),
(2, 'employee', '2022-05-02 09:17:20', '2022-05-02 09:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `created_at`, `updated_at`) VALUES
(1, 'Java', '2022-05-03 18:30:00', '2022-05-03 18:30:00'),
(2, 'Python', '2022-05-03 18:30:00', '2022-05-03 18:30:00'),
(3, 'PHP', '2022-05-03 18:30:00', '2022-05-03 18:30:00'),
(4, 'Testing', '2022-05-03 18:30:00', '2022-05-03 18:30:00'),
(5, 'C++', '2022-05-03 18:30:00', '2022-05-03 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(4, 'Manager', 'manager@gmail.com', '$2y$10$xCu6NH721pCIC59YG6IaieZrt7iQYx2CejEYlhTHcVAcOI/zGXTN2', 1, NULL, NULL, '2022-05-02 09:29:39', '2022-05-02 09:29:39'),
(14, 'Subha', 'Subha@gmail.com', '$2y$10$K7vaQpE9TEn2CV3yRq0Zd.1UBkQ8wYnfNr3lf3ZoHlXD9YqLlUz/O', 2, 'West Car Street', '789456158', '2022-05-03 08:02:59', '2022-05-03 08:02:59'),
(15, 'Juliba', 'Juliba@gmail.com', '$2y$10$c/IGXkOl.Sffzl7KXsCd7OPshwb8eKPGSO3Sbk2iWMalgDUGbRHUe', 2, 'Tar car street', '458878458', '2022-05-03 08:04:55', '2022-05-03 08:04:55'),
(16, 'K Shobana Santhi', 'Shobana@gmail.com', '$2y$10$Nwpm15LeHYnQSndAixwRBOMXYOJ1/91dDuBL79juu16feziS6mo4q', 2, 'Near pachhaiyappa lodge, Thiruthangal', '4654654564', '2022-05-03 08:36:44', '2022-05-03 08:36:44'),
(20, 'Kiruba', 'Kiruba@gmail.com', '$2y$10$bxP4D8Kh/.aUNUSbt7S61ejxYPQarit/UztXWHqLyPmTOIACLDtJC', 2, 'Kiru Street', '23434344', '2022-05-03 08:41:51', '2022-05-03 08:41:51'),
(23, 'Shankar', 'Shankar@gmail.com', '$2y$10$UMpAT6nSVJA8S0Zls5X9XebStxcE1hGtPAeQVLr4apkBHJDZCW8.q', 2, 'keda streed', '5445454848', '2022-05-03 16:33:44', '2022-05-03 16:33:44'),
(24, 'Jegan', 'Jegan@gmail.com', '$2y$10$/ETooHx/KPFAWqgniAiaVu.JWY8QcMFl/eSfd0.kwTvsWlrH2En/m', 2, 'West Street', '485748585', '2022-05-04 02:28:38', '2022-05-04 02:28:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_skill`
--
ALTER TABLE `employee_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
