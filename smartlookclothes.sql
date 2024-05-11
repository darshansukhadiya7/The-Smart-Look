-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 08:14 PM
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
-- Database: `smartlookclothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categorie', 7, 'add_categorie'),
(26, 'Can change categorie', 7, 'change_categorie'),
(27, 'Can delete categorie', 7, 'delete_categorie'),
(28, 'Can view categorie', 7, 'view_categorie'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order'),
(33, 'Can add size', 9, 'add_size'),
(34, 'Can change size', 9, 'change_size'),
(35, 'Can delete size', 9, 'delete_size'),
(36, 'Can view size', 9, 'view_size'),
(37, 'Can add subcategorie', 10, 'add_subcategorie'),
(38, 'Can change subcategorie', 10, 'change_subcategorie'),
(39, 'Can delete subcategorie', 10, 'delete_subcategorie'),
(40, 'Can view subcategorie', 10, 'view_subcategorie'),
(41, 'Can add productinfo', 11, 'add_productinfo'),
(42, 'Can change productinfo', 11, 'change_productinfo'),
(43, 'Can delete productinfo', 11, 'delete_productinfo'),
(44, 'Can view productinfo', 11, 'view_productinfo'),
(45, 'Can add orderitems', 12, 'add_orderitems'),
(46, 'Can change orderitems', 12, 'change_orderitems'),
(47, 'Can delete orderitems', 12, 'delete_orderitems'),
(48, 'Can view orderitems', 12, 'view_orderitems'),
(49, 'Can add contactus', 13, 'add_contactus'),
(50, 'Can change contactus', 13, 'change_contactus'),
(51, 'Can delete contactus', 13, 'delete_contactus'),
(52, 'Can view contactus', 13, 'view_contactus'),
(53, 'Can add cart', 14, 'add_cart'),
(54, 'Can change cart', 14, 'change_cart'),
(55, 'Can delete cart', 14, 'delete_cart'),
(56, 'Can view cart', 14, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$5p2akZZOpDc3J6Zn4gbCuE$5GGQwujKMV6MPhHON3SVU/6Bn2+M8AQDjbxMhEq0C7w=', '2024-03-30 07:21:12.261315', 0, 'Darshan@7017', '', '', 'darshansukhadiya144@gmail.com', 0, 1, '2024-03-30 06:59:27.025288'),
(2, 'pbkdf2_sha256$600000$mivlQiX3CWFroodoQSyDLQ$fgvLF2/TdwKnp+OOBQ7GI2f2SzekweoOuLKAiGknRUM=', '2024-03-30 07:33:20.412205', 1, 'djs', '', '', 'djs@gmail.com', 1, 1, '2024-03-30 07:07:59.024020'),
(3, 'pbkdf2_sha256$600000$952Eq9pi3jtNtwiKxHYdRX$tFtUzLybe7y2BVVim2nOGuszPjKLHYazjnKygTtQ/i0=', '2024-03-30 07:41:36.622594', 0, 'vatsal@222', '', '', 'vatsal222@gmail.com', 0, 1, '2024-03-30 07:28:24.027591');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-30 07:09:51.005682', '1', 'Man', 1, '[{\"added\": {}}]', 7, 2),
(2, '2024-03-30 07:10:04.972419', '2', 'Woman', 1, '[{\"added\": {}}]', 7, 2),
(3, '2024-03-30 07:10:21.462398', '3', 'Children', 1, '[{\"added\": {}}]', 7, 2),
(4, '2024-03-30 07:10:48.794961', '1', 'Tshirt', 1, '[{\"added\": {}}]', 10, 2),
(5, '2024-03-30 07:10:55.343948', '2', 'Shirt', 1, '[{\"added\": {}}]', 10, 2),
(6, '2024-03-30 07:11:01.676704', '3', 'Jeans', 1, '[{\"added\": {}}]', 10, 2),
(7, '2024-03-30 07:11:12.803508', '4', 'Dress', 1, '[{\"added\": {}}]', 10, 2),
(8, '2024-03-30 07:12:15.470730', '1', 'S', 1, '[{\"added\": {}}]', 9, 2),
(9, '2024-03-30 07:12:21.383552', '2', 'M', 1, '[{\"added\": {}}]', 9, 2),
(10, '2024-03-30 07:12:26.620440', '3', 'L', 1, '[{\"added\": {}}]', 9, 2),
(11, '2024-03-30 07:12:31.767259', '4', 'XL', 1, '[{\"added\": {}}]', 9, 2),
(12, '2024-03-30 07:12:37.429278', '5', '28', 1, '[{\"added\": {}}]', 9, 2),
(13, '2024-03-30 07:12:43.561312', '6', '30', 1, '[{\"added\": {}}]', 9, 2),
(14, '2024-03-30 07:12:47.501253', '7', '32', 1, '[{\"added\": {}}]', 9, 2),
(15, '2024-03-30 07:20:25.764850', '1', 'Man denim black coloured jeans', 1, '[{\"added\": {}}]', 11, 2),
(16, '2024-03-30 07:33:40.435534', '2', 'vatsal@222 - 2 - abc6893215', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 2),
(17, '2024-03-30 07:34:18.982607', '2', 'vatsal@222 - 2 - abc6893215', 2, '[]', 12, 2),
(18, '2024-03-30 07:37:17.102296', '8', '34', 1, '[{\"added\": {}}]', 9, 2),
(19, '2024-03-30 07:41:02.084914', '2', 'Man three coloured men premium tshirt', 1, '[{\"added\": {}}]', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(14, 'thesmartlookapp', 'cart'),
(7, 'thesmartlookapp', 'categorie'),
(13, 'thesmartlookapp', 'contactus'),
(8, 'thesmartlookapp', 'order'),
(12, 'thesmartlookapp', 'orderitems'),
(11, 'thesmartlookapp', 'productinfo'),
(9, 'thesmartlookapp', 'size'),
(10, 'thesmartlookapp', 'subcategorie');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-30 06:56:19.041544'),
(2, 'auth', '0001_initial', '2024-03-30 06:56:19.281150'),
(3, 'admin', '0001_initial', '2024-03-30 06:56:19.341144'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-30 06:56:19.348117'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-30 06:56:19.353556'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-30 06:56:19.387923'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-30 06:56:19.415319'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-30 06:56:19.426383'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-30 06:56:19.432239'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-30 06:56:19.458098'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-30 06:56:19.460940'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-30 06:56:19.466553'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-30 06:56:19.477014'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-30 06:56:19.484869'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-30 06:56:19.493209'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-30 06:56:19.501347'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-30 06:56:19.509261'),
(18, 'sessions', '0001_initial', '2024-03-30 06:56:19.530161'),
(19, 'thesmartlookapp', '0001_initial', '2024-03-30 06:56:19.817179');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qbkgx8aq8mpfkp77fbqwwxu9tw3ihuaq', '.eJxVjDEOAiEQRe9CbQiDCIOlvWcgAwOyaiBZdivj3XWTLbT9773_EoHWpYZ15DlMLM7iKA6_W6T0yG0DfKd26zL1tsxTlJsidzrktXN-Xnb376DSqN9aG4vWqeIjs7ZAToNnSJiM85YyYVTIACdImdHG6FwhJLJYjDdZgXh_ANgiN-A:1rqTLM:bG4ViSY1fp_4kAKWBeiIBJ33K7MDi5phy0Iq4LzLH9M', '2024-04-13 07:41:36.625865');

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_cart`
--

