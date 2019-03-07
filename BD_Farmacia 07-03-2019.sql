/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - moduloprueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`moduloprueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `moduloprueba`;

/*Table structure for table `bitacora_faltantes` */

DROP TABLE IF EXISTS `bitacora_faltantes`;

CREATE TABLE `bitacora_faltantes` (
  `id_bitacora_faltantes` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `cantidad` int(20) NOT NULL,
  PRIMARY KEY (`id_bitacora_faltantes`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `bitacora_faltantes` */

insert  into `bitacora_faltantes`(`id_bitacora_faltantes`,`id_producto`,`id_usuario`,`fecha_registro`,`cantidad`) values (1,21,NULL,'2018-12-11 23:58:25',15),(2,21,NULL,'2018-12-12 00:12:23',12),(3,22,NULL,'2018-12-13 16:29:18',200),(4,21,NULL,'2018-12-13 16:29:18',100),(5,23,NULL,'2018-12-13 16:29:18',300),(6,24,NULL,'2018-12-13 16:29:18',400),(7,25,NULL,'2018-12-13 16:29:18',500),(8,27,NULL,'2018-12-13 16:29:18',600);

/*Table structure for table `bitacora_precios` */

DROP TABLE IF EXISTS `bitacora_precios`;

CREATE TABLE `bitacora_precios` (
  `id_bitacora_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `precio_compra` double(5,2) NOT NULL,
  `precio_venta` double(5,2) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_bitacora_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `bitacora_precios` */

insert  into `bitacora_precios`(`id_bitacora_precio`,`id_producto`,`precio_compra`,`precio_venta`,`fecha_registro`,`id_usuario`) values (1,30,15.60,32.60,'2018-12-18 03:27:01',2),(2,28,0.63,0.64,'0000-00-00 00:00:00',2),(3,28,0.89,0.92,'0000-00-00 00:00:00',2),(4,28,0.96,0.97,'0000-00-00 00:00:00',2),(5,28,0.89,0.92,'0000-00-00 00:00:00',2),(6,28,0.89,0.92,'0000-00-00 00:00:00',2),(7,28,0.89,0.92,'2018-12-19 23:39:46',2),(8,28,0.63,0.92,'2018-12-19 23:41:55',2),(9,28,0.89,0.92,'2018-12-19 00:01:25',2),(10,28,0.63,1.24,'2018-12-20 00:45:54',2),(11,28,0.96,0.97,'2018-12-20 00:49:40',2),(12,27,1.62,1.96,'2018-12-20 01:22:29',2),(13,23,1.92,2.20,'2018-12-20 01:25:44',2),(14,31,0.65,0.90,'2018-12-20 13:05:03',2),(15,24,0.26,0.30,'2018-12-21 01:03:22',2),(16,24,0.56,0.57,'2018-12-21 01:15:00',2),(17,28,0.90,0.96,'2018-12-21 01:39:54',2),(18,31,0.65,0.65,'2018-12-21 03:13:21',2),(19,32,2.60,2.80,'2018-12-21 11:10:45',2),(20,31,0.67,0.65,'2018-12-21 11:55:28',2),(21,31,0.63,0.79,'2018-12-21 12:27:19',2),(22,31,0.68,0.69,'2019-01-02 15:23:05',2),(23,31,0.65,0.90,'2019-01-02 15:24:23',2),(24,27,1.42,1.78,'2019-01-02 16:01:12',2),(25,27,1.56,1.57,'2019-01-02 16:02:10',2),(26,28,0.63,1.24,'2019-01-03 02:12:54',2),(27,27,1.56,1.57,'2019-01-03 17:10:12',2),(28,27,1.42,1.78,'2019-01-03 17:10:29',2),(29,27,1.62,1.96,'2019-01-03 17:10:41',2),(30,31,0.63,0.79,'2019-01-03 17:11:01',2),(31,31,0.65,0.90,'2019-01-03 17:11:06',2);

/*Table structure for table `cabecera_compra` */

DROP TABLE IF EXISTS `cabecera_compra`;

