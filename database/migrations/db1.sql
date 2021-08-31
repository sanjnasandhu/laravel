-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2021 at 12:36 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-18+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_08_11_054015_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('002bc7c9-faca-474f-805f-72e9b54d3172', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:52', '2021-08-19 01:38:52'),
('12de91c0-3b45-4659-8898-e9dfc2e65148', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:52', '2021-08-19 01:38:52'),
('200521ee-9d63-4919-9cd5-7fd3d3bc6abb', 'App\\Notifications\\productNotification', 'App\\User', 2, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 04:00:06', '2021-08-19 04:00:06'),
('247eb750-c2cd-4cb4-86df-9e92616bcfde', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:52', '2021-08-19 01:38:52'),
('355c8a43-7ed4-4192-a374-0c73227b2f6d', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":\"user2\",\"description\":\"user2\"}', NULL, '2021-08-18 06:05:05', '2021-08-18 06:05:05'),
('382a9e21-5489-4fc4-b2ca-809d44253bae', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 02:53:38', '2021-08-19 02:53:38'),
('3d627147-2cd0-4233-a0c1-215abd27531c', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":\"simran\",\"description\":\"YOU ARE DOING GOOD....\\r\\nWELL!...DONE\"}', NULL, '2021-08-16 01:33:12', '2021-08-16 01:33:12'),
('41ef4bc4-3dfb-4503-83d0-5488c373f7e6', 'App\\Notifications\\productNotification', 'App\\User', 2, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:52', '2021-08-19 01:38:52'),
('42e5eb15-e27a-48f1-b11b-98fa22a4d30c', 'App\\Notifications\\productNotification', 'App\\User', 2, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:40', '2021-08-19 01:38:40'),
('473f81b0-a671-4853-946c-ca6dae2d03a4', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":\"simran\",\"description\":\"YOU ARE DOING GOOD....\\r\\nWELL!...DONE\"}', NULL, '2021-08-16 01:33:12', '2021-08-16 01:33:12'),
('4afa5263-d78a-47e9-b1a2-b490a5939924', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 04:00:07', '2021-08-19 04:00:07'),
('4e4d7877-75b6-4d91-8327-e9c92d5f81ba', 'App\\Notifications\\productNotification', 'App\\User', 2, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 02:53:38', '2021-08-19 02:53:38'),
('5ca39529-883a-43ed-9778-fde59603debc', 'App\\Notifications\\productNotification', 'App\\User', 2, '{\"name\":\"user2\",\"description\":\"user2\"}', NULL, '2021-08-18 06:05:05', '2021-08-18 06:05:05'),
('7bb6daa3-d5db-48f0-a066-78773c38886c', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":\"simran\",\"description\":\"YOU ARE DOING GOOD....\\r\\nWELL!...DONE\"}', NULL, '2021-08-16 01:33:12', '2021-08-16 01:33:12'),
('7cf73005-accc-4a1a-8059-0869f2cf7848', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:40', '2021-08-19 01:38:40'),
('860e8137-f876-41a3-8718-6e90c5dbc04e', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":\"simran\",\"description\":\"YOU ARE DOING GOOD....\\r\\nWELL!...DONE\"}', NULL, '2021-08-16 01:36:52', '2021-08-16 01:36:52'),
('86724b34-eb0d-47c2-b599-e9d6aa56c8b9', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:41', '2021-08-19 01:38:41'),
('9edcaed9-3e82-494a-93f7-e175b4501a27', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 02:53:38', '2021-08-19 02:53:38'),
('b74b7983-ec34-44af-99d5-8a811bfdd94e', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":\"user2\",\"description\":\"user2\"}', NULL, '2021-08-18 06:05:05', '2021-08-18 06:05:05'),
('bac3c480-0474-4d32-b8b0-cdc746fa5a82', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 04:00:07', '2021-08-19 04:00:07'),
('d05bc2e9-dbef-4d50-b878-0206f5facae2', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":\"user2\",\"description\":\"user2\"}', NULL, '2021-08-18 06:05:05', '2021-08-18 06:05:05'),
('db163099-4e99-45e7-aca9-2765a7e15dcd', 'App\\Notifications\\productNotification', 'App\\User', 4, '{\"name\":\"simran\",\"description\":\"YOU ARE DOING GOOD....\\r\\nWELL!...DONE\"}', NULL, '2021-08-16 01:36:52', '2021-08-16 01:36:52'),
('e0fbfadd-d600-44f9-900b-27214ff27bf8', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 04:00:07', '2021-08-19 04:00:07'),
('e239279b-a6e4-4b2b-8fce-64ca085d1e60', 'App\\Notifications\\productNotification', 'App\\User', 3, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 01:38:40', '2021-08-19 01:38:40'),
('f2806d1f-7887-4009-aade-042dabe19054', 'App\\Notifications\\productNotification', 'App\\User', 5, '{\"name\":null,\"description\":null}', NULL, '2021-08-19 02:53:38', '2021-08-19 02:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'sanjna', 'sanjnasandhu2000@gmail.com', 1, '$2y$10$QsnW3.ZIQP4swtXrFif74.OXoMjuqwmcebsPAgLF1oTEXR.wouWq.', 'tbm58SYDM6XvZOZHKwXpcsHiwGFYcIu51tDNFFPn4eRikYrwVoHoZAXQJDcG', '2021-08-10 05:03:15', '2021-08-10 05:03:15'),
(3, 'user', 'user@gmail.com', 2, '$2y$10$quAqHxWCiu0tTFmvUwGoKO5wIDsPHZtCKAFYpDHKiRg8V4iADsQbG', 'GjfPWNjBOcixZ02JG9qu6voOS3vsSUauUDZPLPYvgQlsMDhQi5G2ZNVRnExu', '2021-08-10 05:21:04', '2021-08-10 05:21:04'),
(4, 'user2', 'user2@gmail.com', 2, '$2y$10$Q79WCvZ32aT8H5JcMGTp5uChb1O/xblVA7Ti9gYXptLpcpQAnPsyu', 'Jio6yXgQftrnrWTFUJABPBv3WTctHe52ZDyzxI7epMGIrL6HyPSUiuZ7lUGR', '2021-08-11 04:01:15', '2021-08-11 04:01:15'),
(5, 'user3', 'user3@gmail.com', 2, '$2y$10$BQXciUfKSgvJbmNWX22XU.VWXQQ9KCeR8jsY9aaBiwIbylKrTdPHu', '4YZiybL15YoVtyJwr7wNMpbhLl3amIjK1BXx0UHVokv9TU2fXVMRoui4wEHI', '2021-08-11 04:04:11', '2021-08-11 04:04:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `id` (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
