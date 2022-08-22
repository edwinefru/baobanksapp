-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2018 at 11:42 AM
-- Server version: 10.0.36-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideal_remiten`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `mobile`, `image`, `status`, `login_time`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '8801234567989000', 'admin_1539444755.jpg', 1, '2018-05-04 14:36:07', '$2y$10$kfQgrrcGkYBwbXB9.ytMwuJtme1O7X/.SOf0FEJRWGdXA/CECvUXC', '90HZ7Ojbt29z0yGw1J5YfbkYTxwvWW0WRkBdctlppj8ATVCVKlv6FnjGwaEK', '2018-03-26 06:08:23', '2018-10-13 19:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notification` tinyint(4) NOT NULL DEFAULT '0',
  `withdraw_status` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_charge` double DEFAULT '0',
  `sending_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `decimal` int(2) NOT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_api` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` tinyint(4) NOT NULL DEFAULT '0',
  `refcom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_comment` text COLLATE utf8mb4_unicode_ci,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_para` text COLLATE utf8mb4_unicode_ci,
  `achievement_con1_head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con1_para` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con1_s` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con2_head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con2_para` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con2_s` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con3_head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con3_para` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_con3_s` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_h` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_p` text COLLATE utf8mb4_unicode_ci,
  `section1_heading` text COLLATE utf8mb4_unicode_ci,
  `section1_para` text COLLATE utf8mb4_unicode_ci,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `sitename`, `color`, `phone`, `email`, `address`, `currency`, `currency_sym`, `registration`, `email_verification`, `sms_verification`, `email_notification`, `sms_notification`, `withdraw_status`, `withdraw_charge`, `sending_charge`, `decimal`, `latitude`, `longitude`, `map_api`, `location`, `refcom`, `about`, `about_title`, `about_video`, `fb_comment`, `rate`, `achievement_title`, `achievement_para`, `achievement_con1_head`, `achievement_con1_para`, `achievement_con1_s`, `achievement_con2_head`, `achievement_con2_para`, `achievement_con2_s`, `achievement_con3_head`, `achievement_con3_para`, `achievement_con3_s`, `testimonial_h`, `testimonial_p`, `section1_heading`, `section1_para`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Remiten', 'aa00ff', '+880-123-456-7890', 'noreply@thesoftking.com', 'Company Location', 'USD', '$', 1, 0, 0, 1, 0, 1, 55, '5', 2, '23.7500276', '91.3869237', 'AIzaSyDi-rrw9lb-uKY1vHd9gkzuBpj4-hiBsUA', 0, '0', '<h3 class=\"title\" style=\"font-family: Roboto, serif; line-height: 1.08333; color: rgb(4, 10, 44); margin-top: 20px; margin-bottom: 17px; font-size: 30px; text-transform: uppercase;\"><p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.9); line-height: 30px; font-family: Poppins, sans-serif; font-weight: 400; text-align: center; text-transform: none; background-color: rgb(246, 247, 248);\">How promotion excellent curiosity yet attempted happiness. Gay prosperous impression had conviction. For every delay death ask style. Me mean able my by in they. Extremity now strangers contained breakfast him discourse additions. Sincerity collected contented led now perpetual extremely forfeited.</p><p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.9); line-height: 30px; font-family: Poppins, sans-serif; font-weight: 400; text-align: center; text-transform: none; background-color: rgb(246, 247, 248);\">How promotion excellent curiosity yet attempted happiness. There are many variations passage Lorem Ipsum available, The majority have suffered alteration insome form injected humour randomised word which don\'t look even slightly believable. There are many variations passage Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, randomised words which don\'t look even slightly believable.</p></h3>', 'We\'re Creative Expert of Digital Agency', 'https://www.youtube.com/watch?v=pHGGNPMPz3M', '<div id=\"fb-root\"></div>\r\n<script>\r\n    (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=205856110142667&autoLogAppEvents=1\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, \'script\', \'facebook-jssdk\'));\r\n</script>', '1', 'Our Achivment & Success', 'We are a full service Digital Marketing Agency all the foundational tools you need for inbound success. With this module theres no need to go another day.', '120', 'Global Customer', 'k', '7', 'Years Experience', 'y', '75', 'Customer Success', '%', 'Some Awesome words by our customers', 'We are a full service Digital Marketing Agency all the foundational tools you need for inbound success. With this module theres no need to go another day.', 'Send Remittance Easily', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, isie.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti exce!', NULL, '2018-10-13 19:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Asia and Pacific', 1, NULL, '2018-09-25 06:15:25', '2018-09-25 06:15:25'),
