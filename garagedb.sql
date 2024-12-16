-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:47 PM
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
-- Database: `garagedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'ABE', 1, 1),
(2, 'Abesta', 1, 1),
(3, 'Advics', 1, 1),
(4, 'Kavo', 1, 1),
(5, 'apple', 2, 1),
(6, 'apple', 2, 2),
(7, 'Mopar', 2, 1),
(8, 'Solar', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Maintenance Service Parts', 1, 1),
(2, 'Air Conditioning', 1, 1),
(3, 'Belts Chains and Rollers', 1, 1),
(4, 'Body', 1, 1),
(5, ' Brake System', 1, 1),
(6, 'Car Accessories', 1, 1),
(7, 'Electric Components', 1, 1),
(8, 'Leds', 1, 1),
(9, 'Wheels', 1, 1),
(10, 'Mirrors', 1, 1),
(11, 'Remote Programming', 1, 1),
(12, 'Exhausts', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'Orange Station', '0569667774', 'logo1.jpg', 'Admin PanelÂ ', 'Palestine,Nablus', '$', 'logo.jpg', 'logo.jpg', 'service.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `mechanicname` varchar(100) NOT NULL,
  `supervisor_name` varchar(100) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` time DEFAULT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_place` int(11) NOT NULL,
  `gstn` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `mechanicname`, `supervisor_name`, `vehicle_type`, `vehicle_name`, `delivery_date`, `delivery_time`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `payment_place`, `gstn`, `order_status`, `user_id`) VALUES
(1, '2023-12-07', '1', '0567777777', 'Akash Patil', 'Rohit More', 'fourwheeler', 'MH17CK4545', '2023-12-27', '17:10:00', '1098.00', '197.64', '1295.64', '', '1295.64', '1295', '0.64', 2, 1, 1, '197.64', 1, 1),
(2, '2023-12-15', '2', '0565555555', 'Gaurav Patil', 'Mr.Subhash Jadhav', 'fourwheeler', 'MH41GX8979', '2022-07-08', '12:36:00', '1627.00', '292.86', '1919.86', '', '1919.86', '1919', '0.86', 2, 3, 1, '292.86', 1, 1),
(3, '2023-12-25', '3', '0566666666', 'break', 'osamah', '', '2', '2023-12-26', '15:27:00', '589.00', '106.02', '695.02', '50', '645.02', '500', '145.02', 5, 1, 1, '106.02', 1, 1),
(4, '2023-12-25', '', '023456789', 'osamah', 'ahmad', '', 'm256ghy', '2024-01-06', '17:52:00', '529.00', '95.22', '624.22', '', '624.22', '200', '424.22', 2, 1, 1, '95.22', 1, 2),
(5, '2023-12-27', '5', '1234567890', 'osamah', 'oday', 'fourwheeler', 'u728sht', '2023-12-29', '16:41:00', '390.00', '70.20', '460.20', '', '460.20', '460.20', '0.00', 2, 1, 1, '70.20', 1, 1),
(6, '2024-01-04', '5', '1234567890', 'oday', 'osamah', 'fourwheeler', 'mfhhejf', '2024-01-10', '13:16:00', '659.00', '118.62', '777.62', '', '777.62', '20', '757.62', 6, 2, 1, '118.62', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(14, 3, 1, '2', '589', '589.00', 1),
(15, 1, 1, '1', '589', '589.00', 1),
(16, 1, 2, '1', '509', '509.00', 1),
(26, 2, 1, '1', '589', '589.00', 1),
(27, 2, 2, '1', '509', '509.00', 1),
(28, 2, 3, '1', '529', '529.00', 1),
(29, 4, 3, '1', '529', '529.00', 1),
(30, 5, 6, '1', '390', '390.00', 1),
(31, 6, 7, '3', '150', '150.00', 1),
(32, 6, 2, '1', '509', '509.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(1, 'Rear Brake Shoe Set', 'Rear Brake Shoe Set.jpg', 1, 5, '496', '589', 1, 1),
(2, 'Fuel Filter', 'Fuel Filter.jfif', 1, 1, '197', '509', 1, 1),
(3, 'Air Filter', 'Air Filter.jpg', 1, 1, '98', '529', 1, 1),
(4, 'Front Brake Pad Set', 'gjhjhgjh.jpg', 4, 5, '130', '399', 1, 1),
(5, 'Zinon LEDS', 'istockphoto-470774380-612x612.jpg', 3, 8, '100', '100', 1, 1),
(6, 'Exhaust', 'Web_Centre Section.webp', 4, 12, '11', '390', 1, 1),
(7, 'wheel', 'wheel.png', 1, 9, '17', '150', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `mob_no` varchar(150) NOT NULL,
  `reffering` varchar(150) NOT NULL,
  `address` varchar(250) NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `name`, `gender`, `mob_no`, `reffering`, `address`, `created_date_time`, `delete_status`) VALUES
(1, 'ibrahim asad', 'Male', '0567777777', 'Mr.osamah', 'Beita,Nablus', '2023-12-25 11:57:38', 0),
(2, 'Oday Yamak', 'Male', '0565555555', 'Mr.samar', 'Burin,Nablus', '2024-01-04 08:09:53', 0),
(3, 'rahaf', 'Female', '0566666666', 'Mr.Mufeed', 'Ramallah', '2023-12-25 13:18:44', 0),
(4, 'samar', 'Female', '092593222', 'Mr.Ahmad', 'Hebron', '2023-12-25 14:35:50', 0),
(5, 'Mahmod', 'Male', '1234567890', 'Mr.Osamah', 'Beita,Nablus', '2023-12-27 14:31:45', 0),
(6, 'ahmad', 'Female', '088374643', 'oday', 'burqin', '2024-01-04 11:09:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'osamah', 'cd92a26534dba48cd785cdcc0b3e6bd1', 'osamahabdullah8@gmail.com'),
(2, 'oday', '81dc9bdb52d04dc20036dbd8313ed055', 'osamah.abdullah2003@gmail.com'),
(3, 'samar', '9b32f8863522d3ccbd8791823f0a5c32', 'mehok.osamah@hotmail.com'),
(4, 'issa', '0b5e114734229f2a50cfa57bb03672a3', 'osamah@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
