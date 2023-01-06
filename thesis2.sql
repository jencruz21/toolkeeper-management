-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 02:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `approved_items`
--

CREATE TABLE `approved_items` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(128) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `checkout_id` varchar(256) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approved_items`
--

INSERT INTO `approved_items` (`id`, `name`, `qty`, `unit`, `type`, `price`, `status`, `date_approved`, `checkout_id`, `customer_id`, `item_id`) VALUES
(11, 'Wilcon\'s Chainsaw', 1, '10 kg', 'Heavy Equipment', 250, 'Brand New', '2022-12-12 12:38:42', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, 1),
(12, 'Wilcon\'s Chainsaw', 3, '10 kg', 'Heavy Equipment', 250, 'Brand New', '2022-12-12 14:55:25', '1e8d3fe3-fe17-450d-9cc9-7bcbd2efba2c', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Keyboard'),
(1, 'Mouse'),
(2, 'Monitor'),
(3, 'Motherboard'),
(4, 'Processor'),
(5, 'Power Supply'),
(6, 'Headset'),
(7, 'CPU'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_details`
--

CREATE TABLE `checkout_details` (
  `id` int(11) NOT NULL,
  `details` varchar(512) DEFAULT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `vehicle` varchar(64) DEFAULT NULL,
  `customer` varchar(64) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_position` varchar(32) DEFAULT NULL,
  `checkout_id` varchar(256) DEFAULT NULL,
  `checkout_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout_details`
--

INSERT INTO `checkout_details` (`id`, `details`, `total_items`, `total_cost`, `amount_paid`, `checkout_date`, `vehicle`, `customer`, `customer_id`, `customer_position`, `checkout_id`, `checkout_status`) VALUES
(49, 'dfdsafadsfasdfadsfadsf', 3, 10250, 10250, '2022-12-12 12:38:24', 'Lancer Evo', 'Prince Ly Cesar', 1, 'Employee', 'd55efd47-5ed3-4367-8651-3da33a580c06', 0),
(50, 'dasdfadsfsadfasdf', 3, 1350, 1350, '2022-12-12 13:55:28', 'Lancer Evo', 'Prince Ly Cesar', 1, 'Employee', '1e8d3fe3-fe17-450d-9cc9-7bcbd2efba2c', 1),
(51, 'afadfdsf', 1, 250, 250, '2022-12-12 15:07:56', 'Lancer Evo', 'Prince Ly Cesar', 1, 'Employee', '871ab808-e506-415f-bf08-f656b8a7e8af', 0),
(52, 'fadfadfs', 2, 1445, 1500, '2022-12-12 15:15:52', 'Lancer Evo', 'Prince Ly Cesar', 1, 'Employee', '92a162bd-c099-42b4-918d-f233c14b5d97', 0),
(53, 'fdfadfafadf', 3, 850, 1000, '2022-12-12 15:17:39', 'Lancer Evo', 'Prince Ly Cesar', 1, 'Employee', 'c8739e5e-d8bc-4851-a7a3-3f768352e8a7', 0),
(54, 'daddafadsfaf', 3, 5800, 5800, '2022-12-13 14:47:17', 'Lancer Evo', 'Josuey Mag-asos', 7, 'Engineer', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_items`
--

CREATE TABLE `checkout_items` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `chkout_id` varchar(256) DEFAULT NULL,
  `checkout_status` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout_items`
--

INSERT INTO `checkout_items` (`id`, `name`, `qty`, `unit`, `type`, `price`, `status`, `date_purchased`, `chkout_id`, `checkout_status`, `item_id`) VALUES
(50, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-12 12:38:25', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, 2),
(51, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-12 12:38:25', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, 2),
(63, 'Newmen E120', 1, 'hehe', 'Keyboard', 550, '20191002', '2022-12-13 14:47:17', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 1, 4),
(64, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-13 14:47:17', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(9, 'Hailee', 'Steinfield', '09394566543'),
(11, 'A Walk in Customer', NULL, NULL),
(14, 'Chuchay', 'Jusay', '09781633451'),
(15, 'Kimbert', 'Duyag', '09956288467'),
(16, 'Dieqcohr', 'Rufino', '09891344576');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `QR_CODE_TEXT` varchar(256) DEFAULT NULL,
  `QR_CODE_IMG_PATH` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`, `QR_CODE_TEXT`, `QR_CODE_IMG_PATH`) VALUES
