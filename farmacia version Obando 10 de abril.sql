/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - farmaciaskelly
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`farmaciaskelly` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `farmaciaskelly`;

/*Table structure for table `in_bodega` */

DROP TABLE IF EXISTS `in_bodega`;

CREATE TABLE `in_bodega` (
  `id_bodega` bigint(11) NOT NULL,
  `id_empresa` bigint(11) DEFAULT NULL,
  `id_sucursal` bigint(11) DEFAULT NULL,
  `nombre_bodega` varchar(70) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `id_usuario_creacion` bigint(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usuario_actualizacion` bigint(11) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `id_tipo_bodega` bigint(11) NOT NULL,
  PRIMARY KEY (`id_bodega`,`id_tipo_bodega`),
  KEY `fk_bodega_tipo` (`id_tipo_bodega`),
  CONSTRAINT `fk_bodega_tipo` FOREIGN KEY (`id_tipo_bodega`) REFERENCES `in_tipo_bodega` (`id_tipo_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `in_bodega` */

/*Table structure for table `in_detalle_movimiento` */

DROP TABLE IF EXISTS `in_detalle_movimiento`;

CREATE TABLE `in_detalle_movimiento` (
  `id_detalle_movimiento` bigint(20) DEFAULT NULL,
  `id_tipo_documento` bigint(20) DEFAULT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `anio_documento` varchar(10) DEFAULT NULL,
  `linea_detalle` bigint(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad` bigint(20) DEFAULT NULL,
  `precio_unitario` decimal(10,7) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `despachado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `in_detalle_movimiento` */

/*Table structure for table `in_detalle_orden_compra` */

DROP TABLE IF EXISTS `in_detalle_orden_compra`;

CREATE TABLE `in_detalle_orden_compra` (
  `id_detalle_orden_compra` bigint(20) DEFAULT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `linea_detalle` bigint(20) DEFAULT NULL,
  `descripcion` varchar(70) DEFAULT NULL,
  `id_producto` bigint(20) DEFAULT NULL,
  `id_grupo` bigint(20) DEFAULT NULL,
  `id_subgrupo` bigint(20) DEFAULT NULL,
  `id_articulo` bigint(20) DEFAULT NULL,
  `id_tipo_marca` bigint(20) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `id_tipo_modelado` bigint(20) DEFAULT NULL,
  `modelado` varchar(50) DEFAULT NULL,
  `cantidad_total` bigint(20) DEFAULT NULL,
  `precio_unitario` decimal(10,7) DEFAULT NULL,
  `precio_total` decimal(10,7) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `iva` decimal(10,7) DEFAULT NULL,
  `subtotal` decimal(10,7) DEFAULT NULL,
  `descuento` decimal(10,7) DEFAULT NULL,
  `total` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `in_detalle_orden_compra` */

/*Table structure for table `in_movimientos` */

DROP TABLE IF EXISTS `in_movimientos`;

CREATE TABLE `in_movimientos` (
  `id_movimientos` bigint(11) DEFAULT NULL,
  `id_numero_documento` bigint(11) DEFAULT NULL,
  `id_tipo_documento` bigint(11) DEFAULT NULL,
  `año_documento` varchar(45) DEFAULT NULL,
  `id_empresa` bigint(11) DEFAULT NULL,
  `id_bodega` bigint(11) DEFAULT NULL,
  `id_sucursal` bigint(11) DEFAULT NULL,
  `id_usuario` bigint(11) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `bodega_destino` varchar(50) DEFAULT NULL,
  `sucursal_destino` varchar(45) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `id_proveedor` bigint(11) DEFAULT NULL,
  `id_orden_compra` bigint(11) DEFAULT NULL,
  `id_usuario_creacion` bigint(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usuario_actualizacion` bigint(11) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `in_movimientos` */

/*Table structure for table `in_orden_compras` */

DROP TABLE IF EXISTS `in_orden_compras`;

CREATE TABLE `in_orden_compras` (
  `id_orden_compra` bigint(20) DEFAULT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `id_sucursal` bigint(20) DEFAULT NULL,
  `codigo_cotizacion_proveedores` bigint(20) DEFAULT NULL,
  `codigo_cotizacion` bigint(20) DEFAULT NULL,
  `id_proveedor` bigint(20) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `id_documento` bigint(20) DEFAULT NULL,
  `observacion` varchar(70) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `total_compra` decimal(10,7) DEFAULT NULL,
  `subtotal` decimal(10,7) DEFAULT NULL,
  `total_descuento` decimal(10,7) DEFAULT NULL,
  `total_ise` decimal(10,7) DEFAULT NULL,
  `total_iva` decimal(10,7) DEFAULT NULL,
  `mail_notificador` varchar(70) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `in_orden_compras` */

/*Table structure for table `in_tipo_bodega` */

DROP TABLE IF EXISTS `in_tipo_bodega`;

CREATE TABLE `in_tipo_bodega` (
  `id_tipo_bodega` bigint(11) NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `id_usuario_creacion` bigint(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usuario_actualizacion` bigint(11) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `in_tipo_bodega` */

/*Table structure for table `pr_articulo` */

DROP TABLE IF EXISTS `pr_articulo`;

CREATE TABLE `pr_articulo` (
  `id_articulo` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_grupo` bigint(20) NOT NULL,
  `id_subgrupo` bigint(20) NOT NULL,
  `nombre_articulo` varchar(70) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_articulo`,`id_grupo`,`id_subgrupo`),
  KEY `fk_gru_sub_articulo$1` (`id_grupo`,`id_subgrupo`),
  CONSTRAINT `fk_gru_sub_articulo$1` FOREIGN KEY (`id_grupo`, `id_subgrupo`) REFERENCES `pr_subgrupos` (`id_subgrupo`, `id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_articulo` */

/*Table structure for table `pr_grupos` */

DROP TABLE IF EXISTS `pr_grupos`;

CREATE TABLE `pr_grupos` (
  `id_grupo` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_grupos` */

/*Table structure for table `pr_medidas` */

DROP TABLE IF EXISTS `pr_medidas`;

CREATE TABLE `pr_medidas` (
  `id_tipo_medida` bigint(20) NOT NULL,
  `id_tipo_presentacion` bigint(20) NOT NULL,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_medida`,`id_tipo_presentacion`),
  KEY `fk_tipo_presentacion` (`id_tipo_presentacion`),
  CONSTRAINT `fk_tipo_medida` FOREIGN KEY (`id_tipo_medida`) REFERENCES `pr_tipo_medida` (`id_tipo_medida`),
  CONSTRAINT `fk_tipo_presentacion` FOREIGN KEY (`id_tipo_presentacion`) REFERENCES `pr_tipo_presentacion` (`id_tipo_presentacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_medidas` */

/*Table structure for table `pr_prestaciones` */

DROP TABLE IF EXISTS `pr_prestaciones`;

CREATE TABLE `pr_prestaciones` (
  `id_prestacion` bigint(20) NOT NULL,
  `id_empresa` bigint(20) NOT NULL,
  `id_poducto` bigint(20) NOT NULL,
  `nombre_prestacion` varchar(70) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `aplica_iva` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_prestacion`,`id_empresa`,`id_poducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_prestaciones` */

/*Table structure for table `pr_producto_bodega` */

DROP TABLE IF EXISTS `pr_producto_bodega`;

CREATE TABLE `pr_producto_bodega` (
  `id_producto_bodega` bigint(11) NOT NULL,
  `id_producto` bigint(11) DEFAULT NULL,
  `id_empresa` bigint(11) DEFAULT NULL,
  `id_sucursal` bigint(11) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `stock_minimo` bigint(11) DEFAULT NULL,
  `stock_maximo` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pr_producto_bodega` */

/*Table structure for table `pr_productos` */

DROP TABLE IF EXISTS `pr_productos`;

CREATE TABLE `pr_productos` (
  `id_producto` bigint(20) NOT NULL,
  `codigo_barra` text,
  `id_empresa` bigint(20) NOT NULL,
  `id_articulo` bigint(20) NOT NULL,
  `id_grupo` bigint(20) NOT NULL,
  `id_subgrupo` bigint(20) NOT NULL,
  `id_tipo_medida` bigint(20) NOT NULL,
  `id_tipo_presentacion` bigint(20) NOT NULL,
  `cod_fabricante` text,
  `descontinuado` char(2) DEFAULT NULL,
  `nombre_producto` varchar(70) DEFAULT NULL,
  `registro_sanitario_local` text,
  `registro_sanitario_extranjero` text,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_producto`,`id_empresa`,`id_articulo`,`id_grupo`,`id_subgrupo`,`id_tipo_medida`,`id_tipo_presentacion`),
  KEY `fk_pr_medidas$1` (`id_tipo_medida`,`id_tipo_presentacion`),
  KEY `fk_pr_produ_articulo$2` (`id_articulo`,`id_grupo`,`id_subgrupo`),
  CONSTRAINT `fk_pr_medidas$1` FOREIGN KEY (`id_tipo_medida`, `id_tipo_presentacion`) REFERENCES `pr_medidas` (`id_tipo_medida`, `id_tipo_presentacion`),
  CONSTRAINT `fk_pr_produ_articulo$2` FOREIGN KEY (`id_articulo`, `id_grupo`, `id_subgrupo`) REFERENCES `pr_articulo` (`id_articulo`, `id_grupo`, `id_subgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_productos` */

/*Table structure for table `pr_subgrupos` */

DROP TABLE IF EXISTS `pr_subgrupos`;

CREATE TABLE `pr_subgrupos` (
  `id_subgrupo` bigint(20) NOT NULL,
  `id_grupo` bigint(20) NOT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_subgrupo`,`id_grupo`),
  KEY `fk_grupo_sub$1` (`id_grupo`),
  CONSTRAINT `fk_grupo_sub$1` FOREIGN KEY (`id_grupo`) REFERENCES `pr_grupos` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_subgrupos` */

/*Table structure for table `pr_tipo_medida` */

DROP TABLE IF EXISTS `pr_tipo_medida`;

CREATE TABLE `pr_tipo_medida` (
  `id_tipo_medida` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `id_usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `id_usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_medida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_tipo_medida` */

/*Table structure for table `pr_tipo_presentacion` */

DROP TABLE IF EXISTS `pr_tipo_presentacion`;

CREATE TABLE `pr_tipo_presentacion` (
  `id_tipo_presentacion` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_presentacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pr_tipo_presentacion` */

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
  `id_tipo_persona` bigint(20) NOT NULL,
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
  PRIMARY KEY (`id_persona`,`id_tipo_persona`),
  KEY `persona_tipo` (`id_tipo_persona`),
  CONSTRAINT `fk_persona_tipo_persona$1` FOREIGN KEY (`id_tipo_persona`) REFERENCES `se_tipo_persona` (`id_tipo_persona`)
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
  `id_empresa` bigint(20) NOT NULL,
  `nombre_comercial` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`,`id_empresa`),
  KEY `sucursal_empresa` (`id_empresa`),
  CONSTRAINT `fk_empresa_sucursal$1` FOREIGN KEY (`id_empresa`) REFERENCES `se_empresa` (`id_empresa`)
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
  `id_sucursal` bigint(20) NOT NULL,
  `id_empresa` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_menu_roles` bigint(20) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario_sucur_rol`,`id_empresa`,`id_sucursal`),
  KEY `usuario_sucursal` (`id_sucursal`),
  KEY `usuario_rol` (`id_menu_roles`),
  KEY `usuario_user` (`id_usuario`),
  KEY `fk_sucursal_empresa_rol_usuario$1` (`id_sucursal`,`id_empresa`),
  CONSTRAINT `fk_opciones_roles$1` FOREIGN KEY (`id_menu_roles`) REFERENCES `se_opciones_roles` (`id_opciones_roles`),
  CONSTRAINT `fk_sucursal_empresa_rol_usuario$1` FOREIGN KEY (`id_sucursal`, `id_empresa`) REFERENCES `se_sucursal` (`id_sucursal`, `id_empresa`),
  CONSTRAINT `fk_usuario$1` FOREIGN KEY (`id_usuario`) REFERENCES `se_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_usuario_sucur_rol` */

/*Table structure for table `se_usuarios` */

DROP TABLE IF EXISTS `se_usuarios`;

CREATE TABLE `se_usuarios` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_persona` bigint(20) NOT NULL,
  `id_tipo_persona` bigint(20) NOT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_creacion` bigint(20) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `usuario_actualizacion` bigint(20) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_persona`,`id_tipo_persona`),
  KEY `usuario_persona` (`id_persona`),
  KEY `fk_usuario_tp$1` (`id_persona`,`id_tipo_persona`),
  CONSTRAINT `fk_usuario_tp$1` FOREIGN KEY (`id_persona`, `id_tipo_persona`) REFERENCES `se_personas` (`id_persona`, `id_tipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `se_usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
