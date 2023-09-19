-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 04, 2022 at 04:09 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: pos
--

-- --------------------------------------------------------

--
-- Table structure for table category
--

DROP TABLE IF EXISTS category;
CREATE TABLE IF NOT EXISTS category (
  cid int(5) NOT NULL,
  cname varchar(20) DEFAULT NULL,
  cdesc varchar(30) DEFAULT NULL,
  PRIMARY KEY (cid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table category
--

INSERT INTO category (cid, cname, cdesc) VALUES
(56, 'meet', 'uyu'),
(34, 'sdf', 'gfd'),
(5, 'loi', 'jk');

-- --------------------------------------------------------

--
-- Table structure for table products
--

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  pid int(5) NOT NULL,
  pname varchar(15) DEFAULT NULL,
  pqty int(5) DEFAULT NULL,
  price int(7) DEFAULT NULL,
  category varchar(10) DEFAULT NULL,
  PRIMARY KEY (pid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table products
--

INSERT INTO products (pid, pname, pqty, price, category) VALUES
(45, 'cola', 67, 10, 'meet'),
(5679, 'guihyu', 0, 55667, 'meet');

-- --------------------------------------------------------

--
-- Table structure for table register
--

DROP TABLE IF EXISTS register;
CREATE TABLE IF NOT EXISTS register (
  name varchar(30) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  tp int(10) DEFAULT NULL,
  password varchar(20) DEFAULT NULL,
  secquestn varchar(50) DEFAULT NULL,
  answer varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table register
--

INSERT INTO register (`name`, email, tp, `password`, secquestn, answer) VALUES
('moni', 'ijas@h', 98765, '098', 'poligyg', 'fdgf'),
('mohemed', 'ijas@g', 7896543, '098', 'What is your favourrite colour?', 'poli');

-- --------------------------------------------------------

--
-- Table structure for table seller
--

DROP TABLE IF EXISTS seller;
CREATE TABLE IF NOT EXISTS seller (
  sid int(5) NOT NULL,
  sname varchar(20) DEFAULT NULL,
  spassword varchar(15) DEFAULT NULL,
  gender varchar(10) DEFAULT NULL,
  PRIMARY KEY (sid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table seller
--

INSERT INTO seller (sid, sname, spassword, gender) VALUES
(43543534, 'bgfdbdgfhioty', 'rtghrtyu', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table updateadmin
--

DROP TABLE IF EXISTS updateadmin;
CREATE TABLE IF NOT EXISTS updateadmin (
  adname varchar(20) DEFAULT NULL,
  adpassword varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS `user` (
  name varchar(30) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  tp int(10) DEFAULT NULL,
  password varchar(20) DEFAULT NULL,
  securiy varchar(50) DEFAULT NULL,
  answer varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, email, tp, `password`, securiy, answer) VALUES
('ijas', 'ahamadijas14@gmail.com', 771177, 'hjkl', 'What is your favourrite colour?', 'green'),
('xdsr', 'ahamadijas14@gmail.com', 771177881, 'asdf', 'What is your favourrite colour?', 'green');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