(1, 'Prince Ly', 'Cesar', 'Male', 'princelycesar23@gmail.com', '09124033805', 1, '0000-00-00', 113, NULL, NULL),
(2, 'Josuey', 'Mag-asos', 'Male', 'jmagaso@yahoo.com', '09091245761', 2, '2019-01-28', 156, NULL, NULL),
(4, 'Monica', 'Empinado', 'Female', 'monicapadernal@gmail.com', '09123357105', 1, '2019-03-06', 158, NULL, NULL),
(5, 'John', 'Doe', 'Male', 'johndoe@gmail.com', '09064854451', 2, '2022-11-22', 159, NULL, NULL),
(54, 'Jen', 'Cruz', 'Male', 'josecruz@yahoo.com', '09999999999', 1, '2023-01-03', 245, 'JenCruztysKBfeT19', '../img/qrcode/2023-01-03 10,52,41.png'),
(55, 'Jarry', 'Cruz', 'Male', 'joserico_cruz@yahoo.com', '09157004949', 1, '2023-01-03', 246, 'JarryCruzTILZ5tqgOU', '../img/qrcode/2023-01-03 14,13,10.png');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EQUIPMENT_ID` int(8) NOT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `UNITS` varchar(64) DEFAULT NULL,
  `QTY_STOCK` int(11) UNSIGNED DEFAULT 0,
  `PRICE` int(11) DEFAULT 0,
  `TYPE` varchar(32) DEFAULT NULL,
  `DATE_PURCHASED` datetime DEFAULT current_timestamp(),
  `status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EQUIPMENT_ID`, `NAME`, `DESCRIPTION`, `UNITS`, `QTY_STOCK`, `PRICE`, `TYPE`, `DATE_PURCHASED`, `status`) VALUES
(1, 'Wilcon\'s Chainsaw', 'A chainsaw for your future!', '10 kg', 314, 250, 'Heavy Equipment', '2022-12-07 11:20:43', 'Brand New'),
(2, 'Haruma Drill', 'dsfasdfasdfasdf', '10 kg', 300, 5000, 'Heavy Equipment', '2022-12-12 00:00:00', 'Brand New');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Engineer'),
(2, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'Negros Occidental', 'Binalbagan'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Negros Occidental', 'Bacolod'),
(157, 'Camarines Norte', 'Labo'),
(158, 'Negros Occidental', 'Binalbagan'),
(159, 'Nueva Ecija', 'Cabiao'),
(160, 'Nueva Ecija', 'Cabiao'),
(161, 'Metro Manila', 'Quezon City'),
(162, 'Metro Manila', 'Quezon City'),
(163, 'Metro Manila', 'Quezon City'),
(164, 'Cagayan', 'Lasam'),
(165, 'Cagayan', 'Rizal'),
(166, 'Metro Manila', 'Quezon City'),
(167, 'Metro Manila', 'Quezon City'),
(168, 'Metro Manila', 'Quezon City'),
(169, 'Metro Manila', 'Quezon City'),
(170, 'Metro Manila', 'Quezon City'),
(171, 'Metro Manila', 'Quezon City'),
(172, 'Metro Manila', 'Quezon City'),
(173, 'Metro Manila', 'Quezon City'),
(174, 'Metro Manila', 'Quezon City'),
(175, 'Metro Manila', 'Quezon City'),
(176, 'Metro Manila', 'Quezon City'),
(177, 'Camarines Norte', 'Vinzons'),
(178, 'Camarines Norte', 'Vinzons'),
(179, 'Metro Manila', 'Quezon City'),
(180, 'Metro Manila', 'Quezon City'),
(181, 'Metro Manila', 'Quezon City'),
(182, '', ''),
(183, 'Cagayan', 'Pamplona'),
(184, 'Cagayan', 'Pamplona'),
(185, 'Cagayan', 'Pamplona'),
(186, 'Cagayan', 'Pamplona'),
(187, 'Cagayan', 'Pamplona'),
(188, 'Cagayan', 'Pamplona'),
(189, 'Cagayan', 'Pamplona'),
(190, 'Cagayan', 'Pamplona'),
(191, 'Cagayan', 'Pamplona'),
(192, 'Cagayan', 'Pamplona'),
(193, 'Cagayan', 'Pamplona'),
(194, 'Cagayan', 'Pamplona'),
(195, 'Metro Manila', 'Quezon City'),
(196, 'Metro Manila', 'Quezon City'),
(197, 'Metro Manila', 'Quezon City'),
(198, 'Metro Manila', 'Quezon City'),
(199, 'Metro Manila', 'Quezon City'),
(200, 'Metro Manila', 'Quezon City'),
(201, 'Metro Manila', 'Quezon City'),
(202, 'Metro Manila', 'Quezon City'),
(203, 'Metro Manila', 'Quezon City'),
(204, 'Metro Manila', 'Quezon City'),
(205, 'Metro Manila', 'Quezon City'),
(206, 'Metro Manila', 'Quezon City'),
(207, 'Metro Manila', 'Quezon City'),
(208, 'Metro Manila', 'Quezon City'),
(209, 'Metro Manila', 'Quezon City'),
(210, 'Metro Manila', 'Quezon City'),
(211, 'Metro Manila', 'Quezon City'),
(212, 'Metro Manila', 'Quezon City'),
(213, 'Metro Manila', 'Quezon City'),
(214, 'Metro Manila', 'Quezon City'),
(215, 'Metro Manila', 'Quezon City'),
(216, 'Metro Manila', 'Quezon City'),
(217, 'Metro Manila', 'Quezon City'),
(218, 'Metro Manila', 'Quezon City'),
(219, 'Metro Manila', 'Quezon City'),
(220, 'Metro Manila', 'Quezon City'),
(221, 'Metro Manila', 'Quezon City'),
(222, 'Metro Manila', 'Quezon City'),
(223, 'Metro Manila', 'Quezon City'),
(224, 'Metro Manila', 'Quezon City'),
(225, 'Metro Manila', 'Quezon City'),
(226, 'Metro Manila', 'Quezon City'),
(227, 'Metro Manila', 'Quezon City'),
(228, 'Metro Manila', 'Quezon City'),
(229, '', ''),
(230, 'Basilan', 'Lamitan'),
(231, 'Camiguin', 'Guinsiliban'),
(232, 'Camiguin', 'Guinsiliban'),
(233, 'Biliran', 'Naval'),
(234, 'Biliran', 'Naval'),
(235, 'Bohol', 'Loboc'),
(236, 'Bohol', 'Loboc'),
(237, 'Camarines Norte', 'Paracale'),
(238, 'Camarines Norte', 'Paracale'),
(239, 'Camarines Norte', 'Paracale'),
(240, 'Camarines Norte', 'Paracale'),
(241, 'Camarines Norte', 'Paracale'),
(242, 'Camarines Norte', 'Paracale'),
(243, 'Camarines Norte', 'Paracale'),
(244, 'Camarines Norte', 'Paracale'),
(245, 'Camarines Norte', 'Paracale'),
(246, 'Benguet', 'Kibungan'),
(247, 'Batanes', 'Basco');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Prince Ly', 'Cesar', 113, 'PC@00', '09124033805'),
('Emman', 'Adventures', 116, 'emman@', '09123346576'),
('Bruce', 'Willis', 113, 'bruce@', NULL),
('Regine', 'Santos', 111, 'regine@', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(11) DEFAULT NULL,
  `ON_HAND` int(11) NOT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `DATE_STOCK_IN`) VALUES
(26, '20191001', 'Lenovo ideapad 20059', 'hehe', 1, 1, 32999, 7, '2019-03-11'),
(29, '20221214', 'George\'s Nails', '5 mm diameter crosshead nails', 5000, 5000, 5000, 2, '2022-12-14 15:59:23'),
(30, '20221512', 'George\'s Cement', 'Cement for your future2x', 500, 500, 250, 0, '2022-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `returned_items`
--

CREATE TABLE `returned_items` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `checkout_id` varchar(256) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `return_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returned_items`
--

INSERT INTO `returned_items` (`id`, `name`, `qty`, `unit`, `type`, `price`, `status`, `date_returned`, `checkout_id`, `customer_id`, `item_id`, `return_status`) VALUES
(6, 'Haruma Drill', 300, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-13 09:02:34', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 7, NULL, 1),
(7, 'Newmen E120', 10, 'hehe', 'Keyboard', 550, '20191002', '2022-12-13 09:02:36', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 7, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `T_DESCRIPTION` varchar(512) DEFAULT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `T_DESCRIPTION`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', NULL, '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', NULL, '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', NULL, '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', NULL, '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', NULL, '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', NULL, '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', NULL, '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', NULL, '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', NULL, '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', NULL, '2019-03-18 19:40 pm', '0318194016'),
(13, 11, '1', '', '', '', '', '', '', NULL, '2022-11-24 07:33 am', '112473349'),
(14, 14, '1', '', '', '', '', '', '', NULL, '2022-11-24 07:35 am', '112473541');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad 20059', '2', '32999', 'Prince Ly', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 'Josuey', 'Cashier'),
(21, '112473349', 'Newmen E120', '1', '550', 'John', 'Cashier'),
(22, '112473541', 'Newmen E120', '1', '550', 'John', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL,
  `POSITION_ID` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`, `POSITION_ID`) VALUES
