/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.25-log : Database - moduloprueba
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `bitacora_faltantes` */

insert  into `bitacora_faltantes`(`id_bitacora_faltantes`,`id_producto`,`id_usuario`,`fecha_registro`,`cantidad`) values (1,21,NULL,'2018-12-11 23:58:25',15),(2,21,NULL,'2018-12-12 00:12:23',12),(3,22,NULL,'2018-12-13 16:29:18',200),(4,21,NULL,'2018-12-13 16:29:18',100),(5,23,NULL,'2018-12-13 16:29:18',300),(6,24,NULL,'2018-12-13 16:29:18',400),(7,25,NULL,'2018-12-13 16:29:18',500),(8,27,NULL,'2018-12-13 16:29:18',600),(9,31,NULL,'2019-03-19 17:47:07',100),(10,33,NULL,'2019-03-19 17:47:07',100),(11,32,NULL,'2019-03-21 16:52:41',50),(12,22,NULL,'2019-03-21 16:52:41',30),(13,27,NULL,'2019-03-21 16:52:41',40),(14,23,NULL,'2019-03-21 18:07:56',20),(15,21,NULL,'2019-03-22 16:12:33',45),(16,37,NULL,'2019-03-22 16:13:06',34),(17,38,NULL,'2019-03-22 17:23:34',10);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `cabecera_compra` */

