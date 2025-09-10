-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 07:23 PM
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
-- Database: `watermarts`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Awake', '2023-11-06 02:35:36', '2023-11-06 02:35:36'),
(2, 'Bel-Aqua', '2023-11-06 02:35:36', '2023-11-06 02:35:36'),
(3, 'Special Ice', '2023-11-06 02:35:36', '2023-11-06 02:35:36'),
(4, 'Voltic', '2023-11-06 02:35:36', '2023-11-06 02:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `user_id`, `product_id`) VALUES
('9a84a253-e19d-48ae-a520-ad4c6245f893', '2023-11-03 00:01:37', '2023-11-03 00:01:37', '9a84a10a-dd22-4ad2-8f30-880f6cdd412e', '9a84a11b-5695-4c67-b08f-8225509f83e4'),
('9a84a254-10e0-45c1-898f-2b7c7fc3319b', '2023-11-03 00:01:37', '2023-11-03 00:01:37', '9a84a10a-dd22-4ad2-8f30-880f6cdd412e', '9a84a11b-8dea-41f2-97a7-7ab7121184a3'),
('9a84a254-69cc-4938-821e-c409951c8c9c', '2023-11-03 00:01:38', '2023-11-03 00:01:38', '9a84a10a-dd22-4ad2-8f30-880f6cdd412e', '9a84a11b-9aad-4acb-a4b8-f2f2f01a5ab6');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_11_02_020947_create_sale_table', 1),
(5, '2023_11_02_021904_create_product_table', 1),
(6, '2023_11_02_021917_create_sale_item_table', 1),
(7, '2023_11_02_021951_create_user_profile_table', 1),
(8, '2023_11_02_021955_create_cart_table', 1),
(10, '2023_11_03_162740_add_status_to_user_table', 2),
(15, '2023_11_05_182741_create_brand_table', 3),
(16, '2023_11_05_182839_add_brand_id_to_products', 4),
(18, '2023_11_06_205703_create_notifications_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
('9a8d312b-0fff-43a0-9991-c1fefd09e414', '9a84a10a-0d61-4e1a-9650-6271f556d96b', '9a8adad2-ef4b-4bc8-8736-082365e55d46', '2023-11-06 23:07:40', '2023-11-06 23:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `quantity_in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `quantity_in_stock`, `price`, `created_at`, `updated_at`, `brand_id`) VALUES
('9a84a11b-5695-4c67-b08f-8225509f83e4', 'Voltic Bootle', '1.5l', 'https://shorturl.at/bOWX1', 6, 29, '2023-11-02 23:58:12', '2023-11-07 13:13:37', 4),
('9a84a11b-8dea-41f2-97a7-7ab7121184a3', 'Bel-Aqua Bootle', '500ml', 'https://shorturl.at/klsD9', 15, 28, '2023-11-02 23:58:12', '2023-11-02 23:58:12', 2),
('9a84a11b-9aad-4acb-a4b8-f2f2f01a5ab6', 'Special Ice Scchet', '500ml', 'https://shorturl.at/pyLZ2', 1, 8, '2023-11-02 23:58:13', '2023-11-07 11:58:01', 3),
('9a8adad2-ef4b-4bc8-8736-082365e55d46', 'Awake Bootle', '500ml', 'products/9SDftYMBm6WFWYkr916OiNlMHjZpgEVD4o7VLV1E.jpg', 100, 22, '2023-11-06 03:14:34', '2023-11-06 23:08:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saleitems`
--

CREATE TABLE `saleitems` (
  `id` char(36) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sale_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saleitems`
--

INSERT INTO `saleitems` (`id`, `quantity`, `price`, `created_at`, `updated_at`, `sale_id`, `product_id`) VALUES
('9a84a63b-ddad-44f1-a328-c7dccac4d0f5', 2, 240, '2023-11-03 00:12:33', '2023-11-03 00:12:33', '9a84a4f2-9bb4-4b46-8621-6aae32e2940d', '9a84a11b-8dea-41f2-97a7-7ab7121184a3'),
('9a84a63c-002e-45d1-aa54-f3f2c951bf61', 1, 28, '2023-11-03 00:12:33', '2023-11-03 00:12:33', '9a84a4f2-9bb4-4b46-8621-6aae32e2940d', '9a84a11b-9aad-4acb-a4b8-f2f2f01a5ab6');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` char(36) NOT NULL,
  `purchased_at` datetime NOT NULL DEFAULT current_timestamp(),
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `purchased_at`, `total_amount`, `created_at`, `updated_at`, `user_id`) VALUES
('9a84a4f2-9bb4-4b46-8621-6aae32e2940d', '2023-11-02 10:08:57', 120, '2023-11-03 00:08:57', '2023-11-03 00:08:57', '9a84a10a-dd22-4ad2-8f30-880f6cdd412e');

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` char(36) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `profile_pic`, `phone`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
('9a84a827-ba80-43fd-bf2b-011df70c8032', NULL, '0592112776', 'Accra', '2023-11-03 00:17:55', '2023-11-03 00:17:55', '9a84a10a-0d61-4e1a-9650-6271f556d96b'),
('9a84a827-d930-491c-a257-52a6e16eaeff', NULL, '0270504253', 'Nungua', '2023-11-03 00:17:55', '2023-11-03 00:17:55', '9a84a10a-dd22-4ad2-8f30-880f6cdd412e');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
('9a84a10a-0d61-4e1a-9650-6271f556d96b', 'admin1', 'admin1@example.com', '2023-11-02 23:58:01', '$2y$12$.sRIZZRE3JS/YC/EhKd21OFjXgxK/RQJpn4eAi3GpelWJhT8nFiSG', 'admin', NULL, '2023-11-02 23:58:01', '2023-11-02 23:58:01', 'active'),
('9a84a10a-dd22-4ad2-8f30-880f6cdd412e', 'user1', 'user1@example.com', '2023-11-02 23:58:01', '$2y$12$NaGSJYXa3DIwxO3Fce4VZ.GRgR1FHz/PksSPr1ogR5KhapMuh5UA.', 'user', NULL, '2023-11-02 23:58:02', '2023-11-02 23:58:02', 'active'),
('9a85bedc-11d4-4644-9fd2-d1078bf82392', 'user2', 'user2@example.com', NULL, '$2y$12$Tvd7NQ5qQp86/gDdxDUV7O1afmQgan85lBungNyZpqdxG6VB6pV9m', 'customer', NULL, '2023-11-03 13:17:14', '2023-11-07 13:52:32', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

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
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `saleitems`
--
ALTER TABLE `saleitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleitems_sale_id_foreign` (`sale_id`),
  ADD KEY `saleitems_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userprofiles_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saleitems`
--
ALTER TABLE `saleitems`
  ADD CONSTRAINT `saleitems_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `saleitems_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD CONSTRAINT `userprofiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
