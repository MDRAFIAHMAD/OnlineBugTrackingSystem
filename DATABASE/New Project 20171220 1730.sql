-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema triage
--

CREATE DATABASE IF NOT EXISTS triage;
USE triage;

--
-- Definition of table `bug`
--

DROP TABLE IF EXISTS `bug`;
CREATE TABLE `bug` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `summary` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `product` varchar(45) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `importance` varchar(45) NOT NULL,
  `dev` varchar(45) default 'Not Assigned',
  `status` varchar(45) default 'Not Assigned',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bug`
--

/*!40000 ALTER TABLE `bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug` ENABLE KEYS */;


--
-- Definition of table `hist`
--

DROP TABLE IF EXISTS `hist`;
CREATE TABLE `hist` (
  `id` int(10) unsigned default NULL,
  `dat` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `dev` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `summary` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hist`
--

/*!40000 ALTER TABLE `hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `domain` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `loc` varchar(45) NOT NULL,
  `jdt` varchar(45) NOT NULL,
  `status` varchar(45) default 'Pending',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