CREATE TABLE `thesmartlookapp_cart` (
  `id` bigint(20) NOT NULL,
  `psize` varchar(5) NOT NULL,
  `pqty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `productinfo_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_categorie`
--

CREATE TABLE `thesmartlookapp_categorie` (
  `created_at` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_categorie`
--

INSERT INTO `thesmartlookapp_categorie` (`created_at`, `id`, `name`) VALUES
('2024-03-30 07:09:13.000000', 1, 'Man'),
('2024-03-30 07:10:00.000000', 2, 'Woman'),
('2024-03-30 07:10:10.000000', 3, 'Children');

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_contactus`
--

CREATE TABLE `thesmartlookapp_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_order`
--

CREATE TABLE `thesmartlookapp_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mono` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `zipcode` varchar(150) NOT NULL,
  `totalprice` double NOT NULL,
  `status` varchar(150) NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_order`
--

INSERT INTO `thesmartlookapp_order` (`id`, `fname`, `lname`, `email`, `mono`, `address`, `city`, `state`, `country`, `zipcode`, `totalprice`, `status`, `payment_mode`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'darshan', 'sukhadiya', 'darshansukhadiya144@gmail.com', '07041246617', 'h.105 aandnager', 'bhavnager', 'gujrat', 'India', '364001', 2097, 'Pending', 'Cash On Delivary', 'abc9574746', '2024-03-30 07:22:44.363674', '2024-03-30 07:22:44.363674', 1),
(2, 'vatsal', 'navadiya', 'vatsal222@gmail.com', '9999999999', 'aaaaaa', 'aaaaa', 'aaaaa', 'India', '123465', 4893, 'Out For Shipping', 'Cash On Delivary', 'abc6893215', '2024-03-30 07:32:30.328902', '2024-03-30 07:33:40.431821', 3),
(3, 'vatsal', 'navadiya', 'vatsal222@gmail.com', '1234567890', 'aaaaaa', 'aaaaa', 'aaaaa', 'India', '123465', 1596, 'Pending', 'Cash On Delivary', 'abc4362844', '2024-03-30 07:42:33.169127', '2024-03-30 07:42:33.169127', 3);

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_orderitems`
--

CREATE TABLE `thesmartlookapp_orderitems` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `productinfo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_orderitems`
--

INSERT INTO `thesmartlookapp_orderitems` (`id`, `price`, `qty`, `order_id`, `productinfo_id`) VALUES
(1, 699, 3, 1, 1),
(2, 699, 7, 2, 1),
(3, 399, 4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_productinfo`
--

CREATE TABLE `thesmartlookapp_productinfo` (
  `created_at` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `totalqty` int(11) NOT NULL,
  `availableqty` int(11) NOT NULL,
  `op` int(11) NOT NULL,
  `dp` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `categorie_id` bigint(20) NOT NULL,
  `subcategorie_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_productinfo`
--

INSERT INTO `thesmartlookapp_productinfo` (`created_at`, `id`, `name`, `image`, `description`, `totalqty`, `availableqty`, `op`, `dp`, `status`, `trending`, `categorie_id`, `subcategorie_id`) VALUES
('2023-09-06 07:12:14.000000', 1, 'Man denim black coloured jeans', 'products/1_PHiuQHf.jpg', 'men black coloured denim branded jeans', 10, 0, 799, 699, 0, 1, 1, 3),
('2024-03-30 07:37:29.000000', 2, 'Man three coloured men premium tshirt', 'products/3_xHRAPBL.jpg', 'men premium color tshirt', 10, 6, 799, 399, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_productinfo_size`
--

CREATE TABLE `thesmartlookapp_productinfo_size` (
  `id` bigint(20) NOT NULL,
  `productinfo_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_productinfo_size`
--

INSERT INTO `thesmartlookapp_productinfo_size` (`id`, `productinfo_id`, `size_id`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_size`
--

CREATE TABLE `thesmartlookapp_size` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_size`
--

INSERT INTO `thesmartlookapp_size` (`id`, `name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, '28'),
(6, '30'),
(7, '32'),
(8, '34');

-- --------------------------------------------------------

--
-- Table structure for table `thesmartlookapp_subcategorie`
--

CREATE TABLE `thesmartlookapp_subcategorie` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesmartlookapp_subcategorie`
--

INSERT INTO `thesmartlookapp_subcategorie` (`id`, `name`) VALUES
(1, 'Tshirt'),
(2, 'Shirt'),
(3, 'Jeans'),
(4, 'Dress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `thesmartlookapp_cart`
--
ALTER TABLE `thesmartlookapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesmartlookapp_cart_productinfo_id_4296851f_fk_thesmartl` (`productinfo_id`),
  ADD KEY `thesmartlookapp_cart_user_id_1f043619_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `thesmartlookapp_categorie`
--
ALTER TABLE `thesmartlookapp_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thesmartlookapp_contactus`
--
ALTER TABLE `thesmartlookapp_contactus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesmartlookapp_contactus_user_id_a26ed6e9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `thesmartlookapp_order`
--
ALTER TABLE `thesmartlookapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesmartlookapp_order_user_id_2e14c5af_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `thesmartlookapp_orderitems`
--
ALTER TABLE `thesmartlookapp_orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesmartlookapp_orde_order_id_25a85dde_fk_thesmartl` (`order_id`),
  ADD KEY `thesmartlookapp_orde_productinfo_id_21750fef_fk_thesmartl` (`productinfo_id`);

--
-- Indexes for table `thesmartlookapp_productinfo`
--
ALTER TABLE `thesmartlookapp_productinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thesmartlookapp_prod_categorie_id_1232538b_fk_thesmartl` (`categorie_id`),
  ADD KEY `thesmartlookapp_prod_subcategorie_id_b6d455ba_fk_thesmartl` (`subcategorie_id`);

--
-- Indexes for table `thesmartlookapp_productinfo_size`
--
ALTER TABLE `thesmartlookapp_productinfo_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thesmartlookapp_producti_productinfo_id_size_id_6baeb7f3_uniq` (`productinfo_id`,`size_id`),
  ADD KEY `thesmartlookapp_prod_size_id_44fb2cb6_fk_thesmartl` (`size_id`);

--
-- Indexes for table `thesmartlookapp_size`
--
ALTER TABLE `thesmartlookapp_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thesmartlookapp_subcategorie`
--
ALTER TABLE `thesmartlookapp_subcategorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `thesmartlookapp_cart`
--
ALTER TABLE `thesmartlookapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thesmartlookapp_categorie`
--
ALTER TABLE `thesmartlookapp_categorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thesmartlookapp_contactus`
--
ALTER TABLE `thesmartlookapp_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thesmartlookapp_order`
--
ALTER TABLE `thesmartlookapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thesmartlookapp_orderitems`
--
ALTER TABLE `thesmartlookapp_orderitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thesmartlookapp_productinfo`
--
ALTER TABLE `thesmartlookapp_productinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thesmartlookapp_productinfo_size`
--
ALTER TABLE `thesmartlookapp_productinfo_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thesmartlookapp_size`
--
ALTER TABLE `thesmartlookapp_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thesmartlookapp_subcategorie`
--
ALTER TABLE `thesmartlookapp_subcategorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thesmartlookapp_cart`
--
ALTER TABLE `thesmartlookapp_cart`
  ADD CONSTRAINT `thesmartlookapp_cart_productinfo_id_4296851f_fk_thesmartl` FOREIGN KEY (`productinfo_id`) REFERENCES `thesmartlookapp_productinfo` (`id`),
  ADD CONSTRAINT `thesmartlookapp_cart_user_id_1f043619_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thesmartlookapp_contactus`
--
ALTER TABLE `thesmartlookapp_contactus`
  ADD CONSTRAINT `thesmartlookapp_contactus_user_id_a26ed6e9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thesmartlookapp_order`
--
ALTER TABLE `thesmartlookapp_order`
  ADD CONSTRAINT `thesmartlookapp_order_user_id_2e14c5af_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thesmartlookapp_orderitems`
--
ALTER TABLE `thesmartlookapp_orderitems`
  ADD CONSTRAINT `thesmartlookapp_orde_order_id_25a85dde_fk_thesmartl` FOREIGN KEY (`order_id`) REFERENCES `thesmartlookapp_order` (`id`),
  ADD CONSTRAINT `thesmartlookapp_orde_productinfo_id_21750fef_fk_thesmartl` FOREIGN KEY (`productinfo_id`) REFERENCES `thesmartlookapp_productinfo` (`id`);

--
-- Constraints for table `thesmartlookapp_productinfo`
--
ALTER TABLE `thesmartlookapp_productinfo`
  ADD CONSTRAINT `thesmartlookapp_prod_categorie_id_1232538b_fk_thesmartl` FOREIGN KEY (`categorie_id`) REFERENCES `thesmartlookapp_categorie` (`id`),
  ADD CONSTRAINT `thesmartlookapp_prod_subcategorie_id_b6d455ba_fk_thesmartl` FOREIGN KEY (`subcategorie_id`) REFERENCES `thesmartlookapp_subcategorie` (`id`);

--
-- Constraints for table `thesmartlookapp_productinfo_size`
--
ALTER TABLE `thesmartlookapp_productinfo_size`
  ADD CONSTRAINT `thesmartlookapp_prod_productinfo_id_199aa689_fk_thesmartl` FOREIGN KEY (`productinfo_id`) REFERENCES `thesmartlookapp_productinfo` (`id`),
  ADD CONSTRAINT `thesmartlookapp_prod_size_id_44fb2cb6_fk_thesmartl` FOREIGN KEY (`size_id`) REFERENCES `thesmartlookapp_size` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
