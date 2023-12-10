-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2023 at 05:28 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u910011159_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deal_id` int(11) NOT NULL DEFAULT 0,
  `log_type` varchar(191) NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_settings`
--

CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_options`
--

CREATE TABLE `allowance_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `department_id` varchar(191) NOT NULL DEFAULT '0',
  `employee_id` varchar(191) NOT NULL DEFAULT '0',
  `description` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_employees`
--

CREATE TABLE `announcement_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `employee` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(191) DEFAULT NULL,
  `appraisal_date` varchar(191) DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` text DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employees`
--

CREATE TABLE `attendance_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `gift` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_name` varchar(191) NOT NULL,
  `bank_name` varchar(191) NOT NULL,
  `account_number` varchar(191) NOT NULL,
  `chart_account_id` int(11) NOT NULL DEFAULT 0,
  `opening_balance` double(15,2) NOT NULL DEFAULT 0.00,
  `contact_number` varchar(191) NOT NULL,
  `bank_address` text NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `chart_account_id`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'cash', '', '-', 0, 0.00, '-', '-', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT 0,
  `to_account` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(191) NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_accounts`
--

CREATE TABLE `bill_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chart_account_id` int(11) NOT NULL DEFAULT 0,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `add_receipt` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_products`
--

CREATE TABLE `bill_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(50) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `period` varchar(191) NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `to` varchar(191) DEFAULT NULL,
  `income_data` text DEFAULT NULL,
  `expense_data` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `priority` varchar(191) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `order` varchar(191) NOT NULL DEFAULT '0',
  `assign_to` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_comments`
--

CREATE TABLE `bug_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `user_type` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_files`
--

CREATE TABLE `bug_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `extension` varchar(191) NOT NULL,
  `file_size` varchar(191) NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_statuses`
--

CREATE TABLE `bug_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bug_statuses`
--

INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Resolved', 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Unconfirmed', 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'In Progress', 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Verified', 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `sub_type` int(11) NOT NULL DEFAULT 0,
  `is_enabled` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Checking Account', 1060, 1, 1, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Petty Cash', 1065, 1, 1, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Account Receivables', 1200, 1, 1, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Allowance for doubtful accounts', 1205, 1, 1, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Inventory', 1510, 1, 2, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'Stock of Raw Materials', 1520, 1, 2, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'Stock of Work In Progress', 1530, 1, 2, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'Stock of Finished Goods', 1540, 1, 2, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'Goods Received Clearing account', 1550, 1, 2, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'Land and Buildings', 1810, 1, 3, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'Office Furniture and Equipement', 1820, 1, 3, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'Accum.depreciation-Furn. and Equip', 1825, 1, 3, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'Motor Vehicle', 1840, 1, 3, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(14, 'Accum.depreciation-Motor Vehicle', 1845, 1, 3, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(15, 'Account Payable', 2100, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(16, 'Deferred Income', 2105, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(17, 'Accrued Income Tax-Central', 2110, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(18, 'Income Tax Payable', 2120, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(19, 'Accrued Franchise Tax', 2130, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(20, 'Vat Provision', 2140, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(21, 'Purchase Tax', 2145, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(22, 'VAT Pay / Refund', 2150, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(23, 'Zero Rated', 2151, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(24, 'Capital import', 2152, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(25, 'Standard Import', 2153, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(26, 'Capital Standard', 2154, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(27, 'Vat Exempt', 2155, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(28, 'Accrued Use Tax Payable', 2160, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(29, 'Accrued Wages', 2210, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(30, 'Accrued Comp Time', 2220, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(31, 'Accrued Holiday Pay', 2230, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(32, 'Accrued Vacation Pay', 2240, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(33, 'Accr. Benefits - Central Provident Fund', 2310, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(34, 'Accr. Benefits - Stock Purchase', 2320, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(35, 'Accr. Benefits - Med, Den', 2330, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(36, 'Accr. Benefits - Payroll Taxes', 2340, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(37, 'Accr. Benefits - Credit Union', 2350, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(38, 'Accr. Benefits - Savings Bond', 2360, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(39, 'Accr. Benefits - Group Insurance', 2370, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(40, 'Accr. Benefits - Charity Cont.', 2380, 2, 4, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(41, 'Bank Loans', 2620, 2, 5, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(42, 'Loans from Shareholders', 2680, 2, 5, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(43, 'Common Shares', 3350, 2, 6, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(44, 'Reserves and Surplus', 3590, 2, 7, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(45, 'Owners Drawings', 3595, 2, 7, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(46, 'Opening Balances and adjustments', 3020, 3, 8, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(47, 'Owners Contribution', 3025, 3, 8, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(48, 'Profit and Loss ( current Year)', 3030, 3, 8, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(49, 'Retained income', 3035, 3, 8, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(50, 'Sales Income', 4010, 4, 9, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(51, 'Service Income', 4020, 4, 9, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(52, 'Shipping and Handling', 4430, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(53, 'Sundry Income', 4435, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(54, 'Interest Received', 4440, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(55, 'Foreign Exchange Gain', 4450, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(56, 'Unallocated Income', 4500, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(57, 'Discounts Received', 4510, 4, 10, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(58, 'Cost of Sales- On Services', 5005, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(59, 'Cost of Sales - Purchases', 5010, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(60, 'Operating Costs', 5015, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(61, 'Material Usage Varaiance', 5020, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(62, 'Breakage and Replacement Costs', 5025, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(63, 'Consumable Materials', 5030, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(64, 'Sub-contractor Costs', 5035, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(65, 'Purchase Price Variance', 5040, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(66, 'Direct Labour - COS', 5045, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(67, 'Purchases of Materials', 5050, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(68, 'Discounts Received', 5060, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(69, 'Freight Costs', 5100, 5, 11, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(70, 'Salaries and Wages', 5410, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(71, 'Directors Fees & Remuneration', 5415, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(72, 'Wages - Overtime', 5420, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(73, 'Members Salaries', 5425, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(74, 'UIF Payments', 5430, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(75, 'Payroll Taxes', 5440, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(76, 'Workers Compensation ( Coida )', 5450, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(77, 'Normal Taxation Paid', 5460, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(78, 'General Benefits', 5470, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(79, 'Provisional Tax Paid', 5510, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(80, 'Inc Tax Exp - State', 5520, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(81, 'Taxes - Real Estate', 5530, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(82, 'Taxes - Personal Property', 5540, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(83, 'Taxes - Franchise', 5550, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(84, 'Taxes - Foreign Withholding', 5560, 6, 12, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(85, 'Accounting Fees', 5610, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(86, 'Advertising and Promotions', 5615, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(87, 'Bad Debts', 5620, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(88, 'Courier and Postage', 5625, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(89, 'Depreciation Expense', 5660, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(90, 'Insurance Expense', 5685, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(91, 'Bank Charges', 5690, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(92, 'Interest Paid', 5695, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(93, 'Office Expenses - Consumables', 5700, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(94, 'Printing and Stationary', 5705, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(95, 'Security Expenses', 5710, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(96, 'Subscription - Membership Fees', 5715, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(97, 'Electricity, Gas and Water', 5755, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(98, 'Rent Paid', 5760, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(99, 'Repairs and Maintenance', 5765, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(100, 'Motor Vehicle Expenses', 5770, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(101, 'Petrol and Oil', 5771, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(102, 'Equipment Hire - Rental', 5775, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(103, 'Telephone and Internet', 5780, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(104, 'Travel and Accommodation', 5785, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(105, 'Meals and Entertainment', 5786, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(106, 'Staff Training', 5787, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(107, 'Utilities', 5790, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(108, 'Computer Expenses', 5791, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(109, 'Registrations', 5795, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(110, 'Licenses', 5800, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(111, 'Foreign Exchange Loss', 5810, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(112, 'Profit and Loss', 9990, 6, 13, 1, NULL, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_sub_types`
--

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_sub_types`
--

INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Current Asset', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Inventory Asset', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Non-current Asset', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Current Liabilities', 2, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Long Term Liabilities', 2, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'Share Capital', 2, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'Retained Earnings', 2, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'Owners Equity', 3, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'Sales Revenue', 4, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'Other Revenue', 4, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'Costs of Goods Sold', 5, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'Payroll Expenses', 6, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'General and Administrative expenses', 6, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_types`
--

CREATE TABLE `chart_of_account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_types`
--

INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Liabilities', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Equity', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Income', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Costs of Goods Sold', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'Expenses', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_deals`
--

CREATE TABLE `client_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payment_settings`
--

CREATE TABLE `company_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `project_id` varchar(191) DEFAULT NULL,
  `contract_description` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `client_signature` longtext DEFAULT NULL,
  `company_signature` longtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_attachment`
--

CREATE TABLE `contract_attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `files` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_comment`
--

CREATE TABLE `contract_comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `comment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_notes`
--

CREATE TABLE `contract_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` int(11) NOT NULL DEFAULT 0,
  `customer` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `tax_number` varchar(191) DEFAULT NULL,
  `contact` varchar(191) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) DEFAULT NULL,
  `billing_country` varchar(191) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_phone` varchar(191) DEFAULT NULL,
  `billing_zip` varchar(191) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_name` varchar(191) DEFAULT NULL,
  `shipping_country` varchar(191) DEFAULT NULL,
  `shipping_state` varchar(191) DEFAULT NULL,
  `shipping_city` varchar(191) DEFAULT NULL,
  `shipping_phone` varchar(191) DEFAULT NULL,
  `shipping_zip` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `lang` varchar(191) NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `module` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_questions`
--

CREATE TABLE `custom_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `is_required` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT 0.00,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) DEFAULT NULL,
  `products` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `labels` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_calls`
--

CREATE TABLE `deal_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) NOT NULL,
  `call_type` varchar(30) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `call_result` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_discussions`
--

CREATE TABLE `deal_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_emails`
--

CREATE TABLE `deal_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_files`
--

CREATE TABLE `deal_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_tasks`
--

CREATE TABLE `deal_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill` int(11) NOT NULL DEFAULT 0,
  `vendor` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_options`
--

CREATE TABLE `deduction_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_required` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ducument_uploads`
--

CREATE TABLE `ducument_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `role` varchar(191) NOT NULL,
  `document` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `from`, `slug`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'New User', 'ZenProERP', 'new_user', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'New Client', 'ZenProERP', 'new_client', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'New Support Ticket', 'ZenProERP', 'new_support_ticket', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Lead Assigned', 'ZenProERP', 'lead_assigned', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Deal Assigned', 'ZenProERP', 'deal_assigned', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'New Award', 'ZenProERP', 'new_award', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'Customer Invoice Sent', 'ZenProERP', 'customer_invoice_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'New Invoice Payment', 'ZenProERP', 'new_invoice_payment', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'New Payment Reminder', 'ZenProERP', 'new_payment_reminder', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'New Bill Payment', 'ZenProERP', 'new_bill_payment', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'Bill Resent', 'ZenProERP', 'bill_resent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'Proposal Sent', 'ZenProERP', 'proposal_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'Complaint Resent', 'ZenProERP', 'complaint_resent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(14, 'Leave Action Sent', 'ZenProERP', 'leave_action_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(15, 'Payslip Sent', 'ZenProERP', 'payslip_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(16, 'Promotion Sent', 'ZenProERP', 'promotion_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(17, 'Resignation Sent', 'ZenProERP', 'resignation_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(18, 'Termination Sent', 'ZenProERP', 'termination_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(19, 'Transfer Sent', 'ZenProERP', 'transfer_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(20, 'Trip Sent', 'ZenProERP', 'trip_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(21, 'Vender Bill Sent', 'ZenProERP', 'vender_bill_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(22, 'Warning Sent', 'ZenProERP', 'warning_sent', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(23, 'New Contract', 'ZenProERP', 'new_contract', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_langs`
--

CREATE TABLE `email_template_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_langs`
--

INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'New User', '<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 1, 'zh', 'New User', '<p>您好，<br>欢迎使用 {app_name}。</p><p><b>电子邮件 </b>：{email}<br><b>密码</b>：{password} </p><p>{app_url}</p><p>谢谢，<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 1, 'da', 'New User', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 1, 'de', 'New User', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 1, 'en', 'New User', '<p>Hello,&nbsp;<br>Welcome to {app_name}.</p><p><b>Email </b>: {email}<br><b>Password</b> : {password}</p><p>{app_url}</p><p>Thanks,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 1, 'es', 'New User', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 1, 'fr', 'New User', '<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 1, 'he', 'New User', '<p>שלום,&nbsp;<br>ברוכים הבאים אל {app_name}.</p><p><b>דוא\"ל </b>: {email}<br><b>סיסמה</b> : {password} </p><p>{app_url}</p><p>תודה,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 1, 'it', 'New User', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 1, 'ja', 'New User', '<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 1, 'nl', 'New User', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 1, 'pl', 'New User', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 1, 'ru', 'New User', '<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(14, 1, 'pt', 'New User', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(15, 1, 'tr', 'New User', '<p>Merhaba,&nbsp;<br>{app_name} e hoş geldiniz.</p><p><b>E-posta </b>: {email}<br><b>Şifre</b> : {şifre} </p><p>{app_url}</p><p>Teşekkürler,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(16, 1, 'pt-br', 'New User', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(17, 2, 'ar', 'New Client', '<p>مرحبا { client_name } ، </p><p>أنت الآن Client ..</p><p>البريد الالكتروني : { client_email } </p><p>كلمة السرية : { client_password }</p><p>{ app_url }</p><p>شكرا</p><p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(18, 2, 'zh', 'New Client', '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Hello {client_name}，</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">scotstyle =\"color: rgb(29， 28， 29); font-family: Slack-Lata， Slack-Fractions， appleLogo ， sans-serif; font-size: 15px; font-variant-ligatures: font-ligatures; backgrou-color: rgb(248， 248， 248);\">您现在是 Client..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">《 b data-stringify-type=\"bold\" style =\"boxit \" style: inherit ; color: rgb(29， 28， 29); font-family: Slack-lato，松弛 - 分数， appleLogo ， sans-serif; font-size: 15px; font-variant-ligatures: 常用 - ligatures; 背景色:rgb(248， 248， 248);\">Email</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_email}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">style =\"box-size: inherit ; color: rgb(29， 28， 29); font-family: Slack-lato， slack-馏分， appleLogo， sans-serif; font-size: 15px; font-variant-ligatures: 普通 - ligatures; 背景色:rgb(248， 248， 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Password</b><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">style =\"color : rgb(29， 28， 29); font-family: Slack-lato，松弛-分数， appleLogo， sans-serif; font-size: 15px; font -variant-ligatures: 普通 - ligatures; 背景色:rgb(248， 248， 248);\"> : {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">style=\"box-sizessis : inherit ; color: rgb(29， 28， 29); 字体系列:slack-lato，松弛分数， appleLogo ， sans-serif; 字体大小: 15px; 字体-变体-连接图: 公共连接 ; 背景色:rgb(248， 248， 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">谢谢，</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">style =\"box-size: inherit ; color: rgb(29， 28， 29); font-family: Slack-lato， slack-馏分， appleLogo， sans-serif; font-size: 15px; font-variant-ligatures: 普通 - ligatures; 背景色:rgb(248， 248， 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(19, 2, 'da', 'New Client', '<p>Hej { client_name },</p><p> Du er nu klient ..</p><p>E-mail: { client_email } </p><p>Password: { client_password }</p><p>{ app_url }</p><p>Tak.</p><p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(20, 2, 'de', 'New Client', '<p>Hallo {client_name}, </p><p>Sie sind jetzt Client ..</p><p>E-Mail: {client_email}</p><p> Kennwort: {client_password}</p><p>{app_url}</p><p>Danke,</p><p>{Anwendungsname}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(21, 2, 'en', 'New Client', '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Hello {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">You are now Client..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Email&nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_email}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Password</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">&nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Thanks,</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(22, 2, 'es', 'New Client', '<p>Hola {nombre_cliente},</p><p> ahora es Cliente ..</p><p>Correo electrónico: {client_email}</p><p> Contraseña: {client_password}</p><p>{app_url}</p><p>Gracias,</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(23, 2, 'fr', 'New Client', '<p>Bonjour { client_name }, </p><p>Vous êtes maintenant Client ..</p><p>Adresse électronique: { client_email } </p><p>Mot de passe: { client_password }</p><p>{ app_url }</p><p>Merci,</p><p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(24, 2, 'he', 'New Client', '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">הלו {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span סגנון = \" צבע: rgb (29, 28, 29); משפחת פונט: Sמחסור-Lato, ססור-שברים, appleלוגו, appleLogo, sans-serif; גודל גופן: 15px; גלגולי גופן: 15px; צבע-כללי רקע: rgb (248, 248, 248, 248); אתה עכשיו לקוח ...</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type = \"מודגש\" סגנון = \"מודגש\", צבע: צבע: rgb (29, 28, 29, 29); משפחת פונט: Slack-Lato, Slack-Fractions, AppleLogo, sans-serif; גודל גופן: 15px; גופנים-גלידות: צבע רקע: rgb: rgb (248, 248, 248, 248); #nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_ייל}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_ייל}</span><br לסגנון = \" תיבה: צבע: צבע: צבע: rgb (29, 28, 29); משפחה: Slack-Lato, Slack-Fractions, appleLogo, appleLogo, sans-serif; גודל גופן: 15px; גופן-יוני ליגריות: rgb-צבע רקע: rgb (248, 248, 248, 248);<b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">סיסמה</b><span סגנון = \" צבע: rgb (29, 28, 29); Slack-Lato, Slack-Lato, Slack-Fractions, appleLogo, appleLogo, applelogo, appleLogo, pleLogo, applelogo, applelogo, appleLogo, sans-serif; גופן = 15px; #15px; צבע רקע: rgb (248, 248, 248); &nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br לסגנון = \" תיבה-גודל: צבע: צבע: rgb (29, 28, 29); משפחת פונט: Slack-Lato, Slack-Fractions, appleLogo, appleלוגו, זנות-גודל גופן: 15px; צבע רקע: 15px; צבע רקע: rgb: rgb (248, 248, 248, 248);<span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">תודה,</span><br סטייל = \" תיבה: rgb: צבע: rgb (29, 28, 29); משפחת פונט: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גופן-גודל גופן: 15px; גופן-variant-קשירה: צבע רקע משותף: rgb (248, 248, 248);<span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(25, 2, 'it', 'New Client', '<p>Hello {client_name}, </p><p>Tu ora sei Client ..</p><p>Email: {client_email} </p><p>Password: {client_password}</p><p>{app_url}</p><p>Grazie,</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(26, 2, 'ja', 'New Client', '<p>こんにちは {client_name} 、</p><p>お客様になりました。</p><p>E メール : {client_email}</p><p> パスワード : {client_password}</p><p>{app_url}</p><p>ありがとう。</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(27, 2, 'nl', 'New Client', '<p>Hallo { client_name }, </p><p>U bent nu Client ..</p><p>E-mail: { client_email } </p><p>Wachtwoord: { client_password }</p><p>{ app_url }</p><p>Bedankt.</p><p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(28, 2, 'pl', 'New Client', '<p>Witaj {client_name }, </p><p>jesteś teraz Client ..</p><p>E-mail: {client_email }</p><p> Hasło: {client_password }</p><p>{app_url }</p><p>Dziękuję,</p><p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(29, 2, 'ru', 'New Client', '<p>Hello { client_name }, </p><p>Вы теперь клиент ..</p><p>Адрес электронной почты: { client_email } </p><p>Пароль: { client_password }</p><p>{ app_url }</p><p>Спасибо.</p><p>{ app_name }</p><p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(30, 2, 'pt', 'New Client', '<p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(31, 2, 'tr', 'New Client', '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Merhaba { client_name },</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style = \" color: rgb (29, 28, 29); font-family: Sack-Lato, Slack-Fragactions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb (248, 248, 248); \"> Rgb (248, 248, 248); \"> Artık Müşteri ..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type = \"bold\" style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksime-Lato, Seksiks-Frarits, appleLogo, sans-serif; font-size: 15px; font-variant-color: common-ligatures; background-color: rgb (248, 248, 248); \"> E-posta &nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: { client_email }</span><br style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksime-Lato, Sack-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Parola</b><span style = \" color: rgb (29, 28, 29); font-family: Seksime-lato, Seksi-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatür: common-ligature; background-color: rgb (248, 248, 248); \"> &nbsp;: { client_password }</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{ app_url }</span><br style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksi-Lato, sack-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Teşekkürler,</span><br style = \" box-boyutlandırma: devral; color: rgb (29, 28, 29); font-family: Seksime-Lapo, Seksime-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{ app_name }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(32, 2, 'pt-br', 'New Client', '<p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(33, 3, 'ar', 'New Support Ticket', '<p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">مرحبا</span><span style=\"font-size: 12pt;\">&nbsp;{support_name}</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">تم فتح تذكرة دعم جديدة.</span><span style=\"font-size: 12pt;\">.</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">عنوان</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_title}</span><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">أفضلية</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">تاريخ الانتهاء</span><span style=\"font-size: 12pt;\">: {support_end_date}</span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">رسالة دعم</span><span style=\"font-size: 12pt;\"><strong>:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">أطيب التحيات،</span><span style=\"font-size: 12pt;\">,</span><br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(34, 3, 'zh', 'New Support Ticket', '<p><span style=\"font-size: 12pt;\"><b>嗨</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\">新的支持请求已打开。</span><br><br><span style=\"font-size: 12pt;\"><strong>标题：</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>优先级：</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>结束日期</b>：{support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>支持消息：</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>亲切的问候</b>，</span><br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(35, 3, 'da', 'New Support Ticket', '<p><b>Hej</b>&nbsp;{support_name}<br><br></p><p>Ny supportbillet er blevet åbnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioritet</b>: {support_priority}<br></p><p><b>Slutdato</b>: {support_end_date}</p><p><br></p><p><b>Supportmeddelelse</b>:<br>{support_description}<br><br></p><p><b>Med venlig hilsen</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(36, 3, 'de', 'New Support Ticket', '<p><b>Hallo</b>&nbsp;{support_name}<br><br></p><p>Neues Support-Ticket wurde eröffnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Priorität</b>: {support_priority}<br></p><p><b>Endtermin</b>: {support_end_date}</p><p><br></p><p><b>Support-Nachricht</b>:<br>{support_description}<br><br></p><p><b>Mit freundlichen Grüßen</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(37, 3, 'en', 'New Support Ticket', '<p><span style=\"font-size: 12pt;\"><b>Hi</b>&nbsp;{support_name}</span><br><br><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br><br><span style=\"font-size: 12pt;\"><strong>Title:</strong>&nbsp;{support_title}</span><br><span style=\"font-size: 12pt;\"><strong>Priority:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>End Date</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\"><strong>Support message:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br><b>Kind Regards</b>,</span><br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(38, 3, 'es', 'New Support Ticket', '<p><b>Hola</b>&nbsp;{support_name}<br><br></p><p>Se ha abierto un nuevo ticket de soporte.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridad</b>: {support_priority}<br></p><p><b>Fecha final</b>: {support_end_date}</p><p><br></p><p><b>Mensaje de apoyo</b>:<br>{support_description}<br><br></p><p><b>Saludos cordiales</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(39, 3, 'fr', 'New Support Ticket', '<p><b>salut</b>&nbsp;{support_name}<br><br></p><p>Un nouveau ticket d\'assistance a été ouvert.<br><br></p><p><b>Titre</b>: {support_title}<br></p><p><b>Priorité</b>: {support_priority}<br></p><p><b>Date de fin</b>: {support_end_date}</p><p><b>Message d\'assistance</b>:<br>{support_description}<br><br></p><p><b>Sincères amitiés</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(40, 3, 'he', 'New Support Ticket', '<p><span style=\"font-size: 12pt;\"><b>היי</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\"> כרטיס תמיכה חדש נפתח.</span><br><br><span style=\"font-size: 12pt;\"><strong>כותרת:</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>עדיפות:</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>תאריך סיום</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>הודעת תמיכה:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>בברכה</b>,</span><br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(41, 3, 'it', 'New Support Ticket', '<p><b>Ciao</b>&nbsp;{support_name},<br><br></p><p>È stato aperto un nuovo ticket di supporto.<br><br></p><p><b>Titolo</b>: {support_title}<br></p><p><b>Priorità</b>: {support_priority}<br></p><p><b>Data di fine</b>: {support_end_date}</p><p><br></p><p><b>Messaggio di supporto</b>:<br>{support_description}</p><p><b>Cordiali saluti</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(42, 3, 'ja', 'New Support Ticket', '<p>こんにちは {support_name}<br><br></p><p>新しいサポートチケットがオープンしました。.<br><br></p><p>題名: {support_title}<br></p><p>優先: {support_priority}<br></p><p>終了日: {support_end_date}</p><p><br></p><p>サポートメッセージ:<br>{support_description}<br><br></p><div class=\"tw-ta-container hide-focus-ring tw-lfl focus-visible\" id=\"tw-target-text-container\" tabindex=\"0\" data-focus-visible-added=\"\" style=\"overflow: hidden; position: relative; outline: 0px;\"><pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; line-height: 32px; border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; overflow-wrap: break-word;\"><span lang=\"ja\">敬具、</span>,</pre></div><p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(43, 3, 'nl', 'New Support Ticket', '<p><b>Hoi</b>&nbsp;{support_name}<br><br></p><p>Er is een nieuw supportticket geopend.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioriteit</b>: {support_priority}<br></p><p><b>Einddatum</b>: {support_end_date}</p><p><br></p><p><b>Ondersteuningsbericht</b>:<br>{support_description}<br><br></p><p><b>Vriendelijke groeten</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(44, 3, 'pl', 'New Support Ticket', '<p><b>cześć</b>&nbsp;{support_name}<br><br></p><p>Nowe zgłoszenie do pomocy technicznej zostało otwarte.<br><br></p><p><b>Tytuł</b>: {support_title}<br></p><p><b>Priorytet</b>: {support_priority}<br></p><p><b>Data końcowa</b>: {support_end_date}</p><p><br></p><p><b>Wiadomość pomocy</b>:<br>{support_description}<br><br></p><p><b>Z poważaniem</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(45, 3, 'ru', 'New Support Ticket', '<p><b>Здравствуй</b>&nbsp;{support_name}<br><br></p><p>Открыта новая заявка в службу поддержки.<br><br></p><p><b>заглавие</b>: {support_title}<br></p><p><b>Приоритет</b>: {support_priority}<br></p><p><b>Дата окончания</b>: {support_end_date}</p><p><br></p><p><b>Сообщение поддержки</b>:<br>{support_description}<br><br></p><p><b>С уважением</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(46, 3, 'pt', 'New Support Ticket', '<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>ОNovo ticket de suporte foi aberto.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>С Atenciosamente</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(47, 3, 'tr', 'New Support Ticket', '<p><span style=\"font-size: 12pt;\"><b>Merhaba</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\"> Yeni destek bileti açıldı.</span><br><br><span style=\"font-size: 12pt;\"><strong>Başlık:</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>Öncelik:</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>Bitiş Tarihi</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>Destek mesajı:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>Saygılarımızla</b>,</span><br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(48, 3, 'pt-br', 'New Support Ticket', '<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>ОNovo ticket de suporte foi aberto.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>С Atenciosamente</b>,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(49, 4, 'ar', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">مرحبا,</span><br style=\"font-family: sans-serif;\"></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">تم تعيين عميل محتمل جديد لك.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">اسم العميل المحتمل&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"\">الرصاص البريد الإلكتروني<span style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">خط أنابيب الرصاص&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">مرحلة الرصاص&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">الموضوع الرئيسي: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(50, 4, 'zh', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span 样式=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">您好，</ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">新潜在客户已分配给您。</span ></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>潜在客户姓名</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" 字体大小: =\"\" 14px;\"=\"\"><span open=\"\"sans\";\"=\"\" style=\"font-size: 1rem;\"><b>潜在客户电子邮件</b></span><span open =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" 字体大小:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >引导管道</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> ：{lead_pipeline}</span></p><p style=\"line-height: 28 像素；字体系列：Nunito，\" segoe=\"\" ui\"，=\"\" arial;=\"\" 字体大小：=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>领先阶段</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> ：{lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>主要主题</b>：{lead_subject}</span></p>< p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(51, 4, 'da', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hej,</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Ny bly er blevet tildelt dig.</span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead-e-mail</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></p><p><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blyrørledning</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead scenen</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_stage}</span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blynavn</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span><span style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><br></span><br></span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(52, 4, 'de', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Neuer Lead wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Name</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead-E-Mail</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Pipeline</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Stage</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(53, 4, 'en', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">New Lead has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Name</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>Lead Email</b></span><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Pipeline</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Stage</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Subject</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(54, 4, 'es', 'Lead Assigned', '<p style=\"line-height: 28px;\">Hola,<br style=\"\"></p><p>Se le ha asignado un nuevo plomo.</p><p></p><p style=\"line-height: 28px;\"><b>Nombre principal</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Correo electrónico</b> principal&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Tubería de plomo</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>Etapa de plomo</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\"><b>Hauptthema</b>: {lead_subject}</span><br></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(55, 4, 'fr', 'Lead Assigned', '<p style=\"line-height: 28px;\">Bonjour,<br style=\"\"></p><p style=\"\">Un nouveau prospect vous a été attribué.</p><p></p><p style=\"line-height: 28px;\"><b>Nom du responsable</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Courriel principal</b>&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Pipeline de plomb</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>Étape principale</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Sujet principal</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(56, 4, 'he', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style = \"font-family:\" open = \"\" sans \";\" = \"\"> </span> <span style = \"font-family:\" open = \"\" sans \";\" = \"\"> שלום, </ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">הפניה חדשה הוקצה לך.</span ></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>שם ליד</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size: =\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>דוא\"ל לידים</b></span><span פתוח =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >Lead Pipeline</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>שלב מוביל</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>נושא מוביל</b>: {lead_subject}</span></p>< p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(57, 4, 'it', 'Lead Assigned', '<p style=\"line-height: 28px;\">Ciao,<br style=\"\"></p><p>New Lead è stato assegnato a te.</p><p><b>Lead Email</b>&nbsp;: {lead_email}</p><p><b>Conduttura di piombo&nbsp;: {lead_pipeline}</b></p><p><b>Lead Stage</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Nome del lead</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Soggetto principale</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(58, 4, 'ja', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">こんにちは、</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">新しいリードが割り当てられました。</span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードメール</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードパイプライン</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードステージ</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リード名</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span><br></span></p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\" style=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">リードサブジェクト</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_subject}</span></span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(59, 4, 'nl', 'Lead Assigned', '<p style=\"line-height: 28px;\">Hallo,<br style=\"\"></p><p style=\"\">Nieuwe lead is aan u toegewezen.<br><b>E-mail leiden</b>&nbsp;: {lead_email}<br><b>Lead Pipeline</b>&nbsp;: {lead_pipeline}<br><b>Hoofdfase</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Lead naam</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Hoofdonderwerp</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(60, 4, 'pl', 'Lead Assigned', '<p style=\"line-height: 28px;\">Witaj,<br style=\"\">Nowy potencjalny klient został do ciebie przypisany.</p><p style=\"line-height: 28px;\"><b>Imię i nazwisko</b>&nbsp;: {lead_name}<br><b>Główny adres e-mail</b>&nbsp;: {lead_email}<br><b>Ołów rurociągu</b>&nbsp;: {lead_pipeline}<br><b>Etap prowadzący</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Główny temat</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(61, 4, 'ru', 'Lead Assigned', '<p style=\"line-height: 28px;\">Привет,<br style=\"\">Новый Лид был назначен вам.</p><p style=\"line-height: 28px;\"><b>Имя лидера</b>&nbsp;: {lead_name}<br><b>Ведущий Email</b>&nbsp;: {lead_email}<br><b>Ведущий трубопровод</b>&nbsp;: {lead_pipeline}<br><b>Ведущий этап</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Ведущая тема</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(62, 4, 'pt', 'Lead Assigned', '<p style=\"line-height: 28px;\">Olá,<br style=\"\">O novo lead foi atribuído a você.</p><p style=\"line-height: 28px;\"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Estágio principal</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Assunto principal</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(63, 4, 'tr', 'Lead Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span stili =\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Merhaba,</ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Yeni Müşteri Atandı.</span ></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Müşteri Adı</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size: =\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>Müşteri E-postası</b></span><spanopen open =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >Müşteri Hattı</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_pipeline}</span></p><p style=\"line-height: 28 piksel; yazı tipi ailesi: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>Kurşun Aşaması</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Aday Konu</b>: {lead_subject}</span></p>< p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(64, 4, 'pt-br', 'Lead Assigned', '<p style=\"line-height: 28px;\">Olá,<br style=\"\">O novo lead foi atribuído a você.</p><p style=\"line-height: 28px;\"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Estágio principal</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Assunto principal</b>: {lead_subject}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(65, 5, 'ar', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">مرحبا،</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">تم تعيين صفقة جديدة لك.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">اسم الصفقة</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">خط أنابيب الصفقة</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">مرحلة الصفقة</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">حالة الصفقة</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">سعر الصفقة</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(66, 5, 'zh', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">你好，< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">新优惠已分配给您。</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: BOLDER;\">交易名称</span>：{deal_name}<br><span style=\"font-weight：bolder;\">交易渠道</span>：{deal_pipeline}<br><span style=\"font-weight: BOLDER;\">交易阶段</span>：{deal_stage}<br><span style=\"font-weight：bolder;\">交易状态</span>：{deal_status}<br> <span style=\"font-weight: Bolder;\">交易价格</span>：{deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(67, 5, 'da', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hej,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal er blevet tildelt til dig.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Navn</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Fase</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal pris</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(68, 5, 'de', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Geschäftsname</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Ausgehandelter Preis</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(69, 5, 'en', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Name</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal Price</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(70, 5, 'es', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hola,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal ha sido asignado a usted.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nombre del trato</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Tubería de reparto</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etapa de reparto</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Estado del acuerdo</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Precio de oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(71, 5, 'fr', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Bonjour,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Le New Deal vous a été attribué.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nom de l\'accord</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de transactions</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Étape de l\'opération</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Statut de l\'accord</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prix ​​de l\'offre</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(72, 5, 'he', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">שלום,< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">דיל חדש הוקצה לך.</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: bolder;\">שם העסקה</span> : {deal_name}<br><span style=\"font-weight: bolder;\">צינור העסקה</span> : {deal_pipeline}<br><span style=\"font-weight: bolder;\">שלב העסקה</span> : {deal_stage}<br><span style=\"font-weight: bolder;\">סטטוס העסקה</span> : {deal_status}<br> <span style=\"font-weight: bolder;\">מחיר מבצע</span> : {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(73, 5, 'it', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Ciao,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal è stato assegnato a te.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome dell\'affare</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline di offerte</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Stage Deal</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Stato dell\'affare</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prezzo dell\'offerta</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(74, 5, 'ja', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">こんにちは、</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">新しい取引が割り当てられました。</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">取引名</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">取引パイプライン</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">取引ステージ</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">取引状況</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">取引価格</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(75, 5, 'nl', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal is aan u toegewezen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Dealnaam</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Dealstatus</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal prijs</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(76, 5, 'pl', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Witaj,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Umowa została przeniesiona {deal_old_stage} do&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nazwa oferty</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etap transakcji</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status oferty</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Cena oferty</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(77, 5, 'ru', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Привет,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Название сделки</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Трубопровод сделки</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Этап сделки</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Статус сделки</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Цена сделки</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(78, 5, 'pt', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Olá,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome do negócio</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de negócios</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Estágio do negócio</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status da transação</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Preço da oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(79, 5, 'tr', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Merhaba,< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Size Yeni Anlaşma Atandı.</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: bolder;\">Anlaşma Adı</span> : {deal_name}<br><span style=\"font-weight: bolder;\">Anlaşma Hattı</span> : {deal_pipeline}<br><span style=\"font-weight: bolder;\">Anlaşma Aşaması</span> : {deal_stage}<br><span style=\"font-weight: bolder;\">Anlaşma Durumu</span> : {deal_status}<br> <span style=\"font-weight: bolder;\">Anlaşma Fiyatı</span> : {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(80, 5, 'pt-br', 'Deal Assigned', '<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Olá,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome do negócio</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de negócios</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Estágio do negócio</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status da transação</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Preço da oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(81, 6, 'ar', 'New Award', '<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(82, 6, 'zh', 'New Award', '<p>嗨，<span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>我很高兴提名.</p><p>我很满意他/她是获得该奖项的最佳员工。 </p><p>我发现他/她是一个以目标为导向的人，高效且非常准时。</p><p>如果您有任何问题，请随时与我们联系。<br></p ><p>谢谢您，</p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(83, 6, 'da', 'New Award', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(84, 6, 'de', 'New Award', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(85, 6, 'en', 'New Award', '<p>Hi , <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>I am much pleased to nominate .</p><p>I am satisfied that he/she is the best employee for the award. </p><p>I have realized  that he/she is a goal-oriented person, efficient and very punctual .</p><p>Feel free to reach out if you have any question.<br></p><p>Thank You, </p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(86, 6, 'es', 'New Award', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(87, 6, 'fr', 'New Award', '<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(88, 6, 'he', 'New Award', '<p>שלום, <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>אני שמח מאוד להציע מועמדות .</p><p>אני מרוצה מכך שהוא/היא העובד הטוב ביותר עבור הפרס. </p><p>הבנתי  שהוא/היא אדם ממוקד מטרה, יעיל ומאוד דייקן .</p><p>אל תהסס לפנות אם יש לך שאלה כלשהי.<br></p ><p>תודה, </p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(89, 6, 'it', 'New Award', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(90, 6, 'ja', 'New Award', '<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(91, 6, 'nl', 'New Award', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(92, 6, 'pl', 'New Award', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(93, 6, 'ru', 'New Award', '<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(94, 6, 'pt', 'New Award', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(95, 6, 'tr', 'New Award', '<p>Merhaba , <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>Aday göstermekten çok memnunum .</p><p>Ödül için en iyi çalışanın o olduğundan memnunum. </p><p>Hedef odaklı, verimli ve çok dakik biri olduğunu fark ettim.</p><p>Herhangi bir sorunuz olursa bize ulaşmaktan çekinmeyin.<br></p ><p>Teşekkürler, </p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(96, 6, 'pt-br', 'New Award', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(97, 7, 'ar', 'Customer Invoice Sent', '<p>مرحب<span style=\"text-align: var(--bs-body-text-align);\">مرحبا ، { invoice_name }</span></p><p>مرحبا بك في { app_name }</p><p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { invoice_number } للخدمة / الخدمة.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ببساطة ، اضغط على الاختيار بأسفل :&nbsp;</span></p><p>{ invoice_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(98, 7, 'zh', 'Customer Invoice Sent', '<p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span 样式=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">嗨， {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">欢迎使用 {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\"14px;\"=\"\">希望这封电子邮件能让您满意！请参阅随附的发票号码 {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} 用于产品/服务。</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">只需点击下面的按钮即可：</p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">如果您有任何疑问，请随时与我们联系。 </p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >谢谢，</p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">问候，</p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px;字体系列：Nunito、\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(99, 7, 'da', 'Customer Invoice Sent', '<p>Hej, { invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Velkommen til { app_name }</span></p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { invoice_number } for product/service.</p><p>Klik på knappen nedenfor:&nbsp;</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Du er velkommen til at række ud, hvis du har nogen spørgsmål.</span></p><p>Tak.</p><p>Med venlig hilsen</p><p>{ company_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(100, 7, 'de', 'Customer Invoice Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {invoice_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hoffe, diese E-Mail findet dich gut! Bitte beachten Sie die beigefügte Rechnungsnummer {invoice_number} für Produkt/Service.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Klicken Sie einfach auf den Button unten:&nbsp;</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{invoice_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(101, 7, 'en', 'Customer Invoice Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">Hi ,{invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Welcome to {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Hope this email finds you well! Please see attached invoice number {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">} for product/service.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Simply click on the button below: </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Feel free to reach out if you have any questions.</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Thank You,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Regards,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(102, 7, 'es', 'Customer Invoice Sent', '<p>Hi, {invoice_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span></p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {invoice_number} para el producto/servicio.</p><p>Simplemente haga clic en el botón de abajo:&nbsp;</p><p>{invoice_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Siéntase libre de llegar si usted tiene alguna pregunta.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Gracias,</span></p><p>Considerando,</p><p>{nombre_empresa}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(103, 7, 'fr', 'Customer Invoice Sent', '<p>Bonjour, { nom_appel }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>J espère que ce courriel vous trouve bien ! Voir le numéro de facture { invoice_number } pour le produit/service.</p><p>Cliquez simplement sur le bouton ci-dessous:&nbsp;</p><p>{ url-invoque_utilisateur }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(104, 7, 'he', 'Customer Invoice Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style = \"Font-family:\" Open = \"\" sans \";\" = \"\"> </span> <span style = \"text-align: var (-bs-body-text-align);\"> hi, {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">ברוכים הבאים אל {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">מקווה שהמייל הזה ימצא אותך היטב! ראה את מספר החשבונית המצורפת {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} עבור מוצר/שירות.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">פשוט לחץ על הכפתור למטה: </p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">אל תהסס לפנות אם יש לך שאלות כלשהן. </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >תודה,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">בברכה,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(105, 7, 'it', 'Customer Invoice Sent', '<p>Ciao, {nome_invoca_}</p><p>Benvenuti in {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura collegato {invoice_number} per il prodotto/servizio.</span></p><p>Semplicemente clicca sul pulsante sottostante:&nbsp;</p><p>{invoice_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(106, 7, 'ja', 'Customer Invoice Sent', '<p>こんにちは、 {請求書名}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスについては、添付された請求書番号 {invoice_number} を参照してください。</p><p>以下のボタンをクリックしてください。&nbsp;</p><p>{請求書 URL}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">質問がある場合は、自由に連絡してください。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ありがとうございます</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">よろしく</span></p><p>{ company_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(107, 7, 'nl', 'Customer Invoice Sent', '<p>Hallo, { invoice_name }</p><p>Welkom bij { app_name }</p><p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde factuurnummer { invoice_number } voor product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Klik gewoon op de knop hieronder:&nbsp;</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(108, 7, 'pl', 'Customer Invoice Sent', '<p>Witaj, {invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span></p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Sprawdź załączoną fakturę numer {invoice_number } dla produktu/usługi.</p><p>Wystarczy kliknąć na przycisk poniżej:&nbsp;</p><p>{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>{company_name }</p><p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(109, 7, 'ru', 'Customer Invoice Sent', '<p>Привет, { invoice_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный номер счета-фактуры { invoice_number } для производства/услуги.</p><p>Просто нажмите на кнопку ниже:&nbsp;</p><p>{ invoice_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>{ company_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(110, 7, 'pt', 'Customer Invoice Sent', '<p><span style=\"font-size: 14.4px;\">Oi, {invoice_name}</span></p><p><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p><span style=\"font-size: 14.4px;\">Espero que este e-mail encontre você bem! Por favor, consulte o número da fatura anexa {invoice_number} para produto/serviço.</span></p><p><span style=\"font-size: 14.4px;\">Basta clicar no botão abaixo:&nbsp;</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{invoice_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">{company_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(111, 7, 'tr', 'Customer Invoice Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span stili =\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">Merhaba , {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{app_name}</p><p style=\"line-height: 28px; font-family: Nunito ya hoş geldiniz, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Umarım bu e-posta sizi bulur! Lütfen ekteki fatura numarasına bakın {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} ürün/hizmet için.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Aşağıdaki düğmeyi tıklamanız yeterlidir: </p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Herhangi bir sorunuz olursa bize ulaşmaktan çekinmeyin. </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >Teşekkürler,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">Saygılarımızla,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{şirket_adı}</p><p style=\"line-height: 28px; yazı tipi ailesi: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(112, 7, 'pt-br', 'Customer Invoice Sent', '<p><span style=\"font-size: 14.4px;\">Oi, {invoice_name}</span></p><p><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p><span style=\"font-size: 14.4px;\">Espero que este e-mail encontre você bem! Por favor, consulte o número da fatura anexa {invoice_number} para produto/serviço.</span></p><p><span style=\"font-size: 14.4px;\">Basta clicar no botão abaixo:&nbsp;</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{invoice_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">{company_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(113, 8, 'ar', 'New Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(114, 8, 'zh', 'New Invoice Payment', '<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">嗨，</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">欢迎来到 {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">亲爱的{invoice_ payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">我们已收到您于 {invoice_ payment_date} 日期提交的 {invoice_number} 金额为 {invoice_ payment_amount} 的付款</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">您的 {invoice_number} 应付金额为 { payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">我们感谢您及时付款，并期待将来继续与您开展业务。</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">非常感谢您，祝您有美好的一天！！</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">问候，</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(115, 8, 'da', 'New Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(116, 8, 'de', 'New Invoice Payment', '<p>Hi,</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Sehr geehrter {invoice_payment_name}</p>\n                    <p>Wir haben Ihre Zahlung {invoice_payment_amount} f&uuml;r {invoice_number}, die am Datum {invoice_payment_date} &uuml;bergeben wurde, erhalten.</p>\n                    <p>Ihr {invoice_number} -f&auml;lliger Betrag ist {payment_dueAmount}</p>\n                    <p>Wir freuen uns &uuml;ber Ihre prompte Bezahlung und freuen uns auf das weitere Gesch&auml;ft mit Ihnen in der Zukunft.</p>\n                    <p>Vielen Dank und habe einen guten Tag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(117, 8, 'en', 'New Invoice Payment', '<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Welcome to {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {invoice_payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We have recieved your amount {invoice_payment_amount} payment for {invoice_number} submited on date {invoice_payment_date}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Your {invoice_number} Due amount is {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We appreciate your prompt payment and look forward to continued business with you in the future.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Thank you very much and have a good day!!</span></span></p>\n                    <p>&nbsp;</p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Regards,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(118, 8, 'es', 'New Invoice Payment', '<p>Hola,</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>Estimado {invoice_payment_name}</p>\n                    <p>Hemos recibido su importe {invoice_payment_amount} pago para {invoice_number} submitado en la fecha {invoice_payment_date}</p>\n                    <p>El importe de {invoice_number} Due es {payment_dueAmount}</p>\n                    <p>Agradecemos su pronto pago y esperamos continuar con sus negocios con usted en el futuro.</p>\n                    <p>Muchas gracias y que tengan un buen d&iacute;a!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(119, 8, 'fr', 'New Invoice Payment', '<p>Salut,</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Cher { invoice_payment_name }</p>\n                    <p>Nous avons re&ccedil;u votre montant { invoice_payment_amount } de paiement pour { invoice_number } soumis le { invoice_payment_date }</p>\n                    <p>Votre {invoice_number} Montant d&ucirc; est { payment_dueAmount }</p>\n                    <p>Nous appr&eacute;cions votre rapidit&eacute; de paiement et nous attendons avec impatience de poursuivre vos activit&eacute;s avec vous &agrave; lavenir.</p>\n                    <p>Merci beaucoup et avez une bonne journ&eacute;e ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(120, 8, 'he', 'New Invoice Payment', '<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">שלום,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">ברוך הבא אל {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{invoice_payment_name}</span></span></p> היקר\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">קיבלנו את התשלום שלך בסכום {invoice_payment_amount} עבור {invoice_number} שנשלח בתאריך {invoice_payment_date}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">סכום התשלום שלך ב-{invoice_number} הוא {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">אנו מעריכים את התשלום המהיר שלך ומצפים להמשך העסקים איתך בעתיד.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">תודה רבה ויום טוב!!</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">בברכה,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(121, 8, 'it', 'New Invoice Payment', '<p>Ciao,</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Caro {invoice_payment_name}</p>\n                    <p>Abbiamo ricevuto la tua quantit&agrave; {invoice_payment_amount} pagamento per {invoice_number} subita alla data {invoice_payment_date}</p>\n                    <p>Il tuo {invoice_number} A somma cifra &egrave; {payment_dueAmount}</p>\n                    <p>Apprezziamo il tuo tempestoso pagamento e non vedo lora di continuare a fare affari con te in futuro.</p>\n                    <p>Grazie mille e buona giornata!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(122, 8, 'ja', 'New Invoice Payment', '<p>こんにちは。</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>{ invoice_payment_name} に出れます</p>\n                    <p>{ invoice_payment_date} 日付で提出された {請求書番号} の支払金額 } の金額を回収しました。 }</p>\n                    <p>お客様の {請求書番号} 予定額は {payment_dueAmount} です</p>\n                    <p>お客様の迅速な支払いを評価し、今後も継続してビジネスを継続することを期待しています。</p>\n                    <p>ありがとうございます。良い日をお願いします。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(123, 8, 'nl', 'New Invoice Payment', '<p>Hallo,</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Beste { invoice_payment_name }</p>\n                    <p>We hebben uw bedrag ontvangen { invoice_payment_amount } betaling voor { invoice_number } ingediend op datum { invoice_payment_date }</p>\n                    <p>Uw { invoice_number } verschuldigde bedrag is { payment_dueAmount }</p>\n                    <p>Wij waarderen uw snelle betaling en kijken uit naar verdere zaken met u in de toekomst.</p>\n                    <p>Hartelijk dank en hebben een goede dag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(124, 8, 'pl', 'New Invoice Payment', '<p>Witam,</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Droga {invoice_payment_name }</p>\n                    <p>Odebrano kwotę {invoice_payment_amount } płatności za {invoice_number } w dniu {invoice_payment_date }, kt&oacute;ry został zastąpiony przez użytkownika.</p>\n                    <p>{invoice_number } Kwota należna: {payment_dueAmount }</p>\n                    <p>Doceniamy Twoją szybką płatność i czekamy na kontynuację działalności gospodarczej z Tobą w przyszłości.</p>\n                    <p>Dziękuję bardzo i mam dobry dzień!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(125, 8, 'ru', 'New Invoice Payment', '<p>Привет.</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Дорогая { invoice_payment_name }</p>\n                    <p>Мы получили вашу сумму оплаты {invoice_payment_amount} для { invoice_number }, подавшей на дату { invoice_payment_date }</p>\n                    <p>Ваша { invoice_number } Должная сумма-{ payment_dueAmount }</p>\n                    <p>Мы ценим вашу своевременную оплату и надеемся на продолжение бизнеса с вами в будущем.</p>\n                    <p>Большое спасибо и хорошего дня!!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(126, 8, 'pt', 'New Invoice Payment', '<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(127, 8, 'tr', 'New Invoice Payment', '<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Merhaba,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">{app_name}</span></span></p> e hoş geldiniz\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Sayın {invoice_payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">{invoice_payment_date}</span></span></p> tarihinde gönderdiğiniz {invoice_number} için {invoice_payment_amount} tutarındaki ödemenizi aldık\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Ödenmesi gereken {invoice_number} tutarındaki tutar {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Hızlı ödemeniz için teşekkür ederiz ve gelecekte sizinle iş yapmaya devam etmeyi dört gözle bekliyoruz.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Çok teşekkür ederiz, iyi günler dilerim!!</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Saygılarımızla,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: ortak bitişik harfler;\">{şirket_adı}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(128, 8, 'pt-br', 'New Invoice Payment', '<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(129, 9, 'ar', 'New Payment Reminder', '<p>عزيزي ، { payment_reminder_name }</p>\n                    <p>آمل أن تكون بخير. هذا مجرد تذكير بأن الدفع على الفاتورة { invoice_payment_number } الاجمالي { invoice_payment_dueAmount } ، والتي قمنا بارسالها على { payment_reminder_date } مستحق اليوم.</p>\n                    <p>يمكنك دفع مبلغ لحساب البنك المحدد على الفاتورة.</p>\n                    <p>أنا متأكد أنت مشغول ، لكني أقدر إذا أنت يمكن أن تأخذ a لحظة ونظرة على الفاتورة عندما تحصل على فرصة.</p>\n                    <p>إذا كان لديك أي سؤال مهما يكن ، يرجى الرد وسأكون سعيدا لتوضيحها.</p>\n                    <p>&nbsp;</p>\n                    <p>شكرا&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(130, 9, 'zh', 'New Payment Reminder', '<p>亲爱的，{ payment_reminder_name}</p>\n                    <p>希望您一切顺利。这只是一个提醒，我们于 { payment_reminder_date} 发送的发票 {invoice_ payment_number} 总应付金额 {invoice_ payment_dueAmount} 的付款将于今天到期。</p>\n                    <p>您可以向发票上指定的银行帐户付款。</p>\n                    <p>我确信您很忙，但如果您有机会花点时间查看一下发票，我将不胜感激。</p>\n                    <p>如果您有任何疑问，请回复，我很乐意为您解答。</p>\n                    <p> </p>\n                    <p>谢谢，</p>\n                    <p>{公司名称}</p>\n                    <p>{app_url}</p>\n                    <p> </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(131, 9, 'da', 'New Payment Reminder', '<p>K&aelig;re, { payment_reminder_name }</p>\n                    <p>Dette er blot en p&aring;mindelse om, at betaling p&aring; faktura { invoice_payment_number } i alt { invoice_payment_dueAmount}, som vi sendte til { payment_reminder_date }, er forfalden i dag.</p>\n                    <p>Du kan foretage betalinger til den bankkonto, der er angivet p&aring; fakturaen.</p>\n                    <p>Jeg er sikker p&aring; du har travlt, men jeg ville s&aelig;tte pris p&aring;, hvis du kunne tage et &oslash;jeblik og se p&aring; fakturaen, n&aring;r du f&aring;r en chance.</p>\n                    <p>Hvis De har nogen sp&oslash;rgsm&aring;l, s&aring; svar venligst, og jeg vil med gl&aelig;de tydeligg&oslash;re dem.</p>\n                    <p>&nbsp;</p>\n                    <p>Tak.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(132, 9, 'de', 'New Payment Reminder', '<p>Sehr geehrte/r, {payment_reminder_name}</p>\n                    <p>Ich hoffe, Sie sind gut. Dies ist nur eine Erinnerung, dass die Zahlung auf Rechnung {invoice_payment_number} total {invoice_payment_dueAmount}, die wir gesendet am {payment_reminder_date} ist heute f&auml;llig.</p>\n                    <p>Sie k&ouml;nnen die Zahlung auf das auf der Rechnung angegebene Bankkonto vornehmen.</p>\n                    <p>Ich bin sicher, Sie sind besch&auml;ftigt, aber ich w&uuml;rde es begr&uuml;&szlig;en, wenn Sie einen Moment nehmen und &uuml;ber die Rechnung schauen k&ouml;nnten, wenn Sie eine Chance bekommen.</p>\n                    <p>Wenn Sie irgendwelche Fragen haben, antworten Sie bitte und ich w&uuml;rde mich freuen, sie zu kl&auml;ren.</p>\n                    <p>&nbsp;</p>\n                    <p>Danke,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(133, 9, 'en', 'New Payment Reminder', '<p>Dear, {payment_reminder_name}</p>\n                    <p>I hope you&rsquo;re well.This is just a reminder that payment on invoice {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , which we sent on {payment_reminder_date} is due today.</p>\n                    <p>You can make payment to the bank account specified on the invoice.</p>\n                    <p>I&rsquo;m sure you&rsquo;re busy, but I&rsquo;d appreciate if you could take a moment and look over the invoice when you get a chance.</p>\n                    <p>If you have any questions whatever, please reply and I&rsquo;d be happy to clarify them.</p>\n                    <p>&nbsp;</p>\n                    <p>Thanks,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(134, 9, 'es', 'New Payment Reminder', '<p>Estimado, {payment_reminder_name}</p>\n                    <p>Espero que est&eacute;s bien. Esto es s&oacute;lo un recordatorio de que el pago en la factura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos en {payment_reminder_date} se vence hoy.</p>\n                    <p>Puede realizar el pago a la cuenta bancaria especificada en la factura.</p>\n                    <p>Estoy seguro de que est&aacute;s ocupado, pero agradecer&iacute;a si podr&iacute;as tomar un momento y mirar sobre la factura cuando tienes una oportunidad.</p>\n                    <p>Si tiene alguna pregunta, por favor responda y me gustar&iacute;a aclararlas.</p>\n                    <p>&nbsp;</p>\n                    <p>Gracias,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(135, 9, 'fr', 'New Payment Reminder', '<p>Cher, { payment_reminder_name }</p>\n                    <p>Jesp&egrave;re que vous &ecirc;tes bien, ce nest quun rappel que le paiement sur facture {invoice_payment_number}total { invoice_payment_dueAmount }, que nous avons envoy&eacute; le {payment_reminder_date} est d&ucirc; aujourdhui.</p>\n                    <p>Vous pouvez effectuer le paiement sur le compte bancaire indiqu&eacute; sur la facture.</p>\n                    <p>Je suis s&ucirc;r que vous &ecirc;tes occup&eacute;, mais je vous serais reconnaissant de prendre un moment et de regarder la facture quand vous aurez une chance.</p>\n                    <p>Si vous avez des questions, veuillez r&eacute;pondre et je serais heureux de les clarifier.</p>\n                    <p>&nbsp;</p>\n                    <p>Merci,&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(136, 9, 'he', 'New Payment Reminder', '<p>שלום, {payment_reminder_name}</p>\n                    <p>אני מקווה ששלומך טוב. זוהי רק תזכורת לכך שהתשלום על החשבונית {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , ששלחנו בתאריך {payment_reminder_date}, יבוא היום.</p>\n                    <p>תוכל לבצע תשלום לחשבון הבנק המצוין בחשבונית.</p>\n                    <p>אני בטוח שאתה עסוק, אבל אשמח אם תוכל להקדיש רגע ולעיין בחשבונית כשתהיה לך הזדמנות.</p>\n                    <p>אם יש לך שאלות כלשהן, אנא השב ואשמח להבהיר אותן.</p>\n                    <p> </p>\n                    <p>תודה, </p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p> </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(137, 9, 'it', 'New Payment Reminder', '<p>Caro, {payment_reminder_name}</p>\n                    <p>Spero che tu stia bene, questo &egrave; solo un promemoria che il pagamento sulla fattura {invoice_payment_number} totale {invoice_payment_dueAmount}, che abbiamo inviato su {payment_reminder_date} &egrave; dovuto oggi.</p>\n                    <p>&Egrave; possibile effettuare il pagamento al conto bancario specificato sulla fattura.</p>\n                    <p>Sono sicuro che sei impegnato, ma apprezzerei se potessi prenderti un momento e guardare la fattura quando avrai una chance.</p>\n                    <p>Se avete domande qualunque, vi prego di rispondere e sarei felice di chiarirle.</p>\n                    <p>&nbsp;</p>\n                    <p>Grazie,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(138, 9, 'ja', 'New Payment Reminder', '<p>ID、 {payment_reminder_name}</p>\n                    <p>これは、 { invoice_payment_dueAmount} の合計 {invoice_payment_dueAmount } に対する支払いが今日予定されていることを思い出させていただきたいと思います。</p>\n                    <p>請求書に記載されている銀行口座に対して支払いを行うことができます。</p>\n                    <p>お忙しいのは確かですが、機会があれば、少し時間をかけてインボイスを見渡すことができればありがたいのですが。</p>\n                    <p>何か聞きたいことがあるなら、お返事をお願いしますが、喜んでお答えします。</p>\n                    <p>&nbsp;</p>\n                    <p>ありがとう。&nbsp;</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(139, 9, 'nl', 'New Payment Reminder', '<p>Geachte, { payment_reminder_name }</p>\n                    <p>Ik hoop dat u goed bent. Dit is gewoon een herinnering dat betaling op factuur { invoice_payment_number } totaal { invoice_payment_dueAmount }, die we verzonden op { payment_reminder_date } is vandaag verschuldigd.</p>\n                    <p>U kunt betaling doen aan de bankrekening op de factuur.</p>\n                    <p>Ik weet zeker dat je het druk hebt, maar ik zou het op prijs stellen als je even over de factuur kon kijken als je een kans krijgt.</p>\n                    <p>Als u vragen hebt, beantwoord dan uw antwoord en ik wil ze graag verduidelijken.</p>\n                    <p>&nbsp;</p>\n                    <p>Bedankt.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(140, 9, 'pl', 'New Payment Reminder', '<p>Drogi, {payment_reminder_name }</p>\n                    <p>Mam nadzieję, że jesteś dobrze. To jest tylko przypomnienie, że płatność na fakturze {invoice_payment_number } total {invoice_payment_dueAmount }, kt&oacute;re wysłaliśmy na {payment_reminder_date } jest dzisiaj.</p>\n                    <p>Płatność można dokonać na rachunek bankowy podany na fakturze.</p>\n                    <p>Jestem pewien, że jesteś zajęty, ale byłbym wdzięczny, gdybyś m&oacute;gł wziąć chwilę i spojrzeć na fakturę, kiedy masz szansę.</p>\n                    <p>Jeśli masz jakieś pytania, proszę o odpowiedź, a ja chętnie je wyjaśniam.</p>\n                    <p>&nbsp;</p>\n                    <p>Dziękuję,&nbsp;</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(141, 9, 'ru', 'New Payment Reminder', '<p>Уважаемый, { payment_reminder_name }</p>\n                    <p>Я надеюсь, что вы хорошо. Это просто напоминание о том, что оплата по счету { invoice_payment_number } всего { invoice_payment_dueAmount }, которое мы отправили в { payment_reminder_date }, сегодня.</p>\n                    <p>Вы можете произвести платеж на банковский счет, указанный в счете-фактуре.</p>\n                    <p>Я уверена, что ты занята, но я была бы признательна, если бы ты смог бы поглядеться на счет, когда у тебя появится шанс.</p>\n                    <p>Если у вас есть вопросы, пожалуйста, ответьте, и я буду рад их прояснить.</p>\n                    <p>&nbsp;</p>\n                    <p>Спасибо.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(142, 9, 'pt', 'New Payment Reminder', '<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(143, 9, 'tr', 'New Payment Reminder', '<p>Sayın {payment_reminder_name}</p>\n                    <p>Umarım iyisinizdir. Bu yalnızca, {payment_reminder_date} tarihinde gönderdiğimiz {invoice_payment_number} toplam vade tutarı {invoice_payment_dueAmount} tutarındaki faturanın ödemesinin bugün yapılması gerektiğini hatırlatma amaçlıdır.</p>\n                    <p>Faturada belirtilen banka hesabına ödeme yapabilirsiniz.</p>\n                    <p>Yoğun olduğunuzdan eminim ama fırsat bulduğunuzda bir dakikanızı ayırıp faturaya göz atarsanız sevinirim.</p>\n                    <p>Herhangi bir sorunuz varsa, lütfen yanıtlayın; bunları açıklığa kavuşturmaktan memnuniyet duyarım.</p>\n                    <p> </p>\n                    <p>Teşekkürler, </p>\n                    <p>{şirket_adı</p>\n                    <p>{app_url}</p>\n                    <p> </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(144, 9, 'pt-br', 'New Payment Reminder', '<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(145, 10, 'ar', 'New Bill Payment', '<p>مرحبا ، { payment_name }</p><p>مرحبا بك في { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">نحن نكتب لإبلاغكم بأننا قد أرسلنا مدفوعات (payment_الفاتورة) } الخاصة بك.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">لقد أرسلنا قيمتك { payment_cama } لأجل { payment_فاتورة } قمت بالاحالة في التاريخ { payment_date } من خلال { payment_method }.</span></p><p>شكرا جزيلا لك وطاب يومك ! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(146, 10, 'zh', 'New Bill Payment', '<p>您好，{ payment_name}</p><p>欢迎来到 {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">我们写信通知您，我们已发送您的 { payment_bill} 付款.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">我们已发送您于 { payment_date} 通过 { payment_method} 提交的金额为 { payment_amount} 的 { payment_bill} 付款。</span></span></ p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var( --bs-body-text-align);\">非常感谢您，祝您有美好的一天！！！</span></p><p>{company_name}</p><p>{app_url} </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(147, 10, 'da', 'New Bill Payment', '<p>Hej {payment_name}</p><p>Velkommen til {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Vi skriver for at informere dig om, at vi har sendt din {payment_bill}-betaling .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">Vi har sendt dit beløb {payment_amount} betaling for {payment_bill} indsendt  på datoen {payment_date} via {payment_method}.</span></ p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">Mange tak og god dag !!!!</span></p><p>{company_name}</p><p>{app_url} </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(148, 10, 'de', 'New Bill Payment', '<p>Hallo, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Willkommen bei {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir schreiben Ihnen mitzuteilen, dass wir Ihre Zahlung von {payment_bill} gesendet haben.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir haben Ihre Zahlung {payment_amount} Zahlung für {payment_bill} am Datum {payment_date} über {payment_method} gesendet.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Vielen Dank und haben einen guten Tag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(149, 10, 'en', 'New Bill Payment', '<p>Hi , {payment_name}</p><p>Welcome to {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We are writing to inform you that we has sent your {payment_bill} payment.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We has sent your amount {payment_amount} payment for {payment_bill} submited&nbsp; on date {payment_date} via {payment_method}.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day !!!!</span></p><p>{company_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(150, 10, 'es', 'New Bill Payment', '<p>Hola, {nombre_pago}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escribiendo para informarle que hemos enviado su pago {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hemos enviado su importe {payment_amount} pago para {payment_bill} submitado en la fecha {payment_date} a través de {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{nombre_empresa}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(151, 10, 'fr', 'New Bill Payment', '<p>Salut, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous vous écrivons pour vous informer que nous avons envoyé votre paiement { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous avons envoyé votre paiement { payment_amount } pour { payment_bill } soumis à la date { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Merci beaucoup et avez un bon jour ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ adresse_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(152, 10, 'he', 'New Bill Payment', '<p>היי, {payment_name}</p><p>ברוכים הבאים אל {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">אנו כותבים כדי להודיע ​​לך ששלחנו את התשלום שלך ב-{payment_bill} .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">שלחנו את הסכום שלך {payment_amount} תשלום עבור {payment_bill} שנשלח  בתאריך {payment_date} באמצעות {payment_method}.</span></ p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">תודה רבה ויום טוב!!!!</span></p><p>{company_name}</p><p>{app_url} </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(153, 10, 'it', 'New Bill Payment', '<p>Ciao, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Benvenuti in {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Scriviamo per informarti che abbiamo inviato il tuo pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Abbiamo inviato la tua quantità {payment_amount} pagamento per {payment_bill} subita alla data {payment_date} tramite {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie mille e buona giornata! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(154, 10, 'ja', 'New Bill Payment', '<p>こんにちは、 {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_紙幣} の支払いを送信したことをお知らせするために執筆しています。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_date } に提出された {payment_議案} に対する金額 {payment_金額} の支払いは、 {payment_method}を介して送信されました。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ありがとうございます。良い日をお願いします。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(155, 10, 'nl', 'New Bill Payment', '<p>Hallo, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wij schrijven u om u te informeren dat wij uw betaling van { payment_bill } hebben verzonden.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We hebben uw bedrag { payment_amount } betaling voor { payment_bill } verzonden op datum { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hartelijk dank en hebben een goede dag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ bedrijfsnaam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(156, 10, 'pl', 'New Bill Payment', '<p>Witaj, {payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Piszemy, aby poinformować Cię, że wysłaliśmy Twoją płatność {payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Twoja kwota {payment_amount } została wysłana przez użytkownika {payment_bill } w dniu {payment_date } za pomocą metody {payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dziękuję bardzo i mam dobry dzień! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(157, 10, 'ru', 'New Bill Payment', '<p>Привет, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Вас приветствует { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Мы пишем, чтобы сообщить вам, что мы отправили вашу оплату { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Мы отправили вашу сумму оплаты { payment_amoon } для { payment_bill }, подав на дату { payment_date } через { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Большое спасибо и хорошего дня! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(158, 10, 'pt', 'New Bill Payment', '<p>Oi, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escrevendo para informá-lo que enviamos o seu pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nós enviamos sua quantia {payment_amount} pagamento por {payment_bill} requisitado na data {payment_date} via {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Muito obrigado e tenha um bom dia! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(159, 10, 'tr', 'New Bill Payment', '<p>Merhaba, {payment_name}</p><p>{app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font a hoş geldiniz -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Size {payment_bill} ödemenizi gönderdiğimizi bildirmek için yazıyoruz. .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">{payment_date} tarihinde {payment_bill} için gönderdiğiniz {payment_amount} tutarındaki ödemenizi {payment_method} aracılığıyla gönderdik.</span></span></span></span></span></span></span></span></br></br></br></br></br></br></br></br></br></br></br></br></br></br> p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">Çok teşekkür ederiz ve iyi günler dilerim !!!!span></p><p>{company_name}</p><p>{app_url} </p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(160, 11, 'ar', 'Bill Resent', '<p>مرحبا ، { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">مرحبا بك في { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { bill_bill } لخدمة المنتج / الخدمة.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ببساطة اضغط على الاختيار بأسفل.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">شكرا لعملك ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(161, 11, 'zh', 'Bill Resent', '<p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(-- bs-body-text-align);\">嗨，{bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">欢迎使用 {app_name}</span><br> </p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">希望这封电子邮件能让您满意！请参阅随附的产品/服务帐单编号 {bill_bill}。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">                                                                                                                   只需点击下面的按钮即可。</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var (--bs-body-text-align);\">                                                                                                                                  {bill_url}</span></p><p>如果您有任何疑问，请随时与我们联系。</p><p><span style= “字体系列：var（--bs-body-font-family）；字体粗细：var（--bs-body-font-weight）；文本对齐：var（--bs-body-text-align） );\">感谢您的惠顾！！！</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -权重：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">问候，</span><br></p><p><span style=\"font-family: var(--bs-正文字体系列）；字体粗细：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs -正文字体系列）；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(162, 11, 'da', 'Bill Resent', '<p>Hej, { bill_name }</p><p>Velkommen til { app_name }</p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { bill_bill } for product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik på knappen nedenfor.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak for din virksomhed! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(163, 11, 'de', 'Bill Resent', '<p>Hi, {bill_name}</p><p>Willkommen bei {app_name}</p><p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angehängte Rechnungsnummer {bill_bill} für Produkt/Service an.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Klicken Sie einfach auf den Button unten.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Fühlen Sie sich frei, wenn Sie Fragen haben.</span></p><p>Vielen Dank für Ihr Geschäft! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betrachtet,</span></p><p>{company_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(164, 11, 'en', 'Bill Resent', '<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hi , {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hope this email finds you well! Please see attached bill number {bill_bill} for product/service.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simply click on the button below .</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</span></p><p>Feel free to reach out if you have any questions.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You for your business !!!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(165, 11, 'es', 'Bill Resent', '<p>Hi, {nombre_billar}</p><p>Bienvenido a {app_name}</p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {bill_bill} para el producto/servicio.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simplemente haga clic en el botón de abajo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Thank You for your business! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considerando,</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(166, 11, 'fr', 'Bill Resent', '<p>Salut, { nom_facturation }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>Jespère que ce courriel vous trouve bien ! Veuillez consulter le numéro de facture { factur_bill } associé au produit / service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cliquez simplement sur le bouton ci-dessous.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ url-facturation }</span></p><p>Nhésitez pas à nous contacter si vous avez des questions.</p><p>Merci pour votre entreprise ! !!!</p><p>Regards,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span></p><p>{ adresse_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(167, 11, 'he', 'Bill Resent', '<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(-- bs-body-text-align);>היי, {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ברוכים הבאים אל {app_name}</span><br> </p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מקווה שהמייל הזה ימצא אותך היטב! ראה את מספר החשבון המצורף {bill_bill} עבור מוצר/שירות.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">                                                                                                 פשוט לחץ על הלחצן למטה .</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var (--bs-body-text-align);\">                                                                                                              {bill_url}</span></p><p>אל תהסס לפנות אם יש לך שאלות.</p><p><span style= \"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align );\">תודה על העסק שלך !!!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -משקל: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">בברכה,</span><br></p><p><span style=\"font-family: var(--bs- גוף-גופן-משפחה); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs -גוף-גופן-משפחה); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(168, 11, 'it', 'Bill Resent', '<p>Ciao, {bill_name}</p><p>Benvenuti in {app_name}</p><p>Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura allegato {bill_bill} per il prodotto/servizio.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Semplicemente clicca sul pulsante sottostante.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie per il tuo business! !!!</p><p>Riguardo,</p><p>{company_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(169, 11, 'ja', 'Bill Resent', '<p>こんにちは、 {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスの添付された請求番号 {bill_紙幣} を参照してください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 以下のボタンをクリックしてください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">質問がある場合は、自由に連絡してください。</span></p><p>お客様のビジネスに感謝しています。</p><p>よろしく</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(170, 11, 'nl', 'Bill Resent', '<p>Hallo, { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span></p><p>Hoop dat deze e-mail je goed vindt! Zie het bijgesloten factuurnummer { bill_bill } voor product/service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik gewoon op de knop hieronder.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dank U voor uw bedrijf! !!!</span></p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(171, 11, 'pl', 'Bill Resent', '<p>Witaj, {nazwa_faktury }</p><p>Witamy w aplikacji {app_name }</p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Zapoznaj się z załączonym numerem rachunku {bill_bill } dla produktu/usługi.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Wystarczy kliknąć na przycisk poniżej.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękujemy za swój biznes! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">W odniesieniu do</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(172, 11, 'ru', 'Bill Resent', '<p>Привет, { bill_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. прилагаемый номер счета { bill_bill } для product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Просто нажмите на кнопку внизу.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо за ваш бизнес! !!!</p><p>С уважением,</p><p>{ company_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(173, 11, 'pt', 'Bill Resent', '<p>Oi, {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre você bem! Por favor, consulte o número de faturamento conectado {bill_bill} para produto/serviço.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no botão abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</p><p>Obrigado pelo seu negócio! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(174, 11, 'tr', 'Bill Resent', '<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(-- bs-body-text-align);\">Merhaba, {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family) ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br> e hoş geldiniz </p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Umarım bu e-posta sizi bulur! Lütfen ürün/hizmet için ekteki {bill_bill} fatura numarasına bakın.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -ağırlık: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">                                                                                                                 Aşağıdaki düğmeyi tıklamanız yeterlidir .</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var (--bs-body-text-align);\">                                                                                                                                {bill_url}</span></p><p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p><p><span style= \"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align) );\">İlginiz için teşekkürler !!!!span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -ağırlık: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Saygılarımızla,</span><br></p><p><span style=\"font-family: var(--bs- gövde-yazı tipi-ailesi); yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\">{şirket_adı}</span><br></p><p><span style=\"font-family: var(--bs) -body-font-ailesi); yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); metin hizalama: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(175, 11, 'pt-br', 'Bill Resent', '<p>Oi, {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre você bem! Por favor, consulte o número de faturamento conectado {bill_bill} para produto/serviço.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no botão abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</p><p>Obrigado pelo seu negócio! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(176, 12, 'ar', 'Proposal Sent', '<p>مرحبا ، { proposal_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الاقتراح المرفق { proposal_number } للمنتج / الخدمة.</p>\n                    <p>اضغط ببساطة على الاختيار بأسفل</p>\n                    <p>{ proposal_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لعملك ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(177, 12, 'zh', 'Proposal Sent', '<p>嗨，{proposal_name}</p>\n                    <p>希望这封电子邮件能让您满意！请参阅随附的产品/服务提案编号 {proposal_number}。</p>\n                    <p>只需点击下面的按钮</p>\n                    <p>{proposal_url}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>感谢您的惠顾！！</p>\n                    <p> </p>\n                    <p>问候，</p>\n                    <p>{公司名称}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(178, 12, 'da', 'Proposal Sent', '<p>Hej, {proposal__name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se det vedh&aelig;ftede forslag nummer { proposal_number } for product/service.</p>\n                    <p>klik bare p&aring; knappen nedenfor</p>\n                    <p>{ proposal_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak for din virksomhed!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(179, 12, 'de', 'Proposal Sent', '<p>Hi, {proposal_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angeh&auml;ngte Vorschlagsnummer {proposal_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten</p>\n                    <p>{proposal_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank f&uuml;r Ihr Unternehmen!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(180, 12, 'en', 'Proposal Sent', '<p>Hi, {proposal_name}</p>\n                    <p>Hope this email ﬁnds you well! Please see attached proposal number {proposal_number} for product/service.</p>\n                    <p>simply click on the button below</p>\n                    <p>{proposal_url}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you for your business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(181, 12, 'es', 'Proposal Sent', '<p>Hi, {proposal_name}</p>\n                    <p>&iexcl;Espero que este email le encuentre bien! Consulte el n&uacute;mero de propuesta adjunto {proposal_number} para el producto/servicio.</p>\n                    <p>simplemente haga clic en el bot&oacute;n de abajo</p>\n                    <p>{proposal_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias por su negocio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(182, 12, 'fr', 'Proposal Sent', '<p>Salut, {proposal_name}</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! Veuillez consulter le num&eacute;ro de la proposition jointe {proposal_number} pour le produit/service.</p>\n                    <p>Il suffit de cliquer sur le bouton ci-dessous</p>\n                    <p>{proposal_url}</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci pour votre entreprise ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(183, 12, 'he', 'Proposal Sent', '<p>שלום, {proposal_name}</p>\n                    <p>מקווה שדוא\"ל זה ימצא אותך היטב! ראה את מספר ההצעה המצורפת {proposal_number} עבור מוצר/שירות.</p>\n                    <p>פשוט לחץ על הלחצן למטה</p>\n                    <p>{proposal_url}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה על העסק שלך!!</p>\n                    <p> </p>\n                    <p>בברכה,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(184, 12, 'it', 'Proposal Sent', '<p>Ciao, {proposal_name}</p>\n                    <p>Spero che questa email ti trovi bene! Si prega di consultare il numero di proposta allegato {proposal_number} per il prodotto/servizio.</p>\n                    <p>semplicemente clicca sul pulsante sottostante</p>\n                    <p>{proposal_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie per il tuo business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(185, 12, 'ja', 'Proposal Sent', '<p>こんにちは、 {proposal_name}</p>\n                    <p>この E メールでよくご確認ください。 製品 / サービスの添付されたプロポーザル番号 {proposal_number} を参照してください。</p>\n                    <p>下のボタンをクリックするだけで</p>\n                    <p>{proposal_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>お客様のビジネスに感謝します。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(186, 12, 'nl', 'Proposal Sent', '<p>Hallo, {proposal_name}</p>\n                    <p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde nummer { proposal_number } voor product/service.</p>\n                    <p>gewoon klikken op de knop hieronder</p>\n                    <p>{ proposal_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u voor uw bedrijf!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(187, 12, 'pl', 'Proposal Sent', '<p>Witaj, {proposal_name}</p>\n                    <p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Proszę zapoznać się z załączonym numerem wniosku {proposal_number} dla produktu/usługi.</p>\n                    <p>po prostu kliknij na przycisk poniżej</p>\n                    <p>{proposal_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy za prowadzenie działalności!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(188, 12, 'ru', 'Proposal Sent', '<p>Здравствуйте, { proposal_name }</p>\n                    <p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенное предложение номер { proposal_number} для product/service.</p>\n                    <p>просто нажмите на кнопку внизу</p>\n                    <p>{ proposal_url}</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо за ваше дело!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(189, 12, 'pt', 'Proposal Sent', '<p>Oi, {proposal_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem! Por favor, consulte o n&uacute;mero da proposta anexada {proposal_number} para produto/servi&ccedil;o.</p>\n                    <p>basta clicar no bot&atilde;o abaixo</p>\n                    <p>{proposal_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado pelo seu neg&oacute;cio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(190, 12, 'tr', 'Proposal Sent', '<p>Merhaba {teklif_adı</p>\n                    <p>Umarım bu e-posta sizi iyi bulur! Lütfen ürün/hizmet için ekteki {proposal_number} numaralı teklife bakın.</p>\n                    <p>Aşağıdaki düğmeyi tıklamanız yeterlidir</p>\n                    <p>{teklif_url}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>İşiniz için teşekkür ederiz!</p>\n                    <p> </p>\n                    <p>Saygılarımızla,</p>\n                    <p>{şirket_adı</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(191, 13, 'ar', 'Complaint Resent', '<p>مرحبا</p><p>مرحبا بك في { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">(د) إدارة الموارد البشرية / الشركة لإرسال خطاب الشكاوى.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">عزيزي { demyt_name }</span></p><p>أود أن أبلغ عن صراع بينك وبين الشخص الآخر وقد وقعت عدة حوادث خلال الأيام القليلة الماضية ، وأشعر أن الوقت قد حان للإبلاغ عن شكوى رسمية ضده / هي.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>قسم الموارد البشرية</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(192, 13, 'zh', 'Complaint Resent', '<p><font color=\"#1d1c1d\"face=\"Slack-Lato、Slack-Fractions、appleLogo、sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">嗨，</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; 字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体粗细：var(--bs-body-font-weight)；文本对齐：var(--bs-body-text- align);\">欢迎来到 {app_name}</span><br></p><p><font color=\"#1d1c1d\"face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">人力资源部门/公司发送投诉信。<br></span></font></p><p> <font color=\"#1d1c1d\"face=\"Slack-Lato、Slack-Fractions、appleLogo、sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">亲爱的{complaint_name}</span></font></p><p>我想举报您与他人之间的冲突。过去几天发生了几起事件，我觉得是时候对他/她提出正式投诉了。</p><p>如果您有任何疑问，请随时与我们联系。</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">谢谢，</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">问候，</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-连字; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">人力资源部门。</span></p>< p><span style=\"颜色: rgb(29, 28, 29);字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体大小：15px；字体变体连字：常见连字；字体粗细：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29);字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体大小：15px；字体变体连字：常见连字；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px;字体变体连字：常见连字；颜色：rgb(29,28,29)；字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(193, 13, 'da', 'Complaint Resent', '<p>Hej.</p><p>Velkommen til { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR department/company to send klager brev.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Kære { klaint_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Jeg vil gerne anmelde en konflikt mellem dig og den anden person. Der har været flere tilfælde i løbet af de seneste dage, og jeg mener, at tiden er inde til at anmelde en formel klage over for ham.</span></p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelingen.</span></p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(194, 13, 'de', 'Complaint Resent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung/Unternehmen, um Beschwerdeschreiben zu versenden.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrter {beanstandname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Ich möchte einen Konflikt zwischen Ihnen und der anderen Person melden. Es gab in den letzten Tagen mehrere Zwischenfälle, und ich bin der Meinung, dass es an der Zeit ist, eine formelle Beschwerde gegen ihn zu erstatten.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><div><br></div><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(195, 13, 'en', 'Complaint Resent', '<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">HR department/company to send complaints letter.<br></span></font></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {complaint_name}</span></font></p><p>I would like to report a conflict between you and the other person. There  have been several incidents over the last few days, and I feel that its is time to report a formal complaint against him/her.</p><p>Feel free to reach out if you have any questions.</p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department.</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(196, 13, 'es', 'Complaint Resent', '<p>Hola,</p><p>Bienvenido a {app_name}</p><p>Departamento de Recursos Humanos/Empresa para enviar una carta de reclamaciones.</p><p>Estimado {nombre_reclamación}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Me gustaría informar de un conflicto entre usted y la otra persona. Ha habido varios incidentes en los últimos días, y siento que ha llegado el momento de denunciar una queja formal contra él.</span></p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Departamento de Recursos Humanos.</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(197, 13, 'fr', 'Complaint Resent', '<p>Salut,</p><p>Bienvenue dans { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ministère / entreprise des RH pour envoyer une lettre de plainte.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Cher { nom_plainte }</span></p><p>Je voudrais signaler un conflit entre vous et lautre personne. Il y a eu plusieurs incidents au cours des derniers jours, et je pense quil est temps de signaler une plainte officielle contre lui.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH.</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(198, 13, 'he', 'Complaint Resent', '<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">היי ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text- align);\">ברוכים הבאים אל {app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">מחלקת משאבי אנוש/חברה לשלוח מכתב תלונות.<br></span></font></p><p> <font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">יקירי {complaint_name}</span></font></p><p>אני רוצה לדווח על התנגשות בינך לבין האדם האחר. היו מספר תקריות במהלך הימים האחרונים, ואני מרגיש שהגיע הזמן לדווח על תלונה רשמית נגדו.</p><p>אתה מוזמן ליצור קשר אם יש לך שאלות כלשהן.</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">תודה,</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">בברכה,</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common- ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מחלקת משאבי אנוש.</span></p>< p><span style=\"color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גודל גופן: 15px; גופן-variant-ligatures: ליגטורות נפוצות; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גודל גופן: 15px; גופן-variant-ligatures: ליגטורות נפוצות; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; גופן-variant-ligatures: ליגטורות נפוצות; color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(199, 13, 'it', 'Complaint Resent', '<p>Ciao,</p><p>Benvenuti in {app_name}</p><p>HR dipartimenta/azienda per inviare la lettera dei reclami.</p><p>Caro {nome_denuncia}</p><p>Vorrei segnalare un conflitto tra lei e l altra persona. Ci sono stati diversi incidenti negli ultimi giorni e sento che il suo è il momento di denunciare una denuncia formale contro di lui.</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p>Riguardo,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span></p><p>{app_url}</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(200, 13, 'ja', 'Complaint Resent', '<p>こんにちは。</p><p>{app_name} へようこそ</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">苦情の手紙を送信するための HR 部門 / 会社。</span></p><p>{ complaint_name} に Dear があります</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">あなたと他の人との間の争いを報告したい この数日間で数件の事件があったが、私はそれが彼女に対する公式の申し立てを報告する時であると感じている。</span></p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p>よろしく</p><p>HR 部門</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(201, 13, 'nl', 'Complaint Resent', '<p>Hallo,</p><p>Welkom bij { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelings/bedrijf om klachten brief te sturen.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Geachte { klacht_naam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ik zou een conflict willen melden tussen u en de andere persoon. Er zijn de afgelopen dagen verschillende incidenten geweest en ik vind dat het tijd is om een formele klacht tegen hem/haar in te dienen.</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling.</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(202, 13, 'pl', 'Complaint Resent', '<p>Witam,</p><p>Witamy w aplikacji {app_name }</p><p>Dział kadr/firma, aby wysłać reklamacje.</p><p>Szanowny {skarga }</p><p>Chciałbym zgłosić konflikt między tobą a drugą osobą. W ciągu ostatnich kilku dni doszło do kilku incydentów i uważam, że nadszedł czas, aby zgłosić przeciwko nim formalną skargę.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dziękuję,</span></p><p>W odniesieniu do</p><p>Dział HR.</p><p>{company_name }</p><p>{app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(203, 13, 'ru', 'Complaint Resent', '<p>Привет.</p><p>Вас приветствует { app_name }</p><p>Отдел кадров/компания для направления письма с жалобами.</p><p>Уважаемый { имя-жалобы }</p><p>Я хотел бы сообщить о конфликте между вами и другим человеком. За последние несколько дней произошло несколько инцидентов, и я считаю, что настало время для того, чтобы сообщить об официальной жалобе против него.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Не стеснитесь, если у вас есть вопросы.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Спасибо.</span></p><p>С уважением,</p><p>Отдел кадров.</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(204, 13, 'pt', 'Complaint Resent', '<p style=\"\"><span style=\"font-size: 14.4px;\">Oi,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">HR department/empresa para enviar carta de reclamações.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Querido {reclamnome_}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Eu gostaria de relatar um conflito entre você e a outra pessoa. Houve vários incidentes ao longo dos últimos dias, e eu sinto que o seu é tempo de relatar uma queixa formal contra him/her.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p style=\"\"><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Departamento de RH.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{company_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{app_url}</span></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(205, 13, 'tr', 'Complaint Resent', '<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">Merhaba ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text- align);\">{app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> hoş geldiniz <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Şikayet mektubu göndermek için İK departmanı/şirketi.<br></span></font></p><p> <font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Sevgili {complaint_name}</span></font></p><p>Sizinle diğer kişi arasındaki bir anlaşmazlığı bildirmek istiyorum. Son birkaç gün içinde birkaç olay yaşandı ve ona karşı resmi bir şikayette bulunmanın zamanının geldiğini düşünüyorum.</p><p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Teşekkürler,</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak -bitişik harfler; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Saygılarımızla,</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak- bitişik harfler; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">İK Departmanı.</span></p>< p><span style=\"renk: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi boyutu: 15 piksel; font-varyant-bitişik harfler: ortak bitişik harfler; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi boyutu: 15 piksel; font-varyant-bitişik harfler: ortak bitişik harfler; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; font-varyant-bitişik harfler: ortak bitişik harfler; renk: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); metin hizalama: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(206, 13, 'pt-br', 'Complaint Resent', '<p style=\"\"><span style=\"font-size: 14.4px;\">Oi,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">HR department/empresa para enviar carta de reclamações.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Querido {reclamnome_}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Eu gostaria de relatar um conflito entre você e a outra pessoa. Houve vários incidentes ao longo dos últimos dias, e eu sinto que o seu é tempo de relatar uma queixa formal contra him/her.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p style=\"\"><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Departamento de RH.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{company_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{app_url}</span></p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(207, 14, 'ar', 'Leave Action Sent', '<p>الموضوع : \" إدارة الموارد البشرية / الشركة لإرسال رسالة موافقة إلى { leave_status } إجازة أو إجازة \".</p><p>مرحبا ، { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; لدي { leave_status } طلب ترك لأجل { leave_لسبب } من { leave_start_date } الى { leave_end_date }. { total_leave_yأيام } أيام لدي { leave_status } طلب الخروج الخاص بك الى { leave_لسبب }.</p><p>ونحن نطلب منكم أن تكملوا كل أعمالكم المعلقة أو أي قضية مهمة أخرى لكي لا تواجه الشركة أي خسارة أو مشكلة أثناء غيابكم ونحن نقدر لكم مدى عمق تفكيركم في إبلاغنا بذلك مسبقا.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p><div><br></div>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(208, 14, 'zh', 'Leave Action Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">主题 : \"要发送的人力资源部门/公司{leave_status}休假或请假的批准函”。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">﻿嗨，{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"行高：28px;\"><span style=\"font-family: var(--bs-body-font-family); 字体粗细：var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">            我有 {leave_status} 您从 {leave_start_date} 到 {leave_end_date} 提出的请假申请 {leave_reason}。 {total_leave_days} 天，我收到了您 {leave_reason} 的请假申请 {leave_status}。</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">我们要求您完成所有未完成的工作或任何其他重要问题，以便公司不会面临任何您缺席期间的损失或问题。感谢您提前通知我们的周到。</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">如有任何疑问，请随时与我们联系。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">谢谢您，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">问候，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">人力资源部</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -高度：28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(209, 14, 'da', 'Leave Action Sent', '<p>Emne: \" HR-afdeling / virksomhed, der skal sende godkendelsesbrev til { leave_status } en ferie eller orlov \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hej, { leave_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jeg har { leave_status } din orlov-anmodning for { leave_reason } fra { leave_start_date } til { leave_end_date }. { total_leave_days } dage Jeg har { leave_status } din anmodning om { leave_reason }.</p><p>Vi beder dig om at færdiggøre alt dit udestående arbejde eller et andet vigtigt spørgsmål, så virksomheden ikke står over for nogen tab eller problemer under dit fravær. Vi sætter pris på Deres betænksomhed, for at informere os godt på forhånd.</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Tak.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span></p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(210, 14, 'de', 'Leave Action Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um den Zulassungsbescheid an {leave_status} einen Urlaub oder Urlaub zu schicken \".</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {leave_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ich habe {leave_status} Ihre Urlaubsanforderung für {leave_reason} von {leave_start_date} bis {leave_end_date}. {total_leave_days} Tage Ich habe {leave_status} Ihre Urlaubs-Anfrage für {leave_reason}.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Wir bitten Sie, Ihre gesamte anstehende Arbeit oder ein anderes wichtiges Thema abzuschließen, so dass das Unternehmen während Ihrer Abwesenheit keinerlei Verlust oder kein Problem zu bewältigen hat. Wir freuen uns über Ihre Nachdenklichkeit, um uns im Vorfeld gut zu informieren.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(211, 14, 'en', 'Leave Action Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject : \"HR department/company to send approval letter to {leave_status} a vacation or leave\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">﻿Hi ,{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I have {leave_status} your leave request for&nbsp; {leave_reason} from {leave_start_date} to {leave_end_date}. {total_leave_days} days I have&nbsp; {leave_status} your leave request for {leave_reason}.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We request you to complete all your pending work or any other important issue so that the company does not face any any loss or problem during your absence. We appreciate your thoughtfulness to inform us well in advance.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Thank You,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">HR Department,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(212, 14, 'es', 'Leave Action Sent', '<p>Asunto: \" Departamento de RR.HH./compañía para enviar la carta de aprobación a {leave_status} unas vacaciones o vacaciones \".</p><p>Hi, {nombre_archivo}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tengo {leave_status} la solicitud de licencia para {leave_reason} de {leave_start_date} a {leave_end_date}. {total_leave_days} días tengo {leave_status} la solicitud de licencia para {leave_reason}.</p><p>Le solicitamos que complete todos sus trabajos pendientes o cualquier otro asunto importante para que la empresa no se enfrente a ninguna pérdida o problema durante su ausencia. Agradecemos su consideración para informarnos con mucha antelación.</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(213, 14, 'fr', 'Leave Action Sent', '<p>Objet: \" Service des ressources humaines /entreprise pour envoyer une lettre d approbation à { leave_status } un congé annuel ou un congé \".</p><p>Salut, { nom_onde }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; J ai { leave_status } votre demande de permission pour { leave_reason } de { leave_start_date } à { leave_end_date }. { total_leave_days } jours, j ai { leave_status } votre demande de congé pour { leave_reason }.</span></p><p>Nous vous demandons de remplir tous vos travaux en cours ou toute autre question importante afin que l entreprise ne soit pas confrontée à une perte ou à un problème pendant votre absence. Nous apprécions votre attention pour nous informer longtemps à l avance.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(214, 14, 'he', 'Leave Action Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">נושא: \"מחלקת משאבי אנוש/חברה לשלוח מכתב אישור ל-{leave_status} חופשה או חופשה\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -הייט: 28px; \"> היי, {liew_name} </p> <p segoe =\" \"ui\", = \"\" arial; = \"\" font-size: = \"\" 14px; \"=\" \"style =\" line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">            יש לי {leave_status} את בקשת החופשה שלך עבור  {leave_reason} מ-{leave_start_date} עד {leave_end_date}. {total_leave_days} ימים יש לי  {leave_status} את בקשת החופשה שלך עבור {leave_reason}.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">אנו מבקשים מכם להשלים את כל העבודה הממתינה או כל נושא חשוב אחר כך שהחברה לא תעמוד בפני כל אובדן או בעיה במהלך היעדרותך. אנו מעריכים את התחשבותך להודיע ​​לנו זמן רב מראש.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">אל תהסס לפנות אם יש לך שאלות.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">תודה,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">בברכה,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">מחלקת משאבי אנוש,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(215, 14, 'it', 'Leave Action Sent', '<p>Oggetto: \" HR department /company per inviare lettera di approvazione a {leave_status} una vacanza o un congedo \".</p><p>Ciao, {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ho {leave_status} la tua richiesta di permesso per {leave_ragione} da {leave_start_date} a {leave_end_date}. {total_leave_days} giorni I ho {leave_status} la tua richiesta di permesso per {leave_ragione}.</p><p>Ti richiediamo di completare tutte le tue lavorazioni in sospeso o qualsiasi altra questione importante in modo che lazienda non faccia alcuna perdita o problema durante la tua assenza. Apprezziamo la vostra premura per informarci bene in anticipo.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Sentiti libero di raggiungere se hai domande.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span></p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(216, 14, 'ja', 'Leave Action Sent', '<p>件名 : \" 承認レターを { leave_status} に休暇または休暇に送信するための人事部門 / 企業。</p><p>こんにちは、 {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { leave_start_date} から {leave_end_date}までの { leave_reason} { leave_reason} { leave_status} { leave_status } { leave_status } { total_leave_status } { leave_reason } { leave_reason} に対するあなたの休暇リクエストをお願いします。</p><p>お客様は、お客様がお客様の不在中に損失や問題が発生しないように、保留中のすべての作業やその他の重要な問題を完了するよう要求します。 事前にお知らせするためには、あなたの思慮深さに感謝します。</p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">よろしく</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR 部門</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(217, 14, 'nl', 'Leave Action Sent', '<p>Onderwerp: \" HR-afdeling/bedrijf om een goedkeuringsbrief te sturen naar { leave_status } een vakantie of verlof \".</p><p>Hallo, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ik heb { leave_status } uw verzoek om verlof voor { leave_reason } van { leave_start_date } aan { leave_end_date }. { total_leave_days } dagen Ik heb { leave_status } uw verzoek om verlof voor { leave_reason }.</p><p>Wij vragen u om al uw lopende werk of een andere belangrijke kwestie, zodat het bedrijf geen verlies of probleem tijdens uw afwezigheid geconfronteerd. Wij waarderen uw bedachtzaamheid om ons van tevoren goed te informeren.</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(218, 14, 'pl', 'Leave Action Sent', '<p>Temat: \" Dział HR /firma, aby wysłać list zatwierdzający do {leave_status } urlop lub urlop \".</p><p>Cześć, {leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mam {leave_status } żądanie pozostania dla {leave_reason } od {leave_start_date } do {leave_end_date }. {total_leave_days } dni mam {leave_status } żądanie opuszczenia użytkownika dla {leave_reason }.</p><p>Prosimy o wypełnienie wszystkich oczekujących prac lub innych ważnych spraw, tak aby firma nie borykała się z żadną stratą lub problemem w czasie Twojej nieobecności. Doceniamy twoją przemyślność, aby poinformować nas z wyprzedzeniem.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(219, 14, 'ru', 'Leave Action Sent', '<p>Тема: \" Отдел кадров/компания для отправки письма с утверждением в { leave_status } отпуск или отпуск \".</p><p>Привет, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; У меня есть { leave_status } ваш запрос на отпуск для { leave_reason } из { leave_start_date } в { leave_end_date }. { total_leave_days } дней { leave_status } ваш запрос на отпуск для { leave_reason }.</p><p>Мы просим вас завершить все ваши ожидающие работы или любой другой важный вопрос, чтобы компания не сталкивалась с какими-либо потерям или проблемой во время вашего отсутствия. Мы ценим вашу задумчивость, чтобы сообщить нам заранее.</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(220, 14, 'pt', 'Leave Action Sent', '<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento de RH /empresa para enviar carta de aprovação para {leave_status} férias ou licença \".</span></p><p><span style=\"font-size: 14.4px;\">Oi, {leave_name}</span></p><p><span style=\"font-size: 14.4px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicitação de licença para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicitação de licença para {leave_reason}.</span></p><p><span style=\"font-size: 14.4px;\">Solicitamos que você complete todo o seu trabalho pendente ou qualquer outra questão importante para que a empresa não enfrente qualquer perda ou problema durante a sua ausência. Agradecemos a sua atenciosidade para nos informar com bastante antecedência.</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Obrigado,</span><br></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(221, 14, 'tr', 'Leave Action Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject : \"Gönderilecek İK departmanı/şirket {leave_status} tatile veya ayrılmaya onay mektubu\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">﻿Merhaba ,{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">            {leave_status} {leave_reason} için {leave_start_date} tarihinden {leave_end_date} tarihine kadar izin talebinizi aldım. {total_leave_days} günüm  {leave_status}, {leave_reason} için izin talebiniz var.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">Şirketin herhangi bir sorunla karşılaşmaması için bekleyen tüm işlerinizi veya diğer önemli sorunları tamamlamanızı rica ederiz. yokluğunuz sırasında kayıp veya sorun. Bizi önceden bilgilendirme konusundaki düşünceniz için teşekkür ederiz.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">Sorularınız varsa bize ulaşmaktan çekinmeyin.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">Teşekkürler,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">Saygılarımızla,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">İK Departmanı</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -yükseklik: 28 piksel;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(222, 14, 'pt-br', 'Leave Action Sent', '<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento de RH /empresa para enviar carta de aprovação para {leave_status} férias ou licença \".</span></p><p><span style=\"font-size: 14.4px;\">Oi, {leave_name}</span></p><p><span style=\"font-size: 14.4px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicitação de licença para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicitação de licença para {leave_reason}.</span></p><p><span style=\"font-size: 14.4px;\">Solicitamos que você complete todo o seu trabalho pendente ou qualquer outra questão importante para que a empresa não enfrente qualquer perda ou problema durante a sua ausência. Agradecemos a sua atenciosidade para nos informar com bastante antecedência.</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Obrigado,</span><br></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(223, 15, 'ar', 'Payslip Sent', '<p>الموضوع : \" إدارة الموارد البشرية / الشركة لإرسال شظية عن طريق البريد الإلكتروني في وقت تأكيد الدفع. \"</p><p>عزيزي ، { paysp_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى payalp المرفقة الى { payplip_salary_شهر }. اضغط ببساطة على الاختيار في أسفل : { payspp_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</span></p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(224, 15, 'zh', 'Payslip Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">主题 :  \" 人力资源部门/公司发送确认工资单时通过电子邮件发送工资单。\"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-高度：28px;\">﻿亲爱的，{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">    </span>    希望这封电子邮件能让您满意！请参阅随附的 {payslip_salary_month} 工资单。只需点击下面的按钮即可： <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\">如果您有任何疑问，请随时与我们联系。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">问候，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">人力资源部门，</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(225, 15, 'da', 'Payslip Sent', '<p>Emne: \" HR-afdeling / Kompagni til at sende lønsedler via e-mail på tidspunktet for bekræftelsen af lønsedlerne. \"</p><p>Kære, { payslip_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Håber denne e-mail finder dig godt! Se vedhæftet payseddel for { payslip_salary_month }. Klik på knappen nedenfor: { payslip_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Med venlig hilsen</p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(226, 15, 'de', 'Payslip Sent', '<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um payslips per E-Mail zum Zeitpunkt der Bestätigung des Auszahlungsscheins zu senden. \"</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrte, {payslip_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie den angehängten payslip für {payslip_salary_month}. Klicken Sie einfach auf die folgende Schaltfläche: {payslip_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(227, 15, 'en', 'Payslip Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject :&nbsp; \" HR&nbsp; Department / Company to send&nbsp; payslips by email at time of confirmation of payslip. \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">﻿Dear ,{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; Hope this email finds you well! Please see attached payslip for {payslip_salary_month} . Simply click on the button below :&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to&nbsp; reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards ,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(228, 15, 'es', 'Payslip Sent', '<p>Asunto: \" Departamento de Recursos Humanos/Empresa para enviar nóminas por correo electrónico en el momento de la confirmación de payslip. \"</p><p>Estimado, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ¡Espero que este email le encuentre bien! Consulte la ficha de pago adjunta para {payslip_salary_month}. Simplemente haga clic en el botón de abajo: {payslip_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(229, 15, 'fr', 'Payslip Sent', '<p>Objet: \" HR Department / Company to send payborderby email at time of confirmation of payslip. \"</p><p>Cher, { nom_décalage }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; J espère que ce courriel vous trouve bien ! Veuillez consulter le bordereau de paiement ci-joint pour { payement_salary_month }. Cliquez simplement sur le bouton ci-dessous: { payslip_url }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(230, 15, 'he', 'Payslip Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">נושא :  \" מחלקת משאבי אנוש/חברה לשלוח תלושי שכר בדוא\"ל בזמן אישור תלוש השכר. \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line- גובה: 28px; \"> יקר, {paylip_name} </p> <p segoe =\" \"ui\", = \"\" arial; = \"\" font-size: = \"\" 14px; \"=\" \"style =\" קו -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">    </span>    מקווה שהמייל הזה ימצא אותך היטב! ראה תלוש שכר מצורף עבור {payslip_salary_month} . פשוט לחץ על הכפתור למטה : <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial=\"\" ui\",=\"\" arial;=\"\" arial; line-height: 28px;\">אל תהסס לפנות אם יש לך שאלות.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">בברכה ,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מחלקת משאבי אנוש ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(231, 15, 'it', 'Payslip Sent', '<p>Oggetto: \" HR Department / Company per inviare busta paga via email al momento della conferma della busta paga \".</p><p>Caro, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Spero che questa email ti trovi bene! Si prega di consultare la busta paga per {payslip_salary_month}. Semplicemente clicca sul pulsante sottostante: {payslip_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Riguardo,</p><p>Dipartimento HR,</p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(232, 15, 'ja', 'Payslip Sent', '<p>件名 : \" 給与明細書の確認時に、給与明細書を電子メールで送信するための HR 部門 / 企業。</p><p>{ payslip_name} を実行します。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; この E メールでよくご確認ください。 {payslip_salary_month} の添付された給与明細書を参照してください。 以下のボタンをクリックするだけで、 { payslip_url} をクリックしてください。</p><p>質問がある場合は、自由に連絡してください。</p><p>よろしく</p><p>HR 部門</p><p>{app_name}</p><p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(233, 15, 'nl', 'Payslip Sent', '<p>Onderwerp: \" HR Department/Company om betalingen te sturen per e-mail op het moment van de bevestiging van de payslip. \"</p><p>Schat, { payslip_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Hoop dat deze e-mail je goed vindt! Zie bijgevoegde payslip voor { payslip_salary_month }. Klik gewoon op de knop hieronder: { payslip_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Voel je vrij om uit te reiken als je vragen hebt.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betreft:</span></p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(234, 15, 'pl', 'Payslip Sent', '<p>Temat: \" Dział HR/Firma, aby wysłać payslips pocztą elektroniczną w momencie potwierdzenia payslip. \"</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Szanowny, {payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Patrz załączony payslip dla {payslip_salary_month }. Wystarczy kliknąć na przycisk poniżej: {payslip_url }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(235, 15, 'ru', 'Payslip Sent', '<p>Тема: \" Отдел кадров/Компания для отправки пастор по электронной почте во время подтверждения паузлиса \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Уважаемый, { payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный раздел для { payslip_salary_month }. Просто нажмите на кнопку ниже: { payslip_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(236, 15, 'pt', 'Payslip Sent', '<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento / Companhia de RH para enviar payslips por e-mail a hora da confirmação de payslip. \"</span></p><p><span style=\"font-size: 14.4px;\">Querido, {payslip_name}</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Espero que este e-mail encontre você bem! Por favor, consulte o payslip anexo para {payslip_salary_month}. Basta clicar no botão abaixo: {payslip_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(237, 15, 'tr', 'Payslip Sent', '<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject :  \" İK  Gönderilecek Departman / Şirket \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line- yükseklik: 28px;\">﻿Sevgili ,{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">    </span>    Umarım bu e-posta sizi bulur! Lütfen {payslip_salary_month} için ekteki maaş bordrosuna bakın. Aşağıdaki düğmeyi tıklamanız yeterlidir: <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\">Herhangi bir sorunuz varsa  bize ulaşmaktan çekinmeyin.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">Saygılarımızla,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">İK Departmanı ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(238, 16, 'ar', 'Promotion Sent', '<p>Subject : -HR القسم / الشركة لارسال رسالة تهنئة الى العمل للتهنئة بالعمل.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>تهاني على ترقيتك الى { promotion_designation } { promotion_title } الفعال { promotion_date }.</p>\n                    <p>وسنواصل توقع تحقيق الاتساق وتحقيق نتائج عظيمة منكم في دوركم الجديد. ونأمل أن تكون قدوة للموظفين الآخرين في المنظمة.</p>\n                    <p>ونتمنى لكم التوفيق في أداءكم في المستقبل ، وتهانينا !</p>\n                    <p>ومرة أخرى ، تهانئي على الموقف الجديد.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(239, 16, 'zh', 'Promotion Sent', '<p> </p>\n                    <p><strong>主题：-人力资源部门/公司发送职位晋升祝贺信。</strong></p>\n                    <p><strong>亲爱的{employee_name}，</strong></p>\n                    <p>恭喜您晋升为 {promotion_designation} {promotion_title}，生效日期：{promotion_date}。</p>\n                    <p>我们将继续期待您在新职位上保持稳定并取得出色的成果。我们希望您能为组织的其他员工树立榜样。</p>\n                    <p>祝您未来表现顺利，并表示祝贺！</p>\n                    <p>再次祝贺您就任新职位。</p>\n                    <p> </p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(240, 16, 'da', 'Promotion Sent', '<p>Om: HR-afdelingen / Virksomheden om at sende en lyk&oslash;nskning til jobfremst&oslash;d.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Tillykke med din forfremmelse til { promotion_designation } { promotion_title } effektiv { promotion_date }.</p>\n                    <p>Vi vil fortsat forvente konsekvens og store resultater fra Dem i Deres nye rolle. Vi h&aring;ber, at De vil foreg&aring; med et godt eksempel for de &oslash;vrige ansatte i organisationen.</p>\n                    <p>Vi &oslash;nsker Dem held og lykke med Deres fremtidige optr&aelig;den, og tillykke!</p>\n                    <p>Endnu en gang tillykke med den nye holdning.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(241, 16, 'de', 'Promotion Sent', '<p>Betrifft: -Personalabteilung/Unternehmen, um einen Gl&uuml;ckwunschschreiben zu senden.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Herzlichen Gl&uuml;ckwunsch zu Ihrer Werbeaktion an {promotion_designation} {promotion_title} wirksam {promotion_date}.</p>\n                    <p>Wir werden von Ihnen in Ihrer neuen Rolle weiterhin Konsistenz und gro&szlig;e Ergebnisse erwarten. Wir hoffen, dass Sie ein Beispiel f&uuml;r die anderen Mitarbeiter der Organisation setzen werden.</p>\n                    <p>Wir w&uuml;nschen Ihnen viel Gl&uuml;ck f&uuml;r Ihre zuk&uuml;nftige Leistung, und gratulieren!</p>\n                    <p>Nochmals herzlichen Gl&uuml;ckwunsch zu der neuen Position.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(242, 16, 'en', 'Promotion Sent', '<p>&nbsp;</p>\n                    <p><strong>Subject:-HR department/Company to send job promotion congratulation letter.</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Congratulations on your promotion to {promotion_designation} {promotion_title} effective {promotion_date}.</p>\n                    <p>We shall continue to expect consistency and great results from you in your new role. We hope that you will set an example for the other employees of the organization.</p>\n                    <p>We wish you luck for your future performance, and congratulations!.</p>\n                    <p>Again, congratulations on the new position.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(243, 16, 'es', 'Promotion Sent', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de felicitaci&oacute;n de promoci&oacute;n de empleo.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>Felicidades por su promoci&oacute;n a {promotion_designation} {promotion_title} efectiva {promotion_date}.</p>\n                    <p>Seguiremos esperando la coherencia y los grandes resultados de ustedes en su nuevo papel. Esperamos que usted ponga un ejemplo para los otros empleados de la organizaci&oacute;n.</p>\n                    <p>Le deseamos suerte para su futuro rendimiento, y felicitaciones!.</p>\n                    <p>Una vez m&aacute;s, felicidades por la nueva posici&oacute;n.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(244, 16, 'fr', 'Promotion Sent', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de f&eacute;licitations pour la promotion de lemploi.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>F&eacute;licitations pour votre promotion &agrave; { promotion_d&eacute;signation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Nous continuerons &agrave; vous attendre &agrave; une coh&eacute;rence et &agrave; de grands r&eacute;sultats de votre part dans votre nouveau r&ocirc;le. Nous esp&eacute;rons que vous trouverez un exemple pour les autres employ&eacute;s de lorganisation.</p>\n                    <p>Nous vous souhaitons bonne chance pour vos performances futures et f&eacute;licitations !</p>\n                    <p>Encore une fois, f&eacute;licitations pour le nouveau poste.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(245, 16, 'he', 'Promotion Sent', '<p> </p>\n                    <p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב ברכה לקידום בעבודה.</strong></p>\n                    <p><strong>{employee_name} היקר,</strong></p>\n                    <p>ברכות על הקידום שלך ל-{promotion_designation} {promotion_title} החל מ-{promotion_date}.</p>\n                    <p>נמשיך לצפות לעקביות ולתוצאות נהדרות ממך בתפקידך החדש. אנו מקווים שתהווה דוגמה לעובדי הארגון האחרים.</p>\n                    <p>אנו מאחלים לך בהצלחה עבור הביצועים העתידיים שלך, ומזל טוב!.</p>\n                    <p>שוב, ברכות על התפקיד החדש.</p>\n                    <p> </p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(246, 16, 'it', 'Promotion Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare la lettera di congratulazioni alla promozione del lavoro.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>Complimenti per la tua promozione a {promotion_designation} {promotion_title} efficace {promotion_date}.</p>\n                    <p>Continueremo ad aspettarci coerenza e grandi risultati da te nel tuo nuovo ruolo. Ci auguriamo di impostare un esempio per gli altri dipendenti dellorganizzazione.</p>\n                    <p>Ti auguriamo fortuna per le tue prestazioni future, e complimenti!.</p>\n                    <p>Ancora, complimenti per la nuova posizione.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(247, 16, 'ja', 'Promotion Sent', '<p>件名:-HR 部門/企業は、求人広告の祝賀状を送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>{promotion_designation } { promotion_title} {promotion_date} 販促に対するお祝いのお祝いがあります。</p>\n                    <p>今後とも、お客様の新しい役割において一貫性と大きな成果を期待します。 組織の他の従業員の例を設定したいと考えています。</p>\n                    <p>あなたの未来のパフォーマンスをお祈りします。おめでとうございます。</p>\n                    <p>また、新しい地位について祝意を表する。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(248, 16, 'nl', 'Promotion Sent', '<p>Betreft: -HR-afdeling/Bedrijf voor het versturen van de aanbevelingsbrief voor taakpromotie.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Gefeliciteerd met uw promotie voor { promotion_designation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Wij zullen de consistentie en de grote resultaten van u in uw nieuwe rol blijven verwachten. Wij hopen dat u een voorbeeld zult stellen voor de andere medewerkers van de organisatie.</p>\n                    <p>Wij wensen u geluk voor uw toekomstige prestaties, en gefeliciteerd!.</p>\n                    <p>Nogmaals, gefeliciteerd met de nieuwe positie.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(249, 16, 'pl', 'Promotion Sent', '<p>Temat: -Dział kadr/Firma w celu wysłania listu gratulacyjnego dla promocji zatrudnienia.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Gratulacje dla awansowania do {promotion_designation } {promotion_title } efektywnej {promotion_date }.</p>\n                    <p>W dalszym ciągu oczekujemy konsekwencji i wspaniałych wynik&oacute;w w Twojej nowej roli. Mamy nadzieję, że postawicie na przykład dla pozostałych pracownik&oacute;w organizacji.</p>\n                    <p>Życzymy powodzenia dla przyszłych wynik&oacute;w, gratulujemy!.</p>\n                    <p>Jeszcze raz gratulacje na nowej pozycji.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(250, 16, 'ru', 'Promotion Sent', '<p>Тема: -HR отдел/Компания для отправки письма с поздравлением.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>Поздравляем вас с продвижением в { promotion_designation } { promotion_title } эффективная { promotion_date }.</p>\n                    <p>Мы будем и впредь ожидать от вас соответствия и больших результатов в вашей новой роли. Мы надеемся, что вы станете примером для других сотрудников организации.</p>\n                    <p>Желаем вам удачи и поздравлений!</p>\n                    <p>Еще раз поздравляю с новой позицией.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(251, 16, 'pt', 'Promotion Sent', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(252, 16, 'tr', 'Promotion Sent', '<p> </p>\n                    <p><strong>Konu:-İş promosyonu tebrik mektubu gönderilecek İK departmanı/Şirket.</strong></p>\n                    <p><strong>Sayın {employee_name},</strong></p>\n                    <p>Geçerli {promotion_date} olan {promotion_designation} {promotion_title} promosyonunuz için tebrikler.</p>\n                    <p>Yeni görevinizde sizden tutarlılık ve harika sonuçlar beklemeye devam edeceğiz. Kurumun diğer çalışanlarına da örnek olacağını umuyoruz.</p>\n                    <p>Gelecekteki performansınız için size bol şans diliyor, tebrikler!.</p>\n                    <p>Yeni pozisyon için tekrar tebrikler.</p>\n                    <p> </p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(253, 16, 'pt-br', 'Promotion Sent', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(254, 17, 'ar', 'Resignation Sent', '<p>Subject :-قسم الموارد البشرية / الشركة لإرسال خطاب استقالته.</p>\n                    <p>عزيزي { assign_user } ،</p>\n                    <p>إنه لمن دواعي الأسف الشديد أن أعترف رسميا باستلام إشعار استقالتك في { notice_date } الى { resignation_date } هو اليوم الأخير لعملك.</p>\n                    <p>لقد كان من دواعي سروري العمل معكم ، وبالنيابة عن الفريق ، أود أن أتمنى لكم أفضل جدا في جميع مساعيكم في المستقبل. ومن خلال هذه الرسالة ، يرجى العثور على حزمة معلومات تتضمن معلومات مفصلة عن عملية الاستقالة.</p>\n                    <p>شكرا لكم مرة أخرى على موقفكم الإيجابي والعمل الجاد كل هذه السنوات.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(255, 17, 'zh', 'Resignation Sent', '<p ><b>主题：-人力资源部门/公司发送辞职信。</b></p>\n                    <p ><b>亲爱的{assign_user}，</b></p>\n                    <p>我非常遗憾地正式确认在 {notice_date} 收到您的辞职通知，至 {resignation_date} 是您工作的最后一天。 </p>\n                    <p>很高兴与您合作，我谨代表团队祝愿您在未来的工作中一切顺利。请在这封信中找到一个信息包，其中包含有关辞职流程的详细信息。 </p>\n                    <p>再次感谢您这些年来的积极态度和辛勤工作。</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><b>问候，</b></p>\n                    <p><b>人力资源部</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(256, 17, 'da', 'Resignation Sent', '<p>Om: HR-afdelingen / Kompagniet, for at sende en opsigelse.</p>\n                    <p>K&aelig;re { assign_user },</p>\n                    <p>Det er med stor beklagelse, at jeg formelt anerkender modtagelsen af din opsigelsesmeddelelse p&aring; { notice_date } til { resignation_date } er din sidste arbejdsdag</p>\n                    <p>Det har v&aelig;ret en forn&oslash;jelse at arbejde sammen med Dem, og p&aring; vegne af teamet vil jeg &oslash;nske Dem det bedste i alle Deres fremtidige bestr&aelig;belser. Med dette brev kan du finde en informationspakke med detaljerede oplysninger om tilbagetr&aelig;delsesprocessen.</p>\n                    <p>Endnu en gang tak for Deres positive holdning og h&aring;rde arbejde i alle disse &aring;r.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(257, 17, 'de', 'Resignation Sent', '<p>Betreff: -Personalabteilung/Firma, um R&uuml;ckmeldungsschreiben zu senden.</p>\n                    <p>Sehr geehrter {assign_user},</p>\n                    <p>Es ist mit gro&szlig;em Bedauern, dass ich den Eingang Ihrer R&uuml;cktrittshinweis auf {notice_date} an {resignation_date} offiziell best&auml;tige, ist Ihr letzter Arbeitstag.</p>\n                    <p>Es war eine Freude, mit Ihnen zu arbeiten, und im Namen des Teams m&ouml;chte ich Ihnen w&uuml;nschen, dass Sie in allen Ihren zuk&uuml;nftigen Bem&uuml;hungen am besten sind. In diesem Brief finden Sie ein Informationspaket mit detaillierten Informationen zum R&uuml;cktrittsprozess.</p>\n                    <p>Vielen Dank noch einmal f&uuml;r Ihre positive Einstellung und harte Arbeit all die Jahre.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(258, 17, 'en', 'Resignation Sent', '<p ><b>Subject:-HR department/Company to send resignation letter .</b></p>\n                    <p ><b>Dear {assign_user},</b></p>\n                    <p >It is with great regret that I formally acknowledge receipt of your resignation notice on {notice_date} to {resignation_date} is your final day of work. </p>\n                    <p >It has been a pleasure working with you, and on behalf of the team, I would like to wish you the very best in all your future endeavors. Included with this letter, please find an information packet with detailed information on the resignation process. </p>\n                    <p>Thank you again for your positive attitude and hard work all these years.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(259, 17, 'es', 'Resignation Sent', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de renuncia.</p>\n                    <p>Estimado {assign_user},</p>\n                    <p>Es con gran pesar que recibo formalmente la recepci&oacute;n de su aviso de renuncia en {notice_date} a {resignation_date} es su &uacute;ltimo d&iacute;a de trabajo.</p>\n                    <p>Ha sido un placer trabajar con usted, y en nombre del equipo, me gustar&iacute;a desearle lo mejor en todos sus esfuerzos futuros. Incluido con esta carta, por favor encuentre un paquete de informaci&oacute;n con informaci&oacute;n detallada sobre el proceso de renuncia.</p>\n                    <p>Gracias de nuevo por su actitud positiva y trabajo duro todos estos a&ntilde;os.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(260, 17, 'fr', 'Resignation Sent', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de d&eacute;mission.</p>\n                    <p>Cher { assign_user },</p>\n                    <p>Cest avec grand regret que je reconnais officiellement la r&eacute;ception de votre avis de d&eacute;mission sur { notice_date } &agrave; { resignation_date } est votre dernier jour de travail.</p>\n                    <p>Cest un plaisir de travailler avec vous, et au nom de l&eacute;quipe, jaimerais vous souhaiter le meilleur dans toutes vos activit&eacute;s futures. Inclus avec cette lettre, veuillez trouver un paquet dinformation contenant des informations d&eacute;taill&eacute;es sur le processus de d&eacute;mission.</p>\n                    <p>Je vous remercie encore de votre attitude positive et de votre travail acharne durant toutes ces ann&eacute;es.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(261, 17, 'he', 'Resignation Sent', '<p ><b>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב התפטרות .</b></p>\n                    <p ><b>{assign_user} היקר,</b></p>\n                    <p >בצער רב אני מאשר רשמית את קבלת הודעת ההתפטרות שלך בתאריך {notice_date} עד {resignation_date} הוא היום האחרון לעבודתך. </p>\n                    <p > היה לי תענוג לעבוד איתך, ובשם הצוות, אני רוצה לאחל לך את הטוב ביותר בכל העשייה העתידית שלך. מצורף למכתב זה, נא למצוא חבילת מידע עם מידע מפורט על תהליך ההתפטרות. </p>\n                    <p>שוב תודה לך על הגישה החיובית והעבודה הקשה שלך כל השנים הללו.</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><b>בברכה,</b></p>\n                    <p><b>מחלקת משאבי אנוש,</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(262, 17, 'it', 'Resignation Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di dimissioni.</p>\n                    <p>Caro {assign_user},</p>\n                    <p>&Egrave; con grande dispiacere che riconosca formalmente la ricezione del tuo avviso di dimissioni su {notice_date} a {resignation_date} &egrave; la tua giornata di lavoro finale.</p>\n                    <p>&Egrave; stato un piacere lavorare con voi, e a nome della squadra, vorrei augurarvi il massimo in tutti i vostri futuri sforzi. Incluso con questa lettera, si prega di trovare un pacchetto informativo con informazioni dettagliate sul processo di dimissioni.</p>\n                    <p>Grazie ancora per il vostro atteggiamento positivo e duro lavoro in tutti questi anni.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(263, 17, 'ja', 'Resignation Sent', '<p>件名:-HR 部門/企業は辞表を送信します。</p>\n                    <p>{assign_user} の認証を解除します。</p>\n                    <p>{ notice_date} に対するあなたの辞任通知を { resignation_date} に正式に受理することを正式に確認することは、非常に残念です。</p>\n                    <p>あなたと一緒に仕事をしていて、チームのために、あなたの将来の努力において、あなたのことを最高のものにしたいと思っています。 このレターには、辞任プロセスに関する詳細な情報が記載されている情報パケットをご覧ください。</p>\n                    <p>これらの長年の前向きな姿勢と努力を重ねて感謝します。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(264, 17, 'nl', 'Resignation Sent', '<p>Betreft: -HR-afdeling/Bedrijf om ontslagbrief te sturen.</p>\n                    <p>Geachte { assign_user },</p>\n                    <p>Het is met grote spijt dat ik de ontvangst van uw ontslagbrief op { notice_date } tot { resignation_date } formeel de ontvangst van uw laatste dag van het werk bevestigt.</p>\n                    <p>Het was een genoegen om met u samen te werken, en namens het team zou ik u het allerbeste willen wensen in al uw toekomstige inspanningen. Vermeld bij deze brief een informatiepakket met gedetailleerde informatie over het ontslagproces.</p>\n                    <p>Nogmaals bedankt voor uw positieve houding en hard werken al die jaren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(265, 17, 'pl', 'Resignation Sent', '<p>Temat: -Dział HR/Firma do wysyłania listu rezygnacyjnego.</p>\n                    <p>Drogi użytkownika {assign_user },</p>\n                    <p>Z wielkim żalem, że oficjalnie potwierdzam otrzymanie powiadomienia o rezygnacji w dniu {notice_date } to {resignation_date } to tw&oacute;j ostatni dzień pracy.</p>\n                    <p>Z przyjemnością wsp&oacute;łpracujemy z Tobą, a w imieniu zespołu chciałbym życzyć Wam wszystkiego najlepszego we wszystkich swoich przyszłych przedsięwzięciu. Dołączone do tego listu prosimy o znalezienie pakietu informacyjnego ze szczeg&oacute;łowymi informacjami na temat procesu dymisji.</p>\n                    <p>Jeszcze raz dziękuję za pozytywne nastawienie i ciężką pracę przez te wszystkie lata.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(266, 17, 'ru', 'Resignation Sent', '<p>Тема: -HR отдел/Компания отправить письмо об отставке.</p>\n                    <p>Уважаемый пользователь { assign_user },</p>\n                    <p>С большим сожалением я официально подтверждаю получение вашего уведомления об отставке { notice_date } в { resignation_date }-это ваш последний день работы.</p>\n                    <p>С Вами было приятно работать, и от имени команды я хотел бы по# желать вам самого лучшего во всех ваших будущих начинаниях. В этом письме Вы можете найти информационный пакет с подробной информацией об отставке.</p>\n                    <p>Еще раз спасибо за ваше позитивное отношение и трудолюбие все эти годы.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(267, 17, 'pt', 'Resignation Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {assign_user},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">&Eacute; com grande pesar que reconhe&ccedil;o formalmente o recebimento do seu aviso de demiss&atilde;o em {notice_date} a {resignation_date} &eacute; o seu dia final de trabalho.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Foi um prazer trabalhar com voc&ecirc;, e em nome da equipe, gostaria de desej&aacute;-lo o melhor em todos os seus futuros empreendimentos. Inclu&iacute;dos com esta carta, por favor, encontre um pacote de informa&ccedil;&otilde;es com informa&ccedil;&otilde;es detalhadas sobre o processo de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado novamente por sua atitude positiva e trabalho duro todos esses anos.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(268, 17, 'tr', 'Resignation Sent', '<p ><b>Konu:-İstifa mektubu gönderilecek İK departmanı/Şirket .</b></p>\n                    <p ><b>Sayın {assign_user},</b></p>\n                    <p >İstifa bildiriminizi {notice_date} ile {resignation_date} arasında aldığımı, işinizin son günü olduğunu büyük bir üzüntüyle kabul ediyorum. </p>\n                    <p >Sizinle çalışmak bir zevkti ve ekip adına, gelecekteki tüm çabalarınızda size en iyisini diliyorum. Bu mektuba ek olarak, lütfen istifa süreci hakkında ayrıntılı bilgi içeren bir bilgi paketi bulun. </p>\n                    <p>Bunca yıl boyunca gösterdiğiniz olumlu tutum ve sıkı çalışmanız için tekrar teşekkür ederiz.</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><b>Saygılarımızla,</b></p>\n                    <p><b>İK Departmanı,</b></p>\n                    <p><b>{uygulama_adı</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(269, 18, 'ar', 'Termination Sent', '<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\"><span style=\"font-size: 12pt; white-space: pre-wrap;\">Subject :-ادارة / شركة HR لارسال رسالة انهاء. عزيزي { </span><span style=\"white-space: pre-wrap;\">employee_termination_name</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ، هذه الرسالة مكتوبة لإعلامك بأن عملك مع شركتنا قد تم إنهاؤه مزيد من التفاصيل عن الانهاء : تاريخ الاشعار : { </span><span style=\"white-space: pre-wrap;\">notice_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } تاريخ الانهاء : { </span><span style=\"white-space: pre-wrap;\">termination_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } نوع الانهاء : { termination_type } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(270, 18, 'zh', 'Termination Sent', '<p><strong>主题：-人力资源部门/公司发送终止信。</strong></p>\n                    <p><strong>亲爱的{employee_termination_name}，</strong></p>\n                    <p>这封信旨在通知您，您与我们公司的雇佣关系已终止。</p>\n                    <p>有关终止的更多详细信息：</p>\n                    <p>通知日期：{notice_date}</p>\n                    <p>终止日期：{termination_date}</p>\n                    <p>终止类型：{termination_type}</p>\n                    <p> </p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(271, 18, 'da', 'Termination Sent', '<p>Emne:-HR-afdelingen / Virksomheden om at sende afslutningstskrivelse.</p>\n                    <p>K&aelig;re { employee_termination_name },</p>\n                    <p>Dette brev er skrevet for at meddele dig, at dit arbejde med vores virksomhed er afsluttet.</p>\n                    <p>Flere oplysninger om oph&aelig;velse:</p>\n                    <p>Adviseringsdato: { notifice_date }</p>\n                    <p>Opsigelsesdato: { termination_date }</p>\n                    <p>Opsigelsestype: { termination_type }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(272, 18, 'de', 'Termination Sent', '<p>Betreff: -Personalabteilung/Firma zum Versenden von K&uuml;ndigungsschreiben.</p>\n                    <p>Sehr geehrter {employee_termination_name},</p>\n                    <p>Dieser Brief wird Ihnen schriftlich mitgeteilt, dass Ihre Besch&auml;ftigung mit unserem Unternehmen beendet ist.</p>\n                    <p>Weitere Details zur K&uuml;ndigung:</p>\n                    <p>K&uuml;ndigungsdatum: {notice_date}</p>\n                    <p>Beendigungsdatum: {termination_date}</p>\n                    <p>Abbruchstyp: {termination_type}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(273, 18, 'en', 'Termination Sent', '<p><strong>Subject:-HR department/Company to send termination letter.</strong></p>\n                    <p><strong>Dear {employee_termination_name},</strong></p>\n                    <p>This letter is written to notify you that your employment with our company is terminated.</p>\n                    <p>More detail about termination:</p>\n                    <p>Notice Date :{notice_date}</p>\n                    <p>Termination Date:{termination_date}</p>\n                    <p>Termination Type:{termination_type}</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(274, 18, 'es', 'Termination Sent', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de rescisi&oacute;n.</p>\n                    <p>Estimado {employee_termination_name},</p>\n                    <p>Esta carta est&aacute; escrita para notificarle que su empleo con nuestra empresa ha terminado.</p>\n                    <p>M&aacute;s detalles sobre la terminaci&oacute;n:</p>\n                    <p>Fecha de aviso: {notice_date}</p>\n                    <p>Fecha de terminaci&oacute;n: {termination_date}</p>\n                    <p>Tipo de terminaci&oacute;n: {termination_type}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(275, 18, 'fr', 'Termination Sent', '<p>Objet: -HR department / Company to send termination letter.</p>\n                    <p>Cher { employee_termination_name },</p>\n                    <p>Cette lettre est r&eacute;dig&eacute;e pour vous aviser que votre emploi aupr&egrave;s de notre entreprise prend fin.</p>\n                    <p>Plus de d&eacute;tails sur larr&ecirc;t:</p>\n                    <p>Date de lavis: { notice_date }</p>\n                    <p>Date de fin: { termination_date}</p>\n                    <p>Type de terminaison: { termination_type }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(276, 18, 'he', 'Termination Sent', '<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב סיום.</strong></p>\n                    <p><strong>{employee_termination_name} היקר,</strong></p>\n                    <p>מכתב זה נכתב כדי להודיע ​​לך שהעסקתך בחברה שלנו הופסקה.</p>\n                    <p>פרטים נוספים על סיום:</p>\n                    <p>תאריך הודעה :{notice_date}</p>\n                    <p>תאריך סיום:{termination_date}</p>\n                    <p>סוג סיום:{termination_type}</p>\n                    <p> </p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(277, 18, 'it', 'Termination Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di terminazione.</p>\n                    <p>Caro {employee_termination_name},</p>\n                    <p>Questa lettera &egrave; scritta per comunicarti che la tua occupazione con la nostra azienda &egrave; terminata.</p>\n                    <p>Pi&ugrave; dettagli sulla cessazione:</p>\n                    <p>Data avviso: {notice_data}</p>\n                    <p>Data di chiusura: {termination_date}</p>\n                    <p>Tipo di terminazione: {termination_type}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(278, 18, 'ja', 'Termination Sent', '<p>件名:-HR 部門/企業は終了文字を送信します。</p>\n                    <p>{ employee_termination_name} を終了します。</p>\n                    <p>この手紙は、当社の雇用が終了していることをあなたに通知するために書かれています。</p>\n                    <p>終了についての詳細 :</p>\n                    <p>通知日 :{notice_date}</p>\n                    <p>終了日:{termination_date}</p>\n                    <p>終了タイプ:{termination_type}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(279, 18, 'nl', 'Termination Sent', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van afgiftebrief.</p>\n                    <p>Geachte { employee_termination_name },</p>\n                    <p>Deze brief is geschreven om u te melden dat uw werk met ons bedrijf wordt be&euml;indigd.</p>\n                    <p>Meer details over be&euml;indiging:</p>\n                    <p>Datum kennisgeving: { notice_date }</p>\n                    <p>Be&euml;indigingsdatum: { termination_date }</p>\n                    <p>Be&euml;indigingstype: { termination_type }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(280, 18, 'pl', 'Termination Sent', '<p>Temat: -Dział kadr/Firma do wysyłania listu zakańczego.</p>\n                    <p>Droga {employee_termination_name },</p>\n                    <p>Ten list jest napisany, aby poinformować Cię, że Twoje zatrudnienie z naszą firmą zostaje zakończone.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat zakończenia pracy:</p>\n                    <p>Data ogłoszenia: {notice_date }</p>\n                    <p>Data zakończenia: {termination_date }</p>\n                    <p>Typ zakończenia: {termination_type }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(281, 18, 'ru', 'Termination Sent', '<p>Тема: -HR отдел/Компания отправить письмо о прекращении.</p>\n                    <p>Уважаемый { employee_termination_name },</p>\n                    <p>Это письмо написано, чтобы уведомить вас о том, что ваше трудоустройство с нашей компанией прекратилось.</p>\n                    <p>Более подробная информация о завершении:</p>\n                    <p>Дата уведомления: { notice_date }</p>\n                    <p>Дата завершения: { termination_date }</p>\n                    <p>Тип завершения: { termination_type }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(282, 18, 'pt', 'Termination Sent', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(283, 18, 'tr', 'Termination Sent', '<p><strong>Konu:-İK departmanı/Şirket fesih mektubu gönderecek.</strong></p>\n                    <p><strong>Sayın {employee_termination_name},</strong></p>\n                    <p>Bu mektup, şirketimizle olan işinize son verildiğini size bildirmek için yazılmıştır.</p>\n                    <p>Sonlandırma hakkında daha fazla ayrıntı:</p>\n                    <p>Bildirim Tarihi :{notice_date}</p>\n                    <p>Sonlandırma Tarihi:{termination_date}</p>\n                    <p>Sonlandırma Türü:{termination_type}</p>\n                    <p> </p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(284, 18, 'pt-br', 'Termination Sent', '<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(285, 19, 'ar', 'Transfer Sent', '<p>Subject : -HR ادارة / شركة لارسال خطاب نقل الى موظف من مكان الى آخر.</p>\n                    <p>عزيزي { transfer_name },</p>\n                    <p>وفقا لتوجيهات الادارة ، يتم نقل الخدمات الخاصة بك w.e.f. { transfer_date }.</p>\n                    <p>مكان الادخال الجديد الخاص بك هو { transfer_department } قسم من فرع { transfer_branch } وتاريخ التحويل { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(286, 19, 'zh', 'Transfer Sent', '<p ><b>主题：-人力资源部门/公司将向员工从一个地点发送到另一个地点的调动信。</b></p>\n                    <p ><b>亲爱的{transfer_name}，</b></p>\n                    <p >根据管理层指令，您的服务将于 {transfer_date} 转移。 </p>\n                    <p >您的新邮寄地点是 {transfer_branch} 分行的 {transfer_department} 部门，转移日期为 {transfer_date}。 </p>\n                    {转让说明}。\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p><b>谢谢</b></p>\n                    <p><b>问候，</b></p>\n                    <p><b>人力资源部</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(287, 19, 'da', 'Transfer Sent', '<p>Emne:-HR-afdelingen / kompagniet om at sende overf&oslash;rsels brev til en medarbejder fra den ene lokalitet til den anden.</p>\n                    <p>K&aelig;re { transfer_name },</p>\n                    <p>Som Styring af direktiver overf&oslash;res dine serviceydelser w.e.f. { transfer_date }.</p>\n                    <p>Dit nye sted for postering er { transfer_departement } afdeling af { transfer_branch } gren og dato for overf&oslash;rsel { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(288, 19, 'de', 'Transfer Sent', '<p>Betreff: -Personalabteilung/Unternehmen, um einen &Uuml;berweisungsschreiben an einen Mitarbeiter von einem Standort an einen anderen zu senden.</p>\n                    <p>Sehr geehrter {transfer_name},</p>\n                    <p>Wie pro Management-Direktiven werden Ihre Dienste &uuml;ber w.e.f. {transfer_date} &uuml;bertragen.</p>\n                    <p>Ihr neuer Ort der Entsendung ist {transfer_department} Abteilung von {transfer_branch} Niederlassung und Datum der &Uuml;bertragung {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(289, 19, 'en', 'Transfer Sent', '<p ><b>Subject:-HR department/Company to send transfer letter to be issued to an employee from one location to another.</b></p>\n                    <p ><b>Dear {transfer_name},</b></p>\n                    <p >As per Management directives, your services are being transferred w.e.f.{transfer_date}. </p>\n                    <p >Your new place of posting is {transfer_department} department of {transfer_branch} branch and date of transfer {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(290, 19, 'es', 'Transfer Sent', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de transferencia a un empleado de un lugar a otro.</p>\n                    <p>Estimado {transfer_name},</p>\n                    <p>Seg&uacute;n las directivas de gesti&oacute;n, los servicios se transfieren w.e.f. {transfer_date}.</p>\n                    <p>El nuevo lugar de publicaci&oacute;n es el departamento {transfer_department} de la rama {transfer_branch} y la fecha de transferencia {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(291, 19, 'fr', 'Transfer Sent', '<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre de transfert &agrave; un employ&eacute; dun endroit &agrave; un autre.</p>\n                    <p>Cher { transfer_name },</p>\n                    <p>Selon les directives de gestion, vos services sont transf&eacute;r&eacute;s dans w.e.f. { transfer_date }.</p>\n                    <p>Votre nouveau lieu daffectation est le d&eacute;partement { transfer_department } de la branche { transfer_branch } et la date de transfert { transfer_date }.</p>\n                    <p>{ description_transfert }.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(292, 19, 'he', 'Transfer Sent', '<p ><b>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב העברה שיונפק לעובד ממקום אחד למשנהו.</b></p>\n                    <p ><b>{transfer_name} היקר,</b></p>\n                    <p >לפי הנחיות ההנהלה, השירותים שלך מועברים עם {transfer_date}. </p>\n                    <p >מקום הפרסום החדש שלך הוא מחלקת {transfer_department} של סניף {transfer_branch} ותאריך ההעברה {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p><b>תודה</b></p>\n                    <p><b>בברכה,</b></p>\n                    <p><b>מחלקת משאבי אנוש,</b></p>\n                    <p><b>{app_name}</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(293, 19, 'it', 'Transfer Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(294, 19, 'ja', 'Transfer Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(295, 19, 'nl', 'Transfer Sent', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van overdrachtsbrief aan een werknemer van de ene plaats naar de andere.</p>\n                    <p>Geachte { transfer_name },</p>\n                    <p>Als per beheerinstructie worden uw services overgebracht w.e.f. { transfer_date }.</p>\n                    <p>Uw nieuwe plaats van post is { transfer_department } van de afdeling { transfer_branch } en datum van overdracht { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(296, 19, 'pl', 'Transfer Sent', '<p>Temat:-Dział HR/Firma do wysyłania listu przelewowego, kt&oacute;ry ma być wydany pracownikowi z jednego miejsca do drugiego.</p>\n                    <p>Droga {transfer_name },</p>\n                    <p>Zgodnie z dyrektywami zarządzania, Twoje usługi są przesyłane w.e.f. {transfer_date }.</p>\n                    <p>Twoje nowe miejsce delegowania to {transfer_department } dział {transfer_branch } gałąź i data transferu {transfer_date }.</p>\n                    <p>{transfer_description }.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(297, 19, 'ru', 'Transfer Sent', '<p>Тема: -HR отдел/Компания для отправки трансферного письма сотруднику из одного места в другое.</p>\n                    <p>Уважаемый { transfer_name },</p>\n                    <p>В соответствии с директивами управления ваши службы передаются .ef. { transfer_date }.</p>\n                    <p>Новое место разноски: { transfer_department} подразделение { transfer_branch } и дата передачи { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(298, 19, 'pt', 'Transfer Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(299, 19, 'tr', 'Transfer Sent', '<p ><b>Konu:-İK departmanının/Şirketin, bir çalışana bir yerden başka bir yere gönderilecek transfer mektubunu göndermesi.</b></p>\n                    <p ><b>Sevgili {transfer_name},</b></p>\n                    <p >Yönetim yönergeleri uyarınca, hizmetleriniz {transfer_date} tarihinde aktarılıyor. </p>\n                    <p >Yeni görev yeriniz {transfer_branch} şubesinin {transfer_department} departmanı ve transfer tarihi {transfer_date}. </p>\n                    {transfer açıklaması}.\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p><b>Teşekkürler</b></p>\n                    <p><b>Saygılarımızla,</b></p>\n                    <p><b>İK Departmanı,</b></p>\n                    <p><b>{uygulama_adı</b></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(300, 19, 'pt-br', 'Transfer Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(301, 20, 'ar', 'Trip Sent', '<p>Subject : -HR ادارة / شركة لارسال رسالة رحلة.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>قمة الصباح إليك ! أكتب إلى مكتب إدارتكم بطلب متواضع للسفر من أجل زيارة إلى الخارج عن قصد.</p>\n                    <p>وسيكون هذا المنتدى هو المنتدى الرئيسي لأعمال المناخ في العام ، وقد كان محظوظا بما فيه الكفاية لكي يرشح لتمثيل شركتنا والمنطقة خلال الحلقة الدراسية.</p>\n                    <p>إن عضويتي التي دامت ثلاث سنوات كجزء من المجموعة والمساهمات التي قدمتها إلى الشركة ، ونتيجة لذلك ، كانت مفيدة من الناحية التكافلية. وفي هذا الصدد ، فإنني أطلب منكم بصفتي الرئيس المباشر لي أن يسمح لي بالحضور.</p>\n                    <p>مزيد من التفاصيل عن الرحلة :&nbsp;</p>\n                    <p>مدة الرحلة : { start_date } الى { end_date }</p>\n                    <p>الغرض من الزيارة : { purpose_of_visit }</p>\n                    <p>مكان الزيارة : { place_of_visit }</p>\n                    <p>الوصف : { trip_description }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(302, 20, 'zh', 'Trip Sent', '<p><strong>主题：-人力资源部门/公司发送出差信。</strong></p>\n                    <p><strong>亲爱的{employee_name}，</strong></p>\n                    <p>祝你早上好！我写信给贵部门办公室，提出一个出国访问{ Purpose_of_visit} 的请求。</p>\n                    <p>这将是年度领先的气候商业论坛，我们很幸运能够被提名在研讨会上代表我们公司和该地区。</p>\n                    <p>我作为团队成员的三年会员身份以及我对公司所做的贡献是共生有益的。在这方面，我请求您作为我的直接上级允许我参加。</p>\n                    <p>有关行程的更多详细信息：{start_date} 至 {end_date}</p>\n                    <p>行程持续时间：{start_date} 至 {end_date}</p>\n                    <p>访问目的：{ Purpose_of_visit}</p>\n                    <p>访问地点：{place_of_visit}</p>\n                    <p>描述：{t​​rip_description}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(303, 20, 'da', 'Trip Sent', '<p>Om: HR-afdelingen / Kompagniet, der skal sende udflugten.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Godmorgen til dig! Jeg skriver til dit kontor med en ydmyg anmodning om at rejse for en { purpose_of_visit } i udlandet.</p>\n                    <p>Det ville v&aelig;re &aring;rets f&oslash;rende klimaforum, og det ville v&aelig;re heldigt nok at blive nomineret til at repr&aelig;sentere vores virksomhed og regionen under seminaret.</p>\n                    <p>Mit tre&aring;rige medlemskab som en del af den gruppe og de bidrag, jeg har givet til virksomheden, har som f&oslash;lge heraf v&aelig;ret symbiotisk fordelagtigt. I den henseende anmoder jeg om, at De som min n&aelig;rmeste overordnede giver mig lov til at deltage.</p>\n                    <p>Flere oplysninger om turen:</p>\n                    <p>Trip Duration: { start_date } til { end_date }</p>\n                    <p>Form&aring;let med Bes&oslash;g: { purpose_of_visit }</p>\n                    <p>Plads af bes&oslash;g: { place_of_visit }</p>\n                    <p>Beskrivelse: { trip_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(304, 20, 'de', 'Trip Sent', '<p>Betreff: -Personalabteilung/Firma, um Reisebrief zu schicken.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Top of the morning to you! Ich schreibe an Ihre Dienststelle mit dem&uuml;tiger Bitte um eine Reise nach einem {purpose_of_visit} im Ausland.</p>\n                    <p>Es w&auml;re das f&uuml;hrende Klima-Business-Forum des Jahres und hatte das Gl&uuml;ck, nominiert zu werden, um unser Unternehmen und die Region w&auml;hrend des Seminars zu vertreten.</p>\n                    <p>Meine dreij&auml;hrige Mitgliedschaft als Teil der Gruppe und die Beitr&auml;ge, die ich an das Unternehmen gemacht habe, sind dadurch symbiotisch vorteilhaft gewesen. In diesem Zusammenhang ersuche ich Sie als meinen unmittelbaren Vorgesetzten, mir zu gestatten, zu besuchen.</p>\n                    <p>Mehr Details zu Reise:</p>\n                    <p>Dauer der Fahrt: {start_date} bis {end_date}</p>\n                    <p>Zweck des Besuchs: {purpose_of_visit}</p>\n                    <p>Ort des Besuchs: {place_of_visit}</p>\n                    <p>Beschreibung: {trip_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(305, 20, 'en', 'Trip Sent', '<p><strong>Subject:-HR department/Company to send trip letter .</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Top of the morning to you! I am writing to your department office with a humble request to travel for a {purpose_of_visit} abroad.</p>\n                    <p>It would be the leading climate business forum of the year and have been lucky enough to be nominated to represent our company and the region during the seminar.</p>\n                    <p>My three-year membership as part of the group and contributions I have made to the company, as a result, have been symbiotically beneficial. In that regard, I am requesting you as my immediate superior to permit me to attend.</p>\n                    <p>More detail about trip:{start_date} to {end_date}</p>\n                    <p>Trip Duration:{start_date} to {end_date}</p>\n                    <p>Purpose of Visit:{purpose_of_visit}</p>\n                    <p>Place of Visit:{place_of_visit}</p>\n                    <p>Description:{trip_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(306, 20, 'es', 'Trip Sent', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de viaje.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>&iexcl;Top de la ma&ntilde;ana para ti! Estoy escribiendo a su oficina del departamento con una humilde petici&oacute;n de viajar para un {purpose_of_visit} en el extranjero.</p>\n                    <p>Ser&iacute;a el principal foro de negocios clim&aacute;ticos del a&ntilde;o y han tenido la suerte de ser nominados para representar a nuestra compa&ntilde;&iacute;a y a la regi&oacute;n durante el seminario.</p>\n                    <p>Mi membres&iacute;a de tres a&ntilde;os como parte del grupo y las contribuciones que he hecho a la compa&ntilde;&iacute;a, como resultado, han sido simb&oacute;ticamente beneficiosos. En ese sentido, le estoy solicitando como mi superior inmediato que me permita asistir.</p>\n                    <p>M&aacute;s detalles sobre el viaje:&nbsp;</p>\n                    <p>Duraci&oacute;n del viaje: {start_date} a {end_date}</p>\n                    <p>Finalidad de la visita: {purpose_of_visit}</p>\n                    <p>Lugar de visita: {place_of_visit}</p>\n                    <p>Descripci&oacute;n: {trip_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(307, 20, 'fr', 'Trip Sent', '<p>Objet: -Service des RH / Compagnie pour envoyer une lettre de voyage.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>Top of the morning to you ! J&eacute;crai au bureau de votre minist&egrave;re avec une humble demande de voyage pour une {purpose_of_visit } &agrave; l&eacute;tranger.</p>\n                    <p>Il sagit du principal forum sur le climat de lann&eacute;e et a eu la chance d&ecirc;tre d&eacute;sign&eacute; pour repr&eacute;senter notre entreprise et la r&eacute;gion au cours du s&eacute;minaire.</p>\n                    <p>Mon adh&eacute;sion de trois ans au groupe et les contributions que jai faites &agrave; lentreprise, en cons&eacute;quence, ont &eacute;t&eacute; b&eacute;n&eacute;fiques sur le plan symbiotique. &Agrave; cet &eacute;gard, je vous demande d&ecirc;tre mon sup&eacute;rieur imm&eacute;diat pour me permettre dy assister.</p>\n                    <p>Plus de d&eacute;tails sur le voyage:</p>\n                    <p>Dur&eacute;e du voyage: { start_date } &agrave; { end_date }</p>\n                    <p>Objet de la visite: { purpose_of_visit}</p>\n                    <p>Lieu de visite: { place_of_visit }</p>\n                    <p>Description: { trip_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(308, 20, 'he', 'Trip Sent', '<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב טיול .</strong></p>\n                    <p><strong>{employee_name} היקר,</strong></p>\n                    <p>ראש הבוקר לך! אני כותב למשרד המחלקה שלך עם בקשה צנועה לנסוע ל{purpose_of_visit} לחו\"ל.</p>\n                    <p>זה יהיה פורום עסקי האקלים המוביל של השנה והיה לנו המזל להיות מועמד לייצג את החברה שלנו ואת האזור במהלך הסמינר.</p>\n                    <p>החברות שלי בת שלוש שנים כחלק מהקבוצה והתרומות שתרמתי לחברה, כתוצאה מכך, היו מועילות באופן סימביוטי. בהקשר זה, אני מבקש ממך כמפקד הישיר שלי להתיר לי להשתתף.</p>\n                    <p>פרטים נוספים על נסיעה:{start_date} עד {end_date}</p>\n                    <p>משך הנסיעה:{start_date} עד {end_date}</p>\n                    <p>מטרת הביקור:{purpose_of_visit}</p>\n                    <p>מקום ביקור:{place_of_visit}</p>\n                    <p>תיאור:{trip_description}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(309, 20, 'it', 'Trip Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di viaggio.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>In cima al mattino a te! Scrivo al tuo ufficio dipartimento con umile richiesta di viaggio per un {purpose_of_visit} allestero.</p>\n                    <p>Sarebbe il forum aziendale sul clima leader dellanno e sono stati abbastanza fortunati da essere nominati per rappresentare la nostra azienda e la regione durante il seminario.</p>\n                    <p>La mia adesione triennale come parte del gruppo e i contributi che ho apportato allazienda, di conseguenza, sono stati simbioticamente vantaggiosi. A tal proposito, vi chiedo come mio immediato superiore per consentirmi di partecipare.</p>\n                    <p>Pi&ugrave; dettagli sul viaggio:</p>\n                    <p>Trip Duration: {start_date} a {end_date}</p>\n                    <p>Finalit&agrave; di Visita: {purpose_of_visit}</p>\n                    <p>Luogo di Visita: {place_of_visit}</p>\n                    <p>Descrizione: {trip_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(310, 20, 'ja', 'Trip Sent', '<p>件名:-HR 部門/会社は出張レターを送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>朝のトップだ ! 海外で {purpose_of_visit} をお願いしたいという謙虚な要求をもって、私はあなたの部署に手紙を書いています。</p>\n                    <p>これは、今年の主要な気候ビジネス・フォーラムとなり、セミナーの開催中に当社と地域を代表する候補になるほど幸運にも恵まれています。</p>\n                    <p>私が会社に対して行った 3 年間のメンバーシップは、その結果として、共生的に有益なものでした。 その点では、私は、私が出席することを許可することを、私の即座の上司として</p>\n                    <p>トリップについての詳細 :</p>\n                    <p>トリップ期間:{start_date} を {end_date} に設定します</p>\n                    <p>アクセスの目的 :{purpose_of_visit}</p>\n                    <p>訪問の場所 :{place_of_visit}</p>\n                    <p>説明:{trip_description}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(311, 20, 'nl', 'Trip Sent', '<p>Betreft: -HR-afdeling/Bedrijf om reisbrief te sturen.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Top van de ochtend aan u! Ik schrijf uw afdelingsbureau met een bescheiden verzoek om een { purpose_of_visit } in het buitenland te bezoeken.</p>\n                    <p>Het zou het toonaangevende klimaatforum van het jaar zijn en hebben het geluk gehad om genomineerd te worden om ons bedrijf en de regio te vertegenwoordigen tijdens het seminar.</p>\n                    <p>Mijn driejarige lidmaatschap als onderdeel van de groep en bijdragen die ik heb geleverd aan het bedrijf, als gevolg daarvan, zijn symbiotisch gunstig geweest. Wat dat betreft, verzoek ik u als mijn directe chef mij in staat te stellen aanwezig te zijn.</p>\n                    <p>Meer details over reis:</p>\n                    <p>Duur van reis: { start_date } tot { end_date }</p>\n                    <p>Doel van bezoek: { purpose_of_visit }</p>\n                    <p>Plaats van bezoek: { place_of_visit }</p>\n                    <p>Beschrijving: { trip_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u we</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(312, 20, 'pl', 'Trip Sent', '<p>Temat:-Dział HR/Firma do wysyłania listu podr&oacute;ży.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Od samego rana do Ciebie! Piszę do twojego biura, z pokornym prośbą o wyjazd na {purpose_of_visit&nbsp;} za granicą.</p>\n                    <p>Byłoby to wiodącym forum biznesowym w tym roku i miało szczęście być nominowane do reprezentowania naszej firmy i regionu podczas seminarium.</p>\n                    <p>Moje trzyletnie członkostwo w grupie i składkach, kt&oacute;re uczyniłem w firmie, w rezultacie, były symbiotycznie korzystne. W tym względzie, zwracam się do pana o m&oacute;j bezpośredni przełożony, kt&oacute;ry pozwoli mi na udział w tej sprawie.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat wyjazdu:</p>\n                    <p>Czas trwania rejsu: {start_date } do {end_date }</p>\n                    <p>Cel wizyty: {purpose_of_visit }</p>\n                    <p>Miejsce wizyty: {place_of_visit }</p>\n                    <p>Opis: {trip_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(313, 20, 'ru', 'Trip Sent', '<p>Тема: -HR отдел/Компания для отправки письма на поездку.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>С утра до тебя! Я пишу в ваш отдел с смиренным запросом на поездку за границу.</p>\n                    <p>Это был бы ведущий климатический бизнес-форум года и по везло, что в ходе семинара он будет представлять нашу компанию и регион.</p>\n                    <p>Мое трехлетнее членство в составе группы и взносы, которые я внес в компанию, в результате, были симбиотически выгодны. В этой связи я прошу вас как моего непосредственного начальника разрешить мне присутствовать.</p>\n                    <p>Подробнее о поездке:</p>\n                    <p>Длительность поездки: { start_date } в { end_date }</p>\n                    <p>Цель посещения: { purpose_of_visit }</p>\n                    <p>Место посещения: { place_of_visit }</p>\n                    <p>Описание: { trip_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(314, 20, 'pt', 'Trip Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de viagem.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Topo da manh&atilde; para voc&ecirc;! Estou escrevendo para o seu departamento de departamento com um humilde pedido para viajar por um {purpose_of_visit} no exterior.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Seria o principal f&oacute;rum de neg&oacute;cios clim&aacute;tico do ano e teve a sorte de ser indicado para representar nossa empresa e a regi&atilde;o durante o semin&aacute;rio.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">A minha filia&ccedil;&atilde;o de tr&ecirc;s anos como parte do grupo e contribui&ccedil;&otilde;es que fiz &agrave; empresa, como resultado, foram simbioticamente ben&eacute;fico. A esse respeito, solicito que voc&ecirc; seja meu superior imediato para me permitir comparecer.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Mais detalhes sobre viagem:</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Trip Dura&ccedil;&atilde;o: {start_date} a {end_date}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Objetivo da Visita: {purpose_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Local de Visita: {place_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Descri&ccedil;&atilde;o: {trip_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(315, 20, 'tr', 'Trip Sent', '<p><strong>Konu:-İK departmanı/Şirket gezi mektubu gönderecek .</strong></p>\n                    <p><strong>Sayın {employee_name},</strong></p>\n                    <p>Günaydın! Yurtdışında bir ziyaret için mütevazı bir seyahat talebiyle departman ofisinize yazıyorum.</p>\n                    <p>Yılın önde gelen iklim iş forumu olacaktı ve seminer sırasında şirketimizi ve bölgeyi temsil etmek üzere aday gösterilecek kadar şanslıydık.</p>\n                    <p>Grubun bir parçası olarak üç yıllık üyeliğim ve bunun sonucunda şirkete yaptığım katkılar ortakyaşam açısından faydalı oldu. Bu bağlamda, acil amirim olarak katılmama izin vermenizi rica ediyorum.</p>\n                    <p>Seyahat hakkında daha fazla ayrıntı:{start_date} - {end_date}</p>\n                    <p>Seyahat Süresi:{start_date} - {end_date}</p>\n                    <p>Ziyaretin Amacı:{contact_of_visit}</p>\n                    <p>Ziyaret Yeri:{place_of_visit}</p>\n                    <p>Açıklama:{trip_description}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(316, 21, 'ar', 'Vendor Bill Sent', '<p>مرحبا ، { bill_name }</p>\n                    <p>مرحبا بك في { app_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا ! ! برجاء الرجوع الى رقم الفاتورة الملحقة { bill_number } للحصول على المنتج / الخدمة.</p>\n                    <p>ببساطة اضغط على الاختيار بأسفل.</p>\n                    <p>{ bill_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(317, 21, 'zh', 'Vendor Bill Sent', '<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">嗨，{bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">欢迎使用 {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">希望这封电子邮件能让您满意！！请参阅随附的产品/服务帐单编号 {bill_number}。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">只需点击下面的按钮即可。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">如果您有任何疑问，请随时与我们联系。</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">谢谢，</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">问候，</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(318, 21, 'da', 'Vendor Bill Sent', '<p>Hej, { bill_name }</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se vedlagte fakturanummer } { bill_number } for product/service.</p>\n                    <p>Klik p&aring; knappen nedenfor.</p>\n                    <p>{ bill_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(319, 21, 'de', 'Vendor Bill Sent', '<p>Hi, {bill_name}</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut!! Sehen Sie sich die beigef&uuml;gte Rechnungsnummer {bill_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten.</p>\n                    <p>{bill_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank,</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(320, 21, 'en', 'Vendor Bill Sent', '<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hi, {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Welcome to {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hope this email finds you well!! Please see attached bill number {bill_number} for product/service.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Simply click on the button below.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Feel free to reach out if you have any questions.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Thank You,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Regards,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(321, 21, 'es', 'Vendor Bill Sent', '<p>Hi, {bill_name}</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>&iexcl;Espero que este correo te encuentre bien!! Consulte el n&uacute;mero de factura adjunto {bill_number} para el producto/servicio.</p>\n                    <p>Simplemente haga clic en el bot&oacute;n de abajo.</p>\n                    <p>{bill_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>Gracias,</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(322, 21, 'fr', 'Vendor Bill Sent', '<p>Salut, { bill_name }</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! ! Veuillez consulter le num&eacute;ro de facture { bill_number } associ&eacute; au produit / service.</p>\n                    <p>Cliquez simplement sur le bouton ci-dessous.</p>\n                    <p>{bill_url }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci,</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(323, 21, 'he', 'Vendor Bill Sent', '<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">היי, {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">ברוכים הבאים אל {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">מקווה שהמייל הזה ימצא אותך טוב!! ראה את מספר החשבון המצורף {bill_number} עבור מוצר/שירות.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">פשוט לחץ על הכפתור למטה.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">אל תהסס לפנות אם יש לך שאלות כלשהן.</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">תודה,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">בברכה,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(324, 21, 'it', 'Vendor Bill Sent', '<p>Ciao, {bill_name}</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Spero che questa email ti trovi bene!! Si prega di consultare il numero di fattura allegato {bill_number} per il prodotto/servizio.</p>\n                    <p>Semplicemente clicca sul pulsante sottostante.</p>\n                    <p>{bill_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie,</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(325, 21, 'ja', 'Vendor Bill Sent', '<p>こんにちは、 {bill_name}</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>この E メールによりよく検出されます !! 製品 / サービスの添付された請求番号 {bill_number} を参照してください。</p>\n                    <p>以下のボタンをクリックしてください。</p>\n                    <p>{bill_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとうございます</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(326, 21, 'nl', 'Vendor Bill Sent', '<p>Hallo, { bill_name }</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Hoop dat deze e-mail je goed vindt!! Zie bijgevoegde factuurnummer { bill_number } voor product/service.</p>\n                    <p>Klik gewoon op de knop hieronder.</p>\n                    <p>{ bill_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank U,</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(327, 21, 'pl', 'Vendor Bill Sent', '<p>Witaj, {bill_name }</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Mam nadzieję, że ta wiadomość e-mail znajduje Cię dobrze!! Zapoznaj się z załączonym numerem rachunku {bill_number } dla produktu/usługi.</p>\n                    <p>Wystarczy kliknąć na przycisk poniżej.</p>\n                    <p>{bill_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękuję,</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(328, 21, 'ru', 'Vendor Bill Sent', '<p>Привет, { bill_name }</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Надеюсь, это письмо найдет вас хорошо! См. прилагаемый номер счета { bill_number } для product/service.</p>\n                    <p>Просто нажмите на кнопку внизу.</p>\n                    <p>{ bill_url }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(329, 21, 'pt', 'Vendor Bill Sent', '<p>Oi, {bill_name}</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem!! Por favor, consulte o n&uacute;mero de faturamento conectado {bill_number} para produto/servi&ccedil;o.</p>\n                    <p>Basta clicar no bot&atilde;o abaixo.</p>\n                    <p>{bill_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado,</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(330, 21, 'tr', 'Vendor Bill Sent', '<p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Merhaba {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{app_name}</span></p> e hoş geldiniz>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Umarım bu e-posta sizi iyi bulur!! Lütfen ürün/hizmet için ekteki {bill_number} numaralı faturaya bakın.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Aşağıdaki düğmeyi tıklamanız yeterli.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Sorularınız varsa bize ulaşmaktan çekinmeyin.</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Teşekkürler,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Saygılarımızla,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(331, 22, 'ar', 'Warning Sent', '<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">Subject : -HR ادارة / شركة لارسال رسالة تحذير. عزيزي { employe_warning_name }, { warning_subject } { warning_description } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(332, 22, 'zh', 'Warning Sent', '<p><strong>主题：-人力资源部门/公司发送警告信。</strong></p>\n                    <p><strong>亲爱的{employee_warning_name}，</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(333, 22, 'da', 'Warning Sent', '<p>Om: HR-afdelingen / kompagniet for at sende advarselsbrev.</p>\n                    <p>K&aelig;re { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(334, 22, 'de', 'Warning Sent', '<p>Betreff: -Personalabteilung/Unternehmen zum Senden von Warnschreiben.</p>\n                    <p>Sehr geehrter {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(335, 22, 'en', 'Warning Sent', '<p><strong>Subject:-HR department/Company to send warning letter.</strong></p>\n                    <p><strong>Dear {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(336, 22, 'es', 'Warning Sent', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de advertencia.</p>\n                    <p>Estimado {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(337, 22, 'fr', 'Warning Sent', '<p>Objet: -HR department / Company to send warning letter.</p>\n                    <p>Cher { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(338, 22, 'he', 'Warning Sent', '<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב אזהרה.</strong></p>\n                    <p><strong>{employee_warning_name} היקר,</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(339, 22, 'it', 'Warning Sent', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di avvertimento.</p>\n                    <p>Caro {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(340, 22, 'ja', 'Warning Sent', '<p><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">件名:-HR 部門/企業は警告レターを送信します。 { employee_warning_name} を出庫します。 {warning_subject} {warning_description} 質問がある場合は、自由に連絡してください。 ありがとう よろしく HR 部門 {app_name}</span></span></span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(341, 22, 'nl', 'Warning Sent', '<p>Betreft: -HR-afdeling/bedrijf om een waarschuwingsbrief te sturen.</p>\n                    <p>Geachte { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(342, 22, 'pl', 'Warning Sent', '<p>Temat: -Dział HR/Firma do wysyłania listu ostrzegawczego.</p>\n                    <p>Szanowny {employee_warning_name },</p>\n                    <p>{warning_subject }</p>\n                    <p>{warning_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(343, 22, 'ru', 'Warning Sent', '<p>Тема: -HR отдел/Компания для отправки предупреждающего письма.</p>\n                    <p>Уважаемый { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(344, 22, 'pt', 'Warning Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(345, 22, 'tr', 'Warning Sent', '<p><strong>Konu:-İK departmanı/Şirket uyarı mektubu gönderecek.</strong></p>\n                    <p><strong>Sayın {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(346, 22, 'pt-br', 'Warning Sent', '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(347, 23, 'ar', 'New Contract', '<p>&nbsp;</p>\n                    <p><b>مرحبا</b> { contract_client }</p>\n                    <p><b>موضوع العقد</b> : { contract_subject }</p>\n                    <p><b>مشروع العقد </b>: { contract_project }</p>\n                    <p><b>تاريخ البدء</b> : { contract_start_date }</p>\n                    <p><b>تاريخ الانتهاء</b> : { contract_end_date }</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><b>Regards نوع ،</b></p>\n                    <p>{ company_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(348, 23, 'zh', 'New Contract', '<p> </p>\n                    <p><strong>嗨</strong> {contract_client}</p>\n                    <p><b>合同主题</b>：{contract_subject}</p>\n                    <p><b>合同项目</b>：{contract_project}</p>\n                    <p><b>开始日期</b>：{contract_start_date}</p>\n                    <p><b>结束日期</b>：{contract_end_date}</p>\n                    <p>期待您的来信。</p>\n                    <p><strong>亲切的问候，</strong></p>\n                    <p>{公司名称}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(349, 23, 'da', 'New Contract', '<p>&nbsp;</p>\n                    <p><b>Hej </b>{ contract_client }</p>\n                    <p><b>Kontraktemne :&nbsp;</b>{ contract_subject }</p>\n                    <p><b>Kontrakt-projekt :&nbsp;</b>{ contract_project }</p>\n                    <p><b>Startdato&nbsp;</b>: { contract_start_date }</p>\n                    <p><b>Slutdato&nbsp;</b>: { contract_end_date }</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><b>Kind Hilds,</b></p>\n                    <p>{ company_name }</p><p></p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(350, 23, 'de', 'New Contract', '<p>&nbsp;</p>\n                    <p><b>Hi</b> {contract_client}</p>\n                    <p>&nbsp;<b style=\"font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">Vertragsgegenstand :</b><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> {contract_subject}</span></p>\n                    <p><b>Vertragsprojekt :&nbsp;</b>{contract_project}</p>\n                    <p><b>Startdatum&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {contract_end_date}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><b>Gütige Grüße,</b></p>\n                    <p>{company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(351, 23, 'en', 'New Contract', '<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {contract_client}</p>\n                    <p><b>Contract Subject</b>&nbsp;: {contract_subject}</p>\n                    <p><b>Contract Project</b>&nbsp;: {contract_project}</p>\n                    <p><b>Start Date&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {contract_end_date}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(352, 23, 'es', 'New Contract', '<p><b>Hi </b>{contract_client} </p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>asunto del contrato</b></span><b>&nbsp;:</b> {contract_subject}</p><p><b>contrato proyecto </b>: {<span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">contract_project</span><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">}</span></p><p> </p><p><b>Start Date :</b> {contract_start_date} </p><p><b>Fecha de finalización :</b> {contract_end_date} </p><p>Con ganas de escuchar de usted. </p><p><b>Regards de tipo, </b></p><p>{contract_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(353, 23, 'fr', 'New Contract', '<p><b>Bonjour</b> { contract_client }</p>\n                    <p><b>Objet du contrat :</b> { contract_subject } </p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>contrat projet :</b></span>&nbsp;{ contract_project } </p><p><b>Date de début&nbsp;</b>: { contract_start_date } </p><p><b>Date de fin&nbsp;</b>: { contract_end_date } </p><p>Regard sur lavenir.</p>\n                    <p><b>Sincères amitiés,</b></p>\n                    <p>{ nom_entreprise }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(354, 23, 'he', 'New Contract', '<p> </p>\n                    <p><strong>היי</strong> {contract_client}</p>\n                    <p><b>נושא החוזה</b> : {contract_subject}</p>\n                    <p><b>פרויקט חוזה</b> : {contract_project}</p>\n                    <p><b>תאריך התחלה </b>: {contract_start_date}</p>\n                    <p><b>תאריך סיום </b>: {contract_end_date}</p>\n                    <p>מצפה לשמוע ממך.</p>\n                    <p><strong>בברכה, </strong></p>\n                    <p>{company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(355, 23, 'it', 'New Contract', '<p>&nbsp;</p>\n                    <p>Ciao {contract_client}</p>\n                    <p><b>Oggetto contratto :&nbsp;</b>{contract_subject} </p><p><b>Contract Project :</b> {contract_project} </p><p><b>Data di inizio</b>: {contract_start_date} </p><p><b>Data di fine</b>: {contract_end_date} </p><p>Non vedo lora di sentirti<br></p>\n                    <p><b>Kind Regards,</b></p>\n                    <p>{company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(356, 23, 'ja', 'New Contract', '<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">こんにちは {contract_client}</span><br></p>\n                    <p><b>契約件名&nbsp;</b>: {contract subject}</p>\n                    <p><b>契約プロジェクト :</b> {contract_project}</p>\n                    <p><b>開始日</b>: {contract_start_date}</p>\n                    <p>&nbsp;<b style=\"font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">終了日</b><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">: {contract_end_date}</span></p><p><span style=\"text-align: var(--bs-body-text-align);\">あなたから聞いて楽しみにして</span></p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>敬具、</b><br></span></p>\n                    <p>{ company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(357, 23, 'nl', 'New Contract', '<p>&nbsp;</p>\n                    <p><b>Hallo</b> { contract_client }</p>\n                    <p><b>Contractonderwerp</b> : { contract_subject } </p><p><b>Contractproject</b> : { contract_project } </p><p><b>Begindatum</b> : { contract_start_date } </p><p><b>Einddatum&nbsp;</b>: { contract_end_date } </p><p>Naar voren komen om van u te horen.</p><p><b>Met vriendelijke groeten</b>,<br></p>\n                    <p>{ bedrijfsnaam }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(358, 23, 'pl', 'New Contract', '<p>&nbsp;</p>\n                    <p><b>Witaj</b> {contract_client }</p>\n                    <p><b>Temat umowy :&nbsp;</b>{contract_subject } </p><p><b>Projekt kontraktu</b>&nbsp;: {contract_project } </p><p><b>Data rozpoczęcia&nbsp;</b>: {contract_start_date } </p><p><b>Data zakończenia&nbsp;</b>: {contract_end_date } </p><p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><b>W Odniesieniu Do Rodzaju,</b></p>\n                    <p>{company_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(359, 23, 'ru', 'New Contract', '<p></p>\n                    <p><b>Здравствуйте</b> { contract_client }</p>\n                    <p><b>Субъект договора :</b> { contract_subject } </p><p><b>Проект договора</b>: { contract_project } </p><p><b>Начальная дата </b>: { contract_start_date } </p><p><b>Конечная дата </b>: { contract_end_date } </p><p>нетерпением ожидаю услышать от вас.</p>\n                    <p><b>Привет.</b></p>\n                    <p>{ company_name }</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(360, 23, 'pt', 'New Contract', '<p>&nbsp;</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Olá</b></span>&nbsp;{contract_client}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Assunto do Contrato</b></span>&nbsp;: {contract_subject}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Projeto de contrato&nbsp;</b></span>: {contract_project}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Data de início</b></span><b>&nbsp;</b>: {contract_start_date}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Data final</b></span><b>&nbsp;</b>: {contract_end_date}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><b>Atenciosamente,</b><br></p>\n                    <p>{company_name}</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(361, 23, 'tr', 'New Contract', '<p> </p>\n                    <p><strong>Merhaba</strong> {contract_client}</p>\n                    <p><b>Sözleşme Konusu</b> : {contract_subject}</p>\n                    <p><b>Sözleşme Projesi</b> : {contract_project}</p>\n                    <p><b>Başlangıç ​​Tarihi </b>: {contract_start_date}</p>\n                    <p><b>Bitiş Tarihi </b>: {contract_end_date}</p>\n                    <p>Sizden haber bekliyorum.</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{şirket_adı</p>', '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `employee_id` varchar(191) NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `designation_id` int(11) NOT NULL DEFAULT 0,
  `company_doj` varchar(191) DEFAULT NULL,
  `documents` varchar(191) DEFAULT NULL,
  `account_holder_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_identifier_code` varchar(191) DEFAULT NULL,
  `branch_location` varchar(191) DEFAULT NULL,
  `tax_payer_id` varchar(191) DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'accountant', NULL, NULL, NULL, NULL, 'accountant@example.com', '$2y$10$/tkA3mZUSVFI0PWUhM5DjOM4DYJ0E7v8cDmll/A4LrF4TmFP6Z6De', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(191) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimations`
--

CREATE TABLE `estimations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimation_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `terms` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext NOT NULL,
  `employee_id` longtext NOT NULL,
  `title` varchar(191) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_employees`
--

CREATE TABLE `event_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `attachment` varchar(191) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experience_certificates`
--

CREATE TABLE `experience_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience_certificates`
--

INSERT INTO `experience_certificates` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ar', '<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>إلي من يهمه الامر</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>مدة الخدمة {duration} في {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>الادوار والمسؤوليات</p>\n\n\n\n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n\n\n\n            <p>بإخلاص،</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>التوقيع</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'da', '<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n\n            <p>{app_name}</p>\n\n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Roller og ansvar</p>\n\n\n\n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n\n\n\n            <p>Med venlig hilsen</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Underskrift</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'de', '<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>WEN ES ANGEHT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Dienstzeit {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Rollen und Verantwortlichkeiten</p>\n\n\n\n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n\n\n\n            <p>Aufrichtig,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Unterschrift</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'en', '<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'es', '<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n\n\n            <p>{app_name}</p>\n\n            <p>A QUIEN LE INTERESE</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Funciones y responsabilidades</p>\n\n\n\n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'fr', '<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>&Agrave; QUI DE DROIT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n\n\n\n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n\n\n\n            <p>Sinc&egrave;rement,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Signature</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'id', '<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>UNTUK PERHATIAN</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Peran dan Tanggung Jawab</p>\n\n\n\n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n\n\n\n            <p>Sungguh-sungguh,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Tanda tangan</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'it', '<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>PER CHI &Egrave; COINVOLTO</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Durata del servizio {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Ruoli e responsabilit&agrave;</p>\n\n\n\n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n\n\n\n            <p>Cordiali saluti,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'ja', '\n            <h3 style=\"text-align: center;\">体験談</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>ご担当者様</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{app_name} のサービス {duration} の保有期間。</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>役割と責任</p>\n\n\n\n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n\n\n\n            <p>心から、</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>サイン</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'nl', '<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n\n\n            <p>{app_name}</p>\n\n            <p>VOOR WIE HET AANGAAT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Diensttijd {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Rollen en verantwoordelijkheden</p>\n\n\n\n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n\n\n\n            <p>Eerlijk,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Handtekening</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'pl', '<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Role i obowiązki</p>\n\n\n\n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n\n\n\n            <p>Z poważaniem,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Podpis</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'pt', '<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>A QUEM POSSA INTERESSAR</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Pap&eacute;is e responsabilidades</p>\n\n\n\n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Assinatura</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'ru', '<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Срок службы {duration} в {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Роли и обязанности</p>\n\n\n\n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n\n\n\n            <p>Искренне,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Подпись</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_lead_active` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_field_responses`
--

CREATE TABLE `form_field_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_offer_letters`
--

CREATE TABLE `generate_offer_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generate_offer_letters`
--

INSERT INTO `generate_offer_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ar', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n\n\n                    <p>عزيزي {applicationant_name} ،</p>\n\n\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n\n\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n\n\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n\n\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n\n\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n\n\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n\n                    <p>بإخلاص،</p>\n\n                    <p>{app_name}</p>\n                    ', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'da', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n\n                    <p>K&aelig;re {applicant_name}</p>\n\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n\n\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n\n\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n\n                    <p>Med venlig hilsen</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'de', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n\n\n                    <p>Sehr geehrter {applicant_name},</p>\n\n\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n\n\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n\n\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n\n\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n\n\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n\n\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n\n\n\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n\n\n                    <p>Aufrichtig,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'en', '<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n\n                    <p>Dear {applicant_name},</p>\n\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'es', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n\n\n                    <p>Estimado {applicant_name},</p>\n\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n\n\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n\n\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n\n\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n\n\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n\n\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n\n\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n\n\n                    <p>Sinceramente,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'fr', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n\n\n                    <p>Cher {applicant_name},</p>\n\n\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n\n\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n\n\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n\n\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n\n\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n\n\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n\n\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n\n\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'id', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n\n\n                    <p>{applicant_name} yang terhormat,</p>\n\n\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n\n\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n\n\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n\n\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n\n\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n\n\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n\n\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n\n\n                    <p>Sungguh-sungguh,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'it', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n\n\n                    <p>Gentile {nome_richiedente},</p>\n\n\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n\n\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n\n\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n\n\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n\n\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n\n\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n\n\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n\n\n                    <p>Cordiali saluti,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'ja', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n\n\n                    <p>{applicant_name} 様</p>\n\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n\n                    <p>心から、</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'nl', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n\n\n\n                    <p>Beste {applicant_name},</p>\n\n\n\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n\n\n\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n\n\n\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n\n\n\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n\n\n\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n\n\n\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n\n\n\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n\n\n\n                    <p>Eerlijk,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'pl', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n\n                    <p>Drogi {applicant_name},</p>\n\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n\n\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n\n\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n\n\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n\n\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n\n                    <p>Z poważaniem,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'pt', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n\n\n                    <p>Prezado {applicant_name},</p>\n\n\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n\n\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n\n\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n\n\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n\n\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n\n\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n\n\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n\n\n                    <p>Sinceramente,</p>\n\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'ru', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n\n\n                    <p>Уважаемый {applicant_name!</p>\n\n\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n\n\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n\n\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n\n\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n\n\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n\n\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n\n\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n\n\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `genrate_payslip_options`
--

CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `to` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `is_display` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `rating` varchar(191) DEFAULT NULL,
  `target_achievement` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `department` int(11) NOT NULL DEFAULT 0,
  `designation` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(191) DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text DEFAULT NULL,
  `employee_response` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `ref_number` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_bank_transfers`
--

CREATE TABLE `invoice_bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` varchar(191) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `receipt` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `order_id` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `txn_id` varchar(191) DEFAULT NULL,
  `payment_type` varchar(191) NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `add_receipt` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(50) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_restricts`
--

CREATE TABLE `ip_restricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `requirement` text DEFAULT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `skill` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `applicant` varchar(191) DEFAULT NULL,
  `visibility` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `custom_question` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `profile` varchar(191) DEFAULT NULL,
  `resume` varchar(191) DEFAULT NULL,
  `cover_letter` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `skill` text DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `is_archive` int(11) NOT NULL DEFAULT 0,
  `custom_question` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_application_notes`
--

CREATE TABLE `job_application_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL DEFAULT 0,
  `note_created` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_on_boards`
--

CREATE TABLE `job_on_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT 0,
  `job_type` varchar(191) DEFAULT NULL,
  `days_of_week` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `salary_type` varchar(191) DEFAULT NULL,
  `salary_duration` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Applied', 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Phone Screen', 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Interview', 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Hired', 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Rejected', 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `joining_letters`
--

CREATE TABLE `joining_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joining_letters`
--

INSERT INTO `joining_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ar', '<h2 style=\"text-align: center;\"><strong>خطاب الانضمام</strong></h2>\n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n            <p>الموضوع: موعد لوظيفة {designation}</p>\n            <p>عزيزي {employee_name} ،</p>\n            <p>يسعدنا أن نقدم لك منصب {designation} مع {app_name} \"الشركة\" وفقًا للشروط التالية و</p>\n            <p>الظروف:</p>\n            <p>1. بدء العمل</p>\n            <p>سيصبح عملك ساريًا اعتبارًا من {start_date}</p>\n            <p>2. المسمى الوظيفي</p>\n            <p>سيكون المسمى الوظيفي الخاص بك هو {designation}.</p>\n            <p>3. الراتب</p>\n            <p>سيكون راتبك والمزايا الأخرى على النحو المبين في الجدول 1 ، طيه.</p>\n            <p>4. مكان الإرسال</p>\n            <p>سيتم إرسالك إلى {branch}. ومع ذلك ، قد يُطلب منك العمل في أي مكان عمل تمتلكه الشركة ، أو</p>\n            <p>قد تحصل لاحقًا.</p>\n            <p>5. ساعات العمل</p>\n            <p>أيام العمل العادية هي من الاثنين إلى الجمعة. سيُطلب منك العمل لساعات حسب الضرورة لـ</p>\n            <p>أداء واجباتك على النحو الصحيح تجاه الشركة. ساعات العمل العادية من {start_time} إلى {end_time} وأنت</p>\n            <p>من المتوقع أن يعمل ما لا يقل عن {total_hours} ساعة كل أسبوع ، وإذا لزم الأمر لساعات إضافية اعتمادًا على</p>\n            <p>المسؤوليات.</p>\n            <p>6. الإجازة / العطل</p>\n            <p>6.1 يحق لك الحصول على إجازة غير رسمية مدتها 12 يومًا.</p>\n            <p>6.2 يحق لك الحصول على إجازة مرضية مدفوعة الأجر لمدة 12 يوم عمل.</p>\n            <p>6.3 تخطر الشركة بقائمة الإجازات المعلنة في بداية كل عام.</p>\n            <p>7. طبيعة الواجبات</p>\n            <p>ستقوم بأداء أفضل ما لديك من واجبات متأصلة في منصبك ومهام إضافية مثل الشركة</p>\n            <p>قد يدعوك لأداء ، من وقت لآخر. واجباتك المحددة منصوص عليها في الجدول الثاني بهذه الرسالة.</p>\n            <p>8. ممتلكات الشركة</p>\n            <p>ستحافظ دائمًا على ممتلكات الشركة في حالة جيدة ، والتي قد يتم تكليفك بها للاستخدام الرسمي خلال فترة عملها</p>\n            <p>عملك ، ويجب أن تعيد جميع هذه الممتلكات إلى الشركة قبل التخلي عن الرسوم الخاصة بك ، وإلا فإن التكلفة</p>\n            <p>نفس الشيء سوف تسترده منك الشركة.</p>\n            <p>9. الاقتراض / قبول الهدايا</p>\n            <p>لن تقترض أو تقبل أي أموال أو هدية أو مكافأة أو تعويض مقابل مكاسبك الشخصية من أو تضع نفسك بأي طريقة أخرى</p>\n            <p>بموجب التزام مالي تجاه أي شخص / عميل قد تكون لديك تعاملات رسمية معه.</p>\n            <p>10. الإنهاء</p>\n            <p>10.1 يمكن للشركة إنهاء موعدك ، دون أي سبب ، من خلال إعطائك ما لا يقل عن [إشعار] قبل أشهر</p>\n            <p>إشعار خطي أو راتب بدلاً منه. لغرض هذا البند ، يقصد بالراتب المرتب الأساسي.</p>\n            <p>10.2 إنهاء عملك مع الشركة ، دون أي سبب ، من خلال تقديم ما لا يقل عن إشعار الموظف</p>\n            <p>أشهر الإخطار أو الراتب عن الفترة غير المحفوظة ، المتبقية بعد تعديل الإجازات المعلقة ، كما في التاريخ.</p>\n            <p>10.3 تحتفظ الشركة بالحق في إنهاء عملك بإيجاز دون أي فترة إشعار أو مدفوعات إنهاء</p>\n            <p>إذا كان لديه سبب معقول للاعتقاد بأنك مذنب بسوء السلوك أو الإهمال ، أو ارتكبت أي خرق جوهري لـ</p>\n            <p>العقد ، أو تسبب في أي خسارة للشركة.</p>\n            <p>10. 4 عند إنهاء عملك لأي سبب من الأسباب ، ستعيد إلى الشركة جميع ممتلكاتك ؛ المستندات و</p>\n            <p>الأوراق الأصلية ونسخها ، بما في ذلك أي عينات ، وأدبيات ، وعقود ، وسجلات ، وقوائم ، ورسومات ، ومخططات ،</p>\n            <p>الرسائل والملاحظات والبيانات وما شابه ذلك ؛ والمعلومات السرية التي بحوزتك أو تحت سيطرتك والمتعلقة بك</p>\n            <p>التوظيف أو الشؤون التجارية للعملاء.</p>\n            <p>11. المعلومات السرية</p>\n            <p>11. 1 أثناء عملك في الشركة ، سوف تكرس وقتك واهتمامك ومهارتك كلها بأفضل ما لديك من قدرات</p>\n            <p>عملها. لا يجوز لك ، بشكل مباشر أو غير مباشر ، الانخراط أو الارتباط بنفسك ، أو الارتباط به ، أو القلق ، أو التوظيف ، أو</p>\n            <p>الوقت أو متابعة أي دورة دراسية على الإطلاق ، دون الحصول على إذن مسبق من الشركة أو الانخراط في أي عمل آخر أو</p>\n            <p>الأنشطة أو أي وظيفة أخرى أو العمل بدوام جزئي أو متابعة أي دورة دراسية على الإطلاق ، دون إذن مسبق من</p>\n            <p>شركة.</p>\n            <p>11. المعلومات السرية</p>\n            <p>11. 1 أثناء عملك في الشركة ، سوف تكرس وقتك واهتمامك ومهارتك كلها بأفضل ما لديك من قدرات</p>\n            <p>عملها. لا يجوز لك ، بشكل مباشر أو غير مباشر ، الانخراط أو الارتباط بنفسك ، أو الارتباط به ، أو القلق ، أو التوظيف ، أو</p>\n            <p>الوقت أو متابعة أي دورة دراسية على الإطلاق ، دون الحصول على إذن مسبق من الشركة أو الانخراط في أي عمل آخر أو</p>\n            <p>الأنشطة أو أي وظيفة أخرى أو العمل بدوام جزئي أو متابعة أي دورة دراسية على الإطلاق ، دون إذن مسبق من</p>\n            <p>شركة.</p>\n            <p>11.2 يجب عليك دائمًا الحفاظ على أعلى درجة من السرية والحفاظ على سرية السجلات والوثائق وغيرها</p>\n            <p>المعلومات السرية المتعلقة بأعمال الشركة والتي قد تكون معروفة لك أو مخولة لك بأي وسيلة</p>\n            <p>ولن تستخدم هذه السجلات والمستندات والمعلومات إلا بالطريقة المصرح بها حسب الأصول لصالح الشركة. إلى عن على</p>\n            <p>أغراض هذا البند \"المعلومات السرية\" تعني المعلومات المتعلقة بأعمال الشركة وعملائها</p>\n            <p>التي لا تتوفر لعامة الناس والتي قد تتعلمها أثناء عملك. هذا يشمل،</p>\n            <p>على سبيل المثال لا الحصر ، المعلومات المتعلقة بالمنظمة وقوائم العملاء وسياسات التوظيف والموظفين والمعلومات</p>\n            <p>حول منتجات الشركة وعملياتها بما في ذلك الأفكار والمفاهيم والإسقاطات والتكنولوجيا والكتيبات والرسم والتصاميم ،</p>\n            <p>المواصفات وجميع الأوراق والسير الذاتية والسجلات والمستندات الأخرى التي تحتوي على هذه المعلومات السرية.</p>\n            <p>11.3 لن تقوم في أي وقت بإزالة أي معلومات سرية من المكتب دون إذن.</p>\n\n            <p>11.4 واجبك في الحماية وعدم الإفشاء</p>\n\n            <p>تظل المعلومات السرية سارية بعد انتهاء أو إنهاء هذه الاتفاقية و / أو عملك مع الشركة.</p>\n\n            <p>11.5 سوف يجعلك خرق شروط هذا البند عرضة للفصل بإجراءات موجزة بموجب الفقرة أعلاه بالإضافة إلى أي</p>\n\n            <p>أي تعويض آخر قد يكون للشركة ضدك في القانون.</p>\n\n            <p>12. الإخطارات</p>\n\n            <p>يجوز لك إرسال إخطارات إلى الشركة على عنوان مكتبها المسجل. يمكن أن ترسل لك الشركة إشعارات على</p>\n\n            <p>العنوان الذي أشرت إليه في السجلات الرسمية.</p>\n\n\n\n            <p>13. تطبيق سياسة الشركة</p>\n\n            <p>يحق للشركة تقديم إعلانات السياسة من وقت لآخر فيما يتعلق بمسائل مثل استحقاق الإجازة والأمومة</p>\n\n            <p>الإجازة ، ومزايا الموظفين ، وساعات العمل ، وسياسات النقل ، وما إلى ذلك ، ويمكن تغييرها من وقت لآخر وفقًا لتقديرها الخاص.</p>\n\n            <p>جميع قرارات سياسة الشركة هذه ملزمة لك ويجب أن تلغي هذه الاتفاقية إلى هذا الحد.</p>\n\n\n\n            <p>14. القانون الحاكم / الاختصاص القضائي</p>\n\n            <p>يخضع عملك في الشركة لقوانين الدولة. تخضع جميع النزاعات للاختصاص القضائي للمحكمة العليا</p>\n\n            <p>غوجارات فقط.</p>\n\n\n\n            <p>15. قبول عرضنا</p>\n\n            <p>يرجى تأكيد قبولك لعقد العمل هذا من خلال التوقيع وإعادة النسخة المكررة.</p>\n\n\n\n            <p>نرحب بكم ونتطلع إلى تلقي موافقتكم والعمل معكم.</p>\n\n\n\n            <p>تفضلوا بقبول فائق الاحترام،</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'da', '<h3 style=\"text-align: center;\"><strong>Tilslutningsbrev</strong></h3>\n\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n            <p>Emne: Udn&aelig;vnelse til stillingen som {designation}</p>\n\n\n\n\n\n\n\n            <p>K&aelig;re {employee_name}</p>\n\n\n\n            <p>Vi er glade for at kunne tilbyde dig stillingen som {designation} hos {app_name} \"Virksomheden\" p&aring; f&oslash;lgende vilk&aring;r og</p>\n\n            <p>betingelser:</p>\n\n\n            <p>1. P&aring;begyndelse af ans&aelig;ttelse</p>\n\n            <p>Din ans&aelig;ttelse tr&aelig;der i kraft fra {start_date}</p>\n\n\n\n            <p>2. Jobtitel</p>\n\n\n            <p>Din jobtitel vil v&aelig;re {designation}.</p>\n\n\n\n            <p>3. L&oslash;n</p>\n\n            <p>Din l&oslash;n og andre goder vil v&aelig;re som angivet i skema 1, hertil.</p>\n\n\n\n            <p>4. Udstationeringssted</p>\n\n            <p>Du vil blive sl&aring;et op p&aring; {branch}. Du kan dog blive bedt om at arbejde p&aring; ethvert forretningssted, som virksomheden har, eller</p>\n\n            <p>senere kan erhverve.</p>\n\n\n            <p>5. Arbejdstimer</p>\n\n            <p>De normale arbejdsdage er mandag til fredag. Du vil blive forpligtet til at arbejde i de timer, som er n&oslash;dvendige for</p>\n\n            <p>beh&oslash;rig varetagelse af dine pligter over for virksomheden. Den normale arbejdstid er fra {start_time} til {end_time}, og det er du</p>\n\n            <p>forventes at arbejde ikke mindre end {total_hours} timer hver uge, og om n&oslash;dvendigt yderligere timer afh&aelig;ngigt af din</p>\n\n            <p>ansvar.</p>\n\n\n\n            <p>6. Orlov/Ferie</p>\n\n            <p>6.1 Du har ret til tilf&aelig;ldig ferie p&aring; 12 dage.</p>\n\n            <p>6.2 Du har ret til 12 arbejdsdages sygefrav&aelig;r med l&oslash;n.</p>\n\n            <p>6.3 Virksomheden skal meddele en liste over erkl&aelig;rede helligdage i begyndelsen af ​​hvert &aring;r.</p>\n\n\n\n            <p>7. Arbejdsopgavernes art</p>\n\n            <p>Du vil efter bedste evne udf&oslash;re alle de opgaver, der er iboende i din stilling og s&aring;danne yderligere opgaver som virksomheden</p>\n\n            <p>kan opfordre dig til at optr&aelig;de, fra tid til anden. Dine specifikke pligter er beskrevet i skema II hertil.</p>\n\n\n            <p>8. Firmaejendom</p>\n\n            <p>Du vil altid vedligeholde virksomhedens ejendom i god stand, som kan blive overdraget til dig til officiel brug i l&oslash;bet af</p>\n\n            <p>din ans&aelig;ttelse, og skal returnere al s&aring;dan ejendom til virksomheden, f&oslash;r du opgiver din afgift, i modsat fald vil omkostningerne</p>\n\n            <p>af samme vil blive inddrevet fra dig af virksomheden.</p>\n\n\n\n            <p>9. L&aring;n/modtagelse af gaver</p>\n\n            <p>Du vil ikke l&aring;ne eller acceptere nogen penge, gave, bel&oslash;nning eller kompensation for dine personlige gevinster fra eller p&aring; anden m&aring;de placere dig selv</p>\n\n            <p>under en &oslash;konomisk forpligtelse over for enhver person/kunde, som du m&aring;tte have officielle forbindelser med.</p>\n\n            <p>10. Opsigelse</p>\n\n            <p>10.1 Din ans&aelig;ttelse kan opsiges af virksomheden uden nogen grund ved at give dig mindst [varsel] m&aring;neder f&oslash;r</p>\n\n            <p>skriftligt varsel eller l&oslash;n i stedet herfor. Ved l&oslash;n forst&aring;s i denne paragraf grundl&oslash;n.</p>\n\n            <p>10.2 Du kan opsige dit ans&aelig;ttelsesforhold i virksomheden uden nogen grund ved at give mindst [Medarbejdermeddelelse]</p>\n\n            <p>m&aring;neders forudg&aring;ende varsel eller l&oslash;n for den ikke-opsparede periode, tilbage efter regulering af afventende orlov, som p&aring; dato.</p>\n\n            <p>10.3 Virksomheden forbeholder sig retten til at opsige dit ans&aelig;ttelsesforhold midlertidigt uden opsigelsesfrist eller opsigelsesbetaling</p>\n\n            <p>hvis den har rimelig grund til at tro, at du er skyldig i forseelse eller uagtsomhed, eller har beg&aring;et et grundl&aelig;ggende brud p&aring;</p>\n\n            <p>kontrakt, eller for&aring;rsaget tab for virksomheden.</p>\n\n            <p>10. 4 Ved oph&oslash;r af din ans&aelig;ttelse uanset &aring;rsag, vil du returnere al ejendom til virksomheden; dokumenter, og</p>\n\n            <p>papir, b&aring;de originale og kopier heraf, inklusive pr&oslash;ver, litteratur, kontrakter, optegnelser, lister, tegninger, tegninger,</p>\n\n            <p>breve, notater, data og lignende; og fortrolige oplysninger, i din besiddelse eller under din kontrol vedr&oslash;rende din</p>\n\n            <p>ans&aelig;ttelse eller til kunders forretningsforhold.</p>\n            <p>11. Fortrolige oplysninger</p>\n\n            <p>11. 1 Under din ans&aelig;ttelse i virksomheden vil du bruge al din tid, opm&aelig;rksomhed og dygtighed efter bedste evne til</p>\n\n            <p>sin virksomhed. Du m&aring; ikke, direkte eller indirekte, engagere eller associere dig med, v&aelig;re forbundet med, bekymret, ansat eller</p>\n\n            <p>tid eller forf&oslash;lge et hvilket som helst studieforl&oslash;b uden forudg&aring;ende tilladelse fra virksomheden. involveret i anden virksomhed eller</p>\n\n            <p>aktiviteter eller enhver anden stilling eller arbejde p&aring; deltid eller forf&oslash;lge ethvert studieforl&oslash;b uden forudg&aring;ende tilladelse fra</p>\n\n            <p>Selskab.</p>\n            <p>11.2 Du skal altid opretholde den h&oslash;jeste grad af fortrolighed og opbevare optegnelser, dokumenter og andre fortrolige oplysninger.</p>\n\n            <p>Fortrolige oplysninger vedr&oslash;rende virksomhedens virksomhed, som kan v&aelig;re kendt af dig eller betroet dig p&aring; nogen m&aring;de</p>\n\n            <p>og du vil kun bruge s&aring;danne optegnelser, dokumenter og oplysninger p&aring; en beh&oslash;rigt autoriseret m&aring;de i virksomhedens interesse. Til</p>\n\n            <p>form&aring;lene med denne paragraf \"Fortrolige oplysninger\" betyder oplysninger om virksomhedens og dets kunders forretning</p>\n\n            <p>som ikke er tilg&aelig;ngelig for offentligheden, og som du kan l&aelig;re i l&oslash;bet af din ans&aelig;ttelse. Dette inkluderer,</p>\n\n            <p>men er ikke begr&aelig;nset til information vedr&oslash;rende organisationen, dens kundelister, ans&aelig;ttelsespolitikker, personale og information</p>\n\n            <p>om virksomhedens produkter, processer, herunder ideer, koncepter, projektioner, teknologi, manualer, tegning, design,</p>\n\n            <p>specifikationer og alle papirer, CVer, optegnelser og andre dokumenter, der indeholder s&aring;danne fortrolige oplysninger.</p>\n\n            <p>11.3 Du vil p&aring; intet tidspunkt fjerne fortrolige oplysninger fra kontoret uden tilladelse.</p>\n\n            <p>11.4 Din pligt til at beskytte og ikke oplyse</p>\n\n            <p>e Fortrolige oplysninger vil overleve udl&oslash;bet eller opsigelsen af ​​denne aftale og/eller din ans&aelig;ttelse hos virksomheden.</p>\n\n            <p>11.5 Overtr&aelig;delse af betingelserne i denne klausul vil g&oslash;re dig ansvarlig for midlertidig afskedigelse i henhold til klausulen ovenfor ud over evt.</p>\n\n            <p>andre retsmidler, som virksomheden m&aring;tte have mod dig i henhold til loven.</p>\n            <p>12. Meddelelser</p>\n\n            <p>Meddelelser kan gives af dig til virksomheden p&aring; dets registrerede kontoradresse. Meddelelser kan gives af virksomheden til dig p&aring;</p>\n\n            <p>den adresse, du har angivet i de officielle optegnelser.</p>\n\n\n\n            <p>13. Anvendelse af virksomhedens politik</p>\n\n            <p>Virksomheden er berettiget til fra tid til anden at afgive politiske erkl&aelig;ringer vedr&oslash;rende sager som ret til orlov, barsel</p>\n\n            <p>orlov, ansattes ydelser, arbejdstider, overf&oslash;rselspolitikker osv., og kan &aelig;ndre det samme fra tid til anden efter eget sk&oslash;n.</p>\n\n            <p>Alle s&aring;danne politiske beslutninger fra virksomheden er bindende for dig og tilsides&aelig;tter denne aftale i det omfang.</p>\n\n\n\n            <p>14. G&aelig;ldende lov/Jurisdiktion</p>\n\n            <p>Din ans&aelig;ttelse hos virksomheden er underlagt landets love. Alle tvister er underlagt High Courts jurisdiktion</p>\n\n            <p>Kun Gujarat.</p>\n\n\n\n            <p>15. Accept af vores tilbud</p>\n\n            <p>Bekr&aelig;ft venligst din accept af denne ans&aelig;ttelseskontrakt ved at underskrive og returnere kopien.</p>\n\n\n\n            <p>Vi byder dig velkommen og ser frem til at modtage din accept og til at arbejde sammen med dig.</p>\n\n\n\n            <p>Venlig hilsen,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'de', '<h3 style=\"text-align: center;\"><strong>Beitrittsbrief</strong></h3>\n\n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n\n\n\n            <p>Betreff: Ernennung f&uuml;r die Stelle von {designation}</p>\n\n\n\n\n\n\n\n            <p>Sehr geehrter {employee_name},</p>\n\n\n\n            <p>Wir freuen uns, Ihnen die Position von {designation} bei {app_name} dem &bdquo;Unternehmen&ldquo; zu den folgenden Bedingungen anbieten zu k&ouml;nnen</p>\n\n            <p>Bedingungen:</p>\n\n\n            <p>1. Aufnahme des Arbeitsverh&auml;ltnisses</p>\n\n            <p>Ihre Anstellung gilt ab dem {start_date}</p>\n\n\n            <p>2. Berufsbezeichnung</p>\n\n            <p>Ihre Berufsbezeichnung lautet {designation}.</p>\n\n\n            <p>3. Gehalt</p>\n\n            <p>Ihr Gehalt und andere Leistungen sind in Anhang 1 zu diesem Dokument aufgef&uuml;hrt.</p>\n\n\n            <p>4. Postort</p>\n\n            <p>Sie werden bei {branch} eingestellt. Es kann jedoch erforderlich sein, dass Sie an jedem Gesch&auml;ftssitz arbeiten, den das Unternehmen hat, oder</p>\n\n            <p>sp&auml;ter erwerben kann.</p>\n\n\n            <p>5. Arbeitszeit</p>\n            <p>Die normalen Arbeitstage sind Montag bis Freitag. Sie m&uuml;ssen so viele Stunden arbeiten, wie es f&uuml;r die erforderlich ist</p>\n            <p>ordnungsgem&auml;&szlig;e Erf&uuml;llung Ihrer Pflichten gegen&uuml;ber dem Unternehmen. Die normalen Arbeitszeiten sind von {start_time} bis {end_time} und Sie sind es</p>\n            <p>voraussichtlich nicht weniger als {total_hours} Stunden pro Woche arbeiten, und falls erforderlich, abh&auml;ngig von Ihren zus&auml;tzlichen Stunden</p>\n            <p>Verantwortlichkeiten.</p>\n\n\n\n            <p>6. Urlaub/Urlaub</p>\n\n            <p>6.1 Sie haben Anspruch auf Freizeiturlaub von 12 Tagen.</p>\n\n            <p>6.2 Sie haben Anspruch auf 12 Arbeitstage bezahlten Krankenurlaub.</p>\n\n            <p>6.3 Das Unternehmen teilt zu Beginn jedes Jahres eine Liste der erkl&auml;rten Feiertage mit.</p>\n\n\n\n            <p>7. Art der Pflichten</p>\n\n            <p>Sie werden alle Aufgaben, die mit Ihrer Funktion verbunden sind, sowie alle zus&auml;tzlichen Aufgaben als Unternehmen nach besten Kr&auml;ften erf&uuml;llen</p>\n\n            <p>kann Sie von Zeit zu Zeit zur Leistung auffordern. Ihre spezifischen Pflichten sind in Anhang II zu diesem Dokument aufgef&uuml;hrt.</p>\n\n\n\n            <p>8. Firmeneigentum</p>\n\n            <p>Sie werden das Firmeneigentum, das Ihnen im Laufe der Zeit f&uuml;r offizielle Zwecke anvertraut werden kann, stets in gutem Zustand halten</p>\n\n            <p>Ihrer Anstellung und muss all dieses Eigentum an das Unternehmen zur&uuml;ckgeben, bevor Sie Ihre Geb&uuml;hr aufgeben, andernfalls die Kosten</p>\n\n            <p>derselben werden von der Gesellschaft von Ihnen zur&uuml;ckgefordert.</p>\n\n\n\n            <p>9. Leihen/Annehmen von Geschenken</p>\n\n            <p>Sie werden kein Geld, Geschenk, keine Belohnung oder Entsch&auml;digung f&uuml;r Ihre pers&ouml;nlichen Gewinne von sich leihen oder annehmen oder sich anderweitig platzieren</p>\n\n            <p>unter finanzieller Verpflichtung gegen&uuml;ber Personen/Kunden, mit denen Sie m&ouml;glicherweise dienstliche Beziehungen unterhalten.</p>\n\n            <p>10. K&uuml;ndigung</p>\n\n            <p>10.1 Ihre Ernennung kann vom Unternehmen ohne Angabe von Gr&uuml;nden gek&uuml;ndigt werden, indem es Ihnen mindestens [K&uuml;ndigung] Monate im Voraus mitteilt</p>\n\n            <p>schriftliche K&uuml;ndigung oder Gehalt statt dessen. Gehalt im Sinne dieser Klausel bedeutet Grundgehalt.</p>\n\n            <p>10.2 Sie k&ouml;nnen Ihre Anstellung beim Unternehmen ohne Angabe von Gr&uuml;nden k&uuml;ndigen, indem Sie mindestens [Mitarbeitermitteilung]</p>\n\n            <p>K&uuml;ndigungsfrist von Monaten oder Gehalt f&uuml;r den nicht angesparten Zeitraum, der nach Anpassung der anstehenden Urlaubstage &uuml;brig bleibt, zum Stichtag.</p>\n\n            <p>10.3 Das Unternehmen beh&auml;lt sich das Recht vor, Ihr Arbeitsverh&auml;ltnis ohne K&uuml;ndigungsfrist oder Abfindungszahlung fristlos zu k&uuml;ndigen</p>\n\n            <p>wenn es begr&uuml;ndeten Anlass zu der Annahme gibt, dass Sie sich eines Fehlverhaltens oder einer Fahrl&auml;ssigkeit schuldig gemacht haben oder einen wesentlichen Versto&szlig; begangen haben</p>\n\n            <p>oder dem Unternehmen Verluste verursacht haben.</p>\n\n            <p>10. 4 Bei Beendigung Ihres Besch&auml;ftigungsverh&auml;ltnisses, aus welchem ​​Grund auch immer, werden Sie s&auml;mtliches Eigentum an das Unternehmen zur&uuml;ckgeben; Dokumente und</p>\n\n            <p>Papier, sowohl Original als auch Kopien davon, einschlie&szlig;lich aller Muster, Literatur, Vertr&auml;ge, Aufzeichnungen, Listen, Zeichnungen, Blaupausen,</p>\n\n            <p>Briefe, Notizen, Daten und dergleichen; und vertrauliche Informationen, die sich in Ihrem Besitz oder unter Ihrer Kontrolle befinden und sich auf Sie beziehen</p>\n\n            <p>Besch&auml;ftigung oder f&uuml;r die gesch&auml;ftlichen Angelegenheiten der Kunden.</p>\n\n            <p>11. Confidential Information</p>\n\n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n\n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n\n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n\n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n\n            <p>Company.</p>\n\n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other&nbsp;</p>\n\n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n\n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n\n            <p>the purposes of this clause &lsquo;Confidential Information&rsquo; means information about the Company&rsquo;s business and that of its customers</p>\n\n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n\n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n\n            <p>about the Company&rsquo;s products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,&nbsp;</p>\n\n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n\n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n\n            <p>11.4 Your duty to safeguard and not disclos</p>\n\n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n\n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n\n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n\n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n\n            <p>the address intimated by you in the official records.</p>\n\n\n\n            <p>13. Applicability of Company Policy</p>\n\n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n\n            <p>leave, employees&rsquo; benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n\n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that&nbsp; extent.</p>\n\n\n\n            <p>14. Governing Law/Jurisdiction</p>\n\n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n\n            <p>Gujarat only.</p>\n\n\n\n            <p>15. Acceptance of our offer</p>\n\n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n\n\n\n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n\n\n\n            <p>Yours Sincerely,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'en', '<h3 style=\"text-align: center;\">Joining Letter</h3>\n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n            <p>Subject: Appointment for the post of {designation}</p>\n            <p>Dear {employee_name},</p>\n            <p>We are pleased to offer you the position of {designation} with {app_name} theCompany on the following terms and</p>\n            <p>conditions:</p>\n            <p>1. Commencement of employment</p>\n            <p>Your employment will be effective, as of {start_date}</p>\n            <p>2. Job title</p>\n            <p>Your job title will be{designation}.</p>\n            <p>3. Salary</p>\n            <p>Your salary and other benefits will be as set out in Schedule 1, hereto.</p>\n            <p>4. Place of posting</p>\n            <p>You will be posted at {branch}. You may however be required to work at any place of business which the Company has, or</p>\n            <p>may later acquire.</p>\n            <p>5. Hours of Work</p>\n            <p>The normal working days are Monday through Friday. You will be required to work for such hours as necessary for the</p>\n            <p>proper discharge of your duties to the Company. The normal working hours are from {start_time} to {end_time} and you are</p>\n            <p>expected to work not less than {total_hours} hours each week, and if necessary for additional hours depending on your</p>\n            <p>responsibilities.</p>\n            <p>6. Leave/Holidays</p>\n            <p>6.1 You are entitled to casual leave of 12 days.</p>\n            <p>6.2 You are entitled to 12 working days of paid sick leave.</p>\n            <p>6.3 The Company shall notify a list of declared holidays at the beginning of each year.</p>\n            <p>7. Nature of duties</p>\n            <p>You will perform to the best of your ability all the duties as are inherent in your post and such additional duties as the company</p>\n            <p>may call upon you to perform, from time to time. Your specific duties are set out in Schedule II hereto.</p>\n            <p>8. Company property</p>\n            <p>You will always maintain in good condition Company property, which may be entrusted to you for official use during the course of</p>\n            <p>your employment, and shall return all such property to the Company prior to relinquishment of your charge, failing which the cost</p>\n            <p>of the same will be recovered from you by the Company.</p>\n            <p>9. Borrowing/accepting gifts</p>\n            <p>You will not borrow or accept any money, gift, reward, or compensation for your personal gains from or otherwise place yourself</p>\n            <p>under pecuniary obligation to any person/client with whom you may be having official dealings.</p>\n            <p>10. Termination</p>\n            <p>10.1 Your appointment can be terminated by the Company, without any reason, by giving you not less than [Notice] months prior</p>\n            <p>notice in writing or salary in lieu thereof. For the purpose of this clause, salary shall mean basic salary.</p>\n            <p>10.2 You may terminate your employment with the Company, without any cause, by giving no less than [Employee Notice]</p>\n            <p>months prior notice or salary for the unsaved period, left after adjustment of pending leaves, as on date.</p>\n            <p>10.3 The Company reserves the right to terminate your employment summarily without any notice period or termination payment</p>\n            <p>if it has reasonable ground to believe you are guilty of misconduct or negligence, or have committed any fundamental breach of</p>\n            <p>contract, or caused any loss to the Company.</p>\n            <p>10. 4 On the termination of your employment for whatever reason, you will return to the Company all property; documents, and</p>\n            <p>paper, both original and copies thereof, including any samples, literature, contracts, records, lists, drawings, blueprints,</p>\n            <p>letters, notes, data and the like; and Confidential Information, in your possession or under your control relating to your</p>\n            <p>employment or to clients business affairs.</p>\n            <p>11. Confidential Information</p>\n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n            <p>Company.</p>\n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other</p>\n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n            <p>the purposes of this clauseConfidential Information means information about the Companys business and that of its customers</p>\n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n            <p>about the Companys products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,</p>\n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n            <p>11.4 Your duty to safeguard and not disclos</p>\n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n            <p>the address intimated by you in the official records.</p>\n            <p>13. Applicability of Company Policy</p>\n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n            <p>leave, employees benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that extent.</p>\n            <p>14. Governing Law/Jurisdiction</p>\n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n            <p>Gujarat only.</p>\n            <p>15. Acceptance of our offer</p>\n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n            <p>Yours Sincerely,</p>\n            <p>{app_name}</p>\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'es', '<h3 style=\"text-align: center;\"><strong>Carta de uni&oacute;n</strong></h3>\n\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n\n\n            <p>Asunto: Nombramiento para el puesto de {designation}</p>\n\n\n\n            <p>Estimado {employee_name},</p>\n\n            <p>Nos complace ofrecerle el puesto de {designation} con {app_name}, la Compa&ntilde;&iacute;a en los siguientes t&eacute;rminos y</p>\n\n            <p>condiciones:</p>\n\n\n            <p>1. Comienzo del empleo</p>\n\n            <p>Su empleo ser&aacute; efectivo a partir del {start_date}</p>\n\n\n            <p>2. T&iacute;tulo del trabajo</p>\n            <p>El t&iacute;tulo de su trabajo ser&aacute; {designation}.</p>\n\n            <p>3. Salario</p>\n\n            <p>Su salario y otros beneficios ser&aacute;n los establecidos en el Anexo 1 del presente.</p>\n\n\n            <p>4. Lugar de destino</p>\n            <p>Se le publicar&aacute; en {branch}. Sin embargo, es posible que deba trabajar en cualquier lugar de negocios que tenga la Compa&ntilde;&iacute;a, o</p>\n\n            <p>puede adquirir posteriormente.</p>\n\n\n\n            <p>5. Horas de trabajo</p>\n\n            <p>Los d&iacute;as normales de trabajo son de lunes a viernes. Se le pedir&aacute; que trabaje las horas que sean necesarias para el</p>\n\n            <p>cumplimiento adecuado de sus deberes para con la Compa&ntilde;&iacute;a. El horario normal de trabajo es de {start_time} a {end_time} y usted est&aacute;</p>\n\n            <p>se espera que trabaje no menos de {total_hours} horas cada semana y, si es necesario, horas adicionales dependiendo de su</p>\n\n            <p>responsabilidades.</p>\n\n\n\n            <p>6. Licencia/Vacaciones</p>\n\n            <p>6.1 Tiene derecho a un permiso eventual de 12 d&iacute;as.</p>\n\n            <p>6.2 Tiene derecho a 12 d&iacute;as laborables de baja por enfermedad remunerada.</p>\n\n            <p>6.3 La Compa&ntilde;&iacute;a deber&aacute; notificar una lista de d&iacute;as festivos declarados al comienzo de cada a&ntilde;o.</p>\n\n\n\n            <p>7. Naturaleza de los deberes</p>\n\n            <p>Desempe&ntilde;ar&aacute; lo mejor que pueda todas las funciones inherentes a su puesto y aquellas funciones adicionales que la empresa</p>\n\n            <p>puede pedirte que act&uacute;es, de vez en cuando. Sus deberes espec&iacute;ficos se establecen en el Anexo II del presente.</p>\n\n\n\n            <p>8. Propiedad de la empresa</p>\n\n            <p>Siempre mantendr&aacute; en buenas condiciones la propiedad de la Compa&ntilde;&iacute;a, que se le puede confiar para uso oficial durante el curso de</p>\n\n            <p>su empleo, y devolver&aacute; todos esos bienes a la Compa&ntilde;&iacute;a antes de renunciar a su cargo, en caso contrario, el costo</p>\n\n            <p>de la misma ser&aacute; recuperada de usted por la Compa&ntilde;&iacute;a.</p>\n\n\n\n            <p>9. Tomar prestado/aceptar regalos</p>\n\n            <p>No pedir&aacute; prestado ni aceptar&aacute; dinero, obsequios, recompensas o compensaciones por sus ganancias personales o se colocar&aacute; de otra manera</p>\n\n            <p>bajo obligaci&oacute;n pecuniaria a cualquier persona/cliente con quien pueda tener tratos oficiales.</p>\n            <p>10. Terminaci&oacute;n</p>\n\n            <p>10.1 Su nombramiento puede ser rescindido por la Compa&ntilde;&iacute;a, sin ning&uacute;n motivo, al darle no menos de [Aviso] meses antes</p>\n\n            <p>aviso por escrito o salario en su lugar. Para los efectos de esta cl&aacute;usula, se entender&aacute; por salario el salario base.</p>\n\n            <p>10.2 Puede rescindir su empleo con la Compa&ntilde;&iacute;a, sin ninguna causa, dando no menos de [Aviso al empleado]</p>\n\n            <p>meses de preaviso o salario por el per&iacute;odo no ahorrado, remanente despu&eacute;s del ajuste de licencias pendientes, a la fecha.</p>\n\n            <p>10.3 La Compa&ntilde;&iacute;a se reserva el derecho de rescindir su empleo sumariamente sin ning&uacute;n per&iacute;odo de preaviso o pago por rescisi&oacute;n</p>\n\n            <p>si tiene motivos razonables para creer que usted es culpable de mala conducta o negligencia, o ha cometido una violaci&oacute;n fundamental de</p>\n\n            <p>contrato, o causado cualquier p&eacute;rdida a la Compa&ntilde;&iacute;a.</p>\n\n            <p>10. 4 A la terminaci&oacute;n de su empleo por cualquier motivo, devolver&aacute; a la Compa&ntilde;&iacute;a todos los bienes; documentos, y</p>\n\n            <p>papel, tanto en original como en copia del mismo, incluyendo cualquier muestra, literatura, contratos, registros, listas, dibujos, planos,</p>\n\n            <p>cartas, notas, datos y similares; e Informaci&oacute;n confidencial, en su posesi&oacute;n o bajo su control en relaci&oacute;n con su</p>\n\n            <p>empleo o a los asuntos comerciales de los clientes.</p>\n            <p>11. Informaci&oacute;n confidencial</p>\n\n            <p>11. 1 Durante su empleo en la Compa&ntilde;&iacute;a, dedicar&aacute; todo su tiempo, atenci&oacute;n y habilidad lo mejor que pueda para</p>\n\n            <p>son negocios. Usted no deber&aacute;, directa o indirectamente, comprometerse o asociarse con, estar conectado, interesado, empleado o</p>\n\n            <p>tiempo o seguir cualquier curso de estudio, sin el permiso previo de la Compa&ntilde;&iacute;a. participar en cualquier otro negocio o</p>\n\n            <p>actividades o cualquier otro puesto o trabajo a tiempo parcial o seguir cualquier curso de estudio, sin el permiso previo de la</p>\n\n            <p>Compa&ntilde;&iacute;a.</p>\n\n            <p>11.2 Siempre debe mantener el m&aacute;s alto grado de confidencialidad y mantener como confidenciales los registros, documentos y otros</p>\n\n            <p>Informaci&oacute;n confidencial relacionada con el negocio de la Compa&ntilde;&iacute;a que usted pueda conocer o confiarle por cualquier medio</p>\n\n            <p>y utilizar&aacute; dichos registros, documentos e informaci&oacute;n solo de manera debidamente autorizada en inter&eacute;s de la Compa&ntilde;&iacute;a. Para</p>\n\n            <p>A los efectos de esta cl&aacute;usula, \"Informaci&oacute;n confidencial\" significa informaci&oacute;n sobre el negocio de la Compa&ntilde;&iacute;a y el de sus clientes.</p>\n\n            <p>que no est&aacute; disponible para el p&uacute;blico en general y que usted puede aprender en el curso de su empleo. Esto incluye,</p>\n\n            <p>pero no se limita a, informaci&oacute;n relacionada con la organizaci&oacute;n, sus listas de clientes, pol&iacute;ticas de empleo, personal e informaci&oacute;n</p>\n\n            <p>sobre los productos de la Compa&ntilde;&iacute;a, procesos que incluyen ideas, conceptos, proyecciones, tecnolog&iacute;a, manuales, dibujos, dise&ntilde;os,</p>\n\n            <p>especificaciones, y todos los papeles, curr&iacute;culos, registros y otros documentos que contengan dicha Informaci&oacute;n Confidencial.</p>\n\n            <p>11.3 En ning&uacute;n momento, sacar&aacute; ninguna Informaci&oacute;n Confidencial de la oficina sin permiso.</p>\n\n            <p>11.4 Su deber de salvaguardar y no divulgar</p>\n\n            <p>La Informaci&oacute;n Confidencial sobrevivir&aacute; a la expiraci&oacute;n o terminaci&oacute;n de este Acuerdo y/o su empleo con la Compa&ntilde;&iacute;a.</p>\n\n            <p>11.5 El incumplimiento de las condiciones de esta cl&aacute;usula le har&aacute; pasible de despido sumario en virtud de la cl&aacute;usula anterior adem&aacute;s de cualquier</p>\n\n            <p>otro recurso que la Compa&ntilde;&iacute;a pueda tener contra usted por ley.</p>\n            <p>12. Avisos</p>\n\n            <p>Usted puede enviar notificaciones a la Compa&ntilde;&iacute;a a su domicilio social. La Compa&ntilde;&iacute;a puede enviarle notificaciones a usted en</p>\n\n            <p>la direcci&oacute;n indicada por usted en los registros oficiales.</p>\n\n\n\n            <p>13. Aplicabilidad de la pol&iacute;tica de la empresa</p>\n\n            <p>La Compa&ntilde;&iacute;a tendr&aacute; derecho a hacer declaraciones de pol&iacute;tica de vez en cuando relacionadas con asuntos como el derecho a licencia, maternidad</p>\n\n            <p>licencia, beneficios de los empleados, horas de trabajo, pol&iacute;ticas de transferencia, etc., y puede modificarlas de vez en cuando a su sola discreci&oacute;n.</p>\n\n            <p>Todas las decisiones pol&iacute;ticas de la Compa&ntilde;&iacute;a ser&aacute;n vinculantes para usted y anular&aacute;n este Acuerdo en esa medida.</p>\n\n\n\n            <p>14. Ley aplicable/Jurisdicci&oacute;n</p>\n\n            <p>Su empleo con la Compa&ntilde;&iacute;a est&aacute; sujeto a las leyes del Pa&iacute;s. Todas las disputas estar&aacute;n sujetas a la jurisdicci&oacute;n del Tribunal Superior</p>\n\n            <p>S&oacute;lo Gujarat.</p>\n\n\n\n            <p>15. Aceptaci&oacute;n de nuestra oferta</p>\n\n            <p>Por favor, confirme su aceptaci&oacute;n de este Contrato de Empleo firmando y devolviendo el duplicado.</p>\n\n\n\n            <p>Le damos la bienvenida y esperamos recibir su aceptaci&oacute;n y trabajar con usted.</p>\n\n\n\n            <p>Tuyo sinceramente,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>\n            ', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');
INSERT INTO `joining_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'fr', '<h3 style=\"text-align: center;\">Lettre dadh&eacute;sion</h3>\n\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n            <p>{address}</p>\n\n\n            <p>Objet : Nomination pour le poste de {designation}</p>\n\n\n\n            <p>Cher {employee_name},</p>\n\n\n            <p>Nous sommes heureux de vous proposer le poste de {designation} avec {app_name} la \"Soci&eacute;t&eacute;\" selon les conditions suivantes et</p>\n\n            <p>les conditions:</p>\n\n            <p>1. Entr&eacute;e en fonction</p>\n\n            <p>Votre emploi sera effectif &agrave; partir du {start_date}</p>\n\n\n\n            <p>2. Intitul&eacute; du poste</p>\n\n            <p>Votre titre de poste sera {designation}.</p>\n\n\n\n            <p>3. Salaire</p>\n\n            <p>Votre salaire et vos autres avantages seront tels quindiqu&eacute;s &agrave; lannexe 1 ci-jointe.</p>\n\n\n            <p>4. Lieu de d&eacute;tachement</p>\n            <p>Vous serez affect&eacute; &agrave; {branch}. Vous pouvez cependant &ecirc;tre tenu de travailler dans nimporte quel lieu daffaires que la Soci&eacute;t&eacute; a, ou</p>\n\n            <p>pourra acqu&eacute;rir plus tard.</p>\n\n\n\n            <p>5. Heures de travail</p>\n\n            <p>Les jours ouvrables normaux sont du lundi au vendredi. Vous devrez travailler les heures n&eacute;cessaires &agrave; la</p>\n\n            <p>lexercice correct de vos fonctions envers la Soci&eacute;t&eacute;. Les heures normales de travail vont de {start_time} &agrave; {end_time} et vous &ecirc;tes</p>\n\n            <p>devrait travailler au moins {total_hours} heures par semaine, et si n&eacute;cessaire des heures suppl&eacute;mentaires en fonction de votre</p>\n\n            <p>responsabilit&eacute;s.</p>\n\n            <p>6. Cong&eacute;s/Vacances</p>\n\n            <p>6.1 Vous avez droit &agrave; un cong&eacute; occasionnel de 12 jours.</p>\n\n            <p>6.2 Vous avez droit &agrave; 12 jours ouvrables de cong&eacute; de maladie pay&eacute;.</p>\n\n            <p>6.3 La Soci&eacute;t&eacute; communiquera une liste des jours f&eacute;ri&eacute;s d&eacute;clar&eacute;s au d&eacute;but de chaque ann&eacute;e.</p>\n\n\n\n            <p>7. Nature des fonctions</p>\n\n            <p>Vous ex&eacute;cuterez au mieux de vos capacit&eacute;s toutes les t&acirc;ches inh&eacute;rentes &agrave; votre poste et les t&acirc;ches suppl&eacute;mentaires que lentreprise</p>\n\n            <p>peut faire appel &agrave; vous pour effectuer, de temps &agrave; autre. Vos fonctions sp&eacute;cifiques sont &eacute;nonc&eacute;es &agrave; lannexe II ci-jointe.</p>\n\n\n\n            <p>8. Biens sociaux</p>\n\n            <p>Vous maintiendrez toujours en bon &eacute;tat les biens de la Soci&eacute;t&eacute;, qui peuvent vous &ecirc;tre confi&eacute;s pour un usage officiel au cours de votre</p>\n\n            <p>votre emploi, et doit restituer tous ces biens &agrave; la Soci&eacute;t&eacute; avant labandon de votre charge, &agrave; d&eacute;faut de quoi le co&ucirc;t</p>\n\n            <p>de m&ecirc;me seront r&eacute;cup&eacute;r&eacute;s aupr&egrave;s de vous par la Soci&eacute;t&eacute;.</p>\n\n\n\n            <p>9. Emprunter/accepter des cadeaux</p>\n\n            <p>Vous nemprunterez ni naccepterez dargent, de cadeau, de r&eacute;compense ou de compensation pour vos gains personnels ou vous placerez autrement</p>\n\n            <p>sous obligation p&eacute;cuniaire envers toute personne/client avec qui vous pourriez avoir des relations officielles.</p>\n            <p>10. R&eacute;siliation</p>\n\n            <p>10.1 Votre nomination peut &ecirc;tre r&eacute;sili&eacute;e par la Soci&eacute;t&eacute;, sans aucune raison, en vous donnant au moins [Pr&eacute;avis] mois avant</p>\n\n            <p>un pr&eacute;avis &eacute;crit ou un salaire en tenant lieu. Aux fins de la pr&eacute;sente clause, salaire sentend du salaire de base.</p>\n\n            <p>10.2 Vous pouvez r&eacute;silier votre emploi au sein de la Soci&eacute;t&eacute;, sans motif, en donnant au moins [Avis &agrave; lemploy&eacute;]</p>\n\n            <p>mois de pr&eacute;avis ou de salaire pour la p&eacute;riode non &eacute;pargn&eacute;e, restant apr&egrave;s r&eacute;gularisation des cong&eacute;s en attente, &agrave; la date.</p>\n\n            <p>10.3 La Soci&eacute;t&eacute; se r&eacute;serve le droit de r&eacute;silier votre emploi sans pr&eacute;avis ni indemnit&eacute; de licenciement.</p>\n\n            <p>sil a des motifs raisonnables de croire que vous &ecirc;tes coupable dinconduite ou de n&eacute;gligence, ou que vous avez commis une violation fondamentale de</p>\n\n            <p>contrat, ou caus&eacute; une perte &agrave; la Soci&eacute;t&eacute;.</p>\n\n            <p>10. 4 &Agrave; la fin de votre emploi pour quelque raison que ce soit, vous restituerez &agrave; la Soci&eacute;t&eacute; tous les biens ; document, et</p>\n\n            <p>papier, &agrave; la fois loriginal et les copies de celui-ci, y compris les &eacute;chantillons, la litt&eacute;rature, les contrats, les dossiers, les listes, les dessins, les plans,</p>\n\n            <p>lettres, notes, donn&eacute;es et similaires; et Informations confidentielles, en votre possession ou sous votre contr&ocirc;le relatives &agrave; votre</p>\n\n            <p>lemploi ou aux affaires commerciales des clients.</p>\n            <p>11. Informations confidentielles</p>\n\n            <p>11. 1 Au cours de votre emploi au sein de la Soci&eacute;t&eacute;, vous consacrerez tout votre temps, votre attention et vos comp&eacute;tences au mieux de vos capacit&eacute;s pour</p>\n\n            <p>son affaire. Vous ne devez pas, directement ou indirectement, vous engager ou vous associer &agrave;, &ecirc;tre li&eacute; &agrave;, concern&eacute;, employ&eacute; ou</p>\n\n            <p>temps ou poursuivre quelque programme d&eacute;tudes que ce soit, sans lautorisation pr&eacute;alable de la Soci&eacute;t&eacute;. engag&eacute; dans toute autre entreprise ou</p>\n\n            <p>activit&eacute;s ou tout autre poste ou travail &agrave; temps partiel ou poursuivre des &eacute;tudes quelconques, sans lautorisation pr&eacute;alable du</p>\n\n            <p>Compagnie.</p>\n\n            <p>11.2 Vous devez toujours maintenir le plus haut degr&eacute; de confidentialit&eacute; et garder confidentiels les dossiers, documents et autres</p>\n\n            <p>Informations confidentielles relatives &agrave; lactivit&eacute; de la Soci&eacute;t&eacute; dont vous pourriez avoir connaissance ou qui vous seraient confi&eacute;es par tout moyen</p>\n\n            <p>et vous nutiliserez ces registres, documents et informations que dune mani&egrave;re d&ucirc;ment autoris&eacute;e dans lint&eacute;r&ecirc;t de la Soci&eacute;t&eacute;. Pour</p>\n\n            <p>aux fins de la pr&eacute;sente clause &laquo; Informations confidentielles &raquo; d&eacute;signe les informations sur les activit&eacute;s de la Soci&eacute;t&eacute; et celles de ses clients</p>\n\n            <p>qui nest pas accessible au grand public et dont vous pourriez avoir connaissance dans le cadre de votre emploi. Ceci comprend,</p>\n\n            <p>mais sans sy limiter, les informations relatives &agrave; lorganisation, ses listes de clients, ses politiques demploi, son personnel et les informations</p>\n\n            <p>sur les produits, les processus de la Soci&eacute;t&eacute;, y compris les id&eacute;es, les concepts, les projections, la technologie, les manuels, les dessins, les conceptions,</p>\n\n            <p>sp&eacute;cifications, et tous les papiers, curriculum vitae, dossiers et autres documents contenant de telles informations confidentielles.</p>\n\n            <p>11.3 &Agrave; aucun moment, vous ne retirerez des informations confidentielles du bureau sans autorisation.</p>\n\n            <p>11.4 Votre devoir de prot&eacute;ger et de ne pas divulguer</p>\n\n            <p>Les Informations confidentielles survivront &agrave; lexpiration ou &agrave; la r&eacute;siliation du pr&eacute;sent Contrat et/ou &agrave; votre emploi au sein de la Soci&eacute;t&eacute;.</p>\n\n            <p>11.5 La violation des conditions de cette clause vous rendra passible dun renvoi sans pr&eacute;avis en vertu de la clause ci-dessus en plus de tout</p>\n\n            <p>autre recours que la Soci&eacute;t&eacute; peut avoir contre vous en droit.</p>\n            <p>12. Avis</p>\n\n            <p>Des avis peuvent &ecirc;tre donn&eacute;s par vous &agrave; la Soci&eacute;t&eacute; &agrave; ladresse de son si&egrave;ge social. Des avis peuvent vous &ecirc;tre donn&eacute;s par la Soci&eacute;t&eacute; &agrave;</p>\n\n            <p>ladresse que vous avez indiqu&eacute;e dans les registres officiels.</p>\n\n\n\n            <p>13. Applicabilit&eacute; de la politique de lentreprise</p>\n\n            <p>La Soci&eacute;t&eacute; est autoris&eacute;e &agrave; faire des d&eacute;clarations de politique de temps &agrave; autre concernant des questions telles que le droit aux cong&eacute;s, la maternit&eacute;</p>\n\n            <p>les cong&eacute;s, les avantages sociaux des employ&eacute;s, les heures de travail, les politiques de transfert, etc., et peut les modifier de temps &agrave; autre &agrave; sa seule discr&eacute;tion.</p>\n\n            <p>Toutes ces d&eacute;cisions politiques de la Soci&eacute;t&eacute; vous lieront et pr&eacute;vaudront sur le pr&eacute;sent Contrat dans cette mesure.</p>\n\n\n\n            <p>14. Droit applicable/juridiction</p>\n\n            <p>Votre emploi au sein de la Soci&eacute;t&eacute; est soumis aux lois du pays. Tous les litiges seront soumis &agrave; la comp&eacute;tence du tribunal de grande instance</p>\n\n            <p>Gujarat uniquement.</p>\n\n\n\n            <p>15. Acceptation de notre offre</p>\n\n            <p>Veuillez confirmer votre acceptation de ce contrat de travail en signant et en renvoyant le duplicata.</p>\n\n\n\n            <p>Nous vous souhaitons la bienvenue et nous nous r&eacute;jouissons de recevoir votre acceptation et de travailler avec vous.</p>\n\n\n\n            <p>Cordialement,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'id', '<h3 style=\"text-align: center;\">Surat Bergabung</h3>\n\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n\n\n            <p>Perihal: Pengangkatan untuk jabatan {designation}</p>\n\n\n            <p>{employee_name} yang terhormat,</p>\n\n            <p>Kami dengan senang hati menawarkan kepada Anda, posisi {designation} dengan {app_name} sebagai Perusahaan dengan persyaratan dan</p>\n\n            <p>kondisi:</p>\n\n\n\n            <p>1. Mulai bekerja</p>\n\n            <p>Pekerjaan Anda akan efektif, mulai {start_date}</p>\n\n\n            <p>2. Jabatan</p>\n            <p>Jabatan Anda adalah {designation}.</p>\n\n            <p>3. Gaji</p>\n            <p>Gaji Anda dan tunjangan lainnya akan diatur dalam Jadwal 1, di sini.</p>\n\n\n            <p>4. Tempat posting</p>\n\n            <p>Anda akan diposkan di {branch}. Namun Anda mungkin diminta untuk bekerja di tempat bisnis mana pun yang dimiliki Perusahaan, atau</p>\n\n            <p>nantinya dapat memperoleh.</p>\n\n\n\n            <p>5. Jam Kerja</p>\n\n            <p>Hari kerja normal adalah Senin sampai Jumat. Anda akan diminta untuk bekerja selama jam-jam yang diperlukan untuk</p>\n\n            <p>pelaksanaan tugas Anda dengan benar di Perusahaan. Jam kerja normal adalah dari {start_time} hingga {end_time} dan Anda</p>\n\n            <p>diharapkan bekerja tidak kurang dari {total_hours} jam setiap minggu, dan jika perlu untuk jam tambahan tergantung pada</p>\n\n            <p>tanggung jawab.</p>\n\n\n\n            <p>6. Cuti/Libur</p>\n\n            <p>6.1 Anda berhak atas cuti biasa selama 12 hari.</p>\n\n            <p>6.2 Anda berhak atas 12 hari kerja cuti sakit berbayar.</p>\n\n            <p>6.3 Perusahaan akan memberitahukan daftar hari libur yang diumumkan pada awal setiap tahun.</p>\n\n\n\n            <p>7. Sifat tugas</p>\n\n            <p>Anda akan melakukan yang terbaik dari kemampuan Anda semua tugas yang melekat pada jabatan Anda dan tugas tambahan seperti perusahaan</p>\n\n            <p>dapat memanggil Anda untuk tampil, dari waktu ke waktu. Tugas khusus Anda ditetapkan dalam Jadwal II di sini.</p>\n\n\n\n            <p>8. Properti perusahaan</p>\n\n            <p>Anda akan selalu menjaga properti Perusahaan dalam kondisi baik, yang dapat dipercayakan kepada Anda untuk penggunaan resmi selama</p>\n\n            <p>pekerjaan Anda, dan akan mengembalikan semua properti tersebut kepada Perusahaan sebelum melepaskan biaya Anda, jika tidak ada biayanya</p>\n\n            <p>yang sama akan dipulihkan dari Anda oleh Perusahaan.</p>\n\n\n\n            <p>9. Meminjam/menerima hadiah</p>\n\n            <p>Anda tidak akan meminjam atau menerima uang, hadiah, hadiah, atau kompensasi apa pun untuk keuntungan pribadi Anda dari atau dengan cara lain menempatkan diri Anda sendiri</p>\n\n            <p>di bawah kewajiban uang kepada setiap orang/klien dengan siapa Anda mungkin memiliki hubungan resmi.</p>\n            <p>10. Penghentian</p>\n\n            <p>10.1 Penunjukan Anda dapat diakhiri oleh Perusahaan, tanpa alasan apa pun, dengan memberi Anda tidak kurang dari [Pemberitahuan] bulan sebelumnya</p>\n\n            <p>pemberitahuan secara tertulis atau gaji sebagai penggantinya. Untuk maksud pasal ini, gaji berarti gaji pokok.</p>\n\n            <p>10.2 Anda dapat memutuskan hubungan kerja Anda dengan Perusahaan, tanpa alasan apa pun, dengan memberikan tidak kurang dari [Pemberitahuan Karyawan]</p>\n\n            <p>pemberitahuan atau gaji bulan sebelumnya untuk periode yang belum disimpan, yang tersisa setelah penyesuaian cuti yang tertunda, pada tanggal.</p>\n\n            <p>10.3 Perusahaan berhak untuk mengakhiri hubungan kerja Anda dengan segera tanpa pemberitahuan jangka waktu atau pembayaran pemutusan hubungan kerja</p>\n\n            <p>jika memiliki alasan yang masuk akal untuk meyakini bahwa Anda bersalah atas kesalahan atau kelalaian, atau telah melakukan pelanggaran mendasar apa pun terhadap</p>\n\n            <p>kontrak, atau menyebabkan kerugian bagi Perusahaan.</p>\n\n            <p>10. 4 Pada pemutusan hubungan kerja Anda karena alasan apa pun, Anda akan mengembalikan semua properti kepada Perusahaan; dokumen, dan</p>\n\n            <p>kertas, baik asli maupun salinannya, termasuk contoh, literatur, kontrak, catatan, daftar, gambar, cetak biru,</p>\n\n            <p>surat, catatan, data dan sejenisnya; dan Informasi Rahasia, yang Anda miliki atau di bawah kendali Anda terkait dengan</p>\n\n            <p>pekerjaan atau untuk urusan bisnis klien.</p>\n            <p>11. Informasi Rahasia</p>\n\n            <p>11. 1 Selama bekerja di Perusahaan, Anda akan mencurahkan seluruh waktu, perhatian, dan keterampilan Anda sebaik mungkin untuk</p>\n\n            <p>bisnisnya. Anda tidak boleh, secara langsung atau tidak langsung, terlibat atau mengasosiasikan diri Anda dengan, terhubung dengan, terkait, dipekerjakan, atau</p>\n\n            <p>waktu atau mengikuti program studi apapun, tanpa izin sebelumnya dari Perusahaan.terlibat dalam bisnis lain atau</p>\n\n            <p>kegiatan atau pos atau pekerjaan paruh waktu lainnya atau mengejar program studi apa pun, tanpa izin sebelumnya dari</p>\n\n            <p>Perusahaan.</p>\n\n            <p>11.2 Anda harus selalu menjaga tingkat kerahasiaan tertinggi dan merahasiakan catatan, dokumen, dan lainnya</p>\n\n            <p>Informasi Rahasia yang berkaitan dengan bisnis Perusahaan yang mungkin Anda ketahui atau rahasiakan kepada Anda dengan cara apa pun</p>\n\n            <p>dan Anda akan menggunakan catatan, dokumen, dan informasi tersebut hanya dengan cara yang sah untuk kepentingan Perusahaan. Untuk</p>\n\n            <p>tujuan klausul ini Informasi Rahasia berarti informasi tentang bisnis Perusahaan dan pelanggannya</p>\n\n            <p>yang tidak tersedia untuk masyarakat umum dan yang mungkin Anda pelajari selama masa kerja Anda. Ini termasuk,</p>\n\n            <p>tetapi tidak terbatas pada, informasi yang berkaitan dengan organisasi, daftar pelanggannya, kebijakan ketenagakerjaan, personel, dan informasi</p>\n\n            <p>tentang produk Perusahaan, proses termasuk ide, konsep, proyeksi, teknologi, manual, gambar, desain,</p>\n\n            <p>spesifikasi, dan semua makalah, resume, catatan dan dokumen lain yang berisi Informasi Rahasia tersebut.</p>\n\n            <p>11.3 Kapan pun Anda akan menghapus Informasi Rahasia apa pun dari kantor tanpa izin.</p>\n\n            <p>11.4 Kewajiban Anda untuk melindungi dan tidak mengungkapkan</p>\n\n            <p>e Informasi Rahasia akan tetap berlaku setelah berakhirnya atau pengakhiran Perjanjian ini dan/atau hubungan kerja Anda dengan Perusahaan.</p>\n\n            <p>11.5 Pelanggaran terhadap ketentuan klausul ini akan membuat Anda bertanggung jawab atas pemecatan singkat berdasarkan klausul di atas selain dari:</p>\n\n            <p>upaya hukum lain yang mungkin dimiliki Perusahaan terhadap Anda secara hukum.</p>\n            <p>12. Pemberitahuan</p>\n\n            <p>Pemberitahuan dapat diberikan oleh Anda kepada Perusahaan di alamat kantor terdaftarnya. Pemberitahuan dapat diberikan oleh Perusahaan kepada Anda di</p>\n\n            <p>alamat yang diberitahukan oleh Anda dalam catatan resmi.</p>\n\n\n\n            <p>13. Keberlakuan Kebijakan Perusahaan</p>\n\n            <p>Perusahaan berhak untuk membuat pernyataan kebijakan dari waktu ke waktu berkaitan dengan hal-hal seperti hak cuti, persalinan</p>\n\n            <p>cuti, tunjangan karyawan, jam kerja, kebijakan transfer, dll., dan dapat mengubahnya dari waktu ke waktu atas kebijakannya sendiri.</p>\n\n            <p>Semua keputusan kebijakan Perusahaan tersebut akan mengikat Anda dan akan mengesampingkan Perjanjian ini sejauh itu.</p>\n\n\n\n            <p>14. Hukum/Yurisdiksi yang Mengatur</p>\n\n            <p>Pekerjaan Anda dengan Perusahaan tunduk pada undang-undang Negara. Semua perselisihan akan tunduk pada yurisdiksi Pengadilan Tinggi</p>\n\n            <p>Gujarat saja.</p>\n\n\n\n            <p>15. Penerimaan penawaran kami</p>\n\n            <p>Harap konfirmasikan penerimaan Anda atas Kontrak Kerja ini dengan menandatangani dan mengembalikan salinan duplikatnya.</p>\n\n\n\n            <p>Kami menyambut Anda dan berharap untuk menerima penerimaan Anda dan bekerja sama dengan Anda.</p>\n\n\n\n            <p>Dengan hormat,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'it', '<h3 style=\"text-align: center;\">Lettera di adesione</h3>\n\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n            <p>Oggetto: Appuntamento alla carica di {designation}</p>\n\n\n            <p>Gentile {employee_name},</p>\n\n            <p>Siamo lieti di offrirti la posizione di {designation} con {app_name} la \"Societ&agrave;\" alle seguenti condizioni e</p>\n\n            <p>condizioni:</p>\n\n\n            <p>1. Inizio del rapporto di lavoro</p>\n\n            <p>Il tuo impiego sar&agrave; effettivo a partire da {start_date}</p>\n\n\n\n            <p>2. Titolo di lavoro</p>\n\n            <p>Il tuo titolo di lavoro sar&agrave; {designation}.</p>\n\n            <p>3. Stipendio</p>\n\n            <p>Il tuo stipendio e altri benefici saranno come indicato nellAllegato 1, qui di seguito.</p>\n\n\n\n            <p>4. Luogo di invio</p>\n\n            <p>Sarai inviato a {branch}. Tuttavia, potrebbe essere richiesto di lavorare in qualsiasi luogo di attivit&agrave; che la Societ&agrave; ha, o</p>\n\n            <p>potr&agrave; successivamente acquisire.</p>\n\n\n\n            <p>5. Orario di lavoro</p>\n\n            <p>I normali giorni lavorativi sono dal luned&igrave; al venerd&igrave;. Ti verr&agrave; richiesto di lavorare per le ore necessarie per il</p>\n\n            <p>corretto adempimento dei propri doveri nei confronti della Societ&agrave;. Lorario di lavoro normale va da {start_time} a {end_time} e tu lo sei</p>\n\n            <p>dovrebbe lavorare non meno di {total_hours} ore ogni settimana e, se necessario, per ore aggiuntive a seconda del tuo</p>\n\n            <p>responsabilit&agrave;.</p>\n\n\n\n            <p>6. Permessi/Festivit&agrave;</p>\n\n            <p>6.1 Hai diritto a un congedo occasionale di 12 giorni.</p>\n\n            <p>6.2 Hai diritto a 12 giorni lavorativi di congedo per malattia retribuito.</p>\n\n            <p>6.3 La Societ&agrave; comunica allinizio di ogni anno un elenco delle festivit&agrave; dichiarate.</p>\n\n\n\n            <p>7. Natura degli incarichi</p>\n\n            <p>Eseguirai al meglio delle tue capacit&agrave; tutti i compiti inerenti al tuo incarico e compiti aggiuntivi come lazienda</p>\n\n            <p>pu&ograve; invitarti a esibirti, di tanto in tanto. I tuoi doveri specifici sono stabiliti nellAllegato II del presente documento.</p>\n\n\n\n            <p>8. Propriet&agrave; aziendale</p>\n\n            <p>Manterrete sempre in buono stato i beni dellAzienda, che nel corso dellanno potrebbero esservi affidati per uso ufficiale</p>\n\n            <p>il tuo impiego, e restituir&agrave; tutte queste propriet&agrave; alla Societ&agrave; prima della rinuncia al tuo addebito, in caso contrario il costo</p>\n\n            <p>degli stessi saranno da voi recuperati dalla Societ&agrave;.</p>\n\n\n\n            <p>9. Prendere in prestito/accettare regali</p>\n\n            <p>Non prenderai in prestito n&eacute; accetterai denaro, dono, ricompensa o compenso per i tuoi guadagni personali da o altrimenti collocato te stesso</p>\n\n            <p>sotto obbligazione pecuniaria nei confronti di qualsiasi persona/cliente con cui potresti avere rapporti ufficiali.</p>\n            <p>10. Cessazione</p>\n\n            <p>10.1 Il tuo incarico pu&ograve; essere risolto dalla Societ&agrave;, senza alcun motivo, dandoti non meno di [Avviso] mesi prima</p>\n\n            <p>avviso scritto o stipendio in sostituzione di esso. Ai fini della presente clausola, per stipendio si intende lo stipendio base.</p>\n\n            <p>10.2 &Egrave; possibile terminare il proprio rapporto di lavoro con la Societ&agrave;, senza alcuna causa, fornendo non meno di [Avviso per il dipendente]</p>\n\n            <p>mesi di preavviso o stipendio per il periodo non risparmiato, lasciato dopo ladeguamento delle ferie pendenti, come alla data.</p>\n\n            <p>10.3 La Societ&agrave; si riserva il diritto di terminare il rapporto di lavoro sommariamente senza alcun periodo di preavviso o pagamento di cessazione</p>\n\n            <p>se ha fondati motivi per ritenere che tu sia colpevole di cattiva condotta o negligenza, o abbia commesso una violazione fondamentale</p>\n\n            <p>contratto, o ha causato danni alla Societ&agrave;.</p>\n\n            <p>10. 4 Alla cessazione del rapporto di lavoro per qualsiasi motivo, restituirete alla Societ&agrave; tutti i beni; documenti, e</p>\n\n            <p>carta, sia in originale che in copia, inclusi eventuali campioni, letteratura, contratti, registrazioni, elenchi, disegni, progetti,</p>\n\n            <p>lettere, note, dati e simili; e Informazioni Riservate, in tuo possesso o sotto il tuo controllo, relative alla tua</p>\n\n            <p>lavoro o agli affari dei clienti.</p>\n            <p>11. Confidential Information</p>\n\n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n\n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n\n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n\n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n\n            <p>Company.</p>\n\n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other&nbsp;</p>\n\n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n\n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n\n            <p>the purposes of this clause &lsquo;Confidential Information&rsquo; means information about the Company&rsquo;s business and that of its customers</p>\n\n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n\n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n\n            <p>about the Company&rsquo;s products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,&nbsp;</p>\n\n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n\n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n\n            <p>11.4 Your duty to safeguard and not disclos</p>\n\n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n\n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n\n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n\n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n\n            <p>the address intimated by you in the official records.</p>\n\n\n\n            <p>13. Applicability of Company Policy</p>\n\n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n\n            <p>leave, employees&rsquo; benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n\n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that&nbsp; extent.</p>\n\n\n\n            <p>14. Governing Law/Jurisdiction</p>\n\n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n\n            <p>Gujarat only.</p>\n\n\n\n            <p>15. Acceptance of our offer</p>\n\n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n\n\n\n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n\n\n\n            <p>Yours Sincerely,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>\n            ', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(9, 'ja', '<h3 style=\"text-align: center;\">入会の手紙</h3>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n\n\n            <p>件名: {designation} の役職への任命</p>\n\n\n\n            <p>{employee_name} 様</p>\n\n\n            <p>{app_name} の {designation} の地位を以下の条件で「会社」として提供できることをうれしく思います。</p>\n\n            <p>条件：</p>\n\n\n            <p>1. 雇用開始</p>\n\n            <p>あなたの雇用は {start_date} から有効になります</p>\n\n\n            <p>2. 役職</p>\n\n            <p>あなたの役職は{designation}になります。</p>\n\n\n            <p>3. 給与</p>\n\n            <p>あなたの給与およびその他の福利厚生は、本明細書のスケジュール 1 に記載されているとおりです。</p>\n\n\n            <p>4. 掲示場所</p>\n\n            <p>{branch} に掲載されます。ただし、会社が所有する事業所で働く必要がある場合があります。</p>\n\n            <p>後で取得する場合があります。</p>\n\n\n\n            <p>5. 労働時間</p>\n\n            <p>通常の営業日は月曜日から金曜日です。あなたは、そのために必要な時間働く必要があります。</p>\n\n            <p>会社に対するあなたの義務の適切な遂行。通常の勤務時間は {start_time} から {end_time} までで、あなたは</p>\n\n            <p>毎週 {total_hours} 時間以上の勤務が期待される</p>\n\n            <p>責任。</p>\n\n\n\n            <p>6.休暇・休日</p>\n\n            <p>6.1 12 日間の臨時休暇を取得する権利があります。</p>\n\n            <p>6.2 12 日間の有給病気休暇を取る権利があります。</p>\n\n            <p>6.3 当社は、毎年の初めに宣言された休日のリストを通知するものとします。</p>\n\n\n\n            <p>7. 職務内容</p>\n\n            <p>あなたは、自分のポストに固有のすべての義務と、会社としての追加の義務を最大限に遂行します。</p>\n\n            <p>時々あなたに演奏を依頼するかもしれません。あなたの特定の義務は、本明細書のスケジュール II に記載されています。</p>\n\n\n\n            <p>8. 会社財産</p>\n\n            <p>あなたは、会社の所有物を常に良好な状態に維持するものとします。</p>\n\n            <p>あなたの雇用を放棄し、あなたの料金を放棄する前に、そのようなすべての財産を会社に返還するものとします。</p>\n\n            <p>同じのは、会社によってあなたから回収されます。</p>\n\n\n\n            <p>9. 貸出・贈答品の受け取り</p>\n\n            <p>あなたは、あなた自身から、または他の方法であなた自身の場所から個人的な利益を得るための金銭、贈り物、報酬、または補償を借りたり、受け取ったりしません。</p>\n\n            <p>あなたが公式の取引をしている可能性のある人物/クライアントに対する金銭的義務の下で。</p>\n            <p>10. 終了</p>\n\n            <p>10.1 少なくとも [通知] か月前に通知することにより、理由のいかんを問わず、会社はあなたの任命を終了することができます。</p>\n\n            <p>書面による通知またはその代わりの給与。この条項の目的上、給与とは基本給を意味するものとします。</p>\n\n            <p>10.2 あなたは、少なくとも [従業員通知] を提出することにより、理由のいかんを問わず、会社での雇用を終了することができます。</p>\n\n            <p>保留中の休暇の調整後に残された、保存されていない期間の数か月前の通知または給与は、日付のとおりです。</p>\n\n            <p>10.3 当社は、通知期間や解雇補償金なしに、あなたの雇用を即座に終了させる権利を留保します。</p>\n\n            <p>あなたが不正行為または過失で有罪であると信じる合理的な根拠がある場合、または基本的な違反を犯した場合</p>\n\n            <p>契約、または当社に損害を与えた。</p>\n\n            <p>10. 4 何らかの理由で雇用が終了した場合、あなたは会社にすべての財産を返還するものとします。ドキュメント、および</p>\n\n            <p>サンプル、文献、契約書、記録、リスト、図面、青写真を含む、原本とコピーの両方の紙、</p>\n\n            <p>手紙、メモ、データなど。あなたが所有する、またはあなたの管理下にある機密情報。</p>\n\n            <p>雇用またはクライアントの業務に。</p>\n            <p>11. 機密情報</p>\n\n            <p>11. 1 当社での雇用期間中、あなたは自分の全時間、注意、およびスキルを、自分の能力の限りを尽くして捧げます。</p>\n\n            <p>そのビジネス。あなたは、直接的または間接的に、関与したり、関連付けたり、接続したり、関係したり、雇用したり、または</p>\n\n            <p>会社の事前の許可なしに、時間や学習コースを追求すること。他のビジネスに従事すること、または</p>\n\n            <p>の事前の許可なしに、活動またはその他の投稿またはアルバイトをしたり、何らかの研究コースを追求したりすること。</p>\n\n            <p>会社。</p>\n\n            <p>11.2 常に最高度の機密性を維持し、記録、文書、およびその他の情報を機密として保持する必要があります。</p>\n\n            <p>お客様が知っている、または何らかの方法でお客様に内密にされている可能性がある、当社の事業に関連する機密情報</p>\n\n            <p>また、あなたは、会社の利益のために正当に承認された方法でのみ、そのような記録、文書、および情報を使用するものとします。為に</p>\n\n            <p>この条項の目的 「機密情報」とは、会社の事業および顧客の事業に関する情報を意味します。</p>\n\n            <p>これは一般には公開されておらず、雇用の過程で学習する可能性があります。これも、</p>\n\n            <p>組織、その顧客リスト、雇用方針、人事、および情報に関連する情報に限定されません</p>\n\n            <p>当社の製品、アイデアを含むプロセス、コンセプト、予測、技術、マニュアル、図面、デザイン、</p>\n\n            <p>仕様、およびそのような機密情報を含むすべての書類、履歴書、記録、およびその他の文書。</p>\n\n            <p>11.3 いかなる時も、許可なくオフィスから機密情報を削除しないでください。</p>\n\n            <p>11.4 保護し、開示しないというあなたの義務</p>\n\n            <p>e 機密情報は、本契約および/または当社との雇用の満了または終了後も存続します。</p>\n\n            <p>11.5 この条項の条件に違反した場合、上記の条項に基づく略式解雇の対象となります。</p>\n\n            <p>会社が法律であなたに対して持つことができるその他の救済。</p>\n            <p>12. 通知</p>\n\n            <p>通知は、登録された事務所の住所で会社に提出することができます。通知は、当社からお客様に提供される場合があります。</p>\n\n            <p>公式記録であなたがほのめかした住所。</p>\n\n\n\n            <p>13. 会社方針の適用性</p>\n\n            <p>会社は、休暇の資格、出産などの事項に関して、随時方針を宣言する権利を有するものとします。</p>\n\n            <p>休暇、従業員の福利厚生、勤務時間、異動ポリシーなどであり、独自の裁量により随時変更される場合があります。</p>\n\n            <p>当社のそのようなポリシー決定はすべて、あなたを拘束し、その範囲で本契約を無効にするものとします。</p>\n\n\n\n            <p>14. 準拠法・裁判管轄</p>\n\n            <p>当社でのあなたの雇用は、国の法律の対象となります。すべての紛争は、高等裁判所の管轄に服するものとします</p>\n\n            <p>グジャラートのみ。</p>\n\n\n\n            <p>15. オファーの受諾</p>\n\n            <p>副本に署名して返送することにより、この雇用契約に同意したことを確認してください。</p>\n\n\n\n            <p>私たちはあなたを歓迎し、あなたの受け入れを受け取り、あなたと一緒に働くことを楽しみにしています.</p>\n\n\n\n            <p>敬具、</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(10, 'nl', '<h3 style=\"text-align: center;\">Deelnemende brief</h3>\n\n            <p>{date}</p>\n\n            <p>{employee}</p>\n\n            <p>{address}</p>\n\n            <p>Onderwerp: Benoeming voor de functie van {designation}</p>\n\n            <p>Beste {employee_name},</p>\n\n            <p>We zijn verheugd u de positie van {designation} bij {app_name} het Bedrijf aan te bieden onder de volgende voorwaarden en</p>\n\n            <p>conditie:</p>\n\n\n            <p>1. Indiensttreding</p>\n            <p>Uw dienstverband gaat in op {start_date}</p>\n\n\n            <p>2. Functietitel</p>\n\n            <p>Uw functietitel wordt {designation}.</p>\n\n            <p>3. Salaris</p>\n\n            <p>Uw salaris en andere voordelen zijn zoals uiteengezet in Schema 1 hierbij.</p>\n\n            <p>4. Plaats van detachering</p>\n\n            <p>Je wordt geplaatst op {branch}. Het kan echter zijn dat u moet werken op een bedrijfslocatie die het Bedrijf heeft, of</p>\n\n            <p>later kan verwerven.</p>\n\n\n\n            <p>5. Werkuren</p>\n\n            <p>De normale werkdagen zijn van maandag tot en met vrijdag. Je zal de uren moeten werken die nodig zijn voor de</p>\n\n            <p>correcte uitvoering van uw taken jegens het bedrijf. De normale werkuren zijn van {start_time} tot {end_time} en jij bent</p>\n\n            <p>naar verwachting niet minder dan {total_hours} uur per week werken, en indien nodig voor extra uren, afhankelijk van uw</p>\n\n            <p>verantwoordelijkheden.</p>\n\n\n\n            <p>6. Verlof/Vakantie</p>\n\n            <p>6.1 Je hebt recht op tijdelijk verlof van 12 dagen.</p>\n\n            <p>6.2 U heeft recht op 12 werkdagen betaald ziekteverlof.</p>\n\n            <p>6.3 De Maatschappij stelt aan het begin van elk jaar een lijst van verklaarde feestdagen op.</p>\n\n\n\n            <p>7. Aard van de taken</p>\n\n            <p>Je voert alle taken die inherent zijn aan je functie en bijkomende taken zoals het bedrijf naar beste vermogen uit;</p>\n\n            <p>kan van tijd tot tijd een beroep op u doen om op te treden. Uw specifieke taken zijn uiteengezet in Bijlage II hierbij.</p>\n\n\n\n            <p>8. Bedrijfseigendommen</p>\n\n            <p>U onderhoudt bedrijfseigendommen, die u in de loop van</p>\n\n            <p>uw dienstverband, en zal al deze eigendommen aan het Bedrijf teruggeven voordat afstand wordt gedaan van uw kosten, bij gebreke waarvan de kosten</p>\n\n            <p>hiervan zal door het Bedrijf van u worden verhaald.</p>\n\n\n\n            <p>9. Geschenken lenen/aannemen</p>\n\n            <p>U zult geen geld, geschenken, beloningen of vergoedingen voor uw persoonlijk gewin lenen of accepteren van uzelf of uzelf op een andere manier plaatsen</p>\n\n            <p>onder geldelijke verplichting jegens een persoon/klant met wie u mogelijk offici&euml;le betrekkingen heeft.</p>\n            <p>10. Be&euml;indiging</p>\n\n            <p>10.1 Uw aanstelling kan door het Bedrijf zonder opgaaf van reden worden be&euml;indigd door u minimaal [Opzegging] maanden van tevoren</p>\n\n            <p>schriftelijke opzegging of daarvoor in de plaats komend salaris. In dit artikel wordt onder salaris verstaan ​​het basissalaris.</p>\n\n            <p>10.2 U kunt uw dienstverband bij het Bedrijf be&euml;indigen, zonder enige reden, door niet minder dan [Mededeling van de werknemer]</p>\n\n            <p>maanden opzegtermijn of salaris voor de niet gespaarde periode, overgebleven na aanpassing van hangende verlofdagen, zoals op datum.</p>\n\n            <p>10.3 Het bedrijf behoudt zich het recht voor om uw dienstverband op staande voet te be&euml;indigen zonder enige opzegtermijn of be&euml;indigingsvergoeding</p>\n\n            <p>als het redelijke grond heeft om aan te nemen dat u zich schuldig heeft gemaakt aan wangedrag of nalatigheid, of een fundamentele schending van</p>\n\n            <p>contract, of enig verlies voor het Bedrijf veroorzaakt.</p>\n\n            <p>10. 4 Bij be&euml;indiging van uw dienstverband om welke reden dan ook, geeft u alle eigendommen terug aan het Bedrijf; documenten, en</p>\n\n            <p>papier, zowel origineel als kopie&euml;n daarvan, inclusief eventuele monsters, literatuur, contracten, bescheiden, lijsten, tekeningen, blauwdrukken,</p>\n\n            <p>brieven, notities, gegevens en dergelijke; en Vertrouwelijke informatie, in uw bezit of onder uw controle met betrekking tot uw</p>\n\n            <p>werkgelegenheid of de zakelijke aangelegenheden van klanten.</p>\n            <p>11. Vertrouwelijke informatie</p>\n\n            <p>11. 1 Tijdens uw dienstverband bij het Bedrijf besteedt u al uw tijd, aandacht en vaardigheden naar uw beste vermogen aan:</p>\n\n            <p>zijn zaken. U mag zich niet, direct of indirect, inlaten met of verbonden zijn met, betrokken zijn bij, betrokken zijn bij, in dienst zijn van of</p>\n\n            <p>tijd doorbrengen of een studie volgen, zonder voorafgaande toestemming van het bedrijf.bezig met een ander bedrijf of</p>\n\n            <p>werkzaamheden of enige andere functie of werk in deeltijd of het volgen van welke opleiding dan ook, zonder voorafgaande toestemming van de</p>\n\n            <p>Bedrijf.</p>\n\n            <p>11.2 U moet altijd de hoogste graad van vertrouwelijkheid handhaven en de records, documenten en andere</p>\n\n            <p>Vertrouwelijke informatie met betrekking tot het bedrijf van het bedrijf die u op enigerlei wijze bekend is of in vertrouwen is genomen</p>\n\n            <p>en u zult dergelijke records, documenten en informatie alleen gebruiken op een naar behoren gemachtigde manier in het belang van het bedrijf. Voor</p>\n\n            <p>de doeleinden van deze clausule Vertrouwelijke informatiebetekent informatie over het bedrijf van het bedrijf en dat van zijn klanten</p>\n\n            <p>die niet beschikbaar is voor het grote publiek en die u tijdens uw dienstverband kunt leren. Dit bevat,</p>\n\n            <p>maar is niet beperkt tot informatie met betrekking tot de organisatie, haar klantenlijsten, werkgelegenheidsbeleid, personeel en informatie</p>\n\n            <p>over de producten, processen van het bedrijf, inclusief idee&euml;n, concepten, projecties, technologie, handleidingen, tekeningen, ontwerpen,</p>\n\n            <p>specificaties, en alle papieren, cvs, dossiers en andere documenten die dergelijke vertrouwelijke informatie bevatten.</p>\n\n            <p>11.3 U verwijdert nooit vertrouwelijke informatie van het kantoor zonder toestemming.</p>\n\n            <p>11.4 Uw plicht om te beschermen en niet openbaar te maken</p>\n\n            <p>e Vertrouwelijke informatie blijft van kracht na het verstrijken of be&euml;indigen van deze Overeenkomst en/of uw dienstverband bij het Bedrijf.</p>\n\n            <p>11.5 Schending van de voorwaarden van deze clausule maakt u aansprakelijk voor ontslag op staande voet op grond van de bovenstaande clausule, naast eventuele:</p>\n\n            <p>ander rechtsmiddel dat het Bedrijf volgens de wet tegen u heeft.</p>\n            <p>12. Kennisgevingen</p>\n\n            <p>Kennisgevingen kunnen door u aan het Bedrijf worden gedaan op het adres van de maatschappelijke zetel. Kennisgevingen kunnen door het bedrijf aan u worden gedaan op:</p>\n\n            <p>het door u opgegeven adres in de offici&euml;le administratie.</p>\n\n\n\n            <p>13. Toepasselijkheid van het bedrijfsbeleid</p>\n\n            <p>Het bedrijf heeft het recht om van tijd tot tijd beleidsverklaringen af ​​te leggen met betrekking tot zaken als verlofrecht, moederschap</p>\n\n            <p>verlof, werknemersvoordelen, werkuren, transferbeleid, enz., en kan deze van tijd tot tijd naar eigen goeddunken wijzigen.</p>\n\n            <p>Al dergelijke beleidsbeslissingen van het Bedrijf zijn bindend voor u en hebben voorrang op deze Overeenkomst in die mate.</p>\n\n\n\n            <p>14. Toepasselijk recht/jurisdictie</p>\n\n            <p>Uw dienstverband bij het bedrijf is onderworpen aan de landelijke wetgeving. Alle geschillen zijn onderworpen aan de jurisdictie van de High Court</p>\n\n            <p>Alleen Gujarat.</p>\n\n\n\n            <p>15. Aanvaarding van ons aanbod</p>\n\n            <p>Bevestig uw aanvaarding van deze arbeidsovereenkomst door het duplicaat te ondertekenen en terug te sturen.</p>\n\n\n\n            <p>Wij heten u van harte welkom en kijken ernaar uit uw acceptatie te ontvangen en met u samen te werken.</p>\n\n\n\n            <p>Hoogachtend,</p>\n\n            <p>{app_name}</p>\n\n            <p>{date}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(11, 'pl', '<h3 style=\"text-align: center;\">Dołączanie listu</h3>\n\n            <p>{date }</p>\n\n            <p>{employee_name }</p>\n\n            <p>{address }</p>\n\n\n            <p>Dotyczy: mianowania na stanowisko {designation}</p>\n\n            <p>Szanowny {employee_name },</p>\n\n            <p>Mamy przyjemność zaoferować Państwu, stanowisko {designation} z {app_name } \"Sp&oacute;łka\" na poniższych warunkach i</p>\n            <p>warunki:</p>\n\n            <p>1. Rozpoczęcie pracy</p>\n\n            <p>Twoje zatrudnienie będzie skuteczne, jak na {start_date }</p>\n\n            <p>2. Tytuł zadania</p>\n            <p>Tw&oacute;j tytuł pracy to {designation}.</p>\n\n            <p>3. Salary</p>\n\n            <p>Twoje wynagrodzenie i inne świadczenia będą określone w Zestawieniu 1, do niniejszego rozporządzenia.</p>\n\n\n            <p>4. Miejsce delegowania</p>\n            <p>Użytkownik zostanie opublikowany w {branch }. Użytkownik może jednak być zobowiązany do pracy w dowolnym miejscu prowadzenia działalności, kt&oacute;re Sp&oacute;łka posiada, lub może p&oacute;źniej nabyć.</p>\n\n            <p>5. Godziny pracy</p>\n            <p>Normalne dni robocze są od poniedziałku do piątku. Będziesz zobowiązany do pracy na takie godziny, jakie są niezbędne do prawidłowego wywiązania się ze swoich obowiązk&oacute;w wobec Sp&oacute;łki. Normalne godziny pracy to {start_time } do {end_time }, a użytkownik oczekuje, że będzie pracować nie mniej niż {total_hours } godzin tygodniowo, a jeśli to konieczne, przez dodatkowe godziny w zależności od Twojego</p>\n            <p>odpowiedzialności.</p>\n\n            <p>6. Urlop/Wakacje</p>\n\n            <p>6.1 Przysługuje prawo do urlopu dorywczego w ciągu 12 dni.</p>\n\n            <p>6.2 Użytkownik ma prawo do 12 dni roboczych od wypłatnego zwolnienia chorobowego.</p>\n\n            <p>6.3 Sp&oacute;łka powiadamia na początku każdego roku wykaz ogłoszonych świąt.&nbsp;</p>\n\n\n\n            <p>7. Rodzaj obowiązk&oacute;w</p>\n\n            <p>Będziesz wykonywać na najlepsze ze swojej zdolności wszystkie obowiązki, jak są one nieodłączne w swoim poście i takie dodatkowe obowiązki, jak firma może zadzwonić do wykonania, od czasu do czasu. Państwa szczeg&oacute;lne obowiązki są określone w załączniku II do niniejszego rozporządzenia.</p>\n\n\n\n            <p>8. Właściwość przedsiębiorstwa</p>\n\n            <p>Zawsze będziesz utrzymywać w dobrej kondycji Firmy, kt&oacute;ra może być powierzona do użytku służbowego w trakcie trwania</p>\n\n            <p>Twoje zatrudnienie, i zwr&oacute;ci wszystkie takie nieruchomości do Sp&oacute;łki przed zrzeczeniem się opłaty, w przeciwnym razie koszty te same będą odzyskane od Ciebie przez Sp&oacute;łkę.</p>\n\n            <p>9. Wypożyczanie/akceptowanie prezent&oacute;w</p>\n\n            <p>Nie będziesz pożyczał ani nie akceptować żadnych pieniędzy, dar&oacute;w, nagrody lub odszkodowania za swoje osobiste zyski z lub w inny spos&oacute;b złożyć się w ramach zobowiązania pieniężnego do jakiejkolwiek osoby/klienta, z kt&oacute;rym może być posiadanie oficjalne relacje.</p>\n            <p>10. Zakończenie</p>\n\n            <p>10.1 Powołanie może zostać wypowiedziane przez Sp&oacute;łkę, bez względu na przyczynę, poprzez podanie nie mniej niż [ Zawiadomienie] miesięcy uprzedniego wypowiedzenia na piśmie lub wynagrodzenia w miejsce jego wystąpienia. Dla cel&oacute;w niniejszej klauzuli, wynagrodzenie oznacza wynagrodzenie podstawowe.</p>\n\n            <p>10.2 Użytkownik może rozwiązać umowę o pracę ze Sp&oacute;łką, bez jakiejkolwiek przyczyny, podając nie mniej niż [ ogłoszenie o pracowniku] miesiące przed powiadomieniem lub wynagrodzeniem za niezaoszczędzony okres, pozostawiony po skorygowaniu oczekujących liści, jak na dzień.</p>\n\n            <p>10.3 Sp&oacute;łka zastrzega sobie prawo do wypowiedzenia umowy o pracę bez okresu wypowiedzenia lub wypłaty z tytułu rozwiązania umowy, jeżeli ma on uzasadnione podstawy, aby sądzić, że jesteś winny wykroczenia lub niedbalstwa, lub popełnił jakiekolwiek istotne naruszenie umowy lub spowodował jakiekolwiek straty w Sp&oacute;łce.&nbsp;</p>\n\n            <p>10. 4 W sprawie rozwiązania stosunku pracy z jakiegokolwiek powodu, powr&oacute;cisz do Sp&oacute;łki wszystkie nieruchomości; dokumenty, i&nbsp;</p>\n\n            <p>papieru, zar&oacute;wno oryginału, jak i jego kopii, w tym wszelkich pr&oacute;bek, literatury, um&oacute;w, zapis&oacute;w, wykaz&oacute;w, rysunk&oacute;w, konspekt&oacute;w,</p>\n\n            <p>listy, notatki, dane i podobne; informacje poufne, znajdujące się w posiadaniu lub pod Twoją kontrolą związane z zatrudnieniem lub sprawami biznesowymi klient&oacute;w.&nbsp; &nbsp;</p>\n\n\n\n            <p>11. Informacje poufne</p>\n\n            <p>11. 1 Podczas swojego zatrudnienia z Firmą poświęcisz cały czas, uwagę i umiejętności na najlepszą z Twoich możliwości</p>\n\n            <p>swojej działalności gospodarczej. Użytkownik nie może, bezpośrednio lub pośrednio, prowadzić lub wiązać się z, być związany z, dotyka, zatrudniony lub czas lub prowadzić jakikolwiek kierunek studi&oacute;w, bez uprzedniej zgody Company.zaangażował się w innej działalności gospodarczej lub działalności lub jakikolwiek inny post lub pracy w niepełnym wymiarze czasu lub prowadzić jakikolwiek kierunek studi&oacute;w, bez uprzedniej zgody</p>\n\n            <p>Firma.</p>\n\n            <p>11.2 Zawsze musisz zachować najwyższy stopień poufności i zachować jako poufny akt, dokumenty, i inne&nbsp;</p>\n\n            <p>Informacje poufne dotyczące działalności Sp&oacute;łki, kt&oacute;re mogą być znane Państwu lub w dowolny spos&oacute;b zwierzyny, a Użytkownik będzie posługiwać się takimi zapisami, dokumentami i informacjami tylko w spos&oacute;b należycie autoryzowany w interesie Sp&oacute;łki. Do cel&oacute;w niniejszej klauzuli \"Informacje poufne\" oznaczają informacje o działalności Sp&oacute;łki oraz o jej klientach, kt&oacute;re nie są dostępne dla og&oacute;łu społeczeństwa i kt&oacute;re mogą być przez Państwa w trakcie zatrudnienia dowiedzione przez Państwa. Obejmuje to,</p>\n\n            <p>ale nie ogranicza się do informacji związanych z organizacją, jej listami klient&oacute;w, politykami zatrudnienia, personelem oraz informacjami o produktach firmy, procesach, w tym pomysłach, koncepcjach, projekcjach, technikach, podręcznikach, rysunkach, projektach,&nbsp;</p>\n\n            <p>specyfikacje, a także wszystkie dokumenty, życiorysy, zapisy i inne dokumenty zawierające takie informacje poufne.</p>\n\n            <p>11.3 W żadnym momencie nie usunie Pan żadnych Informacji Poufnych z urzędu bez zezwolenia.</p>\n\n            <p>11.4 Tw&oacute;j obowiązek ochrony a nie disclos</p>\n\n            <p>Informacje poufne przetrwają wygaśnięcie lub rozwiązanie niniejszej Umowy i/lub Twoje zatrudnienie w Sp&oacute;łce.</p>\n\n            <p>11.5 Naruszenie warunk&oacute;w niniejszej klauzuli spowoduje, że Użytkownik będzie zobowiązany do skr&oacute;conej umowy w ramach klauzuli powyżej, opr&oacute;cz wszelkich innych środk&oacute;w zaradcze, jakie Sp&oacute;łka może mieć przeciwko Państwu w prawie.</p>\n\n\n\n            <p>12. Uwagi</p>\n\n            <p>Ogłoszenia mogą być podane przez Państwa do Sp&oacute;łki pod adresem jej siedziby. Ogłoszenia mogą być podane przez Sp&oacute;łkę do Państwa na adres intymniony przez Państwa w ewidencji urzędowej.</p>\n\n\n\n            <p>13. Stosowność polityki firmy</p>\n\n            <p>Sp&oacute;łka jest uprawniona do składania deklaracji politycznych od czasu do czasu dotyczących spraw takich jak prawo do urlopu macierzyńskiego, macierzyństwo</p>\n\n            <p>urlop&oacute;w, świadczeń pracowniczych, godzin pracy, polityki transferowej itp., a także mogą zmieniać to samo od czasu do czasu według własnego uznania.</p>\n\n            <p>Wszystkie takie decyzje polityczne Sp&oacute;łki są wiążące dla Państwa i przesłaniają niniejszą Umowę w tym zakresie.</p>\n\n\n\n            <p>14. Prawo właściwe/jurysdykcja</p>\n\n            <p>Twoje zatrudnienie ze Sp&oacute;łką podlega prawu krajowi. Wszelkie spory podlegają właściwości Sądu Najwyższego</p>\n\n            <p>Tylko Gujarat.</p>\n\n\n\n            <p>15. Akceptacja naszej oferty</p>\n\n            <p>Prosimy o potwierdzenie przyjęcia niniejszej Umowy o pracę poprzez podpisanie i zwr&oacute;cenie duplikatu.</p>\n\n\n\n            <p>Zapraszamy Państwa i czekamy na Państwa przyjęcie i wsp&oacute;łpracę z Tobą.</p>\n\n\n\n            <p>Z Państwa Sincerely,</p>\n\n            <p>{app_name }</p>\n\n            <p>{date }</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49');
INSERT INTO `joining_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(12, 'pt', '<h3 style=\"text-align: center;\">Carta De Ades&atilde;o</h3>\n\n            <p>{data}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{address}</p>\n\n\n            <p>Assunto: Nomea&ccedil;&atilde;o para o cargo de {designation}</p>\n\n            <p>Querido {employee_name},</p>\n\n\n            <p>Temos o prazer de oferec&ecirc;-lo, a posi&ccedil;&atilde;o de {designation} com {app_name} a Empresa nos seguintes termos e</p>\n            <p>condi&ccedil;&otilde;es:</p>\n\n\n            <p>1. Comentamento do emprego</p>\n\n            <p>Seu emprego ser&aacute; efetivo, a partir de {start_date}</p>\n\n\n            <p>2. T&iacute;tulo do emprego</p>\n\n            <p>Seu cargo de trabalho ser&aacute; {designation}.</p>\n\n            <p>3. Sal&aacute;rio</p>\n\n            <p>Seu sal&aacute;rio e outros benef&iacute;cios ser&atilde;o conforme estabelecido no Planejamento 1, hereto.</p>\n\n            <p>4. Local de postagem</p>\n\n            <p>Voc&ecirc; ser&aacute; postado em {branch}. Voc&ecirc; pode, no entanto, ser obrigado a trabalhar em qualquer local de neg&oacute;cios que a Empresa tenha, ou possa posteriormente adquirir.</p>\n\n            <p>5. Horas de Trabalho</p>\n\n            <p>Os dias normais de trabalho s&atilde;o de segunda a sexta-feira. Voc&ecirc; ser&aacute; obrigado a trabalhar por tais horas, conforme necess&aacute;rio para a quita&ccedil;&atilde;o adequada de suas fun&ccedil;&otilde;es para a Companhia. As horas de trabalho normais s&atilde;o de {start_time} para {end_time} e voc&ecirc; deve trabalhar n&atilde;o menos de {total_horas} horas semanais, e se necess&aacute;rio para horas adicionais dependendo do seu</p>\n            <p>responsabilidades.</p>\n\n            <p>6. Leave / Holidays</p>\n\n            <p>6,1 Voc&ecirc; tem direito a licen&ccedil;a casual de 12 dias.</p>\n\n            <p>6,2 Voc&ecirc; tem direito a 12 dias &uacute;teis de licen&ccedil;a remunerada remunerada.</p>\n\n            <p>6,3 Companhia notificar&aacute; uma lista de feriados declarados no in&iacute;cio de cada ano.&nbsp;</p>\n\n\n\n            <p>7. Natureza dos deveres</p>\n\n            <p>Voc&ecirc; ir&aacute; executar ao melhor da sua habilidade todos os deveres como s&atilde;o inerentes ao seu cargo e tais deveres adicionais como a empresa pode ligar sobre voc&ecirc; para executar, de tempos em tempos. Os seus deveres espec&iacute;ficos s&atilde;o estabelecidos no Hereto do Planejamento II.</p>\n\n\n\n            <p>8. Propriedade da empresa</p>\n\n            <p>Voc&ecirc; sempre manter&aacute; em bom estado propriedade Empresa, que poder&aacute; ser confiada a voc&ecirc; para uso oficial durante o curso de</p>\n\n            <p>o seu emprego, e devolver&aacute; toda essa propriedade &agrave; Companhia antes de abdicar de sua acusa&ccedil;&atilde;o, falhando qual o custo do mesmo ser&aacute; recuperado de voc&ecirc; pela Companhia.</p>\n\n\n\n            <p>9. Borremir / aceitar presentes</p>\n\n            <p>Voc&ecirc; n&atilde;o vai pedir empr&eacute;stimo ou aceitar qualquer dinheiro, presente, recompensa ou indeniza&ccedil;&atilde;o por seus ganhos pessoais de ou de outra forma colocar-se sob obriga&ccedil;&atilde;o pecuni&aacute;ria a qualquer pessoa / cliente com quem voc&ecirc; pode estar tendo rela&ccedil;&otilde;es oficiais.</p>\n\n\n\n            <p>10. Termina&ccedil;&atilde;o</p>\n\n            <p>10,1 Sua nomea&ccedil;&atilde;o pode ser rescindida pela Companhia, sem qualquer raz&atilde;o, dando-lhe n&atilde;o menos do que [aviso] meses de aviso pr&eacute;vio por escrito ou de sal&aacute;rio em lieu deste. Para efeito da presente cl&aacute;usula, o sal&aacute;rio deve significar sal&aacute;rio base.</p>\n\n            <p>10,2 Voc&ecirc; pode rescindir seu emprego com a Companhia, sem qualquer causa, ao dar nada menos que [Aviso de contrata&ccedil;&atilde;o] meses de aviso pr&eacute;vio ou sal&aacute;rio para o per&iacute;odo n&atilde;o salvo, deixado ap&oacute;s ajuste de folhas pendentes, conforme data de encontro.</p>\n\n            <p>10,3 Empresa reserva-se o direito de rescindir o seu emprego sumariamente sem qualquer prazo de aviso ou de rescis&atilde;o se tiver terreno razo&aacute;vel para acreditar que voc&ecirc; &eacute; culpado de m&aacute; conduta ou neglig&ecirc;ncia, ou tenha cometido qualquer viola&ccedil;&atilde;o fundamental de contrato, ou tenha causado qualquer perda para a Empresa.&nbsp;</p>\n\n            <p>10. 4 Sobre a rescis&atilde;o do seu emprego por qualquer motivo, voc&ecirc; retornar&aacute; para a Empresa todos os bens; documentos e&nbsp;</p>\n\n            <p>papel, tanto originais como c&oacute;pias dos mesmos, incluindo quaisquer amostras, literatura, contratos, registros, listas, desenhos, plantas,</p>\n\n            <p>cartas, notas, dados e semelhantes; e Informa&ccedil;&otilde;es Confidenciais, em sua posse ou sob seu controle relacionado ao seu emprego ou aos neg&oacute;cios de neg&oacute;cios dos clientes.&nbsp; &nbsp;</p>\n\n\n\n            <p>11. Informa&ccedil;&otilde;es Confidenciais</p>\n\n            <p>11. 1 Durante o seu emprego com a Companhia voc&ecirc; ir&aacute; dedicar todo o seu tempo, aten&ccedil;&atilde;o e habilidade para o melhor de sua capacidade de</p>\n\n            <p>o seu neg&oacute;cio. Voc&ecirc; n&atilde;o deve, direta ou indiretamente, se envolver ou associar-se com, estar conectado com, preocupado, empregado, ou tempo ou prosseguir qualquer curso de estudo, sem a permiss&atilde;o pr&eacute;via do Company.engajado em qualquer outro neg&oacute;cio ou atividades ou qualquer outro cargo ou trabalho parcial ou prosseguir qualquer curso de estudo, sem a permiss&atilde;o pr&eacute;via do</p>\n\n            <p>Empresa.</p>\n\n            <p>11,2 &Eacute; preciso manter sempre o mais alto grau de confidencialidade e manter como confidenciais os registros, documentos e outros&nbsp;</p>\n\n            <p>Informa&ccedil;&otilde;es confidenciais relativas ao neg&oacute;cio da Companhia que possam ser conhecidas por voc&ecirc; ou confiadas em voc&ecirc; por qualquer meio e utilizar&atilde;o tais registros, documentos e informa&ccedil;&otilde;es apenas de forma devidamente autorizada no interesse da Companhia. Para efeitos da presente cl&aacute;usula \"Informa&ccedil;&otilde;es confidenciais\" significa informa&ccedil;&atilde;o sobre os neg&oacute;cios da Companhia e a dos seus clientes que n&atilde;o est&aacute; dispon&iacute;vel para o p&uacute;blico em geral e que poder&aacute; ser aprendida por voc&ecirc; no curso do seu emprego. Isso inclui,</p>\n\n            <p>mas n&atilde;o se limita a, informa&ccedil;&otilde;es relativas &agrave; organiza&ccedil;&atilde;o, suas listas de clientes, pol&iacute;ticas de emprego, pessoal, e informa&ccedil;&otilde;es sobre os produtos da Companhia, processos incluindo ideias, conceitos, proje&ccedil;&otilde;es, tecnologia, manuais, desenho, desenhos,&nbsp;</p>\n\n            <p>especifica&ccedil;&otilde;es, e todos os pap&eacute;is, curr&iacute;culos, registros e outros documentos que contenham tais Informa&ccedil;&otilde;es Confidenciais.</p>\n\n            <p>11,3 Em nenhum momento, voc&ecirc; remover&aacute; quaisquer Informa&ccedil;&otilde;es Confidenciais do escrit&oacute;rio sem permiss&atilde;o.</p>\n\n            <p>11,4 O seu dever de salvaguardar e n&atilde;o os desclos</p>\n\n            <p>Informa&ccedil;&otilde;es Confidenciais sobreviver&atilde;o &agrave; expira&ccedil;&atilde;o ou &agrave; rescis&atilde;o deste Contrato e / ou do seu emprego com a Companhia.</p>\n\n            <p>11,5 Viola&ccedil;&atilde;o das condi&ccedil;&otilde;es desta cl&aacute;usula ir&aacute; torn&aacute;-lo sujeito a demiss&atilde;o sum&aacute;ria sob a cl&aacute;usula acima, al&eacute;m de qualquer outro rem&eacute;dio que a Companhia possa ter contra voc&ecirc; em lei.</p>\n\n\n\n            <p>12. Notices</p>\n\n            <p>Os avisos podem ser conferidos por voc&ecirc; &agrave; Empresa em seu endere&ccedil;o de escrit&oacute;rio registrado. Os avisos podem ser conferidos pela Companhia a voc&ecirc; no endere&ccedil;o intimado por voc&ecirc; nos registros oficiais.</p>\n\n\n\n            <p>13. Aplicabilidade da Pol&iacute;tica da Empresa</p>\n\n            <p>A Companhia tem direito a fazer declara&ccedil;&otilde;es de pol&iacute;tica de tempos em tempos relativos a mat&eacute;rias como licen&ccedil;a de licen&ccedil;a, maternidade</p>\n\n            <p>sair, benef&iacute;cios dos empregados, horas de trabalho, pol&iacute;ticas de transfer&ecirc;ncia, etc., e pode alterar o mesmo de vez em quando a seu exclusivo crit&eacute;rio.</p>\n\n            <p>Todas essas decis&otilde;es de pol&iacute;tica da Companhia devem ser vinculativas para si e substituir&atilde;o este Acordo nessa medida.</p>\n\n\n\n            <p>14. Direito / Jurisdi&ccedil;&atilde;o</p>\n\n            <p>Seu emprego com a Companhia est&aacute; sujeito &agrave;s leis do Pa&iacute;s. Todas as disputas est&atilde;o sujeitas &agrave; jurisdi&ccedil;&atilde;o do Tribunal Superior</p>\n\n            <p>Gujarat apenas.</p>\n\n\n\n            <p>15. Aceita&ccedil;&atilde;o da nossa oferta</p>\n\n            <p>Por favor, confirme sua aceita&ccedil;&atilde;o deste Contrato de Emprego assinando e retornando a c&oacute;pia duplicada.</p>\n\n\n\n            <p>N&oacute;s acolhemos voc&ecirc; e estamos ansiosos para receber sua aceita&ccedil;&atilde;o e para trabalhar com voc&ecirc;.</p>\n\n\n\n            <p>Seu Sinceramente,</p>\n\n            <p>{app_name}</p>\n\n            <p>{data}</p>\n            ', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(13, 'ru', '<h3 style=\"text-align: center;\">Присоединение к письму</h3>\n\n            <p>{date}</p>\n\n            <p>{ employee_name }</p>\n            <p>{address}</p>\n\n            <p>Тема: Назначение на должность {designation}</p>\n\n            <p>Уважаемый { employee_name },</p>\n\n            <p>Мы рады предложить Вам, позицию {designation} с { app_name } Компания на следующих условиях и</p>\n\n            <p>условия:</p>\n\n\n            <p>1. Начало работы</p>\n\n            <p>Ваше трудоустройство будет эффективным, начиная с { start_date }</p>\n\n\n            <p>2. Название должности</p>\n            <p>Ваш заголовок задания будет {designation}.</p>\n\n            <p>3. Зарплата</p>\n            <p>Ваши оклады и другие пособия будут установлены в соответствии с расписанием, изложенным в приложении 1 к настоящему.</p>\n\n            <p>4. Место размещения</p>\n            <p>Вы будете работать в { branch }. Вы, однако, можете работать в любом месте, которое компания имеет или может впоследствии приобрести.</p>\n\n\n\n            <p>5. Часы работы</p>\n            <p>Обычные рабочие дни-с понедельника по пятницу. Вы должны будете работать в течение таких часов, как это необходимо для надлежащего выполнения Ваших обязанностей перед компанией. Обычные рабочие часы-от { start_time } до { end_time }, и вы, как ожидается, будут работать не менее { total_hours } часов каждую неделю, и при необходимости в течение дополнительных часов в зависимости от вашего</p>\n            <p>ответственности.</p>\n            <p>6. Отпуск/Праздники</p>\n\n            <p>6.1 Вы имеете право на случайный отпуск продолжительностью 12 дней.</p>\n\n            <p>6.2 Вы имеете право на 12 рабочих дней оплачиваемого отпуска по болезни.</p>\n\n            <p>6.3 Компания в начале каждого года уведомляет об объявленных праздниках.&nbsp;</p>\n\n\n\n            <p>7. Характер обязанностей</p>\n\n            <p>Вы будете выполнять все обязанности, присующие вам, и такие дополнительные обязанности, которые компания может призвать к вам, время от времени. Ваши конкретные обязанности изложены в приложении II к настоящему.</p>\n\n\n\n            <p>8. Свойство компании</p>\n\n            <p>Вы всегда будете поддерживать в хорошем состоянии имущество Компании, которое может быть доверено Вам для служебного пользования в течение</p>\n\n            <p>вашей занятости, и возвратит все это имущество Компании до отказа от вашего заряда, при отсутствии которого стоимость одного и того же имущества будет взыскана с Вас компанией.</p>\n\n\n\n            <p>9. Боровить/принять подарки</p>\n\n            <p>Вы не будете брать взаймы или принимать какие-либо деньги, подарки, вознаграждение или компенсацию за ваши личные доходы от или в ином месте под денежный долг любому лицу/клиенту, с которым у вас могут быть официальные сделки.</p>\n\n\n\n            <p>10. Прекращение</p>\n\n            <p>10.1 Ваше назначение может быть прекращено компанией без каких бы то ни было оснований, предоставляя Вам не менее [ Уведомление] месяцев, предшея уведомлению в письменной форме или окладе вместо них. Для целей этого положения заработная плата означает базовый оклад.</p>\n\n            <p>10.2 Вы можете прекратить свою трудовую деятельность с компанией без каких-либо причин, предоставляя не меньше, чем [ Employee Notice] months  предварительное уведомление или оклад за несохраненный период, оставатся после корректировки отложенных листьев, как на сегодняшний день.</p>\n\n            <p>10.3 Компания оставляет за собой право прекратить вашу работу в суммарном порядке без какого-либо уведомления о сроке или увольнении, если у нее есть достаточные основания полагать, что вы виновны в проступке или халатности, или совершили какое-либо существенное нарушение договора, или причинило убытки Компании.&nbsp;</p>\n\n            <p>10. 4 О прекращении вашей работы по какой бы то ни было причине вы вернетесь в Компании все имущество; документы, а&nbsp;</p>\n\n            <p>бумаги, как оригинальные, так и их копии, включая любые образцы, литературу, контракты, записи, списки, чертежи, чертежи,</p>\n\n            <p>письма, заметки, данные и тому подобное; и Конфиденциальная информация, в вашем распоряжении или под вашим контролем, связанным с вашей работой или деловыми делами клиентов.&nbsp; &nbsp;</p>\n\n\n\n            <p>11. Конфиденциальная информация</p>\n\n            <p>11. 1 Во время вашего трудоустройства с компанией Вы посвяте все свое время, внимание, умение максимально</p>\n\n            <p>Его бизнес. Вы не должны, прямо или косвенно, заниматься или ассоциировать себя с заинтересованными, занятым, занятым, или временем, или продолжать любой курс обучения, без предварительного разрешения Компани.заниматься каким-либо другим бизнесом или деятельностью или любой другой пост или работать неполный рабочий день или заниматься какой бы то ни было исследованием, без предварительного разрешения</p>\n\n            <p>Компания.</p>\n\n            <p>11.2 Вы всегда должны сохранять наивысшую степень конфиденциальности и хранить в качестве конфиденциальной записи, документы и другие&nbsp;</p>\n\n            <p>Конфиденциальная информация, касающаяся бизнеса Компании, которая может быть вам известна или конфиденциальна любым способом, и Вы будете использовать такие записи, документы и информацию только в установленном порядке в интересах Компании. Для целей настоящей статьи \"Конфиденциальная информация\" означает информацию о бизнесе Компании и о ее клиентах, которая недоступна для широкой общественности и которая может быть изучилась Вами в ходе вашей работы. Это включает в себя:</p>\n\n            <p>но не ограничивается информацией, касающейся организации, ее списков клиентов, политики в области занятости, персонала и информации о продуктах Компании, процессах, включая идеи, концепции, прогнозы, технологии, руководства, чертеж, чертеж,&nbsp;</p>\n\n            <p>спецификации, и все бумаги, резюме, записи и другие документы, содержащие такую Конфиденциальную Информацию.</p>\n\n            <p>11.3 В любое время вы не будете удалять конфиденциальную информацию из офиса без разрешения.</p>\n\n            <p>11.4 Ваш долг защищать и не отсосать</p>\n\n            <p>e Конфиденциальная информация выдержит срок действия или прекращения действия настоящего Соглашения и/или вашей работы с компанией.</p>\n\n            <p>11.5 Нарушение условий, изложенных в настоящем положении, приведет к тому, что в дополнение к любым другим средствам правовой защиты, которые компания может иметь против вас, в соответствии с вышеприведенным положением, вы можете получить краткое увольнение в соответствии с этим положением.</p>\n\n\n\n            <p>12. Замечания</p>\n\n            <p>Уведомления могут быть даны Вами Компании по адресу ее зарегистрированного офиса. Извещения могут быть даны компанией Вам по адресу, с которым вы в официальных отчетах.</p>\n\n\n\n            <p>13. Применимость политики компании</p>\n\n            <p>Компания вправе время от времени делать политические заявления по таким вопросам, как право на отпуск, материнство</p>\n\n            <p>отпуска, пособия для работников, продолжительность рабочего дня, трансферная политика и т.д. и время от времени могут изменяться исключительно по своему усмотрению.</p>\n\n            <p>Все такие принципиальные решения Компании являются обязательными для Вас и переопределяют это Соглашение в такой степени.</p>\n\n\n\n            <p>14. Регулирующий Право/юрисдикция</p>\n\n            <p>Ваше трудоустройство с компанией подпадает под действие законов страны. Все споры подлежат юрисдикции Высокого суда</p>\n\n            <p>Только Гуджарат.</p>\n\n\n\n            <p>15. Принятие нашего предложения</p>\n\n            <p>Пожалуйста, подтвердите свое согласие с этим Договором о занятости, подписав и возвращая дубликат копии.</p>\n\n\n\n            <p>Мы приветствуем Вас и надеемся на то, что Вы принимаете свое согласие и работаете с Вами.</p>\n\n\n\n            <p>Искренне Ваш,</p>\n\n            <p>{ app_name }</p>\n\n            <p>{date}</p>\n            ', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `journal_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_items`
--

CREATE TABLE `journal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal` int(11) NOT NULL DEFAULT 0,
  `account` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `debit` double(15,2) NOT NULL DEFAULT 0.00,
  `credit` double(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'On Hold', 'primary', 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'New', 'info', 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Pending', 'warning', 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Loss', 'danger', 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Win', 'success', 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_settings`
--

CREATE TABLE `landing_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_settings`
--

INSERT INTO `landing_page_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'topbar_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(2, 'topbar_notification_msg', '70% Special Offer. Don’t Miss it. The offer ends in 72 hours.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(3, 'menubar_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(4, 'menubar_page', '[{\"menubar_page_name\": \"About Us\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Welcome to the Erpgo website. By accessing this website, you agree to comply with and be bound by the following terms and conditions of use. If you disagree with any part of these terms, please do not use our website. The content of the pages of this website is for your general information and use only. It is subject to change without notice. This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, personal information may be stored by us for use by third parties. Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law. Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements. This website contains material that is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions. Unauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense. From time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s\",\"page_slug\": \"about_us\",\"header\": \"on\",\"footer\": \"on\",\"login\": \"on\"},{\"menubar_page_name\": \"Terms and Conditions\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Welcome to the Erpgo website. By accessing this website, you agree to comply with and be bound by the following terms and conditions of use. If you disagree with any part of these terms, please do not use our website.\\r\\n\\r\\nThe content of the pages of this website is for your general information and use only. It is subject to change without notice.\\r\\n\\r\\nThis website uses cookies to monitor browsing preferences. If you do allow cookies to be used, personal information may be stored by us for use by third parties.\\r\\n\\r\\nNeither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.\\r\\n\\r\\nYour use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.\\r\\n\\r\\nThis website contains material that is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.\\r\\n\\r\\nUnauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense.\\r\\n\\r\\nFrom time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).\",\"page_slug\": \"terms_and_conditions\",\"header\": \"off\",\"footer\": \"on\",\"login\": \"on\"},{\"menubar_page_name\": \"Privacy Policy\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Introduction: An overview of the privacy policy, including the purpose and scope of the policy. Information Collection: Details about the types of information collected from users\\/customers, such as personal information (name, address, email), device information, usage data, and any other relevant data. Data Usage: An explanation of how the collected data will be used, including providing services, improving products, personalization, analytics, and any other legitimate business purposes. Data Sharing: Information about whether and how the company shares user data with third parties, such as partners, service providers, or affiliates, along with the purposes of such sharing. Data Security: Details about the measures taken to protect user data from unauthorized access, loss, or misuse, including encryption, secure protocols, access controls, and data breach notification procedures. User Choices: Information on the choices available to users regarding the collection, use, and sharing of their personal data, including opt-out mechanisms and account settings. Cookies and Tracking Technologies: Explanation of the use of cookies, web beacons, and similar technologies for tracking user activity and collecting information for analytics and advertising purposes. Third-Party Links: Clarification that the companys website or services may contain links to third-party websites or services and that the privacy policy does not extend to those external sites. Data Retention: Details about the retention period for user data and how long it will be stored by the company. Legal Basis and Compliance: Information about the legal basis for processing personal data, compliance with applicable data protection laws, and the rights of users under relevant privacy regulations (e.g., GDPR, CCPA). Updates to the Privacy Policy: Notification that the privacy policy may be updated from time to time, and how users will be informed of any material changes. Contact Information: How users can contact the company regarding privacy-related concerns or inquiries.\",\"page_slug\": \"privacy_policy\",\"header\": \"off\",\"footer\": \"on\",\"login\": \"on\"}]', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(5, 'site_logo', 'site_logo.png', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(6, 'site_description', 'We build modern web tools to help you jump-start your daily business work.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(7, 'home_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(8, 'home_offer_text', '70% Special Offer', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(9, 'home_title', 'Home', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(10, 'home_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(11, 'home_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(12, 'home_trusted_by', '1000+ Customer', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(13, 'home_live_demo_link', 'https://demo.rajodiya.com/erpgo/login', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(14, 'home_buy_now_link', 'https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(15, 'home_banner', 'home_banner.png', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(16, 'home_logo', 'home_logo.png,home_logo.png,home_logo.png,home_logo.png,home_logo.png,home_logo.png,home_logo.png', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(17, 'feature_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(18, 'feature_title', 'Features', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(19, 'feature_heading', 'All In One Place CRM System', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(20, 'feature_description', 'Use these awesome forms to login or create new account in your project for free. Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(21, 'feature_buy_now_link', 'https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(22, 'feature_of_features', '[{\"feature_logo\":\"1688108756-feature_logo.png\",\"feature_heading\":\"Feature\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"feature_logo\":\"1688099120-feature_logo.png\",\"feature_heading\":\"Support\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"feature_logo\":\"1688099197-feature_logo.png\",\"feature_heading\":\"Integration\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"}]', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(23, 'highlight_feature_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(24, 'highlight_feature_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(25, 'highlight_feature_image', 'highlight_feature_image.png', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(26, 'other_features', '[{\"other_features_image\":\"1688108824-other_features_image.png\",\"other_features_heading\":\"ERPGo All In One Business ERP With Project, Account, HRM, CRM\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435\"},{\"other_features_image\":\"1688108842-other_features_image.png\",\"other_features_heading\":\"ERPGo All In One Business ERP With Project, Account, HRM, CRM\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435\"},{\"other_features_image\":\"1688115908-other_features_image.png\",\"other_features_heading\":\"ERPGo All In One Business ERP With Project, Account, HRM, CRM\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435\"},{\"other_features_image\":\"1688108947-other_features_image.png\",\"other_features_heading\":\"ERPGo All In One Business ERP With Project, Account, HRM, CRM\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435\"}]', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(27, 'discover_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(28, 'discover_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(29, 'discover_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(30, 'discover_live_demo_link', 'https://demo.rajodiya.com/erpgo/login', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(31, 'discover_buy_now_link', 'https://codecanyon.net/item/erpgo-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263435', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(32, 'discover_of_features', '[{\"discover_logo\":\"1688099306-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099328-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099359-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099377-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099401-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099416-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099434-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099443-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"}]', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(33, 'screenshots_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(34, 'screenshots_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(35, 'screenshots_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(36, 'screenshots', '[{\"screenshots\":\"1688109087-screenshots.png\",\"screenshots_heading\":\"Balance Sheet\"},{\"screenshots\":\"1688109104-screenshots.png\",\"screenshots_heading\":\"Budget Plan\"},{\"screenshots\":\"1688100981-screenshots.png\",\"screenshots_heading\":\"CRM Deals\"},{\"screenshots\":\"1688109222-screenshots.png\",\"screenshots_heading\":\"Project\"},{\"screenshots\":\"1688108614-screenshots.png\",\"screenshots_heading\":\"Job Career\"},{\"screenshots\":\"1688108626-screenshots.png\",\"screenshots_heading\":\"POS\"}]', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(37, 'plan_status', 'on', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(38, 'plan_title', 'Plan', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(39, 'plan_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(40, 'plan_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(41, 'faq_status', 'on', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(42, 'faq_title', 'Faq', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(43, 'faq_heading', 'ERPGo All In One Business ERP With Project, Account, HRM, CRM', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(44, 'faq_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(45, 'faqs', '[{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"}]', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(46, 'testimonials_status', 'on', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(47, 'testimonials_heading', 'From our Clients', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(48, 'testimonials_description', 'Use these awesome forms to login or create new account in your project for free.', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(49, 'testimonials_long_description', 'WorkDo seCommerce package offers you a “sales-ready.”secure online store. The package puts all the key pieces together, from design to payment processing. This gives you a headstart in your eCommerce venture. Every store is built using a reliable PHP framework -laravel. Thisspeeds up the development process while increasing the store’s security and performance.Additionally, thanks to the accompanying mobile app, you and your team can manage the store on the go. What’s more, because the app works both for you and your customers, you can use it to reach a wider audience.And, unlike popular eCommerce platforms, it doesn’t bind you to any terms and conditions or recurring fees. You get to choose where you host it or which payment gateway you use. Lastly, you getcomplete control over the looks of the store. And if it lacks any functionalities that you need, just reach out, and let’s discuss customization possibilities', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(50, 'testimonials', '[{\"testimonials_user_avtar\":\"1688466247-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"5\"},{\"testimonials_user_avtar\":\"1688466264-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"5\"},{\"testimonials_user_avtar\":\"1688466271-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"5\"}]', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(51, 'footer_status', 'on', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(52, 'joinus_status', 'on', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(53, 'joinus_heading', 'Join Our Community', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(54, 'joinus_description', 'We build modern web tools to help you jump-start your daily business work.', '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `full_name`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'Arabic', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(2, 'zh', 'Chinese', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(3, 'da', 'Danish', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(4, 'de', 'German', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(5, 'en', 'English', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(6, 'es', 'Spanish', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(7, 'fr', 'French', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(8, 'he', 'Hebrew', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(9, 'it', 'Italian', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(10, 'ja', 'Japanese', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(11, 'nl', 'Dutch', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(12, 'pl', 'Polish', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(13, 'pt', 'Portuguese', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(14, 'ru', 'Russian', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(15, 'tr', 'Turkish', '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(16, 'pt-br', 'Portuguese (Brazil)', '2023-12-09 16:42:49', '2023-12-09 16:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) DEFAULT NULL,
  `products` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `labels` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_converted` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_activity_logs`
--

CREATE TABLE `lead_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(191) NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_calls`
--

CREATE TABLE `lead_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) NOT NULL,
  `call_type` varchar(30) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `call_result` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_discussions`
--

CREATE TABLE `lead_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_emails`
--

CREATE TABLE `lead_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_stages`
--

INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Sent', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Open', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Revised', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Declined', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(191) NOT NULL,
  `leave_reason` varchar(191) NOT NULL,
  `remark` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `date` varchar(191) NOT NULL,
  `Details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text NOT NULL,
  `module_type` varchar(191) NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext NOT NULL,
  `employee_id` longtext NOT NULL,
  `title` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_employees`
--

CREATE TABLE `meeting_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_22_192348_create_messages_table', 1),
(5, '2019_09_28_102009_create_settings_table', 1),
(6, '2019_09_30_050856_create_pipelines_table', 1),
(7, '2019_09_30_052036_create_sources_table', 1),
(8, '2019_09_30_061801_create_stages_table', 1),
(9, '2019_09_30_092218_create_labels_table', 1),
(10, '2019_10_03_052618_create_deals_table', 1),
(11, '2019_10_05_045358_create_user_deals_table', 1),
(12, '2019_10_05_045359_create_client_deals_table', 1),
(13, '2019_10_07_054657_create_deal_files_table', 1),
(14, '2019_10_07_091153_create_deal_tasks_table', 1),
(15, '2019_10_14_055151_create_deal_discussions_table', 1),
(16, '2019_10_16_211433_create_favorites_table', 1),
(17, '2019_10_18_223259_add_avatar_to_users', 1),
(18, '2019_10_20_211056_add_messenger_color_to_users', 1),
(19, '2019_10_22_000539_add_dark_mode_to_users', 1),
(20, '2019_10_24_060326_create_projectstages_table', 1),
(21, '2019_10_25_214038_add_active_status_to_users', 1),
(22, '2019_11_12_073012_create_bug_comments_table', 1),
(23, '2019_11_12_100007_create_bug_files_table', 1),
(24, '2019_11_13_051828_create_taxes_table', 1),
(25, '2019_11_13_055026_create_invoices_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2019_12_18_110230_create_bugs_table', 1),
(28, '2019_12_18_112007_create_bug_statuses_table', 1),
(29, '2019_12_26_101754_create_departments_table', 1),
(30, '2019_12_26_101814_create_designations_table', 1),
(31, '2019_12_26_105721_create_documents_table', 1),
(32, '2019_12_27_083751_create_branches_table', 1),
(33, '2019_12_27_090831_create_employees_table', 1),
(34, '2019_12_27_112922_create_employee_documents_table', 1),
(35, '2019_12_28_050508_create_awards_table', 1),
(36, '2019_12_28_050919_create_award_types_table', 1),
(37, '2019_12_31_060916_create_termination_types_table', 1),
(38, '2019_12_31_062259_create_terminations_table', 1),
(39, '2019_12_31_070521_create_resignations_table', 1),
(40, '2019_12_31_072252_create_travels_table', 1),
(41, '2019_12_31_090637_create_promotions_table', 1),
(42, '2019_12_31_092838_create_transfers_table', 1),
(43, '2019_12_31_100319_create_warnings_table', 1),
(44, '2019_12_31_103019_create_complaints_table', 1),
(45, '2020_01_02_090837_create_payslip_types_table', 1),
(46, '2020_01_02_093331_create_allowance_options_table', 1),
(47, '2020_01_02_102558_create_loan_options_table', 1),
(48, '2020_01_02_103822_create_deduction_options_table', 1),
(49, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
(50, '2020_01_02_111807_create_set_salaries_table', 1),
(51, '2020_01_03_084302_create_allowances_table', 1),
(52, '2020_01_03_101735_create_commissions_table', 1),
(53, '2020_01_03_105019_create_loans_table', 1),
(54, '2020_01_03_105046_create_saturation_deductions_table', 1),
(55, '2020_01_03_105100_create_other_payments_table', 1),
(56, '2020_01_03_105111_create_overtimes_table', 1),
(57, '2020_01_04_060343_create_contract_types_table', 1),
(58, '2020_01_04_060343_create_performance_type_table', 1),
(59, '2020_01_04_060354_create_contracts_table', 1),
(60, '2020_01_04_072527_create_pay_slips_table', 1),
(61, '2020_01_08_063207_create_product_services_table', 1),
(62, '2020_01_08_084029_create_product_service_categories_table', 1),
(63, '2020_01_08_092717_create_product_service_units_table', 1),
(64, '2020_01_08_121541_create_customers_table', 1),
(65, '2020_01_09_104945_create_venders_table', 1),
(66, '2020_01_09_113852_create_bank_accounts_table', 1),
(67, '2020_01_09_124222_create_bank_transfers_table', 1),
(68, '2020_01_10_064723_create_transactions_table', 1),
(69, '2020_01_13_072608_create_invoice_products_table', 1),
(70, '2020_01_13_084720_create_events_table', 1),
(71, '2020_01_15_034438_create_revenues_table', 1),
(72, '2020_01_15_051228_create_bills_table', 1),
(73, '2020_01_15_060859_create_bill_products_table', 1),
(74, '2020_01_15_073237_create_payments_table', 1),
(75, '2020_01_16_041720_create_announcements_table', 1),
(76, '2020_01_16_043907_create_orders_table', 1),
(77, '2020_01_16_090747_create_leave_types_table', 1),
(78, '2020_01_16_093256_create_leaves_table', 1),
(79, '2020_01_16_110357_create_meetings_table', 1),
(80, '2020_01_18_051650_create_invoice_payments_table', 1),
(81, '2020_01_18_051650_create_pos_payments_table', 1),
(82, '2020_01_20_091035_create_bill_payments_table', 1),
(83, '2020_01_23_101613_create_meeting_employees_table', 1),
(84, '2020_01_23_123844_create_event_employees_table', 1),
(85, '2020_01_24_062752_create_announcement_employees_table', 1),
(86, '2020_01_27_052503_create_attendance_employees_table', 1),
(87, '2020_02_25_052356_create_credit_notes_table', 1),
(88, '2020_02_26_033827_create_debit_notes_table', 1),
(89, '2020_03_04_122711_create_leads_table', 1),
(90, '2020_03_04_122801_create_lead_stages_table', 1),
(91, '2020_03_05_042105_create_lead_activity_logs_table', 1),
(92, '2020_03_05_042308_create_lead_discussions_table', 1),
(93, '2020_03_05_042318_create_user_leads_table', 1),
(94, '2020_03_05_042549_create_lead_files_table', 1),
(95, '2020_03_05_042636_create_lead_emails_table', 1),
(96, '2020_03_05_042710_create_lead_calls_table', 1),
(97, '2020_03_05_044157_create_deal_emails_table', 1),
(98, '2020_03_05_044322_create_deal_calls_table', 1),
(99, '2020_03_12_120749_create_user_coupons_table', 1),
(100, '2020_03_17_104345_create_estimations_table', 1),
(101, '2020_03_18_104909_create_notifications_table', 1),
(102, '2020_04_02_045834_create_proposals_table', 1),
(103, '2020_04_02_055706_create_proposal_products_table', 1),
(104, '2020_04_18_035141_create_goals_table', 1),
(105, '2020_04_21_115823_create_assets_table', 1),
(106, '2020_04_24_023732_create_custom_fields_table', 1),
(107, '2020_04_24_024217_create_custom_field_values_table', 1),
(108, '2020_05_01_122144_create_ducument_uploads_table', 1),
(109, '2020_05_02_075614_create_email_templates_table', 1),
(110, '2020_05_02_075630_create_email_template_langs_table', 1),
(111, '2020_05_02_075647_create_user_email_templates_table', 1),
(112, '2020_05_04_070452_create_indicators_table', 1),
(113, '2020_05_05_023742_create_appraisals_table', 1),
(114, '2020_05_05_061241_create_goal_types_table', 1),
(115, '2020_05_05_095926_create_goal_trackings_table', 1),
(116, '2020_05_07_093520_create_company_policies_table', 1),
(117, '2020_05_07_131311_create_training_types_table', 1),
(118, '2020_05_08_023838_create_trainers_table', 1),
(119, '2020_05_08_043039_create_trainings_table', 1),
(120, '2020_05_21_065337_create_permission_tables', 1),
(121, '2020_06_02_085538_create_task_stages_table', 1),
(122, '2020_06_30_043627_create_user_to_dos_table', 1),
(123, '2020_07_04_041452_create_project_email_templates_table', 1),
(124, '2020_07_06_110501_create_user_contacts_table', 1),
(125, '2020_08_10_073242_create_project_invoices_table', 1),
(126, '2020_08_26_093539_create_time_trackers_table', 1),
(127, '2020_10_07_034726_create_holidays_table', 1),
(128, '2021_01_11_062508_create_chart_of_accounts_table', 1),
(129, '2021_01_11_070441_create_chart_of_account_types_table', 1),
(130, '2021_01_12_032834_create_journal_entries_table', 1),
(131, '2021_01_12_033815_create_journal_items_table', 1),
(132, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
(133, '2021_01_20_113044_create_log_activities_table', 1),
(134, '2021_03_13_093312_create_ip_restricts_table', 1),
(135, '2021_03_13_114832_create_job_categories_table', 1),
(136, '2021_03_13_123125_create_job_stages_table', 1),
(137, '2021_03_15_094707_create_jobs_table', 1),
(138, '2021_03_15_153745_create_job_applications_table', 1),
(139, '2021_03_16_115140_create_job_application_notes_table', 1),
(140, '2021_03_17_100224_create_projects_table', 1),
(141, '2021_03_17_163107_create_custom_questions_table', 1),
(142, '2021_03_18_060536_create_project_tasks_table', 1),
(143, '2021_03_18_070146_create_milestones_table', 1),
(144, '2021_03_18_091547_create_task_checklists_table', 1),
(145, '2021_03_18_092113_create_task_files_table', 1),
(146, '2021_03_18_092400_create_task_comments_table', 1),
(147, '2021_03_18_102517_create_activity_logs_table', 1),
(148, '2021_03_18_140630_create_interview_schedules_table', 1),
(149, '2021_03_19_053350_create_project_users_table', 1),
(150, '2021_03_22_100636_create_expenses_table', 1),
(151, '2021_03_22_122532_create_job_on_boards_table', 1),
(152, '2021_03_23_032633_create_timesheets_table', 1),
(153, '2021_08_03_093459_create_form_builders_table', 1),
(154, '2021_08_03_094508_create_form_fields_table', 1),
(155, '2021_08_03_094534_create_form_field_responses_table', 1),
(156, '2021_08_03_094548_create_form_responses_table', 1),
(157, '2021_08_04_072610_admin_payment_settings', 1),
(158, '2021_08_04_090539_company_payment_settings', 1),
(159, '2021_08_05_114738_create_supports_table', 1),
(160, '2021_08_05_115212_create_support_replies_table', 1),
(161, '2021_08_20_084119_create_competencies_table', 1),
(162, '2021_09_03_112043_create_track_photos_table', 1),
(163, '2021_12_02_052828_create_budgets_table', 1),
(164, '2021_12_24_104639_create_zoom_meetings_table', 1),
(165, '2022_03_11_035602_create_stock_reports_table', 1),
(166, '2022_07_21_033939_create_contract_attachment_table', 1),
(167, '2022_07_21_034802_create_contract_comment_table', 1),
(168, '2022_07_21_034957_create_contract_notes_table', 1),
(169, '2022_08_10_051439_generate__offer__letter', 1),
(170, '2022_08_16_050109_joining_letter', 1),
(171, '2022_08_17_045033_experience_certificate', 1),
(172, '2022_08_17_051049_create_warehouses_table', 1),
(173, '2022_08_17_065806_noc_certificate', 1),
(174, '2022_08_18_055612_create_purchases_table', 1),
(175, '2022_08_18_072314_create_purchase_products_table', 1),
(176, '2022_08_22_050630_create_purchase_payments', 1),
(177, '2022_08_24_045854_create_warehouse_products', 1),
(178, '2022_08_25_112305_create_pos_table', 1),
(179, '2022_08_25_124531_create_pos_products_table', 1),
(180, '2023_04_19_113655_create_login_details_table', 1),
(181, '2023_04_20_102814_create_notification_templates_table', 1),
(182, '2023_04_20_121414_create_notification_template_langs_table', 1),
(183, '2023_04_24_073041_create_webhook_settings_table', 1),
(184, '2023_05_29_063149_create_invoice_bank_transfer_table', 1),
(185, '2023_06_05_043450_create_landing_page_settings_table', 1),
(186, '2023_06_06_043306_create_templates_table', 1),
(187, '2023_06_10_114031_create_join_us_table', 1),
(188, '2023_06_27_114746_create_languages_table', 1),
(189, '2023_07_12_220924_create_warehouse_transfers_table', 1),
(190, '2023_07_27_144907_create_bill_account_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `progress` varchar(191) DEFAULT NULL,
  `cost` double(15,2) NOT NULL DEFAULT 0.00,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `noc_certificates`
--

CREATE TABLE `noc_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noc_certificates`
--

INSERT INTO `noc_certificates` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ar', '<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n\n\n\n            <p>التاريخ: {date}</p>\n\n\n\n            <p>إلى من يهمه الأمر</p>\n\n\n\n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n\n\n\n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n\n\n\n            <p>بإخلاص،</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>التوقيع</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(2, 'da', '<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n\n\n\n            <p>Dato: {date}</p>\n\n\n\n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n\n\n\n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n\n\n\n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n\n\n\n            <p>Med venlig hilsen</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Underskrift</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(3, 'de', '<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n\n\n\n            <p>Datum {date}</p>\n\n\n\n            <p>Wen auch immer es betrifft</p>\n\n\n\n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n\n\n\n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n\n\n\n            <p>Aufrichtig,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Unterschrift</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(4, 'en', '<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n\n            <p>Date: {date}</p>\n\n            <p>To Whomsoever It May Concern</p>\n\n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n\n            <p>We wish her/him good luck in the future.</p>\n\n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(5, 'es', '<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n\n\n\n            <p>Fecha: {date}</p>\n\n\n\n            <p>A quien corresponda</p>\n\n\n\n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n\n\n\n            <p>Le deseamos buena suerte en el futuro.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(6, 'fr', '<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n\n\n            <p>Date : {date}</p>\n\n\n            <p>&Agrave; toute personne concern&eacute;e</p>\n\n\n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n\n\n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n\n\n            <p>Sinc&egrave;rement,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Signature</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(7, 'id', '<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n\n\n\n            <p>Tanggal: {date}</p>\n\n\n\n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n\n\n\n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n\n\n\n            <p>Kami berharap dia sukses di masa depan.</p>\n\n\n\n            <p>Sungguh-sungguh,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Tanda tangan</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(8, 'it', '<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n\n\n\n            <p>Data: {date}</p>\n\n\n\n            <p>A chi pu&ograve; interessare</p>\n\n\n\n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n\n\n\n            <p>Le auguriamo buona fortuna per il futuro.</p>\n\n\n\n            <p>Cordiali saluti,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(9, 'ja', '<h3 style=\"text-align: center;\">異議なし証明書</h3>\n\n\n\n            <p>日付: {date}</p>\n\n\n\n            <p>関係者各位</p>\n\n\n\n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n\n\n\n            <p>彼女/彼の今後の幸運を祈っています。</p>\n\n\n\n            <p>心から、</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>サイン</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(10, 'nl', '<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n\n\n\n            <p>Datum: {date}</p>\n\n\n\n            <p>Aan wie het ook aangaat</p>\n\n\n\n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n\n\n\n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n\n\n\n            <p>Eerlijk,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Handtekening</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(11, 'pl', '<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n\n\n\n            <p>Data: {date}</p>\n\n\n\n            <p>Do kogo to może dotyczyć</p>\n\n\n\n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n\n\n\n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n\n\n\n            <p>Z poważaniem,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Podpis</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(12, 'pt', '<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n\n\n\n            <p>Data: {date}</p>\n\n\n\n            <p>A quem interessar</p>\n\n\n\n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n\n\n\n            <p>Desejamos-lhe boa sorte no futuro.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Assinatura</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(13, 'ru', '<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n\n\n\n            <p>Дата: {date}</p>\n\n\n\n            <p>Кого бы это ни касалось</p>\n\n\n\n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n\n\n\n            <p>Мы желаем ей/ему удачи в будущем.</p>\n\n\n\n            <p>Искренне,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Подпись</p>\n\n            <p>{app_name}</p>', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `data` text NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'New Lead', 'new_lead', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(2, 'Lead to Deal Conversion', 'lead_to_deal_conversion', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(3, 'New Project', 'new_project', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(4, 'Task Stage Updated', 'task_stage_updated', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(5, 'New Deal', 'new_deal', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(6, 'New Contract', 'new_contract', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(7, 'New Task', 'new_task', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(8, 'New Task Comment', 'new_task_comment', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(9, 'New Monthly Payslip', 'new_monthly_payslip', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(10, 'New Announcement', 'new_announcement', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(11, 'New Support Ticket', 'new_support_ticket', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(12, 'New Meeting', 'new_meeting', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(13, 'New Award', 'new_award', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(14, 'New Holiday', 'new_holiday', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(15, 'New Event', 'new_event', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(16, 'New Company Policy', 'new_company_policy', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(17, 'New Invoice', 'new_invoice', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(18, 'New Bill', 'new_bill', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(19, 'New Budget', 'new_budget', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(20, 'New Revenue', 'new_revenue', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(21, 'New Invoice Payment', 'new_invoice_payment', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(22, 'New Customer', 'new_customer', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(23, 'New Vendor', 'new_vendor', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(24, 'New Proposal', 'new_proposal', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(25, 'New Payment', 'bill_payment', '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(26, 'Invoice Payment Reminder', 'invoice_payment_reminder', '2023-12-09 16:42:47', '2023-12-09 16:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `notification_template_langs`
--

CREATE TABLE `notification_template_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `variables` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_template_langs`
--

INSERT INTO `notification_template_langs` (`id`, `parent_id`, `lang`, `content`, `variables`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'تم إنشاء عميل محتمل جديد بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(2, 1, 'zh', '{user_name} 创建的新商机', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(3, 1, 'da', 'Neuer Lead erstellt von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(4, 1, 'de', 'Ny kundeemne oprettet af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(5, 1, 'en', 'New Lead created by {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(6, 1, 'es', 'Nuevo cliente potencial creado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(7, 1, 'fr', 'Nouveau prospect créé par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(8, 1, 'he', 'ביצוע חדש שנוצר על-ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(9, 1, 'it', 'Nuovo lead creato da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(10, 1, 'ja', '{user_name} によって作成された新しいリード', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(11, 1, 'nl', 'Nieuwe lead gemaakt door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(12, 1, 'pl', 'Nowy potencjalny klient utworzony przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(13, 1, 'ru', 'Новый интерес создан пользователем {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(14, 1, 'pt', 'Novo lead criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(15, 1, 'tr', '{ user_name } tarafından oluşturulan Yeni Lider', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(16, 1, 'pt-br', 'Novo Lead criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(17, 2, 'ar', 'تم تحويل الصفقة من خلال العميل المحتمل {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(18, 2, 'zh', '已通过商机 {lead_user_name} 进行转换', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(19, 2, 'da', 'Aftale konverteret via kundeemne {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(20, 2, 'de', 'Geschäftsabschluss durch Lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(21, 2, 'en', 'Deal converted through lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(22, 2, 'es', 'Trato convertido a través del cliente potencial {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(23, 2, 'fr', 'Offre convertie via le prospect {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(24, 2, 'he', 'העסקה הומרה באמצעות עופרת {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(25, 2, 'it', 'Offerta convertita tramite il lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(26, 2, 'ja', 'リード {lead_user_name} を通じて商談が成立', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(27, 2, 'nl', 'Deal geconverteerd via lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(28, 2, 'pl', 'Umowa przekonwertowana przez lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(29, 2, 'ru', 'Конвертация сделки через лид {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(30, 2, 'pt', 'Negócio convertido por meio do lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(31, 2, 'tr', 'Baş { lead_user_name } ile dönüştürülen anlaşma', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(32, 2, 'pt-br', 'Acordo convertido através do lead {lead_user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead User Name\": \"lead_user_name\",\n                    \"Lead Name\": \"lead_name\",\n                    \"Lead Email\": \"lead_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(33, 3, 'ar', 'تم تكوين مشروع جديد { project_name } بواسطة { user_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(34, 3, 'zh', '{user_name} 创建了新的 {project_name} 项目', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(35, 3, 'da', 'Nyt { project_name } projekt oprettet af { user_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(36, 3, 'de', 'Neues Projekt {project_name} erstellt von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(37, 3, 'en', 'New {project_name} project created by {user_name}.', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(38, 3, 'es', 'Nuevo proyecto {project_name} creado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(39, 3, 'fr', 'Nouveau projet { project_name } créé par { nom_utilisateur }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(40, 3, 'he', 'פרויקט {project_name} חדש שנוצר על ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(41, 3, 'it', 'Nuovo progetto {project_name} creato da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(42, 3, 'ja', '{user_name} によって作成された新規 {project_name} プロジェクト', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(43, 3, 'nl', 'Nieuw project { project_name } gemaakt door { user_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(44, 3, 'pl', 'Nowy projekt {project_name } utworzony przez użytkownika {user_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(45, 3, 'ru', 'Новый проект { project_name }, созданный пользователем { user_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(46, 3, 'pt', 'Novo projeto {project_name} criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(47, 3, 'tr', '{ user_name } tarafından oluşturulan yeni { project_name } projesi', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(48, 3, 'pt-br', 'Novo projeto {project_name} criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(49, 4, 'ar', 'تم تغيير حالة { task_name } من { old_stage_name } الى { new_stage_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(50, 4, 'zh', '{task_name} 状态已从 {old_stage_name} 更改为 {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(51, 4, 'da', 'Status for { task_name } er ændret fra { old_stage_name } til { new_stage_name }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(52, 4, 'de', 'Status {task_name} wurde von {old_stage_name} in {new_stage_name} geändert', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(53, 4, 'en', '{task_name} status changed from {old_stage_name} to {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(54, 4, 'es', 'El estado de {task_name} cambió de {old_stage_name} a {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(55, 4, 'fr', 'Le statut de {task_name} est passé de {old_stage_name} à {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(56, 4, 'he', 'הסטאטוס {task_name} השתנה מ - {old_stage_name} ל - {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(57, 4, 'it', 'Lo stato di {task_name} è cambiato da {old_stage_name} a {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(58, 4, 'ja', '{task_name} のステータスが {old_stage_name} から {new_stage_name} に変更されました', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(59, 4, 'nl', '{task_name}-status gewijzigd van {old_stage_name} in {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(60, 4, 'pl', 'Zmieniono status {task_name} z {old_stage_name} na {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(61, 4, 'ru', 'Статус {task_name} изменен с {old_stage_name} на {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(62, 4, 'pt', '{task_name} status alterado de {old_stage_name} para {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(63, 4, 'tr', '{ task_name } durumu, { old_stage_name } tarafından { new_stage_name } olarak değiştirildi', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(64, 4, 'pt-br', '{task_name} status alterado de {old_stage_name} para {new_stage_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Old Stage Name\": \"old_stage_name\",\n                    \"New Stage Name\": \"new_stage_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(65, 5, 'ar', 'تم إنشاء الصفقة الجديدة بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(66, 5, 'zh', '{user_name} 创建的新政', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(67, 5, 'da', 'Ny aftale oprettet af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(68, 5, 'de', 'Neuer Deal erstellt von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(69, 5, 'en', 'New Deal created by {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(70, 5, 'es', 'Nueva oferta creada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(71, 5, 'fr', 'Nouvelle offre créée par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(72, 5, 'he', 'עסקה חדשה שנוצרה על-ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(73, 5, 'it', 'New Deal creato da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(74, 5, 'ja', '{user_name} によって作成された新しいディール', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(75, 5, 'nl', 'Nieuwe deal gemaakt door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(76, 5, 'pl', 'Nowa oferta utworzona przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(77, 5, 'ru', 'Новая сделка создана пользователем {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(78, 5, 'pt', 'Novo negócio criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(79, 5, 'tr', '{ user_name } tarafından oluşturulan Yeni Anlaşma', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(80, 5, 'pt-br', 'Novo negócio criado por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Lead Name\": \"deal_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(81, 6, 'ar', 'تم إنشاء عقد {Contract_subject} لـ {contract_client} بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(82, 6, 'zh', '{contract_subject } 合同已由 {user_name} 创建 { contract_client}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(83, 6, 'da', '{contract_subject} kontrakt oprettet for {contract_client} af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(84, 6, 'de', '{contract_subject} Vertrag erstellt für {contract_client} von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(85, 6, 'en', '{contract_subject} contract created for {contract_client} by {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(86, 6, 'es', '{contract_subject} contrato creado para {contract_client} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(87, 6, 'fr', 'Contrat {contract_subject} créé pour {contract_client} par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(88, 6, 'he', '{contract_subject} חוזה שנוצר עבור {contract_client} על-ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(89, 6, 'it', 'Contratto {contract_subject} creato per {contract_client} da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(90, 6, 'ja', '{user_name} によって {contract_client} のために作成された {contract_subject} 契約', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(91, 6, 'nl', '{contract_subject} contract gemaakt voor {contract_client} door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(92, 6, 'pl', 'Umowa {contract_subject} utworzona dla {contract_client} przez {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(93, 6, 'ru', 'Контракт {contract_subject} создан для {contract_client} пользователем {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(94, 6, 'pt', 'Contrato {contract_subject} criado para {contract_client} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(95, 6, 'tr', '{ user_name } tarafından { contract_client } için { contract_subject } sözleşmesi oluşturuldu', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(96, 6, 'pt-br', 'Contrato {contract_subject} criado para {contract_client} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Contract Name\": \"contract_subject\",\n                    \"Client Name\": \"contract_client\",\n                    \"Contract Price\": \"contract_value\",\n                    \"Contract Start Date\": \"contract_start_date\",\n                    \"Contract End Date\": \"contract_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(97, 7, 'ar', 'تم إنشاء مهمة {task_name} لمشروع {project_name} بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(98, 7, 'zh', '{user_name} 为 {project_name} 项目创建 {task_name} 任务', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(99, 7, 'da', '{task_name} opgave oprettet for {project_name}-projekt af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(100, 7, 'de', 'Aufgabe {task_name} erstellt für Projekt {project_name} von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(101, 7, 'en', '{task_name} task create for {project_name} project by {user_name}.', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(102, 7, 'es', '{task_name} tarea creada para {project_name} proyecto por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(103, 7, 'fr', 'Tâche {task_name} créée pour le projet {project_name} par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(104, 7, 'he', 'המשימה {task_name} יוצרת עבור {project_name} פרויקט על ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(105, 7, 'it', 'Attività {task_name} creata per il progetto {project_name} da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(106, 7, 'ja', '{user_name} による {project_name} プロジェクトの {task_name} タスク作成', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(107, 7, 'nl', '{task_name} taak gemaakt voor {project_name} project door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(108, 7, 'pl', 'Zadanie {task_name} utworzono dla projektu {project_name} przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(109, 7, 'ru', 'Задача {task_name} создана для проекта {project_name} пользователем {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(110, 7, 'pt', 'Tarefa {task_name} criada para o projeto {project_name} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(111, 7, 'tr', '{ user_name } tarafından { proje_name } projesi için { task_name } görev oluşturma', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(112, 7, 'pt-br', 'Tarefa {task_name} criada para o projeto {project_name} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(113, 8, 'ar', 'تمت إضافة تعليق جديد في المهمة {task_name} للمشروع {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(114, 8, 'zh', '项目 {project_name} 的任务 {task_name} 中添加了新注释', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(115, 8, 'da', 'Ny kommentar tilføjet til opgave {task_name} i projekt {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(116, 8, 'de', 'Neuer Kommentar in Aufgabe {task_name} von Projekt {project_name} hinzugefügt', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(117, 8, 'en', 'New Comment added in task {task_name} of project {project_name}.', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(118, 8, 'es', 'Nuevo comentario agregado en la tarea {task_name} del proyecto {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(119, 8, 'fr', 'Nouveau commentaire ajouté dans la tâche {task_name} du projet {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(120, 8, 'he', 'הערה חדשה נוספה במשימה {task_name} של הפרויקט {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(121, 8, 'it', 'Nuovo commento aggiunto nell\'attività {task_name} del progetto {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(122, 8, 'ja', 'プロジェクト {project_name} のタスク {task_name} に新しいコメントが追加されました', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(123, 8, 'nl', 'Nieuwe opmerking toegevoegd in taak {task_name} van project {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(124, 8, 'pl', 'Dodano nowy komentarz w zadaniu {task_name} projektu {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(125, 8, 'ru', 'Новый комментарий добавлен в задачу {task_name} проекта {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(126, 8, 'pt', 'Novo comentário adicionado na tarefa {task_name} do projeto {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(127, 8, 'tr', '{ project_name } projesinin { task_name } görevine yeni bir yorum eklendi', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(128, 8, 'pt-br', 'Novo comentário adicionado na tarefa {task_name} do projeto {project_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Task Name\": \"task_name\",\n                    \"Project Name\": \"project_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(129, 9, 'ar', 'تم إنشاء قسيمة دفع جديدة بتاريخ {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(130, 9, 'zh', '{ y年内} 生成的新 payslip', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(131, 9, 'da', 'Ny lønseddel genereret af {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(132, 9, 'de', 'Neue Gehaltsabrechnung erstellt vom {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(133, 9, 'en', 'New payslip generated of {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(134, 9, 'es', 'Nueva nómina generada de {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(135, 9, 'fr', 'Nouvelle fiche de paie générée de {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(136, 9, 'he', 'תשלום חדש שהופק מ - {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(137, 9, 'it', 'Nuova busta paga generata di {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(138, 9, 'ja', '{year} の新しい給​​与明細が作成されました', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(139, 9, 'nl', 'Nieuwe loonstrook gegenereerd van {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(140, 9, 'pl', 'Nowy odcinek wypłaty wygenerowany za {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(141, 9, 'ru', 'Новая расчетная ведомость создана за {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(142, 9, 'pt', 'Novo contracheque gerado de {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(143, 9, 'tr', '{ year } tarafından oluşturulan yeni payslip', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(144, 9, 'pt-br', 'Novo contracheque gerado de {year}', '{\n                    \"Year\": \"year\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(145, 10, 'ar', 'تم إنشاء إعلان {calling_title} للفرع {Branch_name} من {start_date} إلى {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(146, 10, 'zh', '已为分支 {branch_name} 从 {start_date} 到 {end_date} 创建 {announcement_title} 声明', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(147, 10, 'da', '{announcement_title}-meddelelse oprettet for filial {branch_name} fra {start_date} til {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(148, 10, 'de', '{announcement_title}-Ankündigung erstellt für Branche {branch_name} von {start_date} bis {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(149, 10, 'en', '{announcement_title} announcement created for branch {branch_name} from {start_date} to {end_date}.', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(150, 10, 'es', 'Anuncio {announcement_title} creado para la sucursal {branch_name} desde el {start_date} hasta el {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(151, 10, 'fr', '{announcement_title} annonce créée pour la succursale {branch_name} du {start_date} au {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(152, 10, 'he', '{להכריז על הכרזה שנוצרה עבור ענף {מיתוג} מ - {start_date} ל - {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47');
INSERT INTO `notification_template_langs` (`id`, `parent_id`, `lang`, `content`, `variables`, `created_by`, `created_at`, `updated_at`) VALUES
(153, 10, 'it', '{announcement_title} annuncio creato per la filiale {branch_name} dal {start_date} al {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(154, 10, 'ja', '{announcement_title} ブランチ {branch_name} の {start_date} から {end_date} までのお知らせが作成されました', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(155, 10, 'nl', '{announcement_title} aankondiging gemaakt voor filiaal {branch_name} van {start_date} tot {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(156, 10, 'pl', 'Ogłoszenie {announcement_title} utworzone dla oddziału {branch_name} od {start_date} do {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(157, 10, 'ru', 'Объявление {announcement_title} создано для филиала {branch_name} с {start_date} по {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(158, 10, 'pt', 'Anúncio de {announcement_title} criado para a filial {branch_name} de {start_date} a {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(159, 10, 'tr', '{ branch_name } dalı için { start_date }-{ end_date } tarihleri arasında { announcement_title } duyurusu oluşturuldu', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(160, 10, 'pt-br', 'Anúncio de {announcement_title} criado para a filial {branch_name} de {start_date} a {end_date}', '{\n                    \"Announcement Title\": \"announcement_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Start Date\": \"start_date\",\n                    \"End Date\": \"end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(161, 11, 'ar', 'تم إنشاء بطاقة دعم جديدة ذات أولوية {support_priority} لـ {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(162, 11, 'zh', '为 {support_user_name} 创建了 { support_priority} 优先级的新支持凭单', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(163, 11, 'da', 'Ny supportbillet oprettet med prioritet {support_priority} til {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(164, 11, 'de', 'Neues Support-Ticket mit Priorität {support_priority} für {support_user_name} erstellt', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(165, 11, 'en', 'New Support ticket created of {support_priority} priority for {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(166, 11, 'es', 'Nuevo ticket de soporte creado con prioridad {support_priority} para {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(167, 11, 'fr', 'Nouveau ticket d\'assistance créé avec la priorité {support_priority} pour {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(168, 11, 'he', 'כרטיס תמיכה חדש שנוצר עבור קדימות {support_priority} עבור {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(169, 11, 'it', 'Nuovo ticket di assistenza creato con priorità {support_priority} per {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(170, 11, 'ja', '{support_user_name} の優先度 {support_priority} の新しいサポート チケットが作成されました', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(171, 11, 'nl', 'Nieuw ondersteuningsticket gemaakt met prioriteit {support_priority} voor {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(172, 11, 'pl', 'Utworzono nowe zgłoszenie do pomocy technicznej o priorytecie {support_priority} dla użytkownika {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(173, 11, 'ru', 'Создан новый запрос в службу поддержки с приоритетом {support_priority} для {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(174, 11, 'pt', 'Novo tíquete de suporte criado com prioridade {support_priority} para {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(175, 11, 'tr', '{ support_user_name } için { support_priority } önceliğine ilişkin yeni Destek bileti oluşturuldu', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(176, 11, 'pt-br', 'Novo tíquete de suporte criado com prioridade {support_priority} para {support_user_name}', '{\n                    \"Support Priority\": \"support_priority\",\n                    \"Support User Name\": \"support_user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(177, 12, 'ar', 'تم إنشاء اجتماع {meeting_title} للفرع {Branch_name} من {meeting_date} في {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(178, 12, 'zh', '已从 { meeting_time} 为分支 {branch_name} 创建了 { meetting_title } 会议 { meeting_date}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(179, 12, 'da', '{meeting_title} møde oprettet for filial {branch_name} fra {meeting_date} kl. {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(180, 12, 'de', '{meeting_title}-Meeting für Zweigstelle {branch_name} vom {meeting_date} um {meeting_time} erstellt', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(181, 12, 'en', '{meeting_title} meeting created for branch {branch_name} from {meeting_date} at {meeting_time}.', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(182, 12, 'es', '{meeting_title} reunión creada para la sucursal {branch_name} de {meeting_date} a las {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(183, 12, 'fr', 'Réunion {meeting_title} créée pour la succursale {branch_name} à partir du {meeting_date} à {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(184, 12, 'he', '{meeting_title} פגישה שנוצרה עבור ענף {מיתוג} מתוך {meeting_date} ב - {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(185, 12, 'it', 'Meeting {meeting_title} creato per la filiale {branch_name} da {meeting_date} alle {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(186, 12, 'ja', '{meeting_date} から {meeting_time} に {meeting_title} ブランチ {branch_name} 用に作成された {meeting_title} ミーティング', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(187, 12, 'nl', '{meeting_title} vergadering gemaakt voor filiaal {branch_name} vanaf {meeting_date} om {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(188, 12, 'pl', 'Spotkanie {meeting_title} utworzone dla oddziału {branch_name} od {meeting_date} o {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(189, 12, 'ru', 'Встреча {meeting_title} создана для филиала {branch_name} с {meeting_date} в {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(190, 12, 'pt', 'Reunião {meeting_title} criada para a filial {branch_name} de {meeting_date} às {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(191, 12, 'tr', '{ meeting_title } { branch_name } dalı için { meeting_date } dalından { meeting_time } saatinde oluşturulan toplantı oluşturuldu', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(192, 12, 'pt-br', 'Reunião {meeting_title} criada para a filial {branch_name} de {meeting_date} às {meeting_time}', '{\n                    \"Meeting Title\": \"meeting_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Meeting Date\": \"meeting_date\",\n                    \"Meeting Time\": \"meeting_time\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(193, 13, 'ar', 'تم إنشاء {Award_name} لـ {Employee_name} من {Award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(194, 13, 'zh', '已从 {award_date} 为 {employe_name} 创建 {award_name}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(195, 13, 'da', '{award_name} oprettet til {employee_name} fra {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(196, 13, 'de', '{award_name} erstellt für {employee_name} vom {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(197, 13, 'en', '{award_name} created for {employee_name} from {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(198, 13, 'es', '{award_name} creado para {employee_name} de {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(199, 13, 'fr', '{award_name} créé pour {employee_name} à partir du {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(200, 13, 'he', '{award_name} שנוצר עבור {העובד ee_name} מ - {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(201, 13, 'it', '{award_name} creato per {employee_name} da {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(202, 13, 'ja', '{employee_name} のために {award_name} が {award_date} から作成されました', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(203, 13, 'nl', '{award_name} gemaakt voor {employee_name} vanaf {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(204, 13, 'pl', '{award_name} utworzone dla {employee_name} od {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(205, 13, 'ru', '{award_name} создано для {employee_name} с {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(206, 13, 'pt', '{award_name} criado para {employee_name} de {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(207, 13, 'tr', '{ employee_name } için { award_date } içinden { award_name } oluşturuldu', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(208, 13, 'pt-br', '{award_name} criado para {employee_name} de {award_date}', '{\n                    \"Award Name\": \"award_name\",\n                    \"Employee Name\": \"employee_name\",\n                    \"Award Date\": \"award_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(209, 14, 'ar', '{holiday_title} عطلة يوم {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(210, 14, 'zh', '{holiday_date} 上的 {holiday_title} 假日', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(211, 14, 'da', '{holiday_title} helligdag på {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(212, 14, 'de', '{holiday_title} Feiertag am {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(213, 14, 'en', '{holiday_title} holiday on {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(214, 14, 'es', '{holiday_title} feriado el {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(215, 14, 'fr', '{holiday_title} vacances le {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(216, 14, 'he', '{הולידיי _title} חגים ב - {הולידיי _date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(217, 14, 'it', '{holiday_title} festività il giorno {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(218, 14, 'ja', '{holiday_date} の {holiday_title} 休日', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(219, 14, 'nl', '{holiday_title} vakantie op {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(220, 14, 'pl', '{holiday_title} wakacje w dniu {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(221, 14, 'ru', '{holiday_title} праздник {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(222, 14, 'pt', '{holiday_title} feriado em {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(223, 14, 'tr', '{ holiday_date } tarihinde ({ holiday_date })', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(224, 14, 'pt-br', '{holiday_title} feriado em {holiday_date}', '{\n                    \"Holiday Title\": \"holiday_title\",\n                    \"Holiday Date\": \"holiday_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(225, 15, 'ar', 'تم إنشاء حدث {event_title} للفرع {Branch_name} من {event_start_date} إلى {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(226, 15, 'zh', '为分支 {branch_name} 从 {event_start_date} 创建的 {event_title } 事件为 {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(227, 15, 'da', '{event_title}-begivenhed oprettet for grenen {branch_name} fra {event_start_date} til {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(228, 15, 'de', '{event_title} Veranstaltung erstellt für Branche {branch_name} von {event_start_date} bis {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(229, 15, 'en', '{event_title} event created for branch {branch_name} from {event_start_date} to {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(230, 15, 'es', '{event_title} evento creado para la sucursal {branch_name} desde el {event_start_date} hasta el {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(231, 15, 'fr', 'Événement {event_title} créé pour la succursale {branch_name} du {event_start_date} au {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(232, 15, 'he', '{event_title} אירוע שנוצר עבור ענף {ברנch_name} מ - {event_start_date} אל {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(233, 15, 'it', 'Evento {event_title} creato per il ramo {branch_name} da {event_start_date} a {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(234, 15, 'ja', '{event_title} ブランチ {branch_name} に対して {event_start_date} から {event_end_date} まで作成された {event_title} イベント', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(235, 15, 'nl', '{event_title} evenement gemaakt voor filiaal {branch_name} van {event_start_date} tot {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(236, 15, 'pl', 'Wydarzenie {event_title} utworzone dla oddziału {branch_name} od {event_start_date} do {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(237, 15, 'ru', 'Событие {event_title} создано для филиала {branch_name} с {event_start_date} по {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(238, 15, 'pt', 'Evento {event_title} criado para a ramificação {branch_name} de {event_start_date} a {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(239, 15, 'tr', '{ branch_name } dalı için { event_start_date }-{ event_end_date } tarihleri arasında { event_title } olayı yaratıldı', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(240, 15, 'pt-br', 'Evento {event_title} criado para a ramificação {branch_name} de {event_start_date} a {event_end_date}', '{\n                    \"Event Title\": \"event_title\",\n                    \"Branch Name\": \"branch_name\",\n                    \"Event Start Date\": \"event_start_date\",\n                    \"Event End Date\": \"event_end_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(241, 16, 'ar', 'تم إنشاء سياسة {company_policy_name} لفرع {Branch_name}', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(242, 16, 'zh', '已创建 {branch_name} 分支的 {company_policy_name} 策略', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(243, 16, 'da', '{company_policy_name}-politik for filialen {branch_name} er oprettet', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(244, 16, 'de', 'Richtlinie {company_policy_name} für Zweigstelle {branch_name} erstellt', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(245, 16, 'en', '{company_policy_name} policy for {branch_name} branch created', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(246, 16, 'es', 'Política {company_policy_name} para la sucursal {branch_name} creada', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(247, 16, 'fr', 'Stratégie {company_policy_name} pour la succursale {branch_name} créée', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(248, 16, 'he', '{company_policy_name} מדיניות עבור ענף {מיתוג} נוצרה', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(249, 16, 'it', 'Politica {company_policy_name} per la filiale {branch_name} creata', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(250, 16, 'ja', '{branch_name} ブランチの {company_policy_name} ポリシーが作成されました', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(251, 16, 'nl', '{company_policy_name}-beleid voor filiaal {branch_name} gemaakt', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(252, 16, 'pl', 'Polityka {company_policy_name} dla oddziału {branch_name} została utworzona', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(253, 16, 'ru', 'Создана политика {company_policy_name} для филиала {branch_name}', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(254, 16, 'pt', 'política {company_policy_name} para a filial {branch_name} criada', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(255, 16, 'tr', '{ branch_name } şubesi için { company_policy_name } ilkesi oluşturuldu', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(256, 16, 'pt-br', 'política {company_policy_name} para a filial {branch_name} criada', '{\n                    \"Company Policy Name\": \"company_policy_name\",\n                    \"Branch Name\": \"branch_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(257, 17, 'ar', 'تم إنشاء الفاتورة الجديدة {invoice_number} بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(258, 17, 'zh', '{user_name} 创建的新发票 {invoice_number}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(259, 17, 'da', 'Ny faktura {invoice_number} oprettet af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(260, 17, 'de', 'Neue Rechnung {invoice_number} erstellt von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(261, 17, 'en', 'New Invoice {invoice_number} created by {user_name}.', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(262, 17, 'es', 'Nueva factura {invoice_number} creada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(263, 17, 'fr', 'Nouvelle facture {invoice_number} créée par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(264, 17, 'he', 'חשבונית חדשה {invoice_number} נוצרה על-ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(265, 17, 'it', 'Nuova fattura {invoice_number} creata da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(266, 17, 'ja', '{user_name} によって作成された新しい請求書 {invoice_number}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(267, 17, 'nl', 'Nieuwe factuur {invoice_number} gemaakt door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(268, 17, 'pl', 'Nowa faktura {invoice_number} utworzona przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(269, 17, 'ru', 'Новый счет {invoice_number}, созданный {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(270, 17, 'pt', 'Nova fatura {invoice_number} criada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(271, 17, 'tr', 'Yeni Fatura { invoice_number }, { user_name } tarafından oluşturuldu', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(272, 17, 'pt-br', 'Nova fatura {invoice_number} criada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Invoice Issue Date\": \"invoice_issue_date\",\n                    \"Invoice Due Date\": \"invoice_due_date\",\n                    \"Customer Name\": \"customer_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(273, 18, 'ar', 'تم إنشاء الفاتورة الجديدة {bill_number} بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(274, 18, 'zh', '{ user_name} 创建的新帐单 {bill_number}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(275, 18, 'da', 'Ny regning {bill_number} oprettet af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(276, 18, 'de', 'Neue Rechnung {bill_number} erstellt von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(277, 18, 'en', 'New Bill {bill_number} created by {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(278, 18, 'es', 'Nueva factura {bill_number} creada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(279, 18, 'fr', 'Nouvelle facture {bill_number} créée par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(280, 18, 'he', '{ user_name} 创建的新帐单 {bill_number}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(281, 18, 'it', 'Nuova fattura {bill_number} creata da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(282, 18, 'ja', '{user_name} によって作成された新しい請求書 {bill_number}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(283, 18, 'nl', 'Nieuwe factuur {bill_number} gemaakt door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(284, 18, 'pl', 'Nowy rachunek {bill_number} utworzony przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(285, 18, 'ru', 'Новый счет {bill_number}, созданный {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(286, 18, 'pt', 'Nova fatura {bill_number} criada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(287, 18, 'tr', '{ user_name } tarafından oluşturulan yeni Fatura { bill_number }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(288, 18, 'pt-br', 'Nova fatura {bill_number} criada por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Bill Number\": \"bill_number\",\n                    \"Bill Date\": \"bill_date\",\n                    \"Bill Due Date\": \"bill_due_date\",\n                    \"Vendor Name\": \"vendor_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47');
INSERT INTO `notification_template_langs` (`id`, `parent_id`, `lang`, `content`, `variables`, `created_by`, `created_at`, `updated_at`) VALUES
(289, 19, 'ar', 'تم إنشاء ميزانية {budget_period} البالغة {budget_year} لـ {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(290, 19, 'zh', '已为 {budget_name} 创建 {budget_period} 预算 { budget_period }', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(291, 19, 'da', '{budget_period} budget på {budget_year} oprettet for {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(292, 19, 'de', '{budget_period} Budget von {budget_year} erstellt für {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(293, 19, 'en', '{budget_period} budget of {budget_year} created for {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(294, 19, 'es', '{budget_period} presupuesto de {budget_year} creado para {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(295, 19, 'fr', '{budget_period} budget de {budget_year} créé pour {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(296, 19, 'he', '{budget_לתקופת} תקציב של {budget_year} שנוצר עבור {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(297, 19, 'it', '{budget_period} budget di {budget_year} creato per {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(298, 19, 'ja', '{budget_name} 用に作成された {budget_year} の {budget_period} 予算', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(299, 19, 'nl', '{budget_period} budget van {budget_year} gemaakt voor {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(300, 19, 'pl', 'Budżet {budget_period} w wysokości {budget_year} został utworzony dla {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(301, 19, 'ru', 'Бюджет {budget_period} на {budget_year} создан для {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(302, 19, 'pt', 'Orçamento de {budget_period} de {budget_year} criado para {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(303, 19, 'tr', '{ budget_year }, { budget_name } için { budget_period } bütçesi oluşturuldu', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(304, 19, 'pt-br', 'Orçamento de {budget_period} de {budget_year} criado para {budget_name}', '{\n                    \"Budget Period\": \"budget_period\",\n                    \"Budget Year\": \"budget_year\",\n                    \"Budget Name\": \"budget_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(305, 20, 'ar', 'تم إنشاء الإيرادات الجديدة من {الأرباح_amount} لـ {customer_name} بواسطة {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(306, 20, 'zh', '{user_name} 为 {customer_name} 创建的新收入 { 金额 }', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(307, 20, 'da', 'Ny omsætning på {revenue_amount} oprettet for {customer_name} af {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(308, 20, 'de', 'Neuer Umsatz von {revenue_amount} erstellt für {customer_name} von {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(309, 20, 'en', 'New Revenue of {revenue_amount} created for {customer_name} by {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(310, 20, 'es', 'Nuevos ingresos de {revenue_amount} creados para {customer_name} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(311, 20, 'fr', 'Nouveau revenu de {revenue_amount} créé pour {customer_name} par {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(312, 20, 'he', 'הכנסה חדשה של {Revenue_סכום} שנוצרה עבור {customer_name} על-ידי {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(313, 20, 'it', 'Nuove entrate di {revenue_amount} create per {customer_name} da {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(314, 20, 'ja', '{user_name} によって {customer_name} に作成された {revenue_amount} の新しい収入', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(315, 20, 'nl', 'Nieuwe opbrengst van {revenue_amount} gecreëerd voor {customer_name} door {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(316, 20, 'pl', 'Nowy przychód w wysokości {revenue_amount} utworzony dla klienta {customer_name} przez użytkownika {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(317, 20, 'ru', 'Новый доход в размере {revenue_amount} создан для {customer_name} пользователем {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(318, 20, 'pt', 'Nova receita de {revenue_amount} criada para {customer_name} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(319, 20, 'tr', '{ user_name } tarafından { customer_name } için yeni { revenue_amount } Geliri oluşturuldu', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(320, 20, 'pt-br', 'Nova receita de {revenue_amount} criada para {customer_name} por {user_name}', '{\n                    \"Company Name\": \"user_name\",\n                    \"Revenue Amount\": \"revenue_amount\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Revenue Date\": \"revenue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(321, 21, 'ar', 'تم إنشاء دفعة جديدة بقيمة {payment_price} لـ {customer_name} بواسطة {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(322, 21, 'zh', '{invoice_payment_type} 为 {customer_name} 创建了新支付 { payment_price}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(323, 21, 'da', 'Ny betaling på {payment_price} oprettet for {customer_name} af {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(324, 21, 'de', 'Neue Zahlung von {payment_price} erstellt für {customer_name} von {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(325, 21, 'en', 'New payment of {payment_price} created for {customer_name} by {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(326, 21, 'es', 'Nuevo pago de {payment_price} creado para {customer_name} por {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(327, 21, 'fr', 'Nouveau paiement de {payment_price} créé pour {customer_name} par {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(328, 21, 'he', 'תשלום חדש של {payment_פרייס} שנוצר עבור {customer_name} על-ידי {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(329, 21, 'it', 'Nuovo pagamento di {payment_price} creato per {customer_name} da {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(330, 21, 'ja', '{invoice_payment_type} によって {customer_name} のために作成された {payment_price} の新しい支払い', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(331, 21, 'nl', 'Nieuwe betaling van {payment_price} gemaakt voor {customer_name} door {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(332, 21, 'pl', 'Nowa płatność {payment_price} utworzona dla {customer_name} przez {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(333, 21, 'ru', 'Создан новый платеж {payment_price} для {customer_name} по {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(334, 21, 'pt', 'Novo pagamento de {payment_price} criado para {customer_name} por {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(335, 21, 'tr', '{ customer_name } için { invoice_payment_type } tarafından oluşturulan { payment_price } için yeni ödeme', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(336, 21, 'pt-br', 'Novo pagamento de {payment_price} criado para {customer_name} por {invoice_payment_type}', '{\n                    \"Payment Price\": \"payment_price\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Payment Type\": \"invoice_payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(337, 22, 'ar', 'عميل جديد أنشأه {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(338, 22, 'zh', '由 {user_name} 创建的新客户', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(339, 22, 'da', 'Ny kunde oprettet af {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(340, 22, 'de', 'Neuer Kunde erstellt von {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(341, 22, 'en', 'New Customer created by {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(342, 22, 'es', 'Nuevo cliente creado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(343, 22, 'fr', 'Nouveau client créé par {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(344, 22, 'he', 'לקוח חדש נוצר על-ידי {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(345, 22, 'it', 'Nuovo cliente creato da {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(346, 22, 'ja', '{user_name} によって作成された新しい顧客', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(347, 22, 'nl', 'Nieuwe klant gemaakt door {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(348, 22, 'pl', 'Nowy klient utworzony przez {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(349, 22, 'ru', 'Новый клиент создан {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(350, 22, 'pt', 'Novo cliente criado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(351, 22, 'tr', '{ user_name } tarafından oluşturulan yeni Müşteri', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(352, 22, 'pt-br', 'Novo cliente criado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Customer Email\": \"customer_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(353, 23, 'ar', 'تم إنشاء بائع جديد بواسطة {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(354, 23, 'zh', '{user_name} 创建的新供应商', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(355, 23, 'da', 'Ny leverandør oprettet af {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(356, 23, 'de', 'Neuer Anbieter erstellt von {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(357, 23, 'en', 'New Vendor created by {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(358, 23, 'es', 'Nuevo proveedor creado por {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(359, 23, 'fr', 'Nouveau fournisseur créé par {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(360, 23, 'he', 'משווק חדש שנוצר על-ידי {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(361, 23, 'it', 'Nuovo fornitore creato da {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(362, 23, 'ja', '{user_name} によって作成された新しいベンダー', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(363, 23, 'nl', 'Nieuwe leverancier gemaakt door {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(364, 23, 'pl', 'Nowy dostawca utworzony przez {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(365, 23, 'ru', 'Новый поставщик создан пользователем {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(366, 23, 'pt', 'Novo fornecedor criado por {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(367, 23, 'tr', '{ user_name } tarafından oluşturulan Yeni Satıcı', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(368, 23, 'pt-br', 'Novo fornecedor criado por {user_name}', '{\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Vendor Email\": \"vendor_email\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(369, 24, 'ar', 'تم إنشاء اقتراح جديد بواسطة {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(370, 24, 'zh', '{user_name} 创建的新建议', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(371, 24, 'da', 'Nyt forslag oprettet af {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(372, 24, 'de', 'Neues Angebot erstellt von {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(373, 24, 'en', 'New Proposal created by {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(374, 24, 'es', 'Nueva propuesta creada por {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(375, 24, 'fr', 'Nouvelle proposition créée par {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(376, 24, 'he', 'הצעה חדשה שנוצרה על-ידי {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(377, 24, 'it', 'Nuova proposta creata da {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(378, 24, 'ja', '{user_name} によって作成された新しい提案', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(379, 24, 'nl', 'Nieuw voorstel gemaakt door {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(380, 24, 'pl', 'Nowa propozycja utworzona przez użytkownika {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(381, 24, 'ru', 'Новое предложение, созданное {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(382, 24, 'pt', 'Nova proposta criada por {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(383, 24, 'tr', '{ user_name } tarafından oluşturulan Yeni Teklif', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(384, 24, 'pt-br', 'Nova proposta criada por {user_name}', '{\n                    \"Proposal Number\": \"proposal_number\",\n                    \"Company Name\": \"user_name\",\n                    \"Customer Name\": \"customer_name\",\n                    \"Proposal Issue Date\": \"proposal_issue_date\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(385, 25, 'ar', 'تم إنشاء دفعة جديدة بقيمة {payment_amount} لـ {vendor_name} بواسطة {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(386, 25, 'zh', '{payment_type} 为 {vendor_name} 创建了新的支付 { payment_金额}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(387, 25, 'da', 'Ny betaling på {payment_amount} oprettet for {vendor_name} af {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(388, 25, 'de', 'Neue Zahlung in Höhe von {payment_amount} erstellt für {vendor_name} von {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(389, 25, 'en', 'New payment of {payment_amount} created for {vendor_name} by {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(390, 25, 'es', 'Nuevo pago de {pago_cantidad} creado para {vendor_name} por {pago_tipo}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(391, 25, 'fr', 'Nouveau paiement de {payment_amount} créé pour {vendor_name} par {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(392, 25, 'he', 'תשלום חדש של {payment_מאונט} שנוצר עבור {vendor_name} על-ידי {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(393, 25, 'it', 'Nuovo pagamento di {payment_amount} creato per {vendor_name} da {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(394, 25, 'ja', '{payment_type} によって {vendor_name} に対して作成された {payment_mount} の新しい支払い', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(395, 25, 'nl', 'Nieuwe betaling van {payment_amount} gemaakt voor {vendor_name} door {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(396, 25, 'pl', 'Nowa płatność {payment_amount} utworzona dla {vendor_name} przez {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(397, 25, 'ru', 'Создан новый платеж {payment_amount} для {vendor_name} по {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(398, 25, 'pt', 'Novo pagamento de {payment_amount} criado para {vendor_name} por {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(399, 25, 'tr', '{ payment_type } tarafından { vendor_name } için yeni { payment_amount } ödemesi oluşturuldu', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(400, 25, 'pt-br', 'Novo pagamento de {payment_amount} criado para {vendor_name} por {payment_type}', '{\n                    \"Payment Amount\": \"payment_amount\",\n                    \"Vendor Name\": \"vendor_name\",\n                    \"Payment Type\": \"payment_type\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(401, 26, 'ar', 'تم إنشاء تذكير دفع جديد لـ {invoice_number} بواسطة {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(402, 26, 'zh', '{ user_name} 创建的 { invoice_number} 的新支付提醒', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(403, 26, 'da', 'Ny betalingspåmindelse om {invoice_number} oprettet af {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(404, 26, 'de', 'Neue Zahlungserinnerung von {invoice_number} erstellt von {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(405, 26, 'en', 'New Payment Reminder of {invoice_number} created by {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(406, 26, 'es', 'Nuevo recordatorio de pago de {invoice_number} creado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(407, 26, 'fr', 'Nouveau rappel de paiement de {invoice_number} créé par {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(408, 26, 'he', 'תזכורת חדשה לתשלום עבור {invoice_number} שנוצרה על-ידי {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(409, 26, 'it', 'Nuovo sollecito di pagamento di {invoice_number} creato da {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(410, 26, 'ja', '{user_name} によって作成された {invoice_number} の新しい支払い通知', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(411, 26, 'nl', 'Nieuwe betalingsherinnering van {invoice_number} gemaakt door {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(412, 26, 'pl', 'Nowe przypomnienie o płatności {invoice_number} utworzone przez użytkownika {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(413, 26, 'ru', 'Новое напоминание об оплате {invoice_number}, созданное {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(414, 26, 'pt', 'Novo lembrete de pagamento de {invoice_number} criado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(415, 26, 'tr', '{ user_name } tarafından oluşturulan { invoice_number } adlı yeni Ödeme Anımsatıcısı', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47'),
(416, 26, 'pt-br', 'Novo lembrete de pagamento de {invoice_number} criado por {user_name}', '{\n                    \"Customer Name\": \"customer_name\",\n                    \"Invoice Number\": \"invoice_number\",\n                    \"Company Name\": \"user_name\"\n                    }', 1, '2023-12-09 16:42:47', '2023-12-09 16:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `card_number` varchar(10) DEFAULT NULL,
  `card_exp_month` varchar(10) DEFAULT NULL,
  `card_exp_year` varchar(10) DEFAULT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_type` varchar(191) NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `chart_account_id` int(11) NOT NULL DEFAULT 0,
  `vender_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `recurring` varchar(191) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `add_receipt` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_types`
--

CREATE TABLE `payslip_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text NOT NULL,
  `commission` text NOT NULL,
  `loan` text NOT NULL,
  `saturation_deduction` text NOT NULL,
  `other_payment` text NOT NULL,
  `overtime` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_types`
--

CREATE TABLE `performance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show pos dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'show crm dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'show hrm dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'copy invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'show project dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'show account dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 'manage user', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 'create user', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 'edit user', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 'delete user', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 'create language', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 'manage role', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 'create role', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(14, 'edit role', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(15, 'delete role', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(16, 'manage permission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(17, 'create permission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(18, 'edit permission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(19, 'delete permission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(20, 'manage company settings', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(21, 'manage print settings', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(22, 'manage business settings', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(23, 'manage stripe settings', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(24, 'manage expense', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(25, 'create expense', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(26, 'edit expense', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(27, 'delete expense', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(28, 'manage invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(29, 'create invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(30, 'edit invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(31, 'delete invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(32, 'show invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(33, 'create payment invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(34, 'delete payment invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(35, 'send invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(36, 'delete invoice product', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(37, 'convert invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(38, 'manage constant unit', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(39, 'create constant unit', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(40, 'edit constant unit', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(41, 'delete constant unit', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(42, 'manage constant tax', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(43, 'create constant tax', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(44, 'edit constant tax', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(45, 'delete constant tax', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(46, 'manage constant category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(47, 'create constant category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(48, 'edit constant category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(49, 'delete constant category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(50, 'manage product & service', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(51, 'create product & service', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(52, 'edit product & service', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(53, 'delete product & service', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(54, 'manage customer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(55, 'create customer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(56, 'edit customer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(57, 'delete customer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(58, 'show customer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(59, 'manage vender', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(60, 'create vender', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(61, 'edit vender', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(62, 'delete vender', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(63, 'show vender', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(64, 'manage bank account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(65, 'create bank account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(66, 'edit bank account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(67, 'delete bank account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(68, 'manage bank transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(69, 'create bank transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(70, 'edit bank transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(71, 'delete bank transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(72, 'manage transaction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(73, 'manage revenue', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(74, 'create revenue', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(75, 'edit revenue', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(76, 'delete revenue', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(77, 'manage bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(78, 'create bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(79, 'edit bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(80, 'delete bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(81, 'show bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(82, 'manage payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(83, 'create payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(84, 'edit payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(85, 'delete payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(86, 'delete bill product', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(87, 'send bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(88, 'create payment bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(89, 'delete payment bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(90, 'manage order', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(91, 'income report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(92, 'expense report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(93, 'income vs expense report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(94, 'invoice report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(95, 'bill report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(96, 'stock report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(97, 'tax report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(98, 'loss & profit report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(99, 'manage customer payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(100, 'manage customer transaction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(101, 'manage customer invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(102, 'vender manage bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(103, 'manage vender bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(104, 'manage vender payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(105, 'manage vender transaction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(106, 'manage credit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(107, 'create credit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(108, 'edit credit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(109, 'delete credit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(110, 'manage debit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(111, 'create debit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(112, 'edit debit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(113, 'delete debit note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(114, 'duplicate invoice', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(115, 'duplicate bill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(116, 'manage proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(117, 'create proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(118, 'edit proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(119, 'delete proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(120, 'duplicate proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(121, 'show proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(122, 'send proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(123, 'delete proposal product', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(124, 'manage customer proposal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(125, 'manage goal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(126, 'create goal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(127, 'edit goal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(128, 'delete goal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(129, 'manage assets', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(130, 'create assets', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(131, 'edit assets', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(132, 'delete assets', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(133, 'statement report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(134, 'manage constant custom field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(135, 'create constant custom field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(136, 'edit constant custom field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(137, 'delete constant custom field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(138, 'manage chart of account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(139, 'create chart of account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(140, 'edit chart of account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(141, 'delete chart of account', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(142, 'manage journal entry', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(143, 'create journal entry', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(144, 'edit journal entry', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(145, 'delete journal entry', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(146, 'show journal entry', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(147, 'balance sheet report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(148, 'ledger report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(149, 'trial balance report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(150, 'manage client', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(151, 'create client', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(152, 'edit client', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(153, 'delete client', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(154, 'manage lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(155, 'create lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(156, 'view lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(157, 'edit lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(158, 'delete lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(159, 'move lead', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(160, 'create lead call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(161, 'edit lead call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(162, 'delete lead call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(163, 'create lead email', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(164, 'manage pipeline', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(165, 'create pipeline', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(166, 'edit pipeline', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(167, 'delete pipeline', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(168, 'manage lead stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(169, 'create lead stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(170, 'edit lead stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(171, 'delete lead stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(172, 'convert lead to deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(173, 'manage source', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(174, 'create source', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(175, 'edit source', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(176, 'delete source', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(177, 'manage label', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(178, 'create label', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(179, 'edit label', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(180, 'delete label', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(181, 'manage deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(182, 'create deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(183, 'view task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(184, 'create task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(185, 'edit task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(186, 'delete task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(187, 'edit deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(188, 'view deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(189, 'delete deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(190, 'move deal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(191, 'create deal call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(192, 'edit deal call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(193, 'delete deal call', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(194, 'create deal email', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(195, 'manage stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(196, 'create stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(197, 'edit stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(198, 'delete stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(199, 'manage employee', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(200, 'create employee', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(201, 'view employee', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(202, 'edit employee', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(203, 'delete employee', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(204, 'manage employee profile', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(205, 'show employee profile', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(206, 'manage department', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(207, 'create department', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(208, 'view department', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(209, 'edit department', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(210, 'delete department', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(211, 'manage designation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(212, 'create designation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(213, 'view designation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(214, 'edit designation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(215, 'delete designation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(216, 'manage branch', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(217, 'create branch', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(218, 'edit branch', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(219, 'delete branch', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(220, 'manage document type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(221, 'create document type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(222, 'edit document type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(223, 'delete document type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(224, 'manage document', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(225, 'create document', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(226, 'edit document', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(227, 'delete document', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(228, 'manage payslip type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(229, 'create payslip type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(230, 'edit payslip type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(231, 'delete payslip type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(232, 'create allowance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(233, 'edit allowance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(234, 'delete allowance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(235, 'create commission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(236, 'edit commission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(237, 'delete commission', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(238, 'manage allowance option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(239, 'create allowance option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(240, 'edit allowance option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(241, 'delete allowance option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(242, 'manage loan option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(243, 'create loan option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(244, 'edit loan option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(245, 'delete loan option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(246, 'manage deduction option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(247, 'create deduction option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(248, 'edit deduction option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(249, 'delete deduction option', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(250, 'create loan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(251, 'edit loan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(252, 'delete loan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(253, 'create saturation deduction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(254, 'edit saturation deduction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(255, 'delete saturation deduction', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(256, 'create other payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(257, 'edit other payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(258, 'delete other payment', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(259, 'create overtime', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(260, 'edit overtime', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(261, 'delete overtime', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(262, 'manage set salary', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(263, 'edit set salary', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(264, 'manage pay slip', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(265, 'create set salary', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(266, 'create pay slip', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(267, 'manage company policy', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(268, 'create company policy', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(269, 'edit company policy', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(270, 'manage appraisal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(271, 'create appraisal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(272, 'edit appraisal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(273, 'show appraisal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(274, 'delete appraisal', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(275, 'manage goal tracking', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(276, 'create goal tracking', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(277, 'edit goal tracking', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(278, 'delete goal tracking', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(279, 'manage goal type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(280, 'create goal type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(281, 'edit goal type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(282, 'delete goal type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(283, 'manage indicator', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(284, 'create indicator', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(285, 'edit indicator', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(286, 'show indicator', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(287, 'delete indicator', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(288, 'manage training', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(289, 'create training', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(290, 'edit training', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(291, 'delete training', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(292, 'show training', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(293, 'manage trainer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(294, 'create trainer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(295, 'edit trainer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(296, 'delete trainer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(297, 'manage training type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(298, 'create training type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(299, 'edit training type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(300, 'delete training type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(301, 'manage award', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(302, 'create award', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(303, 'edit award', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(304, 'delete award', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(305, 'manage award type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(306, 'create award type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(307, 'edit award type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(308, 'delete award type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(309, 'manage resignation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(310, 'create resignation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(311, 'edit resignation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(312, 'delete resignation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(313, 'manage travel', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(314, 'create travel', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(315, 'edit travel', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(316, 'delete travel', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(317, 'manage promotion', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(318, 'create promotion', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(319, 'edit promotion', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(320, 'delete promotion', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(321, 'manage complaint', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(322, 'create complaint', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(323, 'edit complaint', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(324, 'delete complaint', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(325, 'manage warning', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(326, 'create warning', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(327, 'edit warning', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(328, 'delete warning', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(329, 'manage termination', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(330, 'create termination', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(331, 'edit termination', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(332, 'delete termination', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(333, 'manage termination type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(334, 'create termination type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(335, 'edit termination type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(336, 'delete termination type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(337, 'manage job application', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(338, 'create job application', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(339, 'show job application', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(340, 'delete job application', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(341, 'move job application', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(342, 'add job application skill', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(343, 'add job application note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(344, 'delete job application note', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(345, 'manage job onBoard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(346, 'manage job category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(347, 'create job category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(348, 'edit job category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(349, 'delete job category', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(350, 'manage job', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(351, 'create job', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(352, 'edit job', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(353, 'show job', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(354, 'delete job', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(355, 'manage job stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(356, 'create job stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(357, 'edit job stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(358, 'delete job stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(359, 'Manage Competencies', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(360, 'Create Competencies', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(361, 'Edit Competencies', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(362, 'Delete Competencies', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(363, 'manage custom question', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(364, 'create custom question', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(365, 'edit custom question', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(366, 'delete custom question', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(367, 'create interview schedule', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(368, 'edit interview schedule', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(369, 'delete interview schedule', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(370, 'show interview schedule', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(371, 'create estimation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(372, 'view estimation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(373, 'edit estimation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(374, 'delete estimation', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(375, 'edit holiday', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(376, 'create holiday', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(377, 'delete holiday', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(378, 'manage holiday', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(379, 'show career', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(380, 'manage meeting', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(381, 'create meeting', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(382, 'edit meeting', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(383, 'delete meeting', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(384, 'manage event', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(385, 'create event', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(386, 'edit event', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(387, 'delete event', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(388, 'manage transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(389, 'create transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(390, 'edit transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(391, 'delete transfer', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(392, 'manage announcement', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(393, 'create announcement', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(394, 'edit announcement', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(395, 'delete announcement', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(396, 'manage leave', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(397, 'create leave', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(398, 'edit leave', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(399, 'delete leave', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(400, 'manage leave type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(401, 'create leave type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(402, 'edit leave type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(403, 'delete leave type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(404, 'manage attendance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(405, 'create attendance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(406, 'edit attendance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(407, 'delete attendance', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(408, 'manage report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(409, 'manage project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(410, 'create project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(411, 'view project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(412, 'edit project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(413, 'delete project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(414, 'share project', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(415, 'create milestone', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(416, 'edit milestone', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(417, 'delete milestone', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(418, 'view milestone', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(419, 'view grant chart', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(420, 'manage project stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(421, 'create project stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(422, 'edit project stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(423, 'delete project stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(424, 'view timesheet', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(425, 'view expense', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(426, 'manage project task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(427, 'create project task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(428, 'edit project task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(429, 'view project task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(430, 'delete project task', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(431, 'view activity', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(432, 'view CRM activity', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(433, 'manage project task stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(434, 'edit project task stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(435, 'create project task stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(436, 'delete project task stage', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(437, 'manage timesheet', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(438, 'create timesheet', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(439, 'edit timesheet', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(440, 'delete timesheet', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(441, 'manage bug report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(442, 'create bug report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(443, 'edit bug report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(444, 'delete bug report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(445, 'move bug report', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(446, 'manage bug status', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(447, 'create bug status', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(448, 'edit bug status', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(449, 'delete bug status', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(450, 'manage client dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(451, 'manage super admin dashboard', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(452, 'manage system settings', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(453, 'manage plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(454, 'create plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(455, 'edit plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(456, 'manage coupon', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(457, 'create coupon', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(458, 'edit coupon', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(459, 'delete coupon', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(460, 'manage company plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(461, 'buy plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(462, 'manage form builder', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(463, 'create form builder', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(464, 'edit form builder', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(465, 'delete form builder', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(466, 'manage performance type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(467, 'create performance type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(468, 'edit performance type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(469, 'delete performance type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(470, 'manage form field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(471, 'create form field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(472, 'edit form field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(473, 'delete form field', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(474, 'view form response', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(475, 'create budget plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(476, 'edit budget plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(477, 'manage budget plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(478, 'delete budget plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(479, 'view budget plan', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(480, 'manage warehouse', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(481, 'create warehouse', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(482, 'edit warehouse', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(483, 'show warehouse', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(484, 'delete warehouse', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(485, 'manage purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(486, 'create purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(487, 'edit purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(488, 'show purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(489, 'delete purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(490, 'send purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(491, 'create payment purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(492, 'delete payment purchase', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(493, 'manage pos', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(494, 'manage contract type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(495, 'create contract type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(496, 'edit contract type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(497, 'delete contract type', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(498, 'manage contract', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(499, 'create contract', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(500, 'edit contract', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(501, 'delete contract', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(502, 'show contract', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(503, 'create barcode', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(504, 'create webhook', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(505, 'edit webhook', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(506, 'delete webhook', 'web', '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pipelines`
--

CREATE TABLE `pipelines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipelines`
--

INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sales', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pos_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `warehouse_id` int(11) NOT NULL DEFAULT 0,
  `pos_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_payments`
--

CREATE TABLE `pos_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pos_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` double(8,2) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_products`
--

CREATE TABLE `pos_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pos_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(191) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) DEFAULT 0.00,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_services`
--

CREATE TABLE `product_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `sku` varchar(191) NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_id` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `unit_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL,
  `sale_chartaccount_id` int(11) NOT NULL DEFAULT 0,
  `expense_chartaccount_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `pro_image` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_categories`
--

CREATE TABLE `product_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT '0',
  `chart_account_id` int(11) NOT NULL DEFAULT 0,
  `color` varchar(191) NOT NULL DEFAULT '#fc544b',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service_units`
--

CREATE TABLE `product_service_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(191) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(191) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `estimated_hrs` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `copylinksetting` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectstages`
--

CREATE TABLE `projectstages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(15) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_email_templates`
--

CREATE TABLE `project_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_invoices`
--

CREATE TABLE `project_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_tasks`
--

CREATE TABLE `project_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `estimated_hrs` int(11) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) DEFAULT NULL,
  `assign_to` text DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_favourite` int(11) NOT NULL DEFAULT 0,
  `is_complete` int(11) NOT NULL DEFAULT 0,
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `designation_id` int(11) NOT NULL DEFAULT 0,
  `promotion_title` varchar(191) DEFAULT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `is_convert` int(11) NOT NULL DEFAULT 0,
  `converted_invoice_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal_products`
--

CREATE TABLE `proposal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(50) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_number` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `add_receipt` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(50) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `add_receipt` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'customer', 'web', 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'vender', 'web', 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'company', 'web', 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'accountant', 'web', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 'client', 'web', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(6, 5),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(21, 5),
(22, 4),
(24, 4),
(24, 5),
(25, 4),
(25, 5),
(26, 4),
(26, 5),
(27, 4),
(27, 5),
(28, 4),
(28, 5),
(29, 4),
(29, 5),
(30, 4),
(30, 5),
(31, 4),
(31, 5),
(32, 2),
(32, 4),
(32, 5),
(33, 4),
(33, 5),
(34, 4),
(34, 5),
(35, 4),
(35, 5),
(36, 4),
(36, 5),
(37, 4),
(37, 5),
(38, 4),
(38, 5),
(39, 4),
(39, 5),
(40, 4),
(40, 5),
(41, 4),
(41, 5),
(42, 4),
(42, 5),
(43, 4),
(43, 5),
(44, 4),
(44, 5),
(45, 4),
(45, 5),
(46, 4),
(46, 5),
(47, 4),
(47, 5),
(48, 4),
(48, 5),
(49, 4),
(49, 5),
(50, 4),
(50, 5),
(51, 4),
(51, 5),
(52, 4),
(52, 5),
(53, 4),
(53, 5),
(54, 4),
(54, 5),
(55, 4),
(55, 5),
(56, 4),
(56, 5),
(57, 4),
(57, 5),
(58, 2),
(58, 4),
(58, 5),
(59, 4),
(59, 5),
(60, 4),
(60, 5),
(61, 4),
(61, 5),
(62, 4),
(62, 5),
(63, 3),
(63, 4),
(63, 5),
(64, 4),
(64, 5),
(65, 4),
(65, 5),
(66, 4),
(66, 5),
(67, 4),
(67, 5),
(68, 4),
(68, 5),
(69, 4),
(69, 5),
(70, 4),
(70, 5),
(71, 4),
(71, 5),
(72, 4),
(72, 5),
(73, 4),
(73, 5),
(74, 4),
(74, 5),
(75, 4),
(75, 5),
(76, 4),
(76, 5),
(77, 4),
(77, 5),
(78, 4),
(78, 5),
(79, 4),
(79, 5),
(80, 4),
(80, 5),
(81, 3),
(81, 4),
(81, 5),
(82, 4),
(82, 5),
(83, 4),
(83, 5),
(84, 4),
(84, 5),
(85, 4),
(85, 5),
(86, 4),
(86, 5),
(87, 4),
(87, 5),
(88, 4),
(88, 5),
(89, 4),
(89, 5),
(90, 4),
(91, 4),
(91, 5),
(92, 4),
(92, 5),
(93, 4),
(93, 5),
(94, 4),
(94, 5),
(95, 4),
(95, 5),
(96, 4),
(96, 5),
(97, 4),
(97, 5),
(98, 4),
(98, 5),
(99, 2),
(100, 2),
(101, 2),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 4),
(106, 5),
(107, 4),
(107, 5),
(108, 4),
(108, 5),
(109, 4),
(109, 5),
(110, 4),
(110, 5),
(111, 4),
(111, 5),
(112, 4),
(112, 5),
(113, 4),
(113, 5),
(114, 4),
(115, 4),
(116, 4),
(116, 5),
(117, 4),
(117, 5),
(118, 4),
(118, 5),
(119, 4),
(119, 5),
(120, 4),
(120, 5),
(121, 2),
(121, 4),
(121, 5),
(122, 4),
(122, 5),
(123, 4),
(123, 5),
(124, 2),
(125, 4),
(125, 5),
(126, 4),
(126, 5),
(127, 4),
(127, 5),
(128, 4),
(128, 5),
(129, 4),
(129, 5),
(130, 4),
(130, 5),
(131, 4),
(131, 5),
(132, 4),
(132, 5),
(133, 4),
(133, 5),
(134, 4),
(134, 5),
(135, 4),
(135, 5),
(136, 4),
(136, 5),
(137, 4),
(137, 5),
(138, 4),
(138, 5),
(139, 4),
(139, 5),
(140, 4),
(140, 5),
(141, 4),
(141, 5),
(142, 4),
(142, 5),
(143, 4),
(143, 5),
(144, 4),
(144, 5),
(145, 4),
(145, 5),
(146, 4),
(146, 5),
(147, 4),
(147, 5),
(148, 4),
(148, 5),
(149, 4),
(149, 5),
(150, 4),
(151, 4),
(152, 4),
(153, 4),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(164, 6),
(165, 4),
(166, 4),
(167, 4),
(168, 4),
(168, 6),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(173, 6),
(174, 4),
(175, 4),
(176, 4),
(177, 4),
(177, 6),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(181, 6),
(182, 4),
(183, 4),
(183, 6),
(184, 4),
(185, 4),
(186, 4),
(187, 4),
(188, 4),
(188, 6),
(189, 4),
(190, 4),
(190, 6),
(191, 4),
(192, 4),
(193, 4),
(194, 4),
(195, 4),
(195, 6),
(196, 4),
(197, 4),
(198, 4),
(199, 4),
(200, 4),
(201, 4),
(202, 4),
(203, 4),
(204, 4),
(205, 4),
(206, 4),
(207, 4),
(208, 4),
(209, 4),
(210, 4),
(211, 4),
(212, 4),
(213, 4),
(214, 4),
(215, 4),
(216, 4),
(217, 4),
(218, 4),
(219, 4),
(220, 4),
(221, 4),
(222, 4),
(223, 4),
(224, 4),
(225, 4),
(226, 4),
(227, 4),
(228, 4),
(229, 4),
(230, 4),
(231, 4),
(232, 4),
(233, 4),
(234, 4),
(235, 4),
(236, 4),
(237, 4),
(238, 4),
(239, 4),
(240, 4),
(241, 4),
(242, 4),
(243, 4),
(244, 4),
(245, 4),
(246, 4),
(247, 4),
(248, 4),
(249, 4),
(250, 4),
(251, 4),
(252, 4),
(253, 4),
(254, 4),
(255, 4),
(256, 4),
(257, 4),
(258, 4),
(259, 4),
(260, 4),
(261, 4),
(262, 4),
(263, 4),
(264, 4),
(265, 4),
(266, 4),
(267, 4),
(268, 4),
(269, 4),
(270, 4),
(271, 4),
(272, 4),
(273, 4),
(274, 4),
(275, 4),
(276, 4),
(277, 4),
(278, 4),
(279, 4),
(280, 4),
(281, 4),
(282, 4),
(283, 4),
(284, 4),
(285, 4),
(286, 4),
(287, 4),
(288, 4),
(289, 4),
(290, 4),
(291, 4),
(292, 4),
(293, 4),
(294, 4),
(295, 4),
(296, 4),
(297, 4),
(298, 4),
(299, 4),
(300, 4),
(301, 4),
(302, 4),
(303, 4),
(304, 4),
(305, 4),
(306, 4),
(307, 4),
(308, 4),
(309, 4),
(310, 4),
(311, 4),
(312, 4),
(313, 4),
(314, 4),
(315, 4),
(316, 4),
(317, 4),
(318, 4),
(319, 4),
(320, 4),
(321, 4),
(322, 4),
(323, 4),
(324, 4),
(325, 4),
(326, 4),
(327, 4),
(328, 4),
(329, 4),
(330, 4),
(331, 4),
(332, 4),
(333, 4),
(334, 4),
(335, 4),
(336, 4),
(337, 4),
(338, 4),
(339, 4),
(340, 4),
(341, 4),
(342, 4),
(343, 4),
(344, 4),
(345, 4),
(346, 4),
(347, 4),
(348, 4),
(349, 4),
(350, 4),
(351, 4),
(352, 4),
(353, 4),
(354, 4),
(355, 4),
(356, 4),
(357, 4),
(358, 4),
(359, 4),
(360, 4),
(361, 4),
(362, 4),
(363, 4),
(364, 4),
(365, 4),
(366, 4),
(367, 4),
(368, 4),
(369, 4),
(370, 4),
(371, 4),
(372, 4),
(373, 4),
(374, 4),
(375, 4),
(376, 4),
(377, 4),
(378, 4),
(379, 4),
(380, 4),
(381, 4),
(382, 4),
(383, 4),
(384, 4),
(385, 4),
(386, 4),
(387, 4),
(388, 4),
(389, 4),
(390, 4),
(391, 4),
(392, 4),
(393, 4),
(394, 4),
(395, 4),
(396, 4),
(397, 4),
(398, 4),
(399, 4),
(400, 4),
(401, 4),
(402, 4),
(403, 4),
(404, 4),
(405, 4),
(406, 4),
(407, 4),
(408, 4),
(409, 4),
(409, 6),
(410, 4),
(411, 4),
(411, 6),
(412, 4),
(413, 4),
(414, 4),
(415, 4),
(416, 4),
(417, 4),
(418, 4),
(419, 4),
(419, 6),
(420, 4),
(421, 4),
(422, 4),
(423, 4),
(424, 4),
(424, 6),
(425, 4),
(426, 4),
(426, 6),
(427, 4),
(427, 6),
(428, 4),
(428, 6),
(429, 4),
(429, 6),
(430, 4),
(430, 6),
(431, 4),
(431, 6),
(432, 4),
(433, 4),
(434, 4),
(435, 4),
(436, 4),
(437, 4),
(437, 6),
(438, 4),
(439, 4),
(440, 4),
(441, 4),
(441, 6),
(442, 4),
(442, 6),
(443, 4),
(443, 6),
(444, 4),
(444, 6),
(445, 4),
(445, 6),
(446, 4),
(447, 4),
(448, 4),
(449, 4),
(450, 6),
(453, 4),
(460, 4),
(461, 4),
(462, 4),
(463, 4),
(464, 4),
(465, 4),
(466, 4),
(467, 4),
(468, 4),
(469, 4),
(470, 4),
(471, 4),
(472, 4),
(473, 4),
(474, 4),
(475, 4),
(475, 5),
(476, 4),
(476, 5),
(477, 4),
(477, 5),
(478, 4),
(478, 5),
(479, 4),
(479, 5),
(480, 4),
(481, 4),
(482, 4),
(483, 4),
(484, 4),
(485, 4),
(486, 4),
(487, 4),
(488, 4),
(489, 4),
(490, 4),
(491, 4),
(492, 4),
(493, 4),
(494, 4),
(495, 4),
(496, 4),
(497, 4),
(498, 4),
(498, 6),
(499, 4),
(500, 4),
(501, 4),
(502, 4),
(502, 6),
(503, 4),
(503, 5),
(504, 4),
(504, 5),
(505, 4),
(505, 5),
(506, 4),
(506, 5);

-- --------------------------------------------------------

--
-- Table structure for table `saturation_deductions`
--

CREATE TABLE `saturation_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'local_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(2, 'wasabi_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(3, 's3_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(4, 'local_storage_max_upload_size', '2048000', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(5, 'wasabi_max_upload_size', '2048000', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(6, 's3_max_upload_size', '2048000', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(7, 'company_logo_dark', 'logo-dark.png', 1, NULL, NULL),
(8, 'company_logo_light', 'logo-light.png', 1, NULL, NULL),
(9, 'company_favicon', 'favicon.png', 1, NULL, NULL),
(10, 'title_text', NULL, 1, NULL, NULL),
(11, 'footer_text', NULL, 1, NULL, NULL),
(12, 'default_language', 'en', 1, NULL, NULL),
(13, 'display_landing_page', 'off', 1, NULL, NULL),
(14, 'cust_theme_bg', 'on', 1, NULL, NULL),
(15, 'SITE_RTL', 'off', 1, NULL, NULL),
(16, 'gdpr_cookie', 'off', 1, NULL, NULL),
(17, 'cust_darklayout', 'off', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `set_salaries`
--

CREATE TABLE `set_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Websites', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Facebook', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Naukari.com', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Phone', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'LinkedIn', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Draft', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'Sent', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Open', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Revised', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 'Declined', 1, 1, 0, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `stock_reports`
--

CREATE TABLE `stock_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 0,
  `priority` varchar(191) NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '0',
  `attachment` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_replies`
--

CREATE TABLE `support_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_checklists`
--

CREATE TABLE `task_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `extension` varchar(191) NOT NULL,
  `file_size` varchar(191) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_stages`
--

CREATE TABLE `task_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT 0,
  `project_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `color` varchar(15) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_stages`
--

INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'To Do', 0, 0, NULL, 0, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 'In Progress', 0, 0, NULL, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'Review', 0, 0, NULL, 2, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 'Done', 0, 0, NULL, 3, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `rate` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(191) NOT NULL,
  `prompt` text NOT NULL,
  `module` varchar(191) NOT NULL,
  `field_json` text NOT NULL,
  `is_tone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `template_name`, `prompt`, `module`, `field_json`, `is_tone`, `created_at`, `updated_at`) VALUES
(1, 'leave_reason', 'Generate a comma-separated string of common leave reasons that employees may provide to their employers. Include both personal and professional reasons for taking leave, such only ##type## . Aim to generate a diverse range of leave reasons that can be used in different situations. Please provide a comprehensive and varied list of leave reasons that can help employers understand and accommodate their employees\' needs.', 'leave', '{\"field\":[{\"label\":\"Leave Type\",\"placeholder\":\"e.g.illness, family emergencies,vacation\",\"field_type\":\"text_box\",\"field_name\":\"type\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(2, 'subject', 'Generate a goal subject for an employee\'s goal related type to ##type##.', 'goal tracking', '{\"field\":[{\"label\":\"Goal Type\",\"placeholder\":\"e.g.invoice, production,hiring\",\"field_type\":\"text_box\",\"field_name\":\"type\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(3, 'description', 'Generate a goal descriptions for an employee\'s goal title is ##title##.', 'goal tracking', '{\"field\":[{\"label\":\"Goal Title\",\"placeholder\":\"e.g.Invoice Accuracy\",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(4, 'description', 'Generate a job training descriptions for a ##position## position. The training description should include responsibilities such as ##responsibilities##. Please ensure the descriptions are concise, informative, and accurately reflect the key responsibilities of a ##position##.', 'training', '{\"field\":[{\"label\":\"Position\",\"placeholder\":\"job training descriptions\",\"field_type\":\"text_box\",\"field_name\":\"position\"},{\"label\":\"Responsibilities\",\"placeholder\":\"Managing training logistics\",\"field_type\":\"textarea\",\"field_name\":\"responsibilities\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(5, 'title', 'Generate a list of job titles commonly found in an ##work_place##. The job titles should cover a range of roles and responsibilities within the field of ##field##. Include positions such as ##positions##. Please provide a diverse selection of job titles that accurately reflect the various positions found in an ##work_place##.', 'job', '{\"field\":[{\"label\":\"Work Place\",\"placeholder\":\"e.g.IT Company,hospital\",\"field_type\":\"text_box\",\"field_name\":\"work_place\"},{\"label\":\"Field \",\"placeholder\":\"e.g.Backend\",\"field_type\":\"text_box\",\"field_name\":\"field\"},{\"label\":\"Positions\",\"placeholder\":\"e.g.developer,tester\",\"field_type\":\"text_box\",\"field_name\":\"positions\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(6, 'description', 'Generate a job descriptions for a ##position## position. The job description should include responsibilities such as ##responsibilities##. Please ensure the descriptions are concise, informative, and accurately reflect the key responsibilities of a ##position##.', 'job', '{\"field\":[{\"label\":\"Position\",\"placeholder\":\"job for a position\",\"field_type\":\"text_box\",\"field_name\":\"position\"},{\"label\":\"Responsibilities\",\"placeholder\":\"\",\"field_type\":\"textarea\",\"field_name\":\"responsibilities\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(7, 'requirement', 'Generate a comma-separated string of job requirements for a ##position## position. The requirements should include ##description##. Please provide the requirements in a comma-separated string format.', 'job', '{\"field\":[{\"label\":\"Position\",\"placeholder\":\"requirement of job\",\"field_type\":\"text_box\",\"field_name\":\"position\"},{\"label\":\"Description\",\"placeholder\":\"\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(8, 'description', 'Generate a description for presenting the Award. The description should highlight ##reasons##. Emphasize the significance of the  Award as a symbol of recognition for employee\'s remarkable accomplishments and its representation of her \'##reasons##\' and impact on the organization. Please create a personalized and engaging description that conveys appreciation, pride, and gratitude for employee\'s contributions to the company\'s sucess', 'award', '{\"field\":[{\"label\":\"Award reasons\",\"placeholder\":\"e.g.skilled, focused ,efficiency\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(9, 'description', 'Generate a list of common reasons for employee transfers within an organization. Include reasons such as ##reasons##. Please provide a comprehensive and varied list of reasons that can help employers understand and address employee transfer situations effectively.', 'transfer', '{\"field\":[{\"label\":\"Transfer reasons\",\"placeholder\":\"e.g.career development,special projects or initiatives\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(10, 'description', 'Generate a description why an employee might choose to resign and request a transfer to another location within the company. Include both professional and personal reasons that could contribute to this decision. Examples may include ##reasons##. Aim to provide a comprehensive and varied description that can help employers understand and accommodate employees\' needs when considering a transfer request', 'resignation', '{\"field\":[{\"label\":\"Resignation reasons\",\"placeholder\":\"e.g.career development,health issues\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(11, 'description', 'Generate a description for organizing a company trip. The trip aims to ##aims## . Please provide a diverse description that highlight the benefits and positive outcomes associated with organizing a company trip. Focus on creating an engaging and enjoyable experience for employees while also achieving business objectives and cultivating a positive work environment.', 'travel', '{\"field\":[{\"label\":\"Aims\",\"placeholder\":\"e.g.career development,health issues\",\"field_type\":\"textarea\",\"field_name\":\"aims\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(12, 'promotion_title', 'Generate a list of promotion title suggestions for an ##role##. The promotion titles should reflect ##reasons##, and recognition of the ##role##\'s accomplishments. Please provide a diverse range of promotion titles that align with ##role## job roles and levels within the company. Aim to create titles that are both professional and descriptive, highlighting the ##role##\'s progression and impact within the organization.', 'promotion', '{\"field\":[{\"label\":\"Job\",\"placeholder\":\"e.g.doctor, developer\",\"field_type\":\"text_box\",\"field_name\":\"role\"},{\"label\":\"Promotion Reasons\",\"placeholder\":\"e.g.increased responsibility, higher position\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(13, 'description', 'Generate a promotion description for this title:##title##. ', 'promotion', '{\"field\":[{\"label\":\"Promotion Title\",\"placeholder\":\"e.g.Medical Director\",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(14, 'title', 'Generate a list of titles for complaints related to employee and company issues. ##reasons##. Please provide a range of titles that accurately reflect common complaint categories, ensuring they are concise, descriptive, and effective in conveying the nature of the complaint. ', 'complaint', '{\"field\":[{\"label\":\"Complaint reasons\",\"placeholder\":\"e.g.unprofessional behavior, harassment,\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(15, 'description', 'Generate a Complaint description for this title:##title##. ', 'complaint', '{\"field\":[{\"label\":\"Complaint Title\",\"placeholder\":\"e.g.Unprofessional Behavior Complaint\",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(16, 'description', 'Generate a warning description for an employee who consistently ##reasons##. The warning should address the employee\'s ##reasons##, including further disciplinary action or termination of employment. Please provide a clear and firm warning message that encourages the employee to review the policy and make immediate improvements.', 'warning', '{\"field\":[{\"label\":\"Warning reasons\",\"placeholder\":\"e.g.break attendance policy\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(17, 'description', 'Generate a termination description for  the reason :##reason##. The description should convey the company\'s regret over the decision and outline the specific concerns, such as ##reasons##. Please provide a clear and professional message that explains the decision while expressing appreciation for the employee\'s contributions. Aim to offer guidance for personal and professional growth and provide necessary instructions regarding final paycheck and return of company property.', 'termination', '{\"field\":[{\"label\":\"Termination reasons\",\"placeholder\":\"e.g.Poor Performance\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(18, 'description', 'Generate an announcement title for ##reasons##. The title should be attention-grabbing and informative, effectively conveying the key message to the intended audience. Please ensure the title is appropriate for the given situation, whether it\'s about a ##reasons##. Aim to create a title that captures the essence of the announcement and sparks interest or curiosity among the readers.', 'announcement', '{\"field\":[{\"label\":\"Announcement reasons\",\"placeholder\":\"e.g.Growth Opportunities\",\"field_type\":\"textarea\",\"field_name\":\"reasons\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(19, 'occasion', 'Generate a list of holiday occasions for celebrations and gatherings. The occasions should cover a variety of holidays and events throughout the year, such as ##name##. Please provide a diverse range of occasions that can be used for hosting parties, organizing special events, or planning festive activities. Aim to offer unique and creative ideas that cater to different cultures, traditions, and preferences.', 'holiday', '{\"field\":[{\"label\":\"Any Specific occasions\",\"placeholder\":\"e.g.Cultural Celebration\",\"field_type\":\"text_box\",\"field_name\":\"name\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(20, 'title', 'Generate a creative and engaging event title for an upcoming event. The event can be a ##type##. Please focus on creating a title that captures the essence of the event, sparks curiosity, and encourages attendance. Aim to make the title memorable, intriguing, and aligned with the purpose and theme of the event. Consider the target audience, event objectives, and any specific keywords or ideas you would like to incorporate', 'event', '{\"field\":[{\"label\":\"Specific type of event\",\"placeholder\":\"e.g.conference, workshop, seminar\",\"field_type\":\"text_box\",\"field_name\":\"name\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(21, 'title', 'Generate a meeting title that is catchy and informative. The title should effectively convey the purpose and focus of the meeting, whether it\'s for ##purpose##. Please aim to create a title that grabs the attention of participants, reflects the importance of the meeting, and provides a clear understanding of what will be discussed or accomplished during the session.', 'meeting', '{\"field\":[{\"label\":\"Meeting purpose\",\"placeholder\":\"e.g.conference, workshop\",\"field_type\":\"textarea\",\"field_name\":\"purpose\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(22, 'description', 'Generate a descriptive response for a given ##title##. The response should be detailed, engaging, and informative, providing relevant information and capturing the reader\'s interest', 'account asset', '{\"field\":[{\"label\":\"Asset name\",\"placeholder\":\"HR may provide some devices \",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(23, 'description', 'Generate a description based on a given document name:##name##. The document name: ##name## represents a specific file or document, and you need a descriptive summary or overview of its contents. Please provide a clear and concise description that captures the main points, purpose, or key information contained within the document. Aim to create a brief but informative description that gives the reader an understanding of what they can expect when accessing or reviewing the document.', 'document', '{\"field\":[{\"label\":\"Asset name\",\"placeholder\":\"e.g. Employee handbook\",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(24, 'title', 'Generate a suitable title for the company policy regarding ##description##. The title should be clear, concise, and informative, effectively conveying the purpose and scope of the policy. Please ensure that the title reflects the importance of ##description##. Aim to create a title that is professional, easily understandable, and aligned with the company\'s culture and values.', 'company policy', '{\"field\":[{\"label\":\"Description of policy\",\"placeholder\":\"e.g.Leave policies,Performance management\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(25, 'description', 'generate description for this title ##title##', 'chart of account', '{\"field\":[{\"label\":\" Title \",\"placeholder\":\"e.g.Accounts Receivable,Office Equipment\",\"field_type\":\"textarea\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(26, 'description', 'generate description for this title ##title##', 'journal entry', '{\"field\":[{\"label\":\" Title \",\"placeholder\":\"e.g.Accounts Receivable,Office Equipment\",\"field_type\":\"textarea\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(27, 'subject', 'Generate a lead subject line for a marketing campaign targeting potential customers for a software development company specializing in web and mobile applications.', 'lead', '{\"field\":[{\"label\":\"Description\",\"placeholder\":\"e.g. Leads represent potential sales opportunities for a business\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(28, 'name', 'generate deal name for this proposal description ##description##', 'deal', '{\"field\":[{\"label\":\"Proposal Description\",\"placeholder\":\"e.g.Collaboration and Partnerships\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(29, 'subject', 'generate contract subject for this contract description ##description##', 'contract', '{\"field\":[{\"label\":\"Proposal Description\",\"placeholder\":\"e.g.Terms and Conditions\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(30, 'description', 'generate contract description for this contract subject ##subject##', 'contract', '{\"field\":[{\"label\":\"Contract Subject\",\"placeholder\":\"e.g.Legal Protection,Terms and Conditions\",\"field_type\":\"textarea\",\"field_name\":\"subject\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(31, 'project_name', 'Create creative product names:  ##description## \n\nSeed words: ##keywords## \n\n', 'project', '{\"field\":[{\"label\":\"Project Description\",\"placeholder\":\"e.g.Efficiency and Optimization,Business Growth and Expansion\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(32, 'name', 'Generate a task name for a project in an ##project_name##, specifically related to ##instruction##.', 'project task', '{\"field\":[{\"label\":\"Project name\",\"placeholder\":\"e.g.Solving Problems\",\"field_type\":\"text_box\",\"field_name\":\"project_name\"},{\"label\":\"Task Instruction\",\"placeholder\":\"e.g.Data Analysis\",\"field_type\":\"textarea\",\"field_name\":\"instruction\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(33, 'title', 'Generate a milestone name for a ##project_name##,specifically related to ##instruction##.', 'project milestone', '{\"field\":[{\"label\":\"Milestone Description\",\"placeholder\":\"e.g.Design Approved\",\"field_type\":\"textarea\",\"field_name\":\"description\"},{\"label\":\" Instruction\",\"placeholder\":\"e.g. incorporated feedback and revisions\",\"field_type\":\"textarea\",\"field_name\":\"instruction\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(34, 'title', 'You are a software developer working on a platform or service, and you\'re experiencing a bug where ##description##. You need to come up with a descriptive bug title for this issue. Please generate a few bug titles that could be used to report this problem.', 'project bug', '{\"field\":[{\"label\":\"Description of Bug\",\"placeholder\":\"e.g.identify bugs and issues\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(35, 'description', 'Write a long creative product description for: ##title## \n\nTarget audience is: ##audience## \n\nUse this description: ##description## \n\nTone of generated text must be:\n ##tone_language## \n\n', 'productservice', '{\"field\":[{\"label\":\"Product name\",\"placeholder\":\"e.g. VR, Honda\",\"field_type\":\"text_box\",\"field_name\":\"title\"},{\"label\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\",\"field_type\":\"text_box\",\"field_name\":\"audience\"},{\"label\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(36, 'name', 'generate warehouse name for ##description##', 'warehouse', '{\"field\":[{\"label\":\" Description \",\"placeholder\":\"e.g. North Warehouse\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(37, 'subject', 'generate example of  subject for bug in ecommerce base website support ticket', 'support', '{\"field\":[{\"label\":\"Ticket Description of Bug\",\"placeholder\":\"e.g.Bug Summary\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(38, 'description', 'generate support ticket description of  subject for ##subject## ', 'support', '{\"field\":[{\"label\":\"Ticket Subject\",\"placeholder\":\"e.g.Error Message Displayed\",\"field_type\":\"textarea\",\"field_name\":\"subject\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(39, 'title', 'Generate a list of Zoom meeting topics for ##description## metting. The purpose of the meeting is to  ##description##. Structure the topics to ensure a productive discussion.', 'zoom meeting', '{\"field\":[{\"label\":\"Meeting description \",\"placeholder\":\"e.g.Remote Collaboration\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(40, 'content', 'Generate a meeting notification message for an ##topic## meeting. Include the date, time, location, and a brief agenda with three key discussion points.', 'notification template', '{\"field\":[{\"label\":\"Notification Message\",\"placeholder\":\"e.g.brief explanation of the purpose or background of the notification\",\"field_type\":\"textarea\",\"field_name\":\"topic\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(41, 'name', 'please suggest subscription plan  name  for this  :  ##description##  for my business', 'plan', '{\"field\":[{\"label\":\"What is your plan about?\",\"placeholder\":\"e.g. Describe your plan details \",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(42, 'description', 'please suggest subscription plan  description  for this  :  ##title##:  for my business', 'plan', '{\"field\":[{\"label\":\"What is your plan title?\",\"placeholder\":\"e.g. Pro Resller,Exclusive Access\",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(43, 'name', 'give 10 catchy only name of Offer or discount Coupon for : ##keywords##', 'coupon', '{\"field\":[{\"label\":\"Seed words\",\"placeholder\":\"e.g.coupon will provide you with a discount on your selected plan\",\"field_type\":\"text_box\",\"field_name\":\"keywords\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(44, 'meta_title', 'Write SEO meta title for:\n\n ##description## \n\nWebsite name is:\n ##title## \n\nSeed words:\n ##keywords## \n\n', 'seo', '{\"field\":[{\"label\":\"Website Name\",\"placeholder\":\"e.g. Amazon, Google\",\"field_type\":\"text_box\",\"field_name\":\"title\"},{\"label\":\"Website Description\",\"placeholder\":\"e.g. Describe what your website or business do\",\"field_type\":\"textarea\",\"field_name\":\"description\"},{\"label\":\"Keywords\",\"placeholder\":\"e.g.  cloud services, databases\",\"field_type\":\"text_box\",\"field_name\":\"keywords\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(45, 'meta_desc', 'Write SEO meta description for:\n\n ##description## \n\nWebsite name is:\n ##title## \n\nSeed words:\n ##keywords## \n\n', 'seo', '{\"field\":[{\"label\":\"Website Name\",\"placeholder\":\"e.g. Amazon, Google\",\"field_type\":\"text_box\",\"field_name\":\"title\"},{\"label\":\"Website Description\",\"placeholder\":\"e.g. Describe what your website or business do\",\"field_type\":\"textarea\",\"field_name\":\"description\"},{\"label\":\"Keywords\",\"placeholder\":\"e.g.  cloud services, databases\",\"field_type\":\"text_box\",\"field_name\":\"keywords\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(46, 'cookie_title', 'please suggest me cookie title for this ##description## website which i can use in my website cookie', 'cookie', '{\"field\":[{\"label\":\"Website name or info\",\"placeholder\":\"e.g. example website \",\"field_type\":\"textarea\",\"field_name\":\"title\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(47, 'cookie_description', 'please suggest me  Cookie description for this cookie title ##title##  which i can use in my website cookie', 'cookie', '{\"field\":[{\"label\":\"Cookie Title \",\"placeholder\":\"e.g. example website \",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(48, 'strictly_cookie_title', 'please suggest me only Strictly Cookie Title for this ##description## website which i can use in my website cookie', 'cookie', '{\"field\":[{\"label\":\"Website name or info\",\"placeholder\":\"e.g. example website \",\"field_type\":\"textarea\",\"field_name\":\"title\"}]}', 0, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(49, 'strictly_cookie_description', 'please suggest me Strictly Cookie description for this Strictly cookie title ##title##  which i can use in my website cookie', 'cookie', '{\"field\":[{\"label\":\"Strictly Cookie Title \",\"placeholder\":\"e.g. example website \",\"field_type\":\"text_box\",\"field_name\":\"title\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(50, 'more_information_description', 'I need assistance in crafting compelling content for my ##web_name## website\'s \'Contact Us\' page of my website. The page should provide relevant information to users, encourage them to reach out for inquiries, support, and feedback, and reflect the unique value proposition of my business.', 'cookie', '{\"field\":[{\"label\":\"Websit Name\",\"placeholder\":\"e.g. example website \",\"field_type\":\"text_box\",\"field_name\":\"web_name\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(51, 'content', 'generate email template for ##type##', 'email template', '{\"field\":[{\"label\":\"Email Type\",\"placeholder\":\"e.g. new user,new client\",\"field_type\":\"text_box\",\"field_name\":\"type\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(52, 'note', 'Generate short description Note for lead ##description##', 'lead', '{\"field\":[{\"label\":\"Lead description\",\"placeholder\":\"e.g. create notes for lead user \",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(53, 'description', 'Generate a short note summarizing the key points discussed during a lead ##name## call. The purpose of the note is to capture important details and action items discussed with the ##name## lead. Please structure the note in a concise and organized manner.', 'lead', '{\"field\":[{\"label\":\"Lead name\",\"placeholder\":\"e.g. create description for lead user \",\"field_type\":\"textarea\",\"field_name\":\"name\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(54, 'note', 'Generate short description Note for deal ##description##', 'deal', '{\"field\":[{\"label\":\"Deal description\",\"placeholder\":\"e.g.create note for deal client\",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49'),
(55, 'description', 'Generate a short note summarizing a deal call. Imagine you just had a call with a potential client or partner to discuss a ##description## deal. Write a concise summary of the key points discussed during the call. Include the important details such as the client\'s name, the purpose of the call, any agreements or decisions made, and next steps to be taken.', 'deal', '{\"field\":[{\"label\":\"Deal name\",\"placeholder\":\"e.g. Establishing Communication \",\"field_type\":\"textarea\",\"field_name\":\"description\"}]}', 1, '2023-12-09 16:42:49', '2023-12-09 16:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tag_id` text DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `is_billable` int(11) NOT NULL DEFAULT 0,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) NOT NULL DEFAULT '0',
  `is_active` varchar(191) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_photos`
--

CREATE TABLE `track_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `img_path` varchar(191) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(191) NOT NULL,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `contact` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` text DEFAULT NULL,
  `expertise` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `performance` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `account` int(11) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `payment_id` int(11) NOT NULL DEFAULT 0,
  `category` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `transfer_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) DEFAULT NULL,
  `place_of_visit` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `avatar` varchar(191) NOT NULL DEFAULT 'avatar.png',
  `messenger_color` varchar(191) NOT NULL DEFAULT '#2180f3',
  `lang` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `default_pipeline` int(11) DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `delete_status` int(11) NOT NULL DEFAULT 1,
  `mode` varchar(10) NOT NULL DEFAULT 'light',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `plan`, `plan_expire_date`, `type`, `avatar`, `messenger_color`, `lang`, `created_by`, `default_pipeline`, `active_status`, `delete_status`, `mode`, `dark_mode`, `is_active`, `last_login_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ZenPro ERP', 'debendraster@gmail.com', NULL, '$2y$10$218N2HEW.nYwyvQ0Ut8zlO/4QVeEHmq1z2jF/4tBUigHtBycPyHWi', 1, NULL, 'company', '', '#2180f3', 'en', 1, 1, 0, 1, 'light', 0, 1, '2023-12-09 17:12:45', NULL, '2023-12-09 16:42:48', '2023-12-09 17:12:45'),
(2, 'accountant', 'accountant@example.com', NULL, '$2y$10$/tkA3mZUSVFI0PWUhM5DjOM4DYJ0E7v8cDmll/A4LrF4TmFP6Z6De', NULL, NULL, 'accountant', '', '#2180f3', 'en', 1, 1, 0, 1, 'light', 0, 1, NULL, NULL, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 'client', 'client@example.com', NULL, '$2y$10$f5FuQBmWaX1nYOmh.0rwaO7ayMzE8lk2Ts94qOQhaPf315hD1Sygq', NULL, NULL, 'client', '', '#2180f3', 'en', 1, 1, 0, 1, 'light', 0, 1, NULL, NULL, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_deals`
--

CREATE TABLE `user_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_templates`
--

CREATE TABLE `user_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_email_templates`
--

INSERT INTO `user_email_templates` (`id`, `template_id`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(2, 2, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(3, 3, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(4, 4, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(5, 5, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(6, 6, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(7, 7, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(8, 8, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(9, 9, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(10, 10, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(11, 11, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(12, 12, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(13, 13, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(14, 14, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(15, 15, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(16, 16, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(17, 17, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(18, 18, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(19, 19, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(20, 20, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(21, 21, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(22, 22, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48'),
(23, 23, 1, 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_leads`
--

CREATE TABLE `user_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_dos`
--

CREATE TABLE `user_to_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vender_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `tax_number` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `contact` varchar(191) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) DEFAULT NULL,
  `billing_country` varchar(191) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_phone` varchar(191) DEFAULT NULL,
  `billing_zip` varchar(191) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_name` varchar(191) DEFAULT NULL,
  `shipping_country` varchar(191) DEFAULT NULL,
  `shipping_state` varchar(191) DEFAULT NULL,
  `shipping_city` varchar(191) DEFAULT NULL,
  `shipping_phone` varchar(191) DEFAULT NULL,
  `shipping_zip` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `lang` varchar(191) NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(191) NOT NULL,
  `city_zip` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `address`, `city`, `city_zip`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'North Warehouse', '723 N. Tillamook Street Portland, OR Portland, United States', 'Portland', '97227', 1, '2023-12-09 16:42:48', '2023-12-09 16:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_products`
--

CREATE TABLE `warehouse_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` double(25,2) NOT NULL DEFAULT 0.00,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transfers`
--

CREATE TABLE `warehouse_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_warehouse` int(11) NOT NULL DEFAULT 0,
  `to_warehouse` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_settings`
--

CREATE TABLE `webhook_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `meeting_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(191) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `password` varchar(191) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL DEFAULT 0,
  `start_url` text DEFAULT NULL,
  `join_url` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowance_options`
--
ALTER TABLE `allowance_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_accounts`
--
ALTER TABLE `bill_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_products`
--
ALTER TABLE `bill_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_comments`
--
ALTER TABLE `bug_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_files`
--
ALTER TABLE `bug_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_deals_client_id_foreign` (`client_id`),
  ADD KEY `client_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_attachment`
--
ALTER TABLE `contract_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_comment`
--
ALTER TABLE `contract_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_notes`
--
ALTER TABLE `contract_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  ADD KEY `custom_field_values_field_id_foreign` (`field_id`);

--
-- Indexes for table `custom_questions`
--
ALTER TABLE `custom_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_calls_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_discussions_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_emails_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_files_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_tasks_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_options`
--
ALTER TABLE `deduction_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimations`
--
ALTER TABLE `estimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_employees`
--
ALTER TABLE `event_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_certificates`
--
ALTER TABLE `experience_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_builders_code_unique` (`code`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_responses`
--
ALTER TABLE `form_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_offer_letters`
--
ALTER TABLE `generate_offer_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_bank_transfers`
--
ALTER TABLE `invoice_bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_restricts`
--
ALTER TABLE `ip_restricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joining_letters`
--
ALTER TABLE `joining_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `join_us_email_unique` (`email`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_items`
--
ALTER TABLE `journal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_settings`
--
ALTER TABLE `landing_page_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `landing_page_settings_name_unique` (`name`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`);

--
-- Indexes for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_calls_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_discussions_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_emails_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_files_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `noc_certificates`
--
ALTER TABLE `noc_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_template_langs`
--
ALTER TABLE `notification_template_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_types`
--
ALTER TABLE `payslip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_types`
--
ALTER TABLE `performance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pipelines`
--
ALTER TABLE `pipelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_payments`
--
ALTER TABLE `pos_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_products`
--
ALTER TABLE `pos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_units`
--
ALTER TABLE `product_service_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectstages`
--
ALTER TABLE `projectstages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_invoices`
--
ALTER TABLE `project_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tasks`
--
ALTER TABLE `project_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_products`
--
ALTER TABLE `proposal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `set_salaries`
--
ALTER TABLE `set_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_reports`
--
ALTER TABLE `stock_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_replies`
--
ALTER TABLE `support_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_checklists`
--
ALTER TABLE `task_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_stages`
--
ALTER TABLE `task_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_photos`
--
ALTER TABLE `track_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_deals_user_id_foreign` (`user_id`),
  ADD KEY `user_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leads_user_id_foreign` (`user_id`),
  ADD KEY `user_leads_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `venders_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_products`
--
ALTER TABLE `warehouse_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_transfers`
--
ALTER TABLE `warehouse_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webhook_settings`
--
ALTER TABLE `webhook_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_options`
--
ALTER TABLE `allowance_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_accounts`
--
ALTER TABLE `bill_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_products`
--
ALTER TABLE `bill_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_comments`
--
ALTER TABLE `bug_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_files`
--
ALTER TABLE `bug_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_deals`
--
ALTER TABLE `client_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_attachment`
--
ALTER TABLE `contract_attachment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_comment`
--
ALTER TABLE `contract_comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_notes`
--
ALTER TABLE `contract_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_questions`
--
ALTER TABLE `custom_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_calls`
--
ALTER TABLE `deal_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_emails`
--
ALTER TABLE `deal_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_files`
--
ALTER TABLE `deal_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_notes`
--
ALTER TABLE `debit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_options`
--
ALTER TABLE `deduction_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimations`
--
ALTER TABLE `estimations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_employees`
--
ALTER TABLE `event_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience_certificates`
--
ALTER TABLE `experience_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_responses`
--
ALTER TABLE `form_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generate_offer_letters`
--
ALTER TABLE `generate_offer_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_bank_transfers`
--
ALTER TABLE `invoice_bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_restricts`
--
ALTER TABLE `ip_restricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `joining_letters`
--
ALTER TABLE `joining_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal_items`
--
ALTER TABLE `journal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landing_page_settings`
--
ALTER TABLE `landing_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_calls`
--
ALTER TABLE `lead_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_emails`
--
ALTER TABLE `lead_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noc_certificates`
--
ALTER TABLE `noc_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notification_template_langs`
--
ALTER TABLE `notification_template_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_types`
--
ALTER TABLE `payslip_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_types`
--
ALTER TABLE `performance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pipelines`
--
ALTER TABLE `pipelines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_payments`
--
ALTER TABLE `pos_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_products`
--
ALTER TABLE `pos_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service_units`
--
ALTER TABLE `product_service_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectstages`
--
ALTER TABLE `projectstages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_invoices`
--
ALTER TABLE `project_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_tasks`
--
ALTER TABLE `project_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposal_products`
--
ALTER TABLE `proposal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `set_salaries`
--
ALTER TABLE `set_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_reports`
--
ALTER TABLE `stock_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_replies`
--
ALTER TABLE `support_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_checklists`
--
ALTER TABLE `task_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_stages`
--
ALTER TABLE `task_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_photos`
--
ALTER TABLE `track_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_deals`
--
ALTER TABLE `user_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_leads`
--
ALTER TABLE `user_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse_products`
--
ALTER TABLE `warehouse_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse_transfers`
--
ALTER TABLE `warehouse_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_settings`
--
ALTER TABLE `webhook_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD CONSTRAINT `client_deals_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD CONSTRAINT `deal_calls_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD CONSTRAINT `deal_discussions_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD CONSTRAINT `deal_emails_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD CONSTRAINT `deal_files_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD CONSTRAINT `deal_tasks_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD CONSTRAINT `lead_calls_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD CONSTRAINT `lead_discussions_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD CONSTRAINT `lead_emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD CONSTRAINT `lead_files_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD CONSTRAINT `user_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_deals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD CONSTRAINT `user_leads_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
