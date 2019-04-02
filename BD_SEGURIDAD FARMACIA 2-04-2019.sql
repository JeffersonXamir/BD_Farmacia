/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - farmaciaseguridad
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`farmaciaseguridad` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `farmaciaseguridad`;

/*Table structure for table `se_empresa` */

DROP TABLE IF EXISTS `se_empresa`;

CREATE TABLE `se_empresa` (
  `id_empresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_comercial` varchar(70) DEFAULT NULL,
  `ruc` varchar(13) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `usuario_creacion` bigint(70) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_empresa` */

/*Table structure for table `se_opciones_menu` */

DROP TABLE IF EXISTS `se_opciones_menu`;

CREATE TABLE `se_opciones_menu` (
  `id_opciones_menu` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `descripcion` varchar(70) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_opciones_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_opciones_menu` */

/*Table structure for table `se_opciones_roles` */

DROP TABLE IF EXISTS `se_opciones_roles`;

CREATE TABLE `se_opciones_roles` (
  `id_opciones_roles` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_opciones_menu` bigint(20) DEFAULT NULL,
  `id_rol` bigint(20) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_opciones_roles`),
  KEY `opc_roles` (`id_rol`),
  KEY `opc_menu` (`id_opciones_menu`),
  CONSTRAINT `opc_menu` FOREIGN KEY (`id_opciones_menu`) REFERENCES `se_opciones_menu` (`id_opciones_menu`),
  CONSTRAINT `opc_roles` FOREIGN KEY (`id_rol`) REFERENCES `se_roles` (`id_roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_opciones_roles` */

/*Table structure for table `se_personas` */

DROP TABLE IF EXISTS `se_personas`;

CREATE TABLE `se_personas` (
  `id_persona` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_tipo_persona` bigint(20) DEFAULT NULL,
  `cedula` varchar(10) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `telefono2` varchar(10) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `persona_tipo` (`id_tipo_persona`),
  CONSTRAINT `persona_tipo` FOREIGN KEY (`id_tipo_persona`) REFERENCES `se_tipo_persona` (`id_tipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_personas` */

/*Table structure for table `se_roles` */

DROP TABLE IF EXISTS `se_roles`;

CREATE TABLE `se_roles` (
  `id_roles` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_roles` */

/*Table structure for table `se_sucursal` */

DROP TABLE IF EXISTS `se_sucursal`;

CREATE TABLE `se_sucursal` (
  `id_sucursal` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) DEFAULT NULL,
  `nombre_comercial` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `sucursal_empresa` (`id_empresa`),
  CONSTRAINT `sucursal_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `se_empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_sucursal` */

/*Table structure for table `se_tipo_persona` */

DROP TABLE IF EXISTS `se_tipo_persona`;

CREATE TABLE `se_tipo_persona` (
  `id_tipo_persona` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_tipo_persona` */

/*Table structure for table `se_usuario_sucur_rol` */

DROP TABLE IF EXISTS `se_usuario_sucur_rol`;

CREATE TABLE `se_usuario_sucur_rol` (
  `id_usuario_sucur_rol` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `id_rol` bigint(20) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario_sucur_rol`),
  KEY `usuario_sucursal` (`id_sucursal`),
  KEY `usuario_rol` (`id_rol`),
  KEY `usuario_user` (`id_usuario`),
  CONSTRAINT `usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `se_roles` (`id_roles`),
  CONSTRAINT `usuario_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `se_sucursal` (`id_sucursal`),
  CONSTRAINT `usuario_user` FOREIGN KEY (`id_usuario`) REFERENCES `se_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_usuario_sucur_rol` */

/*Table structure for table `se_usuarios` */

DROP TABLE IF EXISTS `se_usuarios`;

CREATE TABLE `se_usuarios` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_persona` bigint(20) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usuario_persona` (`id_persona`),
  CONSTRAINT `usuario_persona` FOREIGN KEY (`id_persona`) REFERENCES `se_personas` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_usuarios` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