insert  into `cabecera_compra`(`id_cabecera_compra`,`id_proveedor`,`id_usuario`,`fecha_creacion`,`plazo`,`id_sucursal`,`id_tipoPago`,`iva`,`descuento`,`total`,`estado`) values (16,8,2,'2019-03-11 04:52:06','Inmediato',2,1,4.4520000,0.0000000,41.5520000,'A'),(18,14,2,'2019-03-11 05:01:30','Inmediato',2,1,2.8740000,0.0000000,26.8240000,'A'),(19,16,2,'2019-03-14 12:36:15','Inmediato',2,1,0.9000000,0.0000000,132.7200000,'D'),(20,14,2,'2019-03-21 05:02:22','Inmediato',2,1,4.0500000,0.0000000,75.6900000,'A'),(21,14,2,'2019-03-22 05:31:48','Inmediato',2,1,0.0000000,0.0000000,2.0000000,'A');

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
  `iva` decimal(10,7) NOT NULL,
  `descuento` decimal(10,7) NOT NULL,
  `total` decimal(10,7) NOT NULL,
  PRIMARY KEY (`id_cabecera_nota_pedidos`),
  KEY `fk_cabecera_nota_pedidos_proveedor_idx` (`id_proveedor`),
  KEY `fk_cabecera_nota_pedidos_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_cabecera_nota_pedidos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

/*Data for the table `cabecera_nota_pedidos` */

insert  into `cabecera_nota_pedidos`(`id_cabecera_nota_pedidos`,`id_proveedor`,`id_usuario`,`fecha_creacion`,`estado`,`plazo`,`forma_pago`,`iva`,`descuento`,`total`) values (85,8,2,'2019-03-11 16:51:46','EF','Inmediato','Contado',4.4520000,0.0000000,41.5520000),(86,14,2,'2019-03-11 17:01:15','EF','Inmediato','Contado',2.8740000,0.0000000,26.8240000),(87,11,2,'2019-03-12 16:29:26','SI','Inmediato','Contado',4.2600000,0.0000000,574.9500000),(88,8,2,'2019-03-12 16:42:26','SI','Inmediato','Contado',0.0000000,0.0000000,405.8400000),(89,16,2,'2019-03-14 12:35:13','D','Inmediato','Contado',0.9000000,0.0000000,132.7200000),(90,16,2,'2019-03-18 17:23:47','SI','Inmediato','Contado',3.0600000,0.0000000,72.2600000),(91,11,2,'2019-03-20 18:55:42','SI','Inmediato','Contado',999.9999999,0.0000000,999.9999999),(92,14,2,'2019-03-21 17:01:16','EF','Inmediato','Contado',4.0500000,0.0000000,75.6900000),(93,8,2,'2019-03-22 15:48:17','SI','Inmediato','Contado',13.9356000,0.0000000,130.0656000),(94,14,2,'2019-03-22 17:29:52','EF','Inmediato','Contado',0.0000000,0.0000000,2.0000000);

/*Table structure for table `cabecera_venta` */

DROP TABLE IF EXISTS `cabecera_venta`;

CREATE TABLE `cabecera_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num_venta` varchar(70) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `id_cliente` bigint(20) DEFAULT NULL,
  `id_usuario` bigint(11) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `tipo_pago` text,
  `tipo_venta` text,
  `subtotal_con_iva` decimal(10,7) NOT NULL,
  `subtotal_sin_iva` decimal(10,7) NOT NULL,
  `iva_total` decimal(10,7) NOT NULL,
  `descuento_total` decimal(10,7) NOT NULL,
  `total` decimal(10,7) NOT NULL,
  `utilidad` decimal(10,7) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_cliente` (`id_cliente`),
  KEY `fk_id_usuario` (`id_usuario`),
  KEY `fk_id_sucursal` (`id_sucursal`),
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_Clientes`),
  CONSTRAINT `fk_id_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `fc_session` (`id_sesion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `cabecera_venta` */

insert  into `cabecera_venta`(`id`,`num_venta`,`fecha_creacion`,`id_cliente`,`id_usuario`,`id_sucursal`,`tipo_pago`,`tipo_venta`,`subtotal_con_iva`,`subtotal_sin_iva`,`iva_total`,`descuento_total`,`total`,`utilidad`,`estado`) values (1,'000001','2019-03-21 17:43:07',10,36,2,'contado','Factura',10.8000000,35.1000000,1.2960000,0.0000000,51.4080000,13.3392000,'A'),(2,'000002','2019-03-21 17:50:24',3,36,2,'contado','Factura',10.8000000,35.1000000,1.2960000,0.0000000,51.4080000,13.3392000,'A'),(3,'000003','2019-03-22 17:37:44',10,36,2,'contado','Factura',0.0000000,3.6000000,0.0000000,0.0000000,4.0320000,0.6720000,'A');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

insert  into `clientes`(`id_Clientes`,`Cedula`,`Nombre`,`Apellido`,`Direccion`,`Fecha_reg`,`Estado`,`str_telefono`,`str_correo`) values (1,'0952364855','KELLY','MERCADO','GUAYAQUIL','2018-12-04','I','',''),(2,'0932067010','JOSE FRANCISCO','LOPEZ MACIAS','GUAYAQUIL','2019-01-02','A','0985849256 CONVENCIONAL','gmail'),(3,'0924876015','JUAN','TOMALA','COOP FLORIDA NORET','2018-12-10','A','0999999999 CONVENCIONAL','jeff@gmail.com'),(4,'0924876251','LAURA  MARIA','TOMALA','VALERIO ESTACIO','2018-12-21','A','2154151521356 CONVENCIONAL','jdsb@gmail.com'),(5,'0944037977','ALEX','MARIN','SEDALANA Y LA 10MA','2018-12-10','I','0993387081 CELULAR','am3377944@gmail.com'),(6,'0912232525','FIORELLA','SABANDO','PORTETE ','2018-12-10','A','0991232552 CELULAR','fiosaban2@gmail.com'),(7,'0991251252','JAIRO','SANTA FE','GUAYAQUIL','2018-12-10','A','0994521252 CELULAR ','sua@hotmail.es'),(8,'0931978365','ARISTIDES','BAJAÑA','GUASMO NORTE','2019-01-23','A','4767657876767 CONVENCIONAL','wbm.andres@gmail.com'),(9,'9348974397','KELLY JACINTA','MONTECARBO','LALA','2019-02-11','A','5435345346 CONVENCIONAL','4btrb@hotmail.com'),(10,'9999999999','CONSUMIDOR FINAL','XXXXXXXXX','xxxxxxxxxxx','2019-03-21','A','0000000000 CONVENCIONAL','xxxxx@gmail.com');

/*Table structure for table `correo` */

DROP TABLE IF EXISTS `correo`;

CREATE TABLE `correo` (
  `id_Correo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Correo` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `correo` */

insert  into `correo`(`id_Correo`,`Correo`,`Cedula`) values (1,'marin.hotmail.com',''),(3,'123.gmail',''),(4,'aaa.gmail',''),(5,'gmail','3333333333'),(6,'hotmail','0932067010'),(7,'hotmail','5555555555'),(8,'hhhhh','0932067010'),(9,'gmail','0932067010'),(10,'hotmail.es','5555555555'),(11,'jeff@gmail.com','0924876015'),(12,'jdsb@gmail.com','0924876251'),(13,'am3377944@gmail.com','0944037977'),(14,'fiosaban2@gmail.com','0912232525'),(15,'sua@hotmail.es','0991251252'),(16,'wbm.andres@gmail.com','0931978365'),(17,'675675@','091327918856'),(18,'4btrb@hotmail.com','9348974397'),(19,'xxxxx@gmail.com','9999999999');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_compra` */

insert  into `detalle_compra`(`id_detalle_compra`,`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,`bono`) values (1,16,44,20,0.7500000,0.0000000,1.8000000,16.8000000,0),(2,16,27,34,0.6500000,0.0000000,2.6520000,24.7520000,0),(3,18,44,12,0.7500000,0.0000000,1.0800000,10.0800000,0),(4,18,27,23,0.6500000,0.0000000,1.7940000,16.7440000,0),(5,19,25,12,1.6200000,0.0000000,0.0000000,19.4400000,0),(6,19,42,23,4.5600000,0.0000000,0.0000000,104.8800000,0),(7,19,44,10,0.7500000,0.0000000,0.9000000,8.4000000,2),(8,20,40,10,2.3400000,0.0000000,0.0000000,23.4000000,0),(9,20,8,23,0.6300000,0.0000000,0.0000000,14.4900000,0),(10,20,44,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(11,21,52,10,0.1666667,0.0000000,0.0000000,2.0000000,2);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_faltantes` */

insert  into `detalle_faltantes`(`id_detalle_faltantes`,`id_producto`,`id_usuario`,`fecha_registro`,`cantidad`,`estado`) values (2,21,NULL,'2019-03-22 16:12:33',112,'TR'),(3,22,NULL,'2019-03-21 16:52:41',207,'OK'),(4,23,NULL,'2019-03-21 18:07:56',320,'TR'),(5,25,NULL,'2018-12-13 16:29:18',500,'OK'),(6,24,NULL,'2018-12-13 16:29:18',400,'OK'),(10,27,NULL,'2019-03-21 16:52:41',594,'OK'),(11,32,NULL,'2019-03-21 16:52:41',60,'TR'),(12,31,2,'2019-03-19 17:47:07',100,'TR'),(13,33,2,'2019-03-19 17:47:07',55,'OK'),(14,34,NULL,'2019-02-25 00:00:00',13,'NO'),(15,35,NULL,'2019-02-25 00:00:00',0,'NO'),(16,36,NULL,'2019-03-21 00:00:00',0,'NO'),(17,37,NULL,'2019-03-22 16:13:06',34,'TR'),(18,38,NULL,'2019-03-22 17:23:34',0,'OK');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_nota_pedidos` */

insert  into `detalle_nota_pedidos`(`id_detalle_nota_pedidos`,`id_precio`,`id_cabecera_nota_pedidos`,`cantidad`,`precio`,`descuento`,`iva`,`total`,`bono`) values (1,44,85,20,0.7500000,0.0000000,1.8000000,16.8000000,0),(2,27,85,34,0.6500000,0.0000000,2.6520000,24.7520000,0),(3,44,86,12,0.7500000,0.0000000,1.0800000,10.0800000,0),(4,27,86,23,0.6500000,0.0000000,1.7940000,16.7440000,0),(5,42,87,89,4.5600000,0.0000000,0.0000000,405.8400000,0),(6,13,87,199,0.6500000,0.0000000,0.0000000,129.3500000,0),(7,42,88,89,4.5600000,0.0000000,0.0000000,405.8400000,0),(8,27,87,20,0.6500000,0.0000000,1.5600000,14.5600000,0),(9,44,87,30,0.7500000,0.0000000,2.7000000,25.2000000,0),(10,25,89,12,1.6200000,0.0000000,0.0000000,19.4400000,0),(11,42,89,23,4.5600000,0.0000000,0.0000000,104.8800000,0),(12,44,89,10,0.7500000,0.0000000,0.9000000,8.4000000,2),(13,44,90,34,0.7500000,0.0000000,3.0600000,28.5600000,0),(14,40,90,12,2.3400000,0.0000000,0.0000000,28.0800000,0),(15,24,90,11,1.4200000,0.0000000,0.0000000,15.6200000,0),(16,8,92,23,0.6300000,0.0000000,0.0000000,14.4900000,0),(17,44,92,45,0.7500000,0.0000000,4.0500000,37.8000000,0),(18,40,92,10,2.3400000,0.0000000,0.0000000,23.4000000,0),(19,27,93,12,0.6500000,0.0000000,0.9360000,8.7360000,0),(20,39,93,23,2.7900000,0.0000000,7.7004000,71.8704000,0),(21,26,93,23,1.9200000,0.0000000,5.2992000,49.4592000,0),(22,52,94,10,0.1666667,0.0000000,0.0000000,2.0000000,2);

/*Table structure for table `detalle_venta` */

DROP TABLE IF EXISTS `detalle_venta`;

CREATE TABLE `detalle_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cabecera_venta` bigint(20) DEFAULT NULL,
  `id_control` bigint(20) NOT NULL,
  `precio` decimal(10,7) DEFAULT NULL,
  `cantidad` bigint(30) NOT NULL,
  `iva` decimal(10,7) DEFAULT NULL,
  `descuento` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_cabecera_venta` (`id_cabecera_venta`),
  KEY `fk_id_control` (`id_control`),
  CONSTRAINT `fk_id_cabecera_venta` FOREIGN KEY (`id_cabecera_venta`) REFERENCES `cabecera_venta` (`id`),
  CONSTRAINT `fk_id_control` FOREIGN KEY (`id_control`) REFERENCES `precios` (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `detalle_venta` */

insert  into `detalle_venta`(`id`,`id_cabecera_venta`,`id_control`,`precio`,`cantidad`,`iva`,`descuento`) values (1,1,8,0.9000000,23,0.0000000,0.0000000),(2,1,27,0.9000000,12,1.2960000,0.0000000),(3,1,40,2.8800000,5,0.0000000,0.0000000),(4,2,8,0.9000000,23,0.0000000,0.0000000),(5,2,27,0.9000000,12,1.2960000,0.0000000),(6,2,40,2.8800000,5,0.0000000,0.0000000),(7,3,52,0.2400000,15,0.0000000,0.0000000);

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `fc_bitacora_registros_usuario` */

insert  into `fc_bitacora_registros_usuario`(`id_bitacora`,`id_usuario`,`cedula`,`nombres`,`apellidos`,`telefono`,`convencional`,`correo`,`fecha_registro`,`estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`genero`,`direccion`,`rol`,`fecha_actualizacion`,`accion`,`observacion`) values (1,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'mucho lote',NULL,'2019-02-03 19:21:39','Actualizacion, registro anterior',NULL),(2,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23','1',NULL,NULL,NULL,NULL,'femenino','mucho lote','Administrador','2019-02-03 19:31:38','Actualizacion, registro anterior',NULL),(3,33,'0950963059','jazmin','solorzano','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'viernes santo',NULL,'2019-02-03 21:11:50','Actualizacion, registro anterior',NULL),(4,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(5,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(6,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(7,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(8,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-04 15:03:32','usuario actualizado',NULL),(9,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-04 16:08:36','usuario actualizado',NULL),(10,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-06 16:20:24','usuario actualizado',NULL),(11,40,'0509060507','prueba ','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 09:57:09','usuario actualizado',NULL),(12,36,'0950963058','carlos','cordova','0950963058','0950963058','cc@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-07 11:14:03','usuario actualizado',NULL),(13,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:37:50','usuario actualizado',NULL),(14,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','inactivo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:41:10','usuario actualizado',NULL),(15,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(16,41,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'masculino','pruebbaaaaa 50000','Supervisor',NULL,NULL,NULL),(17,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(18,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(19,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(20,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(21,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(22,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(23,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(24,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(25,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(26,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(27,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(28,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(29,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(30,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(31,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(32,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 11:15:28','usuario actualizado',NULL),(33,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(34,42,'0950963057','jazmin','solorzano','0950963058','0950963058','12345678','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 13:30:40','usuario actualizado',NULL),(35,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 16:59:05','usuario actualizado',NULL),(36,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(37,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(38,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:06:06','usuario actualizado',NULL),(39,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(40,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:12:22','usuario actualizado',NULL),(41,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:15:40','usuario actualizado',NULL),(42,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(43,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(44,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-02-19 15:59:34','usuario actualizado',NULL),(45,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(46,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-03-06 14:12:47','usuario actualizado',NULL),(47,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','192.168.100.9','1','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 14:14:04','usuario actualizado',NULL),(48,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','127.0.0.1','1','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 16:46:41','usuario actualizado',NULL),(49,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','192.168.100.9','1','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9','MASCULINO','BASTION POPULAR','SUPERVISOR',NULL,NULL,NULL),(50,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','10.227.223.115','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(51,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','10.227.223.115','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(52,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','192.168.1.8','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(53,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','192.168.1.18','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

/*Data for the table `fc_bitacora_seguridad` */

insert  into `fc_bitacora_seguridad`(`id_bitacora_seguridad`,`user`,`password`,`ip_equipo`,`ip_publico`,`usuario_equipo`,`fecha_login`,`dir_ip_completa`,`Verficacion`) values (1,'yyyyyy','yyyyyyy','127.0.0.1','100000000','carlos-PC','2019-01-11 17:53:03','localhost/127.0.0.1/carlos-PC/127.0.0.1',NULL),(2,'yyyyy','qwertt','127.0.0.1','100000000','carlos-PC','2019-01-11 18:04:04','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(3,'ddgbvdgb','gvgvtgvrfc   tbv','127.0.0.1','100000000','carlos-PC','2019-01-11 18:05:49','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(4,'erver','sdcef','127.0.0.1','100000000','carlos-PC','2019-01-11 18:07:43','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(5,'ece','ercfe','127.0.0.1','100000000','carlos-PC','2019-01-11 18:11:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(6,'rtbgrt','dfvr','127.0.0.1','100000000','carlos-PC','2019-01-11 18:12:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(7,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:13:47','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(8,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:14:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(9,'fsgfdg','ecer','127.0.0.1','100000000','carlos-PC','2019-01-11 18:15:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(10,'fffff','ggggg','127.0.0.1','100000000','carlos-PC','2019-01-11 18:18:22','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(11,'jzhxkzcxhk','ssdsd','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:08','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(12,'@gmail.com.ec','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(13,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:39','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(14,'holas','1234','127.0.0.1','100000000','carlos-PC','2019-01-11 20:09:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(15,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 20:10:24','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(16,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 16:03:24','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(17,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 13:49:56','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(18,'jazmiliana','161012','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:09','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(19,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:33','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(20,'@gmail.com','123','127.0.0.1','100000000','carlos-PC','2019-01-14 18:54:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(21,'@gmail.com','12345','127.0.0.1','100000000','carlos-PC','2019-01-14 18:55:07','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(22,'@gmail.com','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:38:06','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(23,'ana cargosa','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:39:46','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(24,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:08:11','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(25,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:39:49','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(26,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:41:40','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(27,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:42:26','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(28,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 13:15:53','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(29,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 22:33:56','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(30,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:18:39','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(31,'@hotmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:21','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(32,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(33,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:20:44','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(34,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:32:01','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(35,'cc2@gmail.com','0950963059','192.168.100.9','100000000','carlos-PC','2019-02-07 10:15:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(36,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-07 14:21:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(37,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:35:09','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(38,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:38:30','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(39,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:04','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(40,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:23','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(41,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:41:10','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(42,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(43,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(44,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:20:54','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(45,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:02:20','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(46,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:25:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(47,'cc@gmail.com','cc@gmail.com','127.0.0.1','100000000','carlos-PC','2019-02-08 17:33:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(48,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:37:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(49,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:11','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(50,'kasdkqdk','kjbkjwbefkbwek','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(51,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:47:59','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(52,'cc@gmial.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:49:02','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(53,'ahajdv','jhjved','127.0.0.1','100000000','carlos-PC','2019-02-08 17:54:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(54,'aejhejhv','jhhvwejhfvwej','127.0.0.1','100000000','carlos-PC','2019-02-08 17:55:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(55,'ajsvjavcj','jhavsjvcj','127.0.0.1','100000000','carlos-PC','2019-02-08 17:56:29','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(56,'adcvjav','jhjhcjhc','127.0.0.1','100000000','carlos-PC','2019-02-08 18:01:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(57,'bfccgc','hfjfj','127.0.0.1','100000000','carlos-PC','2019-02-08 18:05:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(58,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:16','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(59,'lsdslñd','ldsñsc','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(60,'sdcewc','wefwfew','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(61,'ssckjsnk','jkncksec','192.168.100.9','100000000','carlos-PC','2019-02-09 15:42:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(62,'bsdjbcsd','jdksjdnks','192.168.100.9','100000000','carlos-PC','2019-02-09 15:43:00','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(63,'bsjcjscbs','jbjbsbd','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:13','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(64,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(65,'jdsncckdb','jknkneiue','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:40','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(66,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:46:17','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(67,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:15','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(68,'jckdnknsc','lkqeen','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:37','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(69,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:52','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(70,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:12:34','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(71,'adwad','qdwqdawd','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(72,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(73,'afadasda','sefsfe','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(74,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:52:18','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(75,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(76,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:47','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(77,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(78,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(79,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:11:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(80,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:14:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(81,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:20:06','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(82,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:26:59','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(83,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:48:35','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(84,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(85,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(86,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:32:30','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(87,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:36:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(88,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(89,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:36','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(90,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 18:00:20','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(91,'admin','admin123','172.10.180.83','100000000','carlos-PC','2019-02-11 18:09:39','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(92,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:31','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(93,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(94,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:31:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(95,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-11 21:50:44','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(96,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-12 16:47:57','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(97,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-12 21:41:22','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(98,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:19','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(99,'ccgmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(100,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:52:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(101,'cc@gmailcom','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:05:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(102,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:06:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(103,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:40:18','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(104,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 17:57:02','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(105,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 17:58:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(106,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:05:05','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(107,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:08:56','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(108,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:12:11','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(109,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:13:59','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(110,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:15:06','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(111,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:16:22','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(112,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:18:52','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(113,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:21:48','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(114,'farmacia','1234','192.168.1.4','100000000','DESKTOP-28AV0M7','2019-03-14 12:34:46','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.4','I'),(115,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:14:28','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(116,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:22:49','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(117,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:26:25','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(118,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:47:50','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(119,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:48:18','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(120,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:53:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(121,'cc@gmail.com','0950963058','10.227.220.1','100000000','carlos-PC','2019-03-20 16:51:48','localhost/127.0.0.1/carlos-PC/10.227.220.1','C'),(122,'cc@gmail.com','0950963058','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-21 16:28:40','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(123,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-21 17:35:18','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(124,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 01:47:54','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(125,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 11:58:22','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(126,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:19:03','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(127,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:24:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(128,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:27:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(129,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:30:57','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(130,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:16:19','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(131,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:36:08','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(132,'jeffersonxamir@gamil.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:40:41','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(133,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:40:52','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(134,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:45:11','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(135,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:47:13','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(136,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:51:02','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(137,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:53:48','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(138,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:56:38','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(139,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 14:00:28','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(140,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 14:09:26','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(141,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 15:46:47','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(142,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-03-22 16:01:00','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(143,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:37:57','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(144,'jeffersonxamir@gmail.com','123446','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:49:46','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(145,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:56:12','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(146,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:57:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(147,'jeffersonxamir@gamil.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 19:36:47','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','I'),(148,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 19:36:59','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(149,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 22:56:47','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(150,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:18:32','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(151,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:20:31','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(152,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:21:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(153,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:24:18','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(154,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:27:09','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(155,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:30:30','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(156,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:35:28','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(157,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:59:38','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(158,'cc2@gmail.com','0950963059','192.168.43.241','100000000','carlos-PC','2019-03-26 17:31:38','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(159,'vendedor@gmail.com','vendedor','192.168.43.241','100000000','carlos-PC','2019-03-26 17:49:57','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(160,'bodeguero@gmail.com','bodeguero','192.168.43.241','100000000','carlos-PC','2019-03-26 17:50:35','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(161,'jeffersonxamir@gmail.com','123456','192.168.43.241','100000000','carlos-PC','2019-03-26 17:51:22','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(162,'ccgmail.com','0950963054','127.0.0.1','100000000','carlos-PC','2019-03-28 17:51:38','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(163,'cc@gmail.com','095096351','127.0.0.1','100000000','carlos-PC','2019-03-28 17:52:08','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(164,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 17:52:30','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(165,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 17:53:17','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(166,'vendedor','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 17:54:07','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(167,'vendedor@gmail.com','0950','127.0.0.1','100000000','carlos-PC','2019-03-28 17:54:28','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(168,'vendedor@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 17:59:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(169,'vendedor@gmail.com','vendedorsdsd','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:28','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(170,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:43','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(171,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:55','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(172,'vendedor@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:14:24','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(173,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:14:48','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(174,'supervisor@gmail.com','supervisor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:15:20','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(175,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:18:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(176,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:20:45','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(177,'supervisor@gmail.com','supervisor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:21:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(178,'administardor@gmail.com','administrador','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(179,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:19','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(180,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','C');

/*Table structure for table `fc_discapacidad` */

DROP TABLE IF EXISTS `fc_discapacidad`;

CREATE TABLE `fc_discapacidad` (
  `id_discapacidad` bigint(20) NOT NULL AUTO_INCREMENT,
  `discapacidad` text,
  PRIMARY KEY (`id_discapacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `fc_discapacidad` */

insert  into `fc_discapacidad`(`id_discapacidad`,`discapacidad`) values (1,'ninguno'),(2,'visual'),(3,'motriz'),(4,'auditiva'),(5,'intelectual'),(6,'vocal');

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
  `ruc_local` text,
  `id_localidad_guayas` bigint(20) DEFAULT NULL,
  `estado` text,
  `observacion` text,
  PRIMARY KEY (`id_punto_venta`),
  KEY `id_localidad_guayas` (`id_localidad_guayas`),
  CONSTRAINT `fc_punto_venta_ibfk_1` FOREIGN KEY (`id_localidad_guayas`) REFERENCES `fc_localidad_guayas` (`id_localidad_guayas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `fc_punto_venta` */

insert  into `fc_punto_venta`(`id_punto_venta`,`nombre`,`direccion`,`telefono_pv`,`ip_publica`,`fecha_creacion`,`fecha_actualizacion`,`ruc_local`,`id_localidad_guayas`,`estado`,`observacion`) values (1,'PRUEBA CIEN','PRUEBA DIRECCION','0910203040',NULL,'2019-02-21','2019-03-29','0950963058001',1,'ACTIVO','LOCAL NUEVO'),(2,'PRUEBA DOS','PRUEBA','9506046506',NULL,'2019-03-05',NULL,'5040807060',5,'ACTIVO','LOCAL NUEVO'),(3,'BALAO','BALAO','0980504012',NULL,'2019-03-29',NULL,'5547124586',7,'ACTIVO','NUEVO LOCAL'),(4,'DURAN','DURAN','0840602010',NULL,'2019-03-29',NULL,'4475214578',2,'ACTIVO','NUEVO LOCAL'),(5,'BALZAR','BALZAR','0840506321',NULL,'2019-03-29',NULL,'0845010705',4,'ACTIVO','NUEVO LOCAL');

/*Table structure for table `fc_rol` */

DROP TABLE IF EXISTS `fc_rol`;

CREATE TABLE `fc_rol` (
  `id_rol` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo` text,
  `descripcion` text,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `fc_rol` */

insert  into `fc_rol`(`id_rol`,`cargo`,`descripcion`) values (1,'SUPERVISOR','Administra local farmaceutico'),(2,'ADMINISTRADOR','Tiene el control de todo el sistema'),(3,'VENDEDOR','Maneja el area de vantas del sistema'),(5,'BODEGUERO','administra bodega');

/*Table structure for table `fc_session` */

DROP TABLE IF EXISTS `fc_session`;

CREATE TABLE `fc_session` (
  `id_sesion` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_rol` bigint(20) DEFAULT NULL,
  `observacion` text,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `id_punto_venta` bigint(20) DEFAULT NULL,
  `id_punto_venta_dos` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_sesion`),
  KEY `fk_fc_session_usuario_idx` (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  KEY `id_punto_venta` (`id_punto_venta`),
  KEY `id_punto_venta_dos` (`id_punto_venta_dos`),
  CONSTRAINT `fc_session_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `fc_rol` (`id_rol`),
  CONSTRAINT `fc_session_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `fc_usuario` (`id_usuario`),
  CONSTRAINT `fc_session_ibfk_3` FOREIGN KEY (`id_punto_venta`) REFERENCES `fc_punto_venta` (`id_punto_venta`),
  CONSTRAINT `fc_session_ibfk_4` FOREIGN KEY (`id_punto_venta_dos`) REFERENCES `fc_punto_venta` (`id_punto_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `fc_session` */

insert  into `fc_session`(`id_sesion`,`id_usuario`,`id_rol`,`observacion`,`fecha_actualizacion`,`id_punto_venta`,`id_punto_venta_dos`) values (36,37,1,'PRUEBA 69','2019-03-13 14:46:32',1,NULL),(37,38,3,'NUEVO USUARIO',NULL,1,NULL),(38,39,1,'activo','2019-02-04 16:12:32',1,NULL),(39,40,5,'NUEVO USUARIO',NULL,1,NULL),(40,41,3,'activo','2019-02-07 11:41:10',1,NULL),(41,42,1,'NUEVO USUARIO',NULL,1,NULL),(42,43,5,'ppppppppppppppp','2019-02-08 11:17:01',1,NULL),(43,44,2,'actualizacion de admin ','2019-02-09 17:15:40',1,NULL),(44,45,5,'NUEVO USUARIO',NULL,1,NULL),(45,46,5,'NUEVO USUARIO',NULL,1,NULL),(46,47,3,'NUEVO USUARIO',NULL,1,NULL),(47,48,5,'NUEVO USUARIO',NULL,1,NULL),(48,49,5,'NUEVO USUARIO',NULL,1,NULL),(49,50,5,'nada njj','2019-02-19 16:01:31',1,NULL),(50,51,1,'NUEVO USUARIO',NULL,1,NULL),(51,52,1,'NUEVO USUARIO',NULL,1,NULL),(52,53,5,'nuevo usuario',NULL,1,NULL),(53,54,2,'NUEVO XD','2019-03-23 22:19:14',1,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `fc_usuario` */

insert  into `fc_usuario`(`id_usuario`,`cedula`,`nombres`,`apellidos`,`telefono`,`convencional`,`correo`,`password`,`ruta_imagen`,`fecha_registro`,`id_estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`id_genero`,`direccion`) values (37,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','0950963058','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-04',1,'192.168.100.9','2','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION POPULAR'),(38,'0102030405','ana karen','chichande perez','0950963058','0950963058','ac@hotmail.com','12345','1','2019-02-04',1,'2','3','4','5',2,'perimetral '),(39,'0910203040','jose','chulli','0912345678','0912345678','pp@gmail.com','12345','1','2019-02-04',1,'1','2','3','4',1,'portete'),(40,'0908010203','jazmin','solorzano','0912345678','0912345678','dd@gmail.com','12345','1','2019-02-04',2,'2','3','4','5',2,'viernes santo'),(41,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','12345','1','2019-02-06',1,'1','2','3','4',2,'prubaaaaa'),(42,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','0950963059','1','2019-02-07',1,'farmacia','3','192.168.100.9','carlos-PC',1,'pruebbaaaaa 50000'),(43,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','0950963057','1','2019-02-07',2,'1','2','3','4',2,'pruebaaaaaaa 60000'),(44,'0123456789','ADMIN','ADMIN','1234567890','1234567890','admin','admin123','1','2019-02-09',1,'192.168.100.9','2','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'la calle q pasa y  la q cruza'),(45,'0102030406','prueba','pruebaaa','0912345678','0912345678','prue@gmail.com','0102030406','IMAGEN','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'saconacnaocoas'),(46,'0801020308','anaoanca','acasncas','0912345678','0912345678','abc@gmail.com','0801020308','','2019-02-09',2,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'acsacacascsvsvsd'),(47,'0911111111','VENDEDOR','VENDEDOR','0912345678','0912345678','vendedor@gmail.com','vendedor','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'zkjkbcusbackbs'),(48,'0922222222','BODEGUERO','BODEGUERO','0912345678','0912345678','bodeguero@gmail.com','bodeguero','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'scjabckac akscasc'),(49,'1234567890','jose','lopez','0967899045','887878787','jhjhjh','1234567890','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-11',1,'172.10.180.83','3','carlos-PC','localhost/127.0.0.1/carlos-PC/172.10.180.83',1,'loja'),(50,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','0915101621','1','2019-02-19',2,'127.0.0.1','2','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1',1,'oconnor'),(51,'0933333333','SUPERVISOR','SUPERVISOR','0950302021','09123456789','supervisor@gmail.com','supervisor','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-21',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION'),(52,'0098754120','PRUEBA ','PREUBA ','0912345678','0123456798','pppp@gmail.com','0098754120','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION '),(53,'0970405487','PRUEBA DOS','PRUEBA DOS','0912345678','0912345678','pruebados@gmail.con','0970405487','','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'ALSCNKACBW'),(54,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','123456','C:\\Users\\usuario\\Documents\\resoaldo j7\\status\\c71b5e4bdc3043459e777fa92fab6f8a.jpg','2019-03-19',1,'192.168.1.18','2','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18',1,'COOP.FRANCISCO JACOME');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `marcas` */

insert  into `marcas`(`id_marcas`,`nombre`,`estado`) values (1,'bayer','A'),(2,'pelikan','A'),(3,'bago','A');

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
  `porcentaje` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_precio`),
  KEY `fk_precios_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `precios` */

insert  into `precios`(`id_precio`,`id_producto`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`,`porcentaje`) values (1,22,0.55,0.60,'I','0000-00-00 00:00:00',NULL,0),(2,22,0.70,0.80,'I','0000-00-00 00:00:00',NULL,0),(8,22,0.63,0.90,'A','2018-12-20 17:56:59',2,0),(13,22,0.65,0.95,'A','2018-12-20 19:24:12',2,0),(14,22,0.45,0.35,'I','2018-12-20 19:24:12',5,0),(16,22,0.59,0.97,'I','2018-12-14 00:57:18',2,0),(17,22,0.73,0.96,'I','2018-12-14 08:28:31',2,0),(18,30,15.60,32.62,'A','2018-12-18 03:27:01',2,0),(19,22,0.44,0.61,'I',NULL,NULL,0),(20,28,0.63,1.24,'A','2019-01-03 02:12:54',2,0),(21,28,0.89,0.92,'I','2018-12-19 00:01:25',2,0),(22,28,0.96,0.97,'I','2018-12-20 00:49:40',2,0),(23,27,1.56,1.57,'I','2019-01-03 17:10:12',2,0),(24,27,1.42,1.78,'A','2019-01-03 17:10:29',2,0),(25,27,1.62,1.96,'A','2019-01-03 17:10:41',2,0),(26,23,1.92,2.22,'A','2018-12-20 01:25:44',2,0),(27,31,0.65,0.90,'A','2019-01-16 03:53:26',2,0),(28,31,0.90,0.96,'I',NULL,NULL,0),(29,31,0.63,0.79,'I','2019-01-03 17:11:01',2,0),(30,28,0.86,0.98,'I',NULL,NULL,0),(31,24,0.26,0.30,'I','2018-12-21 01:03:22',2,0),(32,24,0.60,0.61,'I',NULL,NULL,0),(33,24,0.56,0.57,'I','2018-12-21 01:15:00',2,0),(34,24,58.60,59.60,'I',NULL,NULL,0),(35,24,0.67,0.97,'A',NULL,NULL,0),(36,28,0.90,0.96,'I','2018-12-21 01:39:54',2,0),(37,31,0.67,0.65,'I','2018-12-21 11:55:28',2,0),(38,31,0.68,0.69,'I','2019-01-02 15:23:05',2,0),(39,32,2.79,2.87,'A','2018-12-21 11:10:45',2,0),(40,27,2.34,2.88,'A','2019-01-20 00:00:01',2,0),(41,27,23.50,24.67,'A','2019-01-20 00:00:00',2,0),(42,21,4.56,6.76,'A','2019-01-20 00:00:00',2,0),(43,30,4.67,6.89,'A','2019-01-20 03:46:15',2,0),(44,33,0.75,1.00,'A','2019-01-20 12:38:15',2,0),(45,34,12.50,12.75,'A','2019-02-25 16:39:24',2,0),(46,35,8.90,9.00,'A','2019-02-25 16:58:10',2,0),(47,36,0.80,1.20,'A','2019-03-21 16:37:36',2,0),(48,36,0.90,1.30,'A','2019-03-21 16:44:39',2,0),(49,37,1.00,1.30,'A','2019-03-21 18:05:26',2,0),(50,25,23.40,26.21,'A','2019-03-22 14:10:06',2,0),(51,38,0.25,0.30,'A','2019-03-22 17:09:14',2,0),(52,38,0.20,0.24,'A','2019-03-22 17:16:35',2,0),(53,37,1.50,1.73,'A','2019-03-23 23:03:02',2,15);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`id_productos`,`nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`,`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`) values (21,'ASPIRINA','dolores de cabeza','2018-11-16',15.50,5,4,2,1,'A',1,'NO',15),(22,'AMOXICILINA','INFECCION','2018-11-16',10.20,5,5,2,2,'A',2,'NO',24),(23,'PASTA','MEBOCAINA','2018-11-21',1.26,6,1,1,1,'A',3,'SI',14),(24,'IBUPROFENO ','DOLORES DE CABEZA,ESTOMAGO,FIEBRE','2018-11-22',0.50,11,5,2,1,'A',7,'NO',7),(25,'LEMONFLU2','RESFRIADOS ','2018-11-30',10.00,7,5,2,1,'A',2,'NO',29),(27,'tucol','jarabe para la toz','2018-12-12',15.60,2,3,1,1,'A',3,'NO',14),(28,'GAMALATE','CONCENTRACION','2018-12-13',2.60,7,1,2,1,'A',2,'0.12',15),(29,'ZALEPLA','RELAJACION','2018-12-13',2.60,11,1,1,1,'A',3,'NO',14),(30,'AFRIN','PARA DESCONGESTIONAR LA NARIZ','2018-12-18',2.36,7,3,1,1,'A',5,'NO',19),(31,'VITAMINA C','VITAMINAS','2018-12-20',0.63,5,2,3,1,'A',2,'0.12',15),(32,'OMEPRASOL','INFECCIONES','2018-12-21',2.30,5,6,2,2,'A',2,'0.12',45),(33,'TRIPLE ACCION','PASTA DENTAL','2019-01-20',1.05,10,4,2,1,'A',2,'0.12',10),(34,'ALCOHOL','LIMPIEZA CORPORAL','2019-02-25',12.00,7,3,2,1,'A',2,'',23),(35,'TERMOMETRO','FIEBRE','2019-02-25',0.23,5,4,1,1,'A',2,'0.12',34),(36,'PARACETAMOL2','PRUEBA2','2019-03-21',34.00,6,5,2,3,'A',36,'NO',35),(37,'PASTA','DENTAL','2019-03-21',0.80,10,6,2,2,'A',53,'0.12',15),(38,'APRONAX','NAPROXENO SODICO 500MG','2019-03-22',550.00,6,6,2,1,'I',53,'NO',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`id_stock`,`cantidad`,`id_precio`) values (1,0,42),(2,0,20),(3,22,8),(4,77,44),(5,12,13),(7,0,26),(8,0,35),(9,0,39),(10,33,27),(13,0,40),(14,0,25),(15,-5,52);

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `id_sucursal` bigint(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `representante` varchar(70) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(70) DEFAULT NULL,
  `id_proveedor` bigint(11) NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `fk_4` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sucursal` */

insert  into `sucursal`(`id_sucursal`,`ruc`,`nombre`,`representante`,`direccion`,`telefono`,`id_proveedor`) values (2,'092487602876','farmacias comunitarias','alexis','coop.la concordia',NULL,2);

/*Table structure for table `telefono` */

DROP TABLE IF EXISTS `telefono`;

CREATE TABLE `telefono` (
  `id_Telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_Tipo_Telefono` bigint(20) NOT NULL,
  `Numero` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `telefono` */

insert  into `telefono`(`id_Telefono`,`id_Tipo_Telefono`,`Numero`,`Cedula`) values (1,1,'0997854655','4444444444'),(2,1,'5555555555555','4444444444'),(3,1,'4444444444444','4444444444'),(4,1,'5555555555555','3333333333'),(5,1,'0997857654','0932067010'),(6,1,'5555555555','5555555555'),(7,1,'0000000000','0932067010'),(8,1,'0985849256','0932067010'),(9,1,'0999999999','0924876015'),(10,1,'2154151521356','0924876251'),(11,2,'0993387081','0944037977'),(12,2,'0991232552','0912232525'),(13,2,'0994521252','0991251252'),(14,2,'0962959794','0931978365'),(15,1,'4767657876767','0931978365'),(16,1,'5435345346','9348974397'),(17,1,'0000000000','9999999999');

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

/* Procedure structure for procedure `actualizarPrecioCompra` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualizarPrecioCompra` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioCompra`(IN id_producto1 BIGINT,IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),in fecha4 datetime,in id_usu bigint,IN Porcen BIGINT,OUT valor1 TEXT )
BEGIN
	DECLARE id_pre INT;
	INSERT INTO `precios`(`id_producto`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`,`porcentaje`) VALUES (id_producto1,precio_compra2,precio_venta3,'A',fecha4,id_usu,Porcen);
	set valor1='PRECIO AGREGADO';
   -- SET id_pre =(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND`precio_compra`=precio_compra2 AND `precio_venta`= precio_venta3);
    -- UPDATE `precios` SET estado='I' WHERE `id_precio` NOT IN (id_pre) AND `id_producto`=id_producto1;
	-- SET valor1=(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND `precio_compra`= precio_compra2 AND`precio_venta`=precio_venta3);
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

/* Procedure structure for procedure `ActualizarStockVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `ActualizarStockVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarStockVentas`(
in _id_control bigint,
in _cantidad bigint
)
BEGIN
UPDATE `stock`
SET 
  `cantidad` = _cantidad
WHERE `stock`.`id_precio` = _id_control;
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

/* Procedure structure for procedure `buscarIDCabeceraCompras` */

/*!50003 DROP PROCEDURE IF EXISTS  `buscarIDCabeceraCompras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarIDCabeceraCompras`(IN descuento1 DECIMAL(10,7),
IN iva1 DECIMAL(10,7),IN total1 DECIMAL(10,7),OUT valor TEXT)
BEGIN
	select `id_cabecera_compra` into valor from `cabecera_compra` where `descuento`= descuento1 and `iva`= iva1 and `total`= total1;
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

/* Procedure structure for procedure `BuscarStockVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `BuscarStockVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarStockVentas`(
in _id_cabecera_ventas bigint
)
BEGIN
SELECT `detalle_venta`.`id_control` AS id_control,(`stock`.`cantidad`-`detalle_venta`.`cantidad`) AS cantidad
FROM  `stock` INNER JOIN `detalle_venta`
ON `stock`.`id_precio` = `detalle_venta`.`id_control`
WHERE `detalle_venta`.`id_cabecera_venta` = _id_cabecera_ventas;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cambiarEstadoDevolucion` */

/*!50003 DROP PROCEDURE IF EXISTS  `cambiarEstadoDevolucion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarEstadoDevolucion`(in id_nota bigint, in id_compra bigint)
BEGIN
	update `cabecera_nota_pedidos` set `estado` = 'D' where`id_cabecera_nota_pedidos`= id_nota;
	update `cabecera_compra` set `estado` = 'D' where `id_cabecera_compra` = id_compra;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `convertirStock` */

/*!50003 DROP PROCEDURE IF EXISTS  `convertirStock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `convertirStock`(in Stock1 bigint,in Stock2 bigint,in valor1 bigint,valor2 bigint,out valor text)
BEGIN
	update `stock` set `cantidad`=valor1 where `id_stock`=Stock1;
	UPDATE `stock` SET `cantidad`=valor2 WHERE `id_stock`=Stock2;
	set valor ='EXITO';
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

/* Procedure structure for procedure `devolverProductosComprados` */

/*!50003 DROP PROCEDURE IF EXISTS  `devolverProductosComprados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `devolverProductosComprados`(IN cantidad1 INT,IN id_precio2 BIGINT,out valor text)
BEGIN
    	DECLARE id_preciox BIGINT;
	DECLARE cantidadx BIGINT;
	DECLARE cant BIGINT;
	
	SELECT `id_precio` INTO  id_preciox  FROM `stock` WHERE `id_precio`=id_precio2;
	
	IF(id_preciox = id_precio2)THEN
	
		SET cantidadx =(SELECT `cantidad` FROM `stock` WHERE `id_precio`= id_precio2);
		SET cant =(cantidadx - cantidad1);			
		UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;
		set valor ='¡DEVOLUCION EXITOSA!';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `edicionCabeceraNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `edicionCabeceraNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edicionCabeceraNota`(IN iva8 DECIMAL(10,7),
IN descuento9 DECIMAL(10,7),IN total10 DECIMAL(10,7),IN id_cab_ped11 BIGINT,OUT valor TEXT)
BEGIN
	UPDATE`cabecera_nota_pedidos` SET `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 WHERE`id_cabecera_nota_pedidos`= id_cab_ped11;
	SET valor='EXITO';
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

/* Procedure structure for procedure `EliminarDetalleDevolucion` */

/*!50003 DROP PROCEDURE IF EXISTS  `EliminarDetalleDevolucion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDetalleDevolucion`(in detNotaPed bigint,in idPrecio1 bigint, in cantidad1 bigint,
    in descuento1 decimal(10,7),in iva1 DECIMAL(10,7),in total1 DECIMAL(10,7),in bono1 bigint,out valor text)
BEGIN
	declare idDetCompra bigint;
	select `id_detalle_compra` into idDetCompra from `detalle_compra` where `id_precio`= idPrecio1 and `descuento`= descuento1 and 
	`iva`= iva1 and `total`= total1 and `bono`=bono1;
	
	delete from `detalle_nota_pedidos` where `id_detalle_nota_pedidos`= detNotaPed;
	
	delete from `detalle_compra` where `id_detalle_compra`=idDetCompra;
	SET valor='EXITO';
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

/* Procedure structure for procedure `faltantes_cantidad` */

/*!50003 DROP PROCEDURE IF EXISTS  `faltantes_cantidad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `faltantes_cantidad`()
BEGIN
SELECT DISTINCT (df.`id_detalle_faltantes`),df.`id_producto`,p.`nombre`, m.nombre AS marcas,df.`cantidad`AS cantidad_Faltantes,
p.`cantidad_minima` AS can_minima,df.`estado`,p.`descripcion` AS descripcion
FROM `detalle_faltantes` df
JOIN `productos` p ON p.`id_productos` = df.`id_producto`
JOIN `precios` pr ON pr.`id_producto`= p.`id_productos`
JOIN `marcas` m ON p.`id_marcas` = m.`id_marcas`    
WHERE `df`.cantidad <= cantidad_minima OR `df`.cantidad = 0
AND `df`.estado = 'NO' OR `df`.estado = 'OK';
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
IN direccion1 TEXT,/* IN cargo1 TEXT, IN nombrepv1 TEXT,*/ IN ip_equipo1 TEXT, IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT, IN ruta_img1 TEXT, IN observacion1 TEXT,IN genero1 TEXT,IN cargo1 TEXT, IN password1 TEXT,IN sesion1 LONG,in estado1 text, OUT salida TEXT)
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

/* Procedure structure for procedure `fc_filtro_apellido_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_apellido_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_apellido_usuario`(in valor text)
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
	`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
	`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
	`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
	FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
	INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
	INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
	INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
	INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
	WHERE `fc_usuario`.`apellidos` LIKE concat('',valor,'%'); 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_cedula_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_cedula_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_cedula_usuario`(IN valor TEXT)
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
	`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
	`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
	`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
	FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
	INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
	INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
	INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
	INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
	WHERE `fc_usuario`.`cedula` LIKE CONCAT('',valor,'%'); 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_cod_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_cod_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_cod_usuario`(IN valor bigint)
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
	`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
	`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
	`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
	FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
	INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
	INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
	INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
	INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
	WHERE `fc_session`.`id_sesion` = valor; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_estado_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_estado_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_estado_usuario`(IN valor bigint)
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
	`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
	`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
	`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
	FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
	INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
	INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
	INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
	INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
	WHERE `fc_usuario`.`id_estado` = valor; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_fecha_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_fecha_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_fecha_usuario`(IN valor text)
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
	`fc_usuario`.`direccion`,`fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`,`fc_genero`.`id_genero`, `fc_genero`.`genero`, 
	`fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
	`fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
	FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
	INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
	INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
	INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
	INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
	WHERE `fc_usuario`.`fecha_registro` LIKE CONCAT('',valor,'%'); 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_pv_id` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_pv_id` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_pv_id`(in id_punto_venta1 bigint)
BEGIN
SELECT `fc_punto_venta`.`id_punto_venta`,
	  `fc_punto_venta`.`nombre`,
	  `fc_punto_venta`.`direccion`,
	  `fc_punto_venta`.`telefono_pv`,
	  `fc_punto_venta`.`id_localidad_guayas`, 
	  `fc_localidad_guayas`.`localidad`, 
	  `fc_punto_venta`.`observacion`, 
	  `fc_punto_venta`.`estado` 
	FROM `fc_punto_venta` INNER JOIN `fc_localidad_guayas` ON `fc_localidad_guayas`.`id_localidad_guayas` =`fc_punto_venta`.`id_localidad_guayas`
	WHERE `fc_punto_venta`.`id_punto_venta`= id_punto_venta1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_filtro_pv_nombre` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_filtro_pv_nombre` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_pv_nombre`( IN nombre1 TEXT)
BEGIN
	SELECT `fc_punto_venta`.`id_punto_venta`,
	  `fc_punto_venta`.`nombre`,
	  `fc_punto_venta`.`direccion`,
	  `fc_punto_venta`.`telefono_pv`,
	  `fc_punto_venta`.`id_localidad_guayas`, 
	  `fc_localidad_guayas`.`localidad`, 
	  `fc_punto_venta`.`observacion`, 
	  `fc_punto_venta`.`estado` 
	FROM `fc_punto_venta` INNER JOIN `fc_localidad_guayas` ON `fc_localidad_guayas`.`id_localidad_guayas` =`fc_punto_venta`.`id_localidad_guayas`
	WHERE `fc_punto_venta`.`nombre` LIKE CONCAT('',nombre1,'%');
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
	`fc_punto_venta`.`fecha_actualizacion` FROM `fc_punto_venta` where `fc_punto_venta`.`id_punto_venta`=1;
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
`fc_porcentaje_discapacidad`.`porcentaje`,*/ `fc_rol`.`id_rol`,`fc_rol`.`cargo`,`fc_estado_usuario`.`id_estado`,`fc_estado_usuario`.`estado`,
/*`fc_punto_venta`.`id_punto_venta`,`fc_punto_venta`.`nombre` AS nombrepv,*/ `fc_session`.`observacion`, `fc_usuario`.`ruta_imagen` 
FROM `fc_session` INNER JOIN `fc_usuario` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
INNER JOIN `fc_punto_venta` ON `fc_punto_venta`.`id_punto_venta` = `fc_session`.`id_punto_venta` 
INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
INNER JOIN `fc_estado_usuario` ON `fc_estado_usuario`.`id_estado` = `fc_usuario`.`id_estado` 
WHERE `fc_usuario`.`id_estado` = 1 ORDER BY `fc_session`.`id_sesion` ASC; 
END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_nuevo_punto_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_nuevo_punto_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_nuevo_punto_venta`(in localidad_guayas1 text,IN nombre1 TEXT,IN direccion1 TEXT,IN ruc_local1 TEXT,IN telefono_pv1 TEXT,out salida text)
BEGIN
    declare v_id_localidad bigint;
    declare v_ruc int;
    
    select `id_localidad_guayas` into v_id_localidad from `fc_localidad_guayas` where `localidad`=localidad_guayas1;
    select count(`id_punto_venta`) into v_ruc from `fc_punto_venta` where `ruc_local` = ruc_local1;
    
if(v_ruc = 0)then
	INSERT INTO `fc_punto_venta` (`nombre`,`direccion`, `telefono_pv`,`fecha_creacion`,`ruc_local`,`estado`,`observacion`,`id_localidad_guayas`)
	VALUES (nombre1,direccion1, telefono_pv1,CURDATE(),ruc_local1,'ACTIVO', 'NUEVO LOCAL',v_id_localidad);
	SET salida='Local creado correctamente';
else 
	SET salida='El local ya existe!';
end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_punto_venta_prueba` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_punto_venta_prueba` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_punto_venta_prueba`()
BEGIN
SELECT
  `fc_punto_venta`.`id_punto_venta`,
  `fc_punto_venta`.`nombre`,
  `fc_punto_venta`.`direccion`,
  `fc_punto_venta`.`telefono_pv`,
  `fc_punto_venta`.`id_localidad_guayas`, 
  `fc_localidad_guayas`.`localidad`, 
  `fc_punto_venta`.`observacion`, 
  `fc_punto_venta`.`estado` 
FROM `fc_punto_venta` INNER JOIN `fc_localidad_guayas` ON `fc_localidad_guayas`.`id_localidad_guayas` =`fc_punto_venta`.`id_localidad_guayas`
where `fc_punto_venta`.`estado`='ACTIVO';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `fc_registrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_registrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_registrar_usuario`(IN cedula1 TEXT, IN nombres1 TEXT, IN apellidos1 TEXT, IN telefono1 TEXT, IN convencional1 TEXT, IN correo1 TEXT, 
/*IN ip_publica1 TEXT,*//* IN genero1 TEXT, IN discapacidad1 TEXT, IN porcentaje_discapacidad1 TEXT, */
IN direccion1 TEXT,/* IN cargo1 TEXT, IN nombrepv1 TEXT,*/ IN ip_equipo1 TEXT, IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT, IN ruta_img1 TEXT, in observacion1 text,in genero1 text,IN cargo1 TEXT, OUT salida TEXT)
BEGIN
DECLARE v_cedula INT;
DECLARE v_fecha_registro DATETIME;
DECLARE v_genero BIGINT;
/*DECLARE v_discapacidad BIGINT;
DECLARE v_porcentaje_discapacidad BIGINT;*/
 
DECLARE v_rol BIGINT;
DECLARE v_n_usuario BIGINT;
SELECT COUNT(`cedula`)INTO v_cedula FROM `fc_usuario` WHERE `cedula` = cedula1;
SELECT NOW() INTO v_fecha_registro; 
SELECT `id_genero` INTO v_genero FROM `fc_genero` WHERE `genero` = genero1;
/*SELECT `id_discapacidad` INTO v_discapacidad FROM `fc_discapacidad` WHERE `discapacidad` = discapacidad1;
SELECT `id_porcentaje_discapacidad` INTO v_porcentaje_discapacidad FROM `fc_porcentaje_discapacidad` WHERE `porcentaje` = porcentaje_discapacidad1;*/
 
	
IF(v_cedula = 0)THEN 
	INSERT INTO `fc_usuario`(`cedula`,`nombres`,  `apellidos`, `telefono`,`convencional`,`correo`,`password`,`ruta_imagen`,`fecha_registro`, 
		`id_estado`,`ip_equipo`,`ip_publica`,`usuario_equipo`,`dir_ip_completa`,`id_genero`,/*`id_discapacidad`,`id_porcentaje_discapacidad`,*/ `direccion`) 
		 VALUES(cedula1,nombres1,apellidos1,telefono1,convencional1,correo1,cedula1,ruta_img1,v_fecha_registro,
		 '1',ip_equipo1,'3',usuario_equipo1,dir_ip_completa1,v_genero,/*v_discapacidad,v_porcentaje_discapacidad,*/ direccion1); 
			
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

/* Procedure structure for procedure `fc_ruc_local` */

/*!50003 DROP PROCEDURE IF EXISTS  `fc_ruc_local` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_ruc_local`(in valor text, out salida text)
BEGIN
declare v_id int;
select count(`id_punto_venta`) into v_id from `fc_punto_venta` where `ruc_local` = valor; 
if(v_id = 0)then 
	UPDATE `fc_punto_venta`
	SET`ruc_local` = valor 
	WHERE `id_punto_venta` = 1;
	SET salida = 'Ruc agregado correctamente';
end if;    
	IF(v_id = 0)THEN     
	UPDATE `fc_punto_venta`
	SET`ruc_local` = valor 
	WHERE `id_punto_venta` = 1;
	set salida = 'Ruc actualizado';
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

/* Procedure structure for procedure `FiltroRangoFecha` */

/*!50003 DROP PROCEDURE IF EXISTS  `FiltroRangoFecha` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltroRangoFecha`(
IN op INT,IN Fecha1 DATETIME, IN Fecha2 DATETIME
)
BEGIN
IF op=1 THEN 
	SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`, 
	p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`,
    cnp.`forma_pago`,cnp.`plazo` 
	FROM `cabecera_nota_pedidos` cnp 
	JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor` 
	JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase` 
	WHERE fecha_creacion BETWEEN Fecha1 AND Fecha2 AND cnp.estado= "EF"; 
END IF; 
IF op=2 THEN 
	SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`, 
	p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`,
    cnp.`forma_pago`,cnp.`plazo` 
	FROM `cabecera_nota_pedidos` cnp 
	JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor` 
	JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase` 
	WHERE fecha_creacion BETWEEN Fecha1 AND Fecha2 AND cnp.estado= "EF";  
END IF; 
END */$$
DELIMITER ;

/* Procedure structure for procedure `FiltrosProductosNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `FiltrosProductosNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltrosProductosNota`(IN Buscar_Producto TEXT,IN accion TEXT)
BEGIN
CASE accion
    WHEN 'TODO' THEN
    SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
    ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
    ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
    FROM detalle_faltantes df
    JOIN productos p ON  p.id_productos= df.id_producto
    JOIN tipo t ON t.id_tipo=p.id_tipo
    JOIN marcas m ON m.id_marcas=p.id_marcas
    JOIN envase en ON en.id_envase = p.id_envase
    JOIN medidas me ON me.id_medidas = p.id_medidas
    JOIN precios pr ON pr.id_producto = p.id_productos
    WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' AND me.`estado`='A'
    GROUP BY df.id_detalle_faltantes
    ORDER BY df.id_detalle_faltantes;
    WHEN 'CODIGO' THEN
    SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
    ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
    ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
    FROM detalle_faltantes df
    JOIN productos p ON  p.id_productos= df.id_producto
    JOIN tipo t ON t.id_tipo=p.id_tipo
    JOIN marcas m ON m.id_marcas=p.id_marcas
    JOIN envase en ON en.id_envase = p.id_envase
    JOIN medidas me ON me.id_medidas = p.id_medidas
    JOIN precios pr ON pr.id_producto = p.id_productos
    WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' AND me.`estado`='A'
    AND p.id_productos = Buscar_Producto
    GROUP BY df.id_detalle_faltantes
    ORDER BY df.id_detalle_faltantes;
    WHEN 'NOMBRE' THEN
    SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
    ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
    ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
    FROM detalle_faltantes df
    JOIN productos p ON  p.id_productos= df.id_producto
    JOIN tipo t ON t.id_tipo=p.id_tipo
    JOIN marcas m ON m.id_marcas=p.id_marcas
    JOIN envase en ON en.id_envase = p.id_envase
    JOIN medidas me ON me.id_medidas = p.id_medidas
    JOIN precios pr ON pr.id_producto = p.id_productos
    WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' 
    AND me.`estado`='A' AND p.nombre LIKE Buscar_Producto
    GROUP BY df.id_detalle_faltantes
    ORDER BY df.id_detalle_faltantes;
    WHEN 'TIPO' THEN
    SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
    ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
    ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
    FROM detalle_faltantes df
    JOIN productos p ON  p.id_productos= df.id_producto
    JOIN tipo t ON t.id_tipo=p.id_tipo
    JOIN marcas m ON m.id_marcas=p.id_marcas
    JOIN envase en ON en.id_envase = p.id_envase
    JOIN medidas me ON me.id_medidas = p.id_medidas
    JOIN precios pr ON pr.id_producto = p.id_productos
    WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' 
    AND me.`estado`='A' AND t.nombre LIKE Buscar_Producto
    GROUP BY df.id_detalle_faltantes
    ORDER BY df.id_detalle_faltantes;
    WHEN 'MEDIDA' THEN
        SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
        ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
        ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
        FROM detalle_faltantes df
        JOIN productos p ON  p.id_productos= df.id_producto
        JOIN tipo t ON t.id_tipo=p.id_tipo
        JOIN marcas m ON m.id_marcas=p.id_marcas
        JOIN envase en ON en.id_envase = p.id_envase
        JOIN medidas me ON me.id_medidas = p.id_medidas
        JOIN precios pr ON pr.id_producto = p.id_productos
        WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' 
        AND me.`estado`='A' AND me.nombre_medida LIKE Buscar_Producto
        GROUP BY df.id_detalle_faltantes
        ORDER BY df.id_detalle_faltantes;
    WHEN 'ENVASE' THEN
        SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
        ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
        ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
        FROM detalle_faltantes df
        JOIN productos p ON  p.id_productos= df.id_producto
        JOIN tipo t ON t.id_tipo=p.id_tipo
        JOIN marcas m ON m.id_marcas=p.id_marcas
        JOIN envase en ON en.id_envase = p.id_envase
        JOIN medidas me ON me.id_medidas = p.id_medidas
        JOIN precios pr ON pr.id_producto = p.id_productos
        WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' 
        AND me.`estado`='A' AND en.nombre LIKE Buscar_Producto
        GROUP BY df.id_detalle_faltantes
        ORDER BY df.id_detalle_faltantes;
    WHEN 'MARCA' THEN
        SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
        ,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
        ,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
        FROM detalle_faltantes df
        JOIN productos p ON  p.id_productos= df.id_producto
        JOIN tipo t ON t.id_tipo=p.id_tipo
        JOIN marcas m ON m.id_marcas=p.id_marcas
        JOIN envase en ON en.id_envase = p.id_envase
        JOIN medidas me ON me.id_medidas = p.id_medidas
        JOIN precios pr ON pr.id_producto = p.id_productos
        WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' 
        AND me.`estado`='A' AND m.nombre LIKE Buscar_Producto
        GROUP BY df.id_detalle_faltantes
        ORDER BY df.id_detalle_faltantes;
    END CASE;
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

/* Procedure structure for procedure `InsertarCabeceraVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarCabeceraVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCabeceraVentas`(
    in _num_venta varchar(70),
    in _id_cliente bigint,
    in _id_usuario BIGINT,
    in _id_sucursal bigint,
    in _tipo_pago TEXT,
    in _tipo_venta text,
    in _Subtotal_con_iva decimal(10,5),
    in _Subtotal_sin_iva decimal(10,5),
    in _iva_total decimal(10,5),
    in _descuento_total decimal(19,5),
    in _total decimal(10,5),
    in _utilidad decimal(10,5),
    in _estado varchar(10),
    out valor text
)
BEGIN
    
    declare _fecha_creacion datetime;
    set _fecha_creacion = now();
    set valor='';
    insert into `cabecera_venta`(num_venta,fecha_creacion,id_cliente, id_usuario,id_sucursal,tipo_pago,tipo_venta,Subtotal_con_iva,Subtotal_sin_iva,iva_total,descuento_total,total,utilidad,estado)
    values(_num_venta,_fecha_creacion,_id_cliente,_id_usuario,_id_sucursal,_tipo_pago,_tipo_venta,_Subtotal_con_iva,_Subtotal_sin_iva,_iva_total,_descuento_total,_total,_utilidad,_estado);
    set valor = (select id from cabecera_venta where id_usuario=_id_usuario  and num_venta = _num_venta and fecha_creacion = _fecha_creacion );
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

/* Procedure structure for procedure `insertarCorreoCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertarCorreoCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCorreoCliente`( 
IN cedula1 TEXT, 
IN correo TEXT,
OUT msg TEXT)
BEGIN
 
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
	declare cant2 bigint;
	Declare cantcomp Bigint;
	Declare id_productox bigint;
	declare cant_faltante bigint; 
	
	insert into `detalle_compra`(`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,bono)
	values (id_cabecera_compra1,id_precio2,cantidad3,precio4,descuento5,iva6,total7,bono8);
	
	#set id_precio=(SELECT `id_precio` FROM `stock` WHERE `id_precio`=id_precio2);
	SELECT `id_precio` INTO  id_preciox  FROM `stock` WHERE `id_precio`=id_precio2;
	
	if(id_preciox = id_precio2)then
	SET cantidadx=(SELECT `cantidad` FROM `stock` WHERE `id_precio`=id_precio2);
	SET cant =(cantidadx + cantidad3+bono8);
	UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;
	else
	set cant2 = (cantidad3+bono8);
	INSERT INTO `stock`(`cantidad`,`id_precio`)VALUES(cant2,id_precio2);
	end if;
	
	SELECT pw.`id_producto` into id_productox FROM precios pw WHERE pw.`id_precio`= id_precio2;
	
	SELECT `cantidad` into cantcomp FROM `detalle_faltantes` WHERE `id_producto`= id_productox;
	
	set cant_faltante =(cantcomp-cantidad3);
	IF(cant_faltante<0)THEN 
	UPDATE `detalle_faltantes` SET `cantidad` = '0' ,`estado` ='OK' WHERE `id_producto` = id_productox;
	ELSE
	UPDATE `detalle_faltantes` SET `cantidad` =  cant_faltante,`estado` ='OK' WHERE `id_producto` = id_productox;
	END IF;
	-- "INSERT INTO `detalle_compra`(`id_cabecera_compra`,`id_precio`,`cantidad`,`precio`,`descuento`,`iva`,`total`,bono)
	-- VALUES(" + id_cab + "," + lista3.get(i).getId_precio() + "," + lista3.get(i).getCantidad().toString() + ","
        -- + lista3.get(i).getPrecio().toString() + "," + lista3.get(i).getDescuento().toString() + ","+ lista3.get(i).getIva().toString() + "," 
        -- + lista3.get(i).getTotal().toString() + "," + lista3.get(i).getBono().toString() + ");");
	
	-- id_precio = crud.buscarIDPrecioEnStock("SELECT `id_precio` FROM `stock` WHERE `id_precio`=" + lista3.get(i).getId_precio().toString());
	-- INSERT INTO `stock` (`cantidad`,`id_precio`)VALUES(" + lista3.get(i).getCantidad().toString() + "," + lista3.get(i).getId_precio().toString() + ");
	-- "SELECT `cantidad` FROM `stock` WHERE `id_precio`=" + lista3.get(i).getId_precio() + ";");
	-- UPDATE `stock` SET `cantidad` = " + cantidadx + " WHERE `id_precio` = " + lista3.get(i).getId_precio() + ";");
	
  --            System.out.println("Cantidad existente"+CantidadComp);
    --           System.out.println("Cantidad "+Integer.valueOf(lista3.get(i).getCantidad().toString()));
      --          CantidadComp = CantidadComp - Integer.valueOf(lista3.get(i).getCantidad().toString());
        --        System.out.println("Cantidad Restada de Faltantes"+CantidadComp);
          -- crud.UpdateCantidadFaltantes("UPDATE `detalle_faltantes` SET `cantidad` = " + CantidadComp + " WHERE `id_producto` = "+lista3.get(i).getId_producto()+";");
    END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertarDetalleVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarDetalleVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDetalleVentas`(
    in _id_cabecera_venta BIGINT,
    in _id_control BIGINT,
    in _precio decimal(10,7),
    in _cantidad bigint,
    in _iva decimal(10,7),
    in _descuento decimal(10,7),
    out valor text
)
BEGIN
    set valor='';
    insert into `detalle_venta`(id_cabecera_venta,id_control,precio,cantidad,iva,descuento)
    values(_id_cabecera_venta,_id_control,_precio,_cantidad,_iva,_descuento);
    set valor = (select id from detalle_venta where id_cabecera_venta =_id_cabecera_venta  and id_control = _id_control and cantidad = _cantidad);
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

/* Procedure structure for procedure `ListarClientesVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarClientesVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarClientesVentas`(
IN op INT
)
BEGIN
    IF op=1 THEN 
        SELECT clientes.id_Clientes AS  Codigo,clientes.Cedula AS Cedula,clientes.Nombre AS Nombre, clientes.Apellido AS Apellido, clientes.Direccion AS Direccion,
        clientes.str_telefono AS Telefono, clientes.str_correo AS Correo 
        from clientes 
        where clientes.Estado = 'A';
    
    end IF;
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
SELECT DISTINCT df.id_detalle_faltantes,pr.id_precio,df.id_producto,p.nombre AS producto,m.id_marcas,m.nombre AS marca
,p.id_envase,en.nombre AS envase,p.id_medidas,me.nombre_medida AS medida
,t.id_tipo,t.nombre AS tipo ,df.cantidad,df.estado,pr.precio_compra AS precio,p.iva AS IVA
FROM detalle_faltantes df
JOIN productos p ON  p.id_productos= df.id_producto
JOIN tipo t ON t.id_tipo=p.id_tipo
JOIN marcas m ON m.id_marcas=p.id_marcas
JOIN envase en ON en.id_envase = p.id_envase
JOIN medidas me ON me.id_medidas = p.id_medidas
JOIN precios pr ON pr.id_producto = p.id_productos
WHERE df.estado= 'TR' AND p.`estado`='A' AND pr.`estado`='A' AND m.`estado`='A' AND t.`estado`='A' AND en.`estado`='A' AND me.`estado`='A'
GROUP BY df.id_detalle_faltantes
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

/* Procedure structure for procedure `listarLaboratorio` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarLaboratorio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarLaboratorio`()
BEGIN
select * from laboratorio order by Nombre;
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
      if op=3 then 
      SELECT p.`id_productos`,p.`nombre`,p.`descripcion`,p.`fecha_registro`,p.`peso`,p.`id_tipo`,t.`nombre`AS tipo,p.`id_medidas`,m.`nombre_medida` AS medida,
      p.`id_envase`,e.`nombre`AS envase ,p.`id_marcas`,ma.`nombre` AS marca, p.id_usuario, p.iva ,pr.`precio_compra`, p.cantidad_minima,s.`cantidad`,s.`id_stock`
      FROM `productos` p
      JOIN `tipo` t ON t.`id_tipo`= p.`id_tipo` 
      JOIN `medidas` m ON m.`id_medidas`= p.`id_medidas`
      JOIN `envase` e ON e.`id_envase`= p.`id_envase`
      JOIN `marcas` ma ON ma.`id_marcas`= p.`id_marcas`
      JOIN `precios` pr ON  pr.`id_producto`=p.`id_productos`
      JOIN `stock` s ON s.`id_precio`= pr.`id_precio`
      WHERE p.`estado`='A'
      ORDER BY p.`id_productos`;
      end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarPrecioNotaPedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarPrecioNotaPedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPrecioNotaPedido`(in op int,in id_producto1 bigint)
BEGIN
    select pre.id_precio,p.nombre,p.descripcion,pre.id_producto,pre.precio_compra,pre.estado as estado_precio
    ,p.id_productos,p.fecha_registro,p.peso
    ,p.id_tipo,p.id_medidas,p.id_envase,p.id_marcas,p.estado as estado_producto,p.iva
    ,pre.fecha_registro as fecha_RegistroPrecio
    from precios pre
    inner join productos p on p.id_productos = pre.id_producto
    where id_producto = id_producto1 and pre.estado = 'A';
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
     IF(op=3)THEN
	SELECT pro.`id_productos`,pro.`nombre`,pro.`descripcion`,pre.`id_precio`,pre.`precio_compra`,pre.`precio_venta`,s.`id_stock`,tp.`nombre` AS tipo ,mp.`nombre_medida`AS medida,ep.`nombre`AS envase ,mrp.`nombre`AS marca,s.`cantidad` FROM  `precios` pre 
	JOIN `productos` pro ON pro.`id_productos`= pre.`id_producto`
	JOIN `stock` s  ON s.`id_precio`= pre.`id_precio`
	JOIN `tipo` tp ON tp.`id_tipo`= pro.`id_tipo`
	JOIN `medidas` mp ON mp.`id_medidas`= pro.`id_medidas`
	JOIN `envase` ep ON ep.`id_envase` = pro.`id_envase`
	JOIN `marcas` mrp ON mrp.`id_marcas`=pro.`id_marcas`
	WHERE pre.`estado` ='A' AND pro.`estado`='A' AND s.`cantidad`>0
	ORDER BY pro.`nombre` ASC;
     END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarProductosVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarProductosVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProductosVentas`(
IN op INT
)
BEGIN
    IF op=1 THEN
	SELECT  precios.id_precio AS 'Control', productos.id_productos AS 'Codigo', productos.nombre AS 'Nombre del Producto', productos.descripcion AS 'Descripcion', tipo.nombre AS 'Tipo', 
        medidas.nombre_medida AS 'Medida', envase.nombre AS 'Envase', marcas.nombre AS 'Marca', stock.cantidad AS 'Stock', 
        productos.iva AS 'Iva', precios.precio_venta  AS 'Precio de Venta', precios.`precio_compra` AS 'Precio de Compra'
        FROM precios 
        INNER JOIN productos ON  precios.id_producto = productos.id_productos 
        INNER JOIN tipo ON tipo.id_tipo = productos.id_tipo 
        INNER JOIN medidas ON medidas.id_medidas = productos.id_medidas
        INNER JOIN envase ON envase.id_envase = productos.id_envase
        INNER JOIN marcas ON marcas.id_marcas = productos.id_marcas
        INNER JOIN stock ON stock.id_precio = precios.id_precio
        WHERE precios.estado = 'A'
        ORDER BY `productos`.`nombre`  ASC;
   
    END IF;
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

/* Procedure structure for procedure `listarPuntoVenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarPuntoVenta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPuntoVenta`()
BEGIN
	SELECT pv.id_punto_venta, pv.nombre, lg.localidad, pv.direccion,  pv.observacion FROM fc_localidad_guayas lg, fc_punto_venta pv WHERE lg.id_localidad_guayas= pv.id_localidad_guayas;
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
IF op=5 THEN
SELECT cnp.`id_cabecera_nota_pedidos`,cnp.`id_proveedor`,p.`entidad` AS proveedor,p.`correo`,p.`id_proveedor_clase`,pc.`clase`,
p.`direccion`,p.`cedula_ruc`,p.`representante`,p.`telefono`,cnp.`fecha_creacion`,cnp.`estado`,cnp.`iva`,cnp.`descuento`,cnp.`total`
,cnp.`forma_pago`,cnp.`plazo`
FROM `cabecera_nota_pedidos` cnp
JOIN `proveedor` p ON p.`id_proveedor`= cnp.`id_proveedor`
JOIN `proveedor_clase` pc ON pc.`id_proclase`= p.`id_proveedor_clase`
WHERE cnp.estado= "D";
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

/* Procedure structure for procedure `ListarRegistroDetalleVenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarRegistroDetalleVenta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDetalleVenta`(
IN idCab BIGINT
)
BEGIN

SELECT `detalle_venta`.`id`, `detalle_venta`.`id_cabecera_venta` AS 'id_cabecera',`detalle_venta`.`id_control`,`productos`.`id_productos` AS 'Codigo' ,`productos`.`nombre` AS 'Detalle', 
`detalle_venta`.`cantidad` AS 'Cantidad',
ROUND (detalle_venta.`precio`,2 )AS 'Precio', 
ROUND ((`detalle_venta`.`cantidad` * `detalle_venta`.`precio`),2)AS 'Subtotal',
ROUND (`detalle_venta`.`descuento`,2) AS 'Descuento',
ROUND (`detalle_venta`.`iva`,2) AS 'Iva',
ROUND ((( `detalle_venta`.`precio` * `detalle_venta`.`cantidad`) + `detalle_venta`.`iva` - `detalle_venta`.`descuento` ),2) AS 'Total'

FROM detalle_venta INNER JOIN `precios`
ON
`detalle_venta`.`id_control` = `precios`.`id_precio` INNER JOIN `productos`
ON
`productos`.`id_productos` = `precios`.`id_producto`
WHERE `detalle_venta`.`id_cabecera_venta`= idCab;

END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarRegistroVenta` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarRegistroVenta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroVenta`(
IN op INT
)
BEGIN
	IF op=1 THEN 
SELECT `cabecera_venta`.`id`,`cabecera_venta`.`num_venta`,`sucursal`.`nombre` AS 'Sucursal',`sucursal`.`ruc`,`sucursal`.`direccion`, `sucursal`.`telefono`,
CONCAT (`clientes`.`Nombre`," ",`clientes`.`Apellido`)AS 'Cliente',
`clientes`.`Cedula` AS 'Cedula_cliente',
CONCAT (`fc_usuario`.`nombres`," ",`fc_usuario`.`apellidos`)AS 'Usuario', 
cabecera_venta.`fecha_creacion` AS 'Fecha',
`cabecera_venta`.`tipo_pago`,
`cabecera_venta`.`tipo_venta`,
ROUND (`cabecera_venta`.`subtotal_con_iva`,2) AS 'Subtotal_con_iva',
ROUND (cabecera_venta.`subtotal_sin_iva`,2)AS 'Subtotal_sin_iva',
ROUND ((`cabecera_venta`.`subtotal_con_iva` + cabecera_venta.`subtotal_sin_iva`),2)  AS 'Subtotal' , 
ROUND (cabecera_venta.`iva_total`,2) AS 'Iva',
ROUND (cabecera_venta.`descuento_total`,2) AS 'Descuento',
ROUND (cabecera_venta.`total`,2)AS 'Total',
ROUND (`cabecera_venta`.`utilidad`,2) AS 'Utilidad',
(`cabecera_venta`.`estado`) AS 'Estado'

FROM `cabecera_venta` INNER JOIN `clientes` 
ON
cabecera_venta.`id_cliente` = `clientes`.`id_Clientes` INNER JOIN `sucursal`
ON
cabecera_venta.`id_sucursal` = `sucursal`.`id_sucursal` INNER JOIN `fc_session`
ON 
`fc_session`.`id_sesion` = `cabecera_venta`.`id_usuario` INNER JOIN `fc_usuario`
ON 
`fc_session`.`id_usuario` = `fc_usuario`.`id_usuario`;
	END IF;
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

/* Procedure structure for procedure `llamarIVAactual` */

/*!50003 DROP PROCEDURE IF EXISTS  `llamarIVAactual` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `llamarIVAactual`(OUT valor TEXT)
BEGIN
	SET valor = (SELECT `iva` FROM`iva` WHERE `est`='A');
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

/* Procedure structure for procedure `mostrar_iva` */

/*!50003 DROP PROCEDURE IF EXISTS  `mostrar_iva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_iva`()
BEGIN
SELECT * FROM iva WHERE est = 'A';
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

/*Table structure for table `faltantes_previo` */

DROP TABLE IF EXISTS `faltantes_previo`;

/*!50001 DROP VIEW IF EXISTS `faltantes_previo` */;
/*!50001 DROP TABLE IF EXISTS `faltantes_previo` */;

/*!50001 CREATE TABLE  `faltantes_previo`(
 `id_productos` bigint(20) ,
 `marca` text ,
 `nombre` varchar(45) ,
 `descripcion` varchar(80) ,
 `cantidad_minima` bigint(20) ,
 `total` decimal(41,0) 
)*/;

/*View structure for view faltantes_previo */

/*!50001 DROP TABLE IF EXISTS `faltantes_previo` */;
/*!50001 DROP VIEW IF EXISTS `faltantes_previo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faltantes_previo` AS select `pr`.`id_productos` AS `id_productos`,`mr`.`nombre` AS `marca`,`pr`.`nombre` AS `nombre`,`pr`.`descripcion` AS `descripcion`,`pr`.`cantidad_minima` AS `cantidad_minima`,sum(`s`.`cantidad`) AS `total` from (((`stock` `s` join `precios` `p` on((`s`.`id_precio` = `p`.`id_precio`))) join `productos` `pr` on((`p`.`id_producto` = `pr`.`id_productos`))) join `marcas` `mr` on((`mr`.`id_marcas` = `pr`.`id_marcas`))) group by `pr`.`id_productos`,`mr`.`nombre`,`pr`.`nombre` order by `mr`.`nombre` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
