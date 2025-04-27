-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 06:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_details`
--

CREATE TABLE `a_details` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(25) NOT NULL,
  `a_email` varchar(30) NOT NULL,
  `a_phone` varchar(10) NOT NULL,
  `a_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a_details`
--

INSERT INTO `a_details` (`a_id`, `a_name`, `a_email`, `a_phone`, `a_password`) VALUES
(1, 'admin', 'meetpadaliya55@gmail.com', '1234567', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `r_o_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `r_o_id`, `category_name`) VALUES
(3, 13, 'pizza'),
(6, 12, 'fries'),
(7, 12, 'cold drink'),
(9, 12, 'sandwich'),
(10, 21, 'noodles'),
(12, 22, 'Drinks'),
(30, 22, 'coffee'),
(31, 21, 'vadapav'),
(32, 23, 'Dosa'),
(33, 21, 'Frankie'),
(36, 25, 'Burger'),
(37, 25, 'Fries'),
(38, 21, 'Dabeli'),
(40, 21, 'Puff'),
(41, 21, 'Momos'),
(42, 26, 'Pizza'),
(43, 27, 'Gravy'),
(45, 21, 'Pasta');

-- --------------------------------------------------------

--
-- Table structure for table `c_register`
--

CREATE TABLE `c_register` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_username` varchar(20) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_password` varchar(255) NOT NULL,
  `c_phone` varchar(10) NOT NULL,
  `c_address` varchar(300) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `c_date/time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c_register`
--

