/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.25-log : Database - farmacia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`farmacia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `farmacia`;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categoria` */

/*Table structure for table `egreso_cab` */

DROP TABLE IF EXISTS `egreso_cab`;

CREATE TABLE `egreso_cab` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_usuario_cliente` bigint(20) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `num_orden` varchar(20) DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `tipo_documento` varchar(10) DEFAULT NULL,
  `forma_pago` varchar(10) DEFAULT NULL,
  `subtotal_con_iva` decimal(10,5) DEFAULT NULL,
  `subtotal_sin_iva` decimal(10,5) DEFAULT NULL,
  `iva_total` decimal(10,5) DEFAULT NULL,
  `descuento_total` decimal(10,5) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_egreso_usuario` (`id_usuario`),
  KEY `fk_egreso_usuario_cliente` (`id_usuario_cliente`),
  KEY `fk_egreso_sucursal` (`id_sucursal`),
  CONSTRAINT `fk_egreso_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `fk_egreso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `fk_egreso_usuario_cliente` FOREIGN KEY (`id_usuario_cliente`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `egreso_cab` */

/*Table structure for table `egreso_det` */

DROP TABLE IF EXISTS `egreso_det`;

CREATE TABLE `egreso_det` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_egreso_cab` bigint(20) DEFAULT NULL,
  `id_producto` bigint(20) DEFAULT NULL,
  `cantidad` bigint(20) DEFAULT NULL,
  `precio_venta` decimal(10,5) DEFAULT NULL,
  `iva` decimal(10,5) DEFAULT NULL,
  `descuento` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_egreso_cab` (`id_egreso_cab`),
  CONSTRAINT `fk_egreso_cab` FOREIGN KEY (`id_egreso_cab`) REFERENCES `egreso_cab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `egreso_det` */

/*Table structure for table `ingreso_cab` */

DROP TABLE IF EXISTS `ingreso_cab`;

CREATE TABLE `ingreso_cab` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `num_orden` varchar(20) DEFAULT NULL,
  `fecha_entrada` datetime DEFAULT NULL,
  `tipo_documento` varchar(10) DEFAULT NULL,
  `forma_pago` varchar(10) DEFAULT NULL,
  `id_proveedor` bigint(20) DEFAULT NULL,
  `factura` varchar(20) DEFAULT NULL,
  `fecha_factura` date DEFAULT NULL,
  `subtotal_con_iva` decimal(10,5) DEFAULT NULL,
  `subtotal_sin_iva` decimal(10,5) DEFAULT NULL,
  `iva_total` decimal(10,5) DEFAULT NULL,
  `descuento_total` decimal(10,5) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ingreso_usuario` (`id_usuario`),
  KEY `fk_ingreso_sucursal` (`id_sucursal`),
  KEY `fk_ingreso_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_ingreso_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `fk_ingreso_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `fk_ingreso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ingreso_cab` */

/*Table structure for table `ingreso_det` */

DROP TABLE IF EXISTS `ingreso_det`;

CREATE TABLE `ingreso_det` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_ingreso_cab` bigint(20) DEFAULT NULL,
  `id_producto` bigint(20) DEFAULT NULL,
  `cantidad` bigint(20) DEFAULT NULL,
  `precio_compra` decimal(10,5) DEFAULT NULL,
  `iva` decimal(10,5) DEFAULT NULL,
  `descuento` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ingreso_cab` (`id_ingreso_cab`),
  CONSTRAINT `fk_ingreso_cab` FOREIGN KEY (`id_ingreso_cab`) REFERENCES `ingreso_cab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ingreso_det` */

/*Table structure for table `iva` */

DROP TABLE IF EXISTS `iva`;

CREATE TABLE `iva` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iva` float DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iva` */

/*Table structure for table `kardex` */

DROP TABLE IF EXISTS `kardex`;

CREATE TABLE `kardex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_ingreso_cab` bigint(20) DEFAULT NULL,
  `id_egreso_cab` bigint(20) DEFAULT NULL,
  `id_producto` bigint(20) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `cantidad` bigint(20) DEFAULT NULL,
  `precio_unidad` decimal(10,5) DEFAULT NULL,
  `precio_compra` decimal(10,5) DEFAULT NULL,
  `precio_venta` decimal(10,5) DEFAULT NULL,
  `stock_anterior` bigint(20) DEFAULT NULL,
  `stock_actual` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ingreso_cab_kardex` (`id_ingreso_cab`),
  KEY `fk_egreso_cab_kardex` (`id_egreso_cab`),
  KEY `fk_producto_kardex` (`id_producto`),
  CONSTRAINT `fk_egreso_cab_kardex` FOREIGN KEY (`id_egreso_cab`) REFERENCES `egreso_cab` (`id`),
  CONSTRAINT `fk_ingreso_cab_kardex` FOREIGN KEY (`id_ingreso_cab`) REFERENCES `ingreso_cab` (`id`),
  CONSTRAINT `fk_producto_kardex` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kardex` */

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marca` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) DEFAULT NULL,
  `nombre_prod` varchar(10) DEFAULT NULL,
  `detalle_prod` varchar(20) DEFAULT NULL,
  `id_unidad` bigint(20) DEFAULT NULL,
  `id_categoria` bigint(20) DEFAULT NULL,
  `id_marca` bigint(20) DEFAULT NULL,
  `precio_compra` decimal(10,5) DEFAULT NULL,
  `precio_venta` decimal(10,5) DEFAULT NULL,
  `descuento_compra` bigint(20) DEFAULT NULL,
  `descuento_venta` bigint(20) DEFAULT NULL,
  `iva` varchar(2) DEFAULT NULL,
  `id_proveedor` bigint(20) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_unidad` (`id_unidad`),
  KEY `fk_categoria` (`id_categoria`),
  KEY `fk_marca` (`id_marca`),
  KEY `fk_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`),
  CONSTRAINT `fk_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `fk_unidad` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(20) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proveedor` */

/*Table structure for table `rel_usuario_rol_sucursal` */

DROP TABLE IF EXISTS `rel_usuario_rol_sucursal`;

CREATE TABLE `rel_usuario_rol_sucursal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_rol` bigint(20) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario` (`id_usuario`),
  KEY `fk_rol` (`id_rol`),
  KEY `fk_sucursal` (`id_sucursal`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`),
  CONSTRAINT `fk_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rel_usuario_rol_sucursal` */

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rol` */

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_sucursal` varchar(20) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sucursal` */

/*Table structure for table `unidad` */

DROP TABLE IF EXISTS `unidad`;

CREATE TABLE `unidad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_unidad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unidad` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cedula/ruc` varchar(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
