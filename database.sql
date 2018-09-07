/*
SQLyog Community v12.2.4 (64 bit)
MySQL - 5.7.14 : Database - example_crud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`example_crud` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `example_crud`;

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `file_url` varchar(250) CHARACTER SET utf8 NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=1703 DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`file_url`,`jobTitle`) values 
(1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1','','President'),
(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1','','VP Sales'),
(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1','','VP Marketing'),
(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6','','Sales Manager (APAC)'),
(1102,'Steven','Gerard','x5408','gbondur@classicmodelcars.com','','pdftest.pdf','Sale Manager (EMEA)'),
(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1','','Sales Manager (NA)'),
(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1','','Sales Rep'),
(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1','','Sales Rep'),
(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2','test-2.pdf','Sales Rep'),
(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2','','Sales Rep'),
(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3','','Sales Rep'),
(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3','','Sales Rep'),
(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4','','Sales Rep'),
(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4','','Sales Rep'),
(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4','','Sales Rep'),
(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7','','Sales Rep'),
(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7','','Sales Rep'),
(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6','','Sales Rep'),
(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6','','Sales Rep'),
(1619,'King','Tom','x103','tking@classicmodelcars.com','6','','Sales Rep'),
(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5','','Sales Rep'),
(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5','','Sales Rep'),
(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4','','Sales Rep');

/*Table structure for table `offices` */

DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressLine1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `offices` */

insert  into `offices`(`id`,`city`,`country`,`phone`,`addressLine1`,`postalCode`) values 
(1,'KL','Malaysia','5449982','4-14-14, JLN PJS 9/1','46150');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