INSERT INTO `c_register` (`c_id`, `c_name`, `c_username`, `c_email`, `c_password`, `c_phone`, `c_address`, `c_status`, `c_date/time`) VALUES
(17, 'meet', 'meet@55', 'meetpadaliya55@gmail.com', '$2y$10$evjCgGf6n0Q7HEh35W4mReOE0tPV1GPFS8gtlbz..n8yMC2WiLTvG', '9825942142', 'A-202 radheshyam residency,nava naroda,Ahmedabad', 1, '2024-11-20 08:57:13'),
(18, 'mansi', 'mansi@5', 'mansi5@gmail.com', '$2y$10$Qipdqfh6Ma/FIbQ3.0bnJuxHsijtILVWM0/aspSjnxs0qclpKab3W', '7878563549', 'c-203 radheupvan society,nava naroda,Ahmedbad ', 1, '2024-12-23 04:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_assigned`
--

CREATE TABLE `delivery_assigned` (
  `delivery_assigned_id` int(11) NOT NULL,
  `d_o_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_assigned`
--

INSERT INTO `delivery_assigned` (`delivery_assigned_id`, `d_o_id`, `d_id`) VALUES
(14, 14, 6),
(15, 15, 6),
(16, 16, 6),
(17, 17, 6),
(18, 18, 6),
(19, 19, 6),
(20, 20, 8),
(21, 21, 8),
(22, 22, 7),
(23, 23, 7),
(24, 24, 6),
(25, 25, 6),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 7),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 6),
(35, 36, 6),
(36, 35, 6),
(37, 37, 6),
(38, 38, 6),
(39, 39, 6),
(40, 40, 6),
(41, 41, 7),
(42, 42, 7),
(43, 43, 6),
(44, 44, 7),
(45, 45, 6),
(46, 46, 6),
(47, 47, 6),
(48, 48, 6),
(49, 49, 6),
(50, 50, 7),
(51, 51, 6),
(52, 52, 6),
(53, 53, 6),
(55, 55, 6),
(56, 57, 6),
(57, 56, 6),
(58, 58, 6),
(59, 59, 6),
(60, 60, 6),
(61, 61, 6),
(62, 62, 6),
(63, 63, 6),
(64, 64, 7),
(65, 65, 6);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_orders`
--

CREATE TABLE `delivery_orders` (
  `d_o_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `c_address` varchar(150) NOT NULL,
  `res_address` varchar(150) NOT NULL,
  `delivery_status` varchar(20) DEFAULT 'pending',
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_orders`
--

INSERT INTO `delivery_orders` (`d_o_id`, `order_id`, `c_address`, `res_address`, `delivery_status`, `assigned_date`) VALUES
(14, 167, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1 chinese wok,nr haridarshan,nava naroda,Ahmedabad ', 'delivered', '2025-01-18 06:50:37'),
(15, 168, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', 'delivered', '2025-01-18 11:12:08'),
(16, 169, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-01-27 05:51:14'),
(17, 170, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-01-27 05:52:14'),
(18, 171, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-01-27 06:39:24'),
(19, 172, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-01-27 06:43:21'),
(20, 173, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-01-27 09:13:25'),
(21, 174, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-01-27 09:34:59'),
(22, 175, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 5,6 Vadakam dosa,nr umesh chowk,new gota,Ahmedabad ', 'delivered', '2025-01-28 15:10:15'),
(23, 176, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-01-28 15:13:03'),
(24, 183, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 1,2 Starbucks,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-01-30 18:12:08'),
(25, 184, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 5,6 Vadakam dosa,nr umesh chowk,new gota,Ahmedabad ', 'delivered', '2025-01-30 18:16:44'),
(26, 185, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', 'delivered', '2025-01-30 18:54:23'),
(27, 186, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', 'delivered', '2025-01-31 15:25:11'),
(28, 187, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1 chinese wok,nr haridarshan,nava naroda,Ahmedabad ', 'delivered', '2025-01-31 16:07:50'),
(29, 188, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-01-31 16:10:03'),
(30, 189, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', 'delivered', '2025-01-31 16:17:54'),
(31, 190, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-01-31 16:26:06'),
(32, 191, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-01-31 16:37:07'),
(33, 192, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-01-31 16:42:19'),
(34, 193, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-01-31 16:46:29'),
(35, 194, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', 'delivered', '2025-01-31 16:56:15'),
(36, 195, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', 'delivered', '2025-01-31 16:59:30'),
(37, 196, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', 'delivered', '2025-02-15 05:05:49'),
(38, 197, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', 'delivered', '2025-02-16 06:09:26'),
(39, 198, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-02-16 06:11:51'),
(40, 199, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-02-16 06:16:01'),
(41, 200, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Starbucks,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-02-16 06:20:33'),
(42, 201, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', 'delivered', '2025-02-16 06:23:54'),
(43, 202, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6 Vadakam dosa,nr umesh chowk,new gota,Ahmedabad ', 'delivered', '2025-02-17 12:22:47'),
(44, 203, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-02-21 10:15:00'),
(45, 204, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-02-21 15:46:51'),
(46, 205, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', 'delivered', '2025-02-21 16:35:55'),
(47, 206, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 1 chinese wok,nr haridarshan,nava naroda,Ahmedabad ', 'delivered', '2025-02-21 16:47:16'),
(48, 207, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6 Vadakam dosa,nr umesh chowk,new gota,Ahmedabad ', 'delivered', '2025-02-25 04:32:42'),
(49, 208, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-02-25 10:20:27'),
(50, 209, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-02-26 07:59:25'),
(51, 210, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-02-26 12:10:01'),
(52, 211, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-02-26 16:17:04'),
(53, 212, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', 'delivered', '2025-02-27 03:55:59'),
(55, 214, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-02-28 05:32:47'),
(56, 215, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-03-05 14:34:39'),
(57, 216, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-03-05 14:41:44'),
(58, 217, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-04-02 16:04:59'),
(59, 218, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-04-04 03:50:21'),
(60, 219, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-04-05 03:25:46'),
(61, 220, 'c-203 radheupvan society,nava naroda,Ahmedbad ', 'Shop 1,2 Starbucks,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-04-05 03:33:17'),
(62, 221, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', 'delivered', '2025-04-05 03:45:16'),
(63, 222, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'delivered', '2025-04-05 05:33:11'),
(64, 223, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'assigned', '2025-04-05 07:22:33'),
(65, 224, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'assigned', '2025-04-05 08:04:45'),
(66, 225, 'A-202 radheshyam residency,nava naroda,Ahmedabad', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', 'pending', '2025-04-05 08:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `d_details`
--

CREATE TABLE `d_details` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(20) NOT NULL,
  `d_email` varchar(30) NOT NULL,
  `d_phone` int(10) NOT NULL,
  `d_username` varchar(20) NOT NULL,
  `d_password` varchar(255) NOT NULL,
  `d_address` varchar(300) NOT NULL,
  `d_vehicle_type` varchar(12) NOT NULL,
  `d_vehicle_rc` varchar(20) NOT NULL,
  `d_license` varchar(20) NOT NULL,
  `d_bankname` varchar(20) NOT NULL,
  `d_branchname` varchar(20) NOT NULL,
  `d_account` varchar(20) NOT NULL,
  `d_ifsc` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Requests` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_details`
--

INSERT INTO `d_details` (`d_id`, `d_name`, `d_email`, `d_phone`, `d_username`, `d_password`, `d_address`, `d_vehicle_type`, `d_vehicle_rc`, `d_license`, `d_bankname`, `d_branchname`, `d_account`, `d_ifsc`, `status`, `date`, `Requests`) VALUES
(6, 'meet', 'meetpadaliya55@gmail.com', 1234567, 'meet@55', '$2y$10$4ZXicNEZD90fTQHre9obvOm6jdfrUALJjsuXN4XxfPAZfkIa0b1lG', 'Ahmedabad', 'bike', '1234567', '765432', 'Sbi', 'Nikol', '1234567', '7654321', 1, '2025-01-08 04:08:06', 'Approved'),
(7, 'mansi', 'mansi5@gmail.com', 123456, 'mansi@5', '$2y$10$8pGK3eFpL.izNN.CY2eSJe5twyNKzZJK.4ClrAaRS4qYP7VtjmVim', 'abad', 'Scooter', '87654345', '8545678', 'boi', 'gota', '1234567', '9876543', 1, '2025-01-16 16:13:12', 'Approved'),
(8, 'ayushi', 'ayushi12@gmail.com', 12345678, 'ayushi@1', '$2y$10$eidGDKUxJ4zOTpgEQwGJ6eRXBr4Dp5GN7j.1r4xQ8KzjJSbkKf8km', 'patdi', 'Scooter', '954345678', '3456764', 'sbi', 'patdi', '876543456', '7434567', 1, '2025-01-28 15:20:28', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `r_o_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_name` varchar(80) NOT NULL,
  `item_price` double NOT NULL,
  `item_description` varchar(300) NOT NULL,
  `item_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `r_o_id`, `category_id`, `item_name`, `item_price`, `item_description`, `item_image`) VALUES
