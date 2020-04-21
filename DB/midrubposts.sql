-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 09:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midrubposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` bigint(20) NOT NULL,
  `app` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `app`, `template`, `id`, `user_id`, `member_id`, `created`) VALUES
(1, 'posts', 'posts', 1, 118, 0, '1585110544');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `net_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `network_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `followed` tinyint(1) NOT NULL,
  `view` tinyint(1) NOT NULL,
  `dlt` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autocomment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_meta`
--

CREATE TABLE `activity_meta` (
  `meta_id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `net_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `view` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrator_dashboard_widgets`
--

CREATE TABLE `administrator_dashboard_widgets` (
  `widget_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `widget_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `order` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_account`
--

CREATE TABLE `ads_account` (
  `ads_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `network` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_account`
--

INSERT INTO `ads_account` (`ads_id`, `user_id`, `network_id`, `network`) VALUES
(2, 118, 1, 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `ads_boosts`
--

CREATE TABLE `ads_boosts` (
  `boost_id` bigint(20) NOT NULL,
  `boost_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_boosts_meta`
--

CREATE TABLE `ads_boosts_meta` (
  `meta_id` bigint(20) NOT NULL,
  `boost_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_boosts_stats`
--

CREATE TABLE `ads_boosts_stats` (
  `stat_id` bigint(20) NOT NULL,
  `boost_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `publisher_platforms` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `platform_status` text COLLATE utf8_unicode_ci NOT NULL,
  `ad_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ad_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `end_status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_labels`
--

CREATE TABLE `ads_labels` (
  `label_id` bigint(20) NOT NULL,
  `label_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_labels`
--

INSERT INTO `ads_labels` (`label_id`, `label_name`, `user_id`, `time`, `created`) VALUES
(1, 'test ad label', 118, 0, '1585541243');

-- --------------------------------------------------------

--
-- Table structure for table `ads_labels_meta`
--

CREATE TABLE `ads_labels_meta` (
  `meta_id` bigint(20) NOT NULL,
  `label_id` bigint(20) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_labels_meta`
--

INSERT INTO `ads_labels_meta` (`meta_id`, `label_id`, `meta_name`, `meta_value`) VALUES
(1, 1, 'ad_campaign_id', '23844623722230017'),
(2, 1, 'ad_set_id', '23844624088360017'),
(3, 1, 'ad_account', '1'),
(4, 1, 'facebook_page_id', '102763554690977'),
(5, 1, 'instagram_id', '3198610876850106'),
(6, 1, 'spending_limit', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ads_labels_stats`
--

CREATE TABLE `ads_labels_stats` (
  `stat_id` bigint(20) NOT NULL,
  `label_id` bigint(20) NOT NULL,
  `publisher_platforms` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `platform_status` text COLLATE utf8_unicode_ci NOT NULL,
  `ad_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ad_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `end_status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_networks`
--

CREATE TABLE `ads_networks` (
  `network_id` bigint(20) NOT NULL,
  `network_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `net_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `expires` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `secret` text COLLATE utf8_unicode_ci NOT NULL,
  `extra` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_networks`
--

INSERT INTO `ads_networks` (`network_id`, `network_name`, `net_id`, `type`, `user_id`, `user_name`, `date`, `expires`, `token`, `secret`, `extra`) VALUES
(1, 'fb_ad_account', 'act_179523780162752', 1, 118, 'Vikas Patel', '2020-03-26 07:12:05', '', 'EAASLA4A4WkoBANkhYygvaTnZCkrpqatDIJDkwPwRb92sxWMSyiurdbh9ooteBXbC92FkP1kIwq6AkouBxuoZAKEw0QXQVGjuw8GRSH8kZBdPZAf9yZANx9VWwKCqT35pzxgb6zCY1GeIyAw6RfET1SdvWqa7KoA7vaZCCPqZAX2FDSHc6QcKPuJIaqtQJKSfVIZD', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE `bots` (
  `bot_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rule1` text COLLATE utf8_unicode_ci NOT NULL,
  `rule2` text COLLATE utf8_unicode_ci NOT NULL,
  `rule3` text COLLATE utf8_unicode_ci NOT NULL,
  `rule4` text COLLATE utf8_unicode_ci NOT NULL,
  `rule5` text COLLATE utf8_unicode_ci NOT NULL,
  `rule6` text COLLATE utf8_unicode_ci NOT NULL,
  `rule7` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `campaign_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_meta`
--

CREATE TABLE `campaigns_meta` (
  `meta_id` bigint(20) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `meta_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val1` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val2` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val3` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val4` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val5` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val6` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val7` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_val8` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_val9` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_val10` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_val11` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classifications`
--

CREATE TABLE `classifications` (
  `classification_id` bigint(20) NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classifications`
--

INSERT INTO `classifications` (`classification_id`, `slug`, `type`, `parent`) VALUES
(7, 'user_left_menu', 'menu', 0),
(8, 'user_left_menu', 'menu', 0),
(9, 'user_left_menu', 'menu', 0),
(10, 'user_left_menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `classifications_meta`
--

CREATE TABLE `classifications_meta` (
  `meta_id` bigint(20) NOT NULL,
  `classification_id` bigint(20) NOT NULL,
  `meta_slug` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classifications_meta`
--

INSERT INTO `classifications_meta` (`meta_id`, `classification_id`, `meta_slug`, `meta_name`, `meta_value`, `meta_extra`, `language`) VALUES
(31, 7, 'name', 'name', 'Dashboard', '', 'english'),
(32, 7, 'selected_component', 'selected_component', 'dashboard', 'app', 'english'),
(33, 7, 'permalink', 'permalink', '', '', 'english'),
(34, 7, 'description', 'description', '', '', 'english'),
(35, 7, 'class', 'class', 'icon-speedometer', '', 'english'),
(36, 8, 'name', 'name', 'Posts', '', 'english'),
(37, 8, 'selected_component', 'selected_component', 'posts', 'app', 'english'),
(38, 8, 'permalink', 'permalink', '', '', 'english'),
(39, 8, 'description', 'description', '', '', 'english'),
(40, 8, 'class', 'class', 'icon-layers', '', 'english'),
(41, 9, 'name', 'name', 'Facebook ads', '', 'english'),
(42, 9, 'selected_component', 'selected_component', 'facebook_ads', 'app', 'english'),
(43, 9, 'permalink', 'permalink', '', '', 'english'),
(44, 9, 'description', 'description', '', '', 'english'),
(45, 9, 'class', 'class', 'icon-social-facebook', '', 'english'),
(46, 10, 'name', 'name', 'Storage', '', 'english'),
(47, 10, 'selected_component', 'selected_component', 'storage', 'app', 'english'),
(48, 10, 'permalink', 'permalink', '', '', 'english'),
(49, 10, 'description', 'description', '', '', 'english'),
(50, 10, 'class', 'class', 'icon-drawer', '', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `content_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `contents_category` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contents_component` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contents_theme` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contents_template` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contents_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_classifications`
--

CREATE TABLE `contents_classifications` (
  `classification_id` bigint(20) NOT NULL,
  `content_id` bigint(20) NOT NULL,
  `classification_slug` text COLLATE utf8_unicode_ci NOT NULL,
  `classification_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_meta`
--

CREATE TABLE `contents_meta` (
  `meta_id` bigint(20) NOT NULL,
  `content_id` bigint(20) NOT NULL,
  `meta_slug` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` bigint(20) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `dict_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(9) UNSIGNED NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_phone` varchar(20) NOT NULL,
  `emp_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faq_articles`
--

CREATE TABLE `faq_articles` (
  `article_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_articles_categories`
--

CREATE TABLE `faq_articles_categories` (
  `meta_id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `category_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_articles_meta`
--

CREATE TABLE `faq_articles_meta` (
  `meta_id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `category_id` int(6) NOT NULL,
  `parent` int(6) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_meta`
--

CREATE TABLE `faq_categories_meta` (
  `meta_id` bigint(20) NOT NULL,
  `category_id` int(6) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `guide_id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `cover` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instagram_logs`
--

CREATE TABLE `instagram_logs` (
  `id` int(11) NOT NULL,
  `instagram_user_id` int(11) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `average_engagement_rate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_logs`
--

INSERT INTO `instagram_logs` (`id`, `instagram_user_id`, `username`, `followers`, `following`, `uploads`, `average_engagement_rate`, `date`) VALUES
(1, 4, 'vikas2249', 75, 39, 0, '0', '2020-04-03 06:09:35'),
(2, 5, 'funny', 6854539, 1, 3047, '0.51', '2020-04-03 07:07:57'),
(3, 6, 'vikaspatel2249', 14, 7, 0, '0', '2020-04-06 12:16:47'),
(4, 7, 'katrinakaif', 35250741, 398, 752, '3.50', '2020-04-06 12:17:45'),
(5, 8, 'akshaykumar', 38582163, 5, 1456, '2.86', '2020-04-06 13:59:03'),
(6, 7, 'katrinakaif', 35285912, 398, 752, '3.55', '2020-04-07 05:23:10'),
(7, 8, 'akshaykumar', 38618751, 5, 1456, '3.11', '2020-04-07 09:11:37'),
(8, 13, 'kapilsharma', 22085215, 269, 643, '2.32', '2020-04-07 09:36:02'),
(9, 5, 'funny', 6847151, 1, 3058, '0.53', '2020-04-07 10:47:45'),
(10, 15, 'vickykaushal09', 6316462, 282, 950, '8.58', '2020-04-07 13:09:52'),
(11, 6, 'vikaspatel2249', 14, 7, 0, '0', '2020-04-08 10:56:41'),
(12, 15, 'vickykaushal09', 6327790, 283, 951, '10.06', '2020-04-08 07:55:08'),
(13, 8, 'akshaykumar', 38662122, 5, 1456, '3.17', '2020-04-08 09:52:27'),
(14, 15, 'vickykaushal09', 6349793, 283, 951, '10.28', '2020-04-09 11:11:53'),
(15, 15, 'vickykaushal09', 6425420, 284, 952, '10.15', '2020-04-14 10:19:35'),
(16, 15, 'vickykaushal09', 6440531, 285, 952, '10.19', '2020-04-15 12:28:44'),
(17, 28, 'prtk_shrivastava', 44, 34, 0, '0', '2020-04-15 12:06:39'),
(18, 29, 'roaming_munda', 240, 380, 104, '15.63', '2020-04-15 12:07:00'),
(19, 15, 'vickykaushal09', 6445324, 285, 953, '10.30', '2020-04-16 07:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_media`
--

CREATE TABLE `instagram_media` (
  `id` int(11) NOT NULL,
  `media_id` bigint(20) DEFAULT NULL,
  `instagram_user_id` int(11) DEFAULT NULL,
  `shortcode` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `media_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_image_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('VIDEO','IMAGE','SIDECAR','CAROUSEL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mentions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_media`
--

INSERT INTO `instagram_media` (`id`, `media_id`, `instagram_user_id`, `shortcode`, `created_date`, `caption`, `comments`, `likes`, `media_url`, `media_image_url`, `type`, `mentions`, `hashtags`, `date`, `last_check_date`) VALUES
(1, 2278776914464711164, 5, 'B-f14e9B6H8', '1585871398', '🤣🤣🤣', 171, 36090, 'https://www.instagram.com/p/B-f14e9B6H8', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.1.751.751a/s150x150/91895272_1176169586047944_6441922939952330395_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=tSOawR1rpE0AX8UIZDG&oh=dfe1a52b7cd781e74912db0de12e041a&oe=5EAF6B9', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(2, 2278736343121333004, 5, 'B-fsqF8hQsM', '1585866562', 'It be like that 🤣', 86, 29132, 'https://www.instagram.com/p/B-fsqF8hQsM', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.45.832.832a/s150x150/92370496_219126939430516_3267381303823358685_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=TIPW51GZIbMAX-7EvnQ&oh=59ff3fb7e49f657da3b13d721dc9b596&oe=5EB1C7F', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(3, 2278706777120221678, 5, 'B-fl72dhqnu', '1585863037', 'Oh no 🤣', 155, 33510, 'https://www.instagram.com/p/B-fl72dhqnu', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.12.735.735a/s150x150/91535946_216340289581462_847247765315349573_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=j4XGqRSalNoAX_iw9dA&oh=18fb6571e0e890ecb6da24e0dd7d7bf3&oe=5EB1404B', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(4, 2278663778659018356, 5, 'B-fcKJBhSZ0', '1585857911', 'DM this to them 🤣', 204, 16783, 'https://www.instagram.com/p/B-fcKJBhSZ0', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.9.769.769a/s150x150/91500036_2903361863033059_4546622518777054315_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=QVfcdA_VSbUAX-FmgT9&oh=88fd2489936f35d9de8f101dfb59b3d2&oe=5EB00F5', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(5, 2274964898708970979, 5, 'B-STIWoB93j', '1585416971', 'Zoom zoom 🤣', 135, 28757, 'https://www.instagram.com/p/B-STIWoB93j', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c42.0.665.665a/s150x150/91616524_522157115340368_4314515734862007193_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=hZKmKEVFN7gAX-uLPbU&oh=2d2c0fee480e45ec483191b1a6cbae6c&oe=5EB17', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(6, 2274377475318754312, 5, 'B-QNkN9hiwI', '1585346944', 'What would you do? 🤣', 193, 22211, 'https://www.instagram.com/p/B-QNkN9hiwI', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c62.0.584.584a/s150x150/90913565_647915652669538_7998362557256244063_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=2G8hqOK_c_sAX8HuMud&oh=94f183f1de9d147e153cf0ee8b0884aa&oe=5EB25', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(7, 2274188753969192724, 5, 'B-Pip9ghZ8U', '1585324447', 'Do you think it can? 🤣', 191, 42926, 'https://www.instagram.com/p/B-Pip9ghZ8U', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.35.813.813a/s150x150/90914009_155224882380246_7585988833713365310_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=uh1qTxj2KooAX-e81YG&oh=dc40a414e37931f0a027abc34f4a9ff8&oe=5EAE8', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(8, 2273528350805154011, 5, 'B-NMf1IhVjb', '1585245721', 'Who else? 🤣', 394, 57614, 'https://www.instagram.com/p/B-NMf1IhVjb', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c49.0.652.652a/s150x150/90879498_622842381645757_8595163829634027623_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=JOqrR8PBcikAX9AMui3&oh=a4bc5a0a7d7e8f18deb19dc3e2755371&oe=5EAEF', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(9, 2273480694334734978, 5, 'B-NBqVlh8KC', '1585240040', '🤣🤣🤣', 105, 37463, 'https://www.instagram.com/p/B-NBqVlh8KC', 'https://instagram.fpat3-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.117.937.937a/s150x150/90997707_502787450390353_4988276581780012039_n.jpg?_nc_ht=instagram.fpat3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=igQ1f4r_6MkAX9doCo3&oh=a22dfb64ab398096345f335c1211cbf7&oe=5EAE', 'IMAGE', '[]', '[]', '2020-04-03 07:07:57', '2020-04-03 07:07:57'),
(10, 2280733017356327193, 7, 'B-myphvB1kZ', '1586104584', '“May it be a light to u in dark places when all other lights go out “ (LOTR )..... 🪔 💛 #9baje9minute #staysafe #stayhome #togetherwearestronger', 9812, 1936371, 'https://www.instagram.com/p/B-myphvB1kZ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/92199538_106234824270840_2699623731498448886_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=h3qRMRgSp0MAX-5o4gX&oh=ceb4d55cf0a1f0110f269729d6453127&oe=5EB78555', 'SIDECAR', '[]', '[\"9baje9minute\",\"staysafe\",\"stayhome\",\"togetherwearestronger\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(11, 2279822559518399419, 7, 'B-jjonzBBu7', '1585996049', 'Happy Saturday 💛......... or as we now call it just “ day”🏠🌟☺️', 10732, 1647672, 'https://www.instagram.com/p/B-jjonzBBu7', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91911030_749170368947793_2518719496518904587_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=B-zgjzKTlH8AX8Vz8PZ&oh=ab68a806010844e7a5ce36a2bdbb94ac&oe=5EB72AC7', 'IMAGE', '[]', '[]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(12, 2278511207629747948, 7, 'B-e5d8LhHbs', '1585839724', 'Hakuuuuuna Matata!Myfirst ever premiere from home 🏡 #DisneyPlusHotstarPremiere \nCouldn’t pick a better time to come home, Disney+ Hotstar!  @hotstarpremium @hotstarVIP', 9655, 1485308, 'https://www.instagram.com/p/B-e5d8LhHbs', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91488790_142745313951235_185787692958228008_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=vOk91FFAO88AX8NLffO&oh=cd4224a3074cfc73a64b08f149536754&oe=5EB4E94E', 'IMAGE', '[\"hotstarpremium\",\"hotstarVIP\"]', '[\"DisneyPlusHotstarPremiere\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(13, 2277733364532566373, 7, 'B-cIm1WBNll', '1585747016', 'Thursday plans 📒 🏠 I’m gonna  be watching the #DisneyPlusHotstarPremiere of the The Lion King & watching the ENTIRE SEASON of Disney+ Original The Mandalorian live on 2nd April at 6 PM on @HotstarPremium! Subscribe now & mark your calendar , See u there 🌟#StayHomeStaySafe @HotstarVIP', 6989, 585883, 'https://www.instagram.com/p/B-cIm1WBNll', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/91702121_258952985266666_224414618650900875_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=-RSjpHjWRRQAX9YMwlZ&oh=899e0a09ca503f952026e4e7e7cf1e40&oe=5E8E3D', 'VIDEO', '[\"HotstarPremium\",\"HotstarVIP\"]', '[\"DisneyPlusHotstarPremiere\",\"StayHomeStaySafe\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(14, 2276366118191195673, 7, 'B-XRux9hWYZ', '1585584009', 'I pledge to donate to the PM CARES fund and the Chief Minister\'s Relief Fund Maharashtra. Heartbreaking to see the hardship and suffering this pandemic has unleashed in the world.', 3175, 348477, 'https://www.instagram.com/p/B-XRux9hWYZ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91382546_201130947850691_4355297476130998548_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=X3kbIGKmjAAAX93900j&oh=212eefded97a91a6d1dd341af9bcde66&oe=5EB546C3', 'IMAGE', '[]', '[]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(15, 2274091967426406739, 7, 'B-PMpiBBSlT', '1585312909', 'Happiest happiest birthday to the best girl I know @karishmakohli ...... i think this is one of the first birthdays in a longgggggggg time we have not been together ....I know these are trying times but u always smile and shine through anything ..... ur resilience and optimism is always a example for me . .... love u to my moon and back through good times and bad , thick and thin you’ve been there with me ..... ❤️❤️❤️❤️#birthdaysinthetimeofcorona #bestfriends', 3112, 625978, 'https://www.instagram.com/p/B-PMpiBBSlT', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91109157_1597243390451983_4118448620325119362_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=QEnNrAQQCVcAX94wvZH&oh=624a6c1f39ad1749166bbb64866baa49&oe=5EB5441A', 'IMAGE', '[\"karishmakohli\"]', '[\"birthdaysinthetimeofcorona\",\"bestfriends\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(16, 2272661104415403864, 7, 'B-KHTu_hu9Y', '1585142491', 'Day 21 🔐-One day at a time guys.......we all gotta do our part 🧹........ m apparently @isakaif part is to give commentary and pro tips while seated 🪑 Gotta mix it up ..... this is seriously good exercise btw #stayhome #helpoutathome', 15936, 1132814, 'https://www.instagram.com/p/B-KHTu_hu9Y', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.89.720.720a/s150x150/90490165_2563115067289463_69745854570824464_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=ySvuqu5pRkEAX_WXEhU&oh=a2a4e45ea0bdd464f6878d46a1cfaa64&oe=5E8E8C', 'VIDEO', '[\"isakaif\"]', '[\"stayhome\",\"helpoutathome\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(17, 2271815593261209166, 7, 'B-HHD7XhxZO', '1585041544', '#WorkoutFromHome #Part2\nSince we are all practicing #SocialDistancing @yasminkarachiwala and I worked out at our homes and put the workouts together for you to do at yours. Stay home stay safe 😊 ⁣ ⁣⁣\n♦️ #Warmup⁣⁣\n1.Squat with feet hip width apart - 2 sets x 25 reps⁣⁣\n2.Squat with feet wide parallel- 2 sets x 25 reps ⁣⁣\n3.Squat with feet wide turnout- 2 sets x 25 reps ⁣⁣\n4.Squat with feet together- 2 sets x 25 reps⁣ ⁣⁣\n♦️ #Workout:⁣⁣ ⁣⁣\n1.Forward and Backward Lunge - 2 sets x 15 reps ⁣⁣\n2.In Hover, Hip Dips - 3 sets x  20 reps \n3.Curtsy Lunge to Side Kick - 3 sets x 15 reps ⁣⁣\n4.Suicide Push- 3 sets x 15 reps ⁣⁣\n5.Landis or Single Leg Squat - 3 sets x 15 reps ⁣⁣\n6.Squat Jacks - 3 sets x 25 reps ⁣⁣\n⁣⁣\n@reebokindia #CommittedToFitness ⁣⁣\n🎥 by @isakaif 🌟', 11387, 1415308, 'https://www.instagram.com/p/B-HHD7XhxZO', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91296353_212004376572009_5616589442161110107_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=OvG55aaoINEAX8MFU56&oh=ec7ef9bfd764703990137d93840a7eb8&oe=5E8E656B', 'SIDECAR', '[\"yasminkarachiwala\",\"reebokindia\",\"isakaif\"]', '[\"WorkoutFromHome\",\"Part2\",\"SocialDistancing\",\"Warmup\",\"Workout\",\"CommittedToFitness\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(18, 2271240938120982263, 7, 'B-FEZmEBq73', '1584974244', '🍽 +🧽=🙂🏠 really makes u appreciate all the help we have at home  #socialdistancing #staysafe #helpoutathome', 18090, 1212166, 'https://www.instagram.com/p/B-FEZmEBq73', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/90966474_140352950833547_2376751850726824522_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=w_QJmxrXgnsAX_80ShY&oh=1abcb499313ad467e52df74e5ad555d8&oe=5E8E0', 'VIDEO', '[]', '[\"socialdistancing\",\"staysafe\",\"helpoutathome\"]', '2020-04-06 12:17:45', '2020-04-07 05:23:10'),
(19, 2281337178008885555, 8, 'B-o8BOMHJkz', '1586176763', 'All we need is a united stand. Aur phir #MuskurayegaIndia! 🇮🇳 Do share with your family and friends ♥️ @jackkybhagnani @vishalmishraofficial #CapeOfGoodFilms @jjustmusicofficial', 15130, 1036222, 'https://www.instagram.com/p/B-o8BOMHJkz', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/91939201_157358752402177_2637268167216854501_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=4UJivrIudckAX83MdhJ&oh=6f1d9be7e0c80960e5d5ba5a75525af3&oe=5E9029EB', 'VIDEO', '[\"jackkybhagnani\",\"vishalmishraofficial\",\"jjustmusicofficial\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(20, 2281218026942486273, 8, 'B-og7WHH9cB', '1586162402', 'At a time like this when our days are clouded with uncertainty and life has come to a standstill, bringing you a song of hope. #MuskurayegaIndia song out at 6 PM today.\n@jjustmusicofficial #CapeOfGoodFilms @vishalmishraofficial @jackkybhagnani', 2498, 607566, 'https://www.instagram.com/p/B-og7WHH9cB', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/92318697_122971099323833_7114452967312393725_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=s7J0QR_f-_AAX8h4vSB&oh=0ca3931c1598ee81acf7b4f7357a033c&oe=5EB6F0B6', 'IMAGE', '[\"jjustmusicofficial\",\"vishalmishraofficial\",\"jackkybhagnani\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(21, 2280711609076499461, 8, 'B-mtx_uHUQF', '1586102032', 'Together we stand and together we will come out of this dark phase. Till then stay strong, stay safe ✨ #9Baje9Minute', 30897, 3628825, 'https://www.instagram.com/p/B-mtx_uHUQF', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.147.1176.1176a/s150x150/91834178_2666086740338652_6984800217047403338_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=2Y9Rf1Il83AAX845A8F&oh=75badede47307b6baa358bfa4ebeee85&oe=5EB', 'IMAGE', '[]', '[\"9Baje9Minute\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(22, 2278961510566795794, 8, 'B-gf2teHxoS', '1585893422', 'Put your distress to rest. The government of Maharashtra, BMC and Mpower 1on1 have created a free helpline to ensure that you don’t feel alone. Call 1800-120-820-050 to speak to a mental health professional. #LetsTalk1on1 @my_bmc', 2002, 313232, 'https://www.instagram.com/p/B-gf2teHxoS', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91640994_218366709374288_5751171158544893177_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=xgNogG_nOVoAX_Z140t&oh=c743a9d717ec0a22fffd06594a99e448&oe=5E900788', 'VIDEO', '[\"my_bmc\"]', '[\"LetsTalk1on1\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(23, 2271854013792115267, 8, 'B-HPzBRn9pD', '1585046460', 'At the risk of sounding repetitive, sharing my thoughts...there is a lockdown for a reason. Please don’t be selfish and venture out, you’re putting others lives at risk 🙏🏻‬\n‪#StayAtHomeSaveLives. @my_bmc', 35441, 1769878, 'https://www.instagram.com/p/B-HPzBRn9pD', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90433076_2579444528976555_8848138656222692231_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Z2uKdTql7qIAX8aSTEt&oh=ff22c9b3cb459d919d12a4a3fbccad7f&oe=5E90038A', 'VIDEO', '[\"my_bmc\"]', '[\"StayAtHomeSaveLives\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(24, 2270443159481724166, 8, 'B-CPAYzn60G', '1584878091', '5 mins at 5 pm : With my neighbours taking a moment to appreciate those who do not have this luxury of staying at home and working tirelessly to keep us safe. Thank you to all the essential service providers for your selfless work 👏👏👏 #JanataCurfew #BreakCorona @my_bmc #MumbaiPolice @hrithikroshan #SajidNadiadwala', 9613, 1244239, 'https://www.instagram.com/p/B-CPAYzn60G', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c156.0.407.407a/s150x150/91003901_240996383701977_3911084651033510661_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=FU3cbEAisWsAX802eqe&oh=486dbe6d53d15d037598c37bd2dcf0d5&oe=5E900E', 'VIDEO', '[\"my_bmc\",\"hrithikroshan\"]', '[\"JanataCurfew\",\"BreakCorona\",\"MumbaiPolice\",\"SajidNadiadwala\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(25, 2268974237725150100, 8, 'B99BAw0HsuU', '1584703138', 'For the first time in life, the winner will be the one who will stay put! This is a race, one which will save us...Say yes to #SocialDistancing please 🙏🏻 #BreakCorona #TogetherAtHome @my_bmc', 12625, 1229396, 'https://www.instagram.com/p/B99BAw0HsuU', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90337947_161699988232385_3940769304915542751_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=7GktPVGbR1UAX_vPOqc&oh=381673b699dc562a4912cb638b50e67c&oe=5E8FB910', 'VIDEO', '[\"my_bmc\"]', '[\"SocialDistancing\",\"BreakCorona\",\"TogetherAtHome\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(26, 2268848345606527730, 8, 'B98kYypHBry', '1584688067', 'Please Please Please inn neeyamo ka paalan karein, apne aur doosron ki suraksha ke liye. Swasth rahein, surakshit rahein 🙏🏻🙏🏻🙏🏻 #WarAgainstVirus\n\nFor more info please follow :- @cmomaharashtra_ @my_bmc.\n@rohitshettypicturez @itsrohitshetty', 3021, 742318, 'https://www.instagram.com/p/B98kYypHBry', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/90317018_1181468202201439_5393024039659374029_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=GXmpix4iYMQAX8qW8mc&oh=7c89e4c5c6fc4f48c21513427f9c7cb8&oe=5E8FF903', 'VIDEO', '[\"cmomaharashtra_\",\"my_bmc\",\"rohitshettypicturez\",\"itsrohitshetty\"]', '[\"WarAgainstVirus\"]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(27, 2263250047399251121, 8, 'B9ore1JHkyx', '1584020451', 'Because our safety always, always comes first. Stay safe and take care of yourself 🙏🏻', 5160, 687155, 'https://www.instagram.com/p/B9ore1JHkyx', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/89719925_851551701925219_2882791236783438610_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=t9VKw9umX7kAX-6GawU&oh=2776702b7af128bee3aad825be02a566&oe=5EB62334', 'IMAGE', '[]', '[]', '2020-04-06 13:59:03', '2020-04-08 09:52:27'),
(64, 2277741262574655315, 13, 'B-cKZw-AxdT', '1585747939', 'Jai mata di 🙏 #ashtami #kanjakpoojan #daddysgirl #anayra #daughter 😍 #3monthsold #gratitude 🙏 🧿', 28393, 1673575, 'https://www.instagram.com/p/B-cKZw-AxdT', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/91726609_119836142981044_8580942433225575007_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=NCcw3fupf88AX9Tb0Uq&oh=835e18339888a7d44e38265b2733001e&oe=5E', 'SIDECAR', '[]', '[\"ashtami\",\"kanjakpoojan\",\"daddysgirl\",\"anayra\",\"daughter\",\"3monthsold\",\"gratitude\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(65, 2276327784827757328, 13, 'B-XJA9PAqMQ', '1585579439', 'Please listen 🙏 #corona #animalsdonttransmitcorona #dontabandonyourpets #donthurtanimals #dog #cats ❤️🙏 @amtmindia', 2013, 378530, 'https://www.instagram.com/p/B-XJA9PAqMQ', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c55.0.834.834a/s150x150/91428294_863228447519506_7054004991010728343_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=3Wvm5z5cdWUAX8aFBX_&oh=40384eef918776b32c011ac26628b17d&oe=5EB68', 'SIDECAR', '[\"amtmindia\"]', '[\"corona\",\"animalsdonttransmitcorona\",\"dontabandonyourpets\",\"donthurtanimals\",\"dog\",\"cats\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(66, 2276206555500205908, 13, 'B-Wtc1oAVdU', '1585564988', 'नमस्कार 🙏 उपर दिए गए पोस्ट में दो फ़ोन नम्बर हैं। पंजाब या चंडीगढ़ में अगर किसी भाई बहन को खाने की समस्या है तो वो इन फ़ोन नम्बर्ज़ पे कांटैक्ट कर सकते हैं। हमारे कुछ दोस्त गरीब भाई बहनो के खाने पीने का इंतज़ाम कर रहे हैं। मैं उनको इस नेक काम के लिए बधाई देता हूँ। ईश्वर आपका भला करे 🙏', 1470, 159368, 'https://www.instagram.com/p/B-Wtc1oAVdU', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91808348_2455060778118833_4491136523787101057_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=9QMwqmzeQ9cAX9006o2&oh=d18d2e87c48c1be0124492c024ef8f7a&oe=5EB44571', 'IMAGE', '[]', '[]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(67, 2275498262746165912, 13, 'B-UMZ0mAPKY', '1585480552', 'Today 7 pm live with @richasharmaofficial  #live #music #fun #timepass 🤗', 1060, 287180, 'https://www.instagram.com/p/B-UMZ0mAPKY', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c3.0.1234.1234a/s150x150/90878838_210432473542927_2718537081862633087_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Ong1x4jyuqAAX8YQ0sn&oh=cf82743115f45f30613a75d7a3476425&oe=5E', 'IMAGE', '[\"richasharmaofficial\"]', '[\"live\",\"music\",\"fun\",\"timepass\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(68, 2273256113287985760, 13, 'B-MOmQMA_pg', '1585213267', 'It\'s time to stand together with the ones who need us. Contributing Rs.50 lakhs to the PM relief fund towards the #fightagainstcorona. Request everyone to #stayhome #staysafe #jaihind #PMrelieffund @narendramodi 🙏 🇮🇳', 5637, 410839, 'https://www.instagram.com/p/B-MOmQMA_pg', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c224.0.793.793a/s150x150/90898909_148545449963767_1890706355673752159_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=cikmH67UIE8AX_xWErt&oh=bb7417951d244359f4683855b5e26dc0&oe=5E', 'IMAGE', '[\"narendramodi\"]', '[\"fightagainstcorona\",\"stayhome\",\"staysafe\",\"jaihind\",\"PMrelieffund\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(69, 2273212100576916509, 13, 'B-MElyKAbQd', '1585208021', 'i whole heartily support this noble initiative. Happy to contribute for this humanitarian cause. While staying safe at home i urge every one else also to contribute online - \nwww.iahv.org/in-en/donate/\n\n#iStandWithHumanity \n#ArtOfLiving \n#BMC', 534, 152413, 'https://www.instagram.com/p/B-MElyKAbQd', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.116.932.932a/s150x150/90746208_2316580138642427_3069081001841294410_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=CQXbgr4V278AX_93B1K&oh=6405396d584b521e6cc73b82630aed47&oe=5', 'IMAGE', '[]', '[\"iStandWithHumanity\",\"ArtOfLiving\",\"BMC\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(70, 2271828386307427753, 13, 'B-HJ-F0gM2p', '1585043077', '‪इनसे ही सीख लो कुछ 🙊 #StayHomeSaveLives #coronavirus #INDIAfightsCorona 🙏‬', 3661, 416469, 'https://www.instagram.com/p/B-HJ-F0gM2p', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.60.480.480a/s150x150/90647808_629341834297943_640660777165268712_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=6A4KApqY2zMAX-q4Khp&oh=922bacaf823d357a94ebeaada129fd02&oe=5E8E', 'VIDEO', '[]', '[\"StayHomeSaveLives\",\"coronavirus\",\"INDIAfightsCorona\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(71, 2270541696355889946, 13, 'B-ClaSbAXMa', '1584890016', 'A tribute to our Brothers and Sisters who are fighting constantly against #CoronaVirus #JantaCurfew #SocialDistancing #IndiaFightsCorona #stayhomestaysafe #India #ThankYouIndia ❤️🙏\n🥁 @mikasingh 📸 @manikaransingh14', 1308, 333957, 'https://www.instagram.com/p/B-ClaSbAXMa', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c157.0.405.405a/s150x150/90659258_530059551268992_1583342497317304332_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=RDoGQaN7EmEAX9DIApg&oh=b2158b43a7deb12fb1e3e0684bfd7c34&oe=5E', 'VIDEO', '[\"mikasingh\",\"manikaransingh14\"]', '[\"CoronaVirus\",\"JantaCurfew\",\"SocialDistancing\",\"IndiaFightsCorona\",\"stayhomestaysafe\",\"India\",\"ThankYouIndia\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(72, 2270507502057596025, 13, 'B-CdosgAKR5', '1584885747', 'today I hired @mikasingh as host of the evening on #jantacurfew 🤪 #thankyouINDIA ❤️🙏 #INDIAfightsCorona #INDIA 🙏', 3484, 751805, 'https://www.instagram.com/p/B-CdosgAKR5', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/90209070_257790481892745_5173689292869193530_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=vnoZm4MWcg8AX8KsOZN&oh=f765cb6ee92a4e68447dc1b312569361&oe=5E8', 'VIDEO', '[\"mikasingh\"]', '[\"jantacurfew\",\"thankyouINDIA\",\"INDIAfightsCorona\",\"INDIA\"]', '2020-04-07 09:36:02', '2020-04-07 09:36:02'),
(73, 2281793888018976578, 5, 'B-qj3OiB09C', '1586231050', 'Anyone else plays this game? 🤣', 259, 37888, 'https://www.instagram.com/p/B-qj3OiB09C', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.23.795.795a/s150x150/91936019_103937917868868_6383379916848251729_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=urgpaVwAjYIAX8nURTb&oh=ff7e6b3bc14736d84082518af1199548&oe=5EB48', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(74, 2281655917529564884, 5, 'B-qEffgBIbU', '1586214602', 'Facts 🤣', 165, 29453, 'https://www.instagram.com/p/B-qEffgBIbU', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.117.937.937a/s150x150/92376781_3283145555050705_4287635019648552976_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=mtnHgUA8yqAAX8gGoCl&oh=49c27d379165efdc1ed7310036906b5e&oe=5EB', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(75, 2281607978530684766, 5, 'B-p5l41BL9e', '1586208887', 'It be like that 🤣', 120, 24466, 'https://www.instagram.com/p/B-p5l41BL9e', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c29.0.691.691a/s150x150/91463540_106410787577995_3543204911099371267_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=lkGYcMPikzgAX_cSX1K&oh=c894b8745d450483644139757225469a&oe=5EB61', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(76, 2280921693533125594, 5, 'B-ndjIHhjva', '1586127076', '🤣🤣🤣', 375, 49454, 'https://www.instagram.com/p/B-ndjIHhjva', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91923792_245561859952620_854232749873487012_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=kvURh-T14j4AX8BGinl&oh=2cb5b97967ad21b55d5871b18ef7ef17&oe=5EB5DA2F', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(77, 2280805713276536321, 5, 'B-nDLZFh4YB', '1586113250', 'Anyone else? 🤣', 135, 26751, 'https://www.instagram.com/p/B-nDLZFh4YB', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.109.925.925a/s150x150/91768795_123536952604350_7543463051748519347_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=peUpBJ7ATDAAX-UxsrK&oh=2624fb3298597b8ab1f6ff9dec9569f8&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(78, 2280729881619039126, 5, 'B-mx75WhYOW', '1586104210', 'That’s how you conserve your food 🤣', 334, 49840, 'https://www.instagram.com/p/B-mx75WhYOW', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.56.693.693a/s150x150/92080395_2738895672830928_6809879765464411352_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=X2XKCi4vC-IAX8RCZUH&oh=3c0c3b84d47de56d8c19a1ce741e5461&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(79, 2280285458821161535, 5, 'B-lM4sXhiI_', '1586051231', '🤣🤣🤣', 154, 47593, 'https://www.instagram.com/p/B-lM4sXhiI_', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c13.0.724.724a/s150x150/92258562_567725004095294_3900406421563538194_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=B9FeU47GIfMAX9IH55q&oh=b854f4c689a1a3d831a2964a42dd6fa4&oe=5EB', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(80, 2279691365178939240, 5, 'B-jFzfjBBdo', '1585980409', 'Tag someone & say nothing 🤣\n(Amaboutobust / tw)', 509, 37196, 'https://www.instagram.com/p/B-jFzfjBBdo', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.0.749.749a/s150x150/91859655_588873192058579_7270144704623250601_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=ahmsUPGOqpMAX8k1EPj&oh=81e85ce05c0aed6f35157b4f50df4003&oe=5EB7', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(81, 2279389614223791676, 5, 'B-iBMcEhhY8', '1585944438', 'Every morning 🤣', 142, 27126, 'https://www.instagram.com/p/B-iBMcEhhY8', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.73.874.874a/s150x150/91461309_2846124208815157_8628239289804969590_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=Zn6SbFhf_GUAX82W2kn&oh=9208e96e709df289d708bcecdd8c546b&oe=5E', 'IMAGE', '[]', '[]', '2020-04-07 10:47:45', '2020-04-07 10:47:45'),
(82, 2282049271893471440, 15, 'B-rd7jTJjDQ', '1586261494', '🛋🥔', 5979, 798071, 'https://www.instagram.com/p/B-rd7jTJjDQ', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/92951374_567822890516600_1534844629744610454_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Z3X0Pov6Qe8AX9QTsvA&oh=028391ba08b6c443dd84bc2956e1e21e&oe=5EC3', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(83, 2281341886971297540, 15, 'B-o9FvwJL8E', '1586177508', 'As artists, a small effort from all of us to spread some hope and positivity. We’re in it together and we’ll win it together! #MuskurayegaIndia is out now!! @akshaykumar @jackkybhagnani @vishalmishraofficial #CapeOfGoodFilms @jjustmusicofficial', 2168, 268822, 'https://www.instagram.com/p/B-o9FvwJL8E', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/p150x150/91806383_244129536731105_434736840698017787_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=N0kVH7JWH08AX9FJsdu&oh=a34f52742cc4c9d745cf704bca8ece05&oe=5E9A0969', 'VIDEO', '[\"akshaykumar\",\"jackkybhagnani\",\"vishalmishraofficial\",\"jjustmusicofficial\"]', '[\"MuskurayegaIndia\",\"CapeOfGoodFilms\"]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(84, 2280721851903049339, 15, 'B-mwHDGJv57', '1586103253', 'To unity. To togetherness. To us! ✨🙏', 1220, 620410, 'https://www.instagram.com/p/B-mwHDGJv57', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/92480042_1091648844514674_1889855021892708647_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=62UMaXVXhQEAX9xCXUf&oh=10ffde14c00c6e64cd092ecc74c90b1a&oe=5EC', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(85, 2280618396995699350, 15, 'B-mYllNJkKW', '1586091184', 'Make way for the latest entrant in the elite club of #TheOmeletteFlippers ! 🍳🏆 #chotikhushiyaan', 9480, 646584, 'https://www.instagram.com/p/B-mYllNJkKW', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91789806_120943649549889_5509546546391587487_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=QCTf_5PeaQkAX-W4thX&oh=c7808fac62d28e457e9b4e567814062c&oe=5E9A4765', 'VIDEO', '[]', '[\"TheOmeletteFlippers\",\"chotikhushiyaan\"]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(86, 2279158925492719114, 15, 'B-hMvecp44K', '1585916992', 'Thought I’d interact with my fans today... 🙂 #quarantinelife', 8727, 554781, 'https://www.instagram.com/p/B-hMvecp44K', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s150x150/91822282_106014427624134_4105739305991178793_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Absate1pQpwAX8jodnC&oh=3f90ab74c01f7c8beecf6842e61599de&oe=5E9A918', 'VIDEO', '[]', '[\"quarantinelife\"]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(87, 2277673217418567179, 15, 'B-b67k-p54L', '1585739827', 'Pass it on and do return. “🙂”', 6820, 895065, 'https://www.instagram.com/p/B-b67k-p54L', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/91251953_840515973026336_5071641166151713427_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=DlX2tgi8J24AX8mHr7v&oh=35b92d2e19d5889f0bb8681c142a5110&oe=', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-16 07:22:58'),
(88, 2276787301199956345, 15, 'B-YxfzNJMl5', '1585634218', '🙏🙏🙏', 5352, 456959, 'https://www.instagram.com/p/B-YxfzNJMl5', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.175.1406.1406a/s150x150/91336770_1131323147235097_1593608651767338585_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=_6N9NtqO190AX-NcMY1&oh=d5e3ac612d2181bcefa298c008ade205&oe=5', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-15 12:28:44'),
(89, 2276240113701039272, 15, 'B-W1FLIpSyo', '1585568988', 'माँ-ए नी मेरीए 🎶', 2947, 797299, 'https://www.instagram.com/p/B-W1FLIpSyo', 'https://instagram.fdel3-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/91259013_681733045927888_8772348098778340210_n.jpg?_nc_ht=instagram.fdel3-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=z1xl-oNKT04AX_k19Pg&oh=a7c780693b517c985cf5c5dcc788e886&oe=5EB92B23', 'IMAGE', '[]', '[]', '2020-04-07 13:09:52', '2020-04-09 11:11:53'),
(90, 2274027188114620696, 15, 'B-O963lJwEY', '1585305187', 'Good quarantine boys. Wassup brother! @sunsunnykhez', 3378, 681668, 'https://www.instagram.com/p/B-O963lJwEY', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/90748532_1597136230424331_2284411727112183640_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=trX375in1LUAX_cWHXn&oh=4d808fd183047678e549930755936528&oe=5EB49DE1', 'IMAGE', '[\"sunsunnykhez\"]', '[]', '2020-04-07 13:09:52', '2020-04-07 13:09:52'),
(91, 2282152109877297129, 15, 'B-r1UCopP_p', '1586273753', 'View tonight. #supermoon', 2923, 887645, 'https://www.instagram.com/p/B-r1UCopP_p', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.180.1440.1440a/s150x150/92018963_217219729378908_9159343079289480531_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=idyg6CkVMikAX8D8xoz&oh=4b511b1ba6bdd23ec7a10861a7ce5fcf&oe=5EC1', 'IMAGE', '[]', '[\"supermoon\"]', '2020-04-08 04:51:27', '2020-04-16 07:22:58'),
(127, 2286344687778683121, 15, 'B-6umFFJljx', '1586773547', 'This beauty chilling right outside our window today... could be wondering “what’s wrong with humans these days?” or may be “Thank God, they finally got it right!” 🤷🏼‍♂️\n.\n📸: Neighbour.', 2010, 601684, 'https://www.instagram.com/p/B-6umFFJljx', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c180.0.1080.1080a/s150x150/93816280_2863543087093991_7268280149388785411_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=CZU6LyoTjPMAX_nOazC&oh=dd14aaa1b4cf68ab83e23cab1c046e45&oe=5EC', 'IMAGE', '[]', '[]', '2020-04-14 06:21:30', '2020-04-16 07:22:58'),
(181, 2248877402411149699, 29, 'B81nhUaHqmD', '1582307099', 'A cup of coffee is a cure to all our daily physical and mental ailments.', 3, 23, 'https://www.instagram.com/p/B81nhUaHqmD', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e15/s150x150/85050934_128983005296859_4928005195187378168_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=ji5w7iKv_1YAX_ve9o6&oh=8dc5bce3efc233c9c0b29cbfc7c90078&oe=5EC14B15', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(182, 2215271019182951438, 29, 'B6-OUFDngwO', '1578300906', 'Promising evening..\n#kannadasongs #banglore #rachitaram #bijapur #kgf #mysorepalace #davangere #manglore #belagavi #trolls #kannadigaru #troll #focus #indian #instagram #bidar #bagalkot #gadag #kannadatrolls #official #kannadamemes #memes #kannadiga #sandalwoodactress #mumbai #nammakarnataka #kannadafilms', 1, 36, 'https://www.instagram.com/p/B6-OUFDngwO', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e15/s150x150/80625581_2441298096083363_6889362569826985362_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=NhbPqfTbSw0AX9W0fmt&oh=389c9689ac59260c411680aca535cba1&oe=5EC0B513', 'IMAGE', '[]', '[\"kannadasongs\",\"banglore\",\"rachitaram\",\"bijapur\",\"kgf\",\"mysorepalace\",\"davangere\",\"manglore\",\"belagavi\",\"trolls\",\"kannadigaru\",\"troll\",\"focus\",\"indian\",\"instagram\",\"bidar\",\"bagalkot\",\"gadag\",\"kannadatrolls\",\"official\",\"kannadamemes\",\"memes\",\"kannadiga\",\"sandalwoodactress\",\"mumbai\",\"nammakarnataka\",\"kannadafilms\"]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(183, 2169086826350886484, 29, 'B4aJPnrn75U', '1572795328', '#2xmojo', 5, 10, 'https://www.instagram.com/p/B4aJPnrn75U', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/74518085_2413407965654430_2882329110977179040_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=ypSzfaZ5WI8AX9egfhj&oh=3c065cec3a337133763a255ba3375be0&oe=5E999229', 'VIDEO', '[]', '[\"2xmojo\"]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(184, 2157206489706507155, 29, 'B3v799-H6uT', '1571379121', '#ladakh #india #leh #kashmir #travel #ladakhdiaries #himalayas #article #jammu #mountains #incredibleindia #wanderlust #lehladakh #travelphotography #royalenfield #photography #jammuandkashmir #travelgram #ladakhtrip #nature #manali #roadtrip #trip #jammukashmir #ladakhtourism #kargil #tv #pangonglake #nubravalley #travulls', 2, 27, 'https://www.instagram.com/p/B3v799-H6uT', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/74607008_390549671851147_8042633091450030658_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=hIP5ejtt9xcAX-4Nwzo&oh=1a133370572bb770cf13da015416d781&oe=5E992FCD', 'VIDEO', '[]', '[\"ladakh\",\"india\",\"leh\",\"kashmir\",\"travel\",\"ladakhdiaries\",\"himalayas\",\"article\",\"jammu\",\"mountains\",\"incredibleindia\",\"wanderlust\",\"lehladakh\",\"travelphotography\",\"royalenfield\",\"photography\",\"jammuandkashmir\",\"travelgram\",\"ladakhtrip\",\"nature\",\"manali\",\"roadtrip\",\"trip\",\"jammukashmir\",\"ladakhtourism\",\"kargil\",\"tv\",\"pangonglake\",\"nubravalley\",\"travulls\"]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(185, 2152145458000869897, 29, 'B3d9OQ5HLoJ', '1570775752', '', 0, 37, 'https://www.instagram.com/p/B3d9OQ5HLoJ', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70387189_2716374001715270_1943617095936681496_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=c-sx0lni0IoAX8OuCDT&oh=9f27ac0eefc70a2f44bd639de858975e&oe=5EC1DAA9', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(186, 2147980519630398743, 29, 'B3PKObxB2UX', '1570279253', '', 0, 49, 'https://www.instagram.com/p/B3PKObxB2UX', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70266580_400802123918817_7090455209625448010_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=SPyLeW0LCUIAX8rsaXS&oh=eda8e527b47175a6160ac93ddb28949c&oe=5EBED4B5', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(187, 2147978730809986097, 29, 'B3PJ0ZzBgwx', '1570279040', '', 0, 41, 'https://www.instagram.com/p/B3PJ0ZzBgwx', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/69814909_470158383580549_4805995778508866151_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=dLJ2jGGrIlsAX8KOLZv&oh=8b904436657e3e5e03fed0524a144e95&oe=5EC1503A', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(188, 2147966909164038816, 29, 'B3PHIYCBCqg', '1570277630', '', 0, 45, 'https://www.instagram.com/p/B3PHIYCBCqg', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/70203533_530909590812612_6844228935534828508_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=NLb3xmp8cwsAX-aq_W-&oh=35716cc99aa1c678c1018f75dd60a9c4&oe=5EC1EC2C', 'IMAGE', '[]', '[]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(189, 2145723041049457172, 29, 'B3HI7zAH7IU', '1570010141', 'kya rkha shehar ki bhed bhad mai kuch din to guzaro pahado mai.. #panchghani #nofilter #nature #love #summer #instagood #picoftheday #photooftheday #photography #sunset #travel #follow #like #nofilterneeded #beautiful #ig #sky #instagram #naturephotography #photo #landscape #happy #instadaily #beauty #f #life #art #amazing', 10, 66, 'https://www.instagram.com/p/B3HI7zAH7IU', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-15/e35/s150x150/69845631_2436401783080109_3920137558690779966_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=5rXroCMEDOEAX_aKq3R&oh=ff3faab3757be3c3aa7bff78311e8a1f&oe=5EBF2AF0', 'IMAGE', '[]', '[\"panchghani\",\"nofilter\",\"nature\",\"love\",\"summer\",\"instagood\",\"picoftheday\",\"photooftheday\",\"photography\",\"sunset\",\"travel\",\"follow\",\"like\",\"nofilterneeded\",\"beautiful\",\"ig\",\"sky\",\"instagram\",\"naturephotography\",\"photo\",\"landscape\",\"happy\",\"instadaily\",\"beauty\",\"f\",\"life\",\"art\",\"amazing\"]', '2020-04-15 12:07:00', '2020-04-15 12:07:00'),
(199, 2287953997285780189, 15, 'B_AcgnWp2rd', '1586965392', '#QuarantineCut by @sunsunnykhez 💥💇🏽‍♂️', 5017, 861191, 'https://www.instagram.com/p/B_AcgnWp2rd', 'https://instagram.fpat1-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.178.1440.1440a/s150x150/93830064_1120805398312420_6317827825302648761_n.jpg?_nc_ht=instagram.fpat1-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=cTfrhgj_WK8AX89DSv6&oh=628049d1a1f9eed58d4d462c169919cb&oe=5EB', 'IMAGE', '[\"sunsunnykhez\"]', '[\"QuarantineCut\"]', '2020-04-16 04:48:13', '2020-04-16 07:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_users`
--

CREATE TABLE `instagram_users` (
  `id` int(11) NOT NULL,
  `instagram_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `profile_picture_url` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` int(11) DEFAULT 0,
  `is_verified` int(11) DEFAULT 0,
  `average_engagement_rate` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_demo` int(11) DEFAULT 0,
  `is_featured` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_users`
--

INSERT INTO `instagram_users` (`id`, `instagram_id`, `username`, `full_name`, `description`, `website`, `followers`, `following`, `uploads`, `added_date`, `last_check_date`, `last_successful_check_date`, `profile_picture_url`, `is_private`, `is_verified`, `average_engagement_rate`, `details`, `is_demo`, `is_featured`) VALUES
(1, 25945306, 'badgalriri', 'badgalriri', 'introducing @savagexfenty lingerie coming MAY.11.2018. sign up now!', 'http://ri-hanna.io/savagexfenty', 62554084, 1302, 4293, '2018-05-05 18:33:53', '2018-05-10 16:04:17', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/667a62925a82cf1445a7e800239ff35b/5B792186/t51.2885-19/11032926_1049846535031474_260957621_a.jpg', 0, 1, '3.64', '{\"total_likes\":22640490,\"total_comments\":158523,\"average_comments\":\"15,852.30\",\"average_likes\":\"2,264,049.00\",\"top_hashtags\":{\"metgala2018\":1,\"heavenlybodies\":1,\"galliano\":1,\"margiella\":1,\"DAMN\":1},\"top_mentions\":{\"savagexfenty\":3,\"dennisleupold\":1},\"top_posts\":{\"BigJr94lkbM\":\"7.74\",\"Bie_F1EFqnw\":\"5.87\",\"BigMenillsS\":\"4.71\"}}', 1, 1),
(2, 232192182, 'therock', 'therock', 'Gratitude. Mana.', 'http://www.nbc.com/titans', 105741229, 235, 3548, '2018-05-07 12:35:07', '2018-05-10 01:39:35', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/5eeaf27ff63f2135e91cc8f6501cc098/5B9AE1FC/t51.2885-19/11850309_1674349799447611_206178162_a.jpg', 0, 1, '1.25', '{\"total_likes\":13185786,\"total_comments\":61606,\"average_comments\":\"6,160.60\",\"average_likes\":\"1,318,578.60\",\"top_hashtags\":{\"ProjectRock\":3,\"UnderArmour\":2,\"JungleCruise\":2,\"SKYSCRAPER\":2,\"HardestWorkerInTheRoom\":2,\"PaulGiamatti\":1,\"AllAboard\":1,\"NowGetTheFuckOffMe\":1,\"GetOnMyShoulders\":1,\"AndMyTattoos\":1,\"NobelPeacePrize\":1,\"GlobalGratitude\":1,\"DreamsAintJustForDreamers\":1,\"0\":1,\"GlobalEnterprise\":1},\"top_mentions\":{\"garciacompanies\":2,\"danygarciaco,\":1,\"underarmour\":1,\"kristenrandol\":1,\"kevinhart4real\":1,\"underarmour\\u2019s\":1},\"top_posts\":{\"Bic-vMLlRtW\":\"2.66\",\"Bia-qIKlh-9\":\"2.44\",\"Bigj_-bFPCZ\":\"2.29\"}}', 1, 1),
(3, 13164944, 'g_eazy', 'G-Eazy', 'Endless Summer Tour Tix $20 For National Concert Week | Ends May 8th', 'http://bit.ly/NCW20GEazy', 5959042, 918, 2992, '2018-05-07 12:35:36', '2018-05-10 01:29:16', NULL, 'https://instagram.fsbz1-1.fna.fbcdn.net/vp/ad043770b7c57bec2ba5c6e132e7e430/5B7A9259/t51.2885-19/s150x150/23421504_1974793426097273_1903626335624888320_n.jpg', 0, 1, '5.98', '{\"total_likes\":3530163,\"total_comments\":33618,\"average_comments\":\"3,361.80\",\"average_likes\":\"353,016.30\",\"top_hashtags\":{\"TheEndlessSummer\":2,\"TheBeautifulAndDamned\":1},\"top_mentions\":{\"livenation\":2,\"dkessler\":2,\"p_lo\":2,\"tristan_edouard\":2,\"liluzivert\":1,\"tydollasign\":1,\"ybnnahmir\":1,\"murdabeatz\":1},\"top_posts\":{\"BicoovInGXa\":\"11.62\",\"Bih3FuunIeE\":\"10.00\",\"Bijt0LrnSkE\":\"8.37\"}}', 1, 1),
(4, 3483737051, 'vikas2249', 'Vikas Bhardwaj', '', NULL, 75, 39, 0, '2020-04-03 06:09:35', '2020-04-03 06:09:35', '2020-04-03 06:09:35', 'https://instagram.fagr2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/13584054_1019007274814818_289461151_a.jpg?_nc_ht=instagram.fagr2-1.fna.fbcdn.net&_nc_ohc=4v8xldbUdzgAX_J4888&oh=4902ae2019058dba362aabc83edd4291&oe=5EB1C32E', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(5, 1267859300, 'funny', 'Funny', '', 'http://memes.com/', 6847151, 1, 3058, '2020-04-03 07:07:57', '2020-04-07 10:47:45', '2020-04-07 10:47:45', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/37814696_195816044622712_8395531783633895424_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=kpPf5XrKywMAX8xgua7&oh=ffa3dbf3e37bd1c038103d27dc0e333c&oe=5EB7BAD8', 0, 0, '0.53', '{\"total_likes\":358460,\"total_comments\":2371,\"average_comments\":237.1,\"average_likes\":35846,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":{\"B-ndjIHhjva\":\"0.73\",\"B-mx75WhYOW\":\"0.73\",\"B-lM4sXhiI_\":\"0.70\"}}', 0, 1),
(6, 32268766352, 'vikaspatel2249', 'vikas patel', '', NULL, 14, 7, 0, '2020-04-06 12:16:47', '2020-04-08 10:56:41', '2020-04-08 10:56:41', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/91854018_206410907452271_1060675601477664768_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=ht6CeBTk12IAX9QcHnn&oh=c9a246b20c774c358d69229e1898d4dd&oe=5EB5A1CB', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(7, 3562982855, 'katrinakaif', 'Katrina Kaif', 'Kay Beauty 💄 @kaybykatrina', 'https://youtu.be/u5r77-OQwa8', 35285912, 398, 752, '2020-04-06 12:17:45', '2020-04-07 05:23:10', '2020-04-07 05:23:10', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/89390382_2560634140731110_5161558036950548480_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=_lDBwuHwVsYAX_lNZJu&oh=63f3339f00a37748bd481526fcaacf53&oe=5EB7254C', 0, 1, '3.55', '{\"total_likes\":12419098,\"total_comments\":96741,\"average_comments\":9674.1,\"average_likes\":1241909.8,\"top_hashtags\":{\"stayhome\":3,\"DisneyPlusHotstarPremiere\":2,\"helpoutathome\":2,\"staysafe\":2,\"9baje9minute\":1,\"Workout\":1,\"selfquarantine\":1,\"togetherforever\":1,\"isolated\":1,\"socialdistancing\":1,\"CommittedToFitness\":1,\"Part2\":1,\"Warmup\":1,\"SocialDistancing\":1,\"WorkoutFromHome\":1},\"top_mentions\":{\"isakaif\":2,\"hotstarpremium\":1,\"hotstarVIP\":1,\"HotstarPremium\":1,\"HotstarVIP\":1,\"karishmakohli\":1,\"yasminkarachiwala\":1,\"reebokindia\":1,\"varundvn\":1,\"arjunkapoor\":1},\"top_posts\":{\"B-CAFdtB_2I\":\"5.77\",\"B-myphvB1kZ\":\"5.52\",\"B-jjonzBBu7\":\"4.70\"}}', 0, 1),
(8, 907025384, 'akshaykumar', 'Akshay Kumar', '#AkshayKumar', 'http://bit.ly/SooryavanshiOfficialTrailer', 38662122, 5, 1456, '2020-04-06 13:59:03', '2020-04-08 09:52:27', '2020-04-08 09:52:27', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/49858076_239794113591449_8056098989222658048_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=pGE0JEwv1A8AX9rt4H4&oh=d7f4a3ad1b4764e85f24bfbfec3c2f84&oe=5EB76506', 0, 1, '3.17', '{\"total_likes\":12141710,\"total_comments\":122175,\"average_comments\":12217.5,\"average_likes\":1214171,\"top_hashtags\":{\"MuskurayegaIndia\":2,\"CapeOfGoodFilms\":2,\"BreakCorona\":2,\"9Baje9Minute\":1,\"LetsTalk1on1\":1,\"StayAtHomeSaveLives\":1,\"JanataCurfew\":1,\"MumbaiPolice\":1,\"SajidNadiadwala\":1,\"SocialDistancing\":1,\"TogetherAtHome\":1,\"WarAgainstVirus\":1},\"top_mentions\":{\"my_bmc\":5,\"jackkybhagnani\":2,\"vishalmishraofficial\":2,\"jjustmusicofficial\":2,\"hrithikroshan\":1,\"cmomaharashtra_\":1,\"rohitshettypicturez\":1,\"itsrohitshetty\":1,\"imharmanpreet_kaur\":1},\"top_posts\":{\"B-mtx_uHUQF\":\"9.47\",\"B-HPzBRn9pD\":\"4.67\",\"B-CPAYzn60G\":\"3.24\"}}', 0, 1),
(13, 1449921978, 'kapilsharma', 'Kapil Sharma', '', NULL, 22085215, 269, 643, '2020-04-07 09:36:02', '2020-04-07 09:36:02', '2020-04-07 09:36:02', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/53637312_2084205414995841_3589393083680161792_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=xoxHNX8c1M8AX_ZdA_V&oh=8232a19e4e93ec84c901020f95443885&oe=5EB4B28F', 0, 1, '2.32', '{\"total_likes\":5076810,\"total_comments\":49383,\"average_comments\":4938.3,\"average_likes\":507681,\"top_hashtags\":{\"INDIAfightsCorona\":3,\"INDIA\":2,\"jantacurfew\":2,\"stayhomestaysafe\":2,\"ashtami\":1,\"CoronaVirus\":1,\"ArtOfLiving\":1,\"BMC\":1,\"StayHomeSaveLives\":1,\"coronavirus\":1,\"IndiaFightsCorona\":1,\"JantaCurfew\":1,\"SocialDistancing\":1,\"PMrelieffund\":1,\"India\":1},\"top_mentions\":{\"mikasingh\":2,\"amtmindia\":1,\"richasharmaofficial\":1,\"narendramodi\":1,\"manikaransingh14\":1},\"top_posts\":{\"B-cKZw-AxdT\":\"7.71\",\"B-CdosgAKR5\":\"3.42\",\"B-Ccmc5gG_-\":\"2.33\"}}', 0, 1),
(15, 391254253, 'vickykaushal09', 'Vicky Kaushal', 'Actor', NULL, 6445324, 285, 953, '2020-04-07 13:09:52', '2020-04-16 07:22:58', '2020-04-16 07:22:58', 'https://instagram.fdel25-1.fna.fbcdn.net/v/t51.2885-19/s150x150/46731588_2254658464817442_649377704872771584_n.jpg?_nc_ht=instagram.fdel25-1.fna.fbcdn.net&_nc_ohc=BEMzbBQpFygAX_LnGPU&oh=329465ac5594114a775d25505312b442&oe=5EC350FE', 0, 1, '10.30', '{\"total_likes\":6591473,\"total_comments\":49699,\"average_comments\":4969.9,\"average_likes\":659147.3,\"top_hashtags\":{\"QuarantineCut\":1,\"supermoon\":1,\"MuskurayegaIndia\":1,\"CapeOfGoodFilms\":1,\"TheOmeletteFlippers\":1,\"chotikhushiyaan\":1,\"quarantinelife\":1},\"top_mentions\":{\"sunsunnykhez\":1,\"akshaykumar\":1,\"jackkybhagnani\":1,\"vishalmishraofficial\":1,\"jjustmusicofficial\":1},\"top_posts\":{\"B-b67k-p54L\":\"13.99\",\"B-r1UCopP_p\":\"13.82\",\"B_AcgnWp2rd\":\"13.44\"}}', 0, 1),
(28, 4156263058, 'prtk_shrivastava', 'Prateek Shrivastava', '', NULL, 44, 34, 0, '2020-04-15 12:06:39', '2020-04-15 12:06:39', '2020-04-15 12:06:39', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/15043576_1137142013007302_3847311049535520768_a.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=QQSg9V7WXP8AX9wkqvt&oh=49aa3300dc897654b82d5e24514361f1&oe=5EC09425', 0, 0, '0', '{\"total_likes\":0,\"total_comments\":0,\"average_comments\":0,\"average_likes\":0,\"top_hashtags\":[],\"top_mentions\":[],\"top_posts\":[]}', 0, 1),
(29, 2200646321, 'roaming_munda', 'Prateek Shrivastava', 'Born to enjoy.', NULL, 240, 380, 104, '2020-04-15 12:07:00', '2020-04-15 12:07:00', '2020-04-15 12:07:00', 'https://instagram.fknu1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/70413661_427472117911691_3177342232063639552_n.jpg?_nc_ht=instagram.fknu1-1.fna.fbcdn.net&_nc_ohc=4HrbRlhXKIcAX8mcD3n&oh=9936dff7541d97bf59df12b185025304&oe=5EC1ED50', 0, 0, '15.63', '{\"total_likes\":354,\"total_comments\":21,\"average_comments\":2.1,\"average_likes\":35.4,\"top_hashtags\":{\"photography\":2,\"instagram\":2,\"mumbai\":2,\"travel\":2,\"nature\":2,\"ladakhtrip\":1,\"travelgram\":1,\"love\":1,\"nofilter\":1,\"panchghani\":1,\"travulls\":1,\"nubravalley\":1,\"pangonglake\":1,\"manali\":1,\"tv\":1},\"top_mentions\":[],\"top_posts\":{\"B3HI7zAH7IU\":\"31.67\",\"B3PKObxB2UX\":\"20.42\",\"B3PHIYCBCqg\":\"18.75\"}}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `instagram_users_test`
--

CREATE TABLE `instagram_users_test` (
  `id` int(11) UNSIGNED NOT NULL,
  `instagram_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` bigint(20) NOT NULL,
  `transaction_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(6) NOT NULL,
  `invoice_date` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `invoice_title` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_text` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `taxes` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `from_period` datetime NOT NULL,
  `to_period` datetime NOT NULL,
  `gateway` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices_options`
--

CREATE TABLE `invoices_options` (
  `option_id` bigint(20) NOT NULL,
  `option_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci NOT NULL,
  `template_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices_templates`
--

CREATE TABLE `invoices_templates` (
  `template_id` bigint(20) NOT NULL,
  `template_title` text COLLATE utf8_unicode_ci NOT NULL,
  `template_body` text COLLATE utf8_unicode_ci NOT NULL,
  `template_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `list_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lists_meta`
--

CREATE TABLE `lists_meta` (
  `meta_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `cover` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `network_id` int(3) NOT NULL,
  `network_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `net_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `expires` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL,
  `api_key` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`network_id`, `network_name`, `net_id`, `user_id`, `user_name`, `user_avatar`, `date`, `expires`, `token`, `secret`, `completed`, `api_key`, `api_secret`) VALUES
(8, 'facebook_pages', '102763554690977', 118, 'Funny', '', '2020-03-25 05:28:09', '', 'EAASLA4A4WkoBAPWWLBkytKqHOymdAL3uFTMBHSV7wPZAfNhmywqYOqN4Lh9nBMeMVBEZCoDoZBh4ewUqAliFkrvk4F4QyXUiZAbzdiAPpY4ZA7LqhaypJlpAbi2IulV2IYOJZBCNw6LaP52oyJy2ZBaxLsBGkvNrz0pX9keDPXbKXfc8ESo3bB7AKMGYz4hcCgZD', 'EAASLA4A4WkoBAEYU0RilAPbHFdgnNZCb5zHxaAgwhfQ2cOgczEiX3O0NLBgjl1hrrUaJaoEkeZAruOFPfZAP6L6FerRBWCZBIiA3vdXsnfGSRn2aBT58eZCv0yYCUcFN7d6O3m3yNF9jw7Fzy5yZBSw8EuA9ylfu27kihQa9wTsASLw9UwGvjYlZCBzE5mTgjYZD', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL,
  `notification_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `notification_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notification_body` text COLLATE utf8_unicode_ci NOT NULL,
  `sent_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `template` tinyint(1) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_title`, `notification_name`, `notification_body`, `sent_time`, `template`, `template_name`) VALUES
(1, 'Welcome to [site_name]', 'Welcome message(without confirmation)', '<p>You can login here: [login_address]</p><p>Using this username and password:</p><p>Username: [username]</p><p>Password: *** Password you set during signup ***</p><p>Cheers!</p><p>The [site_name] Team</p><p><br></p>', '', 1, 'welcome-message-no-confirmation'),
(2, 'Welcome to [site_name]', 'Welcome message(with confirmation)', '<p>To activate your account and verify your email address, </p><p>please click the following link: [confirmation_link]</p><p><br></p>', '', 1, 'welcome-message-with-confirmation'),
(3, 'Your account has been activated', 'Success confirmation message', '<p>Congratulations, your account has been activated!</p><p>You can login here: [login_address]</p><p>Using this username and password:</p><p>Username: [username]</p><p>Password: *** Password you set during signup ***</p><p>Cheers!</p><p>The [site_name] Team</p>', '', 1, 'success-confirmation-message'),
(4, 'Password Reset', 'Reset password message', '<p>Dear [username]</p><p>To reset the password to your [site_name]\'s account, click the link below: </p><p>[reset_link]<br></p>', '', 1, 'password-reset'),
(5, 'Your password has been reset successfully', 'Success password changed message', '<p>Congratulations, your account has been activated!</p><p>You can login here: [login_address]<br></p><p><br></p>', '', 1, 'success-password-changed'),
(6, 'Your message wasn\'t published successfully', 'Publishing message error', '<p>You messagge wasn\'t published successfully on a social network.</p><p>You can login here: [login_address]<br></p>', '', 1, 'error-sent-notification'),
(7, 'Resend Confirmation Email', 'Resend confirmation email', '<p>To activate your account and verify your email address,</p><p>please click the following link: [confirmation_link]</p>', '', 1, 'resend-confirmation-email'),
(8, 'Your new account was created successfully', 'Send password to new users', '<p>A new account has been created for you on [site_name].</p><p>You can login here <span xss=\"removed\">[login_address]</span></p><p><span xss=\"removed\">Username: [username]</span></p><p><span xss=\"removed\">Password: [password]</span></p>', '', 1, 'send-password-new-users'),
(9, 'Scheduled Notification', 'Scheduled notification', '<p>An user has scheduled a new message.</p><p>Please Sign In: <span xss=\"removed\">[login_address]</span></p><p><br></p>', '', 1, 'scheduled-notification'),
(12, 'New user registration', 'New user registration', 'A new user has registered at <span xss=\"removed\">[site_name]</span>', '', 1, 'new-user-notification'),
(1000, 'The Planned Post was completed', 'Post Completation Notification', '<p>Dear [username]</p><p>Your planned post, [post] was published the planned number of times and will not be more published.</p>', '', 1, 'planned-completed-confirmation'),
(1100, 'New Ticket Reply', 'New Ticket Reply', '<p>Dear [username]</p><p>You have a new reply for your opened ticket.</p>', '', 1, 'ticket-notification-reply'),
(2000, 'The Planned Email Template was completed', 'Email Template Completation Notification', '<p>Dear [username]</p><p>Your planned email template, [template] was sent the planned number of times and will not be more sent.</p>', '', 1, 'planned-email-completed-confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_stats`
--

CREATE TABLE `notifications_stats` (
  `stat_id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_applications`
--

CREATE TABLE `oauth_applications` (
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_url` text COLLATE utf8_unicode_ci NOT NULL,
  `cancel_url` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_applications_permissions`
--

CREATE TABLE `oauth_applications_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `permission_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `code_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes_permissions`
--

CREATE TABLE `oauth_authorization_codes_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `code_id` bigint(20) NOT NULL,
  `permission_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_permissions`
--

CREATE TABLE `oauth_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `permission_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `token_id` bigint(20) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens_permissions`
--

CREATE TABLE `oauth_tokens_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `token_id` bigint(20) NOT NULL,
  `permission_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` bigint(20) NOT NULL,
  `option_key` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_key`, `option_value`) VALUES
(2, 'app_dashboard_enable', '1'),
(3, 'app_dashboard_enable_default_widgets', '1'),
(4, 'app_dashboard_left_side_position', '1'),
(13, 'app_storage_enable', '1'),
(14, 'app_storage_enable_url_download', '1'),
(15, 'themes_activated_user_theme', 'blue'),
(16, 'facebook_ad_labels', '1'),
(17, 'component_faq_enable', '1'),
(18, 'component_notifications_enable', '1'),
(19, 'component_plans_enable', '1'),
(20, 'component_settings_enable', '1'),
(21, 'component_team_enable', '1'),
(22, 'app_facebook_ads_enable', '1'),
(23, 'app_facebook_ads_enable_posts_boosting', '1'),
(24, 'facebook_pages_app_id', '1278747059182154'),
(25, 'facebook_pages_app_secret', 'a02b11afd83e27b93b9a942a4c811e68'),
(26, 'facebook_pages', '1'),
(27, 'facebook_groups_app_id', '1278747059182154'),
(28, 'facebook_groups_app_secret', 'a02b11afd83e27b93b9a942a4c811e68'),
(29, 'facebook_group_only_administrator', '1'),
(30, 'facebook_groups', '1'),
(31, 'facebook_live_app_id', '1278747059182154'),
(32, 'facebook_live_app_secret', 'a02b11afd83e27b93b9a942a4c811e68'),
(33, 'facebook_live', '1'),
(34, 'themes_activated_theme', 'midrub'),
(35, 'facebook_auth_app_id', '1278747059182154'),
(36, 'facebook_auth_app_secret', 'a02b11afd83e27b93b9a942a4c811e68'),
(37, 'enable_auth_social_access', '1'),
(38, 'enable_auth_facebook', '1'),
(39, 'app_posts_enable', '1'),
(40, 'app_posts_enable_composer', '1'),
(41, 'app_posts_enable_scheduled', '1'),
(42, 'app_posts_enable_insights', '1'),
(43, 'app_posts_enable_history', '1'),
(44, 'app_posts_rss_feeds', '1'),
(45, 'app_posts_enable_faq', '1'),
(46, 'app_posts_enable_dropbox', '1'),
(47, 'app_posts_enable_pixabay', '1'),
(48, 'app_posts_enable_url_download', '1'),
(49, 'app_posts_enable_designbold_button', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `txn_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `source` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurring` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `plan_id` int(6) NOT NULL,
  `plan_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `plan_price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currency_sign` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `network_accounts` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sent_emails` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8_unicode_ci NOT NULL,
  `teams` tinyint(1) DEFAULT NULL,
  `header` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period` bigint(10) NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `popular` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `trial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`plan_id`, `plan_name`, `plan_price`, `currency_sign`, `currency_code`, `network_accounts`, `sent_emails`, `storage`, `features`, `teams`, `header`, `period`, `visible`, `popular`, `featured`, `trial`) VALUES
(1, 'Free Plan', '4.00', '$', 'USD', '1', '10', '60000000', '1 Social Profiles\n1 Feed Rss\nReal-time Analytics\nMessage Scheduling\n', 5, 'for personal use', 30, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans_meta`
--

CREATE TABLE `plans_meta` (
  `meta_id` int(6) NOT NULL,
  `plan_id` int(6) NOT NULL,
  `meta_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans_meta`
--

INSERT INTO `plans_meta` (`meta_id`, `plan_id`, `meta_name`, `meta_value`) VALUES
(1, 1, 'publish_posts', '200'),
(2, 1, 'rss_feeds', '200'),
(3, 1, 'facebook_ad_labels', '1'),
(4, 1, 'app_dashboard', '1'),
(5, 1, 'app_posts', '1'),
(6, 1, 'app_storage', '1'),
(7, 1, 'app_facebook_ads', '1'),
(8, 1, 'facebook_groups', '1'),
(9, 1, 'facebook_live', '1'),
(10, 1, 'facebook_pages', '1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varbinary(4000) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `sent_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `resend` bigint(20) DEFAULT NULL,
  `ip_address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `view` tinyint(1) NOT NULL,
  `fb_boost_id` bigint(20) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `dlt` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `body`, `title`, `url`, `img`, `video`, `category`, `sent_time`, `resend`, `ip_address`, `status`, `view`, `fb_boost_id`, `parent`, `dlt`) VALUES
(1, 118, 0x68656c6c6f2074686973207363686564756c65642e, '', '', 'a:0:{}', 'a:0:{}', 'null', '1585110544', NULL, '::1', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_meta`
--

CREATE TABLE `posts_meta` (
  `meta_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `network_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sent_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `network_status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_meta`
--

INSERT INTO `posts_meta` (`meta_id`, `post_id`, `network_id`, `network_name`, `sent_time`, `status`, `network_status`, `published_id`) VALUES
(1, 1, 8, 'facebook_pages', '1585110548', 1, NULL, '102763554690977_116501469983852');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referrer_id` bigint(20) NOT NULL,
  `referrer` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `earned` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resend`
--

CREATE TABLE `resend` (
  `resend_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `updated` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resend_meta`
--

CREATE TABLE `resend_meta` (
  `meta_id` bigint(20) NOT NULL,
  `resend_id` bigint(20) NOT NULL,
  `rule1` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rule2` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rule3` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rule4` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resend_rules`
--

CREATE TABLE `resend_rules` (
  `rule_id` bigint(20) NOT NULL,
  `resend_id` bigint(20) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `totime` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `rss_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rss_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rss_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rss_url` text COLLATE utf8_unicode_ci NOT NULL,
  `publish_description` tinyint(1) NOT NULL,
  `publish_url` tinyint(1) NOT NULL,
  `remove_url` tinyint(1) DEFAULT NULL,
  `keep_html` tinyint(1) DEFAULT NULL,
  `group_id` bigint(20) NOT NULL,
  `include` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `added` datetime NOT NULL,
  `pub` tinyint(1) NOT NULL,
  `refferal` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss_accounts`
--

CREATE TABLE `rss_accounts` (
  `account_id` bigint(20) NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `rss_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss_posts`
--

CREATE TABLE `rss_posts` (
  `post_id` bigint(20) NOT NULL,
  `rss_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduled` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `network_status` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss_posts_meta`
--

CREATE TABLE `rss_posts_meta` (
  `meta_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `network_id` bigint(20) NOT NULL,
  `network_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sent_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `network_status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled`
--

CREATE TABLE `scheduled` (
  `scheduled_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `template_id` bigint(20) NOT NULL,
  `con` tinyint(1) NOT NULL,
  `template` bigint(20) NOT NULL,
  `send_at` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `resend` bigint(20) DEFAULT NULL,
  `a` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_stats`
--

CREATE TABLE `scheduled_stats` (
  `stat_id` bigint(20) NOT NULL,
  `sched_id` bigint(20) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `template_id` bigint(20) NOT NULL,
  `body` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `unsubscribed` tinyint(1) NOT NULL,
  `readed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `net_id` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `last_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `member_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `member_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `member_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `about_member` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_joined` datetime NOT NULL,
  `last_access` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams_roles`
--

CREATE TABLE `teams_roles` (
  `role_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams_roles_permission`
--

CREATE TABLE `teams_roles_permission` (
  `permission_id` bigint(20) NOT NULL,
  `role_id` int(20) NOT NULL,
  `permission` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `template_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `resend` bigint(20) DEFAULT NULL,
  `list_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_meta`
--

CREATE TABLE `tickets_meta` (
  `meta_id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `net_id` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_fields`
--

CREATE TABLE `transactions_fields` (
  `field_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `field_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `field_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_options`
--

CREATE TABLE `transactions_options` (
  `option_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `option_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `url_id` bigint(20) NOT NULL,
  `original_url` text CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls_stats`
--

CREATE TABLE `urls_stats` (
  `stats_id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `network_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `color` varchar(30) CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(30) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `last_access` datetime DEFAULT NULL,
  `ip_address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reset_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activate` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `last_name`, `first_name`, `password`, `role`, `status`, `date_joined`, `last_access`, `ip_address`, `reset_code`, `activate`) VALUES
(104, 'administrator', 'admin@example.com', NULL, NULL, '$2a$08$CwRg961g2QCS1kBjA0NgAOs8Dg31QzOP6mNxF.OdrCd5BqAmtLyOe', 1, 1, '2016-08-11 10:37:16', '2020-04-21 08:38:45', '', ' ', ''),
(118, 'testuser', 'user@email.com', NULL, NULL, '$2a$08$fcmlgRj56zPvpYvAc3v9Ze8Tp4xX7cKmoSJZOhEqTIjvZmFtdfu/O', 0, 1, '2016-10-10 12:37:03', '2020-04-21 08:19:43', '', ' ', ''),
(119, 'pranav', 'pranav@1touch.market', 'Kumar', 'Pranav', '$2a$08$X3IiaU6Qywm8cQxbEgARc.KulF.C0mAHGvqbio2F61CzOxc8Cx6Ha', 0, 1, '2020-03-19 12:37:31', '2020-03-19 12:54:21', '::1', ' ', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `meta_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_name` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`meta_id`, `user_id`, `meta_name`, `meta_value`) VALUES
(1, 119, 'plan', '1'),
(2, 119, 'plan_end', '2020-04-18 12:38:05'),
(3, 118, 'plan', '1'),
(4, 118, 'plan_end', '2020-04-23 11:38:36'),
(5, 118, 'published_posts', 'a:2:{s:4:\"date\";s:7:\"2020-03\";s:5:\"posts\";i:1;}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `activity_meta`
--
ALTER TABLE `activity_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `administrator_dashboard_widgets`
--
ALTER TABLE `administrator_dashboard_widgets`
  ADD PRIMARY KEY (`widget_id`);

--
-- Indexes for table `ads_account`
--
ALTER TABLE `ads_account`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `ads_boosts`
--
ALTER TABLE `ads_boosts`
  ADD PRIMARY KEY (`boost_id`);

--
-- Indexes for table `ads_boosts_meta`
--
ALTER TABLE `ads_boosts_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `ads_boosts_stats`
--
ALTER TABLE `ads_boosts_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `ads_labels`
--
ALTER TABLE `ads_labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `ads_labels_meta`
--
ALTER TABLE `ads_labels_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `ads_labels_stats`
--
ALTER TABLE `ads_labels_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `ads_networks`
--
ALTER TABLE `ads_networks`
  ADD PRIMARY KEY (`network_id`);

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`bot_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `campaigns_meta`
--
ALTER TABLE `campaigns_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`classification_id`);

--
-- Indexes for table `classifications_meta`
--
ALTER TABLE `classifications_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `contents_classifications`
--
ALTER TABLE `contents_classifications`
  ADD PRIMARY KEY (`classification_id`);

--
-- Indexes for table `contents_meta`
--
ALTER TABLE `contents_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`dict_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `faq_articles`
--
ALTER TABLE `faq_articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `faq_articles_categories`
--
ALTER TABLE `faq_articles_categories`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `faq_articles_meta`
--
ALTER TABLE `faq_articles_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `faq_categories_meta`
--
ALTER TABLE `faq_categories_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `instagram_logs`
--
ALTER TABLE `instagram_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_logs_id_uindex` (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `instagram_logs_instagram_user_id_index` (`instagram_user_id`);

--
-- Indexes for table `instagram_media`
--
ALTER TABLE `instagram_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_media_id_uindex` (`id`),
  ADD UNIQUE KEY `instagram_media_pk` (`media_id`);

--
-- Indexes for table `instagram_users`
--
ALTER TABLE `instagram_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instagram_users_id_uindex` (`id`),
  ADD UNIQUE KEY `instagram_users_pk` (`instagram_id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `instagram_users_test`
--
ALTER TABLE `instagram_users_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoices_options`
--
ALTER TABLE `invoices_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `invoices_templates`
--
ALTER TABLE `invoices_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `lists_meta`
--
ALTER TABLE `lists_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`network_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notifications_stats`
--
ALTER TABLE `notifications_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `oauth_applications`
--
ALTER TABLE `oauth_applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `oauth_applications_permissions`
--
ALTER TABLE `oauth_applications_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `oauth_authorization_codes_permissions`
--
ALTER TABLE `oauth_authorization_codes_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `oauth_permissions`
--
ALTER TABLE `oauth_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `oauth_tokens_permissions`
--
ALTER TABLE `oauth_tokens_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `plans_meta`
--
ALTER TABLE `plans_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `posts_meta`
--
ALTER TABLE `posts_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referrer_id`);

--
-- Indexes for table `resend`
--
ALTER TABLE `resend`
  ADD PRIMARY KEY (`resend_id`);

--
-- Indexes for table `resend_meta`
--
ALTER TABLE `resend_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `resend_rules`
--
ALTER TABLE `resend_rules`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`rss_id`);

--
-- Indexes for table `rss_accounts`
--
ALTER TABLE `rss_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `rss_posts`
--
ALTER TABLE `rss_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `rss_posts_meta`
--
ALTER TABLE `rss_posts_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `scheduled`
--
ALTER TABLE `scheduled`
  ADD PRIMARY KEY (`scheduled_id`);

--
-- Indexes for table `scheduled_stats`
--
ALTER TABLE `scheduled_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `teams_roles`
--
ALTER TABLE `teams_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `teams_roles_permission`
--
ALTER TABLE `teams_roles_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `tickets_meta`
--
ALTER TABLE `tickets_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transactions_fields`
--
ALTER TABLE `transactions_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `transactions_options`
--
ALTER TABLE `transactions_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `urls_stats`
--
ALTER TABLE `urls_stats`
  ADD PRIMARY KEY (`stats_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_meta`
--
ALTER TABLE `activity_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administrator_dashboard_widgets`
--
ALTER TABLE `administrator_dashboard_widgets`
  MODIFY `widget_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_account`
--
ALTER TABLE `ads_account`
  MODIFY `ads_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads_boosts`
--
ALTER TABLE `ads_boosts`
  MODIFY `boost_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_boosts_meta`
--
ALTER TABLE `ads_boosts_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_boosts_stats`
--
ALTER TABLE `ads_boosts_stats`
  MODIFY `stat_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_labels`
--
ALTER TABLE `ads_labels`
  MODIFY `label_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads_labels_meta`
--
ALTER TABLE `ads_labels_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ads_labels_stats`
--
ALTER TABLE `ads_labels_stats`
  MODIFY `stat_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_networks`
--
ALTER TABLE `ads_networks`
  MODIFY `network_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
  MODIFY `bot_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `campaign_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns_meta`
--
ALTER TABLE `campaigns_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classifications`
--
ALTER TABLE `classifications`
  MODIFY `classification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `classifications_meta`
--
ALTER TABLE `classifications_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `content_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_classifications`
--
ALTER TABLE `contents_classifications`
  MODIFY `classification_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_meta`
--
ALTER TABLE `contents_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `dict_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_articles`
--
ALTER TABLE `faq_articles`
  MODIFY `article_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_articles_categories`
--
ALTER TABLE `faq_articles_categories`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_articles_meta`
--
ALTER TABLE `faq_articles_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `category_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories_meta`
--
ALTER TABLE `faq_categories_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `guide_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instagram_logs`
--
ALTER TABLE `instagram_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `instagram_media`
--
ALTER TABLE `instagram_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `instagram_users`
--
ALTER TABLE `instagram_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `instagram_users_test`
--
ALTER TABLE `instagram_users_test`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices_options`
--
ALTER TABLE `invoices_options`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices_templates`
--
ALTER TABLE `invoices_templates`
  MODIFY `template_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `list_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lists_meta`
--
ALTER TABLE `lists_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `network_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2014;

--
-- AUTO_INCREMENT for table `notifications_stats`
--
ALTER TABLE `notifications_stats`
  MODIFY `stat_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_applications`
--
ALTER TABLE `oauth_applications`
  MODIFY `application_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_applications_permissions`
--
ALTER TABLE `oauth_applications_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  MODIFY `code_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_authorization_codes_permissions`
--
ALTER TABLE `oauth_authorization_codes_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_permissions`
--
ALTER TABLE `oauth_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_tokens_permissions`
--
ALTER TABLE `oauth_tokens_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `plan_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plans_meta`
--
ALTER TABLE `plans_meta`
  MODIFY `meta_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts_meta`
--
ALTER TABLE `posts_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `referrer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resend`
--
ALTER TABLE `resend`
  MODIFY `resend_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resend_meta`
--
ALTER TABLE `resend_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resend_rules`
--
ALTER TABLE `resend_rules`
  MODIFY `rule_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
  MODIFY `rss_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rss_accounts`
--
ALTER TABLE `rss_accounts`
  MODIFY `account_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rss_posts`
--
ALTER TABLE `rss_posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rss_posts_meta`
--
ALTER TABLE `rss_posts_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scheduled`
--
ALTER TABLE `scheduled`
  MODIFY `scheduled_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scheduled_stats`
--
ALTER TABLE `scheduled_stats`
  MODIFY `stat_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `member_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams_roles`
--
ALTER TABLE `teams_roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams_roles_permission`
--
ALTER TABLE `teams_roles_permission`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `template_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets_meta`
--
ALTER TABLE `tickets_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions_fields`
--
ALTER TABLE `transactions_fields`
  MODIFY `field_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions_options`
--
ALTER TABLE `transactions_options`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `url_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urls_stats`
--
ALTER TABLE `urls_stats`
  MODIFY `stats_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
