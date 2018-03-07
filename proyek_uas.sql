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

/*Table structure for table `artikel` */

DROP TABLE IF EXISTS `artikel`;

CREATE TABLE `artikel` (
  `id_artikel` varchar(100) NOT NULL,
  `judul_artikel` varchar(200) DEFAULT NULL,
  `isi_artikel` varchar(250) DEFAULT NULL,
  `tgl_artikel` date DEFAULT NULL,
  `photo_artikel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `artikel` */

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `pekerjaan` varchar(10) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengguna` */

insert  into `pengguna`(`id`,`password`,`nama`,`no_telp`,`pekerjaan`,`email`,`alamat`,`status`) values ('AD_12','admin','Dedy','082331487337','Admin','','Srono','admin'),('AD_13','nadia123','Putri Nadia','081938680805','Mahasiswa','nadiaayx@g','Rogojampi','admin');

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

insert  into `tbl_pasien`(`kode_pasien`,`nama`,`gender`,`alamat`,`usia`) values ('345675432','ytrtgf','Perempuan','sdad',23),('3457786551245','Aslamiyh','Perempuan','Kwdungrejo',34),('547','uweyieh','Perempuan','uewyr',76),('7648758','agung','LakiLaki','Banyuwangi',20),('775676897','ityi','Perempuan','kgkgk',34),('87645324','fggf','LakiLaki','dfgd',12),('89684346534','uyru','Perempuan','kjgi',23),('9876543','asdad','LakiLaki','asda',23),('98765433456','jakshda','Perempuan','sakhgdkaj',23),('9876545','sjcak','Perempuan','jsdga',14);

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

insert  into `tbl_periksa`(`no_antrian`,`kode_pasien`,`tanggal`,`keluhan`,`cek`) values ('ANT-1','3457786551245','2018-03-05','Sakit pinggang','BELUM'),('ANT-1','89684346534','2018-03-06','jhsgdksax','BELUM'),('ANT-1','','2018-03-06','','BELUM'),('ANT-2','345675432','2018-03-06','dfsaf','BELUM'),('ANT-2','87645324','2018-03-06','fgs','BELUM'),('ANT-1','9876543','2018-03-06','faafa','BELUM'),('ANT-1','98765433456','2018-03-06','ksjadk','BELUM'),('ANT-2','547','2018-03-06','wyegri','BELUM'),('ANT-1','9876545','2018-03-06','ksjda','BELUM'),('ANT-1','7648758','2018-03-06','sakit','BELUM'),('ANT-1','775676897','2018-03-06','kgkjb','BELUM');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