(1, 1, 'unguardable', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 1),
(7, 2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2, 1),
(9, 4, 'mncpdrnl', '8cb2237d0679ca88db6464eac60da96345513964', 2, 1),
(10, 5, 'user1', 'b3daa77b4c04a9551b8781d03191fe098f325e67', 2, 2),
(16, 54, 'jenn', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 1),
(17, 55, 'jarry', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_positions`
--

CREATE TABLE `user_positions` (
  `id` int(11) NOT NULL,
  `pos_name` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_positions`
--

INSERT INTO `user_positions` (`id`, `pos_name`) VALUES
(1, 'Employee'),
(2, 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `PLATE_NO` varchar(24) DEFAULT NULL,
  `AVAILABILITY` int(1) DEFAULT 1,
  `DATE_BORROWED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `NAME`, `PLATE_NO`, `AVAILABILITY`, `DATE_BORROWED`) VALUES
(1, 'Lancer Evo', 'ABC 2006', 1, '2022-11-28 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_items`
--
ALTER TABLE `approved_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `checkout_details`
--
ALTER TABLE `checkout_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_items`
--
ALTER TABLE `checkout_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EQUIPMENT_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`);

--
-- Indexes for table `returned_items`
--
ALTER TABLE `returned_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD KEY `users_pos_id_fk` (`POSITION_ID`);

--
-- Indexes for table `user_positions`
--
ALTER TABLE `user_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approved_items`
--
ALTER TABLE `approved_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `checkout_details`
--
ALTER TABLE `checkout_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `checkout_items`
--
ALTER TABLE `checkout_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `EQUIPMENT_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `returned_items`
--
ALTER TABLE `returned_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_positions`
--
ALTER TABLE `user_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `users_pos_id_fk` FOREIGN KEY (`POSITION_ID`) REFERENCES `user_positions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
