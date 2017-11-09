-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 03:06 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beta_retailershangout`
--
CREATE DATABASE IF NOT EXISTS `beta_retailershangout` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beta_retailershangout`;

-- --------------------------------------------------------

--
-- Table structure for table `app_info`
--

DROP TABLE IF EXISTS `app_info`;
CREATE TABLE IF NOT EXISTS `app_info` (
  `appInfoId` bigint(20) NOT NULL AUTO_INCREMENT,
  `registrationId` varchar(500) NOT NULL,
  `deviceType` enum('android','iPhone') NOT NULL,
  `UDID` varchar(350) NOT NULL,
  `deviceToken` varchar(350) DEFAULT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `addedDate` datetime NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`appInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `bankId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`bankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `bannerId` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bannerType` enum('slider','normal') NOT NULL DEFAULT 'slider',
  `sliderSlNo` enum('0','1','2') NOT NULL DEFAULT '0',
  `url` varchar(355) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `categoryImageTitle` varchar(25) DEFAULT NULL,
  `categoryImageDetails` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bannerId`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`bannerId`, `pageId`, `image`, `status`, `bannerType`, `sliderSlNo`, `url`, `categoryId`, `categoryImageTitle`, `categoryImageDetails`) VALUES
(2, 1, '1447853245.png', 1, 'slider', '2', '', NULL, '', ''),
(3, 1, '1447853267.png', 1, 'slider', '1', '', NULL, '', ''),
(4, 2, '1447856296.jpg', 1, 'slider', '', '', 23, 'Romantic Goun', 'Romantic Goun look sexy'),
(5, 2, '1447856571.jpg', 1, 'slider', '', '', 23, '', ''),
(6, 2, '1447856590.jpg', 1, 'slider', '', '', 23, '', ''),
(7, 2, '1447856620.png', 1, 'slider', '', '', 23, '', ''),
(8, 1, '1447862321.png', 1, 'slider', '1', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `big_unit`
--

DROP TABLE IF EXISTS `big_unit`;
CREATE TABLE IF NOT EXISTS `big_unit` (
  `bigUnitId` int(11) NOT NULL AUTO_INCREMENT,
  `smallUnitId` int(11) NOT NULL,
  `bgUnitName` int(11) NOT NULL,
  `relation` int(11) NOT NULL,
  `noOfTimesUsed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bigUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
CREATE TABLE IF NOT EXISTS `billing_address` (
  `billingAddressId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `countryId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `cityId` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `zipId` bigint(20) NOT NULL,
  `contactNo` varchar(50) NOT NULL,
  `localityId` bigint(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`billingAddressId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`billingAddressId`, `userId`, `countryId`, `stateId`, `cityId`, `address`, `zipId`, `contactNo`, `localityId`, `city`, `zip`, `appSource`) VALUES
(1, 29, 99, 97, 0, 'dhenkanal', 0, '9861275404', NULL, 'Bhubaneswar', '751001', 'web'),
(2, 22, 99, 97, 0, 'dhenkanal', 0, '9861275404', NULL, 'Bhubaneswar', '751001', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `brandImage` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `categoryId` varchar(1500) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `title`, `brandImage`, `status`, `categoryId`) VALUES
(4, 'LG', '1447945424.png', 1, '11'),
(5, 'Intex', '1448721350.jpg', 1, '11'),
(6, 'Samsung', '1448721403.png', 1, '11'),
(7, 'Micromax', '1448721421.jpg', 1, '11'),
(10, 'Pitter England', '1448721473.png', 1, '13,24,27,28,29'),
(11, 'Rebock', '1447946079.png', 1, '12,13,29');

-- --------------------------------------------------------

--
-- Table structure for table `brand_user`
--

DROP TABLE IF EXISTS `brand_user`;
CREATE TABLE IF NOT EXISTS `brand_user` (
  `brandUserId` bigint(20) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`brandUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(255) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `discountId` int(11) NOT NULL,
  `priceAfterDiscount` float(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `weight` float(10,3) NOT NULL,
  `discountAmount` float(10,2) NOT NULL,
  `cartDate` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_order`
--

DROP TABLE IF EXISTS `cart_order`;
CREATE TABLE IF NOT EXISTS `cart_order` (
  `cartOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `cartId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  PRIMARY KEY (`cartOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `parrentCategoryId` bigint(20) NOT NULL,
  `categoryName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `image` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE latin1_general_ci DEFAULT NULL,
  `metaTitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `metaKeyWord` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `metaDescription` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `isSeller` tinyint(1) NOT NULL DEFAULT '1',
  `userCategoryView` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `shortDescription` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `IN_tax` float(4,2) NOT NULL DEFAULT '14.50',
  `KE_tax` float(4,2) NOT NULL DEFAULT '10.00',
  `is_last` int(1) NOT NULL DEFAULT '0',
  `option_ids` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `parrentCategoryId`, `categoryName`, `image`, `description`, `metaTitle`, `metaKeyWord`, `metaDescription`, `status`, `isSeller`, `userCategoryView`, `view`, `shortDescription`, `IN_tax`, `KE_tax`, `is_last`, `option_ids`) VALUES
(1, 0, 'Electronics', '1448729808.jpg', NULL, 'Electronics', 'Electronics', 'Electronics', 1, 1, 0, 0, 'Electronics', 14.50, 10.00, 0, ''),
(2, 0, 'Fashion and Apparel', '1448729345.jpg', NULL, 'Fashion and Apparel', 'Fashion and Apparel', 'Fashion and Apparel', 1, 1, 0, 0, 'Fashion and Apparel', 14.50, 10.00, 0, ''),
(3, 0, 'Pharmaceuticals', '1448729329.jpg', NULL, 'Pharmaceuticals', 'Pharmaceuticals', 'Pharmaceuticals', 1, 1, 0, 0, 'Pharmaceuticals', 14.50, 10.00, 0, ''),
(4, 0, 'General Home Consumer Products', '1448729235.jpg', NULL, 'General Fast Moving Consumer Goods', 'General Fast Moving Consumer Goods', 'General Fast Moving Consumer Goods', 1, 1, 0, 0, 'General Fast Moving Consumer Goods', 14.50, 10.00, 0, ''),
(12, 2, 'Men''s clothing', '1443632876.jpg', NULL, 'Men''s clothing', 'Men''s clothing', 'metaDescription', 1, 1, 1, 3, 'Men''s clothing', 14.50, 10.00, 0, ''),
(11, 1, 'Mobile Phone', '1443467144.jpg', NULL, 'memta title Mobile Phone', 'Meta Keywords Mobile Phone', 'metaDescription', 1, 1, 2, 1, 'Sort description Mobile Phone', 14.50, 10.00, 1, '12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41'),
(13, 12, 'T-Shirt', '1443632931.jpg', NULL, 'T-shirt', 'T-shirt', 'metaDescription', 1, 1, 2, 3, 'T-shirt', 14.50, 10.00, 0, ''),
(14, 0, 'Cosmetics', '1448729209.png', NULL, 'Cosmetics', 'Cosmetics', 'metaDescription', 1, 1, 0, 0, 'Cosmetics', 14.50, 10.00, 0, ''),
(15, 14, 'Fragrance', '1444852724.jpg', NULL, 'Fragrance', 'Fragrance', 'Fragrance', 1, 1, 1, 4, 'Fragrance', 14.50, 10.00, 0, ''),
(16, 14, 'Make Up', '1444852838.jpg', NULL, 'Make Up', 'Make Up', 'Make Up', 1, 1, 1, 4, 'Make Up', 14.50, 10.00, 0, ''),
(17, 4, 'Home Care Products', '1444853160.jpg', NULL, 'Home Care Products', 'Home Care Products', 'Home Care Products', 1, 1, 1, 5, 'Home Care Products', 14.50, 10.00, 0, ''),
(18, 4, 'Personal Care Products', '1444853256.png', NULL, 'Personal Care Products', 'Personal Care Products', 'Personal Care Products', 1, 1, 1, 5, 'Personal Care Products', 14.50, 10.00, 0, ''),
(19, 0, 'Food and Grocery', '1448729191.jpg', NULL, 'Food, Beverages &Grocery', 'Food, Beverages &Grocery', 'Food, Beverages &Grocery', 1, 1, 0, 0, 'Food, Beverages &Grocery', 14.50, 10.00, 0, ''),
(20, 3, 'Cold', '1444853758.png', NULL, 'Cold', 'Cold', 'Cold', 1, 1, 1, 6, 'Cold', 14.50, 10.00, 0, ''),
(21, 3, 'Cough', '1444853794.png', NULL, 'Cough', 'Cough', 'Cough', 1, 1, 1, 6, 'Cough', 14.50, 10.00, 0, ''),
(22, 3, 'Headache', '1444853826.png', NULL, 'Headache', 'Headache', 'Headache', 1, 1, 1, 6, 'Headache', 14.50, 10.00, 0, ''),
(23, 2, 'Women''s clothing', '1444854105.jpg', NULL, 'Women''s clothing', 'Women''s clothing', 'Women''s clothing', 1, 1, 1, 3, 'Women''s clothing', 14.50, 10.00, 0, ''),
(24, 12, 'Formal Full Shirt', '1444857244.png', NULL, 'Formal Full Shirt', 'Formal Full Shirt', 'Formal Full Shirt', 1, 1, 2, 3, 'Formal Full Shirt', 14.50, 10.00, 0, ''),
(25, 23, 'Sarees', '1444857372.jpg', NULL, 'Sarees', 'Sarees', 'Sarees', 1, 1, 1, 3, 'Sarees', 14.50, 10.00, 0, ''),
(26, 23, 'Trousers and shorts', '1444857729.jpg', NULL, 'Trousers and shorts', 'Trousers and shorts', 'Trousers and shorts', 1, 1, 1, 3, 'Trousers and shorts', 14.50, 10.00, 0, ''),
(27, 26, 'Hammer pants', '1444857814.jpg', NULL, 'Hammer pants', 'Hammer pants', 'Hammer pants', 1, 1, 2, 3, 'Hammer pants', 14.50, 10.00, 0, ''),
(28, 26, 'Dolphin shorts', '1444858135.png', NULL, 'Dolphin shorts', 'Dolphin shorts', 'Dolphin shorts', 1, 1, 2, 3, 'Dolphin shorts', 14.50, 10.00, 0, ''),
(29, 26, 'Disco pants', '1444858210.jpg', NULL, 'Disco pants', 'Disco pants', 'Disco pants', 1, 1, 2, 3, 'Disco pants', 14.50, 10.00, 0, ''),
(30, 26, 'Hockey_pants', '1444858285.jpg', NULL, 'Hockey_pants', 'Hockey_pants', 'Hockey_pants', 1, 1, 2, 3, 'Hockey_pants', 14.50, 10.00, 0, ''),
(31, 25, 'Banarasi sari', '1444858403.jpg', NULL, 'Banarasi sari', 'Banarasi sari', 'Banarasi sari', 1, 1, 2, 3, 'Banarasi sari', 14.50, 10.00, 0, ''),
(32, 25, 'Kanchipuram', '1444858530.jpg', NULL, 'Kanchipuram', 'Kanchipuram', 'Kanchipuram', 1, 1, 2, 3, 'Kanchipuram', 14.50, 10.00, 0, ''),
(33, 0, 'Hardwares and Home Building', '1448729169.jpg', NULL, 'Hardwares and Home Building', 'Hardwares and Home Building', 'Hardwares and Home Building', 1, 1, 0, 0, 'Hardwares and Home Building', 14.50, 10.00, 0, ''),
(34, 33, 'Cement', '1448735221.jpg', NULL, 'cement', 'cement', 'cement', 1, 1, 2, 7, 'cement', 14.50, 10.00, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `category_tag`
--

DROP TABLE IF EXISTS `category_tag`;
CREATE TABLE IF NOT EXISTS `category_tag` (
  `categoryTagId` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoryId` bigint(11) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryTagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_view_page`
--

DROP TABLE IF EXISTS `category_view_page`;
CREATE TABLE IF NOT EXISTS `category_view_page` (
  `categoryViewTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `templateFileName` varchar(50) NOT NULL,
  `templateName` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`categoryViewTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_view_page`
--

INSERT INTO `category_view_page` (`categoryViewTemplateID`, `templateFileName`, `templateName`, `status`) VALUES
(1, 'nested_level_category.php', 'Parrent Level Template', 1),
(2, 'last_level_category.php', 'Last Level Template', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `cityId` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityId`, `city`, `stateId`, `countryId`, `status`) VALUES
(1, 'Kolkata', 106, 99, 1),
(2, 'Bhubaneswar', 97, 99, 1),
(3, 'Bangalore', 89, 99, 1),
(4, 'Pune', 92, 99, 1),
(5, 'Nairobi', 213, 111, 1),
(6, 'Kiambu', 213, 111, 0),
(7, 'Kajiado', 213, 111, 0),
(8, 'Machakos', 213, 111, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
CREATE TABLE IF NOT EXISTS `cms` (
  `cmsId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `metaTitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `metaKeyWord` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `metaDescription` varbinary(500) NOT NULL,
  `shortBody` varbinary(100) NOT NULL,
  `body` longtext COLLATE latin1_general_ci,
  `categoryId` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cmsId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`cmsId`, `title`, `metaTitle`, `metaKeyWord`, `metaDescription`, `shortBody`, `body`, `categoryId`, `status`) VALUES
(1, 'About Us', 'About Tidiit', 'About Tidiit', 0x41626f757420546964696974, 0x41626f757420546964696974, '<p>\r\n About Tidiit</p>\r\n', NULL, 1),
(2, 'Terms of Use', 'Terms & Conditions', 'Terms & Conditions', 0x5465726d73202620436f6e646974696f6e73, 0x5465726d73202620436f6e646974696f6e73, '<p>\r\n Terms & Conditions</p>\r\n', NULL, 1),
(3, 'Privac Policy', 'Privac Policy', 'Privac Policy', 0x50726976616320506f6c696379, 0x50726976616320506f6c696379, '<p>\r\n Privac Policy</p>\r\n', NULL, 1),
(4, 'Payment Method', 'Payment Method', 'Payment Method', 0x5061796d656e74204d6574686f64, 0x5061796d656e74204d6574686f64, '<p>\r\n Payment Method</p>\r\n', NULL, 1),
(5, 'Coupon', 'Coupon', 'Coupon', 0x436f75706f6e, 0x436f75706f6e, '<p>\r\n Coupon</p>\r\n', NULL, 1),
(6, 'Careers', 'Careers', 'Careers', 0x43617265657273, 0x43617265657273, '<p>\r\n Careers</p>\r\n', NULL, 1),
(7, 'Press', 'Press', 'Press', 0x5072657373, 0x5072657373, '<p>\r\n Press</p>\r\n', NULL, 1),
(8, 'Delivery Options', 'Delivery Options', 'Delivery Options', 0x44656c6976657279204f7074696f6e73, 0x44656c6976657279204f7074696f6e73, '<p>\r\n Delivery Options</p>\r\n', NULL, 1),
(9, 'Customs & Import Tax', 'Customs & Import Tax', 'Customs & Import Tax', 0x437573746f6d73202620496d706f727420546178, 0x437573746f6d73202620496d706f727420546178, '<p>\r\n Customs & Import Tax</p>\r\n', NULL, 1),
(10, 'Refund & Return Process', 'Refund & Return Process', 'Refund & Return Process', 0x526566756e6420262052657475726e2050726f63657373, 0x526566756e6420262052657475726e2050726f63657373, '<p>\r\n Refund & Return Process</p>\r\n', NULL, 1),
(11, 'Tidiit Resolution Center', 'Tidiit Resolution Center', 'Tidiit Resolution Center', 0x546964696974205265736f6c7574696f6e2043656e746572, 0x546964696974205265736f6c7574696f6e2043656e746572, '<p>\r\n Tidiit Resolution Center</p>\r\n', NULL, 1),
(12, 'Terms of Sale', 'Terms of Sale', 'Terms of Sale', 0x5465726d73206f662053616c65, 0x5465726d73206f662053616c65, '<p>\r\n Terms of Sale</p>\r\n', NULL, 1),
(13, 'Report Abuse', 'Report Abuse', 'Report Abuse', 0x5265706f7274204162757365, 0x5265706f7274204162757365, '<p>\r\n Report Abuse</p>\r\n', NULL, 1),
(14, 'Contact Us', 'Contact Us', 'Contact Us', 0x436f6e74616374205573, 0x436f6e74616374205573, '<p>\r\n Contact Us</p>\r\n', NULL, 1),
(15, 'Help', 'Help', 'Help', 0x48656c70, 0x48656c70, '<p>\r\n Help</p>\r\n', NULL, 1),
(16, 'Customer Service', 'Customer Service', 'Customer Service', 0x437573746f6d65722053657276696365, 0x437573746f6d65722053657276696365, '<p>\r\n Customer Service</p>\r\n', NULL, 1),
(17, 'Buyer Protection', 'Buyer Protection', 'Buyer Protection', 0x42757965722050726f74656374696f6e, 0x42757965722050726f74656374696f6e, '<p>\r\n Buyer Protection</p>\r\n', NULL, 1),
(18, 'Partner With Us', 'Partner With Us', 'Partner With Us', 0x506172746e65722057697468205573, 0x506172746e65722057697468205573, '<p>\r\n Partner With Us</p>\r\n', NULL, 1),
(19, 'How it works', 'How it works', 'How it works', 0x486f7720697420776f726b73, 0x486f7720697420776f726b73, '<h1>\r\n	<span style="color:#40e0d0;"><strong>How it Works </strong></span></h1>\r\n<p>\r\n	&nbsp;</p>\r\n<h3 style="margin-left: 0.5in;">\r\n	<span style="color:#40e0d0;"><strong>Easy as 1-2-3</strong></span></h3>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	<span style="color:#40e0d0;"><strong>Small Retail Shop Owner?</strong></span></h3>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	<span style="color:#40e0d0;">1&nbsp;&nbsp;&nbsp;&nbsp; <strong>Sign up &ndash; It&rsquo;s free</strong></span></h3>\r\n<p style="margin-left:.75in;">\r\n	&nbsp;</p>\r\n<p style="margin-left:.5in;">\r\n	You can then join a buying club in your local area to be able to jointly buy items in bulk to enjoy lower prices or you may start your own buying club as the</p>\r\n<p style="margin-left:.5in;">\r\n	<strong>Buying Club Leader</strong>and start inviting other similar retailers</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	2&nbsp;&nbsp;&nbsp;&nbsp; <strong>Select your product and order</strong></h3>\r\n<p>\r\n	&nbsp;</p>\r\n<p style="margin-left:.5in;">\r\n	Go to the particular product categories to search the items you want to buy. Choose your order process &ndash;</p>\r\n<p style="margin-left:.5in;">\r\n	<strong>Buying Club Order</strong>or<strong>Single Order</strong>and select the quantity you need, confirm the order quantity and add it to your truck.</p>\r\n<p style="margin-left:.5in;">\r\n	&nbsp;</p>\r\n<h3>\r\n	3&nbsp;&nbsp;&nbsp;&nbsp; <strong>Payment</strong></h3>\r\n<p>\r\n	&nbsp;</p>\r\n<p style="margin-left:.5in;">\r\n	Select a payment method- <strong>Net Banking, M-Pesa</strong>or<strong>Cash on Delivery (COD)</strong>to make your payment. Verify your registered shipping address, and then proceed to complete the payment. An order confirmation SMS will be sent to you.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Using Promo codes/Discount Coupons</strong></p>\r\n<p style="margin-left:.5in;">\r\n	You can use the<strong>promo codes</strong>allowing youto get additional discount on your purchase whenever it is applicable. Inserting the promo code in the given box will show you the discounted amount.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size:14px;">For more details see the<strong>Frequently Asked Questions</strong></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	<strong>Wholesaler or Manufacturer?</strong></h3>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Tidiit technology platform provides its participating Wholesalers and Manufacturers/Brand Owners access to a hundreds of thousands of small retailers who buy your products in bulk.&nbsp; We simply don&#39;t make the difficult to reach, reachable, but we do it cost effectively than anyone else has ever done. By creating a profile for your company, not only do you increase your visibility with the buying groups who are Tidiit Members, you would also be able to powerfully launch your new products in the shortest time, and also get real time data analytics letting you know where and how your brand is performing in the market.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h3>\r\n	1<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign up &ndash; It&rsquo;s free </strong></h3>\r\n<p style="margin-left:.75in;">\r\n	&nbsp;</p>\r\n<p style="margin-left:.5in;">\r\n	<strong>Create your corporate account</strong>by providing basic information and setting up a secure password. A confirmation email will be sent informing you of successful account activation.</p>\r\n<p style="margin-left:.5in;">\r\n	&nbsp;</p>\r\n<h3>\r\n	2&nbsp;&nbsp;&nbsp;&nbsp; <strong>Upload unlimited number of products</strong></h3>\r\n<p style="margin-left:.75in;">\r\n	Choose the appropriate product category and freely upload your products in different quantities and pricing. You can flexibly change the details depending on your sales goals.Remember totell us about your need for product sales launch or a sales campaign and we&rsquo;d be glad to get the buyers on your side.</p>\r\n<p style="margin-left:.25in;">\r\n	&nbsp;</p>\r\n<h3 style="margin-left: 0.25in;">\r\n	3) <strong>Fulfill orders</strong></h3>\r\n<p style="margin-left:.25in;">\r\n	&nbsp;</p>\r\n<p style="margin-left:.75in;">\r\n	Fulfill your orders and get paid when delivery is made. In case you have fulfilled many orders at the same time, then we may need to consolidate all your payments into one. In the case of international suppliers, payment mechanism such as Letter of Credit may apply</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	For more details see the<strong>Frequently Asked Questions</strong></p>\r\n', 0, 1),
(20, 'Tidiit Payment Policy', 'Tidiit Payment Policy', 'Tidiit Payment Policy', 0x546964696974205061796d656e7420506f6c696379, 0x546964696974205061796d656e7420506f6c696379, '<p>\r\n Tidiit Payment Policy</p>\r\n', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryCode` varchar(3) NOT NULL DEFAULT '',
  `countryName` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`countryId`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryId`, `countryCode`, `countryName`, `status`) VALUES
(1, 'US', 'USA', 0),
(2, 'CA', 'Canada', 0),
(3, 'AF', 'Afghanistan', 0),
(4, 'AL', 'Albania', 0),
(5, 'DZ', 'Algeria', 0),
(6, 'DS', 'American Samoa', 0),
(7, 'AD', 'Andorra', 0),
(8, 'AO', 'Angola', 0),
(9, 'AI', 'Anguilla', 0),
(10, 'AQ', 'Antarctica', 0),
(11, 'AG', 'Antigua and/or Barbuda', 0),
(12, 'AR', 'Argentina', 0),
(13, 'AM', 'Armenia', 0),
(14, 'AW', 'Aruba', 0),
(15, 'AU', 'Australia', 0),
(16, 'AT', 'Austria', 0),
(17, 'AZ', 'Azerbaijan', 0),
(18, 'BS', 'Bahamas', 0),
(19, 'BH', 'Bahrain', 0),
(20, 'BD', 'Bangladesh', 0),
(21, 'BB', 'Barbados', 0),
(22, 'BY', 'Belarus', 0),
(23, 'BE', 'Belgium', 0),
(24, 'BZ', 'Belize', 0),
(25, 'BJ', 'Benin', 0),
(26, 'BM', 'Bermuda', 0),
(27, 'BT', 'Bhutan', 0),
(28, 'BO', 'Bolivia', 0),
(29, 'BA', 'Bosnia and Herzegovina', 0),
(30, 'BW', 'Botswana', 0),
(31, 'BV', 'Bouvet Island', 0),
(32, 'BR', 'Brazil', 0),
(33, 'IO', 'British lndian Ocean Territory', 0),
(34, 'BN', 'Brunei Darussalam', 0),
(35, 'BG', 'Bulgaria', 0),
(36, 'BF', 'Burkina Faso', 0),
(37, 'BI', 'Burundi', 0),
(38, 'KH', 'Cambodia', 0),
(39, 'CM', 'Cameroon', 0),
(40, 'CV', 'Cape Verde', 0),
(41, 'KY', 'Cayman Islands', 0),
(42, 'CF', 'Central African Republic', 0),
(43, 'TD', 'Chad', 0),
(44, 'CL', 'Chile', 0),
(45, 'CN', 'China', 0),
(46, 'CX', 'Christmas Island', 0),
(47, 'CC', 'Cocos (Keeling) Islands', 0),
(48, 'CO', 'Colombia', 0),
(49, 'KM', 'Comoros', 0),
(50, 'CG', 'Congo', 0),
(51, 'CK', 'Cook Islands', 0),
(52, 'CR', 'Costa Rica', 0),
(53, 'HR', 'Croatia (Hrvatska)', 0),
(54, 'CU', 'Cuba', 0),
(55, 'CY', 'Cyprus', 0),
(56, 'CZ', 'Czech Republic', 0),
(57, 'DK', 'Denmark', 0),
(58, 'DJ', 'Djibouti', 0),
(59, 'DM', 'Dominica', 0),
(60, 'DO', 'Dominican Republic', 0),
(61, 'TP', 'East Timor', 0),
(62, 'EC', 'Ecudaor', 0),
(63, 'EG', 'Egypt', 0),
(64, 'SV', 'El Salvador', 0),
(65, 'GQ', 'Equatorial Guinea', 0),
(66, 'ER', 'Eritrea', 0),
(67, 'EE', 'Estonia', 0),
(68, 'ET', 'Ethiopia', 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0),
(70, 'FO', 'Faroe Islands', 0),
(71, 'FJ', 'Fiji', 0),
(72, 'FI', 'Finland', 0),
(73, 'FR', 'France', 0),
(74, 'FX', 'France, Metropolitan', 0),
(75, 'GF', 'French Guiana', 0),
(76, 'PF', 'French Polynesia', 0),
(77, 'TF', 'French Southern Territories', 0),
(78, 'GA', 'Gabon', 0),
(79, 'GM', 'Gambia', 0),
(80, 'GE', 'Georgia', 0),
(81, 'DE', 'Germany', 0),
(82, 'GH', 'Ghana', 0),
(83, 'GI', 'Gibraltar', 0),
(84, 'GR', 'Greece', 0),
(85, 'GL', 'Greenland', 0),
(86, 'GD', 'Grenada', 0),
(87, 'GP', 'Guadeloupe', 0),
(88, 'GU', 'Guam', 0),
(89, 'GT', 'Guatemala', 0),
(90, 'GN', 'Guinea', 0),
(91, 'GW', 'Guinea-Bissau', 0),
(92, 'GY', 'Guyana', 0),
(93, 'HT', 'Haiti', 0),
(94, 'HM', 'Heard and Mc Donald Islands', 0),
(95, 'HN', 'Honduras', 0),
(96, 'HK', 'Hong Kong', 0),
(97, 'HU', 'Hungary', 0),
(98, 'IS', 'Iceland', 0),
(99, 'IN', 'India', 1),
(100, 'ID', 'Indonesia', 0),
(101, 'IR', 'Iran (Islamic Republic of)', 0),
(102, 'IQ', 'Iraq', 0),
(103, 'IE', 'Ireland', 0),
(104, 'IL', 'Israel', 0),
(105, 'IT', 'Italy', 0),
(106, 'CI', 'Ivory Coast', 0),
(107, 'JM', 'Jamaica', 0),
(108, 'JP', 'Japan', 0),
(109, 'JO', 'Jordan', 0),
(110, 'KZ', 'Kazakhstan', 0),
(111, 'KE', 'Kenya', 1),
(112, 'KI', 'Kiribati', 0),
(113, 'KP', 'Korea, Democratic People''s Republic of', 0),
(114, 'KR', 'Korea, Republic of', 0),
(115, 'KW', 'Kuwait', 0),
(116, 'KG', 'Kyrgyzstan', 0),
(117, 'LA', 'Lao People''s Democratic Republic', 0),
(118, 'LV', 'Latvia', 0),
(119, 'LB', 'Lebanon', 0),
(120, 'LS', 'Lesotho', 0),
(121, 'LR', 'Liberia', 0),
(122, 'LY', 'Libyan Arab Jamahiriya', 0),
(123, 'LI', 'Liechtenstein', 0),
(124, 'LT', 'Lithuania', 0),
(125, 'LU', 'Luxembourg', 0),
(126, 'MO', 'Macau', 0),
(127, 'MK', 'Macedonia', 0),
(128, 'MG', 'Madagascar', 0),
(129, 'MW', 'Malawi', 0),
(130, 'MY', 'Malaysia', 0),
(131, 'MV', 'Maldives', 0),
(132, 'ML', 'Mali', 0),
(133, 'MT', 'Malta', 0),
(134, 'MH', 'Marshall Islands', 0),
(135, 'MQ', 'Martinique', 0),
(136, 'MR', 'Mauritania', 0),
(137, 'MU', 'Mauritius', 0),
(138, 'TY', 'Mayotte', 0),
(139, 'MX', 'Mexico', 0),
(140, 'FM', 'Micronesia, Federated States of', 0),
(141, 'MD', 'Moldova, Republic of', 0),
(142, 'MC', 'Monaco', 0),
(143, 'MN', 'Mongolia', 0),
(144, 'MS', 'Montserrat', 0),
(145, 'MA', 'Morocco', 0),
(146, 'MZ', 'Mozambique', 0),
(147, 'MM', 'Myanmar', 0),
(148, 'NA', 'Namibia', 0),
(149, 'NR', 'Nauru', 0),
(150, 'NP', 'Nepal', 0),
(151, 'NL', 'Netherlands', 0),
(152, 'AN', 'Netherlands Antilles', 0),
(153, 'NC', 'New Caledonia', 0),
(154, 'NZ', 'New Zealand', 0),
(155, 'NI', 'Nicaragua', 0),
(156, 'NE', 'Niger', 0),
(157, 'NG', 'Nigeria', 0),
(158, 'NU', 'Niue', 0),
(159, 'NF', 'Norfork Island', 0),
(160, 'MP', 'Northern Mariana Islands', 0),
(161, 'NO', 'Norway', 0),
(162, 'OM', 'Oman', 0),
(163, 'PK', 'Pakistan', 0),
(164, 'PW', 'Palau', 0),
(165, 'PA', 'Panama', 0),
(166, 'PG', 'Papua New Guinea', 0),
(167, 'PY', 'Paraguay', 0),
(168, 'PE', 'Peru', 0),
(169, 'PH', 'Philippines', 0),
(170, 'PN', 'Pitcairn', 0),
(171, 'PL', 'Poland', 0),
(172, 'PT', 'Portugal', 0),
(173, 'PR', 'Puerto Rico', 0),
(174, 'QA', 'Qatar', 0),
(175, 'RE', 'Reunion', 0),
(176, 'RO', 'Romania', 0),
(177, 'RU', 'Russian Federation', 0),
(178, 'RW', 'Rwanda', 0),
(179, 'KN', 'Saint Kitts and Nevis', 0),
(180, 'LC', 'Saint Lucia', 0),
(181, 'VC', 'Saint Vincent and the Grenadines', 0),
(182, 'WS', 'Samoa', 0),
(183, 'SM', 'San Marino', 0),
(184, 'ST', 'Sao Tome and Principe', 0),
(185, 'SA', 'Saudi Arabia', 0),
(186, 'SN', 'Senegal', 0),
(187, 'SC', 'Seychelles', 0),
(188, 'SL', 'Sierra Leone', 0),
(189, 'SG', 'Singapore', 0),
(190, 'SK', 'Slovakia', 0),
(191, 'SI', 'Slovenia', 0),
(192, 'SB', 'Solomon Islands', 0),
(193, 'SO', 'Somalia', 0),
(194, 'ZA', 'South Africa', 0),
(195, 'GS', 'South Georgia South Sandwich Islands', 0),
(196, 'ES', 'Spain', 0),
(197, 'LK', 'Sri Lanka', 0),
(198, 'SH', 'St. Helena', 0),
(199, 'PM', 'St. Pierre and Miquelon', 0),
(200, 'SD', 'Sudan', 0),
(201, 'SR', 'Suriname', 0),
(202, 'SJ', 'Svalbarn and Jan Mayen Islands', 0),
(203, 'SZ', 'Swaziland', 0),
(204, 'SE', 'Sweden', 0),
(205, 'CH', 'Switzerland', 0),
(206, 'SY', 'Syrian Arab Republic', 0),
(207, 'TW', 'Taiwan', 0),
(208, 'TJ', 'Tajikistan', 0),
(209, 'TZ', 'Tanzania, United Republic of', 0),
(210, 'TH', 'Thailand', 0),
(211, 'TG', 'Togo', 0),
(212, 'TK', 'Tokelau', 0),
(213, 'TO', 'Tonga', 0),
(214, 'TT', 'Trinidad and Tobago', 0),
(215, 'TN', 'Tunisia', 0),
(216, 'TR', 'Turkey', 0),
(217, 'TM', 'Turkmenistan', 0),
(218, 'TC', 'Turks and Caicos Islands', 0),
(219, 'TV', 'Tuvalu', 0),
(220, 'UG', 'Uganda', 0),
(222, 'AE', 'UAE', 0),
(223, 'GB', 'UK', 0),
(224, 'UM', 'United States minor outlying islands', 0),
(225, 'UY', 'Uruguay', 0),
(226, 'UZ', 'Uzbekistan', 0),
(227, 'VU', 'Vanuatu', 0),
(228, 'VA', 'Vatican City State', 0),
(229, 'VE', 'Venezuela', 0),
(230, 'VN', 'Vietnam', 0),
(231, 'VG', 'Virigan Islands (British)', 0),
(232, 'VI', 'Virgin Islands (U.S.)', 0),
(233, 'WF', 'Wallis and Futuna Islands', 0),
(234, 'EH', 'Western Sahara', 0),
(235, 'YE', 'Yemen', 0),
(236, 'YU', 'Yugoslavia', 0),
(237, 'ZR', 'Zaire', 0),
(238, 'ZM', 'Zambia', 0),
(239, 'ZW', 'Zimbabwe', 0),
(240, 'OTH', 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `couponId` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `type` enum('percentage','fix') NOT NULL DEFAULT 'fix' COMMENT '0=>Fix,1=>for %',
  `amount` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userUsesType` tinyint(1) NOT NULL COMMENT '1=> User type Coupon, 2=> for System type coupon',
  `usesType` tinyint(1) NOT NULL COMMENT '1=>Single Use, 2=> multiple use',
  `isUsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`couponId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_category`
--

DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE IF NOT EXISTS `coupon_category` (
  `couponCategoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `couponId` bigint(20) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`couponCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_user`
--

DROP TABLE IF EXISTS `coupon_user`;
CREATE TABLE IF NOT EXISTS `coupon_user` (
  `couponUserId` bigint(20) NOT NULL AUTO_INCREMENT,
  `couponId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userUsesType` tinyint(1) NOT NULL COMMENT '1=>Single Use, 2=> multiple use',
  `isUsed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`couponUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `discountId` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `type` enum('percentage','fix') NOT NULL DEFAULT 'fix' COMMENT '0=>Fix,1=>for %',
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`discountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE IF NOT EXISTS `email_template` (
  `templateId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `faqId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `answer` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` enum('seller','buyer') NOT NULL,
  `faqTopicsId` bigint(20) NOT NULL,
  PRIMARY KEY (`faqId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqId`, `question`, `answer`, `status`, `type`, `faqTopicsId`) VALUES
(1, 'How i will register in the site', 'you will get the link from top of the section from the site. Links is "Sign up"..', 1, 'buyer', 1),
(2, 'Unabel to registering, getting user name is not avialble', 'It mean the email id is ready register with us by you or some one.We will investge the issue adn update.Please provide your details by our contact us section.Our Support team will contact you shortly.', 1, 'buyer', 1),
(3, 'What is single order', 'It is the normal buying process in e-commerce system.\r\nyou will sect the item and select the qunity slab and order by the cart.we will delivery the item in your shop.', 1, 'buyer', 2),
(4, 'Do i order multiple item in single order', 'Yes.You can order as much as item in your single order.', 1, 'buyer', 2),
(5, 'How item are deliveryed in single order', 'After complete the payment of all item in single order.System generated invoice for each item separatly.', 1, 'buyer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `faq_topics`
--

DROP TABLE IF EXISTS `faq_topics`;
CREATE TABLE IF NOT EXISTS `faq_topics` (
  `faqTopicsId` int(11) NOT NULL AUTO_INCREMENT,
  `faqTopics` varchar(350) NOT NULL,
  `faqTopicsType` enum('buyer','seller') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`faqTopicsId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_topics`
--

INSERT INTO `faq_topics` (`faqTopicsId`, `faqTopics`, `faqTopicsType`, `status`) VALUES
(1, 'Registration', 'buyer', 1),
(2, 'Single Order', 'buyer', 1),
(3, 'Buying Club Order', 'buyer', 1),
(4, 'Registration', 'seller', 1),
(5, 'Listing Item', 'seller', 1),
(6, 'Multiple Item with different category', 'seller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedbackId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` int(11) NOT NULL,
  `message` text NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `addedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedbackId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finance_info`
--

DROP TABLE IF EXISTS `finance_info`;
CREATE TABLE IF NOT EXISTS `finance_info` (
  `financeInfoId` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankId` int(11) DEFAULT NULL,
  `accountNo` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `ifscCode` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `mPesaMobileNumber` varchar(15) DEFAULT NULL,
  `mPIN` varchar(8) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `appSource` enum('web','ios','android','windows') NOT NULL DEFAULT 'web',
  PRIMARY KEY (`financeInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_info`
--

INSERT INTO `finance_info` (`financeInfoId`, `bankId`, `accountNo`, `type`, `ifscCode`, `name`, `mPesaMobileNumber`, `mPIN`, `userId`, `appSource`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '9556644964', '1111', 39, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `groupAdminId` int(11) NOT NULL,
  `groupTitle` varchar(100) NOT NULL,
  `productType` int(20) NOT NULL,
  `groupUsers` varchar(500) NOT NULL,
  `groupColor` varchar(100) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`groupId`, `groupAdminId`, `groupTitle`, `productType`, `groupUsers`, `groupColor`, `appSource`) VALUES
(1, 39, 'Hangout With CTO', 11, '38', 'maroon', 'web'),
(2, 38, 'Hangout With JudhiNine', 11, '39', 'red', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
CREATE TABLE IF NOT EXISTS `help` (
  `helpId` bigint(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(350) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `helpTopicsId` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`helpId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`helpId`, `question`, `answer`, `helpTopicsId`, `status`) VALUES
(1, 'How i will register in the site', 'you will get the link from top of the section from the site. Links is "Sign up"', 2, 1),
(2, '  Unabel to registering, getting user name is not avialble', 'It mean the email id is ready register with us by you or some one.We will investigate the issue and update.Please provide your details by our contact us section.Our Support team will contact you shortly.', 2, 1),
(3, 'How i place order in tidiit', 'please read the "how it work" section you will get follow guideline about placing order.Still you have any confuse,Please contact us by our "Contact Us" section, our representative will happy to serve you.', 3, 1),
(4, 'How is Buying Club Order', 'It is type of placing order where user can invite other people who are doing same kind of business to purchase item togather.', 3, 1),
(5, 'What are payment system in tidiit', 'Now we are accepting Net Banking,mPessa,Settle on Delivery.', 4, 1),
(6, 'What is Settlement On Delivery', 'It means post paid system to place a order.You will pay the money from account when material will arrival in your city to receive it.', 4, 1),
(7, 'What is mPesa', 'It is a mobile wallet payment system by Vodafone.\r\nThe advance is, by this you can receive the money directly in your account, no boring cash back system where your money will hold at our system.', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `help_request`
--

DROP TABLE IF EXISTS `help_request`;
CREATE TABLE IF NOT EXISTS `help_request` (
  `helpRequestId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deviceType` enum('android','iphone') DEFAULT NULL,
  `deviceToken` varchar(500) DEFAULT NULL,
  `UDID` varchar(500) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`helpRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

DROP TABLE IF EXISTS `help_topics`;
CREATE TABLE IF NOT EXISTS `help_topics` (
  `helpTopicsId` int(11) NOT NULL AUTO_INCREMENT,
  `helpTopics` varchar(350) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`helpTopicsId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help_topics`
--

INSERT INTO `help_topics` (`helpTopicsId`, `helpTopics`, `status`) VALUES
(2, 'Registration', 1),
(3, 'Order Placing', 1),
(4, 'Payment', 1),
(5, 'Delivery', 1),
(6, 'Buying Clubs', 1),
(7, 'Buying Club Facility', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
CREATE TABLE IF NOT EXISTS `locality` (
  `localityId` bigint(20) NOT NULL AUTO_INCREMENT,
  `locality` varchar(50) NOT NULL,
  `zipId` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`localityId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locality`
--

INSERT INTO `locality` (`localityId`, `locality`, `zipId`, `status`) VALUES
(1, 'Customs House', 1, 1),
(2, 'Council House Street', 1, 1),
(3, 'Cossipore', 2, 1),
(4, 'Cossipore Gun Factory', 2, 1),
(5, 'Girish Avenue', 3, 1),
(6, 'Intally', 4, 1),
(7, 'Sealdah', 4, 1),
(8, 'Moulali', 4, 1),
(9, 'Lalbazar', 1, 1),
(10, 'Pollock Street', 1, 1),
(11, 'R. N. Mukherjee Road', 1, 1),
(12, 'Paikpara', 2, 1),
(13, 'Satchasipara', 2, 1),
(14, 'Amrita Bazar', 3, 1),
(15, 'Bagh Bazar', 3, 1),
(16, 'R. J. Kar Medical College', 5, 1),
(17, 'Shyam Bazar Mail', 5, 1),
(18, 'Ultadanga', 5, 1),
(19, 'Ahoritola', 6, 1),
(20, 'Hatkhola', 6, 1),
(21, 'Taltala', 4, 1),
(22, 'Linton Street', 4, 1),
(23, 'A G Sq', 100, 1),
(24, 'C G Colony', 100, 1),
(25, 'Kharabela Nagar', 100, 1),
(26, 'Whitefield', 195, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
CREATE TABLE IF NOT EXISTS `logistics` (
  `logisticsId` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `registrationNo` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contactNo` varchar(30) NOT NULL,
  `contactNo1` varchar(30) DEFAULT NULL,
  `website` varchar(50) NOT NULL,
  `contactPersonName` varchar(50) NOT NULL,
  `supportNo` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`logisticsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logistics`
--

INSERT INTO `logistics` (`logisticsId`, `title`, `registrationNo`, `address`, `contactNo`, `contactNo1`, `website`, `contactPersonName`, `supportNo`, `status`) VALUES
(1, 'FedEx Exp. Cargo', 'Fed001', 'address', '8345627899', '', 'http://test.com', 'Mr. John', '88888743434', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logistic_user`
--

DROP TABLE IF EXISTS `logistic_user`;
CREATE TABLE IF NOT EXISTS `logistic_user` (
  `logisticsUserId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `logisticsId` int(11) NOT NULL,
  PRIMARY KEY (`logisticsUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logistic_user`
--

INSERT INTO `logistic_user` (`logisticsUserId`, `userId`, `logisticsId`) VALUES
(1, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logistic_weight_based_charges`
--

DROP TABLE IF EXISTS `logistic_weight_based_charges`;
CREATE TABLE IF NOT EXISTS `logistic_weight_based_charges` (
  `logisticWeightBasedChargesId` int(11) NOT NULL AUTO_INCREMENT,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `charges` float(5,2) NOT NULL,
  PRIMARY KEY (`logisticWeightBasedChargesId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logistic_weight_based_charges`
--

INSERT INTO `logistic_weight_based_charges` (`logisticWeightBasedChargesId`, `min`, `max`, `charges`) VALUES
(1, 50, 99, 8.00),
(2, 100, 199, 6.50),
(3, 200, 499, 5.50),
(4, 500, 999, 5.00),
(5, 1000, 1999, 4.75),
(6, 2000, 2999, 4.55),
(7, 3000, 3999, 4.40),
(8, 4000, 4999, 4.25),
(9, 5000, 25000, 4.20);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa`
--

DROP TABLE IF EXISTS `mpesa`;
CREATE TABLE IF NOT EXISTS `mpesa` (
  `mPesaId` bigint(20) NOT NULL AUTO_INCREMENT,
  `paymentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(18) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `userId` bigint(11) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `mcomPgTransId` varchar(50) NOT NULL,
  `transrefNo` varchar(50) NOT NULL,
  `csrf` varchar(100) NOT NULL,
  PRIMARY KEY (`mPesaId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpesa`
--

INSERT INTO `mpesa` (`mPesaId`, `paymentTime`, `IP`, `latitude`, `longitude`, `userId`, `appSource`, `mcomPgTransId`, `transrefNo`, `csrf`) VALUES
(1, '2016-09-03 16:13:49', '127.0.0.1', '', '', 39, 'web', '0309161137835', '72062', 'BJ1I-24PC-A0TB-JJVP-AETK-AA0A-9VC5-U611');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `senderId` int(20) NOT NULL,
  `receiverId` int(20) NOT NULL,
  `nType` varchar(100) NOT NULL,
  `nTitle` varchar(500) NOT NULL,
  `nMessage` text NOT NULL,
  `createDate` datetime NOT NULL,
  `isRead` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `adminName` varchar(100) DEFAULT NULL,
  `adminEmail` varchar(100) DEFAULT NULL,
  `adminContactNo` varchar(100) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `orderId` bigint(20) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `productPriceId` bigint(20) DEFAULT NULL,
  `acceptDeclineState` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `senderId`, `receiverId`, `nType`, `nTitle`, `nMessage`, `createDate`, `isRead`, `status`, `adminName`, `adminEmail`, `adminContactNo`, `appSource`, `orderId`, `productId`, `productPriceId`, `acceptDeclineState`) VALUES
(1, 39, 38, 'BUYING-CLUB-ADD', 'Hangout With CTO', 'Hi, <br /> You Have added in my newly created Hangout <strong>[Hangout With CTO]</strong> by JudhisthiraNine SahooNine.<br />Group Leader email id is judhisahoo2009@gmail.com.<br />Group Leader contact number is 9861275404.', '2016-09-03 15:33:30', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(2, 39, 38, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraNine SahooNine</b>', 'Hi, <br> You have requested to buy Hangout[Hangout With CTO] order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://retailershangout-local.com/shopping/group-order-decline/OTA0ODA0'' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://retailershangout-local.com/shopping/group-order-accept-process/OTA0ODA0'' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2016-09-03 17:25:43', 1, 1, NULL, NULL, NULL, 'web', 4, 1, 1, 0),
(3, 38, 39, 'BUYING-CLUB-ORDER-CONTINUE', 'Your Hangout[Hangout With CTO] order continue by <b>JudhisthiraCto SahooCto</b>', 'Hi, <br> I have paid Rs. 13740.00 /- for the quantity 3 of this Hangout[Hangout With CTO].<br>Order item is Samsung Galaxy J5<br /><br/>Thanks <br> retailershangout.com.', '2016-09-03 17:28:03', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(4, 38, 39, 'BUYING-CLUB-ORDER', '<b>JudhisthiraCto SahooCto</b> completed payment before delivery for  Hangout order', 'Hi, <br> I have paid Rs. 13740.00 /- for the quantity 3 of this Hangout.<br>Thanks <br> retailershangout.com.', '2016-09-03 17:30:06', 0, 1, NULL, NULL, NULL, 'web', 5, 1, 1, 0),
(5, 39, 38, 'BUYING-CLUB-ORDER', '<b>JudhisthiraNine SahooNine</b>  completed payment before delivery', 'Hi, JudhisthiraNine SahooNine<br> completed his payment for buy the Hangout order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Thanks <br> retailershangout.com.', '2016-09-03 17:33:38', 0, 1, NULL, NULL, NULL, 'web', 4, 1, 1, 0),
(6, 39, 38, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraNine SahooNine</b>', 'Hi, <br> You have requested to buy Hangout order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://retailershangout-local.com/shopping/group-order-decline/MTM1NzIwNg=='' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://retailershangout-local.com/shopping/group-order-accept-process/MTM1NzIwNg=='' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2016-09-03 17:48:04', 1, 1, NULL, NULL, NULL, 'web', 6, 1, 1, 0),
(7, 38, 39, 'BUYING-CLUB-ORDER', '', '', '0000-00-00 00:00:00', 0, 0, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(8, 38, 39, 'BUYING-CLUB-ADD', 'Hangout With JudhiNine', 'Hi, <br /> You Have added in my newly created Hangout <strong>[Hangout With JudhiNine]</strong> by JudhisthiraCto SahooCto.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9556644964.', '2016-09-03 18:08:08', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(9, 38, 39, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraCto SahooCto</b>', 'Hi, <br> You have requested to buy Hangout[Hangout With JudhiNine] order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://retailershangout-local.com/shopping/group-order-decline/MTgwOTYwOA=='' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://retailershangout-local.com/shopping/group-order-accept-process/MTgwOTYwOA=='' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2016-09-03 18:08:46', 1, 1, NULL, NULL, NULL, 'web', 8, 1, 1, 0),
(10, 39, 38, 'BUYING-CLUB-ORDER-CONTINUE', 'Your Hangout[Hangout With JudhiNine] order continue by <b>JudhisthiraNine SahooNine</b>', 'Hi, <br> I have paid Rs. 9160.00 /- for the quantity 2 of this Hangout[Hangout With JudhiNine].<br>Order item is Samsung Galaxy J5<br /><br/>Thanks <br> retailershangout.com.', '2016-09-03 18:10:28', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(11, 39, 38, 'BUYING-CLUB-ORDER', '<b>JudhisthiraNine SahooNine</b>  completed payment before delivery', 'Hi, JudhisthiraNine SahooNine<br> completed his payment for buy the Hangout order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Thanks <br> retailershangout.com.', '2016-09-03 18:13:37', 0, 1, NULL, NULL, NULL, 'web', 6, 1, 1, 0),
(12, 39, 38, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraNine SahooNine</b>', 'Hi, <br> You have requested to buy Hangout[Hangout With CTO] order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://beta.retailershangout-local.com/shopping/group-order-decline/MjcxNDQxMg=='' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://beta.retailershangout-local.com/shopping/group-order-accept-process/MjcxNDQxMg=='' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2017-11-08 19:12:50', 1, 1, NULL, NULL, NULL, 'web', 12, 1, 1, 0),
(13, 38, 39, 'BUYING-CLUB-ORDER-CONTINUE', 'Your Hangout[Hangout With CTO] order continue by <b>JudhisthiraCto SahooCto</b>', 'Hi, <br> I have paid Rs. 9160.00 /- for the quantity 2 of this Hangout[Hangout With CTO].<br>Order item is Samsung Galaxy J5<br /><br/>Thanks <br> retailershangout.com.', '2017-11-08 19:16:01', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(14, 38, 39, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraCto SahooCto</b>', 'Hi, <br> You have requested to buy Hangout order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://beta.retailershangout-local.com/shopping/group-order-decline/MzE2NjgxNA=='' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://beta.retailershangout-local.com/shopping/group-order-accept-process/MzE2NjgxNA=='' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2017-11-08 19:22:12', 1, 1, NULL, NULL, NULL, 'web', 14, 1, 1, 0),
(15, 39, 38, 'BUYING-CLUB-ORDER', '', '', '0000-00-00 00:00:00', 0, 0, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0),
(16, 38, 39, 'BUYING-CLUB-ORDER', 'New Hangout order running by <b>JudhisthiraCto SahooCto</b>', 'Hi, <br> You have requested to buy Hangout[Hangout With JudhiNine] order product.<br>Product is <a href=''''>Samsung Galaxy J5</a><br>Want to process the order ? <br><a href=''http://beta.retailershangout-local.com/shopping/group-order-decline/MzYxOTIxNg=='' class=''btn btn-danger btn-lg''>Decline</a>  or <a href=''http://beta.retailershangout-local.com/shopping/group-order-accept-process/MzYxOTIxNg=='' class=''btn btn-success btn-lg''>Accept</a><br>Thanks <br> retailershangout.com.', '2017-11-08 19:28:05', 1, 1, NULL, NULL, NULL, 'web', 16, 1, 1, 0),
(17, 39, 38, 'BUYING-CLUB-ORDER-CONTINUE', 'Your Hangout[Hangout With JudhiNine] order continue by <b>JudhisthiraNine SahooNine</b>', 'Hi, <br> I have paid Rs. 13740.00 /- for the quantity 3 of this Hangout[Hangout With JudhiNine].<br>Order item is Samsung Galaxy J5<br /><br/>Thanks <br> retailershangout.com.', '2017-11-08 19:29:42', 0, 1, NULL, NULL, NULL, 'web', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `orderId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderType` enum('SINGLE','GROUP') NOT NULL,
  `productId` int(20) NOT NULL,
  `productPriceId` int(20) NOT NULL,
  `invoiceNo` varchar(20) DEFAULT NULL,
  `orderAmount` float(10,2) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(20) NOT NULL DEFAULT '0',
  `orderDate` datetime NOT NULL,
  `orderUpdatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `subTotalAmount` float(10,2) NOT NULL,
  `discountAmount` float(10,2) NOT NULL,
  `taxID` int(11) NOT NULL DEFAULT '0',
  `taxAmount` float(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `shippingId` int(11) DEFAULT NULL,
  `shippingamount` float(10,2) DEFAULT NULL,
  `userNote` text,
  `aproxMateDeliveryDate` date DEFAULT NULL,
  `redeemPoints` int(11) DEFAULT NULL,
  `redeemAmount` float(10,2) DEFAULT NULL,
  `shippingCountryId` int(11) DEFAULT NULL,
  `userPreferredDeliveryDate` date DEFAULT NULL,
  `userSpecialOccasion` varchar(255) DEFAULT NULL,
  `specialInstruction` varchar(255) DEFAULT NULL,
  `shippingAddresssId` bigint(20) DEFAULT NULL,
  `orderStateId` int(1) NOT NULL DEFAULT '1',
  `userShippingLocation` varchar(5) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `cancelDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderDeviceType` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>Web Order, 2=> Mobile Web, 3=> Mobile App',
  `parrentOrderID` bigint(20) NOT NULL DEFAULT '0',
  `productQty` bigint(20) NOT NULL,
  `orderInfo` longtext NOT NULL,
  `isPaid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>not paid,1=>paid',
  `qrCodeImageFile` varchar(100) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `udid` varchar(300) DEFAULT NULL,
  `deviceToken` varchar(300) DEFAULT NULL,
  `udidPayment` varchar(100) DEFAULT NULL,
  `deviceTokenPayment` varchar(100) DEFAULT NULL,
  `latitudePayment` varchar(30) DEFAULT NULL,
  `longitudePayment` varchar(30) DEFAULT NULL,
  `reOrder` tinyint(1) NOT NULL DEFAULT '0',
  `cancelOrderUserId` varchar(150) DEFAULT NULL COMMENT 'cancel user id are with comma separated',
  `notificationId` bigint(20) DEFAULT NULL,
  `setWarehouse` text NOT NULL,
  `productsSerial` text NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderId`, `orderType`, `productId`, `productPriceId`, `invoiceNo`, `orderAmount`, `userId`, `groupId`, `orderDate`, `orderUpdatedate`, `subTotalAmount`, `discountAmount`, `taxID`, `taxAmount`, `status`, `shippingId`, `shippingamount`, `userNote`, `aproxMateDeliveryDate`, `redeemPoints`, `redeemAmount`, `shippingCountryId`, `userPreferredDeliveryDate`, `userSpecialOccasion`, `specialInstruction`, `shippingAddresssId`, `orderStateId`, `userShippingLocation`, `IP`, `cancelDate`, `orderDeviceType`, `parrentOrderID`, `productQty`, `orderInfo`, `isPaid`, `qrCodeImageFile`, `appSource`, `latitude`, `longitude`, `udid`, `deviceToken`, `udidPayment`, `deviceTokenPayment`, `latitudePayment`, `longitudePayment`, `reOrder`, `cancelOrderUserId`, `notificationId`, `setWarehouse`, `productsSerial`) VALUES
(1, 'SINGLE', 1, 1, NULL, 22900.00, 39, 0, '2016-09-03 16:08:19', '2016-09-03 14:45:04', 20000.00, 0.00, 0, 2900.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 5, 'YTo2OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIwMDAwLTAwLTAwIDAwOjAwOjAwIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNTAwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjM6InRheCI7czo3OiIyOTAwLjAwIjtzOjE0OiJkaXNjb3VudEFtb3VudCI7czo0OiIwLjAwIjtzOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9fQ==', 1, '1472911699-26.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(2, 'SINGLE', 1, 1, NULL, 22900.00, 39, 0, '2016-09-03 16:46:51', '2016-09-03 15:22:06', 20000.00, 0.00, 0, 2900.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 5, 'YTo2OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDE5OjM4OjM2IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDk1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjM6InRheCI7czo3OiIyOTAwLjAwIjtzOjE0OiJkaXNjb3VudEFtb3VudCI7czo0OiIwLjAwIjtzOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9fQ==', 1, '1472914011-45.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(3, 'SINGLE', 1, 1, NULL, 22900.00, 39, 0, '2016-09-03 17:22:45', '2016-09-03 15:23:32', 20000.00, 0.00, 0, 2900.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 5, 'YTo2OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIwOjE3OjA4IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDkwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjM6InRheCI7czo3OiIyOTAwLjAwIjtzOjE0OiJkaXNjb3VudEFtb3VudCI7czo0OiIwLjAwIjtzOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9fQ==', 1, '1472916165-22.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(4, 'GROUP', 1, 1, NULL, 9160.00, 39, 1, '2016-09-03 17:25:43', '2016-09-03 15:33:38', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIwOjUzOjMyIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDg1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjEiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOSI7czoxMDoiZ3JvdXBUaXRsZSI7czoxNjoiSGFuZ291dCBXaXRoIENUTyI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzgiO3M6MTA6Imdyb3VwQ29sb3IiO3M6NjoibWFyb29uIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOCI7czo4OiJ1c2VyTmFtZSI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNDoiSnVkaGlzdGhpcmFDdG8iO3M6ODoibGFzdE5hbWUiO3M6ODoiU2Fob29DdG8iO3M6NToiZW1haWwiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMTAiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo3OiJ0ZXN0aW5nIjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX1zOjU6ImFkbWluIjtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6ODoidXNlck5hbWUiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjU6ImVtYWlsIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5ODYxMjc1NDA0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0wMyI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjQ6InRlc3QiO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 1, '1472916283-7.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(5, 'GROUP', 1, 1, NULL, 13740.00, 38, 1, '2016-09-03 17:28:03', '2016-09-03 15:30:06', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 4, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIwOjU1OjQzIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDgwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTE6ImNvdW50cnlOYW1lIjtzOjU6IkluZGlhIjtzOjk6InN0YXRlTmFtZSI7czo5OiJLQVJOQVRBS0EiO3M6NDoiY2l0eSI7czo5OiJCYW5nYWxvcmUiO3M6MzoiemlwIjtzOjY6IjU2MDA2NiI7czo4OiJsb2NhbGl0eSI7czoxMDoiV2hpdGVmaWVsZCI7fXM6NToiZ3JvdXAiO086ODoic3RkQ2xhc3MiOjk6e3M6NzoiZ3JvdXBJZCI7czoxOiIxIjtzOjEyOiJncm91cEFkbWluSWQiO3M6MjoiMzkiO3M6MTA6Imdyb3VwVGl0bGUiO3M6MTY6IkhhbmdvdXQgV2l0aCBDVE8iO3M6MTE6InByb2R1Y3RUeXBlIjtzOjI6IjExIjtzOjEwOiJncm91cFVzZXJzIjtzOjI6IjM4IjtzOjEwOiJncm91cENvbG9yIjtzOjY6Im1hcm9vbiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjU6InVzZXJzIjthOjE6e2k6MDtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6ODoidXNlck5hbWUiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTQ6Ikp1ZGhpc3RoaXJhQ3RvIjtzOjg6Imxhc3ROYW1lIjtzOjg6IlNhaG9vQ3RvIjtzOjU6ImVtYWlsIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTEwIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NzoidGVzdGluZyI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM5IjtzOjg6InVzZXJOYW1lIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNToiSnVkaGlzdGhpcmFOaW5lIjtzOjg6Imxhc3ROYW1lIjtzOjk6IlNhaG9vTmluZSI7czo1OiJlbWFpbCI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTg2MTI3NTQwNCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMDMiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo0OiJ0ZXN0IjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX19', 1, '1472916439-21.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(6, 'GROUP', 1, 1, NULL, 13740.00, 39, 1, '2016-09-03 17:45:23', '2016-09-03 16:13:37', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIwOjU1OjQzIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDgwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjEiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOSI7czoxMDoiZ3JvdXBUaXRsZSI7czoxNjoiSGFuZ291dCBXaXRoIENUTyI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzgiO3M6MTA6Imdyb3VwQ29sb3IiO3M6NjoibWFyb29uIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOCI7czo4OiJ1c2VyTmFtZSI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNDoiSnVkaGlzdGhpcmFDdG8iO3M6ODoibGFzdE5hbWUiO3M6ODoiU2Fob29DdG8iO3M6NToiZW1haWwiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMTAiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo3OiJ0ZXN0aW5nIjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX1zOjU6ImFkbWluIjtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6ODoidXNlck5hbWUiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjU6ImVtYWlsIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5ODYxMjc1NDA0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0wMyI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjQ6InRlc3QiO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 1, '1472917488-24.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(7, 'GROUP', 1, 1, NULL, 9160.00, 38, 1, '2016-09-03 17:51:06', '2016-09-03 15:51:28', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 6, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIxOjE4OjA0IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDc1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTE6ImNvdW50cnlOYW1lIjtzOjU6IkluZGlhIjtzOjk6InN0YXRlTmFtZSI7czo5OiJLQVJOQVRBS0EiO3M6NDoiY2l0eSI7czo5OiJCYW5nYWxvcmUiO3M6MzoiemlwIjtzOjY6IjU2MDA2NiI7czo4OiJsb2NhbGl0eSI7czoxMDoiV2hpdGVmaWVsZCI7fXM6NToiZ3JvdXAiO086ODoic3RkQ2xhc3MiOjk6e3M6NzoiZ3JvdXBJZCI7czoxOiIxIjtzOjEyOiJncm91cEFkbWluSWQiO3M6MjoiMzkiO3M6MTA6Imdyb3VwVGl0bGUiO3M6MTY6IkhhbmdvdXQgV2l0aCBDVE8iO3M6MTE6InByb2R1Y3RUeXBlIjtzOjI6IjExIjtzOjEwOiJncm91cFVzZXJzIjtzOjI6IjM4IjtzOjEwOiJncm91cENvbG9yIjtzOjY6Im1hcm9vbiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjU6InVzZXJzIjthOjE6e2k6MDtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6ODoidXNlck5hbWUiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTQ6Ikp1ZGhpc3RoaXJhQ3RvIjtzOjg6Imxhc3ROYW1lIjtzOjg6IlNhaG9vQ3RvIjtzOjU6ImVtYWlsIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTEwIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NzoidGVzdGluZyI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM5IjtzOjg6InVzZXJOYW1lIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNToiSnVkaGlzdGhpcmFOaW5lIjtzOjg6Imxhc3ROYW1lIjtzOjk6IlNhaG9vTmluZSI7czo1OiJlbWFpbCI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTg2MTI3NTQwNCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMDMiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo0OiJ0ZXN0IjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX19', 1, '1472917842-16.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(8, 'GROUP', 1, 1, NULL, 13740.00, 38, 2, '2016-09-03 18:08:46', '2016-09-03 16:10:28', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIxOjIxOjI4IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDY1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTE6ImNvdW50cnlOYW1lIjtzOjU6IkluZGlhIjtzOjk6InN0YXRlTmFtZSI7czo5OiJLQVJOQVRBS0EiO3M6NDoiY2l0eSI7czo5OiJCYW5nYWxvcmUiO3M6MzoiemlwIjtzOjY6IjU2MDA2NiI7czo4OiJsb2NhbGl0eSI7czoxMDoiV2hpdGVmaWVsZCI7fXM6NToiZ3JvdXAiO086ODoic3RkQ2xhc3MiOjk6e3M6NzoiZ3JvdXBJZCI7czoxOiIyIjtzOjEyOiJncm91cEFkbWluSWQiO3M6MjoiMzgiO3M6MTA6Imdyb3VwVGl0bGUiO3M6MjI6IkhhbmdvdXQgV2l0aCBKdWRoaU5pbmUiO3M6MTE6InByb2R1Y3RUeXBlIjtzOjI6IjExIjtzOjEwOiJncm91cFVzZXJzIjtzOjI6IjM5IjtzOjEwOiJncm91cENvbG9yIjtzOjM6InJlZCI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjU6InVzZXJzIjthOjE6e2k6MDtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6ODoidXNlck5hbWUiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjU6ImVtYWlsIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5ODYxMjc1NDA0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0wMyI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjQ6InRlc3QiO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fXM6NToiYWRtaW4iO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOCI7czo4OiJ1c2VyTmFtZSI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNDoiSnVkaGlzdGhpcmFDdG8iO3M6ODoibGFzdE5hbWUiO3M6ODoiU2Fob29DdG8iO3M6NToiZW1haWwiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMTAiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo3OiJ0ZXN0aW5nIjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX19', 0, '1472918030-2.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(9, 'GROUP', 1, 1, NULL, 9160.00, 39, 2, '2016-09-03 18:10:28', '2016-09-03 16:10:28', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 8, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIxOjM4OjQ2IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDYwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjIiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOCI7czoxMDoiZ3JvdXBUaXRsZSI7czoyMjoiSGFuZ291dCBXaXRoIEp1ZGhpTmluZSI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzkiO3M6MTA6Imdyb3VwQ29sb3IiO3M6MzoicmVkIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOSI7czo4OiJ1c2VyTmFtZSI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTU6Ikp1ZGhpc3RoaXJhTmluZSI7czo4OiJsYXN0TmFtZSI7czo5OiJTYWhvb05pbmUiO3M6NToiZW1haWwiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk4NjEyNzU0MDQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTAzIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NDoidGVzdCI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM4IjtzOjg6InVzZXJOYW1lIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czo1OiJlbWFpbCI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0xMCI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjc6InRlc3RpbmciO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 0, '1472919003-41.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '');
INSERT INTO `order` (`orderId`, `orderType`, `productId`, `productPriceId`, `invoiceNo`, `orderAmount`, `userId`, `groupId`, `orderDate`, `orderUpdatedate`, `subTotalAmount`, `discountAmount`, `taxID`, `taxAmount`, `status`, `shippingId`, `shippingamount`, `userNote`, `aproxMateDeliveryDate`, `redeemPoints`, `redeemAmount`, `shippingCountryId`, `userPreferredDeliveryDate`, `userSpecialOccasion`, `specialInstruction`, `shippingAddresssId`, `orderStateId`, `userShippingLocation`, `IP`, `cancelDate`, `orderDeviceType`, `parrentOrderID`, `productQty`, `orderInfo`, `isPaid`, `qrCodeImageFile`, `appSource`, `latitude`, `longitude`, `udid`, `deviceToken`, `udidPayment`, `deviceTokenPayment`, `latitudePayment`, `longitudePayment`, `reOrder`, `cancelOrderUserId`, `notificationId`, `setWarehouse`, `productsSerial`) VALUES
(10, 'SINGLE', 1, 1, NULL, 22900.00, 39, 0, '2017-11-08 18:20:45', '2017-11-08 17:45:29', 20000.00, 0.00, 0, 2900.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 5, 'YTo2OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE2LTA5LTAzIDIxOjM4OjQ2IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDYwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjM6InRheCI7czo3OiIyOTAwLjAwIjtzOjE0OiJkaXNjb3VudEFtb3VudCI7czo0OiIwLjAwIjtzOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtzOjA6IiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjExOiJjb3VudHJ5TmFtZSI7czo1OiJJbmRpYSI7czo5OiJzdGF0ZU5hbWUiO3M6OToiS0FSTkFUQUtBIjtzOjQ6ImNpdHkiO3M6OToiQmFuZ2Fsb3JlIjtzOjM6InppcCI7czo2OiI1NjAwNjYiO3M6ODoibG9jYWxpdHkiO3M6MTA6IldoaXRlZmllbGQiO319', 1, '1510161645-24.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(11, 'SINGLE', 1, 1, NULL, 22900.00, 39, 0, '2017-11-08 18:46:23', '2017-11-08 17:55:25', 20000.00, 0.00, 0, 2900.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 5, 'YTo2OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjE1OjI5IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDU1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjM6InRheCI7czo3OiIyOTAwLjAwIjtzOjE0OiJkaXNjb3VudEFtb3VudCI7czo0OiIwLjAwIjtzOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtzOjA6IiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjExOiJjb3VudHJ5TmFtZSI7czo1OiJJbmRpYSI7czo5OiJzdGF0ZU5hbWUiO3M6OToiS0FSTkFUQUtBIjtzOjQ6ImNpdHkiO3M6OToiQmFuZ2Fsb3JlIjtzOjM6InppcCI7czo2OiI1NjAwNjYiO3M6ODoibG9jYWxpdHkiO3M6MTA6IldoaXRlZmllbGQiO319', 0, '1510163183-24.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(12, 'GROUP', 1, 1, NULL, 13740.00, 39, 1, '2017-11-08 19:12:50', '2017-11-08 18:16:01', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjI1OjI1IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDUwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtzOjA6IiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjExOiJjb3VudHJ5TmFtZSI7czo1OiJJbmRpYSI7czo5OiJzdGF0ZU5hbWUiO3M6OToiS0FSTkFUQUtBIjtzOjQ6ImNpdHkiO3M6OToiQmFuZ2Fsb3JlIjtzOjM6InppcCI7czo2OiI1NjAwNjYiO3M6ODoibG9jYWxpdHkiO3M6MTA6IldoaXRlZmllbGQiO31zOjU6Imdyb3VwIjtPOjg6InN0ZENsYXNzIjo5OntzOjc6Imdyb3VwSWQiO3M6MToiMSI7czoxMjoiZ3JvdXBBZG1pbklkIjtzOjI6IjM5IjtzOjEwOiJncm91cFRpdGxlIjtzOjE2OiJIYW5nb3V0IFdpdGggQ1RPIjtzOjExOiJwcm9kdWN0VHlwZSI7czoyOiIxMSI7czoxMDoiZ3JvdXBVc2VycyI7czoyOiIzOCI7czoxMDoiZ3JvdXBDb2xvciI7czo2OiJtYXJvb24iO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czo1OiJ1c2VycyI7YToxOntpOjA7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM4IjtzOjg6InVzZXJOYW1lIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czo1OiJlbWFpbCI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0xMCI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjc6InRlc3RpbmciO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fXM6NToiYWRtaW4iO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOSI7czo4OiJ1c2VyTmFtZSI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTU6Ikp1ZGhpc3RoaXJhTmluZSI7czo4OiJsYXN0TmFtZSI7czo5OiJTYWhvb05pbmUiO3M6NToiZW1haWwiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk4NjEyNzU0MDQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTAzIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NDoidGVzdCI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319fQ==', 0, '1510164316-4.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(13, 'GROUP', 1, 1, NULL, 9160.00, 38, 1, '2017-11-08 19:16:01', '2017-11-08 18:16:01', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 12, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjQyOjUwIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDQ1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7czowOiIiO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjEiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOSI7czoxMDoiZ3JvdXBUaXRsZSI7czoxNjoiSGFuZ291dCBXaXRoIENUTyI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzgiO3M6MTA6Imdyb3VwQ29sb3IiO3M6NjoibWFyb29uIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOCI7czo4OiJ1c2VyTmFtZSI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNDoiSnVkaGlzdGhpcmFDdG8iO3M6ODoibGFzdE5hbWUiO3M6ODoiU2Fob29DdG8iO3M6NToiZW1haWwiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMTAiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo3OiJ0ZXN0aW5nIjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX1zOjU6ImFkbWluIjtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6ODoidXNlck5hbWUiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjU6ImVtYWlsIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5ODYxMjc1NDA0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0wMyI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjQ6InRlc3QiO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 0, '1510164940-24.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(14, 'GROUP', 1, 1, NULL, 13740.00, 38, 2, '2017-11-08 19:21:55', '2017-11-08 18:26:30', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjQyOjUwIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDQ1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7czowOiIiO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjIiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOCI7czoxMDoiZ3JvdXBUaXRsZSI7czoyMjoiSGFuZ291dCBXaXRoIEp1ZGhpTmluZSI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzkiO3M6MTA6Imdyb3VwQ29sb3IiO3M6MzoicmVkIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOSI7czo4OiJ1c2VyTmFtZSI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTU6Ikp1ZGhpc3RoaXJhTmluZSI7czo4OiJsYXN0TmFtZSI7czo5OiJTYWhvb05pbmUiO3M6NToiZW1haWwiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk4NjEyNzU0MDQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTAzIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NDoidGVzdCI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM4IjtzOjg6InVzZXJOYW1lIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czo1OiJlbWFpbCI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0xMCI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjc6InRlc3RpbmciO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 0, '1510165039-49.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(15, 'GROUP', 1, 1, NULL, 9160.00, 39, 2, '2017-11-08 19:26:14', '2017-11-08 18:26:30', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 14, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjUyOjEyIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDQwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtzOjA6IiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjExOiJjb3VudHJ5TmFtZSI7czo1OiJJbmRpYSI7czo5OiJzdGF0ZU5hbWUiO3M6OToiS0FSTkFUQUtBIjtzOjQ6ImNpdHkiO3M6OToiQmFuZ2Fsb3JlIjtzOjM6InppcCI7czo2OiI1NjAwNjYiO3M6ODoibG9jYWxpdHkiO3M6MTA6IldoaXRlZmllbGQiO31zOjU6Imdyb3VwIjtPOjg6InN0ZENsYXNzIjo5OntzOjc6Imdyb3VwSWQiO3M6MToiMiI7czoxMjoiZ3JvdXBBZG1pbklkIjtzOjI6IjM4IjtzOjEwOiJncm91cFRpdGxlIjtzOjIyOiJIYW5nb3V0IFdpdGggSnVkaGlOaW5lIjtzOjExOiJwcm9kdWN0VHlwZSI7czoyOiIxMSI7czoxMDoiZ3JvdXBVc2VycyI7czoyOiIzOSI7czoxMDoiZ3JvdXBDb2xvciI7czozOiJyZWQiO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czo1OiJ1c2VycyI7YToxOntpOjA7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM5IjtzOjg6InVzZXJOYW1lIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNToiSnVkaGlzdGhpcmFOaW5lIjtzOjg6Imxhc3ROYW1lIjtzOjk6IlNhaG9vTmluZSI7czo1OiJlbWFpbCI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTg2MTI3NTQwNCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMDMiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo0OiJ0ZXN0IjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX1zOjU6ImFkbWluIjtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6ODoidXNlck5hbWUiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTQ6Ikp1ZGhpc3RoaXJhQ3RvIjtzOjg6Imxhc3ROYW1lIjtzOjg6IlNhaG9vQ3RvIjtzOjU6ImVtYWlsIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTEwIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NzoidGVzdGluZyI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319fQ==', 1, '1510165554-11.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(16, 'GROUP', 1, 1, NULL, 9160.00, 38, 2, '2017-11-08 19:28:05', '2017-11-08 18:29:42', 8000.00, 0.00, 0, 1160.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 0, 2, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjU2OjMwIjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDMwIjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMSI7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czoxMDoibG9jYWxpdHlJZCI7czoyOiIyNiI7czo4OiJsYW5kbWFyayI7czowOiIiO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxMToiY291bnRyeU5hbWUiO3M6NToiSW5kaWEiO3M6OToic3RhdGVOYW1lIjtzOjk6IktBUk5BVEFLQSI7czo0OiJjaXR5IjtzOjk6IkJhbmdhbG9yZSI7czozOiJ6aXAiO3M6NjoiNTYwMDY2IjtzOjg6ImxvY2FsaXR5IjtzOjEwOiJXaGl0ZWZpZWxkIjt9czo1OiJncm91cCI7Tzo4OiJzdGRDbGFzcyI6OTp7czo3OiJncm91cElkIjtzOjE6IjIiO3M6MTI6Imdyb3VwQWRtaW5JZCI7czoyOiIzOCI7czoxMDoiZ3JvdXBUaXRsZSI7czoyMjoiSGFuZ291dCBXaXRoIEp1ZGhpTmluZSI7czoxMToicHJvZHVjdFR5cGUiO3M6MjoiMTEiO3M6MTA6Imdyb3VwVXNlcnMiO3M6MjoiMzkiO3M6MTA6Imdyb3VwQ29sb3IiO3M6MzoicmVkIjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6NToidXNlcnMiO2E6MTp7aTowO086ODoic3RkQ2xhc3MiOjIxOntzOjY6InVzZXJJZCI7czoyOiIzOSI7czo4OiJ1c2VyTmFtZSI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTU6Ikp1ZGhpc3RoaXJhTmluZSI7czo4OiJsYXN0TmFtZSI7czo5OiJTYWhvb05pbmUiO3M6NToiZW1haWwiO3M6MjQ6Imp1ZGhpc2Fob28yMDA5QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk4NjEyNzU0MDQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTAzIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NDoidGVzdCI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319czo1OiJhZG1pbiI7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM4IjtzOjg6InVzZXJOYW1lIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MToiTVRJek5EVT1+NmQ1ODBiMzFjYzg4OTFjZWI5Y2MwY2E0OTBkMWRlOGEiO3M6OToiZmlyc3ROYW1lIjtzOjE0OiJKdWRoaXN0aGlyYUN0byI7czo4OiJsYXN0TmFtZSI7czo4OiJTYWhvb0N0byI7czo1OiJlbWFpbCI7czoyMDoiY3RvLnRpZGlpdEBnbWFpbC5jb20iO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6IkRPQiI7czoxMDoiMTk4Ni0wOS0xMCI7czo2OiJtb2JpbGUiO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiZmF4IjtzOjEzOiI4ODg4ODg4ODg4ODg4IjtzOjI6IklQIjtzOjQ6IjEyNzAiO3M6MTM6InVzZXJSZXNvdXJjZXMiO3M6NDoic2l0ZSI7czo4OiJ1c2VyVHlwZSI7czo1OiJidXllciI7czo2OiJzdGF0dXMiO3M6MToiMSI7czo3OiJhYm91dE1lIjtzOjc6InRlc3RpbmciO3M6MTA6ImRldmljZVR5cGUiO047czoxMToiZGV2aWNlVG9rZW4iO047czo0OiJ1ZGlkIjtOO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czoxNDoic2hpcHBpbmdVcGRhdGUiO3M6MToiMCI7czoxMzoicHJvZmlsZVVwZGF0ZSI7czoxOiIwIjt9fX0=', 0, '1510165659-44.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(17, 'GROUP', 1, 1, NULL, 20000.00, 39, 2, '2017-11-08 19:28:50', '2017-11-08 13:58:51', 20000.00, 0.00, 0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 14, 0, 'YTozOntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjU4OjA1IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDI1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO319', 0, '1510165730-48.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', ''),
(18, 'GROUP', 1, 1, NULL, 13740.00, 39, 2, '2017-11-08 19:29:42', '2017-11-08 18:29:42', 12000.00, 0.00, 0, 1740.00, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', '0000-00-00 00:00:00', 1, 16, 3, 'YTo1OntzOjc6InBkZXRhaWwiO086ODoic3RkQ2xhc3MiOjYzOntzOjk6InByb2R1Y3RJZCI7czoxOiIxIjtzOjEwOiJ1cGRhdGVUaW1lIjtzOjE5OiIyMDE3LTExLTA4IDIzOjU4OjA1IjtzOjU6InRpdGxlIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNjoic2hvcnREZXNjcmlwdGlvbiI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUyOiI8cD5TYW1zdW5nIEdhbGF4eSBKNTwvcD4NCg0KPHA+U2Ftc3VuZyBHYWxheHkgSjU8L3A+IjtzOjY6IndlaWdodCI7czo1OiIxLjAwMCI7czozOiJxdHkiO3M6MzoiNDI1IjtzOjk6Im1ldGFUaXRsZSI7czoxNzoiU2Ftc3VuZyBHYWxheHkgSjUiO3M6MTE6Im1ldGFLZXl3b3JkIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czoxNToibWV0YURlc2NyaXB0aW9uIjtzOjE3OiJTYW1zdW5nIEdhbGF4eSBKNSI7czo3OiJ0YXhhYmxlIjtzOjE6IjEiO3M6NjoibWluUXR5IjtzOjI6IjIwIjtzOjg6ImZlYXR1cmVkIjtzOjE6IjEiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NToibW9kZWwiO047czo1OiJpc05ldyI7czoxOiIxIjtzOjc6InBvcHVsYXIiO3M6MToiMSI7czo5OiJiaWdVbml0SWQiO3M6MToiMCI7czoxOToibW9iaWxlT3RoZXJGZWF0dXJlcyI7TjtzOjU6ImNvbG9yIjtzOjE6IjAiO3M6ODoibm9PZlNpbXMiO3M6MToiMCI7czoxNjoibW9iaWxlQm94Q29udGVudCI7czowOiIiO3M6MTA6InNjcmVlblNpemUiO047czoxNzoiZGlzcGxheVJlc29sdXRpb24iO047czoxMToiZGlzcGxheVR5cGUiO047czoyNToibW9iaWxlT3RoZXJDYW1lcmFGZWF0dXJlcyI7TjtzOjExOiJmcm9udENhbWVyYSI7TjtzOjE2OiJtb2JpbGVSZWFyQ2FtZXJhIjtOO3M6MTE6Im1vYmlsZUZsYXNoIjtOO3M6MTQ6Im11bHRpTGFuZ3VhZ2VzIjtOO3M6OToib3NWZXJzaW9uIjtOO3M6Mjoib3MiO047czoxMjoicGl4ZWxEZW5zaXR5IjtOO3M6MTQ6InByb2Nlc3NvclNwZWVkIjtOO3M6MTQ6InByb2Nlc3NvckNvcmVzIjtOO3M6MTQ6InByb2Nlc3NvckJyYW5kIjtOO3M6MzoicmFtIjtOO3M6MTQ6ImludGVybmFsTWVtb3J5IjtOO3M6MTY6ImV4cGFuZGFibGVNZW1vcnkiO047czoxNDoibWVtb3J5Q2FyZFNsb3QiO047czoxNToiYmF0dGVyeUNhcGFjaXR5IjtOO3M6MTE6ImJhdHRlcnlUeXBlIjtOO3M6NjoibGVuZ3RoIjtzOjU6IjE1LjAwIjtzOjU6IndpZHRoIjtzOjQ6IjguMDAiO3M6NjoiaGVpZ2h0IjtzOjQ6IjguMDAiO3M6MTE6Imxlbmd0aENsYXNzIjtzOjE6IjEiO3M6ODoidGFsa1RpbWUiO047czoxMToic3RhbmRieVRpbWUiO047czoxMjoid2FycmFudHlUeXBlIjtOO3M6MTY6IndhcnJhbnR5RHVyYXRpb24iO047czoxMToid2VpZ2h0Q2xhc3MiO3M6MToiMSI7czoxODoibW9iaWxlQ29ubmVjdGl2aXR5IjtOO3M6MTE6Imxvd2VzdFByaWNlIjtzOjg6IjIwMDAwLjAwIjtzOjEzOiJoZWlnaGVzdFByaWNlIjtzOjg6IjY5MDAwLjAwIjtzOjExOiJjYXRlZ29yeUlkMSI7czoxOiIxIjtzOjExOiJjYXRlZ29yeUlkMiI7czoyOiIxMSI7czoxMToiY2F0ZWdvcnlJZDMiO047czoxMToiYWxsQ2F0ZWdvcnkiO3M6MDoiIjtzOjEwOiJjYXRlZ29yeUlkIjtzOjI6IjExIjtzOjE0OiJpc09wdGlvbnNBZGRlZCI7czoxOiIxIjtzOjEyOiJzZXRXYXJlaG91c2UiO3M6MDoiIjtzOjEwOiJicmFuZFRpdGxlIjtzOjc6IlNhbXN1bmciO3M6NzoiYnJhbmRJZCI7czoxOiI2Ijt9czo5OiJwcmljZWluZm8iO086ODoic3RkQ2xhc3MiOjY6e3M6MTQ6InByb2R1Y3RQcmljZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToicHJpY2UiO3M6ODoiMjAwMDAuMDAiO3M6MzoicXR5IjtzOjE6IjUiO3M6MTU6InNoaXBwaW5nQ2hhcmdlcyI7czo0OiIwLjAwIjtzOjE3OiJ0aWRpaXRDb21taXNzaW9ucyI7czo0OiIwLjAwIjt9czo2OiJwaW1hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6MTQ6InByb2R1Y3RJbWFnZUlkIjtzOjE6IjEiO3M6OToicHJvZHVjdElkIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6MzQ6InNhbXN1bmctZ2FsYXh5LWo1LTYtMTQ3MjkwNjQ0Mi5qcGciO31zOjg6InNoaXBwaW5nIjtPOjg6InN0ZENsYXNzIjoxOTp7czoxNzoic2hpcHBpbmdBZGRyZXNzSWQiO3M6MToiMyI7czo2OiJ1c2VySWQiO3M6MjoiMzkiO3M6OToiY291bnRyeUlkIjtzOjI6Ijk5IjtzOjc6InN0YXRlSWQiO3M6MjoiODkiO3M6NjoiY2l0eUlkIjtzOjE6IjMiO3M6NzoiYWRkcmVzcyI7czoxOToiMkEvQy0yMzgsd2hpdGVmaWVsZCI7czo1OiJ6aXBJZCI7czozOiIxOTUiO3M6OToiY29udGFjdE5vIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjEwOiJjb250YWN0Tm8yIjtOO3M6OToiZmlyc3ROYW1lIjtzOjE1OiJKdWRoaXN0aGlyYU5pbmUiO3M6ODoibGFzdE5hbWUiO3M6OToiU2Fob29OaW5lIjtzOjEwOiJsb2NhbGl0eUlkIjtzOjI6IjI2IjtzOjg6ImxhbmRtYXJrIjtzOjA6IiI7czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjExOiJjb3VudHJ5TmFtZSI7czo1OiJJbmRpYSI7czo5OiJzdGF0ZU5hbWUiO3M6OToiS0FSTkFUQUtBIjtzOjQ6ImNpdHkiO3M6OToiQmFuZ2Fsb3JlIjtzOjM6InppcCI7czo2OiI1NjAwNjYiO3M6ODoibG9jYWxpdHkiO3M6MTA6IldoaXRlZmllbGQiO31zOjU6Imdyb3VwIjtPOjg6InN0ZENsYXNzIjo5OntzOjc6Imdyb3VwSWQiO3M6MToiMiI7czoxMjoiZ3JvdXBBZG1pbklkIjtzOjI6IjM4IjtzOjEwOiJncm91cFRpdGxlIjtzOjIyOiJIYW5nb3V0IFdpdGggSnVkaGlOaW5lIjtzOjExOiJwcm9kdWN0VHlwZSI7czoyOiIxMSI7czoxMDoiZ3JvdXBVc2VycyI7czoyOiIzOSI7czoxMDoiZ3JvdXBDb2xvciI7czozOiJyZWQiO3M6OToiYXBwU291cmNlIjtzOjM6IndlYiI7czo1OiJ1c2VycyI7YToxOntpOjA7Tzo4OiJzdGRDbGFzcyI6MjE6e3M6NjoidXNlcklkIjtzOjI6IjM5IjtzOjg6InVzZXJOYW1lIjtzOjI0OiJqdWRoaXNhaG9vMjAwOUBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NDE6Ik1USXpORFU9fjZkNTgwYjMxY2M4ODkxY2ViOWNjMGNhNDkwZDFkZThhIjtzOjk6ImZpcnN0TmFtZSI7czoxNToiSnVkaGlzdGhpcmFOaW5lIjtzOjg6Imxhc3ROYW1lIjtzOjk6IlNhaG9vTmluZSI7czo1OiJlbWFpbCI7czoyNDoianVkaGlzYWhvbzIwMDlAZ21haWwuY29tIjtzOjk6ImNvbnRhY3RObyI7czoxMDoiOTg2MTI3NTQwNCI7czozOiJET0IiO3M6MTA6IjE5ODYtMDktMDMiO3M6NjoibW9iaWxlIjtzOjEwOiI5NTU2NjQ0OTY0IjtzOjM6ImZheCI7czoxMzoiODg4ODg4ODg4ODg4OCI7czoyOiJJUCI7czo0OiIxMjcwIjtzOjEzOiJ1c2VyUmVzb3VyY2VzIjtzOjQ6InNpdGUiO3M6ODoidXNlclR5cGUiO3M6NToiYnV5ZXIiO3M6Njoic3RhdHVzIjtzOjE6IjEiO3M6NzoiYWJvdXRNZSI7czo0OiJ0ZXN0IjtzOjEwOiJkZXZpY2VUeXBlIjtOO3M6MTE6ImRldmljZVRva2VuIjtOO3M6NDoidWRpZCI7TjtzOjk6ImFwcFNvdXJjZSI7czozOiJ3ZWIiO3M6MTQ6InNoaXBwaW5nVXBkYXRlIjtzOjE6IjAiO3M6MTM6InByb2ZpbGVVcGRhdGUiO3M6MToiMCI7fX1zOjU6ImFkbWluIjtPOjg6InN0ZENsYXNzIjoyMTp7czo2OiJ1c2VySWQiO3M6MjoiMzgiO3M6ODoidXNlck5hbWUiO3M6MjA6ImN0by50aWRpaXRAZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjQxOiJNVEl6TkRVPX42ZDU4MGIzMWNjODg5MWNlYjljYzBjYTQ5MGQxZGU4YSI7czo5OiJmaXJzdE5hbWUiO3M6MTQ6Ikp1ZGhpc3RoaXJhQ3RvIjtzOjg6Imxhc3ROYW1lIjtzOjg6IlNhaG9vQ3RvIjtzOjU6ImVtYWlsIjtzOjIwOiJjdG8udGlkaWl0QGdtYWlsLmNvbSI7czo5OiJjb250YWN0Tm8iO3M6MTA6Ijk1NTY2NDQ5NjQiO3M6MzoiRE9CIjtzOjEwOiIxOTg2LTA5LTEwIjtzOjY6Im1vYmlsZSI7czoxMDoiOTU1NjY0NDk2NCI7czozOiJmYXgiO3M6MTM6Ijg4ODg4ODg4ODg4ODgiO3M6MjoiSVAiO3M6NDoiMTI3MCI7czoxMzoidXNlclJlc291cmNlcyI7czo0OiJzaXRlIjtzOjg6InVzZXJUeXBlIjtzOjU6ImJ1eWVyIjtzOjY6InN0YXR1cyI7czoxOiIxIjtzOjc6ImFib3V0TWUiO3M6NzoidGVzdGluZyI7czoxMDoiZGV2aWNlVHlwZSI7TjtzOjExOiJkZXZpY2VUb2tlbiI7TjtzOjQ6InVkaWQiO047czo5OiJhcHBTb3VyY2UiO3M6Mzoid2ViIjtzOjE0OiJzaGlwcGluZ1VwZGF0ZSI7czoxOiIwIjtzOjEzOiJwcm9maWxlVXBkYXRlIjtzOjE6IjAiO319fQ==', 0, '1510165757-13.png', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_coupon`
--

DROP TABLE IF EXISTS `order_coupon`;
CREATE TABLE IF NOT EXISTS `order_coupon` (
  `orderCouponId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `couponId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`orderCouponId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_delivered_request`
--

DROP TABLE IF EXISTS `order_delivered_request`;
CREATE TABLE IF NOT EXISTS `order_delivered_request` (
  `orderDeliveredRequestId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `logisticsId` int(11) NOT NULL,
  `deliveryStaffName` varchar(70) NOT NULL,
  `deliveryStaffContactNo` varchar(30) NOT NULL,
  `deliveryStaffEmail` varchar(50) NOT NULL,
  `receiveStaffName` varchar(50) NOT NULL,
  `receiveStaffContactNo` varchar(30) NOT NULL,
  `receiveDateTime` datetime NOT NULL,
  `photo1` varchar(255) NOT NULL,
  `photo2` varchar(255) NOT NULL,
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(30) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderDeliveredRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
CREATE TABLE IF NOT EXISTS `order_history` (
  `orderHistrory` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `historyBy` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=>User,1=>By Admin,2=>By Seller',
  `actionOwnerId` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `actionDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `awbNo` varchar(30) DEFAULT NULL,
  `trackingURL` varchar(300) DEFAULT NULL,
  `logisticsId` int(11) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`orderHistrory`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_movement_history`
--

DROP TABLE IF EXISTS `order_movement_history`;
CREATE TABLE IF NOT EXISTS `order_movement_history` (
  `orderMovementHistoyrId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `movementType` enum('pickup','upload','download','outForDelivery','delivered') NOT NULL DEFAULT 'pickup',
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `formattedAddress` varchar(350) NOT NULL,
  `deviceType` enum('android','iPhone','web') NOT NULL,
  `deviceToken` varchar(300) NOT NULL,
  `UDID` varchar(200) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`orderMovementHistoyrId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_out_for_delivery_pre_alert`
--

DROP TABLE IF EXISTS `order_out_for_delivery_pre_alert`;
CREATE TABLE IF NOT EXISTS `order_out_for_delivery_pre_alert` (
  `orderOutForDeliveryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `logisticsId` int(11) NOT NULL,
  `outForDeliveryType` enum('preAlert','outForDelivery') NOT NULL,
  `deliveryStaffName` varchar(100) NOT NULL,
  `deliveryStaffContactNo` varchar(50) NOT NULL,
  `outForDeliveryDays` int(11) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `addedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deliveryStaffEmail` varchar(150) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderOutForDeliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_review`
--

DROP TABLE IF EXISTS `order_review`;
CREATE TABLE IF NOT EXISTS `order_review` (
  `orderReviewId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment` text NOT NULL,
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`orderReviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_state`
--

DROP TABLE IF EXISTS `order_state`;
CREATE TABLE IF NOT EXISTS `order_state` (
  `orderStateId` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`orderStateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `order_state`
--

INSERT INTO `order_state` (`orderStateId`, `name`) VALUES
(1, 'Running'),
(2, 'Process'),
(3, 'Confirm'),
(4, 'Shipped'),
(5, 'Out for Delivery'),
(6, 'Delivered'),
(7, 'Canceled'),
(8, 'Order Payment Not Received'),
(0, 'Delete');

-- --------------------------------------------------------

--
-- Table structure for table `page_type_user`
--

DROP TABLE IF EXISTS `page_type_user`;
CREATE TABLE IF NOT EXISTS `page_type_user` (
  `pageTypeUserId` bigint(20) NOT NULL AUTO_INCREMENT,
  `pageType` varchar(30) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`pageTypeUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_type_user`
--

INSERT INTO `page_type_user` (`pageTypeUserId`, `pageType`, `userId`, `appSource`) VALUES
(1, 'mobile', 4, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `paymentType` enum('settlementOnDelivery','mPesa','razorpay') NOT NULL,
  `settlementOnDeliveryId` bigint(20) DEFAULT NULL,
  `mPesaId` bigint(20) DEFAULT NULL,
  `razorpayId` bigint(20) DEFAULT NULL,
  `orderType` enum('single','group') NOT NULL,
  `updateOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `orderId`, `paymentType`, `settlementOnDeliveryId`, `mPesaId`, `razorpayId`, `orderType`, `updateOn`, `addedOn`, `appSource`) VALUES
(1, 1, 'razorpay', 1, NULL, 1, 'single', '2016-09-03 14:45:04', '0000-00-00 00:00:00', 'web'),
(2, 2, 'razorpay', 2, NULL, 2, 'single', '2016-09-03 15:22:06', '0000-00-00 00:00:00', 'web'),
(3, 3, 'razorpay', NULL, NULL, 3, 'single', '2016-09-03 15:23:32', '0000-00-00 00:00:00', 'web'),
(4, 4, 'razorpay', 3, NULL, 5, 'group', '2016-09-03 15:33:52', '0000-00-00 00:00:00', 'web'),
(5, 5, 'razorpay', 4, NULL, 4, 'group', '2016-09-03 15:30:29', '0000-00-00 00:00:00', 'web'),
(6, 6, 'mPesa', NULL, 1, 6, 'group', '2016-09-03 16:13:49', '0000-00-00 00:00:00', 'web'),
(7, 7, 'razorpay', NULL, NULL, 7, 'group', '2016-09-03 15:52:40', '0000-00-00 00:00:00', 'web'),
(8, 8, 'settlementOnDelivery', 5, NULL, NULL, 'group', '2016-09-03 16:08:57', '0000-00-00 00:00:00', 'web'),
(9, 9, 'settlementOnDelivery', 6, NULL, NULL, 'group', '2016-09-03 16:11:44', '0000-00-00 00:00:00', 'web'),
(10, 10, 'razorpay', NULL, NULL, 8, 'single', '2017-11-08 17:45:29', '0000-00-00 00:00:00', 'web'),
(11, 11, 'settlementOnDelivery', 7, NULL, NULL, 'single', '2017-11-08 17:55:25', '0000-00-00 00:00:00', 'web'),
(12, 12, 'settlementOnDelivery', 8, NULL, NULL, 'group', '2017-11-08 18:13:02', '0000-00-00 00:00:00', 'web'),
(13, 13, 'settlementOnDelivery', 9, NULL, NULL, 'group', '2017-11-08 18:16:44', '0000-00-00 00:00:00', 'web'),
(14, 14, 'razorpay', NULL, NULL, 9, 'group', '2017-11-08 18:22:27', '0000-00-00 00:00:00', 'web'),
(15, 15, 'razorpay', NULL, NULL, 10, 'group', '2017-11-08 18:27:15', '0000-00-00 00:00:00', 'web'),
(16, 16, 'settlementOnDelivery', 10, NULL, NULL, 'group', '2017-11-08 18:28:14', '0000-00-00 00:00:00', 'web'),
(17, 18, 'settlementOnDelivery', 11, NULL, NULL, 'group', '2017-11-08 18:30:28', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

DROP TABLE IF EXISTS `payment_gateway`;
CREATE TABLE IF NOT EXISTS `payment_gateway` (
  `gatewayId` int(11) NOT NULL AUTO_INCREMENT,
  `gatewayTitle` varchar(100) NOT NULL,
  `gatewayName` varchar(50) NOT NULL,
  `gatewayCode` varchar(30) NOT NULL,
  `countryCode` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gatewayId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`gatewayId`, `gatewayTitle`, `gatewayName`, `gatewayCode`, `countryCode`, `status`) VALUES
(1, 'Razorpay', 'razorpay', 'payment_razorpay', 'IN', 1),
(2, 'EBS', 'ebs', 'ebs', 'IN', 0),
(3, 'mPesa', 'mpesa', 'mpesa', 'IN', 1),
(4, 'MPesa', 'mpesa', 'mpesa', 'KE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_config`
--

DROP TABLE IF EXISTS `payment_gateway_config`;
CREATE TABLE IF NOT EXISTS `payment_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `endPoint` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ipnEndPoint` varchar(255) NOT NULL,
  `gatewayId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateway_config`
--

INSERT INTO `payment_gateway_config` (`id`, `type`, `userName`, `password`, `signature`, `endPoint`, `url`, `host`, `ipnEndPoint`, `gatewayId`) VALUES
(1, 'sandbox', 'rzp_test_81HMGNEQv7RUfA', '2UZbZIk7Kpwyirap8Cu4S4Tj', '', 'https://checkout.razorpay.com/v1/checkout-new.js', '', '', '', 1),
(2, 'live', '', '', '', 'https://checkout.razorpay.com/v1/checkout.js', '', '', '', 1),
(3, 'sandbox', '0010000166', '', '', 'http://182.19.20.182:81/mcommPg/paymentGateway/pgservlet', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` bigint(20) NOT NULL AUTO_INCREMENT,
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `shortDescription` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `weight` float(5,3) NOT NULL,
  `qty` int(11) NOT NULL,
  `metaTitle` varchar(255) NOT NULL,
  `metaKeyword` tinytext NOT NULL,
  `metaDescription` tinytext NOT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Do the product is taxabel product or not0=>No,1=>yes',
  `minQty` int(11) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `model` varchar(25) DEFAULT NULL,
  `isNew` tinyint(1) NOT NULL DEFAULT '0',
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `bigUnitId` int(11) NOT NULL,
  `mobileOtherFeatures` text,
  `color` tinyint(1) NOT NULL,
  `noOfSims` tinyint(1) NOT NULL,
  `mobileBoxContent` varchar(250) NOT NULL,
  `screenSize` varchar(15) DEFAULT NULL,
  `displayResolution` tinyint(4) DEFAULT NULL,
  `displayType` varchar(50) DEFAULT NULL,
  `mobileOtherCameraFeatures` varchar(1000) DEFAULT NULL,
  `frontCamera` varchar(15) DEFAULT NULL,
  `mobileRearCamera` varchar(15) DEFAULT NULL,
  `mobileFlash` varchar(5) DEFAULT NULL,
  `multiLanguages` varchar(5) DEFAULT NULL,
  `osVersion` varchar(30) DEFAULT NULL,
  `os` tinyint(4) DEFAULT NULL,
  `pixelDensity` varchar(250) DEFAULT NULL,
  `processorSpeed` varchar(20) DEFAULT NULL,
  `processorCores` tinyint(1) DEFAULT NULL,
  `processorBrand` tinyint(1) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  `internalMemory` varchar(20) DEFAULT NULL,
  `expandableMemory` varchar(20) DEFAULT NULL,
  `memoryCardSlot` varchar(20) DEFAULT NULL,
  `batteryCapacity` varchar(30) DEFAULT NULL,
  `batteryType` tinyint(4) DEFAULT NULL,
  `length` float(4,2) DEFAULT NULL,
  `width` float(4,2) DEFAULT NULL,
  `height` float(4,2) DEFAULT NULL,
  `lengthClass` int(11) DEFAULT NULL,
  `talkTime` varchar(50) DEFAULT NULL,
  `standbyTime` varchar(50) DEFAULT NULL,
  `warrantyType` varchar(50) DEFAULT NULL,
  `warrantyDuration` varchar(50) DEFAULT NULL,
  `weightClass` tinyint(1) NOT NULL,
  `mobileConnectivity` varchar(50) DEFAULT NULL,
  `lowestPrice` float(10,2) NOT NULL,
  `heighestPrice` float(10,2) NOT NULL,
  `categoryId1` int(11) NOT NULL,
  `categoryId2` int(11) NOT NULL,
  `categoryId3` int(11) DEFAULT NULL,
  `allCategory` text NOT NULL,
  `categoryId` int(11) NOT NULL,
  `isOptionsAdded` int(1) NOT NULL DEFAULT '0',
  `setWarehouse` text NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `updateTime`, `title`, `shortDescription`, `description`, `weight`, `qty`, `metaTitle`, `metaKeyword`, `metaDescription`, `taxable`, `minQty`, `featured`, `status`, `model`, `isNew`, `popular`, `bigUnitId`, `mobileOtherFeatures`, `color`, `noOfSims`, `mobileBoxContent`, `screenSize`, `displayResolution`, `displayType`, `mobileOtherCameraFeatures`, `frontCamera`, `mobileRearCamera`, `mobileFlash`, `multiLanguages`, `osVersion`, `os`, `pixelDensity`, `processorSpeed`, `processorCores`, `processorBrand`, `ram`, `internalMemory`, `expandableMemory`, `memoryCardSlot`, `batteryCapacity`, `batteryType`, `length`, `width`, `height`, `lengthClass`, `talkTime`, `standbyTime`, `warrantyType`, `warrantyDuration`, `weightClass`, `mobileConnectivity`, `lowestPrice`, `heighestPrice`, `categoryId1`, `categoryId2`, `categoryId3`, `allCategory`, `categoryId`, `isOptionsAdded`, `setWarehouse`) VALUES
(1, '2017-11-08 18:28:05', 'Samsung Galaxy J5', 'Samsung Galaxy J5', '<p>Samsung Galaxy J5</p>\r\n\r\n<p>Samsung Galaxy J5</p>', 1.000, 425, 'Samsung Galaxy J5', 'Samsung Galaxy J5', 'Samsung Galaxy J5', 1, 20, 1, 1, NULL, 1, 1, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.00, 8.00, 8.00, 1, NULL, NULL, NULL, NULL, 1, NULL, 20000.00, 69000.00, 1, 11, NULL, '', 11, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE IF NOT EXISTS `product_brand` (
  `productBrandId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `brandId` int(11) NOT NULL,
  PRIMARY KEY (`productBrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`productBrandId`, `productId`, `brandId`) VALUES
(1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `productCategoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`productCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`productCategoryId`, `productId`, `categoryId`) VALUES
(1, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_deal`
--

DROP TABLE IF EXISTS `product_deal`;
CREATE TABLE IF NOT EXISTS `product_deal` (
  `productDealId` bigint(11) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`productDealId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `productImageId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`productImageId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`productImageId`, `productId`, `image`) VALUES
(1, 1, 'samsung-galaxy-j5-6-1472906442.jpg'),
(2, 1, 'samsung-galaxy-j5-6-14729064421.jpg'),
(3, 1, 'samsung-galaxy-j5-6-14729064422.jpg'),
(4, 1, 'samsung-galaxy-j5-6-14729064423.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
CREATE TABLE IF NOT EXISTS `product_options` (
  `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `rootCatId` varchar(60) NOT NULL,
  `sequence` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `type` varchar(24) NOT NULL DEFAULT 'text',
  `option_data` longtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `show_price` int(1) NOT NULL DEFAULT '1',
  `top` int(1) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `slug`, `rootCatId`, `sequence`, `name`, `display_name`, `type`, `option_data`, `required`, `show_price`, `top`, `status`) VALUES
(1, 'sarees-type-type-124390', '4', 1, 'Sarees Type', 'Type', 'checkbox', 'Arani Pattu\n,Assam,Silk\n,Balarampuram\n,Baluchari\n,Banarasi\n,Bandhani\n,Bandhej\n,Bapta\n,Berhampuri\n,Bhagalpuri\n,Bollywood\n,Bomkai\n,Chanderi\n,Chettinadu\n,Chinnalapattu\n,Coimbatore\n,Daily Wear\n,Dhaniakhali\n,Dharmavaram\n,Fashion\n,Gadwal\n,Gajee\n,Ganga,Jamuna\n,Garad\n,Guntur\n,Hand Batik\n,Ikkat\n,Ilkal\n,Jamdani\n,Kanjivaram\n,Kantha\n,Katha\n,Khandua\n,Kinkhab\n,Konrad\n,Kosa\n,Kota Doria\n,Kumbakonam\n,Lace\n,Lehenga Saree\n,Leheria\n,Lucknow Chikankari\n,Lugade\n,Madhubani\n,Madurai\n,Maheshwari\n,Mangalagiri\n,Manipuri\n,Mattha\n,Meghalaya\n,Molakalmuru\n,Mooga\n,Mundum Neriyathum\n,Murshidabad\n,Muslin\n,Mysore\n,Narayanpet\n,Paithani\n,Patola\n,Phulia\n,Phulkari\n,Pochampally\n,Puttapaka\n,Rajkot\n,Rajshahi\n,Rasipuram\n,Running,Shoes\n,Salwar Suit Dupatta Material\n,Sambalpuri\n,Semi-stitched Salwar Suit\n,Shalu\n,Shantipur\n,Sungudi\n,Tanchoi\n,Tangail\n,Tant\n,Thanjavur\n,That\n,Thirubuvanam\n,Venkatagiri', 1, 0, 0, '1'),
(3, 'fabric-common-all-518338', '4', 2, 'Common All', 'Fabric', 'checkbox', 'Jute,Linen,Mohair,Polyester,Silk,Rayon,Velvet,Venise,Wool,Denim,Chino,Canvas,Batic,100% Genuine Leather\n,Acrylic Wool\n,Air Tex\n,Art Silk\n,Banarasi Silk\n,Brasso\n,Brasso Fabric\n,Brocade\n,Cambric\n,Chanderi\n,Chiffon\n,Cotton\n,Cotton Linen Blend\n,Cotton Lycra Blend\n,Cotton Slub\n,Crepe\n,Damask\n,Denim\n,Dupion Silk\n,Flannel\n,Georgette\n,Glass Tissue\n,Hoisery\n,Jacquard\n,Jute\n,Khadi\n,kora/ yak wool\n,Kota\n,Kota Air Tex Blend\n,Kota Cotton\n,Lace\n,Linen\n,Lycra\n,Marble Padding\n,Mettalic Yarn\n,Modal\n,Muslin\n,Net\n,Nylon\n,Nylon Wool Blend\n,Organza\n,Poly Silk\n,Polycotton\n,Polyester\n,Printed Silk\n,PU\n,Pure Chiffon\n,Pure Crepe\n,Pure Georgette\n,Pure Silk\n,Raw Silk\n,Rayon\n,Satin\n,Sequined Fabric\n,Shantung\n,Shimmer Fabric\n,Silk\n,Silk Cotton Blend\n,Silk Linen Blend\n,Silk Wool Blend\n,Suede\n,Swiss Dot\n,Synthetic\n,Synthetic Chiffon\n,Synthetic Crepe\n,Synthetic Fabric\n,Synthetic Georgette\n,Taffeta\n,Tissue\n,Tissue Silk\n,Tussar Silk\n,Velvet\n,Viscose\n,Voile\n,Worsted Wool', 0, 0, 0, '1'),
(4, 'fit-common-all-976594', '4', 3, 'Common All', 'Fit', 'checkbox', 'Slim fit, Tailored fit,Athletic fit, traditional fit, Regular fit, Full fit', 0, 0, 0, '1'),
(5, 'size-men-all-910777', '4', 4, 'Men All', 'Size', 'checkbox', 'XS,Small,Medium,Large,XL,XXL,3XL,4XL', 0, 0, 0, '1'),
(6, 'common-all-color-604371', '4', 5, 'Common All', 'Color', 'checkbox', 'AliceBlue||#F0F8FF,AntiqueWhite||#FAEBD7,Aqua||#00FFFF,Aquamarine||#7FFFD4,Azure||#F0FFFF,Beige||#F5F5DC,Bisque||#FFE4C4,Black||#000000,BlanchedAlmond||#FFEBCD,Blue||#0000FF,BlueViolet||#8A2BE2,Brown||#A52A2A,BurlyWood||#DEB887,CadetBlue||#5F9EA0,Chartreuse||#7FFF00,Chocolate||#D2691E,Coral||#FF7F50,CornflowerBlue||#6495ED,Cornsilk||#FFF8DC,Crimson||#DC143C,Cyan||#00FFFF,DarkBlue||#00008B,DarkCyan||#008B8B,DarkGoldenRod||#B8860B,DarkGray||#A9A9A9,DarkGreen||#006400,DarkKhaki||#BDB76B,DarkMagenta||#8B008B,DarkOliveGreen||#556B2F,Darkorange||#FF8C00,DarkOrchid||#9932CC,DarkRed||#8B0000,DarkSalmon||#E9967A,DarkSeaGreen||#8FBC8F,DarkSlateBlue||#483D8B,DarkSlateGray||#2F4F4F,DarkTurquoise||#00CED1,DarkViolet||#9400D3,DeepPink||#FF1493,DeepSkyBlue||#00BFFF,DimGray||#696969,DodgerBlue||#1E90FF,FireBrick||#B22222,FloralWhite||#FFFAF0,ForestGreen||#228B22,Fuchsia||#FF00FF,Gainsboro||#DCDCDC,GhostWhite||#F8F8FF,Gold||#FFD700,GoldenRod||#DAA520,Gray||#808080,Green||#008000,GreenYellow||#ADFF2F,HoneyDew||#F0FFF0,HotPink||#FF69B4,IndianRed||#CD5C5C,Indigo||#4B0082,Ivory||#FFFFF0,Khaki||#F0E68C,Lavender||#E6E6FA,LavenderBlush||#FFF0F5,LawnGreen||#7CFC00,LemonChiffon||#FFFACD,LightBlue||#ADD8E6,LightCoral||#F08080,LightCyan||#E0FFFF,LightGoldenRodYellow||#FAFAD2,LightGrey||#D3D3D3,LightGreen||#90EE90,LightPink||#FFB6C1,LightSalmon||#FFA07A,LightSeaGreen||#20B2AA,LightSkyBlue||#87CEFA,LightSlateBlue||#8470FF,LightSlateGray||#778899,LightSteelBlue||#B0C4DE,LightYellow||#FFFFE0,Lime||#00FF00,LimeGreen||#32CD32,Linen||#FAF0E6,Magenta||#FF00FF,Maroon||#800000,MediumAquaMarine||#66CDAA,MediumBlue||#0000CD,MediumOrchid||BA55D3"&gt;#BA55D3,MediumPurple||#9370D8,MediumSeaGreen||#3CB371,MediumSlateBlue||#7B68EE,MediumSpringGreen||#00FA9A,MediumTurquoise||#48D1CC,MediumVioletRed||#C71585,MidnightBlue||#191970,MintCream||#F5FFFA,MistyRose||#FFE4E1,Moccasin||#FFE4B5,NavajoWhite||#FFDEAD,Navy||#000080,OldLace||#FDF5E6,Olive||#808000,OliveDrab||#6B8E23,Orange||#FFA500,OrangeRed||#FF4500,Orchid||#DA70D6,PaleGoldenRod||#EEE8AA,PaleGreen||#98FB98,PaleTurquoise||#AFEEEE,PaleVioletRed||#D87093,PapayaWhip||#FFEFD5,PeachPuff||#FFDAB9,Peru||#CD853F,Pink||#FFC0CB,Plum||#DDA0DD,PowderBlue||#B0E0E6,Purple||#800080,Red||#FF0000,RosyBrown||#BC8F8F,RoyalBlue||#4169E1,SaddleBrown||#8B4513,Salmon||#FA8072,SandyBrown||#F4A460,SeaGreen||#2E8B57,SeaShell||#FFF5EE,Sienna||#A0522D,Silver||#C0C0C0,SkyBlue||#87CEEB,SlateBlue||#6A5ACD,SlateGray||#708090,Snow||#FFFAFA,SpringGreen||#00FF7F,SteelBlue||#4682B4,Tan||#D2B48C,Teal||#008080,Thistle||#D8BFD8,Tomato||#FF6347,Turquoise||#40E0D0,Violet||#EE82EE,VioletRed||#D02090,Wheat||#F5DEB3,White||#FFFFFF,WhiteSmoke||#F5F5F5,Yellow||#FFFF00,YellowGreen||#9ACD32', 0, 0, 0, '1'),
(7, 'package-content-package-content-179618', '4', 0, 'Package Content', 'Package Content', 'text', '', 0, 0, 0, '1'),
(8, 'men-woman-style-175213', '4', 6, 'Men & Woman', 'Style', 'checkbox', 'Bohemian,Solid,Arty,Chic,Normal,Classic,Formal,Exotic,Flamboyant,Glamorous,Romantic,Sexy,Sophisticated,Western,Traditional,Preppy,Punk,Tomboy,Rocker,Goth', 0, 0, 0, '1'),
(9, 'woman-saree-pattern-317570', '4', 7, 'Woman Saree', 'Pattern', 'checkbox', 'Animal Print\n,Applique\n,Argyle\n,Checkered\n,Chevron\n,Embellished\n,Embriodered\n,Embroidered\n,Floral Print\n,Geometric,Print\n,Graphic Print\n,Hand,Painted\n,Harringbone\n,Houndstooth\n,Paisley\n,Plain\n,Polka Print\n,Printed\n,Self Design\n,Solid\n,Striped\n,Woven', 0, 0, 0, '1'),
(10, 'common-all-occasion-890741', '4', 8, 'Common All', 'Occasion', 'checkbox', 'Party,Marriage,Sports,Tours', 0, 0, 0, '1'),
(11, 'common-all-fabric-care-803357', '4', 2, 'Common All', 'Fabric Care', 'checkbox', 'Wash, Hand Wash, Plain Water Wash', 0, 0, 0, '1'),
(12, 'multiple-option-for-box-content-box-content_762916', '', 1, 'Mobile - Box Content', 'Box Content', 'checkbox', 'Handset,Charger,Warranty Card,USB Cable,User Manual,Ear phones,3Juice Jar,Plastic Spoon', 1, 0, 0, '1'),
(13, 'model-data-model_109723', '', 0, 'Common all - Model Data', 'Model', 'text', '', 1, 0, 0, '1'),
(14, 'no-of-sims-no-of-sims_357400', '', 1, 'Mobile - No Of SIMs', 'No Of SIMs', 'dropdown', '1,2,3,4', 1, 0, 0, '1'),
(15, 'color-data-color_764969', '', 1, 'Common - Color Data', 'Color', 'dropdown', 'Red,Blue,Gray,Orange,Black,White,Silver', 0, 0, 0, '1'),
(16, 'other-features-other-features_729721', '', 1, ' Mobile - Other Features', ' Other Features', 'textarea', '', 0, 0, 0, '1'),
(17, 'screen-size-screen-size_773537', '', 0, 'Mobile - Screen Size', 'Screen Size', 'text', '', 1, 0, 0, '1'),
(18, 'display-resolution-display-resolution_854038', '', 1, 'Mobile - Display Resolution', 'Display Resolution', 'text', '', 0, 0, 0, '1'),
(19, 'display-type-display-type_475437', '', 0, 'Electronics - Display Type', 'Display Type', 'text', '', 0, 0, 0, '1'),
(20, 'pixel-density-pixel-density_479901', '', 0, 'Electronis - Pixel Density', 'Pixel Density', 'text', '', 0, 0, 0, '1'),
(21, 'operating-system-operating-system_666276', '', 0, 'Electronics - Operating System', 'Operating System', 'dropdown', 'Android,iPhone,Blackberry,Windows', 1, 0, 0, '1'),
(22, 'os-version-os-version_534750', '', 0, 'Electronics - OS Version', 'OS Version', 'text', '', 1, 0, 0, '1'),
(23, 'multi-languages-supported-multi-languages-supported_462608', '', 0, 'Electronics - Multi-languages Supported', 'Multi-languages Supported', 'radio', 'Yes,No', 0, 0, 0, '1'),
(24, 'camera-rear-camera-rear-camera_995194', '', 1, 'Electronics - Rear Camera', 'Rear Camera', 'dropdown', '1.3 MP,2 MP,3 MP,4 MP,5 MP,8 MP,10 MP,12 MP,13 MP,14 MP,15 MP', 1, 0, 0, '1'),
(25, 'electronics-front-camera-front-camera_749532', '', 1, 'Electronics - Front Camera', 'Front Camera', 'dropdown', '1.3 MP,2 MP,3 MP,4 MP,5 MP,8 MP,10 MP,12 MP,13 MP,14 MP,15 MP', 0, 0, 0, '1'),
(26, 'electronics-flash-flash_582196', '', 0, 'Electronics - Flash', 'Flash', 'radio', 'Yes,No', 0, 0, 0, '1'),
(27, 'electronics-other-camera-features-other-camera-features_669463', '', 0, 'Electronics - Other Camera Features', 'Other Camera Features', 'text', '', 0, 0, 0, '1'),
(28, 'electronics-connectivity-connectivity_153757', '', 0, 'Electronics - Connectivity', 'Connectivity', 'checkbox', 'GSM,CDMA,3G/WCDMA,4G/LTE', 1, 0, 0, '1'),
(29, 'electronics-processor-speed-processor-speed_617603', '', 0, 'Electronics -  Processor Speed', ' Processor Speed', 'text', '', 0, 0, 0, '1'),
(30, 'electronics-processor-cores-processor-cores_110065', '', 0, 'Electronics - Processor Cores', 'Processor Cores', 'dropdown', 'Duo Core,Celeron,Xeon', 1, 0, 0, '1'),
(31, 'electronics-processor-brand-processor-brand_420413', '', 1, 'Electronics - Processor Brand', 'Processor Brand', 'dropdown', 'Asus,Intel,AMD', 0, 0, 0, '1'),
(32, 'electronics-ram-ram_784750', '', 1, 'Electronics - Ram', 'Ram', 'dropdown', '256 MB,512 MB,1 GB,2 GB,4 GB,8 GB,10 GB,12,GB,16 GB', 1, 0, 0, '1'),
(33, 'mobile-pc-internal-memory-internal-memory_222575', '', 0, 'Mobile - PC -  Internal Memory', 'Internal Memory', 'dropdown', '2 GB,4 GB,8 GB,16 GB,32 GB,64 GB,128 GB,250 GB,512 GB,1 TB,2 TB', 1, 0, 0, '1'),
(34, 'mobile-pc-expandable-memory-expandable-memory_947459', '', 1, 'Mobile - PC - Expandable Memory', 'Expandable Memory', 'dropdown', '4 GB,8 GB,16 GB,32 GB,64 GB,128 GB,250 GB,512 GB,1 TB,2 TB', 1, 0, 0, '1'),
(35, 'mobile-pc-memory-card-slot-memory-card-slot_941637', '', 0, 'Mobile - PC - Memory Card Slot', 'Memory Card Slot', 'text', '', 0, 0, 0, '1'),
(36, 'mobile-pc-battery-capacity-battery-capacity_393776', '', 0, 'Mobile - PC - Battery Capacity', 'Battery Capacity', 'text', '', 0, 0, 0, '1'),
(37, 'mobile-pc-battery-type-battery-type_270857', '', 0, 'Mobile - PC - Battery Type', 'Battery Type', 'dropdown', 'Intex,Micromax,Samsung,LG,Karbon,Gionee,Lenovo,BlackBerry,Huawei,Sagetel', 0, 0, 0, '1'),
(38, 'mobile-talk-time-talk-time_559520', '', 1, 'Mobile - Talk Time', 'Talk Time', 'text', '', 1, 0, 0, '1'),
(39, 'mobile-standby-time-standby-time_700000', '', 0, 'Mobile - Standby Time', 'Standby Time', 'text', '', 1, 0, 0, '1'),
(40, 'mobile-warranty-type-warranty-type_106616', '', 0, 'Mobile - Warranty Type', 'Warranty Type', 'text', '', 0, 0, 0, '1'),
(41, 'mobile-warranty-duration-in-month-warranty-duration-in-month_308100', '', 0, 'Mobile -  Warranty Duration(In Month)', 'Warranty Duration(In Month)', 'dropdown', '6 Months,12 Months,18 Months,24 Months', 0, 0, 0, '1'),
(42, 'material-cookware-cooking-utensils_354367', '', 0, 'Material', 'Cookware-Cooking Utensils', 'dropdown', 'Stainless Steel,Aluminium,Non Stick,Acrylic', 1, 0, 0, '1'),
(43, 'capacity-container-or-carry-capacity_155795', '', 0, 'Capacity Container or Carry', 'Capacity', 'text', '', 0, 0, 0, '1'),
(44, 'no-of-units-no-of-units_255436', '', 0, 'No of Units', 'No of Units', 'dropdown', 'Single,Double,Triple', 0, 0, 0, '1'),
(45, 'dishwasher-safe-dishwasher-safe_128106', '', 0, 'Dishwasher Safe', 'Dishwasher Safe', 'checkbox', 'Yes,No', 0, 0, 0, '1'),
(46, 'service-type-service-type_356329', '', 0, 'Service Type', 'Service Type', 'text', '', 0, 0, 0, '1'),
(47, 'power-power_408151', '', 0, 'Power', 'Power', 'text', '', 0, 0, 0, '1'),
(48, 'power-requirement-power-requirement_444386', '', 0, 'Power Requirement', 'Power Requirement', 'text', '', 0, 0, 0, '1'),
(49, 'power-indicator-power-indicator_745348', '', 0, 'Power Indicator', 'Power Indicator', 'radio', 'Yes,No', 0, 0, 0, '1'),
(50, 'processing-bowl-processing-bowl_651522', '', 0, 'Processing Bowl', 'Processing Bowl', 'text', '', 0, 0, 0, '1'),
(51, 'kneading-kneading_959232', '', 0, 'Kneading', 'Kneading', 'radio', 'Yes,No', 0, 0, 0, '1'),
(52, 'grating-grating_479402', '', 0, 'Grating', 'Grating', 'text', 'Yes,No', 0, 0, 0, '1'),
(53, 'juicing-juicing_980618', '', 0, 'Juicing', 'Juicing', 'radio', 'Yes,No', 0, 0, 0, '1'),
(54, 'dry-grinding-dry-grinding_676383', '', 0, 'Dry Grinding', 'Dry Grinding', 'radio', 'Yes,No', 0, 0, 0, '1'),
(55, 'wet-grinding-wet-grinding_292330', '', 0, 'Wet Grinding', 'Wet Grinding', 'radio', 'Yes,No', 0, 0, 0, '1'),
(56, 'grinding-grinding_512087', '', 0, 'Grinding', 'Grinding', 'radio', 'Yes,No', 0, 0, 0, '1'),
(57, 'processing-bowl-material-processing-bowl-material_916234', '', 0, 'Processing Bowl Material', 'Processing Bowl Material', 'text', '', 0, 0, 0, '1'),
(58, 'speed-settings-speed-settings_194450', '', 0, 'Speed Settings', 'Speed Settings', 'text', '', 0, 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

DROP TABLE IF EXISTS `product_option_values`;
CREATE TABLE IF NOT EXISTS `product_option_values` (
  `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_id` int(9) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `sequence` int(11) NOT NULL,
  `productId` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_option_values`
--

INSERT INTO `product_option_values` (`id`, `option_id`, `name`, `value`, `price`, `weight`, `sequence`, `productId`) VALUES
(1, 12, 'Box Content', 'Handset', '0.00', '0.00', 1, 1),
(2, 12, 'Box Content', 'Charger', '0.00', '0.00', 2, 1),
(3, 12, 'Box Content', 'Warranty Card', '0.00', '0.00', 3, 1),
(4, 12, 'Box Content', 'USB Cable', '0.00', '0.00', 4, 1),
(5, 12, 'Box Content', 'User Manual', '0.00', '0.00', 5, 1),
(6, 12, 'Box Content', 'Ear phones', '0.00', '0.00', 6, 1),
(7, 13, 'Model', 'Galaxy J5', '0.00', '0.00', 1, 1),
(8, 14, 'No Of SIMs', '2', '0.00', '0.00', 1, 1),
(9, 15, 'Color', 'Blue', '0.00', '0.00', 1, 1),
(10, 16, ' Other Features', 'No Features', '0.00', '0.00', 1, 1),
(11, 17, 'Screen Size', '5.5', '0.00', '0.00', 1, 1),
(12, 18, 'Display Resolution', '1028', '0.00', '0.00', 1, 1),
(13, 19, 'Display Type', '', '0.00', '0.00', 1, 1),
(14, 20, 'Pixel Density', '', '0.00', '0.00', 1, 1),
(15, 21, 'Operating System', 'Android', '0.00', '0.00', 1, 1),
(16, 22, 'OS Version', '5.1', '0.00', '0.00', 1, 1),
(17, 23, 'Multi-languages Supported', 'Yes', '0.00', '0.00', 1, 1),
(18, 24, 'Rear Camera', '8 MP', '0.00', '0.00', 1, 1),
(19, 25, 'Front Camera', '5 MP', '0.00', '0.00', 1, 1),
(20, 26, 'Flash', 'Yes', '0.00', '0.00', 1, 1),
(21, 27, 'Other Camera Features', '', '0.00', '0.00', 1, 1),
(22, 28, 'Connectivity', 'CDMA', '0.00', '0.00', 1, 1),
(23, 28, 'Connectivity', '3G/WCDMA', '0.00', '0.00', 2, 1),
(24, 28, 'Connectivity', '4G/LTE', '0.00', '0.00', 3, 1),
(25, 29, ' Processor Speed', '1.2', '0.00', '0.00', 1, 1),
(26, 30, 'Processor Cores', 'Duo Core', '0.00', '0.00', 1, 1),
(27, 31, 'Processor Brand', 'Asus', '0.00', '0.00', 1, 1),
(28, 32, 'Ram', '1 GB', '0.00', '0.00', 1, 1),
(29, 33, 'Internal Memory', '8 GB', '0.00', '0.00', 1, 1),
(30, 34, 'Expandable Memory', '32 GB', '0.00', '0.00', 1, 1),
(31, 35, 'Memory Card Slot', '1', '0.00', '0.00', 1, 1),
(32, 36, 'Battery Capacity', '2700 mAh', '0.00', '0.00', 1, 1),
(33, 37, 'Battery Type', 'Samsung', '0.00', '0.00', 1, 1),
(34, 38, 'Talk Time', '200 hrs', '0.00', '0.00', 1, 1),
(35, 39, 'Standby Time', '500 hrs', '0.00', '0.00', 1, 1),
(36, 40, 'Warranty Type', 'fix', '0.00', '0.00', 1, 1),
(37, 41, 'Warranty Duration(In Month)', '12 Months', '0.00', '0.00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
CREATE TABLE IF NOT EXISTS `product_price` (
  `productPriceId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `price` float(15,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `shippingCharges` float(10,2) NOT NULL,
  `tidiitCommissions` float(12,2) NOT NULL,
  PRIMARY KEY (`productPriceId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`productPriceId`, `productId`, `price`, `qty`, `shippingCharges`, `tidiitCommissions`) VALUES
(1, 1, 20000.00, 5, 0.00, 0.00),
(2, 1, 37000.00, 10, 0.00, 0.00),
(3, 1, 53000.00, 15, 0.00, 0.00),
(4, 1, 69000.00, 20, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_seller`
--

DROP TABLE IF EXISTS `product_seller`;
CREATE TABLE IF NOT EXISTS `product_seller` (
  `productSellerId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`productSellerId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_seller`
--

INSERT INTO `product_seller` (`productSellerId`, `productId`, `userId`) VALUES
(1, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE IF NOT EXISTS `product_tag` (
  `productTagId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `tag` varchar(50) NOT NULL,
  PRIMARY KEY (`productTagId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`productTagId`, `productId`, `tag`) VALUES
(1, 1, 'Samsung Galaxy J5');

-- --------------------------------------------------------

--
-- Table structure for table `product_type_user`
--

DROP TABLE IF EXISTS `product_type_user`;
CREATE TABLE IF NOT EXISTS `product_type_user` (
  `productTypeUser` bigint(20) NOT NULL AUTO_INCREMENT,
  `productTypeId` int(11) NOT NULL,
  `userIdStr` text NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`productTypeUser`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type_user`
--

INSERT INTO `product_type_user` (`productTypeUser`, `productTypeId`, `userIdStr`, `appSource`) VALUES
(1, 11, '38,39', 'web'),
(2, 12, '38,39', 'web'),
(3, 13, '38,39', 'web'),
(4, 24, '38,39', 'web'),
(5, 23, '38,39', 'web'),
(6, 25, '38,39', 'web'),
(7, 31, '38,39', 'web'),
(8, 32, '38,39', 'web'),
(9, 26, '38,39', 'web'),
(10, 27, '38,39', 'web'),
(11, 28, '38,39', 'web'),
(12, 29, '38,39', 'web'),
(13, 30, '38,39', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

DROP TABLE IF EXISTS `product_views`;
CREATE TABLE IF NOT EXISTS `product_views` (
  `productViewsId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) NOT NULL,
  `noOfViews` bigint(20) NOT NULL,
  `lastViewsDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`productViewsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_views`
--

INSERT INTO `product_views` (`productViewsId`, `productId`, `noOfViews`, `lastViewsDateTime`, `appSource`) VALUES
(1, 1, 19, '2017-11-08 18:27:25', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `product_view_page`
--

DROP TABLE IF EXISTS `product_view_page`;
CREATE TABLE IF NOT EXISTS `product_view_page` (
  `productViewTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `templateFileName` varchar(50) NOT NULL,
  `templateName` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`productViewTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_view_page`
--

INSERT INTO `product_view_page` (`productViewTemplateID`, `templateFileName`, `templateName`, `status`) VALUES
(1, 'mobile.php', 'Mobile', 1),
(2, 'laptop_desktp', 'Laptop & Deskop', 1),
(3, 'clothes.php', 'Clothes', 1),
(4, 'cosmetic.php', 'Cosmetic', 1),
(5, 'general-fast-moving-consumer-goods.php', 'General Fast Moving Consumer Goods', 1),
(6, 'pharmaceuticals.php', 'Pharmaceuticals', 1),
(7, 'hardwares-and-home-building.php', 'Hardwares and Home Building', 1),
(8, 'food-and-grocery.php', 'Food and Grocery', 1);

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_message`
--

DROP TABLE IF EXISTS `push_notification_message`;
CREATE TABLE IF NOT EXISTS `push_notification_message` (
  `pushNotificationMessageId` bigint(20) NOT NULL AUTO_INCREMENT,
  `messsage` varchar(500) NOT NULL,
  `registrationNo` varchar(150) NOT NULL,
  `deviceType` enum('email','ios','android','windows') NOT NULL DEFAULT 'email',
  `sendTime` datetime NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pushNotificationMessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `razorpay`
--

DROP TABLE IF EXISTS `razorpay`;
CREATE TABLE IF NOT EXISTS `razorpay` (
  `razorpayId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `orderIds` varchar(150) NOT NULL,
  `razorpayPaymentId` varchar(100) NOT NULL,
  `IP` varchar(25) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') NOT NULL DEFAULT 'web',
  `deviceToken` varchar(500) DEFAULT NULL,
  `UDID` varchar(500) DEFAULT NULL,
  `addedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`razorpayId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `razorpay`
--

INSERT INTO `razorpay` (`razorpayId`, `userId`, `orderIds`, `razorpayPaymentId`, `IP`, `latitude`, `longitude`, `appSource`, `deviceToken`, `UDID`, `addedTime`) VALUES
(1, 39, 'YToxOntpOjA7czoxOiIxIjt9', 'pay_6ESSYHuwSOQEk0', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 14:44:59'),
(2, 39, 'YToxOntpOjA7czoxOiIyIjt9', 'pay_6ET5eRnbzlVjSI', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:22:01'),
(3, 39, 'YToxOntpOjA7czoxOiIzIjt9', 'pay_6ET7BrJzJ0RAbA', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:23:27'),
(4, 38, 'YToxOntpOjA7czoxOiI1Ijt9', 'pay_6ETE7Huj7Qb82w', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:30:01'),
(5, 39, 'YToxOntpOjA7czoxOiI0Ijt9', 'pay_6ETHsD8vz3HEdO', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:33:33'),
(6, 39, 'YToxOntpOjA7czoxOiI2Ijt9', 'pay_6ETX6sWPewjrU6', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:47:59'),
(7, 38, 'YToxOntpOjA7czoxOiI3Ijt9', 'pay_6ETai3IYfSW6Os', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2016-09-03 15:51:23'),
(8, 39, 'YToxOntpOjA7czoyOiIxMCI7fQ==', 'pay_8z3ltHr0XH3tJv', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2017-11-08 17:45:27'),
(9, 38, 'YToxOntpOjA7czoyOiIxNCI7fQ==', 'pay_8z4Of3abyyfuRe', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2017-11-08 18:22:10'),
(10, 39, 'YToxOntpOjA7czoyOiIxNSI7fQ==', 'pay_8z4TEjcvpS8IvW', '127.0.0.1', NULL, NULL, 'web', NULL, NULL, '2017-11-08 18:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleGroupId` int(11) NOT NULL,
  `roleTitle` varchar(100) NOT NULL,
  `roleAccessTitle` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isUsed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_group`
--

DROP TABLE IF EXISTS `role_group`;
CREATE TABLE IF NOT EXISTS `role_group` (
  `roleGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `accessTitle` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isUsed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleGroupId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_group`
--

INSERT INTO `role_group` (`roleGroupId`, `title`, `accessTitle`, `status`, `isUsed`) VALUES
(1, 'Manage Role', 'role', 1, 0),
(2, 'Manage User', 'user', 1, 0),
(3, 'Manage Order', 'order', 1, 0),
(4, 'Manage Configuration', 'site_config', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_finance_info`
--

DROP TABLE IF EXISTS `seller_finance_info`;
CREATE TABLE IF NOT EXISTS `seller_finance_info` (
  `sellerFinanceInfoId` bigint(20) NOT NULL,
  `financeInfoId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller_warehouse`
--

DROP TABLE IF EXISTS `seller_warehouse`;
CREATE TABLE IF NOT EXISTS `seller_warehouse` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sellerId` int(100) NOT NULL,
  `companyName` varchar(200) NOT NULL,
  `taxInvoice` varchar(100) NOT NULL,
  `vatNumber` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `countryId` int(10) NOT NULL,
  `stateId` int(10) NOT NULL,
  `city` text NOT NULL,
  `zip` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_warehouse`
--

INSERT INTO `seller_warehouse` (`id`, `sellerId`, `companyName`, `taxInvoice`, `vatNumber`, `mobile`, `contactNo`, `address1`, `address2`, `countryId`, `stateId`, `city`, `zip`) VALUES
(1, 22, 'Test adn sons Co', 'TD001', 'dcacsdaca011', '9556644964', '0676275404', 'sdacas', 'cdaca', 99, 97, 'Dhenknal', 759001);

-- --------------------------------------------------------

--
-- Table structure for table `settlement_on_delivery`
--

DROP TABLE IF EXISTS `settlement_on_delivery`;
CREATE TABLE IF NOT EXISTS `settlement_on_delivery` (
  `settlementOnDeliveryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `paymentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(18) NOT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `appSource` enum('web','ios','android','windows') NOT NULL DEFAULT 'web',
  PRIMARY KEY (`settlementOnDeliveryId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settlement_on_delivery`
--

INSERT INTO `settlement_on_delivery` (`settlementOnDeliveryId`, `paymentTime`, `IP`, `latitude`, `longitude`, `userId`, `appSource`) VALUES
(1, '2016-09-03 14:08:36', '127.0.0.1', NULL, NULL, 39, 'web'),
(2, '2016-09-03 14:47:08', '127.0.0.1', NULL, NULL, 39, 'web'),
(3, '2016-09-03 15:26:15', '127.0.0.1', NULL, NULL, 39, 'web'),
(4, '2016-09-03 15:29:12', '127.0.0.1', NULL, NULL, 38, 'web'),
(5, '2016-09-03 16:08:57', '127.0.0.1', NULL, NULL, 38, 'web'),
(6, '2016-09-03 16:11:44', '127.0.0.1', NULL, NULL, 39, 'web'),
(7, '2017-11-08 17:55:25', '127.0.0.1', NULL, NULL, 39, 'web'),
(8, '2017-11-08 18:13:02', '127.0.0.1', NULL, NULL, 39, 'web'),
(9, '2017-11-08 18:16:44', '127.0.0.1', NULL, NULL, 38, 'web'),
(10, '2017-11-08 18:28:14', '127.0.0.1', NULL, NULL, 38, 'web'),
(11, '2017-11-08 18:30:28', '127.0.0.1', NULL, NULL, 39, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `shipped_history`
--

DROP TABLE IF EXISTS `shipped_history`;
CREATE TABLE IF NOT EXISTS `shipped_history` (
  `shippedHistoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `trackingUrl` varchar(255) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`shippedHistoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `shippingId` int(11) NOT NULL AUTO_INCREMENT,
  `startWeight` int(11) NOT NULL,
  `countryCode` enum('IN','KE') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `endWeight` int(11) NOT NULL,
  `charges` float(10,2) NOT NULL,
  PRIMARY KEY (`shippingId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shippingId`, `startWeight`, `countryCode`, `status`, `endWeight`, `charges`) VALUES
(1, 1, 'IN', 1, 50, 0.20),
(2, 51, 'IN', 1, 100, 0.25),
(3, 101, 'IN', 1, 150, 0.16),
(4, 201, 'IN', 1, 250, 0.15);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
CREATE TABLE IF NOT EXISTS `shipping_address` (
  `shippingAddressId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `cityId` bigint(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `zipId` bigint(20) DEFAULT NULL,
  `contactNo` varchar(50) DEFAULT NULL,
  `contactNo2` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `localityId` bigint(20) DEFAULT NULL,
  `landmark` text,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`shippingAddressId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`shippingAddressId`, `userId`, `countryId`, `stateId`, `cityId`, `address`, `zipId`, `contactNo`, `contactNo2`, `firstName`, `lastName`, `localityId`, `landmark`, `appSource`) VALUES
(1, 38, 99, 89, 3, '2A/C-238,whitefield', 195, '9556644964', NULL, 'JudhisthiraCto', 'SahooCto', 26, '', 'web'),
(2, 38, 99, 89, 3, '2A/C-238,whitefield', 195, '9556644964', NULL, 'JudhisthiraCto', 'SahooCto', 26, '', 'web'),
(3, 39, 99, 89, 3, '2A/C-238,whitefield', 195, '9556644964', NULL, 'JudhisthiraNine', 'SahooNine', 26, '', 'web'),
(4, 39, 99, 89, 3, '2A/C-238,whitefield', 195, '9556644964', NULL, 'JudhisthiraNine', 'SahooNine', 26, '', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_weight_slab`
--

DROP TABLE IF EXISTS `shipping_weight_slab`;
CREATE TABLE IF NOT EXISTS `shipping_weight_slab` (
  `shippingWeightSlabId` int(11) NOT NULL AUTO_INCREMENT,
  `startWeight` int(11) NOT NULL,
  `endWeight` int(11) NOT NULL,
  `countryCode` enum('IN','KE') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shippingWeightSlabId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `small_unit`
--

DROP TABLE IF EXISTS `small_unit`;
CREATE TABLE IF NOT EXISTS `small_unit` (
  `smallUnitId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`smallUnitId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `small_unit`
--

INSERT INTO `small_unit` (`smallUnitId`, `name`) VALUES
(1, 'Kg'),
(2, 'Ltr'),
(3, 'pc');

-- --------------------------------------------------------

--
-- Table structure for table `sms_send_history`
--

DROP TABLE IF EXISTS `sms_send_history`;
CREATE TABLE IF NOT EXISTS `sms_send_history` (
  `sendSmsHistoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `senderUserId` int(11) DEFAULT NULL,
  `receiverUserId` int(11) DEFAULT NULL,
  `senderPhoneNumber` varchar(18) DEFAULT NULL,
  `receiverPhoneNumber` varchar(18) NOT NULL,
  `sendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(20) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `langitude` varchar(30) DEFAULT NULL,
  `sms` varchar(300) NOT NULL,
  `sendActionType` varchar(100) NOT NULL,
  `smsGatewaySenderId` varchar(8) NOT NULL,
  `smsGatewayReturnData` varchar(100) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`sendSmsHistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_send_history`
--

INSERT INTO `sms_send_history` (`sendSmsHistoryId`, `senderUserId`, `receiverUserId`, `senderPhoneNumber`, `receiverPhoneNumber`, `sendTime`, `IP`, `latitude`, `langitude`, `sms`, `sendActionType`, `smsGatewaySenderId`, `smsGatewayReturnData`, `appSource`) VALUES
(1, 0, 25, '', '9556644964', '2016-01-14 03:43:02', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-11 has been delivered by our logistic partner FedEx Exp. Cargo.For any query please visit our Customer Service Section at http://tidiit-local.com/', 'BUYING-CLUB-ORDER-DELIVERED', 'tidiit', 'S.67170 S.932557  \r\n', 'web'),
(2, 0, 24, '', '9861275404', '2016-01-14 03:43:07', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] member[JudhisthiraTwoNine JudhisthiraTwoNine] order TIDIIT-OD-11 has been delivered by our logistic partner FedEx Exp. Cargo.For any query please visit our Customer Service Section at http://tidiit-local.com/', 'SINGLE-ORDER-DELIVERED-LEADER', 'tidiit', 'S.73273 S.472840  \r\n', 'web'),
(3, 0, 25, '', '9556644964', '2016-01-14 03:46:57', '127.0.0.1', NULL, NULL, 'You have successfull placed an order TIDIIT-OD-12 for Aqua Eco Star.More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER', 'tidiit', 'S.930878  \r\n', 'web'),
(4, 0, 25, '', '9556644964', '2016-01-14 04:54:22', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-12 has been confirmed by JudhisthiraHotmail SahooHotmail. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.266480  \r\n', 'web'),
(5, 0, 25, '', '9556644964', '2016-01-14 06:23:37', '127.0.0.1', NULL, NULL, 'You have successfull placed an order TIDIIT-OD-13 for Aqua Eco Star.More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER', 'tidiit', 'S.534913  \r\n', 'web'),
(6, 0, 25, '', '9556644964', '2016-01-14 06:24:21', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-13 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.781739  \r\n', 'web'),
(7, 22, 25, '', '9556644964', '2016-01-14 06:27:23', '127.0.0.1', NULL, NULL, 'JudhisthiraHotmail SahooHotmail has cancled your Tidiit order TIDIIT-OD-13 due to testing. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-CANCELED', 'tidiit', 'S.769715 S.931855  \r\n', 'web'),
(8, 24, 24, '9861275404', '9861275404', '2016-01-14 20:34:27', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[JudhisthiraCTO1 Club123]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.394776 S.282258  \r\n', 'web'),
(9, 24, 24, '9861275404', '9861275404', '2016-01-14 20:36:33', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[JudhisthiraCTO1 Club123]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.165375 S.605713  \r\n', 'web'),
(10, 24, 24, '9861275404', '9861275404', '2016-01-14 20:37:53', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[JudhisthiraCTO1 Club123]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.726502 S.346650  \r\n', 'web'),
(11, 24, 25, '9861275404', '9556644964', '2016-01-14 20:37:59', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[JudhisthiraCTO1 Club123]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.254731 S.595459  \r\n', 'web'),
(12, 24, 25, '9861275404', '9556644964', '2016-01-20 04:29:16', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[Judhisthira Mobile Seller]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.712769 S.631012  \r\n', 'web'),
(13, 24, 26, '9861275404', '9556644964', '2016-01-20 04:29:22', '127.0.0.1', NULL, NULL, 'Hi, <br /> You Have added in my newly created Buying Club <strong>[Judhisthira Mobile Seller]</strong> by JudhisthiCTO SahooCTO.<br />Group Leader email id is cto.tidiit@gmail.com.<br />Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', 'S.822541 S.518006  \r\n', 'web'),
(14, 0, 24, '', '9861275404', '2016-01-20 10:45:47', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-16 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check BASE_URL', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.792817  \r\n', 'web'),
(15, 0, 24, '', '9861275404', '2016-01-20 10:45:59', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-17 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check BASE_URL', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.746827  \r\n', 'web'),
(16, 0, 24, '', '9861275404', '2016-01-20 10:46:08', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-18 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check BASE_URL', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.137848  \r\n', 'web'),
(17, 0, 24, '9556644964', '9861275404', '2016-01-22 03:13:01', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[18000.00] of 10 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-24. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.916108 S.60547  \r\n', 'web'),
(18, 0, 24, '', '9861275404', '2016-01-22 03:13:17', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-20 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.797608 S.940949  \r\n', 'web'),
(19, 0, 25, '', '9556644964', '2016-01-22 03:13:45', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-24 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.2259 S.716645  \r\n', 'web'),
(20, 25, 24, '9556644964', '9861275404', '2016-01-22 06:31:00', '127.0.0.1', NULL, NULL, 'Hi,  You Have added in my newly created Buying Club [judhiTwoNine Club] by JudhisthiraTwoNine SahooTwoNine.Group Leader email id is judhisahoo2009@gmail.com.Group Leader contact number is 9556644964.', 'BUYING-CLUB-ADD', 'tidiit', 'S.491547 S.158448  \r\n', 'web'),
(21, 25, 24, '9556644964', '9861275404', '2016-01-22 06:32:05', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[judhiTwoNine Club] by JudhisthiraTwoNine SahooTwoNine.More details about this notifiaction,Check http://tidiit-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.442444  \r\n', 'web'),
(22, 0, 25, '9861275404', '9556644964', '2016-01-22 07:46:36', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[16200.00] of 10 of your Buying Club[judhiTwoNine Club] Order TIDIIT-OD-35. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.438050 S.92865  \r\n', 'web'),
(23, 0, 25, '', '9556644964', '2016-01-22 07:46:51', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-34 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.321808 S.313172  \r\n', 'web'),
(24, 0, 24, '', '9861275404', '2016-01-22 07:47:22', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-35 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.170197 S.412537  \r\n', 'web'),
(25, 0, 24, '', '9861275404', '2016-01-22 08:11:07', '127.0.0.1', NULL, NULL, 'Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-35 has been confirmed by JudhisthiraHotmail SahooHotmail. More details about this notifiaction,Check http://www.tidiit-local.com', 'BUYING_CLUB-ORDER-CONFIRM', 'tidiit', 'S.525452 S.869721  \r\n', 'web'),
(26, 0, 25, '', '9556644964', '2016-01-22 08:11:13', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] member[JudhisthiCTO SahooCTO] order TIDIIT-OD-35 has been confirmed by JudhisthiraHotmail SahooHotmail. More details about this notifiaction,Check http://www.tidiit-local.com', 'BUYING_CLUB-ORDER-CONFIRM', 'tidiit', 'S.897187 S.185669  \r\n', 'web'),
(27, 0, 24, '', '9861275404', '2016-01-22 08:13:07', '127.0.0.1', NULL, NULL, 'Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-35 has been shipped by JudhisthiraHotmail SahooHotmail with Our Logistic Partner FedEx Exp. Cargo. More details about this notifiaction,Check http://www.tidiit-local.com', 'BUYING_CLUB-ORDER-CONFIRM', 'tidiit', 'S.993958 S.61860  \r\n', 'web'),
(28, 0, 25, '', '9556644964', '2016-01-22 08:13:14', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] member[JudhisthiCTO SahooCTO] order TIDIIT-OD-35 has been shipped by JudhisthiraHotmail SahooHotmail with Our Logistic Partner FedEx Exp. Cargo. More details about this notifiaction,Check http://www.tidiit-local.com', 'BUYING_CLUB-ORDER-SHIPPED', 'tidiit', 'S.500763 S.194275  \r\n', 'web'),
(29, 0, 24, '', '9861275404', '2016-01-22 08:17:46', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-35 will delivered by 4 days.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY-PRE-ALERT', 'tidiit', 'S.7416 S.263184  \r\n', 'web'),
(30, 0, 25, '', '9556644964', '2016-01-22 08:17:52', '127.0.0.1', NULL, NULL, 'Your Buying Club[judhiTwoNine Club]  member Tidiit order TIDIIT-OD-35 will delivered by 4 days.JudhisthiCTO SahooCTO had selected Settlement on Delivery method,please follow with him/her to submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY-PRE-ALERT', 'tidiit', 'S.413819 S.607941  \r\n', 'web'),
(31, 0, 24, '', '9861275404', '2016-01-22 08:21:28', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-35 will delivered by 4 days.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY-PRE-ALERT', 'tidiit', 'S.517823 S.694367  \r\n', 'web'),
(32, 0, 25, '', '9556644964', '2016-01-22 08:21:37', '127.0.0.1', NULL, NULL, 'Your Buying Club[judhiTwoNine Club]  member Tidiit order TIDIIT-OD-35 will delivered by 4 days.JudhisthiCTO SahooCTO had selected Settlement on Delivery method,please follow with him/her to submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY-PRE-ALERT', 'tidiit', 'S.667237 S.480500  \r\n', 'web'),
(33, 0, 24, '', '9861275404', '2016-01-22 08:27:02', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-35 is ready to Out For Delivery.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY', 'tidiit', 'S.266114 S.133088  \r\n', 'web'),
(34, 0, 25, '', '9556644964', '2016-01-22 08:27:07', '127.0.0.1', NULL, NULL, 'Your Buying Club[judhiTwoNine Club]  member Tidiit order TIDIIT-OD-35 is ready to Out For Delivery.JudhisthiCTO SahooCTO had selected Settlement on Delivery method,please follow with him/her to submit the payment,So delivery people will delivery your item.', 'BUYING-CLUB-ORDER-OUT-FOR_DELIVERY', 'tidiit', 'S.666382 S.324860  \r\n', 'web'),
(35, 0, 0, '', '9078752978', '2016-01-22 08:30:19', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed the payment for Tidiit order TIDIIT-OD--35 please process the delivery.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-LOGISTICS', 'tidiit', 'S.106110  \r\n', 'web'),
(36, 0, 24, '', '9861275404', '2016-01-22 08:30:28', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD--35.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.686463  \r\n', 'web'),
(37, 0, 25, '', '9556644964', '2016-01-22 08:30:34', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] member[JudhisthiCTO SahooCTO] has completed payment for order TIDIIT-OD--35.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-LEADER', 'tidiit', 'S.190369  \r\n', 'web'),
(38, 0, 24, '', '9861275404', '2016-01-22 08:31:11', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Tidiit order .', 'SINGLE-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.814789  \r\n', 'web'),
(39, 0, 24, '', '9861275404', '2016-01-22 08:43:43', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-35 has been delivered by our logistic partner FedEx Exp. Cargo.For any query please visit our Customer Service Section at http://tidiit-local.com/', 'BUYING-CLUB-ORDER-DELIVERED', 'tidiit', 'S.521576 S.56641  \r\n', 'web'),
(40, 0, 25, '', '9556644964', '2016-01-22 08:43:48', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] member[JudhisthiCTO JudhisthiCTO] order TIDIIT-OD-35 has been delivered by our logistic partner FedEx Exp. Cargo.For any query please visit our Customer Service Section at http://tidiit-local.com/', 'SINGLE-ORDER-DELIVERED-LEADER', 'tidiit', 'S.218140 S.966462  \r\n', 'web'),
(41, 0, 24, '', '9861275404', '2016-02-03 14:11:49', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-64 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', '0', 'web'),
(42, 0, 24, '', '9861275404', '2016-02-03 14:11:52', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-65 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', '0', 'web'),
(43, 0, 24, '', '9861275404', '2016-02-03 14:19:27', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-66 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.258881  \r\n', 'web'),
(44, 0, 24, '', '9861275404', '2016-02-03 14:20:33', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-67 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.46143  \r\n', 'web'),
(45, 0, 24, '', '9861275404', '2016-02-03 14:24:54', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-68 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.926087  \r\n', 'web'),
(46, 0, 24, '', '9861275404', '2016-02-03 14:25:21', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-69 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.41901  \r\n', 'web'),
(47, 0, 24, '', '9861275404', '2016-02-06 18:23:48', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-80 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', '0', 'web'),
(48, 0, 24, '', '9861275404', '2016-02-06 18:23:49', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-81 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', '0', 'web'),
(49, 0, 24, '', '9861275404', '2016-02-07 10:09:56', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-82 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.232911  \r\n', 'web'),
(50, 0, 24, '', '9861275404', '2016-02-07 17:45:57', '127.0.0.1', NULL, NULL, 'Your cancelation request for Tidiit Order TIDIIT-OD-82 has placed successfully.Cancelation request due to "Not More intersted".More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CANCEL-BUYER', 'tidiit', 'S.445679 S.268219  \r\n', 'web'),
(51, 0, 24, '', '9861275404', '2016-02-07 18:06:51', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Tidiit order TIDIIT-OD-81,.', 'SINGLE-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.197632  \r\n', 'web'),
(52, 24, 25, '9861275404', '9556644964', '2016-02-07 19:55:55', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.268647  \r\n', 'web'),
(53, 24, 25, '9861275404', '9556644964', '2016-02-15 02:21:13', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', '0', 'web'),
(54, 24, 25, '9861275404', '9556644964', '2016-02-15 02:35:08', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.447785  \r\n', 'web'),
(55, 0, 24, '9556644964', '9861275404', '2016-02-15 20:32:46', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-91. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.28351 S.576355  \r\n', 'web'),
(56, 0, 24, '9556644964', '9861275404', '2016-02-15 20:35:37', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-91. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.189759 S.154145  \r\n', 'web'),
(57, 0, 24, '9556644964', '9861275404', '2016-02-15 20:39:13', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-91. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.584870 S.799378  \r\n', 'web'),
(58, 24, 25, '9861275404', '9556644964', '2016-02-16 10:34:52', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.359498  \r\n', 'web'),
(59, 0, 24, '9556644964', '9861275404', '2016-02-16 11:22:24', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[4580.00] of 2 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-95. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.6287 S.593232  \r\n', 'web'),
(60, 24, 25, '9861275404', '9556644964', '2016-02-16 11:32:37', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.914307  \r\n', 'web'),
(61, 0, 24, '9556644964', '9861275404', '2016-02-16 17:00:46', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-97. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.182557 S.556611  \r\n', 'web'),
(62, 24, 25, '9861275404', '9556644964', '2016-02-16 17:19:50', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.882416  \r\n', 'web'),
(63, 0, 24, '9556644964', '9861275404', '2016-02-16 17:36:15', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[4580.00] of 2 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-99. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.356110 S.989563  \r\n', 'web'),
(64, 0, 24, '', '9861275404', '2016-02-16 17:36:26', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-98 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check BASE_URL', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.948761  \r\n', 'web'),
(65, 24, 25, '9861275404', '9556644964', '2016-02-16 17:42:30', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.15748  \r\n', 'web'),
(66, 0, 24, '9556644964', '9861275404', '2016-02-16 17:46:36', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[4580.00] of 2 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-101. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.588074 S.133027  \r\n', 'web'),
(67, 0, 24, '', '9861275404', '2016-02-16 17:46:48', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-100 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.643464 S.186097  \r\n', 'web'),
(68, 0, 25, '', '9556644964', '2016-02-16 17:46:57', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-101 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.71869 S.288575  \r\n', 'web'),
(69, 0, 24, '9556644964', '9861275404', '2016-02-16 17:46:59', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[4580.00] of 2 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-101. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.382447 S.750886  \r\n', 'web'),
(70, 0, 24, '', '9861275404', '2016-02-16 17:47:14', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-100 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.317017 S.119050  \r\n', 'web'),
(71, 0, 25, '', '9556644964', '2016-02-16 17:47:26', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-101 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.731110 S.864563  \r\n', 'web'),
(72, 24, 25, '9861275404', '9556644964', '2016-02-23 17:47:48', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.615510  \r\n', 'web'),
(73, 0, 24, '', '9861275404', '2016-02-23 17:51:42', '127.0.0.1', NULL, NULL, 'Buying Club[Judhisthira Club]  member[JudhisthiraTwoNine SahooTwoNine] has decline the invitation Tidiit order TIDIIT-OD-102.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.402771  \r\n', 'web'),
(74, 0, 24, '', '9861275404', '2016-02-23 18:49:53', '127.0.0.1', NULL, NULL, 'Buying Club[Judhisthira Club]  member[JudhisthiraTwoNine SahooTwoNine] has decline the invitation Tidiit order TIDIIT-OD-102.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.524964  \r\n', 'web'),
(75, 24, 25, '9861275404', '9556644964', '2016-02-27 14:09:33', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.390656  \r\n', 'web'),
(76, 0, 24, '', '9861275404', '2016-02-27 14:22:03', '127.0.0.1', NULL, NULL, 'Buying Club[Judhisthira Club]  member[JudhisthiraTwoNine SahooTwoNine] has decline the invitation Tidiit order TIDIIT-OD-103.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.55115  \r\n', 'web'),
(77, 24, 25, '9861275404', '9556644964', '2016-02-27 14:57:27', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.498505  \r\n', 'web'),
(78, 0, 24, '', '9861275404', '2016-02-27 14:58:42', '127.0.0.1', NULL, NULL, 'Buying Club[Judhisthira Club]  member[JudhisthiraTwoNine SahooTwoNine] has decline the invitation Tidiit order TIDIIT-OD-105.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.772278  \r\n', 'web'),
(79, 24, 25, '9861275404', '9556644964', '2016-02-27 15:03:06', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Judhisthira Club] by JudhisthiCTO SahooCTO.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.475831  \r\n', 'web'),
(80, 0, 24, '', '9861275404', '2016-02-27 15:04:12', '127.0.0.1', NULL, NULL, 'Buying Club[Judhisthira Club]  member[JudhisthiraTwoNine SahooTwoNine] has decline the invitation Tidiit order TIDIIT-OD-107.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.719056  \r\n', 'web'),
(81, 0, 25, '9861275404', '9556644964', '2016-02-27 15:06:23', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of Buying Club[] Order TIDIIT-OD-108. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-CONTINUE', 'tidiit', 'S.822205 S.778290  \r\n', 'web'),
(82, 0, 24, '9861275404', '9861275404', '2016-02-27 15:06:29', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[6870.00] of 3 of your Buying Club[Judhisthira Club] Order TIDIIT-OD-108. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.823395 S.673646  \r\n', 'web'),
(83, 0, 24, '', '9861275404', '2016-02-27 15:06:37', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Judhisthira Club] order TIDIIT-OD-107 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.191468 S.465424  \r\n', 'web'),
(84, 25, 24, '9556644964', '9861275404', '2016-02-27 15:39:18', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[judhiTwoNine Club] by JudhisthiraTwoNine SahooTwoNine.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.64637  \r\n', 'web'),
(85, 0, 25, '', '9556644964', '2016-02-27 15:40:19', '127.0.0.1', NULL, NULL, 'Buying Club[judhiTwoNine Club]  member[JudhisthiCTO SahooCTO] has decline the invitation Tidiit order TIDIIT-OD-109.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.541016  \r\n', 'web'),
(86, 0, 24, '9556644964', '9861275404', '2016-02-27 15:42:01', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[6870.00] of 3 of Buying Club[] Order TIDIIT-OD-111. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-CONTINUE', 'tidiit', 'S.605927  \r\n', 'web'),
(87, 0, 25, '9556644964', '9556644964', '2016-02-27 15:42:07', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[judhiTwoNine Club] Order TIDIIT-OD-111. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.563874 S.260804  \r\n', 'web'),
(88, 0, 25, '', '9556644964', '2016-02-27 15:42:13', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-109 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.206360 S.463715  \r\n', 'web'),
(89, 25, 24, '9556644964', '9861275404', '2016-02-27 15:44:39', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[judhiTwoNine Club] by JudhisthiraTwoNine SahooTwoNine.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.220368  \r\n', 'web'),
(90, 0, 25, '', '9556644964', '2016-02-27 15:45:17', '127.0.0.1', NULL, NULL, 'Buying Club[judhiTwoNine Club]  member[JudhisthiCTO SahooCTO] has decline the invitation Tidiit order TIDIIT-OD-112.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.509034  \r\n', 'web'),
(91, 0, 24, '9556644964', '9861275404', '2016-02-27 15:46:31', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[6870.00] of 3 of Buying Club[] Order TIDIIT-OD-113. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-CONTINUE', 'tidiit', 'S.878388  \r\n', 'web'),
(92, 0, 25, '9556644964', '9556644964', '2016-02-27 15:46:37', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[6870.00] of 3 of your Buying Club[judhiTwoNine Club] Order TIDIIT-OD-113. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.761597 S.953278  \r\n', 'web'),
(93, 0, 25, '', '9556644964', '2016-02-27 15:46:44', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-112 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.358704 S.69184  \r\n', 'web'),
(94, 25, 24, '9556644964', '9861275404', '2016-02-27 15:47:06', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[judhiTwoNine Club] by JudhisthiraTwoNine SahooTwoNine.More details about this notifiaction,Check http://tidiit.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.521912  \r\n', 'web'),
(95, 0, 25, '', '9556644964', '2016-02-27 15:47:35', '127.0.0.1', NULL, NULL, 'Buying Club[judhiTwoNine Club]  member[JudhisthiCTO SahooCTO] has decline the invitation Tidiit order TIDIIT-OD-114.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.386750  \r\n', 'web'),
(96, 0, 25, '9861275404', '9556644964', '2016-02-27 15:57:31', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[6870.00] of 3 of your Buying Club[judhiTwoNine Club12] Order TIDIIT-OD-115. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.157563 S.754151  \r\n', 'web'),
(97, 0, 25, '', '9556644964', '2016-02-27 15:57:41', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club] order TIDIIT-OD-114 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.986359 S.499207  \r\n', 'web'),
(98, 0, 24, '', '9861275404', '2016-02-27 15:57:47', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[judhiTwoNine Club12] order TIDIIT-OD-115 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.946503 S.311158  \r\n', 'web'),
(99, 0, 0, 'Y', 'Y', '2016-03-02 20:09:18', '127.0.0.1', NULL, NULL, 'Y', 'Y', 'tidiit', 'S.200989  \r\n', 'web'),
(100, 0, 0, 'Y', 'Y', '2016-03-02 20:14:41', '127.0.0.1', NULL, NULL, 'Y', 'Y', 'tidiit', 'S.877350  \r\n', 'web'),
(101, 0, 24, '', '9861275404', '2016-03-02 20:22:16', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-119 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.153962  \r\n', 'web'),
(102, 0, 24, '', '9861275404', '2016-03-02 20:27:19', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-120 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.418030  \r\n', 'web'),
(103, 0, 24, '', '9861275404', '2016-03-02 20:44:08', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-121 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.631959  \r\n', 'web'),
(104, 0, 24, '', '9556644964', '2016-03-02 20:51:07', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-122 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.173737  \r\n', 'web'),
(105, 0, 25, '', '8908488483', '2016-03-02 20:53:51', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-123 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.329926  \r\n', 'web'),
(106, 0, 36, '', '9040010777', '2016-03-03 05:53:42', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-124 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.21790  \r\n', 'web'),
(107, 0, 36, '', '9040010777', '2016-03-03 05:58:34', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-125 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.992615  \r\n', 'web'),
(108, 36, 24, '9040010777', '9556644964', '2016-03-03 06:01:54', '127.0.0.1', NULL, NULL, 'Hi,  You Have added in my newly created Buying Club [Club with CTO] by JudhisthiraYahos SahooYahoo.Group Leader email id is judhisthira_sahoo@yahoo.com.Group Leader contact number is 9040010777.', 'BUYING-CLUB-ADD', 'tidiit', '0', 'web'),
(109, 36, 24, '9040010777', '9556644964', '2016-03-03 06:05:54', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Club with CTO] by JudhisthiraYahos SahooYahoo.More details about this notifiaction,Check http://tidiit-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.753693  \r\n', 'web'),
(110, 0, 36, '9556644964', '9040010777', '2016-03-03 06:08:03', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[10305.00] of 5 of your Buying Club[Club with CTO] Order TIDIIT-OD-127. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.781434 S.209198  \r\n', 'web'),
(111, 0, 36, '', '9040010777', '2016-03-03 06:08:17', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Club with CTO] order TIDIIT-OD-126 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.953003 S.816559  \r\n', 'web'),
(112, 0, 24, '', '9556644964', '2016-03-03 06:08:49', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Club with CTO] order TIDIIT-OD-127 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.942627 S.498078  \r\n', 'web'),
(113, 36, 24, '9040010777', '9556644964', '2016-03-03 06:10:16', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[Club with CTO] by JudhisthiraYahos SahooYahoo.More details about this notifiaction,Check http://tidiit-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.906342  \r\n', 'web'),
(114, 0, 36, '', '9040010777', '2016-03-03 06:10:49', '127.0.0.1', NULL, NULL, 'Buying Club[Club with CTO]  member[JudhisthiCTO SahooCTO] has decline the invitation Tidiit order TIDIIT-OD-128.', 'BUYING-CLUB-ORDER-DECLINE', 'tidiit', 'S.428193  \r\n', 'web'),
(115, 36, 24, '9040010777', '9556644964', '2016-03-03 06:12:04', '127.0.0.1', NULL, NULL, 'JudhisthiCTO SahooCTO has completed payment[10305.00] of 5 of Buying Club[] Order TIDIIT-OD-129. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-CONTINUE', 'tidiit', 'S.340699 S.575348  \r\n', 'web'),
(116, 0, 36, '9040010777', '9040010777', '2016-03-03 06:12:18', '127.0.0.1', NULL, NULL, 'JudhisthiraYahos SahooYahoo has completed payment[10305.00] of 5 of your Buying Club[Club with CTO] Order TIDIIT-OD-129. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.75379 S.749238  \r\n', 'web'),
(117, 0, 36, '', '9040010777', '2016-03-03 06:12:32', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[Club with CTO] order TIDIIT-OD-128 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.199616 S.56702  \r\n', 'web'),
(118, 0, 24, '', '9861275404', '2016-04-13 20:29:43', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-130 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.765778  \r\n', 'web'),
(119, 0, 24, '', '9861275404', '2016-04-13 20:29:50', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-131 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.893372  \r\n', 'web'),
(120, 0, 24, '', '9861275404', '2016-04-13 20:32:06', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 has been confirmed by JudhisthiraHotmail SahooHotmail. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.871430  \r\n', 'web'),
(121, 0, 24, '', '9861275404', '2016-04-13 20:33:39', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 has been shipped by JudhisthiraHotmail SahooHotmail with Our Logistic Partner FedEx Exp. Cargo. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-SHIPPED', 'tidiit', 'S.981507 S.79682  \r\n', 'web'),
(122, 0, 24, '', '9861275404', '2016-04-13 20:45:30', '127.0.0.1', NULL, NULL, 'Your item for Tidiit order TIDIIT-OD-131 has upload at Namkum Main Rd, Kusai, Ranchi, Jharkhand 834002, India.', 'BUYING-CLUB-ORDER-UPLOAD-MOVEMENT-UPDATE', 'tidiit', 'S.739441  \r\n', 'web'),
(123, 0, 24, '', '9861275404', '2016-04-13 20:47:59', '127.0.0.1', NULL, NULL, 'Your item for Tidiit order TIDIIT-OD-131 has upload to a vehicle for next movement at Namkum Main Rd, Kusai, Ranchi, Jharkhand 834002, India.', 'BUYING-CLUB-ORDER-UPLOAD-MOVEMENT-UPDATE', 'tidiit', 'S.137665  \r\n', 'web'),
(124, 0, 24, '', '9861275404', '2016-04-13 21:02:51', '127.0.0.1', NULL, NULL, 'Your item for Tidiit order TIDIIT-OD-131 has download to a vehicle for next movement at Namkum Main Rd, Kusai, Ranchi, Jharkhand 834002, India.', 'BUYING-CLUB-ORDER-DOWNLOAD-MOVEMENT-UPDATE', 'tidiit', 'S.100617  \r\n', 'web'),
(125, 0, 24, '', '9861275404', '2016-04-13 21:10:45', '127.0.0.1', NULL, NULL, 'Your item[Aqua Eco Star] for Tidiit order TIDIIT-OD-131 has download to a vehicle for next movement at Namkum Main Rd, Kusai, Ranchi, Jharkhand 834002, India.', 'BUYING-CLUB-ORDER-DOWNLOAD-MOVEMENT-UPDATE', 'tidiit', 'S.603180  \r\n', 'web'),
(126, 0, 24, '', '9861275404', '2016-04-13 21:15:26', '127.0.0.1', NULL, NULL, 'Your item[Aqua Eco Star] for Tidiit order TIDIIT-OD-131 has pickup from seller location at Namkum Main Rd, Kusai, Ranchi, Jharkhand 834002, India.', 'BUYING-CLUB-ORDER-CLIENTPICKUP-MOVEMENT-UPDATE', 'tidiit', 'S.545899  \r\n', 'web'),
(127, 0, 24, '', '9861275404', '2016-04-15 13:23:11', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 will delivered by 3 days.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will delivery your item.', 'SINGLE-ORDER-OUT-FOR_DELIVERY-PRE-ALERT', 'tidiit', '0', 'web'),
(128, 0, 24, '', '9861275404', '2016-04-15 13:25:51', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 is ready to Out For Delivery.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will deliver your item at your door step.', 'SINGLE-ORDER-OUT-FOR_DELIVERY', 'tidiit', '0', 'web'),
(129, 0, 24, '', '9861275404', '2016-04-15 13:33:27', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 is ready to Out For Delivery.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will deliver your item at your door step.', 'SINGLE-ORDER-OUT-FOR_DELIVERY', 'tidiit', '0', 'web'),
(130, 0, 24, '', '9861275404', '2016-04-15 13:34:47', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-131 is ready to Out For Delivery.AS you had selected Settlement on Delivery method,please submit the payment,So delivery people will deliver your item at your door step.', 'SINGLE-ORDER-OUT-FOR_DELIVERY', 'tidiit', '0', 'web'),
(131, 0, 24, '', '9861275404', '2016-04-25 15:29:02', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-132 for Samsung Galaxy Grand 2 has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.422608  \r\n', 'web'),
(132, 0, 24, '', '9861275404', '2016-04-25 16:13:25', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-132 has been confirmed by JudhisthiraHotmail SahooHotmail. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.491761  \r\n', 'web'),
(133, 0, 24, '', '9861275404', '2016-04-25 16:14:24', '127.0.0.1', NULL, NULL, 'Tidiit order TIDIIT-OD-132 has been shipped by JudhisthiraHotmail SahooHotmail with Our Logistic Partner FedEx Exp. Cargo. More details about this notifiaction,Check http://www.tidiit-local.com', 'SINGLE-ORDER-SHIPPED', 'tidiit', 'S.553345 S.878815  \r\n', 'web'),
(134, 0, 24, '', '9861275404', '2016-04-25 17:08:11', '127.0.0.1', NULL, NULL, 'Your item[Samsung Galaxy Grand 2] for Tidiit order TIDIIT-OD-132 has pickup from seller location at Namkum Main Rd, Bara Ghaghra, Ranchi, Jharkhand 834010, India.', 'BUYING-CLUB-ORDER-CLIENTPICKUP-MOVEMENT-UPDATE', 'tidiit', 'S.481263 S.678071  \r\n', 'web'),
(135, 0, 24, '', '9861275404', '2016-05-21 18:06:30', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-140 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.46906  \r\n', 'web'),
(136, 24, 25, '9861275404', '9040010777', '2016-05-21 18:16:37', '127.0.0.1', NULL, NULL, 'You have invited to Buying Club[JudhisthiraCTO1 Club123] by Jduhisthira Sahoo.More details about this notifiaction,Check http://tidiit-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.577576  \r\n', 'web'),
(137, 0, 24, '9040010777', '9861275404', '2016-05-21 18:18:18', '127.0.0.1', NULL, NULL, 'JudhisthiraTwoNine SahooTwoNine has completed payment[8931.00] of 3 of your Buying Club[JudhisthiraCTO1 Club123] Order TIDIIT-OD-142. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.847352 S.644257  \r\n', 'web'),
(138, 0, 24, '', '9861275404', '2016-05-21 18:18:31', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[JudhisthiraCTO1 Club123] order TIDIIT-OD-141 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.520051 S.421570  \r\n', 'web'),
(139, 0, 25, '', '9040010777', '2016-05-21 18:18:59', '127.0.0.1', NULL, NULL, 'Your Tidiit Buying Club[JudhisthiraCTO1 Club123] order TIDIIT-OD-142 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.360291 S.929657  \r\n', 'web'),
(140, 0, 24, '', '9861275404', '2016-05-21 19:39:21', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-149 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.584412  \r\n', 'web'),
(141, 0, 25, '', '9040010777', '2016-05-21 20:07:06', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-150 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.923798  \r\n', 'web'),
(142, 0, 24, '', '9861275404', '2016-05-22 03:27:55', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-151 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.628113  \r\n', 'web'),
(143, 0, 24, '', '9861275404', '2016-05-22 15:01:02', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-152 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.840516  \r\n', 'web'),
(144, 0, 24, '', '9861275404', '2016-05-28 07:43:08', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-155 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.73426  \r\n', 'web'),
(145, 0, 24, '', '9861275404', '2016-05-28 08:11:08', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-156 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', '0', 'web'),
(146, 0, 24, '', '9861275404', '2016-05-30 12:10:19', '127.0.0.1', NULL, NULL, 'Your Tidiit order TIDIIT-OD-161 for Aqua Eco Star has placed successfully. More details about this notifiaction,Check http://tidiit-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.473938  \r\n', 'web'),
(147, 39, 38, '9556644964', '9556644964', '2016-09-03 13:33:30', '127.0.0.1', NULL, NULL, 'Hi,  You Have added in my newly created Hangout [Hangout With CTO] by JudhisthiraNine SahooNine.Group Leader email id is judhisahoo2009@gmail.com.Group Leader contact number is 9861275404.', 'BUYING-CLUB-ADD', 'tidiit', '0', 'web'),
(148, 0, 39, '', '9556644964', '2016-09-03 14:09:03', '127.0.0.1', NULL, NULL, 'Your Retailershangout order RH-OD-1 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.109620 S.200226  \r\n', 'web'),
(149, 0, 39, '', '9556644964', '2016-09-03 14:45:50', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Retailershangout order RH-OD-1,.', 'SINGLE-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.52796  \r\n', 'web'),
(150, 0, 39, '', '9556644964', '2016-09-03 14:47:35', '127.0.0.1', NULL, NULL, 'Your Retailershangout order RH-OD-2 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.353028 S.106720  \r\n', 'web'),
(151, 0, 39, '', '9556644964', '2016-09-03 15:22:34', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Retailershangout order RH-OD-2,.', 'SINGLE-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.564637  \r\n', 'web'),
(152, 0, 39, '', '9556644964', '2016-09-03 15:23:59', '127.0.0.1', NULL, NULL, 'Your Retailershangout order RH-OD-3 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.238404 S.800202  \r\n', 'web'),
(153, 39, 38, '9556644964', '9556644964', '2016-09-03 15:26:15', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With CTO] by JudhisthiraNine SahooNine.More details about this notifiaction,Check http://retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.489533  \r\n', 'web'),
(154, 0, 39, '9556644964', '9556644964', '2016-09-03 15:28:15', '127.0.0.1', NULL, NULL, 'JudhisthiraCto SahooCto has completed payment[13740.00] of 3 of your Hangout[Hangout With CTO] Order RH-OD-5. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.395142 S.634675  \r\n', 'web'),
(155, 0, 39, '', '9556644964', '2016-09-03 15:28:29', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-4 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.544251 S.293793  \r\n', 'web'),
(156, 0, 38, '', '9556644964', '2016-09-03 15:28:57', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-5 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.641083 S.395386  \r\n', 'web'),
(157, 0, 38, '', '9556644964', '2016-09-03 15:30:23', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Retailers Hangout[Hangout With CTO] order RH-OD--5.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.740967  \r\n', 'web'),
(158, 0, 39, '', '9556644964', '2016-09-03 15:30:29', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] member[JudhisthiraCto SahooCto] has completed payment for order RH-OD--5.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-LEADER', 'tidiit', 'S.911347  \r\n', 'web'),
(159, 0, 39, '', '9556644964', '2016-09-03 15:33:52', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Retailers Hangout[Hangout With CTO] order RH-OD--4.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.418183  \r\n', 'web');
INSERT INTO `sms_send_history` (`sendSmsHistoryId`, `senderUserId`, `receiverUserId`, `senderPhoneNumber`, `receiverPhoneNumber`, `sendTime`, `IP`, `latitude`, `langitude`, `sms`, `sendActionType`, `smsGatewaySenderId`, `smsGatewayReturnData`, `appSource`) VALUES
(160, 39, 38, '9556644964', '9556644964', '2016-09-03 15:48:24', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With CTO] by JudhisthiraNine SahooNine.More details about this notifiaction,Check http://retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.306153  \r\n', 'web'),
(161, 38, 39, '9556644964', '9556644964', '2016-09-03 15:51:39', '127.0.0.1', NULL, NULL, 'JudhisthiraCto SahooCto has completed payment[9160.00] of 2 of your Hangout[Hangout With CTO] Order RH-OD-7. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER', 'tidiit', 'S.733582 S.493378  \r\n', 'web'),
(162, 0, 39, '', '9556644964', '2016-09-03 15:51:54', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-6 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.98359 S.113404  \r\n', 'web'),
(163, 0, 38, '', '9556644964', '2016-09-03 15:52:23', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-7 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.658967 S.438416  \r\n', 'web'),
(164, 38, 39, '9556644964', '9556644964', '2016-09-03 16:08:14', '127.0.0.1', NULL, NULL, 'Hi,  You Have added in my newly created Hangout [Hangout With JudhiNine] by JudhisthiraCto SahooCto.Group Leader email id is cto.tidiit@gmail.com.Group Leader contact number is 9556644964.', 'BUYING-CLUB-ADD', 'tidiit', 'S.827332 S.712128  \r\n', 'web'),
(165, 38, 39, '9556644964', '9556644964', '2016-09-03 16:08:57', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With JudhiNine] by JudhisthiraCto SahooCto.More details about this notifiaction,Check http://retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.871003  \r\n', 'web'),
(166, 0, 38, '9556644964', '9556644964', '2016-09-03 16:10:37', '127.0.0.1', NULL, NULL, 'JudhisthiraNine SahooNine has completed payment[9160.00] of 2 of your Hangout[Hangout With JudhiNine] Order RH-OD-9. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.120514 S.934632  \r\n', 'web'),
(167, 0, 38, '', '9556644964', '2016-09-03 16:11:00', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-8 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.411316 S.366425  \r\n', 'web'),
(168, 0, 39, '', '9556644964', '2016-09-03 16:11:28', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-9 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.995759 S.211243  \r\n', 'web'),
(169, 0, 39, '', '9556644964', '2016-09-03 16:13:49', '127.0.0.1', NULL, NULL, 'Thanks for the payment.We have received for Retailers Hangout[Hangout With CTO] order RH-OD--6.', 'BUYING-CLUB-ORDER-FINAL-PAYMENT-BEFORE-DELIVERY-PAYER', 'tidiit', 'S.855500  \r\n', 'web'),
(170, 0, 39, '', '9556644964', '2017-11-08 17:45:50', '127.0.0.1', NULL, NULL, 'Your Retailershangout order RH-OD-10 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.40284 S.142609  \r\n', 'web'),
(171, 0, 39, '', '9556644964', '2017-11-08 17:55:44', '127.0.0.1', NULL, NULL, 'Your Retailershangout order RH-OD-11 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'SINGLE-ORDER-CONFIRM', 'tidiit', 'S.858674 S.956482  \r\n', 'web'),
(172, 39, 38, '9556644964', '9556644964', '2017-11-08 18:13:02', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With CTO] by JudhisthiraNine SahooNine.More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.843873  \r\n', 'web'),
(173, 0, 39, '9556644964', '9556644964', '2017-11-08 18:16:11', '127.0.0.1', NULL, NULL, 'JudhisthiraCto SahooCto has completed payment[9160.00] of 2 of your Hangout[Hangout With CTO] Order RH-OD-13. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.796296 S.594788  \r\n', 'web'),
(174, 0, 39, '', '9556644964', '2017-11-08 18:16:20', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-12 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.818604 S.479523  \r\n', 'web'),
(175, 0, 38, '', '9556644964', '2017-11-08 18:16:37', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With CTO] order RH-OD-13 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.15473 S.16358  \r\n', 'web'),
(176, 38, 39, '9556644964', '9556644964', '2017-11-08 18:22:27', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With JudhiNine] by JudhisthiraCto SahooCto.More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.581971 S.592743  \r\n', 'web'),
(177, 39, 38, '9556644964', '9556644964', '2017-11-08 18:26:41', '127.0.0.1', NULL, NULL, 'JudhisthiraNine SahooNine has completed payment[9160.00] of 2 of your Hangout[Hangout With JudhiNine] Order RH-OD-15. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER', 'tidiit', 'S.224457 S.795655  \r\n', 'web'),
(178, 0, 38, '', '9556644964', '2017-11-08 18:26:50', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-14 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.31189 S.557587  \r\n', 'web'),
(179, 0, 39, '', '9556644964', '2017-11-08 18:27:07', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-15 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.279114 S.143891  \r\n', 'web'),
(180, 38, 39, '9556644964', '9556644964', '2017-11-08 18:28:14', '127.0.0.1', NULL, NULL, 'You have invited to Hangout[Hangout With JudhiNine] by JudhisthiraCto SahooCto.More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'CREATE-BUYING-CLUB-ORDER', 'tidiit', 'S.551026 S.313508  \r\n', 'web'),
(181, 0, 38, '9556644964', '9556644964', '2017-11-08 18:29:53', '127.0.0.1', NULL, NULL, 'JudhisthiraNine SahooNine has completed payment[13740.00] of 3 of your Hangout[Hangout With JudhiNine] Order RH-OD-18. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-INVITED-MEMBER-COMPLETE', 'tidiit', 'S.508912 S.785553  \r\n', 'web'),
(182, 0, 38, '', '9556644964', '2017-11-08 18:30:04', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-16 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.289307 S.786164  \r\n', 'web'),
(183, 0, 39, '', '9556644964', '2017-11-08 18:30:20', '127.0.0.1', NULL, NULL, 'Your Retailers Hangout[Hangout With JudhiNine] order RH-OD-18 for Samsung Galaxy J5 has placed successfully. More details about this notifiaction,Check http://beta.retailershangout-local.com/', 'BUYING-CLUB-ORDER-PLACED', 'tidiit', 'S.464814 S.432007  \r\n', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `stateId` bigint(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `stateCode` varchar(5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`stateId`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateId`, `stateName`, `countryId`, `stateCode`, `status`) VALUES
(1, 'Alabama', 1, 'AL', 1),
(2, 'Alaska', 1, 'AK', 1),
(3, 'Arizona', 1, 'AZ', 1),
(4, 'Arkansas', 1, 'AR', 1),
(5, 'California', 1, 'CA', 1),
(6, 'Colorado', 1, 'CO', 1),
(7, 'Connecticut', 1, 'CT', 1),
(8, 'Delaware', 1, 'DE', 1),
(9, 'Florida', 1, 'FL', 1),
(10, 'Georgia', 1, 'GA', 1),
(11, 'Hawaii', 1, 'HI', 1),
(12, 'Idaho', 1, 'ID', 1),
(13, 'Illinois', 1, 'IL', 1),
(14, 'Indiana', 1, 'IN', 1),
(15, 'Iowa', 1, 'IA', 1),
(16, 'Kansas', 1, 'KS', 1),
(17, 'Kentucky', 1, 'KY', 1),
(18, 'Louisiana', 1, 'LA', 1),
(19, 'Maine', 1, 'ME', 1),
(20, 'Maryland', 1, 'MD', 1),
(21, 'Massachusetts', 1, 'MA', 1),
(22, 'Michigan', 1, 'MI', 1),
(23, 'Minnesota', 1, 'MN', 1),
(24, 'Mississippi', 1, 'MS', 1),
(25, 'Missouri', 1, 'MO', 1),
(26, 'Montana', 1, 'MT', 1),
(27, 'Nebraska', 1, 'NE', 1),
(28, 'Nevada', 1, 'NE', 1),
(29, 'New Hampshire', 1, 'NH', 1),
(30, 'New Jersey', 1, 'NJ', 1),
(31, 'New Mexico', 1, 'NM', 1),
(32, 'New York', 1, 'NY', 1),
(33, 'North Carolina', 1, 'NC', 1),
(34, 'North Dakota', 1, 'ND', 1),
(35, 'Ohio', 1, 'OH', 1),
(36, 'Oklahoma', 1, 'OK', 1),
(37, 'Oregon', 1, 'OR', 1),
(38, 'Pennsylvania', 1, 'PA', 1),
(39, 'Rhode Island', 1, 'RI', 1),
(40, 'South Carolina', 1, 'SC', 1),
(41, 'South Dakota', 1, 'SD', 1),
(42, 'Tennessee', 1, 'TN', 1),
(43, 'Texas', 1, 'TX', 1),
(44, 'Utah', 1, 'UT', 1),
(45, 'Vermont', 1, 'VT', 1),
(46, 'Virginia', 1, 'VA', 1),
(47, 'Washington', 1, 'WA', 1),
(48, 'West Virginia', 1, 'WV', 1),
(49, 'Wisconsin', 1, 'WI', 1),
(50, 'Wyoming', 1, 'WY', 1),
(52, 'Puerto Rico', 1, 'PR', 1),
(53, 'U.S. Virgin Islands', 1, 'VI', 1),
(54, 'American Samoa', 1, 'AS', 1),
(55, 'Guam', 1, 'GU', 1),
(56, 'Northern Mariana Islands', 1, 'MP', 1),
(202, 'san jose', 223, NULL, 1),
(70, 'Northwest Territories ', 2, NULL, 1),
(71, 'Nunavut ', 2, NULL, 1),
(72, 'Yukon Territory ', 2, NULL, 1),
(73, 'ANDAMAN AND NICOBAR ISLANDS', 99, NULL, 0),
(74, 'ANDHRA PRADESH', 99, NULL, 0),
(75, 'ASSAM', 99, NULL, 0),
(76, 'BIHAR', 99, NULL, 0),
(77, 'CHATTISGARH', 99, NULL, 0),
(78, 'CHANDIGARH', 99, NULL, 0),
(79, 'DAMAN AND DIU', 99, NULL, 0),
(80, 'DELHI', 99, NULL, 0),
(81, 'DADRA AND NAGAR HAVELI', 99, NULL, 0),
(82, 'GOA', 99, NULL, 0),
(83, 'GUJARAT', 99, NULL, 0),
(84, 'HIMACHAL PRADESH', 99, NULL, 0),
(85, 'HARYANA', 99, NULL, 0),
(86, 'JAMMU AND KASHMIR', 99, NULL, 0),
(87, 'JHARKHAND', 99, NULL, 0),
(88, 'KERALA', 99, NULL, 0),
(89, 'KARNATAKA', 99, NULL, 1),
(90, 'LAKSHADWEEP', 99, NULL, 0),
(91, 'MEGHALAYA', 99, NULL, 0),
(92, 'MAHARASHTRA', 99, NULL, 1),
(93, 'MANIPUR', 99, NULL, 0),
(94, 'MADHYA PRADESH', 99, NULL, 0),
(95, 'MIZORAM', 99, NULL, 0),
(96, 'NAGALAND', 99, NULL, 0),
(97, 'ORISSA', 99, NULL, 1),
(98, 'PUNJAB', 99, NULL, 0),
(99, 'PONDICHERRY', 99, NULL, 0),
(100, 'RAJASTHAN', 99, NULL, 0),
(101, 'SIKKIM', 99, NULL, 0),
(102, 'TAMIL NADU', 99, NULL, 0),
(103, 'TRIPURA', 99, NULL, 0),
(104, 'UTTARAKHAND', 99, NULL, 0),
(105, 'UTTAR PRADESH', 99, NULL, 0),
(106, 'WEST BENGAL', 99, NULL, 1),
(107, 'Others', 1000, NULL, 1),
(108, 'Ontario', 2, 'ON', 1),
(109, 'Quebec', 2, 'QC', 1),
(110, 'Nova Scotia', 2, 'NS', 1),
(111, 'New Brunswick', 2, 'NB', 1),
(112, 'Manitoba', 2, 'MB', 1),
(113, 'British Columbia', 2, 'BC', 1),
(114, 'Prince Edward Island', 2, 'PE', 1),
(115, 'Saskatchewan', 2, 'SK', 1),
(116, 'Alberta', 2, 'AB', 1),
(117, 'Newfoundland and Labrador', 2, 'NL', 1),
(118, 'Berkshire', 223, NULL, 1),
(119, 'Avon', 223, NULL, 1),
(120, 'Bedfordshire', 223, NULL, 1),
(121, 'City of Bristol', 223, NULL, 1),
(122, 'Buckinghamshire', 223, NULL, 1),
(123, 'Cambridgeshire', 223, NULL, 1),
(124, 'Cambridgeshire and Isle of Ely', 223, NULL, 1),
(125, 'Cheshire', 223, NULL, 1),
(126, 'Cleveland', 223, NULL, 1),
(127, 'Cornwall', 223, NULL, 1),
(128, 'Cumberland', 223, NULL, 1),
(129, 'Cumbria', 223, NULL, 1),
(130, 'Derbyshire', 223, NULL, 1),
(131, 'Devon', 223, NULL, 1),
(132, 'Dorset', 223, NULL, 1),
(133, 'Durham', 223, NULL, 1),
(134, 'East Suffolk', 223, NULL, 1),
(135, 'East Sussex', 223, NULL, 1),
(136, 'Essex', 223, NULL, 1),
(137, 'Gloucestershire', 223, NULL, 1),
(138, 'Greater London', 223, NULL, 1),
(139, 'Greater Manchester', 223, NULL, 1),
(140, 'Hampshire', 223, NULL, 1),
(141, 'Hereford and Worcester', 223, NULL, 1),
(142, 'Herefordshire', 223, NULL, 1),
(143, 'Hertfordshire', 223, NULL, 1),
(144, 'Humberside', 223, NULL, 1),
(145, 'Huntingdon and Peterborough', 223, NULL, 1),
(146, 'Huntingdonshire', 223, NULL, 1),
(147, 'Isle of Ely', 223, NULL, 1),
(148, 'Isle of Wight', 223, NULL, 1),
(149, 'Kent', 223, NULL, 1),
(150, 'Leicestershire', 223, NULL, 1),
(151, 'Lincolnshire', 223, NULL, 1),
(152, 'Lincolnshire, Parts of Holland', 223, NULL, 1),
(153, 'Lincolnshire, Parts of Kesteven', 223, NULL, 1),
(154, 'Lincolnshire, Parts of Lindsey', 223, NULL, 1),
(155, 'London', 223, NULL, 1),
(156, 'City of London', 223, NULL, 1),
(157, 'Merseyside', 223, NULL, 1),
(158, 'Middlesex', 223, NULL, 1),
(159, 'Norfolk', 223, NULL, 1),
(160, 'Northamptonshire', 223, NULL, 1),
(161, 'Northumberland', 223, NULL, 1),
(162, 'North Humberside', 223, NULL, 1),
(163, 'North Yorkshire', 223, NULL, 1),
(164, 'Nottinghamshire', 223, NULL, 1),
(165, 'Oxfordshire', 223, NULL, 1),
(166, 'Soke of Peterborough', 223, NULL, 1),
(167, 'Rutland', 223, NULL, 1),
(168, 'Shropshire (Salop)', 223, NULL, 1),
(169, 'Somerset', 223, NULL, 1),
(170, 'South Humberside', 223, NULL, 1),
(171, 'South Yorkshire', 223, NULL, 1),
(172, 'Staffordshire', 223, NULL, 1),
(173, 'Suffolk', 223, NULL, 1),
(174, 'Surrey', 223, NULL, 1),
(175, 'Sussex', 223, NULL, 1),
(176, 'Tyne and Wear', 223, NULL, 1),
(177, 'Warwickshire', 223, NULL, 1),
(178, 'West Midlands', 223, NULL, 1),
(179, 'Westmorland', 223, NULL, 1),
(180, 'West Suffolk', 223, NULL, 1),
(181, 'West Sussex', 223, NULL, 1),
(182, 'West Yorkshire', 223, NULL, 1),
(183, 'Wiltshire', 223, NULL, 1),
(184, 'Worcestershire', 223, NULL, 1),
(185, 'Yorkshire', 223, NULL, 1),
(186, 'Yorkshire, East Riding', 223, NULL, 1),
(187, 'Yorkshire, North Riding', 223, NULL, 1),
(188, 'Yorkshire, West Riding', 223, NULL, 1),
(189, 'Australian Capital Territory', 15, 'ACT', 1),
(190, 'Jervis Bay Territory', 15, 'BT', 1),
(191, 'New South Wales', 15, 'NSW', 1),
(192, 'Norfolk Island', 15, 'NF', 1),
(193, 'Northern Territory', 15, 'NT', 1),
(194, 'Queensland', 15, 'QLD', 1),
(195, 'South Australia', 15, 'SA', 1),
(196, 'Tasmania', 15, 'TAS', 1),
(197, 'Victoria (Australia)', 15, 'VIC', 1),
(198, 'Western Australia', 15, 'WA', 1),
(199, 'New Amercan Samoa', 6, NULL, 1),
(200, 'Panjab', 163, NULL, 1),
(201, 'Ca', 1, NULL, 1),
(203, 'Abu Dhabi', 222, NULL, 1),
(204, 'Ajman', 222, '', 1),
(205, 'Dubai', 222, NULL, 1),
(206, 'Fujairah', 222, NULL, 1),
(207, 'Ras al-Khaimah', 222, NULL, 1),
(208, 'Sharjah', 222, NULL, 1),
(209, 'Umm al-Quwain', 222, NULL, 1),
(210, 'Central', 111, NULL, 1),
(211, 'Coast', 111, NULL, 1),
(212, 'Eastern', 111, NULL, 1),
(213, 'Nairobi', 111, NULL, 1),
(214, 'North Eastern', 111, NULL, 1),
(215, 'Nyanza', 111, NULL, 1),
(216, 'Rift Valley', 111, NULL, 1),
(217, 'Western', 111, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `subscriberId` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribeDate` date NOT NULL,
  `IP` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`subscriberId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`subscriberId`, `email`, `subscribeDate`, `IP`, `status`, `appSource`) VALUES
(1, 'cto.tidiit@gmail.com', '2015-11-29', '127.0.0.1', 1, 'web'),
(2, 'judhisahoo2009@gmail.com', '2015-11-30', '127.0.0.1', 1, 'web'),
(3, 'cto.tidiit@gamil.com', '2015-11-30', '127.0.0.1', 1, 'web'),
(4, 'ios.tidiit@gmail.com', '2015-12-03', '127.0.0.1', 1, 'web'),
(5, 'sahoo.suryakanta.1986@gmail.com', '2015-12-08', '127.0.0.1', 1, 'web'),
(6, 'shashvatgzp@gmail.com', '2015-12-28', '127.0.0.1', 1, 'web'),
(7, 'jhilirani@gmail.com', '2016-01-05', '127.0.0.1', 1, 'android'),
(8, '2012manas.sahoo@gmail.com', '2016-01-07', '127.0.0.1', 1, 'web'),
(9, 'judhisthira_sahoo@yahoo.com', '2016-03-02', '127.0.0.1', 1, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `system_constants`
--

DROP TABLE IF EXISTS `system_constants`;
CREATE TABLE IF NOT EXISTS `system_constants` (
  `constantId` int(11) NOT NULL AUTO_INCREMENT,
  `constantName` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `constantValue` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `description` varchar(240) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`constantId`),
  UNIQUE KEY `ConstantName` (`constantName`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system_constants`
--

INSERT INTO `system_constants` (`constantId`, `constantName`, `constantValue`, `description`) VALUES
(1, 'CustomerCareEmail', 'customer-care@tidiit.com', NULL),
(2, 'ContactUsEmail', 'contact-us@tidiit.com', NULL),
(3, 'AdminEmail', 'admin@tidiit.com', NULL),
(4, 'InfoEmail', 'info@tidiit.com', NULL),
(5, 'NoReplyEmail', 'no-reply@tidiit.com', NULL),
(6, 'SupportEmail', 'support@tidiit.com', NULL),
(7, 'HOME_PAGE_NEW_ARRIVAL_ITEM_NO', '12', NULL),
(8, 'HOME_PAGE_BEST_SELLING_ITEM_NO', '12', NULL),
(9, 'HOME_PAGE_FEATURED_ITEM_NO', '12', NULL),
(10, 'MOBILE_APP_HOME_PAGE_SLIDER_ITEM_NO', '8', NULL),
(11, 'MARKETING_SUPPORT_EMAIL', 'support@tidiit.com', NULL),
(12, 'SMS_SEND_ALLOW', 'yes', ''),
(13, 'SMS_GATEWAY_USERID', 'cto.tidiit', 'sms gateway user id'),
(14, 'SMS_GATEWAY_PASSWORD', 'butunma123', NULL),
(15, 'SMS_GATEWAY_SENDERID', 'tidiit', ''),
(16, 'INTAX', '14', NULL),
(17, 'KETAX', '8', NULL),
(18, 'PAYMENT_GATEWAY_STATE', 'sandbox', NULL),
(19, 'CALL_US_FOR_FREE_IN', '+91 (080) 677 10903', 'Call us for free'),
(20, 'CALL_US_FOR_FREE_KE', '+91 (080) 677 10903', 'Call us for free');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `tagId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`tagId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tagId`, `name`) VALUES
(1, 'tag1'),
(2, 'tag2'),
(3, 'tag3'),
(4, 'Intex Aqua 3G'),
(5, 'Intex Aqua'),
(6, ' 3G'),
(7, 'Intex'),
(8, 'Aqua 3G+'),
(9, 'Aqua Eco'),
(10, 'Aqua 3g');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `taxId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zeoZoneId` int(11) NOT NULL,
  `taxPercentage` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`taxId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

DROP TABLE IF EXISTS `temp_cart`;
CREATE TABLE IF NOT EXISTS `temp_cart` (
  `tempCartId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(255) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `purchaseLocation` varchar(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `discountId` int(11) NOT NULL,
  `priceAfterDiscount` float(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `discountAmount` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weight` float(10,3) NOT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`tempCartId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tidiit_commission`
--

DROP TABLE IF EXISTS `tidiit_commission`;
CREATE TABLE IF NOT EXISTS `tidiit_commission` (
  `commissionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sellerId` bigint(20) NOT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `commissionPercentage` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`commissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tidiit_commission`
--

INSERT INTO `tidiit_commission` (`commissionId`, `sellerId`, `productId`, `categoryId`, `commissionPercentage`) VALUES
(1, 22, 1, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL COMMENT 'base64_encode(passoword)+MD5(tidiit)',
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactNo` varchar(25) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `IP` int(11) DEFAULT NULL,
  `userResources` enum('site','fb','gplus','twitter','app') NOT NULL DEFAULT 'site',
  `userType` varchar(30) NOT NULL DEFAULT 'buyer',
  `status` tinyint(1) NOT NULL COMMENT '1=>active,0=>Inactive,2=>delete',
  `aboutMe` varchar(1000) DEFAULT NULL,
  `deviceType` varchar(15) DEFAULT NULL,
  `deviceToken` varchar(50) DEFAULT NULL,
  `udid` varchar(50) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  `shippingUpdate` tinyint(1) NOT NULL DEFAULT '0',
  `profileUpdate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `firstName`, `lastName`, `email`, `contactNo`, `DOB`, `mobile`, `fax`, `IP`, `userResources`, `userType`, `status`, `aboutMe`, `deviceType`, `deviceToken`, `udid`, `appSource`, `shippingUpdate`, `profileUpdate`) VALUES
(1, 'webadmin', 'YWRtaW4=~6d580b31cc8891ceb9cc0ca490d1de8a', 'Judhi', 'sahoo', 'cto.tidiit@gmail.com', '9861275404', NULL, NULL, NULL, NULL, 'site', 'supper_admin', 1, 'no', NULL, NULL, NULL, 'web', 0, 0),
(16, 'judhi123@judhi.com', 'MTIzNDU2~6d580b31cc8891ceb9cc0ca490d1de8a', 'Judhisthira', 'Sahoo', 'judhisahoo2009@gmail.com', '9861275404', NULL, NULL, NULL, NULL, 'site', 'admin', 0, NULL, NULL, NULL, NULL, 'web', 0, 0),
(22, 'judhisahoo@hotmail.com', 'MTIzNDU=~6d580b31cc8891ceb9cc0ca490d1de8a', 'JudhisthiraHotmail', 'SahooHotmail', 'judhisahoo@hotmail.com', '9861275404', NULL, '9556644964', '9861275404', 1270, 'site', 'seller', 1, 'testing', NULL, NULL, NULL, 'web', 0, 0),
(29, '2012manas.sahoo@gmail.com', 'MTIzNDU=~6d580b31cc8891ceb9cc0ca490d1de8a', 'Manas', 'Sahoo', '2012manas.sahoo@gmail.com', '9861275404', NULL, '9040010777', '06762223509', 1270, 'site', 'seller', 1, 'selling  Micromax mobile', NULL, NULL, NULL, 'web', 0, 0),
(37, 'fedex.user@tidiit.com', 'MTIzNDU=~6d580b31cc8891ceb9cc0ca490d1de8a', 'Suman', 'Rajory', 'fedex.user@tidiit.com', '9556644964', NULL, NULL, NULL, NULL, 'site', 'logistics', 1, NULL, NULL, NULL, NULL, 'web', 0, 0),
(38, 'cto.tidiit@gmail.com', 'MTIzNDU=~6d580b31cc8891ceb9cc0ca490d1de8a', 'JudhisthiraCto', 'SahooCto', 'cto.tidiit@gmail.com', '9556644964', '1986-09-10', '9556644964', '8888888888888', 1270, 'site', 'buyer', 1, 'testing', NULL, NULL, NULL, 'web', 0, 0),
(39, 'judhisahoo2009@gmail.com', 'MTIzNDU=~6d580b31cc8891ceb9cc0ca490d1de8a', 'JudhisthiraNine', 'SahooNine', 'judhisahoo2009@gmail.com', '9861275404', '1986-09-03', '9556644964', '8888888888888', 1270, 'site', 'buyer', 1, 'test', NULL, NULL, NULL, 'web', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_history`
--

DROP TABLE IF EXISTS `user_login_history`;
CREATE TABLE IF NOT EXISTS `user_login_history` (
  `loginHistoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `logedInTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(15) NOT NULL,
  `deviceType` varchar(15) DEFAULT NULL,
  `deviceToken` varchar(50) DEFAULT NULL,
  `udid` varchar(50) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`loginHistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login_history`
--

INSERT INTO `user_login_history` (`loginHistoryId`, `userId`, `logedInTime`, `IP`, `deviceType`, `deviceToken`, `udid`, `lat`, `lon`, `appSource`) VALUES
(1, 22, '2016-09-03 12:26:22', '', NULL, NULL, NULL, NULL, NULL, 'web'),
(2, 38, '2016-09-03 13:23:11', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(3, 1, '2016-09-03 13:25:12', '', NULL, NULL, NULL, NULL, NULL, 'web'),
(4, 39, '2016-09-03 13:30:31', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(5, 38, '2016-09-03 15:26:45', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(6, 39, '2016-09-03 15:32:22', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(7, 38, '2016-09-03 15:49:49', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(8, 39, '2016-09-03 16:09:38', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(9, 22, '2016-09-03 16:11:31', '', NULL, NULL, NULL, NULL, NULL, 'web'),
(10, 38, '2017-11-08 17:19:27', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(11, 39, '2017-11-08 17:20:13', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(12, 38, '2017-11-08 18:15:11', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web'),
(13, 39, '2017-11-08 18:25:24', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `user_m_pesa`
--

DROP TABLE IF EXISTS `user_m_pesa`;
CREATE TABLE IF NOT EXISTS `user_m_pesa` (
  `mPesaId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `mpesaFullName` varchar(100) NOT NULL,
  `mpesaAccount` varchar(50) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`mPesaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_points`
--

DROP TABLE IF EXISTS `user_points`;
CREATE TABLE IF NOT EXISTS `user_points` (
  `userPointsId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `points` int(11) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`userPointsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_product_type_category`
--

DROP TABLE IF EXISTS `user_product_type_category`;
CREATE TABLE IF NOT EXISTS `user_product_type_category` (
  `userProductTypeCategoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `productTypeCateoryId` varchar(1500) NOT NULL,
  `appSource` enum('web','ios','android','windows') DEFAULT 'web',
  PRIMARY KEY (`userProductTypeCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_product_type_category`
--

INSERT INTO `user_product_type_category` (`userProductTypeCategoryId`, `userId`, `productTypeCateoryId`, `appSource`) VALUES
(1, 24, '11,12,13,24,15,16,17', 'web'),
(2, 25, '15,16,11,12,13,24', 'web'),
(3, 27, '15,16,23,25,31,32,26,27,28,29,30', 'web'),
(4, 26, '15,12,13,24', 'web'),
(5, 36, '11', 'web'),
(6, 38, '11,12,13,24,23,25,31,32,26,27,28,29,30', 'web'),
(7, 39, '11,12,13,24,23,25,31,32,26,27,28,29,30', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_temp_cart_shipping`
--

DROP TABLE IF EXISTS `user_temp_cart_shipping`;
CREATE TABLE IF NOT EXISTS `user_temp_cart_shipping` (
  `userTempCartShippingId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `sessionId` varchar(255) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `shippingCharges` float(10,2) NOT NULL,
  `purchaseLocation` varchar(5) NOT NULL,
  `shippingAddresssID` int(11) NOT NULL,
  `shippToName` varchar(255) NOT NULL,
  `IP` varchar(15) NOT NULL,
  PRIMARY KEY (`userTempCartShippingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `userTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `userType` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`userTypeId`, `userType`, `description`) VALUES
(1, 'buyer', 'Buyer'),
(2, 'seller', 'Seller'),
(3, 'support', 'Support'),
(4, 'admin', 'Admin'),
(5, 'accounts', 'Accounts'),
(6, 'logistics', 'Logistics'),
(7, 'supper_admin', 'Supper Admin'),
(8, 'marketing', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishListId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `productPriceId` bigint(20) NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `appSource` enum('web','mobileWeb','android','iPhone') NOT NULL DEFAULT 'web',
  `addedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fromSource` enum('detailsPage','cart') NOT NULL DEFAULT 'detailsPage',
  PRIMARY KEY (`wishListId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishListId`, `userId`, `productId`, `productPriceId`, `IP`, `latitude`, `longitude`, `appSource`, `addedTime`, `fromSource`) VALUES
(5, 24, 8, 122, NULL, '23.3333', '85.4444444', 'android', '2016-03-14 20:56:32', 'detailsPage');

-- --------------------------------------------------------

--
-- Table structure for table `zeo_zone`
--

DROP TABLE IF EXISTS `zeo_zone`;
CREATE TABLE IF NOT EXISTS `zeo_zone` (
  `zeoZoneId` int(11) NOT NULL AUTO_INCREMENT,
  `zeoZoneName` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zeoZoneId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zeo_zone_country`
--

DROP TABLE IF EXISTS `zeo_zone_country`;
CREATE TABLE IF NOT EXISTS `zeo_zone_country` (
  `zeoZoneCountryId` int(11) NOT NULL AUTO_INCREMENT,
  `zeoZoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  PRIMARY KEY (`zeoZoneCountryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zeo_zone_state`
--

DROP TABLE IF EXISTS `zeo_zone_state`;
CREATE TABLE IF NOT EXISTS `zeo_zone_state` (
  `zeoZoneStateId` int(11) NOT NULL AUTO_INCREMENT,
  `zeoZoneId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  PRIMARY KEY (`zeoZoneStateId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zip`
--

DROP TABLE IF EXISTS `zip`;
CREATE TABLE IF NOT EXISTS `zip` (
  `zipId` bigint(20) NOT NULL AUTO_INCREMENT,
  `zip` varchar(10) NOT NULL,
  `cityId` bigint(20) NOT NULL DEFAULT '5',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zipId`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zip`
--

INSERT INTO `zip` (`zipId`, `zip`, `cityId`, `status`) VALUES
(1, '700001', 1, 1),
(2, '700002', 1, 1),
(3, '700003', 1, 1),
(4, '700014', 1, 1),
(5, '700004', 1, 1),
(6, '700005', 1, 1),
(7, '700006', 1, 1),
(8, '700007', 1, 1),
(9, '700008', 1, 1),
(10, '700009', 1, 1),
(11, '700010', 1, 1),
(12, '700011', 1, 1),
(13, '700012', 1, 1),
(14, '700013', 1, 1),
(15, '700015', 1, 1),
(16, '700016', 1, 1),
(17, '700017', 1, 1),
(18, '700018', 1, 1),
(19, '700019', 1, 1),
(20, '700020', 1, 1),
(21, '700021', 1, 1),
(22, '700022', 1, 1),
(23, '700023', 1, 1),
(24, '700024', 1, 1),
(25, '700025', 1, 1),
(26, '700026', 1, 1),
(27, '700027', 1, 1),
(28, '700028', 1, 1),
(29, '700029', 1, 1),
(30, '700030', 1, 1),
(31, '700031', 1, 1),
(32, '700032', 1, 1),
(33, '700033', 1, 1),
(34, '700034', 1, 1),
(35, '700035', 1, 1),
(36, '700036', 1, 1),
(37, '700037', 1, 1),
(38, '700038', 1, 1),
(39, '700039', 1, 1),
(40, '700040', 1, 1),
(41, '700042', 1, 1),
(42, '700043', 1, 1),
(43, '700044', 1, 1),
(44, '700045', 1, 1),
(45, '700046', 1, 1),
(46, '700047', 1, 1),
(47, '700048', 1, 1),
(48, '700049', 1, 1),
(49, '700050', 1, 1),
(50, '700051', 1, 1),
(51, '700052', 1, 1),
(52, '700053', 1, 1),
(53, '700054', 1, 1),
(54, '700055', 1, 1),
(55, '700056', 1, 1),
(56, '700057', 1, 1),
(57, '700058', 1, 1),
(58, '700059', 1, 1),
(59, '700060', 1, 1),
(60, '700061', 1, 1),
(61, '700062', 1, 1),
(62, '700063', 1, 1),
(63, '700064', 1, 1),
(64, '700065', 1, 1),
(65, '700066', 1, 1),
(66, '700067', 1, 1),
(67, '700068', 1, 1),
(68, '700069', 1, 1),
(69, '700070', 1, 1),
(70, '700071', 1, 1),
(71, '700072', 1, 1),
(72, '700073', 1, 1),
(73, '700074', 1, 1),
(74, '700075', 1, 1),
(75, '700076', 1, 1),
(76, '700077', 1, 1),
(77, '700078', 1, 1),
(78, '700079', 1, 1),
(79, '700080', 1, 1),
(80, '700081', 1, 1),
(81, '700082', 1, 1),
(82, '700083', 1, 1),
(83, '700084', 1, 1),
(84, '700085', 1, 1),
(85, '700086', 1, 1),
(86, '700087', 1, 1),
(87, '700088', 1, 1),
(88, '700089', 1, 1),
(89, '700090', 1, 1),
(90, '700091', 1, 1),
(91, '700092', 1, 1),
(92, '700093', 1, 1),
(93, '700094', 1, 1),
(94, '700095', 1, 1),
(95, '700096', 1, 1),
(96, '700097', 1, 1),
(97, '700098', 1, 1),
(98, '700099', 1, 1),
(99, '700041', 1, 1),
(100, '751001', 2, 1),
(101, '751002', 2, 1),
(102, '751003', 2, 1),
(103, '751004', 2, 1),
(104, '751005', 2, 1),
(105, '751006', 2, 1),
(106, '751007', 2, 1),
(107, '751008', 2, 1),
(108, '751009', 2, 1),
(109, '751010', 2, 1),
(110, '751011', 2, 1),
(111, '751012', 2, 1),
(112, '751013', 2, 1),
(113, '751014', 2, 1),
(114, '751015', 2, 1),
(115, '751016', 2, 1),
(116, '751017', 2, 1),
(117, '751018', 2, 1),
(118, '751019', 2, 1),
(119, '751020', 2, 1),
(120, '751021', 2, 1),
(121, '751022', 2, 1),
(122, '751023', 2, 1),
(123, '751024', 2, 1),
(124, '751025', 2, 1),
(125, '751027', 2, 1),
(126, '751028', 2, 1),
(127, '751029', 2, 1),
(128, '751030', 2, 1),
(129, '751026', 2, 1),
(130, '560001', 3, 1),
(131, '560002', 3, 1),
(132, '560003', 3, 1),
(133, '560004', 3, 1),
(134, '560005', 3, 1),
(135, '560006', 3, 1),
(136, '560007', 3, 1),
(137, '560008', 3, 1),
(138, '560009', 3, 1),
(139, '560010', 3, 1),
(140, '560011', 3, 1),
(141, '560012', 3, 1),
(142, '560013', 3, 1),
(143, '560014', 3, 1),
(144, '560015', 3, 1),
(145, '560016', 3, 1),
(146, '560017', 3, 1),
(147, '560018', 3, 1),
(148, '560019', 3, 1),
(149, '560020', 3, 1),
(150, '560021', 3, 1),
(151, '560022', 3, 1),
(152, '560023', 3, 1),
(153, '560024', 3, 1),
(154, '560025', 3, 1),
(155, '560026', 3, 1),
(156, '560027', 3, 1),
(157, '560028', 3, 1),
(158, '560029', 3, 1),
(159, '560030', 3, 1),
(160, '560031', 3, 1),
(161, '560032', 3, 1),
(162, '560033', 3, 1),
(163, '560034', 3, 1),
(164, '560035', 3, 1),
(165, '560036', 3, 1),
(166, '560037', 3, 1),
(167, '560038', 3, 1),
(168, '560039', 3, 1),
(169, '560040', 3, 1),
(170, '560041', 3, 1),
(171, '560042', 3, 1),
(172, '560043', 3, 1),
(173, '560044', 3, 1),
(174, '560045', 3, 1),
(176, '560047', 3, 1),
(177, '560048', 3, 1),
(178, '560049', 3, 1),
(179, '560050', 3, 1),
(180, '560051', 3, 1),
(181, '560052', 3, 1),
(182, '560053', 3, 1),
(183, '560054', 3, 1),
(184, '560055', 3, 1),
(185, '560056', 3, 1),
(186, '560057', 3, 1),
(187, '560058', 3, 1),
(188, '560059', 3, 1),
(189, '560060', 3, 1),
(190, '560061', 3, 1),
(191, '560062', 3, 1),
(192, '560063', 3, 1),
(193, '560064', 3, 1),
(194, '560065', 3, 1),
(195, '560066', 3, 1),
(196, '560067', 3, 1),
(197, '560068', 3, 1),
(198, '560069', 3, 1),
(199, '560070', 3, 1),
(200, '560071', 3, 1),
(201, '560072', 3, 1),
(202, '560073', 3, 1),
(203, '560074', 3, 1),
(204, '560075', 3, 1),
(205, '560076', 3, 1),
(206, '560077', 3, 1),
(207, '560078', 3, 1),
(208, '560079', 3, 1),
(209, '560080', 3, 1),
(210, '560081', 3, 1),
(211, '560082', 3, 1),
(212, '560083', 3, 1),
(213, '560084', 3, 1),
(214, '560085', 3, 1),
(215, '560086', 3, 1),
(216, '560087', 3, 1),
(217, '560088', 3, 1),
(218, '560089', 3, 1),
(219, '560090', 3, 1),
(220, '560091', 3, 1),
(221, '560092', 3, 1),
(222, '560093', 3, 1),
(223, '560094', 3, 1),
(224, '560095', 3, 1),
(225, '560096', 3, 1),
(226, '560097', 3, 1),
(227, '560098', 3, 1),
(228, '560099', 3, 1),
(229, '560100', 3, 1),
(230, '411001', 4, 1),
(231, '411002', 4, 1),
(232, '411002', 4, 1),
(233, '411003', 4, 1),
(234, '411004', 4, 1),
(235, '411005', 4, 1),
(236, '411006', 4, 1),
(237, '411007', 4, 1),
(238, '411008', 4, 1),
(239, '411009', 4, 1),
(240, '411010', 4, 1),
(241, '411011', 4, 1),
(242, '411012', 4, 1),
(243, '411013', 4, 1),
(244, '411014', 4, 1),
(245, '411015', 4, 1),
(246, '411016', 4, 1),
(247, '411017', 4, 1),
(248, '411018', 4, 1),
(249, '411019', 4, 1),
(250, '411020', 4, 1),
(251, '411021', 4, 1),
(252, '411022', 4, 1),
(253, '411023', 4, 1),
(254, '411024', 4, 1),
(255, '411025', 4, 1),
(256, '411026', 4, 1),
(257, '411027', 4, 1),
(258, '411028', 4, 1),
(259, '411029', 4, 1),
(260, '411030', 4, 1),
(261, '411031', 4, 1),
(262, '411032', 4, 1),
(263, '411033', 4, 1),
(264, '411034', 4, 1),
(265, '411035', 4, 1),
(266, '411036', 4, 1),
(267, '411037', 4, 1),
(268, '411038', 4, 1),
(269, '411039', 4, 1),
(270, '411040', 4, 1),
(271, '411041', 4, 1),
(272, '411042', 4, 1),
(273, '411043', 4, 1),
(274, '411044', 4, 1),
(275, '411045', 4, 1),
(276, '411046', 4, 1),
(277, '411047', 4, 1),
(278, '411048', 4, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
