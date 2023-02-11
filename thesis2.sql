-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2023 at 07:07 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u157569420_toolkeeper_sys`
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
  `employee_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_class` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `vehicle_id` int(11) DEFAULT NULL,
  `customer` varchar(64) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_position` varchar(32) DEFAULT NULL,
  `checkout_id` varchar(256) DEFAULT NULL,
  `checkout_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout_details`
--

INSERT INTO `checkout_details` (`id`, `details`, `total_items`, `total_cost`, `amount_paid`, `checkout_date`, `vehicle_id`, `customer`, `customer_id`, `employee_id`, `customer_position`, `checkout_id`, `checkout_status`) VALUES
(49, 'dfdsafadsfasdfadsfadsf', 3, 10250, 10250, '2022-12-12 12:38:24', 1, 'Prince Ly Cesar', 1, NULL, 'Employee', 'd55efd47-5ed3-4367-8651-3da33a580c06', 0),
(50, 'dasdfadsfsadfasdf', 3, 1350, 1350, '2022-12-12 13:55:28', 1, 'Prince Ly Cesar', 1, NULL, 'Employee', '1e8d3fe3-fe17-450d-9cc9-7bcbd2efba2c', 1),
(51, 'afadfdsf', 1, 250, 250, '2022-12-12 15:07:56', 1, 'Prince Ly Cesar', 1, NULL, 'Employee', '871ab808-e506-415f-bf08-f656b8a7e8af', 1),
(52, 'fadfadfs', 2, 1445, 1500, '2022-12-12 15:15:52', 1, 'Prince Ly Cesar', 1, NULL, 'Employee', '92a162bd-c099-42b4-918d-f233c14b5d97', 0),
(53, 'fdfadfafadf', 3, 850, 1000, '2022-12-12 15:17:39', 1, 'Prince Ly Cesar', 1, NULL, 'Employee', 'c8739e5e-d8bc-4851-a7a3-3f768352e8a7', 0),
(54, 'daddafadsfaf', 3, 5800, 5800, '2022-12-13 14:47:17', 1, 'Josuey Mag-asos', 7, NULL, 'Engineer', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 1),
(55, 'shell sta. maria', 1, 1500000, 1500000, '2023-01-08 22:04:45', 1, 'Josuey Mag-asos', 1, NULL, 'Engineer', 'ff9056af-1bfd-4b55-a391-b84d3bde099c', 1),
(56, 'shell sta. maria', 2, 1505000, 1600000, '2023-01-08 22:07:00', 1, 'Monica Empinado', 7, NULL, 'Engineer', 'cb8aecdd-a6a3-4c51-8365-d60f8a8d8402', 1),
(57, 'sta maria', 1, 500000, 500000, '2023-01-09 10:35:37', 1, 'Don Sanchez', 1, NULL, 'Engineer', 'c640a9c0-758e-43e1-aa2f-5daa23b7a673', 1),
(58, 'bring to sta maria', 1, 500000, 500000, '2023-01-09 11:42:22', 1, 'Don Sanchez', 1, NULL, 'Engineer', 'c7e15599-8c93-47de-8cf6-96d0bd418034', 1),
(59, 'cagayan de oro site', 1, 500000, 500000, '2023-01-09 15:39:26', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', 'b4f5a482-d0ab-4a10-8a23-351b289e4b8b', 1),
(60, 'shell site', 1, 500000, 5000000, '2023-01-09 19:46:40', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', 'a8121717-d865-463b-929a-655ffb4a2c31', 1),
(61, 'for housing project divisoria', 1, 1500000, 1500000, '2023-01-09 22:38:09', 1, 'Don Sanchez', 7, NULL, 'Engineer', '89e767de-a20c-4a1d-a101-9908b7b89960', 1),
(62, 'shell select sta maria branch', 1, 1000000, 1000000, '2023-01-10 00:38:21', 1, 'Prince Ly Cesar', 7, NULL, 'Engineer', 'b0ccc8e9-1fec-4420-ab8d-4e1ba8469011', 1),
(63, 'OVERPASS CONSTRUCTION @ STA. CRUZ HIGHWAY', 1, 1000000, 1000000, '2023-01-10 00:42:12', 1, 'Don Sanchez', 7, NULL, 'Engineer', '727b804d-5605-4c39-80ec-cdeb9dd386ec', 1),
(64, 'FLYOVER CONSTRUCTION @ STA. CRUZ HIGHWAY, ZAMBOANGA CITY', 2, 1500000, 1500000, '2023-01-10 00:49:10', 1, 'Jen Cruz', 7, NULL, 'Engineer', 'e7699839-f870-4ed9-9401-e2c263a6a7aa', 1),
(65, 'dfasdfasdf', 3, 2505000, 3000000, '2023-01-10 00:49:25', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', 'e67e4fd6-41c7-42f7-84f6-7d6f1fbcf698', 1),
(66, 'Unable to connect. Check your connection parameters.', 1, 1500000, 1500000, '2023-01-10 01:07:33', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '9997c025-7be0-46ce-804e-075491ae10d7', 1),
(67, 'Unable to connect. Check your connection parameters.', 4, 3005000, 3005000, '2023-01-10 01:10:27', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1),
(68, 'fasdfasdfasf', 1, 1500000, 1500000, '2023-01-10 01:41:23', 1, 'John Doe', 1, NULL, 'Engineer', '3a579846-e204-4e01-bd7a-f9dd02a09919', 1),
(69, 'deets', 1, 500000, 500000, '2023-01-10 01:45:15', 1, 'Prince Ly Cesar', 7, NULL, 'Engineer', '52f3790e-fc51-4abe-889f-4adaec0f76e7', 1),
(70, 'sta mar', 1, 500000, 5000000, '2023-01-10 10:04:25', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '9c56ba24-2401-4b8e-b1e2-8500cc8e2225', 1),
(71, '', 3, 2005000, 2005000, '2023-01-10 13:07:04', 1, 'Select employee name', 1, NULL, 'Engineer', 'a60e8e85-92fa-415e-96a9-48a4b85aeb08', 0),
(72, 'test test', 3, 2005000, 50000000, '2023-01-10 13:08:22', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', 'd852353f-1f49-46b8-809b-e3d0eebf5df7', 1),
(73, 'fdasfadsfadsf', 2, 505000, 600000, '2023-01-10 13:25:53', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '4ea48411-f410-4158-b041-c51fcf85a32f', 1),
(74, 'dADdADS', 2, 10000, 10000, '2023-01-10 13:28:03', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '09ba0224-59c0-425f-a959-4860d57ffa2c', 1),
(75, 'fadfafafadf', 2, 2500000, 2500000, '2023-01-10 13:40:17', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', 'c0e0a18b-4b38-4996-a83c-75f82870c11e', 1),
(76, 'sta maria shell site', 1, 1500000, 1500000, '2023-01-10 15:14:36', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '622a7fc7-304f-4d89-8da3-6a47ab6edcef', 1),
(77, 'FLYOVER SITE, STA CRUZ, ZAMBOANGA CITY', 1, 1000000, 1000000, '2023-01-10 19:25:28', 1, 'Don Sanchez', 1, NULL, 'Engineer', '1f416bd8-d5eb-4394-9499-f57f0e708f9a', 1),
(78, 'OVERPASS/FLYOVER CONSTRUCTION, STA. MARIA HIGHWAY, ZAMBOANGA CITY', 1, 1000000, 1000000, '2023-01-10 19:31:46', 1, 'Prince Ly Cesar', 7, NULL, 'Engineer', 'aa868be2-41dd-4268-a76c-f89933eb297f', 1),
(79, 'STA MARIA SITE', 1, 1500000, 1500000, '2023-01-10 19:49:47', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '828b9ada-eb79-4a01-8360-2a60b6334e91', 1),
(80, 'FLYOVER CONSTRUCTION SITE, STA CRUZ HIGHWAY, ZAMBOANGA CITY', 1, 1500000, 1500000, '2023-01-11 08:51:14', 1, 'Prince Ly Cesar', 1, NULL, 'Engineer', '25e2c9a9-a494-40e2-ab6a-6c96e5a1e445', 1),
(81, 'PILIPINAS SHELL PETROLEUM CORPORATION RETAIL\nLOCATION: ZAMBOANGA CITY, ZAMBOANGA DEL SUR: NEW GASOLINE STAION, CAMINS', 1, 1000000, 1000000, '2023-01-12 11:08:35', 1, 'Josuey Mag-asos', 7, NULL, 'Engineer', '2907ef86-809e-4a75-8699-6dede1f98b56', 1),
(82, 'PILIPINAS SHELL PETROLEUM CORPORATION RETAIL\nLOCATION: ZAMBOANGA CITY, ZAMBOANGA DEL SUR, NEW GASOLINE STATION, CAMINS.', 1, 1000000, 1000000, '2023-01-12 11:12:14', 1, 'Josuey Mag-asos', 7, NULL, 'Engineer', '41ab6e98-4295-404a-bd0c-ff36b79c0d3b', 1),
(83, 'PILIPINAS SHELL PETROLEUM CORPORATION RETAIL\nLOCATION: ZAMBOANGA CITY, ZAMBOANGA DEL SUR', 1, 1500000, 1500000, '2023-01-12 11:15:03', 1, 'John Doe', 7, NULL, 'Engineer', '8dd8edf1-f3bb-4e9d-902c-3b96b66a20f7', 1),
(84, '1', 1, 1000000, 1000000, '2023-01-12 11:21:20', 1, 'John Doe', 1, NULL, 'Engineer', 'd16e1945-e46a-4b78-b0a0-a86998e20253', 1),
(85, 'fadsfadfadfas', 2, 1000000, 1000000, '2023-01-24 01:21:58', 1, NULL, NULL, 1, 'Engineer', '662d2742-c6bf-42c0-9174-37894faa7b7f', 1),
(86, 'xx', 1, 1500000, 1500000, '2023-01-24 01:33:13', 1, NULL, NULL, 1, 'Engineer', 'f2abf912-bbd4-44ab-b25d-281b77dcfc2e', 1),
(87, 'fadsfasdfadsfadsfads', 2, 1000000, 1000000, '2023-01-24 18:53:34', 1, NULL, NULL, 1, 'Engineer', 'b553f1d7-b2d1-42bb-bb9c-91faba9bac19', 0),
(88, 'cadfasfasdfadsfadsf', 2, 1000000, 1000000, '2023-01-24 19:01:25', 1, NULL, NULL, 1, 'Engineer', '2c29fb5c-1f1e-4ceb-babb-3901fcaac11d', 0),
(89, 'fdasfasdfasdfasdfasd', 2, 1000000, 1000000, '2023-01-24 19:05:14', 1, NULL, NULL, 1, 'Engineer', 'c563b7dc-4da7-433e-a364-af2d47707db0', 0),
(90, 'fdfasdfafadsf', 2, 1000000, 1000000, '2023-01-24 19:12:14', 1, NULL, NULL, 1, 'Engineer', 'fe733b8f-0979-4f18-8514-3fc8ad451c36', 0),
(91, 'fsadfadsfadsfsa', 1, 500000, 500000, '2023-01-24 20:49:14', 1, NULL, NULL, 1, 'Engineer', 'aac41c53-aa33-43a7-9ec9-a8bfbdeea497', 1),
(92, 'arjai firm', 1, 1500000, 1500000, '2023-01-25 07:14:05', 1, NULL, NULL, 1, 'Engineer', 'e8e8671f-ae19-40d7-897b-94aac8d2a4e0', 1),
(93, 'arjai construction firm', 1, 1500000, 1500000, '2023-01-25 07:47:14', 1, NULL, NULL, 1, 'Engineer', 'b2db7e70-9e3b-4ede-a98f-217a62646ccd', 1),
(94, 'arjai firm', 3, 3000000, 3000000, '2023-01-25 07:51:06', 1, NULL, NULL, 2, 'Employee', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1),
(95, 'shell sta. martia', 1, 1000000, 1000000, '2023-01-25 07:54:36', 1, NULL, NULL, 4, 'Engineer', '5620a983-8197-4e59-99ef-e12428ef5a02', 1),
(96, 'sta maria site', 1, 1000000, 1000000, '2023-01-25 07:57:19', 1, NULL, NULL, 56, 'Employee', 'd6e7c724-b6fb-4b96-907a-6be50145ce53', 1),
(97, 'ARJAI\'S CONSTRUCTION FIRM', 2, 1000250, 1000250, '2023-01-26 07:48:33', 1, NULL, NULL, 56, 'Employee', '080126cd-c6f9-4b05-9c25-ace8e96ea584', 1),
(98, 'test test', 2, 1000000, 1000000, '2023-01-26 15:25:03', 1, NULL, NULL, 1, 'Engineer', '12f10d61-71b8-4bd4-b226-1edc7cd220ca', 1),
(99, 'xcv', 1, 1000000, 1000000, '2023-01-27 13:39:07', 1, NULL, NULL, 1, 'Engineer', 'c3e95a67-4cdd-4eb8-9923-c56d5c965a0b', 1),
(100, 'bbb', 1, 1500000, 1500000, '2023-01-27 13:41:42', 1, NULL, NULL, 1, 'Engineer', 'd755c209-6ee2-42d0-a578-b195b3e2667b', 1),
(101, 'ggg', 1, 500000, 500000, '2023-01-27 13:50:57', 1, NULL, NULL, 1, 'Engineer', 'ef8f6e23-0a80-4118-b4fa-5bb918ef3183', 1),
(102, 'fsadfasdfadsf', 2, 1000000, 1000000, '2023-01-27 15:56:04', 1, NULL, NULL, 1, 'Engineer', 'c36dcd16-ea5e-46f5-8f33-2e1235a88abc', 1),
(103, 'lmao', 3, 500000, 500000, '2023-01-27 16:12:19', 1, NULL, NULL, 1, 'Engineer', '948d9a0f-26d2-42a7-8927-44548baf7f4b', 1),
(104, 'sta maria', 1, 1500000, 1500000, '2023-01-27 18:26:06', 1, NULL, NULL, 1, 'Engineer', 'd177311a-9d07-4eae-8dfd-a2536f0a005e', 1),
(105, 'stamaria', 1, 1000000, 1000000, '2023-01-27 18:32:10', 1, NULL, NULL, 2, 'Employee', '1890a6c0-2bdb-4935-849e-c961dec94d26', 1),
(106, 'STA CRUZ OVERPASS CONSTRUCTION', 1, 1000000, 1000000, '2023-01-27 18:43:39', 1, NULL, NULL, 2, 'Employee', 'dee223fe-6f30-44e4-8458-8bc06e4a3464', 1),
(107, 'sta maria site', 1, 1000000, 1000000, '2023-01-27 19:32:56', 1, NULL, NULL, 2, 'Employee', '094fffe7-d947-4f8d-9353-dfddbc7db532', 1),
(108, 'test for new feature', 2, 1000000, 1000000, '2023-01-28 19:18:04', 1, NULL, NULL, 1, 'Engineer', '07176cc2-47bf-4033-aecc-2d9ecbba295a', 1),
(109, 'test for item class', 2, 500250, 500250, '2023-01-29 02:33:56', 1, NULL, NULL, 1, 'Engineer', '1903dac6-c045-467e-9902-848104580174', 0),
(110, 'STA MARIA SITE', 1, 1000000, 1000000, '2023-01-29 08:26:24', 1, NULL, NULL, 1, 'Engineer', '455bfe8e-cea7-48ba-807c-6bff870ba385', 1),
(111, 'SHELL STA MARI SITE', 1, 1000000, 1000000, '2023-01-29 20:21:45', 1, NULL, NULL, 1, 'Engineer', 'ee3c15a9-c855-428c-b890-571d8ed8115c', 1),
(112, 'afdfasdfadfads', 3, 1000250, 1000250, '2023-01-29 23:29:33', 1, NULL, NULL, 1, 'Engineer', '923e056c-4fb7-4cea-a29e-499100426938', 1),
(113, 'afdfaasfa', 1, 500000, 500000, '2023-01-29 23:39:56', 1, NULL, NULL, 1, 'Engineer', 'cad9c6ca-511f-4cce-bd24-87c958ab9501', 1),
(114, 'SHELL SITE STA MARIA', 2, 1000100, 1000100, '2023-01-29 23:44:23', 1, NULL, NULL, 1, 'Engineer', '0b8d9680-5c96-439a-83b4-c8cf57e3a043', 1),
(115, '100 bags common nail for sta maria site', 1, 100, 100, '2023-01-29 23:49:51', 1, NULL, NULL, 1, 'Engineer', '6a44f352-d57e-4e30-b5c7-7e35bff0aef7', 1),
(116, '100 sacks bound for shell sta maria', 1, 100, 100, '2023-01-29 23:52:26', 1, NULL, NULL, 1, 'Engineer', '99a9efe1-042f-4a3a-8ff2-26634bd8a5cf', 1),
(117, '100 sacks', 1, 250, 250, '2023-01-29 23:54:10', 1, NULL, NULL, 1, 'Engineer', 'cef96aef-3ce7-46fe-af03-461375639c3a', 1),
(118, 'sta maria site', 1, 1000000, 1000000, '2023-01-30 01:32:30', 1, NULL, NULL, 1, 'Engineer', 'ca67eb40-f909-4a25-ad74-a1b964893db7', 1),
(119, 'ARJAI CONSTRUCTION FIRM', 1, 1000000, 1000000, '2023-01-31 09:19:30', 1, NULL, NULL, 1, 'Engineer', '6ae97eec-b240-41f6-aafe-9112f36d8556', 1),
(120, 'ARJAI CONSTRUCTION FIRM MATERIAL REQUEST\nNAILS 100PCS\nCEMENT 100 SACKS', 2, 350, 350, '2023-01-31 09:22:50', 1, NULL, NULL, 1, 'Engineer', '9573c6a0-ba3f-405e-804a-ee8f86a23fca', 1),
(121, 'ARJAI\'S CONSTRUCTION FIRM', 1, 1000000, 1000000, '2023-01-31 12:39:29', 1, NULL, NULL, 1, 'Engineer', '090aad8d-7354-43bd-bbca-7f4d1b0650b9', 1),
(122, 'hatchback', 1, 1000000, 1000000, '2023-01-31 21:00:40', 1, NULL, NULL, 1, 'Engineer', '24b1a892-b226-4ba1-8b07-878adac51cf5', 1),
(123, 'STA MARIA SITE DELIVERY', 2, 1000250, 1000250, '2023-02-02 18:24:56', 1, NULL, NULL, 1, 'Engineer', 'ae5781c8-840c-48a3-b069-64b1b7261e08', 1),
(124, 'ARJAI', 1, 500, 500, '2023-02-05 16:16:05', 1, NULL, NULL, 1, 'Engineer', 'd6b40247-945c-4c1e-82ec-b03ad3142ce3', 1),
(125, 'fhgfjfj', 1, 500, 500, '2023-02-06 01:36:56', 1, NULL, NULL, 1, 'Engineer', '916ac777-349a-445a-a266-bfb1a4c14805', 1),
(126, 'ARJAI CONSTRUCTION FIRM', 1, 500, 500, '2023-02-06 06:11:16', 1, NULL, NULL, 2, 'Employee', '858f01bf-0ce9-4a30-80f1-bc2cccdc0ff3', 1);

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
  `item_id` int(11) DEFAULT NULL,
  `item_class` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout_items`
--

INSERT INTO `checkout_items` (`id`, `name`, `qty`, `unit`, `type`, `price`, `status`, `date_purchased`, `chkout_id`, `checkout_status`, `item_id`, `item_class`) VALUES
(50, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-12 12:38:25', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, 2, NULL),
(51, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-12 12:38:25', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, 2, NULL),
(63, 'Newmen E120', 1, 'hehe', 'Keyboard', 550, '20191002', '2022-12-13 14:47:17', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 1, 4, NULL),
(64, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-13 14:47:17', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 1, 2, NULL),
(65, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-08 22:04:45', 'ff9056af-1bfd-4b55-a391-b84d3bde099c', 1, 3, NULL),
(66, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-08 22:07:01', 'cb8aecdd-a6a3-4c51-8365-d60f8a8d8402', 1, 3, NULL),
(67, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-08 22:07:01', 'cb8aecdd-a6a3-4c51-8365-d60f8a8d8402', 1, 2, NULL),
(68, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 10:35:37', 'c640a9c0-758e-43e1-aa2f-5daa23b7a673', 1, 4, NULL),
(69, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 11:42:22', 'c7e15599-8c93-47de-8cf6-96d0bd418034', 1, 4, NULL),
(70, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 15:39:26', 'b4f5a482-d0ab-4a10-8a23-351b289e4b8b', 1, 4, NULL),
(71, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 19:46:40', 'a8121717-d865-463b-929a-655ffb4a2c31', 1, 4, NULL),
(72, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-09 22:38:10', '89e767de-a20c-4a1d-a101-9908b7b89960', 1, 3, NULL),
(73, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 00:38:22', 'b0ccc8e9-1fec-4420-ab8d-4e1ba8469011', 1, 0, NULL),
(74, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 00:42:12', '727b804d-5605-4c39-80ec-cdeb9dd386ec', 1, 0, NULL),
(75, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 00:49:11', 'e7699839-f870-4ed9-9401-e2c263a6a7aa', 1, 0, NULL),
(76, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 00:49:11', 'e7699839-f870-4ed9-9401-e2c263a6a7aa', 1, 0, NULL),
(77, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 00:49:25', 'e67e4fd6-41c7-42f7-84f6-7d6f1fbcf698', 1, 0, NULL),
(78, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 00:49:25', 'e67e4fd6-41c7-42f7-84f6-7d6f1fbcf698', 1, 0, NULL),
(79, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 00:49:25', 'e67e4fd6-41c7-42f7-84f6-7d6f1fbcf698', 1, 0, NULL),
(80, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 01:07:34', '9997c025-7be0-46ce-804e-075491ae10d7', 1, 0, NULL),
(81, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 01:10:27', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1, 0, NULL),
(82, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 01:10:27', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1, 0, NULL),
(83, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 01:10:27', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1, 0, NULL),
(84, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 01:10:27', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1, 0, NULL),
(85, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 01:41:24', '3a579846-e204-4e01-bd7a-f9dd02a09919', 1, 0, NULL),
(86, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 01:45:15', '52f3790e-fc51-4abe-889f-4adaec0f76e7', 1, 0, NULL),
(87, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 10:04:26', '9c56ba24-2401-4b8e-b1e2-8500cc8e2225', 1, 0, NULL),
(88, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 13:07:04', 'a60e8e85-92fa-415e-96a9-48a4b85aeb08', 1, 0, NULL),
(89, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 13:07:05', 'a60e8e85-92fa-415e-96a9-48a4b85aeb08', 1, 0, NULL),
(90, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 13:07:05', 'a60e8e85-92fa-415e-96a9-48a4b85aeb08', 1, 0, NULL),
(91, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 13:08:22', 'd852353f-1f49-46b8-809b-e3d0eebf5df7', 1, 0, NULL),
(92, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 13:08:22', 'd852353f-1f49-46b8-809b-e3d0eebf5df7', 1, 0, NULL),
(93, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 13:08:22', 'd852353f-1f49-46b8-809b-e3d0eebf5df7', 1, 0, NULL),
(94, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 13:25:54', '4ea48411-f410-4158-b041-c51fcf85a32f', 1, 0, NULL),
(95, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 13:25:54', '4ea48411-f410-4158-b041-c51fcf85a32f', 1, 0, NULL),
(96, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 13:28:04', '09ba0224-59c0-425f-a959-4860d57ffa2c', 1, 0, NULL),
(97, 'Haruma Drills', 1, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2023-01-10 13:28:04', '09ba0224-59c0-425f-a959-4860d57ffa2c', 1, 0, NULL),
(98, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 13:40:17', 'c0e0a18b-4b38-4996-a83c-75f82870c11e', 1, 5, NULL),
(99, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-10 13:40:17', 'c0e0a18b-4b38-4996-a83c-75f82870c11e', 1, 3, NULL),
(100, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-10 15:14:36', '622a7fc7-304f-4d89-8da3-6a47ab6edcef', 1, 3, NULL),
(101, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 19:25:28', '1f416bd8-d5eb-4394-9499-f57f0e708f9a', 1, 5, NULL),
(102, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 19:31:46', 'aa868be2-41dd-4268-a76c-f89933eb297f', 1, 5, NULL),
(103, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-10 19:49:47', '828b9ada-eb79-4a01-8360-2a60b6334e91', 1, 3, NULL),
(104, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-11 08:51:14', '25e2c9a9-a494-40e2-ab6a-6c96e5a1e445', 1, 3, NULL),
(105, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-12 11:08:35', '2907ef86-809e-4a75-8699-6dede1f98b56', 1, 5, NULL),
(106, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Used', '2023-01-12 11:12:14', '41ab6e98-4295-404a-bd0c-ff36b79c0d3b', 1, 5, NULL),
(107, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-12 11:15:03', '8dd8edf1-f3bb-4e9d-902c-3b96b66a20f7', 1, 3, NULL),
(108, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Used', '2023-01-12 11:21:21', 'd16e1945-e46a-4b78-b0a0-a86998e20253', 1, 5, NULL),
(109, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:31:20', 'fdda584b-4ac8-4e0b-8eb5-40d612120d93', NULL, 5, NULL),
(110, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:34:31', 'ccd798ce-48ba-455c-92a9-67de68ecb99f', NULL, 5, NULL),
(111, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-17 18:38:11', '0da29588-16ae-44d5-9886-af8b1bca65cc', NULL, 4, NULL),
(112, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:39:22', 'ddbdab0c-a853-4a2a-a9d2-7930024386a6', NULL, 5, NULL),
(113, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-17 18:41:43', '18d2df0f-0fb4-44c3-aa7d-74a6e7fecc96', NULL, 3, NULL),
(114, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:45:31', '945865fd-02e8-4b53-a239-064f81f5b20c', NULL, 5, NULL),
(115, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-17 18:47:00', '5a7701f1-5fb4-4eae-8d2c-47130611abc5', NULL, 4, NULL),
(116, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:48:51', 'd059db53-b7d2-44a2-b3b4-5acd15671853', NULL, 5, NULL),
(117, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:50:09', '54c90f99-902d-4200-b971-227db141e37c', NULL, 5, NULL),
(118, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:52:48', '67bd2cdc-6032-4545-a479-02227703fc01', NULL, 5, NULL),
(119, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:55:24', 'dd98c5c4-bf95-4eb6-a718-2ae953266208', NULL, 5, NULL),
(120, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 18:58:58', 'c1d332a2-f246-4a87-b05d-c7f3c25f0fd1', NULL, 5, NULL),
(121, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 19:19:38', '78c008a0-b6b5-4539-9f41-d8b3e069b5bd', NULL, 5, NULL),
(122, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 19:26:33', '9f4869ab-e7fa-43d9-9806-05ed4935e1d3', NULL, 5, NULL),
(123, 'George\'s Nails', 1, '5 mm diameter crosshead nails', 'Others', 100, '20221214', '2023-01-17 19:28:17', '5f94de0c-26a9-496a-a475-5c5c96dccf78', NULL, 29, NULL),
(124, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-17 19:37:31', 'd84924a8-f6c7-43fd-94ba-a965e57148f5', NULL, 5, NULL),
(125, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-19 02:13:49', '76d305d2-5ef0-4c92-939f-9605a0a3754e', NULL, 3, NULL),
(126, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-20 08:51:25', '75bfd86b-fbcd-4a1b-97e4-90d2a15ecec7', NULL, 5, NULL),
(127, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-23 16:03:24', 'ee8c7cbb-852f-414f-803b-4a521d1d1096', NULL, 4, NULL),
(128, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-23 16:03:24', 'ee8c7cbb-852f-414f-803b-4a521d1d1096', NULL, 4, NULL),
(129, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-23 21:22:15', 'f3e64a4e-bb49-4118-a3eb-f7a80915d807', NULL, 5, NULL),
(130, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-23 21:22:15', 'f3e64a4e-bb49-4118-a3eb-f7a80915d807', NULL, 5, NULL),
(131, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-23 22:50:51', '1579b18a-c6a5-4e06-b34b-7349978fe3a8', NULL, 3, NULL),
(132, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:00:21', 'a580686e-9ab6-4467-9ee0-76f36ff91c2e', NULL, 4, NULL),
(133, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:00:21', 'a580686e-9ab6-4467-9ee0-76f36ff91c2e', NULL, 4, NULL),
(134, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:01:34', 'c7b2b3e2-547d-49c7-9832-28ccd742ada8', NULL, 4, NULL),
(135, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:01:34', 'c7b2b3e2-547d-49c7-9832-28ccd742ada8', NULL, 4, NULL),
(136, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:13:53', '910827c9-91df-4298-9a11-05ac3b503ff6', NULL, 4, NULL),
(137, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:13:53', '910827c9-91df-4298-9a11-05ac3b503ff6', NULL, 4, NULL),
(138, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:15:22', 'd3c7a376-ab97-45ad-8cd8-707df9463070', NULL, 4, NULL),
(139, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:15:22', 'd3c7a376-ab97-45ad-8cd8-707df9463070', NULL, 4, NULL),
(140, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:17:20', '15505c5c-7ad1-47d0-9f56-399fa2775fbb', NULL, 4, NULL),
(141, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:17:20', '15505c5c-7ad1-47d0-9f56-399fa2775fbb', NULL, 4, NULL),
(142, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:21:58', '662d2742-c6bf-42c0-9174-37894faa7b7f', 1, 4, NULL),
(143, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 01:21:58', '662d2742-c6bf-42c0-9174-37894faa7b7f', 1, 4, NULL),
(144, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-24 01:33:13', 'f2abf912-bbd4-44ab-b25d-281b77dcfc2e', 1, 3, NULL),
(145, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-24 08:19:44', '49729c8e-6984-47a1-93e0-0d4ed73faa65', NULL, 3, NULL),
(146, 'George\'s Nails', 1, '5 mm diameter crosshead nails', 'Others', 100, '20221214', '2023-01-24 08:19:44', '49729c8e-6984-47a1-93e0-0d4ed73faa65', NULL, 29, NULL),
(147, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 18:53:35', 'b553f1d7-b2d1-42bb-bb9c-91faba9bac19', 1, 4, NULL),
(148, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 18:53:35', 'b553f1d7-b2d1-42bb-bb9c-91faba9bac19', 1, 4, NULL),
(149, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:01:26', '2c29fb5c-1f1e-4ceb-babb-3901fcaac11d', 1, 4, NULL),
(150, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:01:26', '2c29fb5c-1f1e-4ceb-babb-3901fcaac11d', 1, 4, NULL),
(151, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:05:14', 'c563b7dc-4da7-433e-a364-af2d47707db0', 1, 4, NULL),
(152, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:05:14', 'c563b7dc-4da7-433e-a364-af2d47707db0', 1, 4, NULL),
(153, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:12:15', 'fe733b8f-0979-4f18-8514-3fc8ad451c36', 1, 4, NULL),
(154, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:12:15', 'fe733b8f-0979-4f18-8514-3fc8ad451c36', 1, 4, NULL),
(155, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-24 20:44:34', '96efd6ba-a3c6-40ef-b233-464fc5d38c0a', NULL, 3, NULL),
(156, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-24 20:45:25', '0bdd6119-f468-4640-ba88-64b118423149', NULL, 5, NULL),
(157, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-24 20:47:39', 'b2fb706f-923c-442f-980b-a2abb83ac028', NULL, 5, NULL),
(158, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 20:49:14', 'aac41c53-aa33-43a7-9ec9-a8bfbdeea497', 1, 4, NULL),
(159, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-24 20:52:47', 'ac8f5dc0-0274-4e60-924a-f19722548a67', NULL, 3, NULL),
(160, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-24 20:56:15', '9438dde9-97b4-40fb-b54d-654b361ff7c5', NULL, 3, NULL),
(161, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-24 20:56:46', '1456cc1d-ba56-40ce-b78e-284039c39fbb', NULL, 3, NULL),
(162, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-25 07:14:06', 'e8e8671f-ae19-40d7-897b-94aac8d2a4e0', 1, 3, NULL),
(163, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-25 07:47:14', 'b2db7e70-9e3b-4ede-a98f-217a62646ccd', 1, 3, NULL),
(164, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-25 07:51:07', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1, 4, NULL),
(165, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-25 07:51:07', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1, 5, NULL),
(166, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-25 07:51:07', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1, 3, NULL),
(167, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-25 07:54:37', '5620a983-8197-4e59-99ef-e12428ef5a02', 1, 5, NULL),
(168, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-25 07:57:19', 'd6e7c724-b6fb-4b96-907a-6be50145ce53', 1, 5, NULL),
(169, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-26 07:48:33', '080126cd-c6f9-4b05-9c25-ace8e96ea584', 1, 5, NULL),
(170, 'George\'s Cement', 1, 'Cemento', 'Others', 250, '20221512', '2023-01-26 07:48:33', '080126cd-c6f9-4b05-9c25-ace8e96ea584', 1, 30, NULL),
(171, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-26 15:25:03', '12f10d61-71b8-4bd4-b226-1edc7cd220ca', 1, 4, NULL),
(172, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-26 15:25:03', '12f10d61-71b8-4bd4-b226-1edc7cd220ca', 1, 4, NULL),
(173, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 13:39:07', 'c3e95a67-4cdd-4eb8-9923-c56d5c965a0b', 1, 5, NULL),
(174, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Slightly Used', '2023-01-27 13:41:42', 'd755c209-6ee2-42d0-a578-b195b3e2667b', 1, 3, NULL),
(175, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Slightly Used', '2023-01-27 13:44:22', '30653c83-9af6-4c67-aa3e-a966238d1be1', NULL, 3, NULL),
(176, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 13:49:44', '3f92e671-cfca-45c2-80ed-2462b4bd4415', NULL, 4, NULL),
(177, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 13:50:58', 'ef8f6e23-0a80-4118-b4fa-5bb918ef3183', 1, 4, NULL),
(178, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 15:56:04', 'c36dcd16-ea5e-46f5-8f33-2e1235a88abc', 1, 4, NULL),
(179, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 15:56:04', 'c36dcd16-ea5e-46f5-8f33-2e1235a88abc', 1, 4, NULL),
(180, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 16:12:19', '948d9a0f-26d2-42a7-8927-44548baf7f4b', 1, 4, NULL),
(181, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Slightly Used', '2023-01-27 18:26:06', 'd177311a-9d07-4eae-8dfd-a2536f0a005e', 1, 3, NULL),
(182, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-27 18:32:10', '1890a6c0-2bdb-4935-849e-c961dec94d26', 1, 5, NULL),
(183, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 18:43:39', 'dee223fe-6f30-44e4-8458-8bc06e4a3464', 1, 5, NULL),
(184, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 19:32:56', '094fffe7-d947-4f8d-9353-dfddbc7db532', 1, 5, NULL),
(185, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-28 19:18:04', '07176cc2-47bf-4033-aecc-2d9ecbba295a', 1, 4, 'E'),
(186, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-28 19:18:04', '07176cc2-47bf-4033-aecc-2d9ecbba295a', 1, 4, 'E'),
(187, 'George\'s Cement', 1, 'Cemento', 'Others', 250, '20221512', '2023-01-29 02:33:56', '1903dac6-c045-467e-9902-848104580174', NULL, 30, 'M'),
(188, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 02:33:56', '1903dac6-c045-467e-9902-848104580174', NULL, 4, 'E'),
(189, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-29 08:26:24', '455bfe8e-cea7-48ba-807c-6bff870ba385', 1, 5, NULL),
(190, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-29 20:21:46', 'ee3c15a9-c855-428c-b890-571d8ed8115c', 1, 5, NULL),
(191, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 23:29:32', '923e056c-4fb7-4cea-a29e-499100426938', 1, 4, 'E'),
(192, 'George\'s Cement', 1, 'Cemento', 'Others', 250, 'Brand New', '2023-01-29 23:29:33', '923e056c-4fb7-4cea-a29e-499100426938', 1, 30, 'M'),
(193, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 23:29:33', '923e056c-4fb7-4cea-a29e-499100426938', 1, 4, 'E'),
(194, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 23:39:56', 'cad9c6ca-511f-4cce-bd24-87c958ab9501', 1, 4, 'E'),
(195, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-29 23:44:24', '0b8d9680-5c96-439a-83b4-c8cf57e3a043', 1, 5, NULL),
(196, 'George\'s Nails', 1, '5 mm diameter crosshead nails', 'Others', 100, 'Brand New', '2023-01-29 23:44:24', '0b8d9680-5c96-439a-83b4-c8cf57e3a043', 1, 29, NULL),
(197, 'CWM nail', 1, '1in Common Nail', 'Others', 100, 'Brand New', '2023-01-29 23:49:04', 'bed90c49-4576-4a69-8e4c-cabcafccd9e5', NULL, 31, 'M'),
(198, 'CWM nail', 1, '1in Common Nail', 'Others', 100, 'Brand New', '2023-01-29 23:49:51', '6a44f352-d57e-4e30-b5c7-7e35bff0aef7', 1, 31, 'M'),
(199, 'George\'s Nails', 1, '5 mm diameter crosshead nails', 'Others', 100, 'Brand New', '2023-01-29 23:52:26', '99a9efe1-042f-4a3a-8ff2-26634bd8a5cf', 1, 29, 'M'),
(200, 'George\'s Cement', 1, 'Cemento', 'Others', 250, 'Brand New', '2023-01-29 23:54:11', 'cef96aef-3ce7-46fe-af03-461375639c3a', 1, 30, 'M'),
(201, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-30 01:32:31', 'ca67eb40-f909-4a25-ad74-a1b964893db7', 1, 5, 'E'),
(202, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 09:19:31', '6ae97eec-b240-41f6-aafe-9112f36d8556', 1, 5, 'E'),
(203, 'George\'s Cement', 1, 'Cemento', 'Others', 250, 'Brand New', '2023-01-31 09:22:51', '9573c6a0-ba3f-405e-804a-ee8f86a23fca', 1, 30, 'M'),
(204, 'George\'s Nails', 1, '5 mm diameter crosshead nails', 'Others', 100, 'Brand New', '2023-01-31 09:22:51', '9573c6a0-ba3f-405e-804a-ee8f86a23fca', 1, 29, 'M'),
(205, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 12:39:29', '090aad8d-7354-43bd-bbca-7f4d1b0650b9', 1, 5, 'E'),
(206, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 21:00:41', '24b1a892-b226-4ba1-8b07-878adac51cf5', 1, 5, 'E'),
(207, 'George\'s Cement', 1, 'Cemento', 'Others', 250, 'Brand New', '2023-02-02 18:24:56', 'ae5781c8-840c-48a3-b069-64b1b7261e08', 1, 30, 'M'),
(208, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-02-02 18:24:56', 'ae5781c8-840c-48a3-b069-64b1b7261e08', 1, 5, 'E'),
(209, 'Haruma Drill', 1, '4 Kg', 'Heavy Equipment', 500, 'Brand New', '2023-02-05 16:16:06', 'd6b40247-945c-4c1e-82ec-b03ad3142ce3', 1, 6, 'E'),
(210, 'Haruma Drill', 1, '4 kg', 'Light Equipment', 500, 'Heavily Used', '2023-02-06 01:36:56', '916ac777-349a-445a-a266-bfb1a4c14805', 1, 6, 'E'),
(211, 'Haruma Drill', 1, '4 kg', 'Light Equipment', 500, 'Brand New', '2023-02-06 06:11:17', '858f01bf-0ce9-4a30-80f1-bc2cccdc0ff3', 1, 6, 'E');

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
(1, 'Prince Ly', 'Cesar', 'Male', 'princelycesar23@gmail.com', '09124033805', 1, '0000-00-00', 113, 'Prince9LyCesarxob8R0xSzz', '../img/qrcode/2023-01-10 11,53,06.png'),
(2, 'Josuey', 'Mag-asos', 'Male', 'jmagaso@yahoo.com', '09091245761', 2, '2019-01-28', 156, 'JosueyMag-asos67PqmSOJ6t', '../img/qrcode/2023-01-09 16,42,32.png'),
(4, 'Monica', 'Empinado', 'Female', 'monicapadernal@gmail.com', '09123357105', 1, '2019-03-06', 158, NULL, NULL),
(5, 'John', 'Doe', 'Male', 'johndoe@gmail.com', '09064854451', 2, '2022-11-22', 159, NULL, NULL),
(54, 'Jen', 'Cruz', 'Male', 'josecruz@yahoo.com', '09999999999', 1, '2023-01-03', 245, 'JenCruztysKBfeT19', '../img/qrcode/2023-01-03 10,52,41.png'),
(55, 'Jarry', 'Cruz', 'Male', 'joserico_cruz@yahoo.com', '09157004949', 1, '2023-01-03', 246, 'JarryCruzTILZ5tqgOU', '../img/qrcode/2023-01-03 14,13,10.png'),
(56, 'Don', 'Sanchez', 'Male', 'fdgodling@gmail.com', '09153329585', 2, '2023-01-07', 247, 'DonSanchezFli9LK9c02', '../img/qrcode/2023-01-10 12,19,42.png');

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
(6, 'Haruma Drill', '4 KG all purpose drills', '4 kg', 1, 500, 'Light Equipment', '2023-02-05 00:00:00', 'Slightly Used');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_status`
--

CREATE TABLE `equipment_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment_status`
--

INSERT INTO `equipment_status` (`id`, `status_name`) VALUES
(1, 'Brand New'),
(2, 'Slightly Used'),
(3, 'Used'),
(4, 'Heavily Used'),
(5, 'Damage/Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_type`
--

CREATE TABLE `equipment_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment_type`
--

INSERT INTO `equipment_type` (`id`, `type_name`) VALUES
(1, 'Heavy Equipment'),
(2, 'Light Equipment');

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
(247, 'Batanes', 'Basco'),
(248, 'Zamboanga del Sur', 'Zamboanga City'),
(249, '', '');

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
(32, '1', 'CWM nail', '1cm COMMON NAIL', 5000, 5000, 100, 9, '2023-02-05');

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
  `status` varchar(32) DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `checkout_id` varchar(256) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `return_status` int(11) DEFAULT 0,
  `item_class` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returned_items`
--

INSERT INTO `returned_items` (`id`, `name`, `qty`, `unit`, `type`, `price`, `status`, `date_returned`, `checkout_id`, `customer_id`, `employee_id`, `item_id`, `return_status`, `item_class`) VALUES
(6, 'Haruma Drill', 300, '10 kg', 'Heavy Equipment', 5000, 'Brand New', '2022-12-13 09:02:34', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 7, NULL, NULL, 1, NULL),
(7, 'Newmen E120', 10, 'hehe', 'Keyboard', 550, '20191002', '2022-12-13 09:02:36', '6e31ac07-560f-4a1a-a7ea-716e51c7d6a7', 7, NULL, NULL, 1, NULL),
(11, 'Wilcon\'s Chainsaw', 1, '10 kg', 'Heavy Equipment', 250, 'Brand New', '2023-01-08 22:03:23', 'd55efd47-5ed3-4367-8651-3da33a580c06', 1, NULL, NULL, 1, NULL),
(12, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-08 22:06:13', 'ff9056af-1bfd-4b55-a391-b84d3bde099c', 1, NULL, NULL, 1, NULL),
(13, 'Haruma Drill', 1, '10 kg', 'Heavy Equipment', 5000, 'Heavily Used', '2023-01-08 00:00:00', 'cb8aecdd-a6a3-4c51-8365-d60f8a8d8402', 1, NULL, NULL, 1, NULL),
(14, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-08 22:10:04', 'cb8aecdd-a6a3-4c51-8365-d60f8a8d8402', 7, NULL, NULL, 1, NULL),
(15, 'DAEWOO SKID STEER LOADER', 2, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 11:04:21', 'c640a9c0-758e-43e1-aa2f-5daa23b7a673', 1, NULL, NULL, 1, NULL),
(16, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 13:11:03', 'c7e15599-8c93-47de-8cf6-96d0bd418034', 1, NULL, NULL, 1, NULL),
(17, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-09 15:40:09', 'b4f5a482-d0ab-4a10-8a23-351b289e4b8b', 1, NULL, NULL, 1, NULL),
(18, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-08 00:00:00', 'a8121717-d865-463b-929a-655ffb4a2c31', 1, NULL, NULL, 1, NULL),
(19, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-09 00:00:00', '89e767de-a20c-4a1d-a101-9908b7b89960', 7, NULL, NULL, 1, NULL),
(20, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-10 00:39:47', 'b0ccc8e9-1fec-4420-ab8d-4e1ba8469011', 7, NULL, NULL, 1, NULL),
(21, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-10 00:00:00', '727b804d-5605-4c39-80ec-cdeb9dd386ec', 7, NULL, NULL, 1, NULL),
(22, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-10 00:00:00', 'e7699839-f870-4ed9-9401-e2c263a6a7aa', 16, NULL, NULL, 1, NULL),
(23, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 00:00:00', '9997c025-7be0-46ce-804e-075491ae10d7', 1, NULL, NULL, 1, NULL),
(24, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-10 01:11:26', '05e9b6b2-6dcd-49a6-b2dd-0ac6417b07bd', 1, NULL, NULL, 1, NULL),
(25, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-10 00:00:00', '52f3790e-fc51-4abe-889f-4adaec0f76e7', 1, NULL, NULL, 1, NULL),
(26, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-10 00:00:00', '9c56ba24-2401-4b8e-b1e2-8500cc8e2225', 1, NULL, NULL, 1, NULL),
(27, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Slightly Used', '2023-01-10 15:15:36', '4ea48411-f410-4158-b041-c51fcf85a32f', 1, NULL, NULL, 1, NULL),
(28, 'Haruma Drills', 2, '10 kg', 'Heavy Equipment', 5000, 'Slightly Used', '2023-01-10 15:15:37', '09ba0224-59c0-425f-a959-4860d57ffa2c', 1, NULL, NULL, 1, NULL),
(29, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-10 00:00:00', 'c0e0a18b-4b38-4996-a83c-75f82870c11e', 1, NULL, NULL, 1, NULL),
(30, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-10 15:16:02', 'd852353f-1f49-46b8-809b-e3d0eebf5df7', 1, NULL, NULL, 1, NULL),
(31, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-10 00:00:00', '1f416bd8-d5eb-4394-9499-f57f0e708f9a', 1, NULL, NULL, 1, NULL),
(32, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Brand New', '2023-01-10 00:00:00', 'aa868be2-41dd-4268-a76c-f89933eb297f', 1, NULL, NULL, 1, NULL),
(33, 'Man Lift', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-10 00:00:00', '828b9ada-eb79-4a01-8360-2a60b6334e91', 1, NULL, NULL, 1, NULL),
(34, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Heavily Used', '2023-01-11 00:00:00', '25e2c9a9-a494-40e2-ab6a-6c96e5a1e445', 1, NULL, NULL, 1, NULL),
(35, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Used', '2023-01-12 00:00:00', '2907ef86-809e-4a75-8699-6dede1f98b56', 7, NULL, NULL, 1, NULL),
(36, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Used', '2023-01-12 00:00:00', '41ab6e98-4295-404a-bd0c-ff36b79c0d3b', 7, NULL, NULL, 1, NULL),
(37, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Used', '2023-01-12 00:00:00', '8dd8edf1-f3bb-4e9d-902c-3b96b66a20f7', 10, NULL, NULL, 1, NULL),
(38, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Used', '2023-01-17 00:00:00', 'd16e1945-e46a-4b78-b0a0-a86998e20253', 1, NULL, NULL, 1, NULL),
(39, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 19:21:36', 'fe733b8f-0979-4f18-8514-3fc8ad451c36', 1, NULL, NULL, 1, NULL),
(40, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Brand New', '2023-01-24 20:51:00', 'aac41c53-aa33-43a7-9ec9-a8bfbdeea497', 1, NULL, 4, 1, NULL),
(41, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Brand New', '2023-01-25 07:15:15', 'e8e8671f-ae19-40d7-897b-94aac8d2a4e0', 1, NULL, NULL, 1, NULL),
(43, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-25 07:52:49', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1, NULL, NULL, 1, NULL),
(44, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-25 07:52:51', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 1, NULL, NULL, 1, NULL),
(45, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Slightly Used', '2023-01-25 00:00:00', '62dbfc5c-9eb9-4330-b2b3-8e2238fb990c', 7, NULL, NULL, 1, NULL),
(46, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-25 00:00:00', '5620a983-8197-4e59-99ef-e12428ef5a02', 9, NULL, NULL, 1, NULL),
(47, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-25 15:48:39', 'd6e7c724-b6fb-4b96-907a-6be50145ce53', 1, NULL, NULL, 1, NULL),
(48, 'George\'s Cement', 100, 'Cemento', 'Others', 250, '20221512', '2023-01-26 07:49:31', '080126cd-c6f9-4b05-9c25-ace8e96ea584', 1, NULL, NULL, 1, NULL),
(49, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-26 00:00:00', '080126cd-c6f9-4b05-9c25-ace8e96ea584', 1, NULL, NULL, 1, NULL),
(54, 'DAEWOO SKID STEER LOADER', 2, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 16:08:29', 'c36dcd16-ea5e-46f5-8f33-2e1235a88abc', NULL, 1, 4, 1, NULL),
(55, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Heavily Used', '2023-01-27 16:14:03', '948d9a0f-26d2-42a7-8927-44548baf7f4b', NULL, 1, 4, 1, NULL),
(56, 'MAN LIFT', 1, '2000kg (2 Persons)', 'Heavy Equipment', 1500000, 'Heavily Used', '2023-01-27 18:27:08', 'd177311a-9d07-4eae-8dfd-a2536f0a005e', NULL, 1, 3, 1, NULL),
(57, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 18:33:01', '1890a6c0-2bdb-4935-849e-c961dec94d26', NULL, 2, 5, 1, NULL),
(58, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 00:00:00', 'dee223fe-6f30-44e4-8458-8bc06e4a3464', 7, 2, 5, 1, NULL),
(59, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-27 00:00:00', '094fffe7-d947-4f8d-9353-dfddbc7db532', 1, 2, 5, 1, NULL),
(60, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Slightly Used', '2023-01-29 00:00:00', '455bfe8e-cea7-48ba-807c-6bff870ba385', 1, 1, 5, 1, NULL),
(61, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-29 20:22:22', 'ee3c15a9-c855-428c-b890-571d8ed8115c', NULL, 1, 5, 1, NULL),
(62, 'DAEWOO SKID STEER LOADER', 2, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 23:31:53', '923e056c-4fb7-4cea-a29e-499100426938', NULL, 1, 4, 1, 'E'),
(63, 'George\'s Cement', 1, 'Cemento', 'Others', 250, 'Brand New', '2023-01-29 23:32:00', '923e056c-4fb7-4cea-a29e-499100426938', NULL, 1, 30, 1, 'M'),
(64, 'DAEWOO SKID STEER LOADER', 1, '2,482 KG', 'Heavy Equipment', 500000, 'Used', '2023-01-29 23:41:00', 'cad9c6ca-511f-4cce-bd24-87c958ab9501', NULL, 1, 4, 1, 'E'),
(65, 'George\'s Nails', 100, '5 mm diameter crosshead nails', 'Others', 100, 'Brand New', '2023-01-29 23:45:34', '0b8d9680-5c96-439a-83b4-c8cf57e3a043', NULL, 1, 29, 1, ''),
(66, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-29 00:00:00', '0b8d9680-5c96-439a-83b4-c8cf57e3a043', 1, 1, 5, 1, ''),
(67, 'CWM nail', 100, '1in Common Nail', 'Others', 100, 'Brand New', '2023-01-29 00:00:00', '6a44f352-d57e-4e30-b5c7-7e35bff0aef7', 1, 1, 31, 1, 'M'),
(68, 'George\'s Nails', 100, '5 mm diameter crosshead nails', 'Others', 100, '', '2023-01-29 00:00:00', '99a9efe1-042f-4a3a-8ff2-26634bd8a5cf', 1, 1, 29, 1, 'M'),
(69, 'George\'s Cement', 100, 'Cemento', 'Others', 250, 'Used', '2023-01-29 23:54:57', 'cef96aef-3ce7-46fe-af03-461375639c3a', NULL, 1, 30, 1, 'M'),
(70, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-30 00:00:00', 'ca67eb40-f909-4a25-ad74-a1b964893db7', 1, 1, 5, 1, 'E'),
(71, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 00:00:00', '6ae97eec-b240-41f6-aafe-9112f36d8556', 1, 1, 5, 1, 'E'),
(72, 'George\'s Cement', 100, 'Cemento', 'Others', 250, 'Brand New', '2023-01-31 09:24:22', '9573c6a0-ba3f-405e-804a-ee8f86a23fca', NULL, 1, 30, 1, 'M'),
(73, 'George\'s Nails', 100, '5 mm diameter crosshead nails', 'Others', 100, 'Brand New', '2023-01-31 09:24:23', '9573c6a0-ba3f-405e-804a-ee8f86a23fca', NULL, 1, 29, 1, 'M'),
(74, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 00:00:00', '090aad8d-7354-43bd-bbca-7f4d1b0650b9', 1, 1, 5, 1, 'E'),
(75, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-01-31 00:00:00', '24b1a892-b226-4ba1-8b07-878adac51cf5', 1, 1, 5, 1, 'E'),
(76, 'George\'s Cement', 50, 'Cemento', 'Others', 250, 'Brand New', '2023-02-02 18:31:18', 'ae5781c8-840c-48a3-b069-64b1b7261e08', NULL, 1, 30, 1, 'M'),
(77, 'LORRY LOADER BOOM TRUCK', 1, '2.9 TONS', 'Heavy Equipment', 1000000, 'Heavily Used', '2023-02-02 00:00:00', 'ae5781c8-840c-48a3-b069-64b1b7261e08', 1, 1, 5, 1, 'E'),
(78, 'Haruma Drill', 1, '4 Kg', 'Heavy Equipment', 500, 'Heavily Used', '2023-02-05 16:28:50', 'd6b40247-945c-4c1e-82ec-b03ad3142ce3', NULL, 1, 6, 1, 'E'),
(79, 'Haruma Drill', 1, '4 kg', 'Light Equipment', 500, 'Brand New', '2023-02-06 00:00:00', '916ac777-349a-445a-a266-bfb1a4c14805', 1, 1, 6, 1, 'E'),
(80, 'Haruma Drill', 1, '4 kg', 'Light Equipment', 500, 'Slightly Used', '2023-02-06 00:00:00', '858f01bf-0ce9-4a30-80f1-bc2cccdc0ff3', 7, 2, 6, 1, 'E');

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
  `BORROWER_EMP` int(11) DEFAULT NULL,
  `CHECKOUT_ID` varchar(128) DEFAULT NULL,
  `DATE_BORROWED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `NAME`, `PLATE_NO`, `AVAILABILITY`, `BORROWER_EMP`, `CHECKOUT_ID`, `DATE_BORROWED`) VALUES
(1, 'Lancer Evo', 'ABC 2006', 1, 2, '858f01bf-0ce9-4a30-80f1-bc2cccdc0ff3', '2022-11-28 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_items`
--
ALTER TABLE `approved_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approved_items_ibfk_1` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `checkout_details`
--
ALTER TABLE `checkout_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `employee_id` (`employee_id`);

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
-- Indexes for table `equipment_status`
--
ALTER TABLE `equipment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_type`
--
ALTER TABLE `equipment_type`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BORROWER_EMP` (`BORROWER_EMP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approved_items`
--
ALTER TABLE `approved_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `checkout_details`
--
ALTER TABLE `checkout_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `checkout_items`
--
ALTER TABLE `checkout_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `EQUIPMENT_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `equipment_status`
--
ALTER TABLE `equipment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipment_type`
--
ALTER TABLE `equipment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `returned_items`
--
ALTER TABLE `returned_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
-- Constraints for table `approved_items`
--
ALTER TABLE `approved_items`
  ADD CONSTRAINT `approved_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `employee` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `approved_items_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `checkout_details`
--
ALTER TABLE `checkout_details`
  ADD CONSTRAINT `checkout_details_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`ID`),
  ADD CONSTRAINT `checkout_details_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`EMPLOYEE_ID`);

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
-- Constraints for table `returned_items`
--
ALTER TABLE `returned_items`
  ADD CONSTRAINT `returned_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `returned_items_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `users_pos_id_fk` FOREIGN KEY (`POSITION_ID`) REFERENCES `user_positions` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`BORROWER_EMP`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
