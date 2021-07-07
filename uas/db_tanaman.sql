/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - db_tanaman
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_tanaman` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_tanaman`;

/*Table structure for table `tb_brg` */

DROP TABLE IF EXISTS `tb_brg`;

CREATE TABLE `tb_brg` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nm_brg` varchar(150) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=52059 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_brg` */

insert  into `tb_brg`(`id_brg`,`nm_brg`,`merk`,`stok`,`harga`,`gambar`) values 
(1,'Bunga Anggrek','Tanaman',30,30000,'Anggrek3.jpg'),
(2,'Daun Sirih Merah','Tanaman',15,10000,'Daun_Sirih_Merah.jpg'),
(3,'Bunga Melati','Tanaman',3,25000,'Melati.jpg'),
(4,'Lidah Buaya','Tanaman',22,40000,'Lidah_Buaya.jpg'),
(5,'Tanaman Aglonema','Tanaman',5,60000,'Tanaman_Aglonema.jpg'),
(6,'Bunga Melati Jepang','Tanaman',10,45000,'Melati_Jepang.jpg'),
(7,'Kaktus','Tanaman',20,20000,'Kaktus.jpg');

/*Table structure for table `tb_jual` */

DROP TABLE IF EXISTS `tb_jual`;

CREATE TABLE `tb_jual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_jual` */

insert  into `tb_jual`(`id`,`nama`,`alamat`,`tgl_pesan`,`batas_bayar`) values 
(12,'Shinta','Cepu','2021-06-10 19:38:55','2021-06-11 19:38:55');

/*Table structure for table `tb_pesanan` */

DROP TABLE IF EXISTS `tb_pesanan`;

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jual` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nm_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_pesanan` */

insert  into `tb_pesanan`(`id`,`id_jual`,`id_brg`,`nm_brg`,`jumlah`,`harga`,`pilihan`) values 
(22,12,2,'Daun Sirih Merah',1,10000,'');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nama`,`username`,`password`,`role_id`) values 
(1,'admin','admin','admin',1),
(2,'shinta','shinta','shinta',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
