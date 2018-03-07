/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.27 : Database - proyek_uas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyek_uas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyek_uas`;

/*Table structure for table `rut` */

DROP TABLE IF EXISTS `rut`;

CREATE TABLE `rut` (
  `urut` int(11) NOT NULL AUTO_INCREMENT,
  KEY `urut` (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rut` */

/*Table structure for table `tbl_antrian` */

DROP TABLE IF EXISTS `tbl_antrian`;

CREATE TABLE `tbl_antrian` (
  `no_antrian` varchar(10) DEFAULT NULL,
  `kode_pasien` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_antrian` */

insert  into `tbl_antrian`(`no_antrian`,`kode_pasien`,`tanggal`) values ('ANT-1','','2017-12-01'),('ANT-1','0987654321','2017-12-04');

/*Table structure for table `tbl_pasien` */

DROP TABLE IF EXISTS `tbl_pasien`;

CREATE TABLE `tbl_pasien` (
  `kode_pasien` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `usia` int(3) DEFAULT NULL,
  PRIMARY KEY (`kode_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pasien` */

insert  into `tbl_pasien`(`kode_pasien`,`nama`,`gender`,`alamat`,`usia`) values ('0987654321','ghj','LakiLaki','licin',16),('123456789034','Mas wahyu','LakiLaki','rogojampi',20),('2345678','inung','Perempuan','rogojampi',20),('4598765478','def','LakiLaki','Banyuwangi',17),('876543230987','inung','LakiLaki','rogojampi',19),('876543456','asus','Perempuan','bwi',12),('c','abc','LakiLaki','bwi',19);

/*Table structure for table `tbl_periksa` */

DROP TABLE IF EXISTS `tbl_periksa`;

CREATE TABLE `tbl_periksa` (
  `no_antrian` varchar(10) DEFAULT NULL,
  `kode_pasien` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keluhan` varchar(50) DEFAULT NULL,
  `cek` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_periksa` */

insert  into `tbl_periksa`(`no_antrian`,`kode_pasien`,`tanggal`,`keluhan`,`cek`) values ('ANT-1','311609654567','2017-11-27','batuk','DIPERIKSA'),('ANT-2','4598765478','2017-11-27','batuk','DIPERIKSA'),('ANT-3','311609654567','2017-11-27','telinga','DIPERIKSA'),('ANT-4','876543456','2017-11-27','batuk','DIPERIKSA'),('ANT-1','2345678','2017-11-27','batuk','DIPERIKSA'),('ANT-1','123456789034','2017-11-28','batuk','BELUM'),('ANT-1','876543230987','2017-11-28','batuk','DIPERIKSA'),('ANT-1','','2017-12-01','','BELUM'),('ANT-1','0987654321','2017-12-04','kaki bengkak','BELUM');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