(2, 'Latin America and Caribbean', 1, NULL, '2018-09-25 06:15:53', '2018-09-25 06:15:53'),
(3, 'Africa', 1, NULL, '2018-09-25 06:16:06', '2018-09-25 06:16:06'),
(4, 'Europe', 1, NULL, '2018-09-25 06:16:24', '2018-09-25 06:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `continent_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `continent_id`, `name`, `code`, `rate`, `charge`, `status`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pakistan', 'PKR', '123.20', '1.59', 1, 'Pakistan_1537876548.jpg', NULL, '2018-09-24 18:00:00', '2018-10-04 04:21:56'),
(2, 1, 'Bangladesh', 'BDT', '84.03', '8', 1, 'Bangladesh_1538020477.jpg', NULL, '2018-09-25 04:59:23', '2018-10-04 04:21:51'),
(3, 1, 'India', 'INR', '72.64', '7', 1, 'India_1537876216.jpg', NULL, '2018-09-25 05:50:16', '2018-10-04 04:21:45'),
(4, 1, 'Philippine', 'PHP', '54.31', '1', 1, 'Philippine_1537876735.jpg', NULL, '2018-09-25 05:58:55', '2018-10-04 04:21:36'),
(5, 2, 'Argentina', 'ARS', '37.29', '2', 1, 'Argentina_1537877007.jpg', NULL, '2018-09-25 06:03:27', '2018-09-25 06:08:44'),
(6, 2, 'Brazil', 'BRL', '4.12', '1', 1, 'Brazil_1537877935.jpg', NULL, '2018-09-25 06:18:55', '2018-09-25 06:18:55'),
(7, 2, 'Chile', 'CLP', '674.18', '2', 1, 'Chile_1537880633.jpg', NULL, '2018-09-25 07:03:53', '2018-09-25 07:04:00'),
(8, 2, 'Jamaica', 'JMD', '135.39', '2', 1, 'Jamaica_1537880750.jpg', NULL, '2018-09-25 07:05:50', '2018-09-25 07:05:50'),
(9, 2, 'Paraguay', 'PYG', '5869.75', '2', 1, 'Paraguay_1537880845.jpg', NULL, '2018-09-25 07:07:25', '2018-09-25 07:07:25'),
(10, 3, 'South Africa', 'ZAR', '14.42', '2', 1, 'South Africa_1537881293.jpg', NULL, '2018-09-25 07:14:53', '2018-09-25 07:16:53'),
(11, 3, 'Nigerian', 'NGN', '363', '2', 1, 'Nigerian_1537881365.jpg', NULL, '2018-09-25 07:16:06', '2018-09-25 07:16:39'),
(12, 3, 'Kenya', 'KES', '100.93', '2', 1, 'Kenya_1537881658.jpg', NULL, '2018-09-25 07:20:58', '2018-09-25 07:21:14'),
(13, 4, 'Italy', 'EURO', '0.85', '2', 1, 'Italy_1537881740.jpg', NULL, '2018-09-25 07:22:20', '2018-09-25 07:22:20'),
(14, 4, 'Greece', 'GRD', '0.85', '2', 1, 'Greece_1537881839.jpg', NULL, '2018-09-25 07:23:59', '2018-09-25 07:23:59'),
(15, 4, 'France', 'FRF', '0.85', '2', 1, 'France_1537881994.jpg', NULL, '2018-09-25 07:26:34', '2018-09-25 07:26:34'),
(16, 2, 'Mexico', 'MXN‎', '19.04', '5', 1, 'Mexico_1538648024.jpg', NULL, '2018-10-04 04:13:44', '2018-10-04 04:13:44'),
(17, 3, 'Libya', 'LYD', '1.40', '1.5', 1, 'Libya_1538648200.jpg', NULL, '2018-10-04 04:16:40', '2018-10-04 04:16:40'),
(18, 4, 'Germany', 'Euro', '0.87', '2', 1, 'Germany_1538648393.jpg', NULL, '2018-10-04 04:19:53', '2018-10-04 04:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `currency_id`, `wallet_id`, `amount`, `charge`, `usd`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `created_at`, `updated_at`) VALUES
(1, 1, 103, NULL, NULL, '5000', '153', '64.41', '0', '', '3c4zLV2AnICORbJF', 1, 0, '2018-10-13 19:39:56', '2018-10-13 19:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'ronnie@thesoftking.com', '+01234567890', '<br><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\"><tbody><tr><td style=\"padding: 0; width: 600px;\"><br><div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"><br></div></td></tr></tbody></table><br><table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\"><tbody><tr><td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br><div style=\"margin-left: 20px; margin-right: 20px;\"><font size=\"4\">Hi {{name}},<br></font><p><strong>{{message}}</strong></p></div><div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br><p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>THESOFTKING TEAM</strong></p><br></div><br></td></tr></tbody></table><br></div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=Remiten&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2018-10-13 19:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Can I track the status of my transfer?', 'Your transfer is important to us, so we provide status updates that allow you to easily track your transfer. When you first submit your transfer, you’ll receive a receipt with your reference number. We will send you an update if you make any changes to the transfer, or if it is delayed for any reason.\r\n\r\nAfter the transfer completes, both you and your recipient will receive a notification that the money has arrived.\r\n\r\nAt any time you can sign into your account and select “Transactions” to view all of your status updates', '2018-04-15 02:14:58', '2018-10-04 01:19:12'),
(2, 'How do I use Remitly to send money?', 'Sending money with Remitly is easy! We give you choices so you can decide how you want to send or receive money.\r\n\r\nFirst, use your email address to create a free account on our website or through our app in the App Store or Google Play. Enter the amount of money you want to send, your recipient’s information, and your payment information.', '2018-04-15 02:15:11', '2018-10-04 01:18:29'),
(3, 'Why do you charge more for credit cards?', 'Although debit and credit cards may have the same “Visa” and “Mastercard” logos, we have to pay a much higher fee when you choose to send money with a credit card. As a result, we add an additional 3% charge for credit card transactions. This allows us to keep our prices as low as possible when you use your bank account or debit card to send money safely and quickly to the Philippines.\r\n\r\nThe additional charge is 3% on your net send amount if you use a credit card. These fees are in addition to our fee for EXPRESS transfers. Whenever possible, we encourage you to use your debit cards for EXPRESS transfers.', '2018-05-22 22:36:44', '2018-10-04 01:16:53'),
(4, 'Cash pickup and mobile wallet partners do you support?', 'Remitly works with thousands of trusted partners worldwide to deliver money safely, securely, and on time. Click here to see the full list of our partners.', '2018-10-04 01:19:53', '2018-10-04 02:01:15'),
(5, 'Where can I find information about exchange rates, transfer fees?', 'Remitly gives our customers low fees and great rates every single day. Click here to learn more about our rates, fees, and currency options.', '2018-10-04 01:20:10', '2018-10-04 02:00:50'),
(6, 'How do I manage my Remitly account?', 'To make changes to your account information, first go to your account Settings\r\n\r\nSign in to your account.\r\nSelect “Settings”.\r\nFrom “Settings”, select “Profile information”.\r\nTo change your password\r\n\r\nSelect “edit password”.\r\nEnter your current password.\r\nEnter your new password twice.\r\nSelect “change password” to complete and save your changes.\r\nTo change your address\r\n\r\nSelect “edit address”.\r\nEnter your new address.\r\nSelect “change address” to complete and save your changes.\r\nTo change your phone number\r\n\r\nSelect “edit phone number”.\r\nEnter your new phone number.\r\nSelect “change phone number” to complete and save your changes.\r\nTo change your email address\r\n\r\nSelect “edit email address”.\r\nEnter your new email address\r\nSelect “change email” to complete and save your changes.', '2018-10-04 01:20:48', '2018-10-04 01:20:48'),
(7, 'How do I change or cancel my transfer?', 'To change a transfer\r\n\r\nYou can make changes to your recipient or delivery method if your transfer is not already complete. Simply contact us and provide your reference number, and we’ll help you with any changes you’d like to make.\r\n\r\nChanges will be applied immediately and may cause your transfer to be delayed.\r\n\r\nTo cancel a transfer\r\n\r\nRemitly has made this easy to do when logged in from our website or app:\r\n\r\nLocate your transfer receipt by clicking “Transfer history” on Remitly’s website or “Transfer details” in our app.\r\nGo to the bottom of your Remitly receipt, and select \"Cancel transfer.\"\r\nWe will ask you to provide a reason for your cancellation. Providing this reason will help us improve our service.\r\nOnce your transfer is cancelled we will provide you with a new receipt and send you an email confirming your cancellation and your refund status.', '2018-10-04 01:21:18', '2018-10-04 01:21:18'),
(8, 'What information does  require and why?', 'As a licensed money services business, Remitly and its banking partners are required to comply with government-mandated verification requirements, which include validating customers\' personal information.\r\n\r\nFor your safety and convenience we will use information that you provide to verify your identity electronically. However, in some cases we may ask for additional documentation, such as your ID, a bank statement, or official piece of mail.\r\n\r\nIn some cases we may ask about the nature of your remittance. This information gives us a better understanding of who you are sending money to and your reason for using Remitly. This understanding not only allows us to meet our regulatory obligations, but also, more importantly allows us to continually improve our service to you.', '2018-10-04 01:59:20', '2018-10-04 02:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Website',
  `val4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Industry Type',
  `val5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Channel ID',
  `val6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction URL',
  `val7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction Status URL',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', '5', '1000', '0.511', '2.52', '1', 'rexrifat636@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-18 01:13:45'),
(102, 'PerfectMoney', 'Perfect Money', '20', '20000', '2', '1', '1', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-01 01:22:11'),
(103, 'Stripe', 'Credit Card', '10', '50000', '3', '3', '1', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-27 18:11:50'),
(104, 'Skrill', 'Skrill', '10', '50000', '3', '3', '1', 'merchant@skrill', 'TheSoftKing', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-20 12:01:09'),
(105, 'PayTM', 'PayTM', '1', '100', '1', '1', '1', 'PoojaE46324372286132', 'JAKMX9PVoj208dMq', 'WEB_STAGINGb', 'Retail', 'WEB', 'https://pguat.paytm.com/oltp-web/processTransaction', 'https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp', 1, NULL, '2018-08-29 02:06:01'),
(106, 'Payeer', 'Payeer', '1', '100', '1', '1', '1', '627881897', 'Admin727096', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-08-18 01:30:48'),
(107, 'PayStack', 'PayStack', '1', '100', '1', '1', '1', 'pk_test_c1775454cc81a5ad2d6a31d0b0471585d44c4dcb', 'sk_test_22327c329aa7ea76448cfe279aa1e5d583d306fa', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-10-13 19:35:18'),
(108, 'VoguePay', 'VoguePay', '1', '100', '1', '1', '1', 'demo', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-08-29 02:09:58'),
(501, 'Blockchain.info', 'BitCoin', '1', '20000', '1', '0.5', '1', '3965f52f-ec19-43af-90ed-d613dc60657eSSS', 'xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-21 01:20:29'),
(502, 'block.io - BTC', 'BitCoin', '1', '99999', '1', '0.5', '1', '1658-8015-2e5e-9afb', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, '2018-01-27 18:00:00', '2018-05-31 09:12:55'),
(503, 'block.io - LTC', 'LiteCoin', '100', '10000', '0.4', '1', '1', 'cb91-a5bc-69d7-1c27', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:27:34'),
(504, 'block.io - DOGE', 'DogeCoin', '1', '50000', '0.51', '2.52', '1', '2daf-d165-2135-5951', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:28:54'),
(505, 'CoinPayment - BTC', 'BitCoin', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:38:33'),
(506, 'CoinPayment - ETH', 'Etherium', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-16 03:42:22'),
(507, 'CoinPayment - BCH', 'Bitcoin Cash', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(508, 'CoinPayment - DASH', 'DASH', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(509, 'CoinPayment - DOGE', 'DOGE', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(510, 'CoinPayment - LTC', 'LTC', '1', '50000', '0.51', '2.52', '1', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(512, 'CoinGate', 'CoinGate', '10', '1000', '05', '5', '1', 'Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-07-08 18:00:00', '2018-05-21 01:20:54'),
(513, 'CoinPayment-ALL', 'Coin Payment', '10', '1000', '05', '5', '1', 'db1d9f12444e65c921604e289a281c56', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-21 01:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Terms & Conditions', 'terms-conditions', 0x3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c666f6e7420636f6c6f723d2223303030303030223e3c62723e3c2f666f6e743e3c2f6469763e, '2018-09-09 07:27:34', '2018-10-06 02:24:53'),
(3, 'Privacy & Policy', 'privacy-policy', 0x3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c666f6e7420636f6c6f723d2223303030303030223e3c62723e3c2f666f6e743e3c2f6469763e, '2018-09-09 07:27:42', '2018-10-06 02:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `hit` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `image`, `details`, `status`, `hit`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Remiten - Send Remittance Easily', 'post_1539444616.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, <br></div><div><br></div><div>blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspern</div><div><br></div><div>atur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas a</div><div align=\"right\"><i><b><br></b></i></div><div align=\"center\"><i><b>spernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla ha</b></i></div><div><br></div><div>rum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam m<u>odi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam </u>quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque q</div><div><br></div><div>uo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi pr</div><div align=\"right\"><br></div><div align=\"right\">ovident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi ear</div><div><br></div><div>um officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia cum consectetur vero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas aspernatur similique. Distinctio perferendis, unde veniam modi provident impedit aliquam itaque quo.</div>', 1, 0, '2018-10-13 19:30:16', '2018-10-13 19:30:16'),
(2, NULL, 'Remiten - Send Remittance Easily', 'post_1539444663.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti \r\nexcepturi natus at, ipsa assumenda, nisi earum officia cum consectetur \r\nvero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? \r\nNisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas \r\naspernatur similique. Distinctio perferendis, unde veniam modi provident\r\n impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi \r\nearum officia cum consectetur vero enim, <br></div><div><br></div><div>blanditiis\r\n perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla\r\n harum quasi laudantium illum, quod animi voluptas aspernatur similique.\r\n Distinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspern</div><div><br></div><div>atur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas a</div><div align=\"right\"><i><b><br></b></i></div><div align=\"center\"><i><b>spernatur\r\n similique. Distinctio perferendis, unde veniam modi provident impedit \r\naliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing \r\nelit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia \r\ncum consectetur vero enim, blanditiis perspiciatis reprehenderit iure \r\nquam quia libero? Nisi voluptatum nulla ha</b></i></div><div><br></div><div>rum\r\n quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n m<u>odi provident impedit aliquam itaque quo.Lorem ipsum dolor sit \r\namet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam </u>quia libero? Nisi voluptatum \r\nnulla harum quasi laudantium illum, quod animi voluptas aspernatur \r\nsimilique. Distinctio perferendis, unde veniam modi provident impedit \r\naliquam itaque q</div><div><br></div><div>uo.Lorem ipsum dolor sit amet,\r\n consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi pr</div><div align=\"right\"><br></div><div align=\"right\">ovident \r\nimpedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi \r\nearum officia cum consectetur vero enim, blanditiis perspiciatis \r\nreprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi \r\nlaudantium illum, quod animi voluptas aspernatur similique. Distinctio \r\nperferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi \r\nnatus at, ipsa assumenda, nisi ear</div><div><br></div><div>um officia \r\ncum consectetur vero enim, blanditiis perspiciatis reprehenderit iure \r\nquam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, \r\nquod animi voluptas aspernatur similique. Distinctio perferendis, unde \r\nveniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit \r\namet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.</div>', 1, 0, '2018-10-13 19:31:03', '2018-10-13 19:31:03'),
(3, NULL, 'Remiten - Send Remittance Easily', 'post_1539444673.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti \r\nexcepturi natus at, ipsa assumenda, nisi earum officia cum consectetur \r\nvero enim, blanditiis perspiciatis reprehenderit iure quam quia libero? \r\nNisi voluptatum nulla harum quasi laudantium illum, quod animi voluptas \r\naspernatur similique. Distinctio perferendis, unde veniam modi provident\r\n impedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi \r\nearum officia cum consectetur vero enim, <br></div><div><br></div><div>blanditiis\r\n perspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla\r\n harum quasi laudantium illum, quod animi voluptas aspernatur similique.\r\n Distinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspern</div><div><br></div><div>atur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas a</div><div align=\"right\"><i><b><br></b></i></div><div align=\"center\"><i><b>spernatur\r\n similique. Distinctio perferendis, unde veniam modi provident impedit \r\naliquam itaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing \r\nelit. Deleniti excepturi natus at, ipsa assumenda, nisi earum officia \r\ncum consectetur vero enim, blanditiis perspiciatis reprehenderit iure \r\nquam quia libero? Nisi voluptatum nulla ha</b></i></div><div><br></div><div>rum\r\n quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n m<u>odi provident impedit aliquam itaque quo.Lorem ipsum dolor sit \r\namet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam </u>quia libero? Nisi voluptatum \r\nnulla harum quasi laudantium illum, quod animi voluptas aspernatur \r\nsimilique. Distinctio perferendis, unde veniam modi provident impedit \r\naliquam itaque q</div><div><br></div><div>uo.Lorem ipsum dolor sit amet,\r\n consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi pr</div><div align=\"right\"><br></div><div align=\"right\">ovident \r\nimpedit aliquam itaque quo.Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Deleniti excepturi natus at, ipsa assumenda, nisi \r\nearum officia cum consectetur vero enim, blanditiis perspiciatis \r\nreprehenderit iure quam quia libero? Nisi voluptatum nulla harum quasi \r\nlaudantium illum, quod animi voluptas aspernatur similique. Distinctio \r\nperferendis, unde veniam modi provident impedit aliquam itaque quo.Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit. Deleniti excepturi \r\nnatus at, ipsa assumenda, nisi ear</div><div><br></div><div>um officia \r\ncum consectetur vero enim, blanditiis perspiciatis reprehenderit iure \r\nquam quia libero? Nisi voluptatum nulla harum quasi laudantium illum, \r\nquod animi voluptas aspernatur similique. Distinctio perferendis, unde \r\nveniam modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit \r\namet, consectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nDeleniti excepturi natus at, ipsa assumenda, nisi earum officia cum \r\nconsectetur vero enim, blanditiis perspiciatis reprehenderit iure quam \r\nquia libero? Nisi voluptatum nulla harum quasi laudantium illum, quod \r\nanimi voluptas aspernatur similique. Distinctio perferendis, unde veniam\r\n modi provident impedit aliquam itaque quo.Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Deleniti excepturi natus at, ipsa \r\nassumenda, nisi earum officia cum consectetur vero enim, blanditiis \r\nperspiciatis reprehenderit iure quam quia libero? Nisi voluptatum nulla \r\nharum quasi laudantium illum, quod animi voluptas aspernatur similique. \r\nDistinctio perferendis, unde veniam modi provident impedit aliquam \r\nitaque quo.</div>', 1, 0, '2018-10-13 19:31:13', '2018-10-13 19:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `send_moneys`
--

CREATE TABLE `send_moneys` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `usd_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_get_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_profit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_currency` int(11) DEFAULT NULL,
  `from_currency_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_currency` int(11) DEFAULT NULL,
  `to_currency_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `received_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `send_moneys`
--

INSERT INTO `send_moneys` (`id`, `sender_id`, `usd_amo`, `usd_charge`, `merchant_get_charge`, `withdraw_charge`, `admin_profit`, `from_currency`, `from_currency_amo`, `to_currency`, `to_currency_amo`, `trx`, `name`, `address`, `sender_name`, `sender_phone`, `sender_address`, `phone`, `merchant_id`, `status`, `received_at`, `created_at`, `updated_at`) VALUES
(1, 1, '13.408420488066506', '0.2681684097613301', '0.01', '0.15', '0.11', 5, '500', 10, '193.35', '6923764388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2018-10-13 19:41:59', '2018-10-13 19:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `code`, `link`, `created_at`, `updated_at`) VALUES
(3, 'fb.com/thesoftking', '<i class=\"fab fa-facebook-f\"></i>', 'https://www.facebook.com/thesoftking', '2018-05-22 22:56:12', '2018-05-22 22:57:20'),
(4, 'twitter.com/thesoftking', '<i class=\"fab fa-twitter\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:57:46', '2018-05-22 23:57:46'),
(5, 'linkedin.com/thesoftking', '<i class=\"fab fa-linkedin-in\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:58:14', '2018-07-03 04:53:27'),
(6, 'stack-overflow/thesoftking', '<i class=\"fab fa-stack-overflow\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:58:34', '2018-05-23 00:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `details`, `created_at`, `updated_at`) VALUES
(1, 'William Hannah', 'testimonial_1538811215.jpg', 'founder, themes llc.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '2018-09-12 18:00:00', '2018-10-06 01:33:35'),
(3, 'Neque porro', 'testimonial_1538630482.jpg', 'Fonder, Zigzag co', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain. There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain', '2018-07-02 08:59:54', '2018-10-03 23:21:22'),
(4, 'Ronnie Area', 'testimonial_1539432757.jpg', 'Laravel Developer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '2018-10-13 06:12:37', '2018-10-13 06:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `trxes`
--

CREATE TABLE `trxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `main_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `currency_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trxes`
--

INSERT INTO `trxes` (`id`, `user_id`, `amount`, `main_amo`, `charge`, `type`, `currency_id`, `title`, `remark`, `trx`, `created_at`, `updated_at`) VALUES
(1, 1, '5000', '5000', '0', '+', NULL, 'Deposit Via Credit Card', NULL, '3c4zLV2AnICORbJF', '2018-10-13 19:40:15', '2018-10-13 19:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_time` datetime DEFAULT NULL,
  `phone_time` datetime DEFAULT NULL,
  `merchant` tinyint(4) NOT NULL DEFAULT '0',
  `merchant_identity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_info` longtext COLLATE utf8mb4_unicode_ci,
  `refer` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(191) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `phone`, `image`, `password`, `verification_code`, `sms_code`, `phone_verify`, `email_verify`, `email_time`, `phone_time`, `merchant`, `merchant_identity`, `merchant_info`, `refer`, `reference`, `balance`, `status`, `login_time`, `address`, `city`, `zip_code`, `country_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Merchant', 'Merchant', 'merchant', 'merchant@thesoftking.com', '8801737042794', '1539445105_.jpg', '$2y$10$d4a0bUwfv4a7KB1XZzulUOcW31ab2RYpL3aZ7TTnhrxmqsgrDjgN6', 'TFZEAM', 'QJZG6H', 1, 1, '2018-10-13 15:42:28', '2018-10-13 15:42:28', 1, '874957380767', NULL, 0, NULL, '5000', 1, NULL, 'Location, Country', 'City', '1122', 2, NULL, '2018-10-13 19:37:28', '2018-10-13 19:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_moneys`
--
ALTER TABLE `send_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trxes`
--
ALTER TABLE `trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `send_moneys`
--
ALTER TABLE `send_moneys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trxes`
--
ALTER TABLE `trxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