CREATE TABLE `cabecera_compra` (
  `id_cabecera_compra` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proveedor` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `plazo` varchar(45) NOT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `id_tipoPago` bigint(20) NOT NULL,
  `iva` decimal(10,7) NOT NULL,
  `descuento` decimal(10,7) NOT NULL,
  `total` decimal(10,7) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`id_cabecera_compra`),
  KEY `fk_proveedor_cabcom` (`id_proveedor`),
  KEY `fk_sucursal_cabecera` (`id_sucursal`),
  KEY `fk_cabecera_TipoPago` (`id_tipoPago`),
  CONSTRAINT `fk_cabecera_TipoPago` FOREIGN KEY (`id_tipoPago`) REFERENCES `pagos` (`id_pagos`),
  CONSTRAINT `fk_proveedor_cabcom` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `fk_sucursal_cabcom` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `cabecera_compra` */

insert  into `cabecera_compra`(`id_cabecera_compra`,`id_proveedor`,`id_usuario`,`fecha_creacion`,`plazo`,`id_sucursal`,`id_tipoPago`,`iva`,`descuento`,`total`,`estado`) values (1,16,2,'2019-02-08 12:36:24','Inmediato',2,1,6.8580000,0.0000000,119.0880000,'A'),(2,8,2,'2019-02-09 07:38:28','Inmediato',2,1,25.5180000,0.0000000,534.9380000,'A'),(3,10,2,'2019-02-09 08:02:32','Inmediato',2,1,0.5400000,0.0000000,5.0400000,'A'),(4,15,2,'2019-02-09 08:09:51','Inmediato',2,1,15.2460000,0.0000000,286.5460000,'A'),(5,11,2,'2019-02-09 08:14:28','Inmediato',2,1,2.8368000,0.0000000,53.2968000,'A'),(6,8,2,'2019-02-26 04:52:36','12 Meses',2,1,5.4400000,0.0000000,42.2100000,'A'),(7,6,2,'2019-02-26 04:56:28','Inmediato',2,1,0.0000000,0.0000000,54.7200000,'A'),(8,7,2,'2019-02-26 05:01:12','6 Meses',2,1,2.0700000,23.5000000,648.6000000,'A'),(9,11,2,'2019-02-26 05:05:39','Inmediato',2,1,1.8000000,0.0000000,16.8000000,'A'),(10,6,2,'2019-02-26 05:17:50','24 Meses',2,1,3.9600000,0.0000000,36.9600000,'A'),(11,5,2,'2019-02-26 05:44:37','Inmediato',2,1,1.3500000,0.0000000,12.6000000,'A'),(12,14,2,'2019-03-05 10:27:23','6 Meses',2,1,4.5400000,0.0000000,42.3900000,'A'),(13,11,2,'2019-03-06 06:59:55','3 Meses',2,1,3.0060000,0.3300000,26.9760000,'A'),(14,16,2,'2019-03-07 11:53:23','Inmediato',2,1,0.0000000,0.0000000,62.6400000,'A');

/*Table structure for table `cabecera_nota_pedidos` */

DROP TABLE IF EXISTS `cabecera_nota_pedidos`;

CREATE TABLE `cabecera_nota_pedidos` (
  `id_cabecera_nota_pedidos` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` bigint(11) NOT NULL,
  `id_usuario` bigint(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `estado` varchar(2) NOT NULL,
  `plazo` varchar(45) NOT NULL,
  `forma_pago` varchar(45) NOT NULL,
  `iva` double NOT NULL,
  `descuento` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id_cabecera_nota_pedidos`),
  KEY `fk_cabecera_nota_pedidos_proveedor_idx` (`id_proveedor`),
  KEY `fk_cabecera_nota_pedidos_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_cabecera_nota_pedidos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Data for the table `cabecera_nota_pedidos` */

insert  into `cabecera_nota_pedidos`(`id_cabecera_nota_pedidos`,`id_proveedor`,`id_usuario`,`fecha_creacion`,`estado`,`plazo`,`forma_pago`,`iva`,`descuento`,`total`) values (25,6,2,'2019-01-21 11:09:36','SI','6 Meses','Credito',2.9999997,2.9999997,5.9999994),(26,7,2,'2019-01-21 11:10:09','SI','3 Meses','Credito',0,0,170.36),(27,5,2,'2019-01-21 11:10:58','SI','Inmediato','Contado',8.1,5.4,167.7),(28,14,2,'2019-01-21 11:13:09','SI','Inmediato','Contado',34.88,38.88,2264.2),(29,11,2,'2019-01-21 11:13:46','SI','Inmediato','Contado',34.88,38.88,2346.28),(30,13,2,'2019-01-21 11:16:43','SI','3 Meses','Credito',13.5,5.63,657.27),(31,15,2,'2019-01-23 18:27:21','SI','6 Meses','Contado',0,6.28,1698.24),(32,15,2,'2019-01-24 16:00:41','SI','9 Meses','Contado',20.97,26.8,1973.62),(33,8,2,'2019-01-29 17:20:46','SI','6 Meses','Contado',0,1.65,53.43),(34,5,2,'2019-01-29 17:21:47','SI','3 Meses','Contado',0,0,63.9),(35,11,2,'2019-01-30 00:35:57','SI','6 Meses','Contado',0,0.4,53.78),(36,16,2,'2019-01-30 09:24:24','SI','6 Meses','Contado',12.58,0,117.43),(37,16,2,'2019-01-31 15:29:24','SI','Inmediato','Contado',5.84,98.7,1600.84),(38,7,2,'2019-01-31 15:42:05','SI','9 Meses','Contado',1.79,39.48,1293.26),(39,7,2,'2019-02-05 23:47:00','SI','3 Meses','Contado',0,0,32.66),(40,7,2,'2019-02-06 10:47:03','SI','Inmediato','Contado',0,0,275.58),(41,14,2,'2019-02-06 13:08:19','SI','Inmediato','Contado',4,0.16,113.74),(42,15,2,'2019-02-06 13:45:34','SI','3 Meses','Contado',4,0.16,113.74),(43,15,2,'2019-02-06 13:47:10','SI','Inmediato','Contado',26.48,1.17,275.24),(44,5,2,'2019-02-06 13:51:24','SI','Inmediato','Contado',0,0,48.28),(45,13,2,'2019-02-06 14:24:08','SI','Inmediato','Contado',3.29,0,30.74),(46,6,2,'2019-02-06 14:28:28','SI','Inmediato','Contado',18.78,0,175.29),(47,13,2,'2019-02-06 14:33:01','SI','Inmediato','Contado',3.06,0,851.06),(48,8,2,'2019-02-06 15:04:44','SI','Inmediato','Contado',0,0,62.81),(49,15,2,'2019-02-06 03:11:27','SI','Inmediato','Contado',4.06,0,37.93),(50,16,2,'2019-02-07 01:20:14','NO','Inmediato','Contado',6.858,0,119.088),(51,14,2,'2019-02-08 16:42:23','SI','Inmediato','Contado',19.45,5.13,223.41),(52,15,2,'2019-02-08 17:33:58','SI','Inmediato','Contado',18.13,0,169.18),(53,14,2,'2019-02-09 16:29:25','SI','Inmediato','Contado',4.05,0,37.8),(54,15,2,'2019-02-09 16:32:33','SI','Inmediato','Contado',4.41,0,41.16),(55,11,2,'2019-02-09 16:35:28','SI','Inmediato','Contado',33.5076,0,312.7376),(56,8,2,'2019-02-09 16:54:56','NO','Inmediato','Contado',25.518,0,534.938),(57,16,2,'2019-02-09 19:58:18','SI','Inmediato','Contado',4.05,0,37.8),(58,10,2,'2019-02-09 20:00:40','NO','Inmediato','Contado',0.54,0,5.04),(59,15,2,'2019-02-09 20:09:11','NO','Inmediato','Contado',15.25,0,286.55),(60,11,2,'2019-02-09 20:14:01','NO','Inmediato','Contado',2.84,0,53.3),(61,14,2,'2019-02-09 22:46:59','SI','Inmediato','Contado',1.674,0,22.104),(62,13,2,'2019-02-09 22:51:17','SI','Inmediato','Contado',1.6092,0,15.0192),(63,15,2,'2019-02-09 23:18:18','SI','Inmediato','Contado',4.362,0,40.712),(64,11,2,'2019-02-10 00:06:19','SI','Inmediato','Contado',0,0,10.36),(65,8,2,'2019-02-10 00:10:53','SI','Inmediato','Contado',5.0544,0,47.1744),(66,15,2,'2019-02-10 00:25:45','SI','Inmediato','Contado',1.206,0.576,87.76),(67,13,2,'2019-02-11 17:32:11','SI','Inmediato','Contado',0,0,124.96),(68,15,2,'2019-02-11 20:26:52','SI','3 Meses','Contado',6.546,0,61.096),(69,15,2,'2019-02-11 20:30:11','SI','Inmediato','Contado',0,0,78.58),(70,11,2,'2019-02-12 00:47:20','SI','6 Meses','Contado',0,0,95),(71,10,2,'2019-02-12 00:52:17','SI','Inmediato','Contado',0,0,88.31),(72,10,2,'2019-02-12 01:24:11','SI','Inmediato','Contado',0,0,214.68),(73,6,2,'2019-02-12 01:32:51','SI','Inmediato','Contado',0,0,66.74),(74,13,2,'2019-02-12 17:55:59','SI','Inmediato','Contado',0.18,0,70.9),(75,6,2,'2019-02-19 17:43:25','NO','Inmediato','Contado',0,0,54.72),(76,8,2,'2019-02-19 23:39:00','NO','12 Meses','Contado',5.44,0,42.21),(77,7,2,'2019-02-26 17:00:28','NO','6 Meses','Contado',2.07,23.5,648.6),(78,11,2,'2019-02-26 17:03:47','NO','Inmediato','Contado',1.8,0,16.8),(79,6,2,'2019-02-26 17:17:31','NO','24 Meses','Contado',3.96,0,36.96),(80,5,2,'2019-02-26 17:44:17','NO','Inmediato','Contado',1.35,0,12.6),(81,14,2,'2019-03-05 22:26:34','EF','6 Meses','Contado',4.542,0,42.392),(82,11,2,'2019-03-06 15:46:10','EF','3 Meses','Contado',3.006,0.315,26.241),(83,16,2,'2019-03-07 11:52:31','EF','Inmediato','Contado',0,0,68.32);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_Clientes` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cedula` text NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Direccion` text NOT NULL,
  `Fecha_reg` date NOT NULL,
  `Estado` char(1) NOT NULL,
  `str_telefono` text NOT NULL,
  `str_correo` text NOT NULL,
  PRIMARY KEY (`id_Clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

insert  into `clientes`(`id_Clientes`,`Cedula`,`Nombre`,`Apellido`,`Direccion`,`Fecha_reg`,`Estado`,`str_telefono`,`str_correo`) values (1,'0952364855','KELLY','MERCADO','GUAYAQUIL','2018-12-04','I','',''),(2,'0932067010','JOSE FRANCISCO','LOPEZ MACIAS','GUAYAQUIL','2019-01-02','A','0985849256 CONVENCIONAL','gmail'),(3,'0924876015','JUAN','TOMALA','COOP FLORIDA NORET','2018-12-10','A','0999999999 CONVENCIONAL','jeff@gmail.com'),(4,'0924876251','LAURA  MARIA','TOMALA','VALERIO ESTACIO','2018-12-21','A','2154151521356 CONVENCIONAL','jdsb@gmail.com'),(5,'0944037977','ALEX','MARIN','SEDALANA Y LA 10MA','2018-12-10','I','0993387081 CELULAR','am3377944@gmail.com'),(6,'0912232525','FIORELLA','SABANDO','PORTETE ','2018-12-10','A','0991232552 CELULAR','fiosaban2@gmail.com'),(7,'0991251252','JAIRO','SANTA FE','GUAYAQUIL','2018-12-10','A','0994521252 CELULAR ','sua@hotmail.es'),(8,'0931978365','ARISTIDES','BAJAÑA','GUASMO NORTE','2019-01-23','A','4767657876767 CONVENCIONAL','wbm.andres@gmail.com'),(9,'9348974397','KELLY JACINTA','MONTECARBO','LALA','2019-02-11','A','5435345346 CONVENCIONAL','4btrb@hotmail.com');

/*Table structure for table `correo` */

DROP TABLE IF EXISTS `correo`;

CREATE TABLE `correo` (
  `id_Correo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Correo` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `correo` */

insert  into `correo`(`id_Correo`,`Correo`,`Cedula`) values (1,'marin.hotmail.com',''),(3,'123.gmail',''),(4,'aaa.gmail',''),(5,'gmail','3333333333'),(6,'hotmail','0932067010'),(7,'hotmail','5555555555'),(8,'hhhhh','0932067010'),(9,'gmail','0932067010'),(10,'hotmail.es','5555555555'),(11,'jeff@gmail.com','0924876015'),(12,'jdsb@gmail.com','0924876251'),(13,'am3377944@gmail.com','0944037977'),(14,'fiosaban2@gmail.com','0912232525'),(15,'sua@hotmail.es','0991251252'),(16,'wbm.andres@gmail.com','0931978365'),(17,'675675@','091327918856'),(18,'4btrb@hotmail.com','9348974397');

/*Table structure for table `detalle_compra` */

DROP TABLE IF EXISTS `detalle_compra`;

CREATE TABLE `detalle_compra` (
  `id_detalle_compra` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cabecera_compra` bigint(20) NOT NULL,
  `id_precio` bigint(20) NOT NULL,
  `cantidad` bigint(20) NOT NULL,
  `precio` decimal(10,7) NOT NULL,
  `descuento` decimal(10,7) NOT NULL,
  `iva` decimal(10,7) NOT NULL,
  `total` decimal(10,7) NOT NULL,
  `bono` bigint(20) NOT NULL,
  PRIMARY KEY (`id_detalle_compra`),
  KEY `fk_cabcom_detcom` (`id_cabecera_compra`),
  KEY `fk_det_precios` (`id_precio`),
  CONSTRAINT `fk_cabcom_detcom` FOREIGN KEY (`id_cabecera_compra`) REFERENCES `cabecera_compra` (`id_cabecera_compra`),
  CONSTRAINT `fk_det_precios` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_compra` */

insert  into `detalle_compra`(`id_detalle_compra`,`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,`bono`) values (1,1,42,34,1.6200000,0.0000000,0.0000000,55.0800000,0),(2,1,44,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(3,1,13,36,0.6000000,0.0000000,2.8080000,26.2080000,3),(4,2,40,42,2.3400000,0.0000000,0.0000000,98.2800000,0),(5,2,26,80,1.9200000,0.0000000,0.0000000,153.6000000,0),(6,2,44,49,0.7500000,0.0000000,4.4100000,41.1600000,0),(7,2,35,67,0.6700000,0.0000000,0.0000000,44.8900000,0),(8,2,39,50,2.7900000,0.0000000,16.7400000,156.2400000,0),(9,2,27,56,0.6500000,0.0000000,4.3680000,40.7680000,0),(10,3,44,6,0.7500000,0.0000000,0.5400000,5.0400000,0),(11,4,44,34,0.7500000,0.0000000,3.0600000,28.5600000,0),(12,4,27,6,0.6500000,0.0000000,0.4680000,4.3680000,0),(13,4,41,6,23.5000000,0.0000000,0.0000000,141.0000000,0),(14,4,39,35,2.7900000,0.0000000,11.7180000,109.3680000,0),(15,4,13,5,0.6500000,0.0000000,0.0000000,3.2500000,0),(16,5,44,4,0.7500000,0.0000000,0.3600000,3.3600000,0),(17,5,27,6,0.6500000,0.0000000,0.4680000,4.3680000,0),(18,5,35,6,0.6700000,0.0000000,0.0000000,4.0200000,0),(19,5,42,5,4.5600000,0.0000000,0.0000000,22.8000000,0),(20,5,39,6,2.7900000,0.0000000,2.0088000,18.7488000,0),(21,7,42,12,4.5600000,0.0000000,0.0000000,54.7200000,0),(22,8,44,23,0.7500000,0.0000000,2.0700000,19.3200000,0),(23,8,41,25,23.5000000,23.5000000,0.0000000,564.0000000,0),(24,8,26,34,1.7643243,0.0000000,0.0000000,65.2800000,3),(25,9,44,20,0.7500000,0.0000000,1.8000000,16.8000000,0),(26,10,44,44,0.7500000,0.0000000,3.9600000,36.9600000,0),(27,11,44,15,0.7500000,0.0000000,1.3500000,12.6000000,0),(28,12,44,21,0.7500000,0.0000000,1.8900000,17.6400000,0),(29,12,27,34,0.6500000,0.0000000,2.6520000,24.7520000,0),(30,13,44,21,0.7500000,0.3150000,2.0700000,17.5050000,0),(31,13,27,12,0.6500000,0.0000000,0.9360000,8.7360000,0),(32,14,24,16,1.4200000,0.0000000,0.0000000,22.7200000,0),(33,14,42,10,4.5600000,0.0000000,0.0000000,45.6000000,0);

/*Table structure for table `detalle_faltantes` */

DROP TABLE IF EXISTS `detalle_faltantes`;

CREATE TABLE `detalle_faltantes` (
  `id_detalle_faltantes` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`id_detalle_faltantes`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `fk_pro_detfal` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_faltantes` */

insert  into `detalle_faltantes`(`id_detalle_faltantes`,`id_producto`,`id_usuario`,`fecha_registro`,`cantidad`,`estado`) values (2,21,NULL,'2018-12-13 16:29:18',90,'OK'),(3,22,NULL,'2018-12-13 16:29:18',200,'OK'),(4,23,NULL,'2018-12-13 16:29:18',300,'OK'),(5,25,NULL,'2018-12-13 16:29:18',500,'OK'),(6,24,NULL,'2018-12-13 16:29:18',400,'OK'),(10,27,NULL,'2018-12-13 16:29:18',588,'OK'),(11,32,NULL,'2019-01-14 00:00:00',10,'OK'),(12,31,2,'2019-01-14 00:00:00',0,'OK'),(13,33,2,'2019-01-20 12:40:12',0,'OK'),(14,34,NULL,'2019-02-25 00:00:00',0,'NO'),(15,35,NULL,'2019-02-25 00:00:00',0,'NO');

/*Table structure for table `detalle_nota_pedidos` */

DROP TABLE IF EXISTS `detalle_nota_pedidos`;

CREATE TABLE `detalle_nota_pedidos` (
  `id_detalle_nota_pedidos` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_precio` bigint(11) NOT NULL,
  `id_cabecera_nota_pedidos` bigint(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,7) NOT NULL,
  `descuento` decimal(10,7) NOT NULL,
  `iva` decimal(10,7) NOT NULL,
  `total` decimal(10,7) NOT NULL,
  `bono` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_cabecera_idx` (`id_cabecera_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_precio_idx` (`id_precio`),
  CONSTRAINT `fk_detalle_nota_pedidos_cabecera` FOREIGN KEY (`id_cabecera_nota_pedidos`) REFERENCES `cabecera_nota_pedidos` (`id_cabecera_nota_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_nota_pedidos_precio` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_nota_pedidos` */

insert  into `detalle_nota_pedidos`(`id_detalle_nota_pedidos`,`id_precio`,`id_cabecera_nota_pedidos`,`cantidad`,`precio`,`descuento`,`iva`,`total`,`bono`) values (34,42,25,10,0.9999999,0.0000000,0.0000000,0.9999999,0),(35,13,25,150,0.9999999,0.9999999,0.9999999,0.9999999,0),(36,26,25,50,0.9999999,0.9999999,0.9999999,0.9999999,0),(37,35,25,70,0.9999999,0.9999999,0.9999999,0.9999999,0),(38,24,25,80,0.9999999,0.0000000,0.0000000,0.9999999,0),(39,25,25,30,0.9999999,0.0000000,0.0000000,0.9999999,0),(40,42,26,48,0.9999999,0.0000000,0.0000000,0.9999999,0),(41,13,26,98,0.9999999,0.0000000,0.0000000,0.9999999,0),(42,42,27,150,0.9999999,0.0000000,0.0000000,0.9999999,0),(43,13,27,90,0.9999999,0.9999999,0.9999999,0.9999999,0),(44,42,28,150,0.9999999,0.0000000,0.0000000,0.9999999,0),(45,13,28,90,0.9999999,0.9999999,0.9999999,0.9999999,0),(46,26,28,80,0.9999999,0.0000000,0.0000000,0.9999999,0),(47,35,28,80,0.9999999,0.9999999,0.9999999,0.9999999,0),(48,42,29,150,0.9999999,0.0000000,0.0000000,0.9999999,0),(49,13,29,90,0.9999999,0.9999999,0.9999999,0.9999999,0),(50,26,29,80,0.9999999,0.0000000,0.0000000,0.9999999,0),(51,35,29,80,0.9999999,0.9999999,0.9999999,0.9999999,0),(52,24,29,18,0.9999999,0.0000000,0.0000000,0.9999999,0),(53,42,30,80,0.9999999,0.0000000,0.0000000,0.9999999,0),(54,13,30,90,0.9999999,0.0000000,0.0000000,0.9999999,0),(55,26,30,80,0.9999999,0.0000000,0.0000000,0.9999999,0),(56,35,30,150,0.9999999,0.9999999,0.9999999,0.9999999,0),(57,42,31,200,0.9999999,0.0000000,0.0000000,0.9999999,0),(59,26,31,233,0.9999999,0.0000000,0.0000000,0.9999999,0),(60,35,31,322,0.9999999,0.9999999,0.0000000,0.9999999,0),(61,42,32,123,0.9999999,0.0000000,0.0000000,0.9999999,0),(62,13,32,344,0.9999999,0.9999999,0.0000000,0.9999999,0),(63,26,32,233,0.9999999,0.0000000,0.0000000,0.9999999,0),(64,35,32,238,0.9999999,0.9999999,0.9999999,0.9999999,0),(65,44,32,23,0.9999999,0.0000000,0.9999999,0.9999999,0),(66,42,33,0,0.9999999,0.9999999,0.9999999,0.0000000,0),(67,42,34,0,0.9999999,0.9999999,0.0000000,0.0000000,0),(68,42,35,28,0.9999999,0.0000000,0.0000000,0.9999999,4),(69,13,35,30,0.9999999,0.0000000,0.0000000,0.9999999,0),(70,42,36,69,0.9999999,0.0000000,0.9999999,0.9999999,0),(71,13,36,83,0.9999999,0.0000000,0.9999999,0.9999999,3),(72,42,37,23,0.9999999,0.0000000,0.9999999,0.9999999,0),(73,13,37,49,0.9999999,0.0000000,0.9999999,0.9999999,4),(74,26,37,70,0.9999999,0.9999999,0.0000000,0.9999999,0),(75,42,38,28,0.9999999,0.0000000,0.9999999,0.9999999,5),(76,13,38,56,0.9999999,0.9999999,0.0000000,0.9999999,0),(77,42,39,23,0.9999999,0.0000000,0.0000000,0.9999999,0),(78,24,39,45,0.9999999,0.0000000,0.0000000,0.9999999,0),(79,26,39,56,0.9999999,0.0000000,0.0000000,0.9999999,0),(80,42,40,34,0.9999999,0.0000000,0.0000000,0.9999999,0),(81,13,40,34,0.9999999,0.0000000,0.0000000,0.9999999,0),(82,26,40,45,0.9999999,0.0000000,0.0000000,0.9999999,3),(83,42,44,34,0.9999999,0.0000000,0.0000000,0.9999999,3),(85,42,44,34,1.3048649,0.0000000,0.0000000,9.9999999,2),(86,42,44,34,1.3048649,0.0000000,0.0000000,48.2800000,1),(87,42,47,34,0.6891892,0.0000000,3.0600000,28.5600000,3),(89,13,47,35,23.5000000,0.0000000,0.0000000,822.5000000,0),(90,42,48,23,1.3064000,0.0000000,0.0000000,32.6600000,2),(91,13,48,45,0.6700000,0.0000000,0.0000000,30.1500000,0),(92,42,49,34,0.7083333,0.0000000,3.0600000,28.5600000,2),(93,13,49,3,2.7900000,0.0000000,1.0044000,9.3744000,0),(94,42,50,34,1.6200000,0.0000000,0.0000000,55.0800000,0),(95,13,50,36,0.6000000,0.0000000,2.8080000,26.2080000,3),(96,44,50,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(97,42,51,45,0.6887755,0.0000000,4.0500000,37.8000000,4),(98,13,51,46,2.7900000,5.1300000,15.4008000,138.6108000,0),(99,26,51,2,23.5000000,0.0000000,0.0000000,47.0000000,0),(100,42,52,34,0.7500000,0.0000000,3.0600000,28.5600000,0),(101,13,52,45,2.6156250,0.0000000,15.0660000,140.6160000,3),(102,42,53,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(103,42,54,49,0.7500000,0.0000000,4.4100000,41.1600000,0),(104,42,55,67,0.6500000,0.0000000,5.2260000,48.7760000,0),(105,44,56,49,0.7500000,0.0000000,4.4100000,41.1600000,0),(106,40,56,42,2.3400000,0.0000000,0.0000000,98.2800000,0),(107,27,56,56,0.6500000,0.0000000,4.3680000,40.7680000,0),(108,39,56,50,2.7900000,0.0000000,16.7400000,156.2400000,0),(109,35,56,67,0.6700000,0.0000000,0.0000000,44.8900000,0),(110,44,55,65,0.7500000,0.0000000,5.8500000,54.6000000,0),(111,39,55,67,2.7900000,0.0000000,22.4316000,209.3616000,0),(112,26,56,80,1.9200000,0.0000000,0.0000000,153.6000000,0),(113,44,57,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(114,44,58,6,0.7500000,0.0000000,0.5400000,5.0400000,0),(115,44,59,34,0.7500000,0.0000000,3.0600000,28.5600000,0),(116,39,59,35,2.7900000,0.0000000,11.7180000,109.3680000,0),(117,13,59,5,0.6500000,0.0000000,0.0000000,3.2500000,0),(118,27,59,6,0.6500000,0.0000000,0.4680000,4.3680000,0),(119,41,59,6,23.5000000,0.0000000,0.0000000,141.0000000,0),(120,44,60,4,0.7500000,0.0000000,0.3600000,3.3600000,0),(121,27,60,6,0.6500000,0.0000000,0.4680000,4.3680000,0),(122,35,60,6,0.6700000,0.0000000,0.0000000,4.0200000,0),(123,42,60,5,4.5600000,0.0000000,0.0000000,22.8000000,0),(124,39,60,6,2.7900000,0.0000000,2.0088000,18.7488000,0),(125,44,62,3,0.7500000,0.0000000,0.2700000,2.5200000,0),(126,39,62,4,2.7900000,0.0000000,1.3400000,12.5000000,0),(127,26,64,4,1.9200000,0.0000000,0.0000000,7.6800000,0),(128,35,64,4,0.6700000,0.0000000,0.0000000,2.6800000,0),(129,44,65,45,1.9200000,0.0000000,0.0000000,7.6800000,4),(130,39,65,3,0.6700000,0.0000000,0.0000000,2.6800000,0),(131,24,66,34,1.4200000,0.0000000,0.0000000,48.2800000,0),(132,44,66,3,0.7500000,0.0000000,0.2700000,2.5200000,0),(133,27,66,12,0.6500000,0.0000000,0.9360000,8.7360000,1),(134,26,66,15,1.9200000,0.5760000,0.0000000,28.2240000,0),(135,24,67,43,1.4200000,0.0000000,0.0000000,63.9000000,0),(136,24,67,45,1.4200000,0.0000000,0.0000000,63.9000000,0),(137,44,68,45,0.6500000,0.0000000,2.4960000,23.2960000,0),(138,27,68,32,0.6500000,0.0000000,2.4960000,23.2960000,0),(139,25,69,45,1.4200000,0.0000000,0.0000000,5.6800000,0),(140,24,69,4,1.4200000,0.0000000,0.0000000,5.6800000,0),(141,25,70,45,0.6500000,0.0000000,0.0000000,22.1000000,0),(142,13,70,34,0.6500000,0.0000000,0.0000000,22.1000000,0),(143,25,71,45,0.6700000,0.0000000,0.0000000,15.4100000,0),(144,35,71,23,0.6700000,0.0000000,0.0000000,15.4100000,0),(145,24,74,46,1.4200000,0.0000000,0.0000000,65.3200000,0),(146,13,74,6,0.6500000,0.0000000,0.0000000,3.9000000,0),(147,44,74,2,0.7500000,0.0000000,0.1800000,1.6800000,0),(148,42,75,12,4.5600000,0.0000000,0.0000000,54.7200000,0),(150,44,76,14,0.7500000,0.0000000,4.5000000,15.0000000,0),(151,27,76,13,0.6500000,0.0000000,0.9400000,9.3900000,0),(153,25,76,11,1.6200000,0.0000000,0.0000000,17.8200000,2),(154,44,77,23,0.7500000,0.0000000,2.0700000,19.3200000,0),(155,41,77,25,23.5000000,23.5000000,0.0000000,564.0000000,0),(156,26,77,34,1.7643243,0.0000000,0.0000000,65.2800000,3),(157,44,78,20,0.7500000,0.0000000,1.8000000,16.8000000,0),(158,44,79,44,0.7500000,0.0000000,3.9600000,36.9600000,0),(159,44,80,15,0.7500000,0.0000000,1.3500000,12.6000000,0),(160,44,81,22,0.7500000,0.3300000,1.8900000,18.0600000,0),(161,27,81,34,0.6500000,0.0000000,2.6520000,24.7520000,0),(162,44,82,21,0.7500000,0.3150000,2.0700000,17.5050000,0),(163,27,82,12,0.6500000,0.0000000,0.9360000,8.7360000,0),(164,24,83,16,1.4200000,0.0000000,0.0000000,22.7200000,0),(165,42,83,10,4.5600000,0.0000000,0.0000000,45.6000000,0);

/*Table structure for table `envase` */

DROP TABLE IF EXISTS `envase`;

CREATE TABLE `envase` (
  `id_envase` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_envase`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `envase` */

insert  into `envase`(`id_envase`,`nombre`,`estado`) values (1,'frasco','A'),(2,'caja','A'),(3,'funda','A');

/*Table structure for table `fc_bitacora_autentificacion` */

DROP TABLE IF EXISTS `fc_bitacora_autentificacion`;

CREATE TABLE `fc_bitacora_autentificacion` (
  `id_bitacora_autentificacion` bigint(20) NOT NULL,
  `login` int(11) NOT NULL,
  PRIMARY KEY (`id_bitacora_autentificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fc_bitacora_autentificacion` */

/*Table structure for table `fc_bitacora_registros_usuario` */

DROP TABLE IF EXISTS `fc_bitacora_registros_usuario`;

CREATE TABLE `fc_bitacora_registros_usuario` (
  `id_bitacora` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `cedula` text,
  `nombres` text,
  `apellidos` text,
  `telefono` text,
  `convencional` text,
  `correo` text,
  `fecha_registro` date DEFAULT NULL,
  `estado` text,
  `ip_equipo` text,
  `ip_publica` text,
  `usuario_equipo` text,
  `dir_ip_completa` text,
  `genero` text,
  `direccion` text,
  `rol` text,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `accion` text,
  `observacion` text,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `fc_bitacora_registros_usuario` */

insert  into `fc_bitacora_registros_usuario`(`id_bitacora`,`id_usuario`,`cedula`,`nombres`,`apellidos`,`telefono`,`convencional`,`correo`,`fecha_registro`,`estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`genero`,`direccion`,`rol`,`fecha_actualizacion`,`accion`,`observacion`) values (1,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'mucho lote',NULL,'2019-02-03 19:21:39','Actualizacion, registro anterior',NULL),(2,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23','1',NULL,NULL,NULL,NULL,'femenino','mucho lote','Administrador','2019-02-03 19:31:38','Actualizacion, registro anterior',NULL),(3,33,'0950963059','jazmin','solorzano','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'viernes santo',NULL,'2019-02-03 21:11:50','Actualizacion, registro anterior',NULL),(4,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(5,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(6,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(7,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(8,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-04 15:03:32','usuario actualizado',NULL),(9,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-04 16:08:36','usuario actualizado',NULL),(10,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-06 16:20:24','usuario actualizado',NULL),(11,40,'0509060507','prueba ','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 09:57:09','usuario actualizado',NULL),(12,36,'0950963058','carlos','cordova','0950963058','0950963058','cc@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-07 11:14:03','usuario actualizado',NULL),(13,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:37:50','usuario actualizado',NULL),(14,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','inactivo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:41:10','usuario actualizado',NULL),(15,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(16,41,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'masculino','pruebbaaaaa 50000','Supervisor',NULL,NULL,NULL),(17,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(18,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(19,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(20,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(21,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(22,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(23,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(24,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(25,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(26,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(27,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(28,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(29,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(30,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(31,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(32,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 11:15:28','usuario actualizado',NULL),(33,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(34,42,'0950963057','jazmin','solorzano','0950963058','0950963058','12345678','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 13:30:40','usuario actualizado',NULL),(35,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 16:59:05','usuario actualizado',NULL),(36,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(37,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(38,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:06:06','usuario actualizado',NULL),(39,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(40,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:12:22','usuario actualizado',NULL),(41,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:15:40','usuario actualizado',NULL),(42,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(43,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(44,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-02-19 15:59:34','usuario actualizado',NULL),(45,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(46,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-03-06 14:12:47','usuario actualizado',NULL),(47,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','192.168.100.9','1','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 14:14:04','usuario actualizado',NULL),(48,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','127.0.0.1','1','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 16:46:41','usuario actualizado',NULL);

/*Table structure for table `fc_bitacora_seguridad` */

DROP TABLE IF EXISTS `fc_bitacora_seguridad`;

CREATE TABLE `fc_bitacora_seguridad` (
  `id_bitacora_seguridad` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `ip_equipo` text NOT NULL,
  `ip_publico` text NOT NULL,
  `usuario_equipo` text NOT NULL,
  `fecha_login` datetime NOT NULL,
  `dir_ip_completa` text NOT NULL,
  `Verficacion` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_bitacora_seguridad`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

/*Data for the table `fc_bitacora_seguridad` */

insert  into `fc_bitacora_seguridad`(`id_bitacora_seguridad`,`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`) values (1,'yyyyyy','yyyyyyy','127.0.0.1','100000000','carlos-PC','2019-01-11 17:53:03','localhost/127.0.0.1/carlos-PC/127.0.0.1',NULL),(2,'yyyyy','qwertt','127.0.0.1','100000000','carlos-PC','2019-01-11 18:04:04','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(3,'ddgbvdgb','gvgvtgvrfc   tbv','127.0.0.1','100000000','carlos-PC','2019-01-11 18:05:49','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(4,'erver','sdcef','127.0.0.1','100000000','carlos-PC','2019-01-11 18:07:43','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(5,'ece','ercfe','127.0.0.1','100000000','carlos-PC','2019-01-11 18:11:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(6,'rtbgrt','dfvr','127.0.0.1','100000000','carlos-PC','2019-01-11 18:12:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(7,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:13:47','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(8,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:14:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(9,'fsgfdg','ecer','127.0.0.1','100000000','carlos-PC','2019-01-11 18:15:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(10,'fffff','ggggg','127.0.0.1','100000000','carlos-PC','2019-01-11 18:18:22','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(11,'jzhxkzcxhk','ssdsd','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:08','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(12,'@gmail.com.ec','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(13,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:39','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(14,'holas','1234','127.0.0.1','100000000','carlos-PC','2019-01-11 20:09:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(15,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 20:10:24','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(16,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 16:03:24','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(17,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 13:49:56','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(18,'jazmiliana','161012','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:09','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(19,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:33','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(20,'@gmail.com','123','127.0.0.1','100000000','carlos-PC','2019-01-14 18:54:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(21,'@gmail.com','12345','127.0.0.1','100000000','carlos-PC','2019-01-14 18:55:07','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(22,'@gmail.com','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:38:06','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(23,'ana cargosa','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:39:46','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(24,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:08:11','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(25,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:39:49','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(26,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:41:40','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(27,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:42:26','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(28,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 13:15:53','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(29,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 22:33:56','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(30,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:18:39','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(31,'@hotmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:21','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(32,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(33,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:20:44','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(34,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:32:01','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(35,'cc2@gmail.com','0950963059','192.168.100.9','100000000','carlos-PC','2019-02-07 10:15:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(36,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-07 14:21:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(37,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:35:09','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(38,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:38:30','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(39,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:04','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(40,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:23','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(41,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:41:10','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(42,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(43,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(44,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:20:54','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(45,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:02:20','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(46,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:25:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(47,'cc@gmail.com','cc@gmail.com','127.0.0.1','100000000','carlos-PC','2019-02-08 17:33:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(48,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:37:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(49,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:11','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(50,'kasdkqdk','kjbkjwbefkbwek','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(51,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:47:59','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(52,'cc@gmial.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:49:02','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(53,'ahajdv','jhjved','127.0.0.1','100000000','carlos-PC','2019-02-08 17:54:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(54,'aejhejhv','jhhvwejhfvwej','127.0.0.1','100000000','carlos-PC','2019-02-08 17:55:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(55,'ajsvjavcj','jhavsjvcj','127.0.0.1','100000000','carlos-PC','2019-02-08 17:56:29','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(56,'adcvjav','jhjhcjhc','127.0.0.1','100000000','carlos-PC','2019-02-08 18:01:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(57,'bfccgc','hfjfj','127.0.0.1','100000000','carlos-PC','2019-02-08 18:05:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(58,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:16','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(59,'lsdslñd','ldsñsc','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(60,'sdcewc','wefwfew','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(61,'ssckjsnk','jkncksec','192.168.100.9','100000000','carlos-PC','2019-02-09 15:42:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(62,'bsdjbcsd','jdksjdnks','192.168.100.9','100000000','carlos-PC','2019-02-09 15:43:00','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(63,'bsjcjscbs','jbjbsbd','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:13','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(64,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(65,'jdsncckdb','jknkneiue','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:40','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(66,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:46:17','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(67,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:15','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(68,'jckdnknsc','lkqeen','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:37','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(69,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:52','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(70,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:12:34','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(71,'adwad','qdwqdawd','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(72,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(73,'afadasda','sefsfe','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(74,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:52:18','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(75,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(76,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:47','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(77,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(78,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(79,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:11:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(80,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:14:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(81,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:20:06','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(82,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:26:59','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(83,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:48:35','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(84,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(85,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(86,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:32:30','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(87,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:36:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(88,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(89,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:36','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(90,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 18:00:20','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(91,'admin','admin123','172.10.180.83','100000000','carlos-PC','2019-02-11 18:09:39','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(92,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:31','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(93,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(94,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:31:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(95,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-11 21:50:44','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(96,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-12 16:47:57','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(97,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-12 21:41:22','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(98,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:19','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(99,'ccgmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(100,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:52:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(101,'cc@gmailcom','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:05:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(102,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:06:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(103,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:40:18','localhost/127.0.0.1/carlos-PC/127.0.0.1','C');

/*Table structure for table `fc_discapacidad` */

DROP TABLE IF EXISTS `fc_discapacidad`;

CREATE TABLE `fc_discapacidad` (
  `id_discapacidad` bigint(20) NOT NULL AUTO_INCREMENT,
  `discapacidad` text,
  PRIMARY KEY (`id_discapacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `fc_discapacidad` */

insert  into `fc_discapacidad`(`id_discapacidad`,`discapacidad`) values (1,'ninguno'),(2,'visual'),(3,'motriz'),(4,'auditiva'),(5,'intelectual'),(6,'vocal');

/*Table structure for table `fc_estado_pv` */

DROP TABLE IF EXISTS `fc_estado_pv`;

CREATE TABLE `fc_estado_pv` (
  `id_estado_pv` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_pv` text,
  PRIMARY KEY (`id_estado_pv`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fc_estado_pv` */

insert  into `fc_estado_pv`(`id_estado_pv`,`estado_pv`) values (1,'A'),(2,'I');

/*Table structure for table `fc_estado_usuario` */

DROP TABLE IF EXISTS `fc_estado_usuario`;

CREATE TABLE `fc_estado_usuario` (
  `id_estado` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` text,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fc_estado_usuario` */

insert  into `fc_estado_usuario`(`id_estado`,`estado`) values (1,'ACTIVO'),(2,'INACTIVO');

/*Table structure for table `fc_genero` */

DROP TABLE IF EXISTS `fc_genero`;

CREATE TABLE `fc_genero` (
  `id_genero` bigint(20) NOT NULL AUTO_INCREMENT,
  `genero` text,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fc_genero` */

insert  into `fc_genero`(`id_genero`,`genero`) values (1,'MASCULINO'),(2,'FEMENINO');

/*Table structure for table `fc_localidad_guayas` */

DROP TABLE IF EXISTS `fc_localidad_guayas`;

CREATE TABLE `fc_localidad_guayas` (
  `id_localidad_guayas` bigint(20) NOT NULL AUTO_INCREMENT,
  `localidad` text,
  PRIMARY KEY (`id_localidad_guayas`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `fc_localidad_guayas` */

insert  into `fc_localidad_guayas`(`id_localidad_guayas`,`localidad`) values (1,'Guayaquil'),(2,'Duran'),(3,'Samborondon'),(4,'Balzar'),(5,'El Empalme'),(6,'Alfredo Baquerizo Moreno'),(7,'Balao'),(8,'Colimes'),(9,'El Triunfo'),(10,'Daule\r\n'),(11,'General Antonio Elizalde\r\n'),(12,'Isidro Ayora'),(13,'Lomas de Sargentillo'),(14,'Marcelino Maridueña'),(15,'Milagro'),(16,'Naranjal'),(17,'Naranjito'),(18,'Nobol'),(19,'Palestina'),(20,'Pedro Carbo'),(21,'Playas'),(22,'Salitre'),(23,'Santa Lucía'),(24,'Simón Bolívar'),(25,'Yaguachi');

/*Table structure for table `fc_porcentaje_discapacidad` */

DROP TABLE IF EXISTS `fc_porcentaje_discapacidad`;

CREATE TABLE `fc_porcentaje_discapacidad` (
  `id_porcentaje_discapacidad` bigint(20) NOT NULL AUTO_INCREMENT,
  `porcentaje` text,
  PRIMARY KEY (`id_porcentaje_discapacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `fc_porcentaje_discapacidad` */

insert  into `fc_porcentaje_discapacidad`(`id_porcentaje_discapacidad`,`porcentaje`) values (1,'ninguno'),(2,'30% a 49%'),(3,'50% a 74%'),(4,'75% a 84%'),(5,'85% a 100%');

/*Table structure for table `fc_punto_venta` */

DROP TABLE IF EXISTS `fc_punto_venta`;

CREATE TABLE `fc_punto_venta` (
  `id_punto_venta` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `direccion` text,
  `telefono_pv` text,
  `ip_publica` text,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  PRIMARY KEY (`id_punto_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `fc_punto_venta` */

insert  into `fc_punto_venta`(`id_punto_venta`,`nombre`,`direccion`,`telefono_pv`,`ip_publica`,`fecha_creacion`,`fecha_actualizacion`) values (1,'ABC DIECISIETE','PRUEBA','0912345678',NULL,'2019-02-21','2019-03-06');

/*Table structure for table `fc_rol` */

DROP TABLE IF EXISTS `fc_rol`;

CREATE TABLE `fc_rol` (
  `id_rol` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo` text,
  `descripcion` text,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `fc_rol` */

insert  into `fc_rol`(`id_rol`,`cargo`,`descripcion`) values (1,'SUPERVISOR','Administra local farmaceutico'),(2,'ADMINISTRADOR','Tiene el control de todo el sistema'),(3,'VENDEDOR','Maneja el area de vantas del sistema'),(4,'DIGITADOR','digita informacion en el sistema'),(5,'BODEGUERO','administra bodega');

/*Table structure for table `fc_session` */

DROP TABLE IF EXISTS `fc_session`;

CREATE TABLE `fc_session` (
  `id_sesion` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_rol` bigint(20) DEFAULT NULL,
  `observacion` text,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `id_punto_venta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_sesion`),
  KEY `fk_fc_session_usuario_idx` (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  KEY `id_punto_venta` (`id_punto_venta`),
  CONSTRAINT `fc_session_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `fc_rol` (`id_rol`),
  CONSTRAINT `fc_session_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `fc_usuario` (`id_usuario`),
  CONSTRAINT `fc_session_ibfk_3` FOREIGN KEY (`id_punto_venta`) REFERENCES `fc_punto_venta` (`id_punto_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `fc_session` */

insert  into `fc_session`(`id_sesion`,`id_usuario`,`id_rol`,`observacion`,`fecha_actualizacion`,`id_punto_venta`) values (36,37,1,'PRUEBA 69','2019-03-06 16:46:41',1),(37,38,3,'NUEVO USUARIO',NULL,1),(38,39,1,'activo','2019-02-04 16:12:32',1),(39,40,4,'NUEVO USUARIO',NULL,1),(40,41,3,'activo','2019-02-07 11:41:10',1),(41,42,1,'NUEVO USUARIO',NULL,1),(42,43,4,'ppppppppppppppp','2019-02-08 11:17:01',1),(43,44,2,'actualizacion de admin ','2019-02-09 17:15:40',1),(44,45,4,'NUEVO USUARIO',NULL,1),(45,46,5,'NUEVO USUARIO',NULL,1),(46,47,4,'NUEVO USUARIO',NULL,1),(47,48,5,'NUEVO USUARIO',NULL,1),(48,49,4,'NUEVO USUARIO',NULL,1),(49,50,5,'nada njj','2019-02-19 16:01:31',1),(50,51,3,'NUEVO USUARIO',NULL,1),(51,52,5,'NUEVO USUARIO',NULL,1),(52,53,5,'nuevo usuario',NULL,1);

/*Table structure for table `fc_usuario` */

DROP TABLE IF EXISTS `fc_usuario`;

CREATE TABLE `fc_usuario` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `cedula` text NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `telefono` text,
  `convencional` text,
  `correo` text NOT NULL,
  `password` text NOT NULL,
  `ruta_imagen` text,
  `fecha_registro` date NOT NULL,
  `id_estado` bigint(20) DEFAULT NULL,
  `ip_equipo` text NOT NULL,
  `ip_publica` text CHARACTER SET cp850 NOT NULL,
  `usuario_equipo` text NOT NULL,
  `dir_ip_completa` text NOT NULL,
  `id_genero` bigint(20) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`id_usuario`),
  KEY `id_genero` (`id_genero`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `fc_usuario_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `fc_genero` (`id_genero`),
  CONSTRAINT `fc_usuario_ibfk_4` FOREIGN KEY (`id_estado`) REFERENCES `fc_estado_usuario` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `fc_usuario` */

insert  into `fc_usuario`(`id_usuario`,`cedula`,`nombres`,`apellidos`,`telefono`,`convencional`,`correo`,`password`,`ruta_imagen`,`fecha_registro`,`id_estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`id_genero`,`direccion`) values (37,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','0950963058','','2019-02-04',1,'127.0.0.1','2','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1',1,'BASTION POPULAR'),(38,'0102030405','ana karen','chichande perez','0950963058','0950963058','ac@hotmail.com','12345','1','2019-02-04',1,'2','3','4','5',2,'perimetral '),(39,'0910203040','jose','chulli','0912345678','0912345678','pp@gmail.com','12345','1','2019-02-04',1,'1','2','3','4',1,'portete'),(40,'0908010203','jazmin','solorzano','0912345678','0912345678','dd@gmail.com','12345','1','2019-02-04',2,'2','3','4','5',2,'viernes santo'),(41,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','12345','1','2019-02-06',1,'1','2','3','4',2,'prubaaaaa'),(42,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','0950963059','1','2019-02-07',1,'farmacia','3','192.168.100.9','carlos-PC',1,'pruebbaaaaa 50000'),(43,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','0950963057','1','2019-02-07',1,'1','2','3','4',2,'pruebaaaaaaa 60000'),(44,'0123456789','admin','admin','1234567890','1234567890','admin','admin123','1','2019-02-09',1,'192.168.100.9','2','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'la calle q pasa y  la q cruza'),(45,'0102030406','prueba','pruebaaa','0912345678','0912345678','prue@gmail.com','0102030406','IMAGEN','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'saconacnaocoas'),(46,'0801020308','anaoanca','acasncas','0912345678','0912345678','abc@gmail.com','0801020308','','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'acsacacascsvsvsd'),(47,'0201020102','lkncakckjsa','anckjackab','0912345678','0912345678','abcd@gmail.com','0201020102','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'zkjkbcusbackbs'),(48,'0950477890','skjbasbcac','ascascaa','0912345678','0912345678','123@gmail.com','0950477890','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'scjabckac akscasc'),(49,'1234567890','jose','lopez','0967899045','887878787','jhjhjh','1234567890','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-11',1,'172.10.180.83','3','carlos-PC','localhost/127.0.0.1/carlos-PC/172.10.180.83',1,'loja'),(50,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','0915101621','1','2019-02-19',2,'127.0.0.1','2','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1',1,'oconnor'),(51,'0504601020','PRUEBA','PRUEBA','0950302021','09123456789','ppp@gmail.com','0504601020','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-21',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION'),(52,'0098754120','PRUEBA ','PREUBA ','0912345678','0123456798','pppp@gmail.com','0098754120','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION '),(53,'0970405487','PRUEBA DOS','PRUEBA DOS','0912345678','0912345678','pruebados@gmail.con','0970405487','','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'ALSCNKACBW');

/*Table structure for table `fc_usuario_punto_venta` */

DROP TABLE IF EXISTS `fc_usuario_punto_venta`;

CREATE TABLE `fc_usuario_punto_venta` (
  `id_usuario_local` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_sesion` bigint(20) DEFAULT NULL,
  `id_punto_venta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_local`),
  KEY `id_punto_venta` (`id_punto_venta`),
  KEY `id_usuario` (`id_sesion`),
  CONSTRAINT `fc_usuario_punto_venta_ibfk_1` FOREIGN KEY (`id_punto_venta`) REFERENCES `fc_punto_venta` (`id_punto_venta`),
  CONSTRAINT `fc_usuario_punto_venta_ibfk_2` FOREIGN KEY (`id_sesion`) REFERENCES `fc_session` (`id_sesion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fc_usuario_punto_venta` */

/*Table structure for table `iva` */

DROP TABLE IF EXISTS `iva`;

CREATE TABLE `iva` (
  `id_iva` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `est` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_iva`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `iva` */

insert  into `iva`(`id_iva`,`iva`,`fecha`,`id_usuario`,`est`) values (13,0.12,'2019-01-31',1,'A'),(14,0.14,'2019-01-31',1,'I');

/*Table structure for table `laboratorio` */

DROP TABLE IF EXISTS `laboratorio`;

CREATE TABLE `laboratorio` (
  `id_Laboratorio` bigint(20) NOT NULL AUTO_INCREMENT,
  `RUC` text NOT NULL,
  `Nombre` text NOT NULL,
  `Direccion` text NOT NULL,
  `Telefono` text NOT NULL,
  `Fecha` date NOT NULL,
  `Imagen` text NOT NULL,
  `Correo` text NOT NULL,
  PRIMARY KEY (`id_Laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `laboratorio` */

insert  into `laboratorio`(`id_Laboratorio`,`RUC`,`Nombre`,`Direccion`,`Telefono`,`Fecha`,`Imagen`,`Correo`) values (2,'5555555555555','KTGTT','ELLY','77777','2018-07-05','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','kelly@gmai.con'),(3,'06660060000','ALEDUD','SDSSFFF','8888','2018-11-05','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','aaa@gmail.com'),(4,'0000000000000','ALEX','GUAYAQUIL','0993387089','2018-11-13','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','alex@gmail.com'),(5,'555554888888','HHH','RRRF','313215','2018-12-12','com.farmacia.icono/sinimagen1.jpeg','jjjj.@hotmail.coim');

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id_marcas` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_marcas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `marcas` */

insert  into `marcas`(`id_marcas`,`nombre`,`estado`) values (1,'bayer','A'),(2,'pelikan','A');

/*Table structure for table `medidas` */

DROP TABLE IF EXISTS `medidas`;

CREATE TABLE `medidas` (
  `id_medidas` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_medida` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_medidas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `medidas` */

insert  into `medidas`(`id_medidas`,`nombre_medida`,`estado`) values (1,'ml','A'),(2,'lt','A'),(3,'mml','A'),(4,'unidades','A'),(5,'tabletas','A'),(6,'GR','A'),(7,'PRUEBA1','A'),(8,'PRUEBA2','A'),(9,'PRUEBA3','A'),(10,'PRUEBA4','A'),(11,'PRUEBA5','A');

/*Table structure for table `pagos` */

DROP TABLE IF EXISTS `pagos`;

CREATE TABLE `pagos` (
  `id_pagos` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pagos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pagos` */

insert  into `pagos`(`id_pagos`,`nombre`) values (1,'CONTADO'),(2,'CREDITO');

/*Table structure for table `precios` */

DROP TABLE IF EXISTS `precios`;

CREATE TABLE `precios` (
  `id_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) DEFAULT NULL,
  `precio_compra` double(5,2) DEFAULT NULL,
  `precio_venta` double(5,2) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_precio`),
  KEY `fk_precios_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `precios` */

insert  into `precios`(`id_precio`,`id_producto`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`) values (1,22,0.55,0.60,'I','0000-00-00 00:00:00',NULL),(2,22,0.70,0.80,'I','0000-00-00 00:00:00',NULL),(8,22,0.63,0.90,'I','2018-12-20 17:56:59',2),(13,22,0.65,0.95,'A','2018-12-20 19:24:12',2),(14,22,0.45,0.35,'I','2018-12-20 19:24:12',5),(16,22,0.59,0.97,'I','2018-12-14 00:57:18',2),(17,22,0.73,0.96,'I','2018-12-14 08:28:31',2),(18,30,15.60,32.62,'A','2018-12-18 03:27:01',2),(19,22,0.44,0.61,NULL,NULL,NULL),(20,28,0.63,1.24,'A','2019-01-03 02:12:54',2),(21,28,0.89,0.92,'I','2018-12-19 00:01:25',2),(22,28,0.96,0.97,'I','2018-12-20 00:49:40',2),(23,27,1.56,1.57,'I','2019-01-03 17:10:12',2),(24,27,1.42,1.78,'A','2019-01-03 17:10:29',2),(25,27,1.62,1.96,'A','2019-01-03 17:10:41',2),(26,23,1.92,2.22,'A','2018-12-20 01:25:44',2),(27,31,0.65,0.90,'A','2019-01-16 03:53:26',2),(28,31,0.90,0.96,'I',NULL,NULL),(29,31,0.63,0.79,'I','2019-01-03 17:11:01',2),(30,28,0.86,0.98,'I',NULL,NULL),(31,24,0.26,0.30,'I','2018-12-21 01:03:22',2),(32,24,0.60,0.61,'I',NULL,NULL),(33,24,0.56,0.57,'I','2018-12-21 01:15:00',2),(34,24,58.60,59.60,'I',NULL,NULL),(35,24,0.67,0.97,'A',NULL,NULL),(36,28,0.90,0.96,'I','2018-12-21 01:39:54',2),(37,31,0.67,0.65,'I','2018-12-21 11:55:28',2),(38,31,0.68,0.69,'I','2019-01-02 15:23:05',2),(39,32,2.79,2.87,'A','2018-12-21 11:10:45',2),(40,27,2.34,2.88,'A','2019-01-20 00:00:01',2),(41,27,23.50,24.67,'A','2019-01-20 00:00:00',2),(42,21,4.56,6.76,'A','2019-01-20 00:00:00',2),(43,30,4.67,6.89,'A','2019-01-20 03:46:15',2),(44,33,0.75,1.00,'A','2019-01-20 12:38:15',2),(45,34,12.50,12.75,'A','2019-02-25 16:39:24',2),(46,35,8.90,9.00,'A','2019-02-25 16:58:10',2);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_productos` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `fecha_registro` date NOT NULL,
  `peso` double(7,2) NOT NULL,
  `id_tipo` bigint(20) NOT NULL,
  `id_medidas` bigint(20) NOT NULL,
  `id_envase` bigint(20) NOT NULL,
  `id_marcas` bigint(20) NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `iva` varchar(15) NOT NULL,
  `cantidad_minima` bigint(20) NOT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `fk_tipos_productos` (`id_tipo`),
  KEY `fk_medidas_productos` (`id_medidas`),
  KEY `fk_envase_productos` (`id_envase`),
  KEY `fk_marcas_productos` (`id_marcas`),
  CONSTRAINT `fk_envase_productos` FOREIGN KEY (`id_envase`) REFERENCES `envase` (`id_envase`),
  CONSTRAINT `fk_marcas_productos` FOREIGN KEY (`id_marcas`) REFERENCES `marcas` (`id_marcas`),
  CONSTRAINT `fk_medidas_productos` FOREIGN KEY (`id_medidas`) REFERENCES `medidas` (`id_medidas`),
  CONSTRAINT `fk_tipos_productos` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`id_productos`,`nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`,`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`) values (21,'ASPIRINA','dolores de cabeza','2018-11-16',15.50,5,4,2,1,'A',1,'NO',15),(22,'AMOXICILINA','INFECCION','2018-11-16',10.20,5,5,2,2,'A',2,'NO',24),(23,'MEBOCAINA','MEBOCAINA','2018-11-21',1.26,6,1,1,1,'A',3,'NO',14),(24,'IBUPROFENO ','DOLORES DE CABEZA,ESTOMAGO,FIEBRE','2018-11-22',0.50,11,5,2,1,'A',7,'NO',7),(25,'LEMONFLU2','RESFRIADOS ','2018-11-30',10.00,7,5,2,1,'A',2,'NO',29),(27,'tucol','jarabe para la toz','2018-12-12',15.60,2,3,1,1,'A',3,'NO',14),(28,'GAMALATE','CONCENTRACION','2018-12-13',2.60,7,1,2,1,'A',2,'0.12',15),(29,'ZALEPLA','RELAJACION','2018-12-13',2.60,11,1,1,1,'I',3,'NO',14),(30,'AFRIN','PARA DESCONGESTIONAR LA NARIZ','2018-12-18',2.36,7,3,1,1,'A',5,'NO',19),(31,'VITAMINA C','VITAMINAS','2018-12-20',0.63,5,2,3,1,'A',2,'0.12',15),(32,'OMEPRASOL','INFECCIONES','2018-12-21',2.30,5,6,2,2,'A',2,'0.12',45),(33,'TRIPLE ACCION','PASTA DENTAL','2019-01-20',1.05,10,4,2,1,'A',2,'0.12',10),(34,'ALCOHOL','LIMPIEZA CORPORAL','2019-02-25',12.00,7,3,2,1,'A',2,'',23),(35,'TERMOMETRO','FIEBRE','2019-02-25',0.23,5,4,1,1,'A',2,'0.12',34);

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `id_proveedor` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proveedor_clase` bigint(20) NOT NULL,
  `cedula_ruc` varchar(15) NOT NULL,
  `entidad` varchar(100) NOT NULL,
  `representante` varchar(70) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  `estado` varchar(1) NOT NULL,
  `telefono` varchar(70) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `direccionImagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `fk_1` (`id_proveedor_clase`),
  CONSTRAINT `fk_clase_proveedor` FOREIGN KEY (`id_proveedor_clase`) REFERENCES `proveedor_clase` (`id_proclase`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor` */

insert  into `proveedor`(`id_proveedor`,`id_proveedor_clase`,`cedula_ruc`,`entidad`,`representante`,`direccion`,`fecha_registro`,`estado`,`telefono`,`correo`,`direccionImagen`) values (5,2,'0924878605616','inkatonsa','URSULA','coop.el tunel','2018-11-14','A','0981839603 INSTITUCIONAL','jefferson@gmail.ocm INSTITUCIONAL',NULL),(6,1,'092458566522','NESTLE SA..','ABIGAIL TORRES','COOP.EL CONDOR','2018-12-19','A','0953926261 INSTITUCIONAL','ambar@gmail.com INSTITUCIONAL','F:\\civil.jpg'),(7,2,'1300696364','cocalola','KARE PAGE ','coop.el mirador','2018-12-05','A','2260392 INSTITUCIONAL','elaine@gmail.com INSTITUCIONAL',NULL),(8,1,'0924876014','URSULA.','COLOMBIA','COOP.FLORIDA NORTE','2018-12-05','A','0986334186 PERSONAL','ursula@gmail.com PERSONAL',NULL),(9,1,'1524896522','JULIO','MATT','ENTRADA DE LA 8','2018-12-06','I','4554165165158 INSTITUCIONAL','cknc PERSONAL',NULL),(10,1,'1515151516','CATOLICA','AMBATO','PORTIIKX','2018-12-06','A','','',NULL),(11,1,'0925487562','PROVEMARX','EDWAR','COOP.PUEBLO LINDO','2018-12-06','A','0924876262 PERSONAL','jose@gmail.com PERSONAL',NULL),(12,1,'0924656151514','MUEBLESPALITO','JOSE TERAN ','COOP BRISAS DEL MAR','2018-12-06','I','1221513255 INSTITUCIONAL','0112sds@gmail.com INSTITUCIONAL',NULL),(13,2,'09123456567','COCA COLA','FOGGY ','Floresta 1','2019-01-14','A','132654687489PERSONAL','MAT@gmail.com PERSONAL',NULL),(14,2,'091327918856','Universal','MATT MURDOCK','HELLS KITCHEN','2019-01-20','A','3098545778','MUT@gmail.com',NULL),(15,1,'2343243244','LOS PINOS','JOSE LUIS','cooop manuela cañizares','2019-01-23','A','6565676567 PERSONAL','ghf@gmail.com PERSONAL','C:\\Users\\usuario\\Desktop\\experiencia-de-usuario.jpg'),(16,1,'0987865372','SOCIEDAD QUITUMBE','ALEJANDRO','coop.gallegos lara','2019-01-30','A','0982729262 PERSONAL','alejand@gmail.com PERSONAL','C:\\Users\\usuario\\Desktop\\experiencia-de-usuario.jpg');

/*Table structure for table `proveedor_clase` */

DROP TABLE IF EXISTS `proveedor_clase`;

CREATE TABLE `proveedor_clase` (
  `id_proclase` bigint(20) NOT NULL AUTO_INCREMENT,
  `clase` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proclase`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor_clase` */

insert  into `proveedor_clase`(`id_proclase`,`clase`) values (1,'laboratorio'),(2,'distribuidor');

/*Table structure for table `proveedor_mail` */

DROP TABLE IF EXISTS `proveedor_mail`;

CREATE TABLE `proveedor_mail` (
  `id_promail` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_tipo_correo` bigint(20) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `cedula_ruc` varchar(15) NOT NULL,
  PRIMARY KEY (`id_promail`),
  KEY `fk_tipo_correo` (`id_tipo_correo`),
  CONSTRAINT `fk_tipo_correo` FOREIGN KEY (`id_tipo_correo`) REFERENCES `tipo_correo` (`id_tipo_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor_mail` */

insert  into `proveedor_mail`(`id_promail`,`id_tipo_correo`,`mail`,`cedula_ruc`) values (1,1,'jefferson@gmail.ocm','0924878605616'),(2,1,'ambar@gmail.com','092458566522'),(3,1,'elaine@gmail.com','1300696364'),(5,2,'cknc','1524896522'),(6,1,'ambar@gmil','1524896522'),(7,1,'0112sds@gmail.com','0924656151514'),(8,1,'JEFSS@GAMIL.COM','0925487562'),(9,2,'jose@gmail.com','0925487562'),(10,2,'ursula@gmail.com','0924876014'),(11,2,'ghf@gmail.com','2343243244'),(12,2,'alejand@gmail.com','0987865372');

/*Table structure for table `proveedor_telefono` */

DROP TABLE IF EXISTS `proveedor_telefono`;

CREATE TABLE `proveedor_telefono` (
  `id_protelefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_tipo_telefono` bigint(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `cedula_ruc` varchar(15) NOT NULL,
  PRIMARY KEY (`id_protelefono`),
  KEY `fk_tipo_telefeono` (`id_tipo_telefono`),
  CONSTRAINT `fk_tipo_telefeono` FOREIGN KEY (`id_tipo_telefono`) REFERENCES `tipo_telefono` (`id_tipo_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor_telefono` */

insert  into `proveedor_telefono`(`id_protelefono`,`id_tipo_telefono`,`telefono`,`cedula_ruc`) values (1,1,'0981839603','0924878605616'),(2,1,'0953926261','092458566522'),(3,1,'2260392','1300696364'),(10,2,'0924876262','0925487562'),(11,2,'0256522655','0924656151514'),(12,1,'1221513255','0924656151514'),(13,2,'5615224522152','0925487562'),(14,1,'4554165165158','1524896522'),(15,2,'0986334186','0924876014'),(16,2,'6565676567','2343243244'),(17,2,'0982729262','0987865372');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id_stock` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad` bigint(20) NOT NULL,
  `id_precio` bigint(20) NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `fk_stock_precios` (`id_precio`),
  CONSTRAINT `fk_stock_precios` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`id_stock`,`cantidad`,`id_precio`) values (1,43,42),(2,35,20),(3,33,8),(4,195,44),(5,35,13),(7,80,26),(8,73,35),(9,91,39),(10,114,27),(12,16,24);

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `id_sucursal` bigint(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `representante` varchar(70) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_proveedor` bigint(11) NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `fk_4` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sucursal` */

insert  into `sucursal`(`id_sucursal`,`ruc`,`nombre`,`representante`,`direccion`,`id_proveedor`) values (2,'092487602876','farmacias comunitarias','alexis','coop.la concordia',2);

/*Table structure for table `telefono` */

DROP TABLE IF EXISTS `telefono`;

CREATE TABLE `telefono` (
  `id_Telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_Tipo_Telefono` bigint(20) NOT NULL,
  `Numero` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `telefono` */

insert  into `telefono`(`id_Telefono`,`id_Tipo_Telefono`,`Numero`,`Cedula`) values (1,1,'0997854655','4444444444'),(2,1,'5555555555555','4444444444'),(3,1,'4444444444444','4444444444'),(4,1,'5555555555555','3333333333'),(5,1,'0997857654','0932067010'),(6,1,'5555555555','5555555555'),(7,1,'0000000000','0932067010'),(8,1,'0985849256','0932067010'),(9,1,'0999999999','0924876015'),(10,1,'2154151521356','0924876251'),(11,2,'0993387081','0944037977'),(12,2,'0991232552','0912232525'),(13,2,'0994521252','0991251252'),(14,2,'0962959794','0931978365'),(15,1,'4767657876767','0931978365'),(16,1,'5435345346','9348974397');

/*Table structure for table `tipo` */

DROP TABLE IF EXISTS `tipo`;

CREATE TABLE `tipo` (
  `id_tipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_tipo`),
  KEY `fk_tipo_subtipo` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tipo` */

insert  into `tipo`(`id_tipo`,`nombre`,`estado`) values (2,'jarabe para la toz','A'),(4,'pastilla para dolores de cabez','A'),(5,'Antibiótico','A'),(6,'analgesico','A'),(7,'Antialérgicos','A'),(8,'AntiInflamatorios ','A'),(9,'PELOTAS','A'),(10,'VIVERES','A'),(11,'ANTIPIRÉTICOS','A');

/*Table structure for table `tipo_correo` */

DROP TABLE IF EXISTS `tipo_correo`;

CREATE TABLE `tipo_correo` (
  `id_tipo_correo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_tipo_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_correo` */

insert  into `tipo_correo`(`id_tipo_correo`,`nombre`) values (1,'INTITUCIONAL'),(2,'PERSONAL'),(3,'OTRO');

/*Table structure for table `tipo_telefono` */

DROP TABLE IF EXISTS `tipo_telefono`;

CREATE TABLE `tipo_telefono` (
  `id_tipo_telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_tipo_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_telefono` */

insert  into `tipo_telefono`(`id_tipo_telefono`,`nombre`) values (1,'INSTITUCIONAL'),(2,'PERSONAL'),(3,'OTRO');

/*Table structure for table `tipo_telefono_cliente` */

DROP TABLE IF EXISTS `tipo_telefono_cliente`;

CREATE TABLE `tipo_telefono_cliente` (
  `id_Tipo_Telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tipo` text NOT NULL,
  PRIMARY KEY (`id_Tipo_Telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tipo_telefono_cliente` */

insert  into `tipo_telefono_cliente`(`id_Tipo_Telefono`,`Tipo`) values (1,'Convencional'),(2,'Celular'),(3,'Trabajo');

/* Function  structure for function  `EncontrarID` */

/*!50003 DROP FUNCTION IF EXISTS `EncontrarID` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `EncontrarID`(nombre1 varchar(80),id_marcas1 bigint(20),id_medidas1 bigint(20),id_tipo1 bigint(20)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        set valor = (SELECT `id_productos` FROM `productos` WHERE `nombre`= nombre1 AND `id_marcas`= id_marcas1 AND `id_medidas`= id_medidas1 AND `id_tipo`= id_tipo1);
        RETURN valor;
    END */$$
DELIMITER ;

/* Function  structure for function  `validacion` */

/*!50003 DROP FUNCTION IF EXISTS `validacion` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validacion`(ruc1 text) RETURNS int(11)
BEGIN
declare resultado int;
select count(id_Laboratorio) into resultado from Laboratorio where RUC=ruc1;
RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `validarEnvaseProducto` */

/*!50003 DROP FUNCTION IF EXISTS `validarEnvaseProducto` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarEnvaseProducto`(nombre1 varchar(80)) RETURNS int(11)
BEGIN
	declare valor int; 
        SELECT COUNT(`id_envase`)INTO valor FROM envase
        WHERE nombre = nombre1 and estado = 'A';
        return valor;
    END */$$
DELIMITER ;

/* Function  structure for function  `validarMarcaProducto` */

/*!50003 DROP FUNCTION IF EXISTS `validarMarcaProducto` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarMarcaProducto`(nombre1 VARCHAR(80)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        SELECT COUNT(`id_marcas`)INTO valor FROM marcas
        WHERE nombre = nombre1 ;
        RETURN valor;
    END */$$
DELIMITER ;

/* Function  structure for function  `validarMedidaProducto` */

/*!50003 DROP FUNCTION IF EXISTS `validarMedidaProducto` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarMedidaProducto`(nombre_medida1 varchar(80)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        SELECT COUNT(`id_medidas`)INTO valor FROM medidas
        WHERE nombre_medida = nombre_medida1;
        RETURN valor;
    END */$$
DELIMITER ;

/* Function  structure for function  `validarProveedor` */

/*!50003 DROP FUNCTION IF EXISTS `validarProveedor` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarProveedor`(cedula varchar(15)) RETURNS int(11)
BEGIN
	DECLARE val INT;
        SELECT COUNT(cedula_ruc) INTO val FROM proveedor WHERE cedula_ruc = cedula;
        RETURN val;
    END */$$
DELIMITER ;

/* Function  structure for function  `validarPrueba` */

/*!50003 DROP FUNCTION IF EXISTS `validarPrueba` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarPrueba`(nombre1 text, apellido1 text,direccion1 text ) RETURNS bigint(20)
BEGIN
declare resultado bigint;
select  id_Clientes into resultado from Clientes
where nombre= nombre1 and Apellido=apellido1 and direccion=direccion1;
RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `validarTipoProducto` */

/*!50003 DROP FUNCTION IF EXISTS `validarTipoProducto` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `validarTipoProducto`(nombre1 varchar(80)) RETURNS int(11)
BEGIN
	declare valor int; 
        SELECT COUNT(`id_tipo`)INTO valor FROM tipo
        WHERE nombre = nombre1 and estado = 'A';
        return valor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ActivarEstadoNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActivarEstadoNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarEstadoNotaPedido`(IN id_cabecera_nota_pedidos1 BIGINT,
OUT valor TEXT)
BEGIN
	UPDATE cabecera_nota_pedidos 
	SET estado = 'SI'
	WHERE id_cabecera_nota_pedidos = id_cabecera_nota_pedidos1;
	SET valor ='Actualizado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar`(in id_Laboratorio1 bigint, in RUC1 text, in nombre1 text,
in direccion1 text, in telefono1 text, in fecha1 date, in imagen1 text, in correo1 text, out valor text)
BEGIN
update laboratorio set RUC= RUC1 , Nombre = nombre1,
Direccion = direccion1, Telefono = telefono1, 
Fecha = fecha1, Imagen = imagen1, Correo = correo1 where id_Laboratorio = id_Laboratorio1;
set valor = 'Laboratorio actualizado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `ActualizarCabeceraNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarCabeceraNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarCabeceraNotaPedido`(in plazo1 text, in formapago2 text, in iva3 decimal(10,7),
in descuento4 decimal(10,7),in total5 decimal(10,7),in idcab6 decimal(10,7),out valor text)
BEGIN
	UPDATE `cabecera_nota_pedidos` SET `plazo`=plazo1,`forma_pago`=formapago2,`iva`=iva3,`descuento`=descuento4,`total`=total5 WHERE `id_cabecera_nota_pedidos`= idcab6;
	set valor ='actualizacion con exito';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCliente`(
in cedula123 text,
in nombre text,
in apellido text,
in direccion text,
in telefono text,
in correo text,
out msg text)
BEGIN
declare fecha_reg date;
select now() into fecha_reg;
 UPDATE Clientes set 
 Nombre = nombre,
 Apellido = apellido,
 Direccion = direccion,
 Fecha_reg = fecha_reg,
 str_telefono = telefono,
 str_correo = correo
 WHERE Cedula = cedula123;
 set msg = 'Cliente Actualizado Con Éxito!!';
END */$$
DELIMITER ;

/* Procedure structure for procedure `ActualizarDetalleIndividualNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarDetalleIndividualNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleIndividualNotaPedido`(in id_detalle_nota_pedidos1 BIGINT,
in cantidad1 int,in descuento1 Double,in iva1 Double ,in total1 Double )
BEGIN
UPDATE `detalle_nota_pedidos` SET  
cantidad = cantidad1,
descuento = descuento1,
iva = iva1,
total = total1 
WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ActualizarDetalleCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarDetalleCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleCompras`(IN id_detalle_nota_pedidos1 BIGINT,
IN cantidad1 INT,IN descuento1 DECIMAL(10,7),IN iva1 DECIMAL(10,7) ,IN total1 DECIMAL(10,7),IN bono1 BIGINT,
in idCompra bigint,in id_precio2 bigint,in cantAnt bigint,OUT valor TEXT)
BEGIN
	DECLARE id_preciox BIGINT;
	DECLARE cantidadx BIGINT;
	DECLARE cant BIGINT;
	DECLARE cantcomp BIGINT;
	DECLARE id_productox BIGINT;
	DECLARE cant_faltante BIGINT;
	declare operacion bigint;
	
	UPDATE `detalle_nota_pedidos` SET  cantidad = cantidad1,descuento = descuento1,iva = iva1,total = total1,`bono`= bono1
	WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
	
	UPDATE `detalle_compra` SET  cantidad = cantidad1,descuento = descuento1,iva = iva1,total = total1,`bono`= bono1
	WHERE `id_detalle_compra` = idCompra ;
	
	SELECT `id_precio` INTO  id_preciox  FROM `stock` WHERE `id_precio`=id_precio2;
	
	IF(id_preciox = id_precio2)THEN
	
		if(cantAnt < cantidad1)then
			set operacion=(cantidad1-cantAnt);
			SET cantidadx =(SELECT `cantidad` FROM `stock` WHERE `id_precio`= id_precio2);
			SET cant =(cantidadx + operacion);
			UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;
			end if;
		if(cantAnt > cantidad1)then
			set operacion= (cantAnt - cantidad1);
			SET cantidadx= (SELECT `cantidad` FROM `stock` WHERE `id_precio`= id_precio2);
			SET cant =(cantidadx - operacion);
			UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;	
			end if;
	
	END IF;
		
	
	
	SET valor ='Detalles Actualizado';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ActualizarDetalleNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarDetalleNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleNotaPedido`(IN id_detalle_nota_pedidos1 BIGINT,
IN cantidad1 INT,IN descuento1 decimal(10,7),IN iva1 decimal(10,7) ,IN total1 decimal(10,7),in bono1 bigint,OUT valor TEXT)
BEGIN
UPDATE `detalle_nota_pedidos` SET  
cantidad = cantidad1,
descuento = descuento1,
iva = iva1,
total = total1,
`bono`= bono1
WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
SET valor ='Detalle Actualizado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarPrecioProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarPrecioProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioProducto`(IN consu TEXT,OUT valor TEXT)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    SET valor ='precio actualizado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `Actualizar_Envase` */

/*!50003 DROP PROCEDURE IF EXISTS  `Actualizar_Envase` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Envase`(in nombre_f text,in id_tipo_f int, out salida text)
BEGIN
declare nra int;
set nra = (SELECT validarEnvaseProducto(nombre_f));
	if(nra<1) then 
	update envase set nombre = nombre_f where envase.id_envase = id_tipo_f;
	set salida = 'DATO ACTUALIZADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizar_punto_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizar_punto_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_punto_venta`(id1 BIGINT, nombre_localidad1 TEXT,nombre_local1 TEXT,  direccion1 TEXT,dir_ip1 TEXT,  IN observacion TEXT, OUT salida TEXT)
BEGIN
DECLARE id_localidad1 INT;
SELECT `id_localidad_guayas` INTO id_localidad1 FROM `fc_localidad_guayas` WHERE `localidad`=nombre_localidad1;
UPDATE fc_punto_venta SET `id_localidad_guayas`=id_localidad1, `nombre`=nombre_local1,`direccion`=direccion1, 
`observacion`=observacion, `ip_publica`=	dir_ip1 WHERE `id_punto_venta`=id1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Actualizar_Tipo` */

/*!50003 DROP PROCEDURE IF EXISTS  `Actualizar_Tipo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Tipo`(in nombre_f text,in id_tipo_f int, out salida text)
BEGIN
declare nra int;
set nra = (SELECT validarTipoProducto(nombre_f));
	if(nra<1) then 
	update tipo set nombre = nombre_f where tipo.id_tipo = id_tipo_f;
	set salida = 'DATO ACTUALIZADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `buscarIDDetalleCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `buscarIDDetalleCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarIDDetalleCompras`(in idcab bigint,IN descuento1 DECIMAL(10,7),
in iva1 decimal(10,7),in total1 decimal(10,7),in bono1 bigint,out valor text)
BEGIN
    
	select `id_detalle_compra` into valor from `detalle_compra` where `descuento`= descuento1 and`iva`=iva1  and `total`= total1 and `bono`=bono1;
     
    END */$$
DELIMITER ;

/* Procedure structure for procedure `actualizarPrecioCompra` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarPrecioCompra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioCompra`(IN id_producto1 BIGINT,IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),in fecha4 datetime,in id_usu bigint,OUT valor1 TEXT )
BEGIN
	DECLARE id_pre INT;
	INSERT INTO `precios`(`id_producto`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`) VALUES (id_producto1,precio_compra2,precio_venta3,'A',fecha4,id_usu);
	set valor1='PRECIO AGREGADO';
   -- SET id_pre =(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND`precio_compra`=precio_compra2 AND `precio_venta`= precio_venta3);
    -- UPDATE `precios` SET estado='I' WHERE `id_precio` NOT IN (id_pre) AND `id_producto`=id_producto1;
	-- SET valor1=(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND `precio_compra`= precio_compra2 AND`precio_venta`=precio_venta3);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `bitacora_seguridad` */

/*!50003 DROP PROCEDURE IF EXISTS  `bitacora_seguridad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bitacora_seguridad`(IN `user1` TEXT, IN `password1` TEXT, IN `ip_equipo1` TEXT, /*in `ip_publico1` text,*/
    IN `usuario_equipo1` TEXT, IN `dir_ip_completa1` TEXT)
BEGIN
    DECLARE fecha_login1 DATETIME;
    DECLARE valor INT;
    SELECT NOW() INTO fecha_login1;
    SELECT COUNT(id_usuario) INTO valor FROM fc_usuario WHERE correo=user1 AND PASSWORD=password1;
    IF(valor=0)THEN
    INSERT INTO fc_bitacora_seguridad(`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`)
    VALUES(user1,password1,  ip_equipo1, '100000000',usuario_equipo1, fecha_login1,dir_ip_completa1,'I' );
    ELSE
    INSERT INTO fc_bitacora_seguridad(`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`)
    VALUES(user1,password1,  ip_equipo1, '100000000',usuario_equipo1, fecha_login1,dir_ip_completa1,'C' );
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `BuscarIDProductoNuevo` */

/*!50003 DROP PROCEDURE IF EXISTS  `BuscarIDProductoNuevo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarIDProductoNuevo`(IN nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN fecha_registro1 DATE,IN peso1 DOUBLE(7,2),IN id_tipo1 BIGINT(20),
	IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_usuario1 BIGINT,IN iva1 VARCHAR(15),IN cantidad_minima1 BIGINT, OUT valor1 TEXT)
BEGIN
	
	SET valor1= (SELECT `id_productos` FROM `productos` WHERE `descripcion`=descripcion1 AND`fecha_registro`=fecha_registro1 AND`peso`=peso1 AND`id_tipo`=id_tipo1 AND
	`id_medidas`=id_medidas1 AND `id_envase`=id_envase1 AND `id_marcas`=id_marcas1 AND`estado`='A' AND `id_usuario`=id_usuario1 AND`iva`=iva1 AND `cantidad_minima`=cantidad_minima1);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DesactivarNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `DesactivarNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarNotaPedido`(IN id_cabecera_nota_pedidos1 BIGINT,
OUT valor TEXT)
BEGIN
	UPDATE cabecera_nota_pedidos 
	SET estado = 'NO'
	WHERE id_cabecera_nota_pedidos = id_cabecera_nota_pedidos1;
	SET valor ='Actualizado';
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `edicionCompra` */

/*!50003 DROP PROCEDURE IF EXISTS  `edicionCompra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edicionCompra`(IN iva8 DECIMAL(10,7),
IN descuento9 DECIMAL(10,7),IN total10 DECIMAL(10,7),IN id_cab_ped11 BIGINT,in idComp bigint,OUT valor TEXT)
BEGIN
	update`cabecera_nota_pedidos` set `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 where`id_cabecera_nota_pedidos`= id_cab_ped11;
	
	update `cabecera_compra` set `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 where `id_cabecera_compra` = idComp;
	set valor='exito';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `editarMarcaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `editarMarcaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `editarMarcaProducto`(IN nombre_medida1 VARCHAR(80),in pos int, OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	IF (nombre_medida1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarMarcaProducto(nombre_medida1));
	IF(nr<1) THEN 
	UPDATE marcas SET nombre = nombre_medida1 WHERE id_marcas = POS;
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `editarMedidaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `editarMedidaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `editarMedidaProducto`(IN nombre_medida1 VARCHAR(80),in pos int, OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	IF (nombre_medida1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarMedidaProducto(nombre_medida1));
	IF(nr<1) THEN 
	UPDATE medidas SET nombre_medida = nombre_medida1 WHERE ID_MEDIDAS = POS;
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `editarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `editarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `editarProveedor`(IN id_proveedor_clase1 BIGINT, IN entidad3 VARCHAR(100),
IN representante4 VARCHAR(70),IN direccion5 VARCHAR(100),IN fecha6 DATE,IN estado7 VARCHAR(1),IN telefono8 VARCHAR(70),IN correo9 VARCHAR(70),IN cedula2 VARCHAR(15),IN imagen TEXT,OUT valor TEXT)
BEGIN
UPDATE proveedor SET `id_proveedor_clase`=id_proveedor_clase1,`entidad`=entidad3,`representante`=representante4,`direccion`=direccion5,
`fecha_registro`=fecha6,`estado`=estado7,`telefono`=telefono8,`correo`=correo9 ,`direccionImagen`=imagen WHERE cedula_ruc = cedula2;
SET valor = 'Proveedor Actualizado'; 
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar`(id_Laboratorio1 bigint, out valor  text)
BEGIN
delete from laboratorio where id_Laboratorio = id_Laboratorio1;
set valor = 'Laboratorio eliminado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarDetalleCompra` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminarDetalleCompra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleCompra`(IN id_cab BIGINT,IN id_det BIGINT,OUT valor TEXT)
BEGIN
	DELETE FROM `detalle_nota_pedidos` WHERE `id_detalle_nota_pedidos`= id_det AND `id_cabecera_nota_pedidos`= id_cab;
	SET valor='elemento eliminado';
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `EliminarDetalleNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarDetalleNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDetalleNotaPedido`(IN id_detalle_nota_pedidos1 BIGINT,OUT valor TEXT)
BEGIN
DELETE FROM `detalle_nota_pedidos` WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
SET valor='Detalle Eliminado';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarMarcaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminarMarcaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMarcaProducto`(in pos int, OUT valor1 TEXT)
BEGIN
	-- DECLARE nr INT;
	-- IF (nombre_medida1='') THEN
	-- SET valor1 ='campos invalidos';
	-- ELSE
	-- SET nr = (SELECT validarMedidaProducto(nombre_medida1));
	-- IF(nr<1) THEN 
	UPDATE marcas SET estado = 'I' WHERE id_marcas = pos;
	SET valor1 ='exito';
	-- ELSE
	-- SET valor1 ='ya existe';
	-- END IF;
	-- END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarMedidaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminarMedidaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMedidaProducto`(in pos int, OUT valor1 TEXT)
BEGIN
	-- DECLARE nr INT;
	-- IF (nombre_medida1='') THEN
	-- SET valor1 ='campos invalidos';
	-- ELSE
	-- SET nr = (SELECT validarMedidaProducto(nombre_medida1));
	-- IF(nr<1) THEN 
	UPDATE medidas SET estado = 'I' WHERE id_medidas = pos;
	SET valor1 ='exito';
	-- ELSE
	-- SET valor1 ='ya existe';
	-- END IF;
	-- END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProducto`(in id_productos1 bigint,out valor text)
BEGIN
	update `productos` set `estado`='I' where `productos`.`id_productos`= id_productos1;
	set valor='Producto Eliminado con Exito';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProveedor`(in op bigint, id_proveedor1 bigint,out valor text)
BEGIN
	if (op=1)then
	update `proveedor` set `estado`='I' where `id_proveedor`=id_proveedor1;
	set valor='¡PROVEEDOR DADO DE BAJA!';
	end if;
	IF (op=2)THEN
	UPDATE `proveedor` SET `estado`='A' WHERE `id_proveedor`=id_proveedor1;
	SET valor='¡PROVEEDOR RESTABLECIDO!';
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Eliminar_Envase` */

/*!50003 DROP PROCEDURE IF EXISTS  `Eliminar_Envase` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Envase`(in id_tipo_f int, out salida text)
BEGIN
declare esta_f char(1);
    set esta_f = 'I';
update envase set estado = esta_f where id_envase = id_tipo_f;
 set salida = 'DATO ELIMINADO';
 select salida;
END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_iva` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_iva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_iva`(IN id_iva1 INT,OUT msg TEXT)
BEGIN
	UPDATE iva SET est = 'I' WHERE id_iva= id_iva1;
    SET msg = 'Valor Eliminado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `Eliminar_Tipo` */

/*!50003 DROP PROCEDURE IF EXISTS  `Eliminar_Tipo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Tipo`(in id_tipo_f int, out salida text)
BEGIN
declare esta_f char(1);
    set esta_f = 'I';
update tipo set estado = esta_f where id_tipo = id_tipo_f;
 set salida = 'DATO ELIMINADO';
 select salida;
END */$$
DELIMITER ;

/* Procedure structure for procedure `Envase_Producto` */

/*!50003 DROP PROCEDURE IF EXISTS  `Envase_Producto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Envase_Producto`()
BEGIN
select envase.id_envase, envase.nombre from moduloprueba.envase where estado = 'A' order by envase.id_envase;
END */$$
DELIMITER ;

/* Procedure structure for procedure `estadoCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `estadoCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `estadoCliente`(
in cedula123 text, 
 out msg text)
BEGIN
update  Clientes set Estado = 'I' WHERE Cedula = cedula123;
set msg = 'Cliente eliminado!!';
END */$$
DELIMITER ;

/* Procedure structure for procedure `estadoCliente2` */

/*!50003 DROP PROCEDURE IF EXISTS  `estadoCliente2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `estadoCliente2`(
in cedula123 text, out mst text)
BEGIN
update  Clientes set Estado = 'A' WHERE Cedula = cedula123;
set mst = 'Cliente activado!!';
END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_actualizar_local` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_actualizar_local` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_actualizar_local`(IN nombre1 TEXT,IN direccion1 TEXT,IN telefono_pv1 TEXT, OUT salida TEXT)
BEGIN    
    
UPDATE `fc_punto_venta`
SET `nombre` = nombre1,
  `direccion` = direccion1,
  `telefono_pv` = telefono_pv1,
  `fecha_actualizacion` = now()
WHERE `id_punto_venta` = 1;
SET salida='Local acualizado correctamente';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_actualizar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_actualizar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_actualizar_usuario`(IN cedula1 TEXT, IN nombres1 TEXT, IN apellidos1 TEXT, IN telefono1 TEXT, IN convencional1 TEXT, IN correo1 TEXT, 
/*IN ip_publica1 TEXT,*//* IN genero1 TEXT, IN discapacidad1 TEXT, IN porcentaje_discapacidad1 TEXT, */
IN direccion1 TEXT,/* IN cargo1 TEXT, IN nombrepv1 TEXT,*/IN ip_equipo1 TEXT, IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT, IN ruta_img1 TEXT, IN observacion1 TEXT,IN genero1 TEXT,IN cargo1 TEXT, IN password1 TEXT,IN sesion1 LONG,in estado1 text, OUT salida TEXT)
BEGIN
DECLARE v_cedula INT;
DECLARE v_genero BIGINT;
DECLARE v_rol BIGINT;
DECLARE v_id_pv BIGINT;
DECLARE v_estado BIGINT;
DECLARE v_cedula_dos BIGINT;
SELECT COUNT(`cedula`)INTO v_cedula FROM `fc_usuario` WHERE `cedula` = cedula1;
SELECT `id_genero` INTO v_genero FROM `fc_genero` WHERE `genero` = genero1;
SELECT `id_estado` INTO v_estado FROM `fc_estado_usuario` WHERE `estado`= estado1;
SELECT `id_usuario` INTO v_cedula_dos FROM `fc_usuario` WHERE `cedula` = cedula1;
	
IF(v_cedula = 1)THEN 
	
	UPDATE `fc_usuario` SET `cedula` = cedula1,`nombres` = nombres1,`apellidos` = apellidos1,`telefono` =telefono1,
	  `convencional` = convencional,`correo` = correo1,`password` = password1,`ruta_imagen` = ruta_img1, 
	  `id_estado` = v_estado,`ip_equipo` = ip_equipo1,`ip_publica` = '2',
	  `usuario_equipo` = usuario_equipo1,`dir_ip_completa` = dir_ip_completa1,`id_genero` = v_genero,`direccion` = direccion1 
	WHERE `id_usuario` = v_cedula_dos;
			
	SELECT `id_rol` INTO v_rol FROM `fc_rol` WHERE `cargo` = cargo1; 
		
	UPDATE `fc_session` SET `id_rol` = v_rol,`observacion` = observacion1,`fecha_actualizacion` = now(),`id_punto_venta` = '1' 
	WHERE `id_sesion` = sesion1;
			
	SET salida='Usuario actualizado'; 
ELSE  
	SET salida='El usuario no existe'; 
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combos_ac_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combos_ac_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combos_ac_usuarios`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
BEGIN
    SET valor=''; 
	IF op=1 THEN 
		SELECT DISTINCT (`fc_rol`.`cargo`) INTO valor FROM `fc_rol` 
		INNER JOIN `fc_session` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
		WHERE `fc_session`.`id_rol` = id;
	END IF;
	
	IF op=2 THEN 
		SELECT DISTINCT (`fc_estado_usuario`.`estado`) INTO valor FROM `fc_estado_usuario` 
		INNER JOIN `fc_usuario` ON `fc_usuario`.`id_estado` = `fc_estado_usuario`.`id_estado`  
		WHERE `fc_usuario`.`id_estado` = id; 
	END IF; 
	
	IF op=3 THEN 
		SELECT DISTINCT (`fc_genero`.`genero`) INTO valor FROM `fc_genero` 
		INNER JOIN `fc_usuario` ON `fc_usuario`.`id_genero` = `fc_genero`.`id_genero`  
		WHERE `fc_usuario`.`id_genero` = id; 
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combo_discapacidad` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combo_discapacidad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_discapacidad`()
BEGIN
	SELECT `discapacidad` FROM `fc_discapacidad`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combo_genero` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combo_genero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_genero`()
BEGIN
	SELECT `id_genero`,`genero` FROM `fc_genero`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combo_porcentaje` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combo_porcentaje` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_porcentaje`()
BEGIN
	SELECT `porcentaje` FROM `fc_porcentaje_discapacidad`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combo_pv` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combo_pv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_pv`()
BEGIN
	SELECT `nombre` FROM `fc_punto_venta` ORDER BY `nombre` ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_combo_rol` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_combo_rol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_rol`()
BEGIN
	SELECT `id_rol`,`cargo` FROM `fc_rol`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_crear_local` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_crear_local` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_crear_local`(in nombre1 text,in direccion1 text,in telefono_pv1 text, out salida text)
BEGIN
	INSERT INTO `fc_punto_venta` (`nombre`,`direccion`,`telefono_pv`,`fecha_creacion`,`fecha_actualizacion`)
	VALUES (nombre1,direccion1,telefono_pv1,now(),'0000-00-00');
	SET salida='Local creado correctamente'; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_esatdo_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_esatdo_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_esatdo_usuario`()
BEGIN
	SELECT `id_estado`,`estado` FROM `fc_estado_usuario`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_estado_pv` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_estado_pv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_estado_pv`()
BEGIN
	SELECT `fc_estado_pv`.`id_estado_pv`, `fc_estado_pv`.`estado_pv` FROM `fc_estado_pv`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_getComboVariosUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_getComboVariosUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_getComboVariosUsuario`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
BEGIN
	SET valor='';
	IF op=1 THEN 
		SELECT DISTINCT (`fc_genero`.`genero`) INTO valor 
		FROM `fc_genero`
		INNER JOIN `fc_usuario` ON `fc_genero`.`id_genero`= `fc_usuario`.`id_genero` 
		WHERE `fc_usuario`.`id_genero`= id;
	END IF;
		
	IF op=2 THEN 
		SELECT DISTINCT (`fc_rol`.`cargo`) iNTO valor 
		FROM `fc_rol`
		INNER JOIN `fc_session` ON `fc_session`.`id_rol`= `fc_rol`.`id_rol` 
		WHERE `fc_session`.`id_rol`= id;
	END IF;
	
	IF op=3 THEN 
		SELECT DISTINCT (`fc_discapacidad`.`discapacidad`) iNTO valor 
		FROM `fc_discapacidad`
		INNER JOIN `fc_usuario` ON `fc_discapacidad`.`id_discapacidad`= `fc_usuario`.`id_discapacidad` 
		WHERE `fc_usuario`.`id_discapacidad`= id;
	END IF;
	
	IF op=4 THEN 
		SELECT DISTINCT (`fc_porcentaje_discapacidad`.`porcentaje`) iNTO valor 
		FROM `fc_porcentaje_discapacidad`
		INNER JOIN `fc_usuario` ON `fc_porcentaje_discapacidad`.`id_porcentaje_discapacidad`= `fc_usuario`.`id_porcentaje_discapacidad` 
		WHERE `fc_usuario`.`id_discapacidad`= id; 
	END IF;
	
	IF op=5 THEN 
		SELECT DISTINCT (`fc_punto_venta`.`nombre`) INTO valor 
		FROM `fc_punto_venta` 
		INNER JOIN `fc_session` ON `fc_punto_venta`.`id_punto_venta`= `fc_session`.`id_punto_venta` 
		WHERE `fc_punto_venta`.`id_punto_venta`= id;
	END IF;
	
	IF op=6 THEN 
		SELECT DISTINCT (`fc_estado_usuario`.`estado`) iNTO valor 
		FROM `fc_estado_usuario` 
		INNER JOIN `fc_usuario` ON `fc_estado_usuario`.`id_estado`= `fc_usuario`.`id_estado` 
		WHERE `fc_usuario`.`id_estado`= id;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_login_bitacora` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_login_bitacora` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_login_bitacora`(IN `user1` TEXT, IN `password1` TEXT, IN `ip_equipo1` TEXT, /*in `ip_publico1` text,*/
    IN `usuario_equipo1` TEXT, IN `dir_ip_completa1` TEXT, OUT salida TEXT)
BEGIN
    DECLARE fecha_login1 DATETIME;
    DECLARE valor INT;
    SELECT NOW() INTO fecha_login1;
    SELECT COUNT(id_usuario) INTO valor FROM fc_usuario WHERE correo=user1 AND PASSWORD=password1;
    IF(valor=0)THEN
    INSERT INTO fc_bitacora_seguridad(`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`)
    VALUES(user1,password1,  ip_equipo1, '100000000',usuario_equipo1, fecha_login1,dir_ip_completa1,'I' );
    SET salida='Usuario no existe';
    ELSE
    INSERT INTO fc_bitacora_seguridad(`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`)
    VALUES(user1,password1,  ip_equipo1, '100000000',usuario_equipo1, fecha_login1,dir_ip_completa1,'C' );
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_mostrar_local` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_mostrar_local` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_mostrar_local`()
BEGIN
	SELECT `fc_punto_venta`.`nombre`, `fc_punto_venta`.`direccion`, `fc_punto_venta`.`telefono_pv`,`fc_punto_venta`.`fecha_creacion`, 
	`fc_punto_venta`.`fecha_actualizacion` FROM `fc_punto_venta`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_mostrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_mostrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_mostrar_usuario`()
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
/*`fc_discapacidad`.`id_discapacidad`,`fc_discapacidad`.`discapacidad`,`fc_porcentaje_discapacidad`.`id_porcentaje_discapacidad`, 
`fc_porcentaje_discapacidad`.`porcentaje`,*/`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
/*`fc_punto_venta`.`id_punto_venta`,`fc_punto_venta`.`nombre` AS nombrepv,*/`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` ORDER BY `fc_session`.`id_sesion` ASC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_registrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_registrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_registrar_usuario`(IN cedula1 TEXT, IN nombres1 TEXT, IN apellidos1 TEXT, IN telefono1 TEXT, IN convencional1 TEXT, IN correo1 TEXT, 
/*IN ip_publica1 TEXT,*//* IN genero1 TEXT, IN discapacidad1 TEXT, IN porcentaje_discapacidad1 TEXT, */
IN direccion1 TEXT,/* IN cargo1 TEXT, IN nombrepv1 TEXT,*/IN ip_equipo1 TEXT, IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT, IN ruta_img1 TEXT, in observacion1 text,in genero1 text,IN cargo1 TEXT, OUT salida TEXT)
BEGIN
DECLARE v_cedula INT;
DECLARE v_fecha_registro DATETIME;
DECLARE v_genero BIGINT;
/*DECLARE v_discapacidad BIGINT;
DECLARE v_porcentaje_discapacidad BIGINT;*/
 
DECLARE v_rol BIGINT;
#DECLARE v_id_pv BIGINT;
DECLARE v_n_usuario BIGINT;
SELECT COUNT(`cedula`)INTO v_cedula FROM `fc_usuario` WHERE `cedula` = cedula1;
SELECT NOW() INTO v_fecha_registro; 
SELECT `id_genero` INTO v_genero FROM `fc_genero` WHERE `genero` = genero1;
/*SELECT `id_discapacidad` INTO v_discapacidad FROM `fc_discapacidad` WHERE `discapacidad` = discapacidad1;
SELECT `id_porcentaje_discapacidad` INTO v_porcentaje_discapacidad FROM `fc_porcentaje_discapacidad` WHERE `porcentaje` = porcentaje_discapacidad1;*/
 
	
IF(v_cedula = 0)THEN 
	INSERT INTO `fc_usuario`(`cedula`,`nombres`,  `apellidos`, `telefono`,`convencional`,`correo`,`password`,`ruta_imagen`,`fecha_registro`, 
		`id_estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`id_genero`,/*`id_discapacidad`,`id_porcentaje_discapacidad`,*/`direccion`) 
		 VALUES(cedula1,nombres1,apellidos1,telefono1,convencional1,correo1,cedula1,ruta_img1,v_fecha_registro,
		 '1',ip_equipo1,'3',usuario_equipo1,dir_ip_completa1,v_genero,/*v_discapacidad,v_porcentaje_discapacidad,*/direccion1); 
			
	SELECT MAX(`id_usuario`)INTO v_n_usuario FROM `fc_usuario`; 
	SELECT `id_rol` INTO v_rol FROM `fc_rol` WHERE `cargo` = cargo1; 
	#SELECT `id_punto_venta` INTO v_id_pv FROM `fc_punto_venta` WHERE `nombre` = nombrepv1;
	INSERT INTO `fc_session`(`id_usuario`,`id_rol`,`observacion`,`id_punto_venta`) 
		VALUES(v_n_usuario, v_rol, observacion1,'1'); 
			
	SET salida='Nuevo usuario ingresado, rol asignado'; 
ELSE  
	SET salida='El usuario ya existe'; 
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `filtroProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `filtroProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `filtroProducto`(IN consu TEXT)
BEGIN
	SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getComboPrecios` */

/*!50003 DROP PROCEDURE IF EXISTS  `getComboPrecios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getComboPrecios`(IN op BIGINT, IN id BIGINT,OUT valor DOUBLE(5,2))
BEGIN
	SET valor='';
	IF op=1 THEN 
	SELECT DISTINCT (p.`precio_compra`) INTO valor
	FROM `precios` p
	WHERE p.`id_precio`= id;
	END IF;
	IF op=2 THEN
	SELECT DISTINCT (p.`precio_venta`) INTO valor
	FROM `precios` p
	WHERE p.`id_precio`= id;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getLocalidadComboGuayas` */

/*!50003 DROP PROCEDURE IF EXISTS  `getLocalidadComboGuayas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getLocalidadComboGuayas`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
BEGIN
    SET valor='';
	IF op=1 THEN 
	 SELECT DISTINCT (t.`localidad`) INTO valor
	FROM `fc_punto_venta` p
	JOIN `fc_localidad_guayas` t ON t.`id_localidad_guayas`= p.`id_localidad_guayas`
	WHERE p.`id_punto_venta`= id;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_respaldo_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_respaldo_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_respaldo_usuario`(IN cedula1 TEXT,IN nombres1 TEXT,IN apellidos1 TEXT,IN telefono1 TEXT,
    IN convencional1 TEXT,IN correo1 TEXT,IN direccion1 TEXT,IN ip_equipo1 TEXT,IN usuario_equipo1 TEXT, IN dir_ip_completa1 TEXT,
    IN observacion1 TEXT, IN genero1 TEXT,IN rol1 TEXT,IN estado1 TEXT,IN id_usuario1 BIGINT,IN fecha_registro1 TEXT)
BEGIN
INSERT INTO `fc_bitacora_registros_usuario`
            (`id_usuario`,
             `cedula`,
             `nombres`,
             `apellidos`,
             `telefono`,
             `convencional`,
             `correo`,
             `fecha_registro`,
             `estado`,
             `ip_equipo`,
             `ip_publica`,
             `usuario_equipo`,
             `dir_ip_completa`,
             `genero`,
             `direccion`,
             `rol`,
             `observacion`)
VALUES ( id_usuario1,
        cedula1,
        nombres1,
        apellidos1,
        telefono1,
        convencional1,
        correo1,
        fecha_registro1,
        estado1,
        ip_equipo1,
        '1',
        usuario_equipo1,
        dir_ip_completa1,
        genero1,
        direccion1,
        rol1,
        observacion1);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getNombreComboProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `getNombreComboProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getNombreComboProducto`(IN op BIGINT,IN id BIGINT, OUT valor TEXT,OUT valord DOUBLE)
BEGIN	
	SET valor='';
	IF op=1 THEN 
	SELECT DISTINCT (t.`nombre`) INTO valor
	FROM `productos` p
	JOIN tipo t ON t.`id_tipo`= p.`id_tipo`
	WHERE p.`id_tipo`= id;
	END IF;
	IF op=2 THEN
	SELECT DISTINCT (m.`nombre_medida`) INTO valor
	FROM `productos` p
	JOIN `medidas` m ON m.`id_medidas`= p.`id_medidas`
	WHERE p.`id_medidas`=id;
	END IF;
	IF op=3 THEN
	SELECT DISTINCT (e.`nombre`) INTO valor
	FROM `productos` p
	JOIN `envase` e ON e.`id_envase`= p.`id_envase`
	WHERE p.`id_envase`= id;
	END IF;
	IF op=4 THEN
	SELECT DISTINCT (m.`nombre`) INTO valor
	FROM `productos` p
	JOIN `marcas` m ON m.`id_marcas`= p.`id_marcas`
	WHERE p.`id_marcas`=id;
	END IF;
        IF op=5 THEN
	SELECT DISTINCT (p.iva) INTO valor
	FROM `productos` p
	WHERE p.id_productos =id;
	END IF;
	IF op=6 THEN
	SELECT DISTINCT(p.`precio_compra`) INTO valord
	FROM `precios` p 
	WHERE p.id_producto =id AND p.`estado`='A';
	END IF;
	IF op=7 THEN
	SELECT DISTINCT(p.`precio_venta`) INTO valord
	FROM `precios` p 
	WHERE p.id_producto =id AND p.`estado`='A';
	END IF;
	IF op=8 THEN
	SELECT DISTINCT (p.estado1) INTO valor
	FROM `precios` p
	WHERE p.id_producto =id AND estado='A';
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ingresarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `ingresarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresarProducto`(IN nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN fecha_registro1 DATE,IN peso1 DOUBLE(7,2),IN id_tipo1 BIGINT(20),
	IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_usuario1 BIGINT,IN iva1 VARCHAR(15),IN cantidad_minima1 BIGINT, OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	DECLARE id_pro INT;
	IF (nombre1='' OR descripcion1=''OR fecha_registro1='' OR peso1='' OR id_tipo1='' OR id_medidas1='' OR id_envase1='' OR id_marcas1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	INSERT INTO `productos` (`nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`,
	`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`)
	VALUES(nombre1,descripcion1,fecha_registro1,peso1,id_tipo1,id_medidas1,id_envase1,id_marcas1,'A',id_usuario1,iva1,cantidad_minima1);
	SET id_pro = (SELECT EncontrarID (nombre1,id_marcas1,id_medidas1,id_tipo1));
	INSERT INTO `detalle_faltantes`(`id_producto`,`fecha_registro`,`cantidad`,`estado`) VALUES (id_pro,fecha_registro1,0,'NO');
	SET valor1 ='exito';
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ingresoDePrecios` */

/*!50003 DROP PROCEDURE IF EXISTS  `ingresoDePrecios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoDePrecios`(IN op BIGINT, id_producto1 BIGINT,IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),
    IN fecha_registro6 TEXT,IN id_usuario7 BIGINT,OUT valor1 TEXT)
BEGIN
	DECLARE id_pre INT;
	IF (op=1)THEN
	UPDATE `precios` SET `estado`='A',`fecha_registro`=fecha_registro6,`id_usuario`=id_usuario7
	WHERE `id_producto`= id_producto1 AND `precio_compra`=precio_compra2 AND `precio_venta`=precio_venta3;
                
        SET id_pre =(SELECT `id_precio` FROM `precios` WHERE `precio_compra`=precio_compra2 AND `precio_venta`=precio_venta3 AND 
        `fecha_registro`= fecha_registro6);
        
        -- UPDATE `precios` SET `estado`='I' WHERE `id_producto`= id_producto1 AND`id_precio` < id_pre;   
        UPDATE `precios` SET estado='I' WHERE `id_precio` NOT IN (id_pre) AND `id_producto`=id_producto1;
        SET valor1='precio ingresado';
        
        INSERT INTO `bitacora_precios`(`id_producto`,`precio_compra`,`precio_venta`,`fecha_registro`,`id_usuario`)
        VALUES(id_producto1,precio_compra2,precio_venta3,fecha_registro6,id_usuario7);
        END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `iniciar_sesion` */

/*!50003 DROP PROCEDURE IF EXISTS  `iniciar_sesion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `iniciar_sesion`(IN correo1 TEXT,IN password1 TEXT,IN ip_equipo1 TEXT, /*ip_publico1 text,*/ IN usuario_equipo1 TEXT, OUT salida TEXT)
BEGIN
DECLARE fecha_login1 DATETIME;
DECLARE ip_publico1 TEXT;
DECLARE valor INT;
DECLARE id_usuario1 BIGINT;
SET ip_publico1='100000';
SELECT NOW() INTO fecha_login1; 
SELECT COUNT(id_usuario) INTO valor FROM fc_usuario WHERE correo=correo1 AND PASSWORD=password1;
SELECT id_usuario INTO id_usuario1 FROM fc_usuario WHERE correo=correo1 AND PASSWORD=password1;
IF(valor=1) THEN 
INSERT INTO fc_session(id_usuario, ip_equipo, ip_publico, usuario_equipo, fecha_login) 
VALUES(id_usuario1, ip_equipo1, ip_publico1, usuario_equipo1, fecha_login1);
SET salida= 'Bienvenido';
ELSE SET salida='Usuario no existe';
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertaBitacoraFaltantes` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertaBitacoraFaltantes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertaBitacoraFaltantes`(IN id_detalle_faltantes1 BIGINT(20), 
IN fecha_registro1 DATETIME,
IN cantidad1 INT
)
BEGIN
INSERT INTO `bitacora_faltantes` (`id_detalle_faltantes`,`fecha_registro`,`cantidad`)
	VALUES(id_detalle_faltantes1,fecha_registro1,cantidad1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarCabeceraNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarCabeceraNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCabeceraNotaPedido`(IN id_proveedor1 BIGINT,IN id_usuario2 BIGINT,IN fecha_creacion3 DATETIME,
    IN plazo5 VARCHAR(45), IN forma_pago6 VARCHAR(45),IN iva7 DOUBLE, IN descuento8 DOUBLE,IN total9 DOUBLE, OUT valor TEXT)
BEGIN
	INSERT INTO `cabecera_nota_pedidos`(`id_proveedor`,`id_usuario`,`fecha_creacion`,`estado`,`plazo`,`forma_pago`,`iva`,`descuento`,`total`)
	VALUES (id_proveedor1,id_usuario2,fecha_creacion3,'SI',plazo5,forma_pago6,iva7,descuento8,total9);
	
	SET valor =(SELECT `id_cabecera_nota_pedidos` FROM `cabecera_nota_pedidos` WHERE `id_proveedor`=id_proveedor1 AND `id_usuario`=id_usuario2 AND
	`fecha_creacion`=fecha_creacion3 AND `estado`='SI' AND `plazo`= plazo5 AND `forma_pago`=forma_pago6 AND `iva`=iva7 AND 
	`descuento`=descuento8 AND `total`= total9);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarClientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarClientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarClientes`(
in cedula text,
in nombre text,
in apellido text,
in direccion text,
in telefono text,
in correo text,
out msg text
)
BEGIN
declare valor int;
declare fecha_reg date;
select now() into fecha_reg;
select count(Cedula) into valor from Clientes where Cedula=cedula;
 INSERT INTO Clientes 
(Cedula, Nombre, Apellido, Direccion, Fecha_reg, Estado, str_telefono, str_correo)
VALUES (cedula, nombre, apellido, direccion, fecha_reg, 'A', telefono, correo);
set msg = 'Cliente guardado con éxito!!';
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarCorreo` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarCorreo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCorreo`( 
IN tipo_correo1 INT ,
IN correo TEXT,
IN cedula1 TEXT 
)
BEGIN
INSERT INTO proveedor_mail(id_tipo_correo, mail, cedula_ruc)
VALUES ( tipo_correo1, correo,cedula1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarCabceraCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarCabceraCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCabceraCompras`(in id_proveedor2 bigint,in id_usuario3 bigint,
in fecha_creacion4 datetime,in plazo5 varchar(45),in id_sucursal6 bigint,in id_tipoPago7 varchar(45),in iva8 Decimal(10,7),
in descuento9 DECIMAL(10,7),in total10 DECIMAL(10,7),in id_cab_ped11 bigint,out valor text)
BEGIN
	declare id_pago bigint;
	set id_pago =(SELECT `id_pagos` FROM `pagos` WHERE `nombre`=id_tipoPago7);
	
	insert into `cabecera_compra` (`id_proveedor`,`id_usuario`,`fecha_creacion`,`plazo`,`id_sucursal`,`id_tipoPago`,`iva`,`descuento`,`total`,`estado`)
	values(id_proveedor2,id_usuario3,fecha_creacion4,plazo5,id_sucursal6,id_pago,iva8,descuento9,total10,'A');
	
	set valor =(SELECT `id_cabecera_compra` FROM `cabecera_compra` WHERE `id_proveedor`= id_proveedor2 AND `id_usuario`= id_usuario3 AND `fecha_creacion` = fecha_creacion4 
	AND `id_sucursal`= id_sucursal6 AND `total`= total10);
	
	UPDATE `cabecera_nota_pedidos` SET estado='EF',`iva`= iva8,`descuento`= descuento9,`total`= total10 WHERE `id_cabecera_nota_pedidos`= id_cab_ped11;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarCorreoCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarCorreoCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCorreoCliente`( 
IN cedula1 TEXT, 
IN correo TEXT,
OUT msg TEXT)
BEGIN
-- declare id_Clientes1 int;
-- select id_Clientes into id_Clientes1 from Clientes where Cedula=cedula1;
 
INSERT INTO Correo ( Correo, Cedula)
VALUES ( correo, cedula1);
SET msg = 'Correo guardado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarDetalleCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarDetalleCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarDetalleCompras`(in id_cabecera_compra1 bigint,in id_precio2 bigint,
in cantidad3 bigint,in precio4 decimal(10,7),in descuento5 DECIMAL(10,7),in iva6 DECIMAL(10,7),in total7 DECIMAL(10,7),in bono8 bigint)
BEGIN
	declare id_preciox bigint;
	Declare cantidadx bigint;
	declare cant bigint;
	Declare cantcomp Bigint;
	Declare id_productox bigint;
	declare cant_faltante bigint; 
	
	insert into `detalle_compra`(`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,bono)
	values (id_cabecera_compra1,id_precio2,cantidad3,precio4,descuento5,iva6,total7,bono8);
	
	#set id_precio=(SELECT `id_precio` FROM `stock` WHERE `id_precio`=id_precio2);
	SELECT `id_precio` INTO  id_preciox  FROM `stock` WHERE `id_precio`=id_precio2;
	
	if(id_preciox = id_precio2)then
	SET cantidadx=(SELECT `cantidad` FROM `stock` WHERE `id_precio`=id_precio2);
	SET cant =(cantidadx + cantidad3);
	UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;
	else
	INSERT INTO `stock`(`cantidad`,`id_precio`)VALUES(cantidad3,id_precio2);
	end if;
	
	SELECT pw.`id_producto` into id_productox FROM precios pw WHERE pw.`id_precio`= id_precio2;
	
	SELECT `cantidad` into cantcomp FROM `detalle_faltantes` WHERE `id_producto`= id_productox;
	
	set cant_faltante =(cantcomp-cantidad3);
	IF(cant_faltante<0)then 
	UPDATE `detalle_faltantes` SET `cantidad` = '0'  WHERE `id_producto` = id_productox;
	else
	UPDATE `detalle_faltantes` SET `cantidad` =  cant_faltante WHERE `id_producto` = id_productox;
	end if;
	-- "INSERT INTO `detalle_compra`(`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,bono)
	-- VALUES(" + id_cab + "," + lista3.get(i).getId_precio() + "," + lista3.get(i).getCantidad().toString() + ","
        -- + lista3.get(i).getPrecio().toString() + "," + lista3.get(i).getDescuento().toString() + ","+ lista3.get(i).getIva().toString() + "," 
        -- + lista3.get(i).getTotal().toString() + "," + lista3.get(i).getBono().toString() + ");");
	
	-- id_precio = crud.buscarIDPrecioEnStock("SELECT `id_precio` FROM `stock` WHERE `id_precio`=" + lista3.get(i).getId_precio().toString());
	-- INSERT INTO `stock` (`cantidad`,`id_precio`)VALUES(" + lista3.get(i).getCantidad().toString() + "," + lista3.get(i).getId_precio().toString() + ");
	-- "SELECT `cantidad` FROM `stock` WHERE `id_precio`=" + lista3.get(i).getId_precio() + ";");
	-- UPDATE `stock` SET `cantidad` = " + cantidadx + " WHERE `id_precio` = " + lista3.get(i).getId_precio() + ";");
	
--	Integer CantidadComp = crud.buscarCantidadEnFaltantes("SELECT `cantidad` FROM `detalle_faltantes` WHERE `id_producto`=" + lista3.get(i).getId_producto() + ";");
  --            System.out.println("Cantidad existente"+CantidadComp);
    --           System.out.println("Cantidad "+Integer.valueOf(lista3.get(i).getCantidad().toString()));
      --          CantidadComp = CantidadComp - Integer.valueOf(lista3.get(i).getCantidad().toString());
        --        System.out.println("Cantidad Restada de Faltantes"+CantidadComp);
          -- crud.UpdateCantidadFaltantes("UPDATE `detalle_faltantes` SET `cantidad` = " + CantidadComp + " WHERE `id_producto` = "+lista3.get(i).getId_producto()+";");
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarEnvaseProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarEnvaseProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarEnvaseProducto`(IN nombre1 VARCHAR(80), OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	IF (nombre1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarEnvaseProducto(nombre1));
	IF(nr<1) THEN 
	INSERT INTO envase (`nombre`) VALUES (nombre1);
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarLab` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarLab` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarLab`(in ruc1 text, in nombre1 text, in direccion1 text, in telefono1 text,
in fecha1 date, in imagen1 text, in correo1 text, out valor text)
BEGIN
if(ruc1 =''
or nombre1 = ''
or direccion1 = ''
or telefono1 = ''
or fecha1 = ''
or imagen1 = ''
or correo1= '') then
set valor = 'Datos incorrectos !';
else 
insert into laboratorio (RUC, Nombre, Direccion, Telefono, Fecha, Imagen, Correo)
values (ruc1, nombre1, direccion1, telefono1, fecha1, imagen1, correo1);
set valor = 'Laboratorio guardado..';
end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarMarcaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarMarcaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarMarcaProducto`(IN nombre1 VARCHAR(80), OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	IF (nombre1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarMarcaProducto(nombre1));
	IF(nr<1) THEN 
	INSERT INTO marcas (`nombre`,estado) VALUES (nombre1,'A');
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarMedidaProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarMedidaProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarMedidaProducto`(IN nombre_medida1 VARCHAR(80), OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
    
	IF (nombre_medida1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarMedidaProducto(nombre_medida1));
	IF(nr<1) THEN 
	INSERT INTO medidas (`nombre_medida`,estado) VALUES (nombre_medida1,'A');
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarProveedor`(IN id_proveedor_clase1 BIGINT,IN cedula2 VARCHAR(15),
IN entidad3 VARCHAR(100), IN representante4 VARCHAR(70), IN direccion5 VARCHAR(100),IN fecha6 DATE,IN telefono7 VARCHAR(70),IN correo8 VARCHAR(70),IN imagen TEXT, OUT valor TEXT)
BEGIN
DECLARE cons INT;
SELECT COUNT(cedula_ruc) INTO cons FROM proveedor WHERE cedula_ruc = cedula2;
IF(cons = 0 ) THEN
INSERT INTO proveedor(`id_proveedor_clase`,`cedula_ruc`,`entidad`,`representante`,`direccion`,`fecha_registro`,`estado`,`telefono`,`correo`,`direccionImagen`)VALUES(id_proveedor_clase1,cedula2
,entidad3,representante4,direccion5,fecha6,'A',telefono7,correo8,imagen);
SET valor = 'Proveedor guardado con exito';
ELSE 
SET valor = NULL;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarTelefono` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarTelefono` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTelefono`(
IN id_Tipo_Telefono1 INT,
IN numero TEXT,
IN cedula1 TEXT)
BEGIN
INSERT INTO proveedor_telefono( id_tipo_telefono,telefono, cedula_ruc)
VALUES ( id_Tipo_Telefono1, numero, cedula1);
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarTelefonoCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarTelefonoCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTelefonoCliente`(
IN cedula1 TEXT,
IN id_Tipo_Telefono1 INT,
IN numero TEXT,
OUT msg TEXT)
BEGIN
-- declare id_Clientes1 int;
-- select id_Clientes into id_Clientes1 from Clientes where Cedula = cedula1;
INSERT INTO Telefono ( id_Tipo_Telefono,Numero, Cedula)
VALUES ( id_Tipo_Telefono1, numero, cedula1);
SET msg = 'Telefono guardado!!';
END */$$
DELIMITER ;

/* Procedure structure for procedure `insertarTipoProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarTipoProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTipoProducto`(in nombre1 varchar(80), out valor1 text)
BEGIN
	declare nr int;
	if (nombre1='') then
	set valor1 ='campos invalidos';
	else
	set nr = (SELECT validarTipoProducto(nombre1));
	if(nr<1) then 
	insert into tipo (`nombre`) values (nombre1);
	set valor1 ='exito';
	else
	set valor1 ='ya existe';
	end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Insertar_Envase` */

/*!50003 DROP PROCEDURE IF EXISTS  `Insertar_Envase` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Envase`(in nombre_f text, out salida text)
BEGIN
	declare nra int;
    declare esta_f char(1);
    
    set esta_f = 'A';
    
	if (nombre_f='') then
	set salida ='INSERTE DATOS';
	else
	set nra = (SELECT validarEnvaseProducto(nombre_f));
	if(nra<1) then 
	insert into envase (`nombre`, `estado`) values (nombre_f, esta_f);
	set salida ='DATO INGRESADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertar_iva` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertar_iva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_iva`(IN iva1 DOUBLE, IN id_usuario1 INT, OUT msg TEXT)
BEGIN
	update iva set est = 'I';
	INSERT INTO iva(iva,fecha,id_usuario,est)VALUES(iva1,NOW(),id_usuario1,'A');
    SET msg = 'Valor Agregado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `Insertar_Tipo` */

/*!50003 DROP PROCEDURE IF EXISTS  `Insertar_Tipo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Tipo`(in nombre_f text, out salida text)
BEGIN
	declare nra int;
    declare esta_f char(1);
    
    set esta_f = 'A';
    
	if (nombre_f='') then
	set salida ='INSERTE DATOS';
	else
	set nra = (SELECT validarTipoProducto(nombre_f));
	if(nra<1) then 
	insert into tipo (`nombre`, `estado`) values (nombre_f, esta_f);
	set salida ='DATO INGRESADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `libreTransaccion` */

/*!50003 DROP PROCEDURE IF EXISTS  `libreTransaccion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `libreTransaccion`(IN consu text)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
END */$$
DELIMITER ;

/* Procedure structure for procedure `listaComboLocalidadr` */

/*!50003 DROP PROCEDURE IF EXISTS  `listaComboLocalidadr` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listaComboLocalidadr`()
BEGIN
	SELECT `id_localidad_guayas`,`localidad` FROM `fc_localidad_guayas` ORDER BY `localidad` ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarClientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarClientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarClientes`()
BEGIN
select * from Clientes order by Nombre;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboEnvasePro` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboEnvasePro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboEnvasePro`()
BEGIN
	SELECT `id_envase`,`nombre` FROM`envase` where estado='A' ORDER BY nombre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboIva` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboIva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboIva`()
BEGIN
    SELECT `id_iva`,`iva`,`fecha`,`id_usuario`,`est` FROM `iva` WHERE est = 'A';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboMarcaPro` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboMarcaPro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboMarcaPro`()
BEGIN
	SELECT `id_marcas`,`nombre` FROM marcas WHERE estado = 'A' ORDER BY nombre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboMedidaPro` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboMedidaPro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboMedidaPro`()
BEGIN
	SELECT `id_medidas`,`nombre_medida` FROM `medidas` WHERE estado = 'A'ORDER BY nombre_medida ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboTipoPro` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboTipoPro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboTipoPro`()
BEGIN
	SELECT `id_tipo`,`nombre` FROM `tipo` where estado='A' order by nombre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarCorreo` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarCorreo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarCorreo`(in cedula1 text)
BEGIN
select * from Correo where Cedula = cedula1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarJoinProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarJoinProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductos`(in op int)
BEGIN
if op >0 then
SELECT df.id_detalle_faltantes,df.fecha_registro,df.cantidad,df.estado,m.id_marcas,m.nombre as MARCA,
p.id_productos,p.nombre,p.descripcion
FROM productos p
JOIN detalle_faltantes  df ON df.id_producto=p.id_productos
join marcas m ON m.id_marcas=p.id_marcas
where df.estado = 'NO';
else
SELECT df.id_detalle_faltantes,df.fecha_registro,df.cantidad,df.estado,m.id_marcas,m.nombre AS MARCA,
p.id_productos,p.nombre,p.descripcion
FROM productos p
JOIN detalle_faltantes  df ON df.id_producto=p.id_productos
join marcas m ON m.id_marcas=p.id_marcas;
end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarLaboratorio` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarLaboratorio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarLaboratorio`()
BEGIN
select * from laboratorio order by Nombre;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarPuntoVenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarPuntoVenta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPuntoVenta`()
BEGIN
	SELECT pv.id_punto_venta, pv.nombre, lg.localidad, pv.direccion,  pv.observacion FROM fc_localidad_guayas lg, fc_punto_venta pv WHERE lg.id_localidad_guayas= pv.id_localidad_guayas;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarTelefono` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarTelefono` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarTelefono`(in cedula1 text)
BEGIN
select * from Telefono where Cedula = cedula1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `modificarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarProductos`(nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN peso1 DOUBLE(7,2),
    IN id_tipo1 BIGINT(20),IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_productos1 BIGINT(20),
    IN id_usuario1 BIGINT, IN iva1 VARCHAR(2), IN cantidad_minima1 BIGINT, OUT valor TEXT)
BEGIN
    IF (nombre1='' OR descripcion1='' OR peso1='' OR id_tipo1='' OR id_medidas1='' OR id_envase1='' OR id_marcas1=''
    OR id_usuario1='' OR iva1='' OR cantidad_minima1='')THEN
    SET valor = 'campos invalidos';
    ELSE 
	UPDATE productos SET nombre = nombre1,descripcion = descripcion1,peso=peso1 ,id_tipo= id_tipo1,
	`id_medidas`= id_medidas1,`id_envase`=id_envase1,`id_marcas`=id_marcas1,`id_usuario`=id_usuario1,
	`iva`=iva1,`cantidad_minima`=cantidad_minima1 WHERE id_productos =id_productos1;
    SET valor = 'Producto actualizado';
    END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarFaltantes` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarFaltantes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarFaltantes`(in op int,in id_cabecera_faltantes1 bigint)
BEGIN
if op= 1 then
select df.id_detalle_faltantes,df.id_cabecera_faltantes,t.id_tipo,t.nombre as nombre_tipo,df.id_producto,p.nombre as nombre_producto ,df.cantidad,
df.estado,m.id_marcas,m.nombre as marca
from detalle_faltantes df
join productos p on  p.id_productos= df.id_producto
join tipo t on t.id_tipo=p.id_tipo
JOIN marcas m on m.id_marcas=p.id_marcas
where df.estado= 'NO';
end if ;
if op= 2 then
select df.id_detalle_faltantes,df.id_cabecera_faltantes,t.id_tipo,t.nombre as nombre_tipo,df.id_producto,p.nombre as nombre_producto ,df.cantidad,
df.estado,m.id_marcas,m.nombre as marca
from detalle_faltantes df
join productos p on  p.id_productos= df.id_producto
join tipo t on t.id_tipo=p.id_tipo
JOIN marcas m on m.id_marcas=p.id_marcas
where df.id_cabecera_faltantes= id_cabecera_faltantes1;
end if ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarfaltantesEnNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarfaltantesEnNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarfaltantesEnNota`(IN op INT)
BEGIN
IF op= 1 THEN
SELECT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
FROM detalle_faltantes df
JOIN productos p ON  p.id_productos= df.id_producto
JOIN tipo t ON t.id_tipo=p.id_tipo
JOIN marcas m ON m.id_marcas=p.id_marcas
JOIN envase en ON en.id_envase = p.id_envase
JOIN medidas me ON me.id_medidas = p.id_medidas
JOIN precios pr ON pr.id_producto = p.id_productos
WHERE df.estado= 'OK'AND pr.estado='A' 
ORDER BY df.id_detalle_faltantes;
END IF ;
IF op= 2 THEN
SELECT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
FROM detalle_faltantes df
JOIN productos p ON  p.id_productos= df.id_producto
JOIN tipo t ON t.id_tipo=p.id_tipo
JOIN marcas m ON m.id_marcas=p.id_marcas
JOIN envase en ON en.id_envase = p.id_envase
JOIN medidas me ON me.id_medidas = p.id_medidas
JOIN precios pr ON pr.id_producto = p.id_productos
ORDER BY df.id_detalle_faltantes;
END IF ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarJoinProductosFaltantes` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarJoinProductosFaltantes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductosFaltantes`(in op int)
BEGIN
if op >0 then
SELECT df.id_detalle_faltantes,df.fecha_registro,df.cantidad,df.estado,m.id_marcas,m.nombre as MARCA,
p.id_productos,p.nombre,p.descripcion
FROM productos p
JOIN detalle_faltantes  df ON df.id_producto=p.id_productos
join marcas m ON m.id_marcas=p.id_marcas
where df.estado = 'NO'AND pr.estado='A';
else
SELECT df.id_detalle_faltantes,df.fecha_registro,df.cantidad,df.estado,m.id_marcas,m.nombre AS MARCA,
p.id_productos,p.nombre,p.descripcion
FROM productos p
JOIN detalle_faltantes  df ON df.id_producto=p.id_productos
join marcas m ON m.id_marcas=p.id_marcas;
end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `listarPoductosCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarPoductosCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPoductosCompras`(IN op INT)
BEGIN
    IF op=1 THEN
      SELECT p.`id_productos`,p.`nombre`,p.`descripcion`,p.`fecha_registro`,p.`peso`,p.`id_tipo`,t.`nombre`AS tipo,p.`id_medidas`,m.`nombre_medida` AS medida,
      p.`id_envase`,e.`nombre`AS envase ,p.`id_marcas`,ma.`nombre` AS marca, p.id_usuario, p.iva , p.cantidad_minima
      FROM `productos` p
      JOIN `tipo` t ON t.`id_tipo`= p.`id_tipo` 
      JOIN `medidas` m ON m.`id_medidas`= p.`id_medidas`
      JOIN `envase` e ON e.`id_envase`= p.`id_envase`
      JOIN `marcas` ma ON ma.`id_marcas`= p.`id_marcas`
      WHERE p.`estado`='A';
      END IF;
     IF op=2 THEN
        SELECT p.`id_productos`,p.`nombre`,p.`descripcion`,p.`fecha_registro`,p.`peso`,p.`id_tipo`,t.`nombre`AS tipo,p.`id_medidas`,m.`nombre_medida` AS medida,
      p.`id_envase`,e.`nombre`AS envase ,p.`id_marcas`,ma.`nombre` AS marca, p.id_usuario, p.iva , p.cantidad_minima
      FROM `productos` p
      JOIN `tipo` t ON t.`id_tipo`= p.`id_tipo` 
      JOIN `medidas` m ON m.`id_medidas`= p.`id_medidas`
      JOIN `envase` e ON e.`id_envase`= p.`id_envase`
      JOIN `marcas` ma ON ma.`id_marcas`= p.`id_marcas`
      WHERE p.`estado`='I';
      END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarProductosStock` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarProductosStock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarProductosStock`(in op bigint)
BEGIN
    if(op=1)then
	SELECT DISTINCT(pro.`id_productos`),pro.`nombre`,pro.`descripcion`,s.`id_precio`,s.`id_stock`,s.`cantidad` FROM  `precios` pre 
	JOIN `productos` pro ON pro.`id_productos`= pre.`id_producto`
	JOIN `stock` s  ON s.`id_precio`= pre.`id_precio`
	WHERE pre.`estado` ='A' AND pro.`estado`='A'
	ORDER BY pro.`id_productos` ASC;
    end if;
    if(op=2)then
	SELECT DISTINCT(pro.`id_productos`),pro.`nombre`,pro.`descripcion`,s.`id_precio`,s.`id_stock`,tp.`nombre` AS tipo ,mp.`nombre_medida`AS medida,ep.`nombre`AS envase ,mrp.`nombre`AS marca,s.`cantidad` FROM  `precios` pre 
	JOIN `productos` pro ON pro.`id_productos`= pre.`id_producto`
	JOIN `stock` s  ON s.`id_precio`= pre.`id_precio`
	JOIN `tipo` tp ON tp.`id_tipo`= pro.`id_tipo`
	JOIN `medidas` mp ON mp.`id_medidas`= pro.`id_medidas`
	JOIN `envase` ep ON ep.`id_envase` = pro.`id_envase`
	JOIN `marcas` mrp ON mrp.`id_marcas`=pro.`id_marcas`
	WHERE pre.`estado` ='A' AND pro.`estado`='A'
	ORDER BY pro.`id_productos` ASC;
     end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `mostrar_iva` */

/*!50003 DROP PROCEDURE IF EXISTS  `mostrar_iva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_iva`()
BEGIN
SELECT * FROM iva WHERE est = 'A';
END */$$
DELIMITER ;

/* Procedure structure for procedure `registrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `registrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_usuario`()
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Tipo_Producto` */

/*!50003 DROP PROCEDURE IF EXISTS  `Tipo_Producto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Tipo_Producto`()
BEGIN
select tipo.id_tipo, tipo.nombre from moduloprueba.tipo where estado = 'A' order by tipo.id_tipo;
END */$$
DELIMITER ;

/* Procedure structure for procedure `universal_sentences` */

/*!50003 DROP PROCEDURE IF EXISTS  `universal_sentences` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `universal_sentences`(IN consu TEXT)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProveedor`(IN op BIGINT)
BEGIN
IF (op=1)THEN
SELECT p.`id_proveedor`,p.`id_proveedor_clase`,pc.`clase`,p.`cedula_ruc`,p.`entidad`,p.`representante`,p.`direccion`,p.`fecha_registro`,p.`estado`,
p.`telefono`,p.`correo`,p.`direccionImagen`
FROM proveedor p 
JOIN `proveedor_clase` pc ON pc.`id_proclase`=p.`id_proveedor_clase`
WHERE p.`estado` = 'A';
END IF;
IF (op=2)THEN
SELECT p.`id_proveedor`,p.`id_proveedor_clase`,pc.`clase`,p.`cedula_ruc`,p.`entidad`,p.`representante`,p.`direccion`,p.`fecha_registro`,p.`estado`,
p.`telefono`,p.`correo`,p.`direccionImagen`
FROM proveedor p 
JOIN `proveedor_clase` pc ON pc.`id_proclase`=p.`id_proveedor_clase`
WHERE p.`estado` = 'I';
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarRegistroDeNotas` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarRegistroDeNotas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDeNotas`(IN op INT)
BEGIN
IF op=1 THEN
SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`,
p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`
,cnp.`forma_pago`,cnp.`plazo`
FROM `cabecera_nota_pedidos` cnp
JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor`
JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase`
WHERE cnp.estado= "SI";
END IF;
IF op=2 THEN
SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`,
p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`
,cnp.`forma_pago`,cnp.`plazo`
FROM `cabecera_nota_pedidos` cnp
JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor`
JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase`
WHERE cnp.estado= "NO";
END IF;
IF op=3 THEN
SELECT DISTINCT(cnp.id_cabecera_nota_pedidos),cnp.id_proveedor ,p.entidad AS proveedor,p.correo,p.id_proveedor_clase,cp.clase
,p.direccion,p.cedula_ruc,p.representante,p.telefono,cnp.fecha_creacion,cnp.estado,cnp.iva,cnp.descuento,cnp.total,cnp.`plazo`,cnp.`forma_pago`
FROM `detalle_nota_pedidos` dnp
JOIN `cabecera_nota_pedidos` cnp ON cnp.`id_cabecera_nota_pedidos`=dnp.`id_cabecera_nota_pedidos`
JOIN `proveedor` p ON p.`id_proveedor`=cnp.`id_proveedor`
JOIN `proveedor_clase` cp ON cp.`id_proclase`=p.`id_proveedor_clase`
WHERE cnp.estado= "SI"
ORDER BY cnp.`fecha_creacion`;
END IF;
IF op=4 THEN
SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`,
p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`
,cnp.`forma_pago`,cnp.`plazo`
FROM `cabecera_nota_pedidos` cnp
JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor`
JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase`
WHERE cnp.estado= "EF";
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarRegistroDetalleNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarRegistroDetalleNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDetalleNotaPedido`(IN op INT,in id text)
BEGIN
  IF op=1 THEN
SELECT dnp.`id_detalle_nota_pedidos`,dnp.`id_precio`,pre.`id_producto`,dnp.`bono`,
pro.`nombre` AS producto,pro.`id_marcas`,m.`nombre` AS marca,pro.`id_tipo`,t.`nombre` AS tipo,pro.`id_envase`,en.`nombre` AS envase,
pro.`id_medidas`,me.`nombre_medida` AS medida,
dnp.`id_cabecera_nota_pedidos`,dnp.`cantidad`,dnp.`precio`,dnp.`descuento`,dnp.`iva`,dnp.`total`
FROM `detalle_nota_pedidos` dnp
JOIN `cabecera_nota_pedidos` cnp ON cnp.`id_cabecera_nota_pedidos`= dnp.`id_cabecera_nota_pedidos`
JOIN `precios` pre ON pre.`id_precio` = dnp.`id_precio`
JOIN `productos` pro ON pro.`id_productos`= pre.`id_producto`
JOIN `marcas` m ON m.`id_marcas` = pro.`id_marcas`
JOIN `tipo` t ON t.`id_tipo` = pro.`id_tipo`
JOIN `envase` en ON en.`id_envase`= pro.`id_envase`
JOIN `medidas` me ON me.`id_medidas`= pro.`id_medidas`
WHERE dnp.`id_cabecera_nota_pedidos`= id
ORDER BY dnp.`id_cabecera_nota_pedidos`;
END IF;
IF op=2 THEN
SELECT dnp.`id_detalle_nota_pedidos`,dnp.`id_precio`,pre.`id_producto`,dnp.`bono`,
pro.`nombre` as producto,pro.`id_marcas`,m.`nombre` AS marca,pro.`id_tipo`,t.`nombre` AS tipo,pro.`id_envase`,en.`nombre` AS envase,
pro.`id_medidas`,me.`nombre_medida` AS medida,
dnp.`id_cabecera_nota_pedidos`,dnp.`cantidad`,dnp.`precio`,dnp.`descuento`,dnp.`iva`,dnp.`total`
FROM `detalle_nota_pedidos` dnp
JOIN `precios` pre ON pre.`id_precio` = dnp.`id_precio`
JOIN `productos` pro ON pro.`id_productos`= pre.`id_producto`
JOIN `marcas` m ON m.`id_marcas` = pro.`id_marcas`
JOIN `tipo` t ON t.`id_tipo` = pro.`id_tipo`
JOIN `envase` en ON en.`id_envase`= pro.`id_envase`
JOIN `medidas` me ON me.`id_medidas`= pro.`id_medidas`
ORDER BY dnp.`id_cabecera_nota_pedidos`;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `mostrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `mostrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_usuario`()
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
`fc_usuario`.`direccion`, `fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`, `fc_rol`.`cargo`, 
`fc_genero`.`genero`, `fc_discapacidad`.`discapacidad`, `fc_porcentaje_discapacidad`.`porcentaje`, `fc_session`.`estado`, `fc_session`.`observacion` 
FROM `fc_usuario` INNER JOIN `fc_session` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
INNER JOIN `fc_discapacidad` ON `fc_discapacidad`.`id_discapacidad` = `fc_usuario`.`id_discapacidad` 
INNER JOIN `fc_porcentaje_discapacidad` ON `fc_porcentaje_discapacidad`.`id_porcentaje_discapacidad` = `fc_usuario`.`id_porcentaje_discapacidad`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `nuevo_punto_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `nuevo_punto_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_punto_venta`(nombre_localidad1 TEXT,nombre_local1 TEXT,  direccion1 TEXT,dir_ip1 TEXT, OUT salida TEXT)
BEGIN
DECLARE id_localidad1 BIGINT;
DECLARE valor INT;
SELECT COUNT(nombre)INTO valor FROM fc_punto_venta WHERE nombre=nombre_local1;
SELECT id_localidad_guayas INTO id_localidad1 FROM fc_localidad_guayas WHERE localidad = nombre_localidad1;
IF(nombre_localidad1='Elija una opcion...')THEN
SET salida='Porfavor elija una opcion';
ELSEIF(valor = 0)THEN
INSERT INTO fc_punto_venta(id_localidad_guayas,nombre,  direccion, ip_publica,observacion, estado) 
                    VALUES(id_localidad1,    nombre_local1,  direccion1, dir_ip1,  '', 'A');
SET salida='Nuevo punto de venta ingresado';
ELSE SET salida='El punto de venta ya existe';
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `nuevo_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `nuevo_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_usuario`(IN nombre_punto_venta1 TEXT, IN nombre_rol1 TEXT,IN  cedula1 TEXT,IN nombre1 TEXT,IN apellido1 TEXT,IN telefono1 TEXT,IN correo1 TEXT, IN password1 TEXT,IN password2 TEXT,IN ruta_imagen1 TEXT,IN id_usuario1 BIGINT,IN ip_equipo1 TEXT,IN ip_publica1 TEXT,IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT /*,out salida text*/)
BEGIN
DECLARE salida TEXT;
DECLARE id_punto_venta1 BIGINT;
DECLARE fecha_registro1 DATE;
DECLARE id_rol1 BIGINT;
DECLARE valor INT;
DECLARE email INT;
DECLARE id_usuario2 BIGINT;
DECLARE rol_usuario BIGINT;
SELECT NOW() INTO fecha_registro1;
SELECT id_punto_venta INTO id_punto_venta1 FROM fc_punto_vental WHERE nombre=nombre_punto_venta1;
SELECT id_rol INTO id_rol1 FROM fc_rol WHERE nombre=nombre_rol1;
SELECT COUNT(correo) INTO email FROM fc_usuario WHERE correo=correo1;
SELECT COUNT(cedula) INTO valor FROM fc_usuario WHERE cedula=cedula1;
SELECT id_rol INTO rol_usuario FROM fc_usuario WHERE id_usuario=id_usuario1;
IF(rol_usuario != 1)THEN 
SET salida='No puedes ingresar usuarios porque no eres administrador';
ELSEIF(password1 != password2)THEN
SET salida='Contraseña incorrecta';
ELSEIF (valor=0 AND email=0)THEN
INSERT INTO fc_usuario( id_rol, cedula, nombre, apellido,telefono, correo, PASSWORD,ruta_imagen, fecha_registro, id_usuario_registro, estado, ip_equipo, ip_publica, usuario_equipo, dir_ip_completa) VALUES( id_rol1, cedula1, nombre1, apellido1, telefono1, correo1, password1,ruta_imagen1, fecha_registro1, id_usuario1,'A',ip_equipo1, ip_publica1,usuario_equipo1, dir_ip_completa1  );
SELECT MAX(id_usuario)INTO id_usuario2 FROM fc_usuario;
INSERT INTO `fc_usuario_punto_venta`(id_usuario, id_punto_venta) VALUES(id_usuario2, id_punto_venta1);
SET salida='Nuevo usuario ingresado'; 
ELSE 
SET salida='Usuario ya existente';
END IF;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
