/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - db_ims
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_ims` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_ims`;

/*Table structure for table `tb_inbox` */

DROP TABLE IF EXISTS `tb_inbox`;

CREATE TABLE `tb_inbox` (
  `id_inbox` int(11) NOT NULL AUTO_INCREMENT,
  `pesan_inbox` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_inbox`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tb_inbox` */

insert  into `tb_inbox`(`id_inbox`,`pesan_inbox`) values 
(1,'halo'),
(2,'hai'),
(3,'yuuuhu'),
(4,'wuhuuu'),
(5,'wuii'),
(6,'wuii'),
(7,'wuhu'),
(8,'halo'),
(9,'hai'),
(10,'hai'),
(11,'hai'),
(12,'haii'),
(13,'hai');

/*Table structure for table `tb_outbox` */

DROP TABLE IF EXISTS `tb_outbox`;

CREATE TABLE `tb_outbox` (
  `id_outbox` int(11) NOT NULL AUTO_INCREMENT,
  `pesan_outbox` varchar(255) DEFAULT NULL,
  `flag` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id_outbox`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tb_outbox` */

insert  into `tb_outbox`(`id_outbox`,`pesan_outbox`,`flag`) values 
(1,'yuuuhu juga','1'),
(2,'wuhuuu juga','1'),
(3,'wuii juga','1'),
(4,'wuii juga','1'),
(5,'wuhu juga','1'),
(6,'halo juga','1'),
(7,'hai juga','1'),
(8,'hai juga','1'),
(9,'hai juga','1'),
(10,'haii juga','1'),
(11,'hai juga','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
