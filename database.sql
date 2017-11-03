-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 03, 2017 at 04:54 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se project`
--
CREATE DATABASE IF NOT EXISTS `se project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `se project`;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_customer`
--

DROP TABLE IF EXISTS `corporate_customer`;
CREATE TABLE IF NOT EXISTS `corporate_customer` (
  `comppany_customer_id` int(11) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `phone` int(11) NOT NULL,
  `company_address` varchar(40) NOT NULL,
  PRIMARY KEY (`comppany_customer_id`),
  UNIQUE KEY `company_name` (`company_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_id` (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone`
--

DROP TABLE IF EXISTS `customer_phone`;
CREATE TABLE IF NOT EXISTS `customer_phone` (
  `c_id` int(11) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_agent`
--

DROP TABLE IF EXISTS `delivery_agent`;
CREATE TABLE IF NOT EXISTS `delivery_agent` (
  `agent_id` int(11) NOT NULL,
  `agency_name` varchar(40) NOT NULL,
  `office_address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `individual_customer`
--

DROP TABLE IF EXISTS `individual_customer`;
CREATE TABLE IF NOT EXISTS `individual_customer` (
  `name` varchar(20) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  KEY `phone` (`phone`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `weight` float NOT NULL,
  `description` varchar(40) DEFAULT NULL,
  `dimension` float NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `track_id` (`track_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reciever`
--

DROP TABLE IF EXISTS `reciever`;
CREATE TABLE IF NOT EXISTS `reciever` (
  `reciever_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(40) NOT NULL,
  PRIMARY KEY (`reciever_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
CREATE TABLE IF NOT EXISTS `rewards` (
  `c_id` int(11) NOT NULL,
  `reward_point` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