(7, 12, 6, 'peri-peri fries', 250, 'Crispy fries with a tantalizing flavor that will i', 'Imgs/perifries.jpg'),
(8, 13, 3, 'Queen Margerita Pizza', 250, 'Our signature pizza crust loaded with Classic Mozz', 'Imgs/queenmargherita.jpg'),
(9, 12, 6, 'French Fries', 99, 'Since medium portion is never enough. Golden fried', 'Imgs/frenchfries.jpg'),
(10, 12, 7, 'Coca-Cola', 90, 'Coca-Cola is a carbonated soft drink that\'s sweet ', 'Imgs/CocaCola.jpg'),
(12, 12, 7, '7up', 85, '7 Up is a lemon-lime flavored, non-caffeinated, an', 'Imgs/7up.jpg'),
(13, 13, 3, 'English Retreat Pizza', 314, 'Olives,Red Paprika, Tomatoes, Paneer, Capsicum, Cheese, Jalapeno Dip. An English special.', 'Imgs/englishretreat.jpg'),
(16, 21, 10, 'Vegnoodles', 89, 'Delight in the flavorful harmony of vegetables', 'Imgs/vegnoodles.jpg'),
(17, 21, 10, 'mexican noodles', 125, 'Mexican noodles are a dish made with noodles in a variety of', 'Imgs/mexicannoodles.jpg'),
(18, 22, 12, 'Javachips', 450, 'Mocha sauce and Frappuccino® chips blended with with Frappu...', 'Imgs/javachip.jpg'),
(19, 22, 12, 'Chocolate Chip Frappuccino', 420, 'Rich mocha-flavored sauce meets up with chocolaty chips, mil...', 'Imgs/chocolatechip.jpg'),
(20, 22, 12, 'Caffe Americano', 299, 'Rich in flavour, full-bodied espresso with hot water in true...', 'Imgs/caffeamericano.jpg'),
(21, 22, 12, 'Cold Coffee', 388, 'Our signature rich in flavour espresso blended with delicate...', 'Imgs/coldcoffeest.jpg'),
(22, 12, 9, 'Punjabi Touch Grill Sanwich', 200, 'Capsicum, Cheese and Paneer marinated in kadhai sauce', 'Imgs/punjab touch.jpg'),
(23, 12, 9, 'Mexican Sandwich (Non-Grill)', 150, 'The mexican hit with mustard and cheese', 'Imgs/mexicannongrill.jpg'),
(24, 12, 9, 'Russian Sandwich (Non Grill)', 150, 'Our house special Russian Salad between three layers', 'Imgs/russiansandiwch.jpg'),
(25, 12, 9, 'Peppy Perry Grill Sandwich', 200, 'Vegetables and Cheese made with unique peri peri sauce', 'Imgs/perisandwich.jpg'),
(26, 12, 9, '4 Cheese Chilly Grill Sandwich', 210, 'Specially made for cheese lovers', 'Imgs/4cheesysandwich.jpg'),
(27, 12, 9, 'Ahmedabad Touch Grill Sandwich ', 220, 'Our all time favourite with assorted flavoured with our spicy house mint chutney', 'Imgs/abadtosandwich.jpg'),
(28, 12, 9, 'Indian Exotica Grill Sandwich', 200, 'The Shakti Special Exotica stuffing with coriander, green chillies and olives', 'Imgs/indianexotica.jpg'),
(29, 12, 9, 'Paneer Schezwan Grill  Sandwich', 210, 'Vegetables with house special schezwan sauce and cheese', 'Imgs/pannerssandwich.jpg'),
(30, 13, 3, 'Pesto & Basil Special Pizza', 207, 'Capsicum, Jalapenos ,Paneer with Pesto & Basil Dip', 'Imgs/pesto$basil.jpg'),
(31, 13, 3, 'Farm Villa Pizza', 286, 'The freshness of capsicum, tomatoes, with the flavour of paneer and red paprika topped with a korma dip.', 'Imgs/farmvilla.jpg'),
(32, 13, 3, 'Garden Special Pizza', 286, 'A close cousin of the garden delight. Capsicum,Mushrooms,Onion, and Fresh Tomatoes.', 'Imgs/gardenspecial.jpg'),
(33, 13, 3, 'Burn To Hell Pizza', 286, 'A fiery and lethal combination of hot & garlic dip, jalapenos, mushrooms, olives and capsicum.', 'Imgs/burntohell.jpg'),
(34, 13, 3, 'Paneer Tikka Butter Masala Pizza', 286, 'An indian Speciality on a La Pinoz Pizza. Exotic Paneer Tikka, Onion, Capsicum & Red Paprika.', 'Imgs/pannertikka.jpg'),
(35, 12, 6, 'Peri Peri Crinkle Fries', 134, 'Fries, tossed in your favourite peri peri spices', 'Imgs/pericrinkle.jpg'),
(36, 22, 30, 'Classic Hot Coffee', 150, 'Savour our premium coffee made with top 3% Arabica beans in an all new avatar.', 'Imgs/classiccoffee.jpg'),
(37, 21, 31, 'Cheese Vada Pav', 40, 'Vadapav with blend jalapeno cheese and white cheese', 'Imgs/cheesevadapav.jpg'),
(38, 21, 31, 'Godfather Vada Pav', 45, 'Cheesiest vada pav but spicy at same time, combination of chilli garlic, tandoori and jalapeno cheese', 'Imgs/godfather.jpg'),
(39, 21, 31, 'Jantar Mantar Vada Pav', 40, 'Unique spicy taste with combination of chilli garlic, peri peri with toppings of jalapeno and bbq flavour along with various veggies', 'Imgs/jantarvadapav.jpg'),
(40, 21, 31, 'Vip Vada Pav', 45, 'A delightful vegetarian treat that promises a burst of flavors in each bite.', 'Imgs/vipvadapav.jpg'),
(41, 23, 32, 'Masala Dosa', 150, 'Deliciously crispy dosa with a generous spread of fresh butter, spicy chutney, onions, served with sambhar and chutney.', 'Imgs/masaladosa.jpg'),
(42, 23, 32, 'Mysore Dosa', 120, 'A flavorful and savory delight from South India, this dish will tantalize your taste buds with its unique blend of flavors and textures.', 'Imgs/mysoredosa.jpg'),
(43, 23, 32, 'Jini Dosa', 310, 'Jini dosa is a stuffing of mix veggies like cabbage, carrots, capsicum and onion with aromatic pav bhaji masala mixed with tomato ketchup and loads of cheese.', 'Imgs/jinidosa.jpg'),
(44, 23, 32, 'Plain-dosa', 40, 'Plain dosa is a thin, crispy, and golden-brown crepe with a delicate and mildly tangy flavor.', 'Imgs/Plain-Dosa.jpg'),
(45, 21, 33, 'Paneer Manchurian Frankie', 250, 'Spice up your taste buds with our Paneer Manchurian Frankie', 'Imgs/manchufrankie.jpg'),
(46, 21, 33, 'Tandoori Paneer Frankie', 130, 'Indulge in the smoky and savory flavors of our Tandoori Paneer Frankie', 'Imgs/tandoorifrankie.jpg'),
(47, 21, 33, 'Cheesy Mexican Beans Frankie', 270, 'Spice up your meal with our Cheesy Mexican Beans Frankie', 'Imgs/mexicanbeans.jpg'),
(48, 21, 33, 'Crispy Paneer Frankie', 260, 'Ready to savor the crispy and crunchy texture of our Crispy Paneer Frankie', 'Imgs/crispypannerfrankie.jpg'),
(49, 25, 36, 'McAloo Tikki Burger', 75, 'The World\'s favourite Indian burger! A crispy Aloo patty, tomato mayo sauce & onions', 'Imgs/mcalootikki.jpg'),
(50, 25, 36, 'McVeggie Burger', 150, 'Savour your favorite spiced veggie patty, lettuce, mayo, between toasted sesame buns in every bite', 'Imgs/mcveggie.jpg'),
(51, 25, 36, 'Mexican McAloo Tikki Burger', 75, 'Your favourite McAloo Tikki with a fusion spin with a Chipotle sauce & onions', 'Imgs/mexicanmcaloo.jpg'),
(52, 25, 36, 'Maharaja Mac Burger', 225, 'Double the indulgence with corn & cheese patties, along with jalapeños, onion, cheese, tomatoes, lettuce, and spicy sauce.', 'Imgs/maharajamc.jpg'),
(53, 25, 37, 'Fries (Regular)', 80, 'World Famous Fries, crispy, golden, lightly salted and fried to perfection! Also known as happiness.', 'Imgs/friesregular.jpg'),
(54, 21, 38, 'Regular dabeli', 25, 'It is a spicy yet sweet snack made by mixing boiled potatoes with a special dabeli masala', 'Imgs/dabeliregular.jpg'),
(55, 21, 38, 'Cheese Dabeli', 35, 'Indulge in the delectable flavors of this tempting veg delight, featuring  cheesey goodness in every bite!', 'Imgs/cheesedabeli.jpg'),
(56, 21, 38, 'Kutchi Bowl Dabeli', 65, 'A delectable vegetarian delicacy from Kutch, bursting with flavors and textures in a bowl.', 'Imgs/kutchibowl.jpg'),
(57, 21, 40, 'Garden Pizza Cheese Puff', 55, 'ndulge in the delightful flavors of our Garden Pizza Cheese Puff, a flavorful and scrumptious.', 'Imgs/gardenpuff.jpg'),
(58, 21, 40, 'Snackbar Special Puff', 95, 'A delectable and enticing veg delight, bursting with flavors that will leave you craving for more.', 'Imgs/specialpuff.jpg'),
(59, 21, 40, 'Cheese Paneer Tandoori Tikka Puff', 80, 'Deliciously cheesy tandoori tikka puff made with flavorful paneer, a perfect vegetarian delicacy.', 'Imgs/tandooripuff.jpg'),
(60, 21, 40, 'Puff Based Cheesy Pizza Puff', 90, 'Indulge in this delightful, melt-in-your-mouth cheesy puff that\'s perfect for vegetarians and bursting with flavors.', 'Imgs/chesseypizzapuff.jpg'),
(61, 21, 41, 'Veg Fried Momo', 120, 'Savor the crispy exterior of these deep-fried momos, brimming with a tasty, seasoned vegetable filling.', 'Imgs/vegfriedmomo.jpg'),
(62, 21, 41, 'Veg Steam Momos', 120, 'Gently steamed to perfection, these momos encase a tender, herbed vegetable filling for a light, wholesome treat.', 'Imgs/steammomo.jpg'),
(63, 21, 41, 'Cheese Corn Fried Momo', 170, 'A tasty fried treat with a creamy cheese and corn filling, enveloped in a crispy, golden exterior.', 'Imgs/CornFriedMomo.jpg'),
(64, 21, 41, 'Paneer Steam Momos', 140, 'Soft, steamed parcels filled with delicately spiced paneer, offering a warm, melt-in-your-mouth vegetarian delight.', 'Imgs/PaneerSteamMomos.jpg'),
(65, 13, 3, '7 cheesy Pizza', 235, 'An Exotic Combination of White Mozzarilla, Cream White Cheese, Cheddar, Monterey Jack, Cream Orange Cheese, Colby, Orange Cheddar', 'Imgs/7cheesey.jpg'),
(66, 26, 42, 'Veggie Paradise Pizza', 270, 'The awesome foursome! Golden corn, black olives, capsicum, red paprika', 'Imgs/veggieparadise.jpg'),
(67, 26, 42, 'Cheese Volcano Pizza', 300, 'Cheese Volcano Pizza features a molten cheese center and a cheesy crust ', 'Imgs/cheesevolcano.jpg'),
(68, 26, 42, 'Farm House Pizza', 260, 'Delightful combination of onion, capsicum, tomato & grilled mushroom', 'Imgs/farmhouse.jpg'),
(69, 26, 42, 'Peppy Panner Pizza', 270, 'Flavorful trio of juicy paneer, crisp capsicum with spicy red paprika', 'Imgs/peppypaneer.jpg'),
(70, 26, 42, 'Indi Tandoori Paneer Pizza', 320, 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum, red paprika & mayo', 'Imgs/inditandoori.jpg'),
(71, 27, 43, 'Manchurian Gravy', 199, 'Mix veg fried fritters, onion and capsicum  in classic Manchurian sauce.', 'Imgs/manchuriangravy.jpg'),
(72, 27, 43, 'Chilli Paneer Gravy', 199, 'Paneer, onion & capsicum tossed in our signature desi chilli sauce.', 'Imgs/chillipaneer.jpg'),
(73, 27, 43, 'Kung Pao Paneer Gravy', 199, 'Paneer & mixed veggies tossed in kung pao sauce.', 'Imgs/KungPaoPaneer.jpg'),
(74, 27, 43, 'Manchurian Paneer Gravy', 199, 'Paneer, onion & capsicum tossed in classic Manchurian sauce.', 'Imgs/paneermanchurian.jpg'),
(75, 27, 43, 'Hunan Paneer Gravy', 199, 'Paneer tossed in Spicy & Savory flavors of Hunan to give it a unique taste', 'Imgs/hunanpaneer.jpg'),
(77, 21, 45, 'White Sauce Pasta', 280, 'Cheese and creamy pasta prepared with green-yellow-red bell peppers, baby corn, broccoli, herbs and spices.', 'Imgs/whitesaucepasta.jpg'),
(78, 21, 45, 'Red Sauce Pasta', 130, 'Authentic Pasta Sauce, Cheese, Sauce, Cheese,Onion, Olives, Corn & Chilli Flakes', 'Imgs/redsaucepasta.jpg'),
(79, 22, 12, 'Toffee Nut Crunch Latte', 430, 'Delight your senses with our Toffee Nut Crunch Latte. A perfect combination of steamed milk, our signature espresso, heartwarming flavors of buttery toffee', 'Imgs/toffenut.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `r_o_id` int(11) NOT NULL,
  `total_amt` varchar(20) NOT NULL,
  `otp_delivery` varchar(10) NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `c_id`, `r_o_id`, `total_amt`, `otp_delivery`, `order_status`, `order_date`) VALUES
(167, 17, 27, '199', '689227', 'confirmed', '2025-01-18 06:50:37'),
(168, 17, 26, '270', '664452', 'confirmed', '2025-01-18 11:12:08'),
(169, 17, 21, '510', '276441', 'confirmed', '2025-01-27 05:51:14'),
(170, 17, 13, '628', '722414', 'confirmed', '2025-01-27 05:52:14'),
(171, 17, 21, '25', '201229', 'confirmed', '2025-01-27 06:39:24'),
(172, 17, 21, '270', '724979', 'confirmed', '2025-01-27 06:43:21'),
(173, 17, 12, '1710', '310512', 'confirmed', '2025-01-27 09:13:25'),
(174, 17, 12, '2160', '678211', 'confirmed', '2025-01-27 09:34:59'),
(175, 18, 23, '1250', '611741', 'confirmed', '2025-01-28 15:10:15'),
(176, 18, 12, '4210', '830061', 'confirmed', '2025-01-28 15:13:03'),
(183, 18, 22, '1350', '439946', 'confirmed', '2025-01-30 18:12:08'),
(184, 18, 23, '150', '821076', 'confirmed', '2025-01-30 18:16:44'),
(185, 18, 25, '465', '298365', 'confirmed', '2025-01-30 18:54:23'),
(186, 17, 25, '75', '475183', 'confirmed', '2025-01-31 15:25:11'),
(187, 17, 27, '199', '681477', 'confirmed', '2025-01-31 16:07:50'),
(188, 17, 13, '858', '429691', 'confirmed', '2025-01-31 16:10:03'),
(189, 17, 26, '320', '269040', 'confirmed', '2025-01-31 16:17:54'),
(190, 17, 13, '286', '138934', 'confirmed', '2025-01-31 16:26:06'),
(191, 17, 21, '65', '924273', 'confirmed', '2025-01-31 16:37:07'),
(192, 17, 21, '510', '901338', 'confirmed', '2025-01-31 16:42:19'),
(193, 17, 12, '210', '841319', 'confirmed', '2025-01-31 16:46:29'),
(194, 17, 25, '400', '744696', 'confirmed', '2025-01-31 16:56:15'),
(195, 17, 26, '260', '508941', 'confirmed', '2025-01-31 16:59:30'),
(196, 17, 26, '780', '550189', 'confirmed', '2025-02-15 05:05:49'),
(197, 18, 26, '1500', '835111', 'confirmed', '2025-02-16 06:09:26'),
(198, 17, 12, '1200', '364954', 'confirmed', '2025-02-16 06:11:51'),
(199, 17, 21, '960', '384125', 'confirmed', '2025-02-16 06:16:01'),
(200, 17, 22, '2160', '339217', 'confirmed', '2025-02-16 06:20:33'),
(201, 17, 25, '975', '650987', 'confirmed', '2025-02-16 06:23:54'),
(202, 17, 23, '620', '475464', 'confirmed', '2025-02-17 12:22:47'),
(203, 18, 12, '1230', '960614', 'confirmed', '2025-02-21 10:15:00'),
(204, 17, 21, '510', '976650', 'confirmed', '2025-02-21 15:46:51'),
(205, 18, 25, '300', '495193', 'confirmed', '2025-02-21 16:35:55'),
(206, 18, 27, '398', '505736', 'confirmed', '2025-02-21 16:47:16'),
(207, 17, 23, '150', '887926', 'confirmed', '2025-02-25 04:32:42'),
(208, 18, 12, '630', '721992', 'confirmed', '2025-02-25 10:20:27'),
(209, 17, 12, '660', '565233', 'confirmed', '2025-02-26 07:59:25'),
(210, 17, 21, '280', '922508', 'confirmed', '2025-02-26 12:10:01'),
(211, 18, 13, '858', '764129', 'confirmed', '2025-02-26 16:17:04'),
(212, 17, 21, '750', '893787', 'confirmed', '2025-02-27 03:55:59'),
(214, 18, 13, '1070', '161327', 'confirmed', '2025-02-28 05:32:47'),
(215, 17, 12, '350', '100690', 'confirmed', '2025-03-05 14:34:39'),
(216, 17, 12, '150', '478939', 'confirmed', '2025-03-05 14:41:44'),
(217, 17, 12, '300', '726702', 'confirmed', '2025-04-02 16:04:59'),
(218, 17, 13, '858', '516340', 'confirmed', '2025-04-04 03:50:21'),
(219, 17, 12, '279', '183402', 'confirmed', '2025-04-05 03:25:46'),
(220, 18, 22, '840', '414584', 'confirmed', '2025-04-05 03:33:17'),
(221, 17, 12, '268', '240640', 'confirmed', '2025-04-05 03:45:16'),
(222, 17, 13, '1356', '290638', 'confirmed', '2025-04-05 05:33:11'),
(223, 17, 13, '942', '913448', 'confirmed', '2025-04-05 07:22:33'),
(224, 17, 13, '942', '808129', 'confirmed', '2025-04-05 08:04:45'),
(225, 17, 13, '628', '683798', 'confirmed', '2025-04-05 08:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `item_id`, `qty`, `sub_total`) VALUES
(180, 167, 72, 1, '199'),
(181, 168, 66, 1, '270'),
(182, 169, 63, 3, '510'),
(183, 170, 13, 2, '628'),
(184, 171, 54, 1, '25'),
(185, 172, 47, 1, '270'),
(186, 173, 26, 3, '630'),
(187, 173, 25, 2, '400'),
(188, 173, 10, 2, '180'),
(189, 173, 7, 2, '500'),
(190, 174, 29, 3, '630'),
(191, 174, 24, 4, '600'),
(192, 174, 26, 3, '630'),
(193, 174, 23, 2, '300'),
(194, 175, 41, 1, '150'),
(195, 175, 42, 4, '480'),
(196, 175, 43, 2, '620'),
(197, 176, 29, 1, '210'),
(198, 176, 28, 20, '4000'),
(199, 183, 18, 3, '1350'),
(200, 184, 41, 1, '150'),
(201, 185, 49, 3, '225'),
(202, 185, 53, 3, '240'),
(203, 186, 49, 1, '75'),
(204, 187, 73, 1, '199'),
(205, 188, 34, 3, '858'),
(206, 189, 70, 1, '320'),
(207, 190, 34, 1, '286'),
(208, 191, 56, 1, '65'),
(209, 192, 63, 3, '510'),
(210, 193, 26, 1, '210'),
(211, 194, 53, 5, '400'),
(212, 195, 68, 1, '260'),
(213, 196, 68, 3, '780'),
(214, 197, 70, 3, '960'),
(215, 197, 66, 2, '540'),
(216, 198, 23, 4, '600'),
(217, 198, 25, 3, '600'),
(218, 199, 62, 3, '360'),
(219, 199, 46, 2, '260'),
(220, 199, 63, 2, '340'),
(221, 200, 19, 3, '1260'),
(222, 200, 18, 2, '900'),
(223, 201, 52, 3, '675'),
(224, 201, 50, 2, '300'),
(225, 202, 43, 2, '620'),
(226, 203, 26, 3, '630'),
(227, 203, 25, 3, '600'),
(228, 204, 63, 3, '510'),
(229, 205, 50, 2, '300'),
(230, 206, 72, 2, '398'),
(231, 207, 41, 1, '150'),
(232, 208, 26, 3, '630'),
(233, 209, 27, 3, '660'),
(234, 210, 64, 2, '280'),
(235, 211, 33, 3, '858'),
(236, 212, 63, 3, '510'),
(237, 212, 62, 2, '240'),
(239, 214, 65, 2, '470'),
(240, 214, 13, 1, '314'),
(241, 214, 33, 1, '286'),
(242, 215, 22, 1, '200'),
(243, 215, 23, 1, '150'),
(244, 216, 23, 1, '150'),
(245, 217, 24, 2, '300'),
(246, 218, 33, 3, '858'),
(247, 219, 10, 2, '180'),
(248, 219, 9, 1, '99'),
(249, 220, 19, 2, '840'),
(250, 221, 35, 2, '268'),
(251, 222, 13, 3, '942'),
(252, 222, 30, 2, '414'),
(253, 223, 13, 3, '942'),
(254, 224, 13, 3, '942'),
(255, 225, 13, 2, '628');

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `r_o_id` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`payment_id`, `order_id`, `c_id`, `r_o_id`, `payment_type`, `amount`, `payment_date`) VALUES
(1, 193, 17, 12, 'DEBIT_CARD', '210', '2025-01-31 16:46:46'),
(3, 194, 17, 25, 'Wallet', '400', '2025-01-31 16:56:33'),
(4, 195, 17, 26, 'UPI', '260', '2025-01-31 16:59:42'),
(5, 196, 17, 26, 'DEBIT_CARD', '780', '2025-02-15 05:06:00'),
(6, 197, 18, 26, 'DEBIT_CARD', '1500', '2025-02-16 06:09:37'),
(7, 198, 17, 12, 'UPI', '1200', '2025-02-16 06:12:38'),
(8, 199, 17, 21, 'NET_BANKING', '960', '2025-02-16 06:16:13'),
(9, 200, 17, 22, 'Wallet', '2160', '2025-02-16 06:20:45'),
(10, 201, 17, 25, 'DEBIT_CARD', '975', '2025-02-16 06:24:10'),
(11, 202, 17, 23, 'DEBIT_CARD', '620', '2025-02-17 12:23:08'),
(12, 203, 18, 12, 'DEBIT_CARD', '1230', '2025-02-21 10:15:09'),
(13, 204, 17, 21, 'DEBIT_CARD', '510', '2025-02-21 15:46:58'),
(14, 205, 18, 25, 'UPI', '300', '2025-02-21 16:36:03'),
(15, 206, 18, 27, 'DEBIT_CARD', '398', '2025-02-21 16:47:25'),
(16, 207, 17, 23, 'UPI', '150', '2025-02-25 04:32:50'),
(17, 208, 18, 12, 'DEBIT_CARD', '630', '2025-02-25 10:20:34'),
(18, 209, 17, 12, 'UPI', '660', '2025-02-26 07:59:34'),
(19, 210, 17, 21, 'DEBIT_CARD', '280', '2025-02-26 12:10:10'),
(20, 211, 18, 13, 'DEBIT_CARD', '858', '2025-02-26 16:17:14'),
(21, 212, 17, 21, 'DEBIT_CARD', '750', '2025-02-27 03:56:12'),
(23, 214, 18, 13, 'UPI', '1070', '2025-02-28 05:33:02'),
(24, 215, 17, 12, 'DEBIT_CARD', '350', '2025-03-05 14:34:51'),
(25, 216, 17, 12, 'DEBIT_CARD', '150', '2025-03-05 14:41:50'),
(26, 217, 17, 12, 'DEBIT_CARD', '300', '2025-04-02 16:05:55'),
(27, 218, 17, 13, 'DEBIT_CARD', '858', '2025-04-04 03:51:10'),
(28, 219, 17, 12, 'DEBIT_CARD', '279', '2025-04-05 03:26:28'),
(29, 220, 18, 22, 'UPI', '840', '2025-04-05 03:33:51'),
(30, 221, 17, 12, 'DEBIT_CARD', '268', '2025-04-05 03:45:31'),
(31, 222, 17, 13, 'DEBIT_CARD', '1356', '2025-04-05 05:33:30'),
(32, 223, 17, 13, 'DEBIT_CARD', '942', '2025-04-05 07:22:57'),
(33, 224, 17, 13, 'DEBIT_CARD', '942', '2025-04-05 08:05:00'),
(34, 225, 17, 13, 'DEBIT_CARD', '628', '2025-04-05 08:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `r_o_details`
--

CREATE TABLE `r_o_details` (
  `r_o_id` int(11) NOT NULL,
  `r_o_name` varchar(25) NOT NULL,
  `r_o_email` varchar(30) NOT NULL,
  `r_o_phone` varchar(12) NOT NULL,
  `r_o_username` varchar(15) NOT NULL,
  `r_o_password` varchar(255) NOT NULL,
  `r_o_address` varchar(300) NOT NULL,
  `r_o_bankname` varchar(10) NOT NULL,
  `r_o_branchname` varchar(10) NOT NULL,
  `r_o_account` int(20) NOT NULL,
  `r_o_ifsc` int(12) NOT NULL,
  `res_name` varchar(20) NOT NULL,
  `res_email` varchar(30) NOT NULL,
  `res_phone` varchar(10) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `res_address` varchar(300) NOT NULL,
  `res_fssai` varchar(20) NOT NULL,
  `approx` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Requests` varchar(50) NOT NULL DEFAULT 'Pending',
  `is_open` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_o_details`
--

INSERT INTO `r_o_details` (`r_o_id`, `r_o_name`, `r_o_email`, `r_o_phone`, `r_o_username`, `r_o_password`, `r_o_address`, `r_o_bankname`, `r_o_branchname`, `r_o_account`, `r_o_ifsc`, `res_name`, `res_email`, `res_phone`, `profile`, `res_address`, `res_fssai`, `approx`, `status`, `date/time`, `Requests`, `is_open`) VALUES
(12, 'meet', 'meetpadaliya55@gmail.com', '9825942142', 'meet@55', '$2y$10$/LNio9uWk/4WvZl79cojiO9bHuNXl2zGrF2gl7LIGAnPXehgji9ji', 'Ahmedabad', 'Sbi', 'Nikol', 7654321, 1234567, 'Shakti sandwich', 'shaktisandwich2@gmail.com', '1234567', 'shakti.jpg', 'Shop 2,shaktisandiwich,nr galaxy heights,nikol,Ahmedbad', '1234567', '10-15mins', 1, '2025-03-07 11:53:31', 'Approved', 1),
(13, 'mansi', 'mansi5@gmail.com', '7777777777', 'mansi@5', '$2y$10$AnjhyXQS5W2Bm1aIAh9Qle3s4UVBgTqM5uEZeg2rVSMrbKZpkMoG.', 'Ahmedabad', 'boi', 'gota', 9876543, 23456789, 'Lapino\'z Pizza', 'lapinoz5@gmail.com', '123456', 'lapi.jpg', 'Shop 5,6,7 Lapinoz pizza,nr camp school,new gota,Ahmedabad ', '234567', '20-25mins', 1, '2025-04-04 03:47:54', 'Approved', 1),
(21, 'rushi', 'rushi12@gmail.com', '6666666666', 'rushi@12', '$2y$10$mldqq6uJIevr47OGkEr7HeKcbd.XBYIHVeI0IKzFpEyEkxoegL99i', 'Ahmedabad', 'Boi', 'Naroda', 2147483647, 98766354, 'Snackbar', 'snackbar@gmail.com', '659874123', 'snackbar.jpg', 'Shop 1,2 Snackbar,nr St mary\'s school,naroda,Ahmedabad ', '9756542511', '30-35mins', 1, '2025-03-07 11:52:44', 'Approved', 0),
(22, 'ayushi', 'ayushi12@gmail.com', '95647235', 'ayushi@12', '$2y$10$UL5ExjjwjTvmuMUIDUDySuThVeUt./GPSbK18Fp0Hx6xKJBQINFpW', 'Ahmedabad', 'SBI', 'Gota', 2147483647, 2147483647, 'Starbucks', 'starbucks12@gmail.com', '986541237', 'starbucks.jpg', 'Shop 1,2 Starbucks,nr camp school,new gota,Ahmedabad ', '98631452', '20-25mins', 1, '2025-04-05 03:37:40', 'Approved', 0),
(23, 'sanket', 'sanket12@gmail.com', '8888888888', 'sanket@12', '$2y$10$2Vcn9zWGgo031ecC1ShXZuMqTUvjdhCxtoLSy3HWUtKfsNTFBzRg6', 'Ahmedabad', 'Kotak', 'Ahmedabad', 2147483647, 98766354, 'Vadakam Dosa', 'vadakamdosa12@gmail.com', '4569823144', 'vadkam.jpg', 'Shop 5,6 Vadakam dosa,nr umesh chowk,new gota,Ahmedabad ', '9756542511', '50-55mins', 1, '2025-03-07 11:52:41', 'Approved', 0),
(25, 'harry', 'harry12@gmail.com', '5555555555', 'harry@12', '$2y$10$b30b0k5o23xBOPgKKaxBOOuhLwCLV4Kd5omo.hMRujC9fO1UY48gq', 'Ahmedabad', 'SBI', 'Nikol', 2147483647, 563214296, 'McDonald\'s', 'mcdonald12@gmail.com', '6542318965', 'mc.jpg', 'Shop 4,6 mcdonalds,nr rp vasani school,nikol,Ahmedabad ', '9653214567', '15-20mins', 1, '2025-03-07 11:52:40', 'Approved', 0),
(26, 'sanjana', 'sanjana12@gmail.com', '2222222222', 'sanjana@12', '$2y$10$MrcLiZHhtNY9xwphdC6AouRvOG46xUxnPxZ6HG8abXCH94oz7Xyfa', 'Ahmedabad', 'SBI', 'Nikol', 2147483647, 2147483647, 'Domino\'s Pizza', 'dominos12@gmail.com', '6547123925', 'dominoz.jpg', 'Shop 5,6,7 dominos pizza,nr sukan police chowki,nikol,Ahmedabad ', '9632587456', '30-35mins', 1, '2025-03-07 08:32:01', 'Approved', 0),
(27, 'Ramshivam', 'ramshivam12@gmail.com', '1234567895', 'ramshivam@12', '$2y$10$RviuJizjIP5c9hq.NgCGkuS7xUT66F/ueA2lGVWcGdussi9Ros44y', 'Ahmedabad', 'SBI', 'Naroda', 2147483647, 2147483647, 'Chinese Wok', 'chinesewok@12gmail.com', '7854123695', 'chinesewok.jpg', 'Shop 1 chinese wok,nr haridarshan,nava naroda,Ahmedabad ', '8654239857', '30-35mins', 1, '2025-03-07 05:56:54', 'Approved', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `st_id` int(11) NOT NULL,
  `status_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`st_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Confirmed'),
(3, 'Preparing'),
(4, 'Out of delivery'),
(5, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `cart_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_details`
--
ALTER TABLE `a_details`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `r_o_id` (`r_o_id`);

--
-- Indexes for table `c_register`
--
ALTER TABLE `c_register`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `delivery_assigned`
--
ALTER TABLE `delivery_assigned`
  ADD PRIMARY KEY (`delivery_assigned_id`),
  ADD KEY `d_o_id` (`d_o_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `delivery_orders`
--
ALTER TABLE `delivery_orders`
  ADD PRIMARY KEY (`d_o_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `d_details`
--
ALTER TABLE `d_details`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `item_ibfk_2` (`r_o_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `r_o_id` (`r_o_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `res_id` (`r_o_id`);

--
-- Indexes for table `r_o_details`
--
ALTER TABLE `r_o_details`
  ADD PRIMARY KEY (`r_o_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_details`
--
ALTER TABLE `a_details`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `c_register`
--
ALTER TABLE `c_register`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `delivery_assigned`
--
ALTER TABLE `delivery_assigned`
  MODIFY `delivery_assigned_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `delivery_orders`
--
ALTER TABLE `delivery_orders`
  MODIFY `d_o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `d_details`
--
ALTER TABLE `d_details`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `r_o_details`
--
ALTER TABLE `r_o_details`
  MODIFY `r_o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`r_o_id`) REFERENCES `r_o_details` (`r_o_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_assigned`
--
ALTER TABLE `delivery_assigned`
  ADD CONSTRAINT `delivery_assigned_ibfk_1` FOREIGN KEY (`d_o_id`) REFERENCES `delivery_orders` (`d_o_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_assigned_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `d_details` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_orders`
--
ALTER TABLE `delivery_orders`
  ADD CONSTRAINT `delivery_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`r_o_id`) REFERENCES `r_o_details` (`r_o_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `c_register` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`r_o_id`) REFERENCES `r_o_details` (`r_o_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD CONSTRAINT `payment_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_detail_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `c_register` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_detail_ibfk_3` FOREIGN KEY (`r_o_id`) REFERENCES `r_o_details` (`r_o_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `c_register` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
