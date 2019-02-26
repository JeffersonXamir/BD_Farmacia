/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - modulopedido
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`modulopedido` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `modulopedido`;

/*Table structure for table `bitacora_precio` */

DROP TABLE IF EXISTS `bitacora_precio`;

CREATE TABLE `bitacora_precio` (
  `id_bitacora_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_precios` bigint(20) NOT NULL,
  `id_productos` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `precio_compra` double NOT NULL,
  `precio_venta` double NOT NULL,
  `porcentaje_descuento` double NOT NULL,
  `valor_descuento` double NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`id_bitacora_precio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bitacora_precio` */

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
  CONSTRAINT `fk_cabecera_nota_pedidos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cabecera_nota_pedidos_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `cabecera_nota_pedidos` */

insert  into `cabecera_nota_pedidos`(`id_cabecera_nota_pedidos`,`id_proveedor`,`id_usuario`,`fecha_creacion`,`estado`,`plazo`,`forma_pago`,`iva`,`descuento`,`total`) values (3,6,1,'2018-10-10 00:00:00','Ok','24Meses','Credito',0,0,0),(4,5,2,'2018-11-20 00:00:00','NO','12Meses','Credito',0,0,0),(5,8,2,'2019-01-09 01:51:12','SI','Inmediato','Credito',0,0,135);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_faltantes` */

insert  into `detalle_faltantes`(`id_detalle_faltantes`,`id_producto`,`id_usuario`,`fecha_registro`,`cantidad`,`estado`) values (2,21,NULL,'2018-11-22 00:00:00',0,'OK'),(3,22,NULL,'2018-11-05 00:00:00',5,'NO'),(4,23,NULL,'2018-11-19 00:00:00',10,'NO'),(5,25,NULL,'2018-11-05 00:00:00',0,'OK'),(6,24,NULL,'2018-11-04 00:00:00',0,'NO'),(7,21,NULL,'2018-11-03 00:00:00',0,'NO'),(8,22,NULL,'2018-11-22 00:00:00',0,'OK'),(9,25,NULL,'2018-11-30 00:00:00',0,'NO'),(10,26,NULL,'2018-12-11 00:00:00',0,'NO'),(11,27,NULL,'2018-12-11 00:00:00',0,'NO'),(16,30,NULL,'2019-01-05 00:00:00',0,'NO'),(18,28,NULL,'2019-01-05 18:00:12',0,'NO'),(19,29,NULL,'2019-01-05 18:05:07',0,'NO');

/*Table structure for table `detalle_nota_pedidos` */

DROP TABLE IF EXISTS `detalle_nota_pedidos`;

CREATE TABLE `detalle_nota_pedidos` (
  `id_detalle_nota_pedidos` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_precio` bigint(11) NOT NULL,
  `id_cabecera_nota_pedidos` bigint(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `iva` double(5,2) NOT NULL,
  PRIMARY KEY (`id_detalle_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_cabecera_idx` (`id_cabecera_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_precio_idx` (`id_precio`),
  CONSTRAINT `fk_detalle_nota_pedidos_cabecera` FOREIGN KEY (`id_cabecera_nota_pedidos`) REFERENCES `cabecera_nota_pedidos` (`id_cabecera_nota_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_nota_pedidos_precio` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detalle_nota_pedidos` */

/*Table structure for table `envase` */

DROP TABLE IF EXISTS `envase`;

CREATE TABLE `envase` (
  `id_envase` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id_envase`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `envase` */

insert  into `envase`(`id_envase`,`nombre`) values (1,'frasco'),(2,'caja'),(3,'funda');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `medidas` */

insert  into `medidas`(`id_medidas`,`nombre_medida`,`estado`) values (1,'ml','A'),(2,'lt','A'),(3,'mml','A'),(4,'unidades','A'),(5,'tabletas','A');

/*Table structure for table `precios` */

DROP TABLE IF EXISTS `precios`;

CREATE TABLE `precios` (
  `id_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_productos` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `precio_compra` double(5,2) NOT NULL,
  `precio_venta` double(5,2) NOT NULL,
  `porcentaje_descuento` double NOT NULL,
  `valor_descuento` double NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_precio`),
  KEY `fk_precios_productos` (`id_productos`),
  KEY `fk_precios_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_precios_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`),
  CONSTRAINT `fk_precios_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `precios` */

insert  into `precios`(`id_precio`,`id_productos`,`id_usuario`,`precio_compra`,`precio_venta`,`porcentaje_descuento`,`valor_descuento`,`estado`) values (1,21,1,0.55,0.60,0,0,'A'),(2,22,2,0.70,0.80,0,0,'A'),(3,26,1,0.40,0.55,0,0,'A'),(4,23,2,0.50,0.60,0,0,'A'),(5,24,1,0.35,0.42,0,0,'A'),(6,25,2,2.50,0.85,0,0,'A'),(7,27,1,0.08,0.10,0,0,'A'),(8,28,1,0.30,0.40,0,0,'A'),(11,30,1,0.70,0.85,0,0,'A'),(12,29,1,1.10,1.20,0,0,'A');

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
  `iva` varchar(2) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`id_productos`,`nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`,`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`) values (21,'ASPIRINA','dolores de cabeza','2018-11-16',15.50,5,4,2,1,'A',1,'SI',15),(22,'AMOXICILINA','AMOXICILINA','2018-11-16',10.20,5,5,2,2,'A',2,'NO',24),(23,'MEBOCAINA','MEBOCAINA','2018-11-21',1.26,6,1,1,1,'A',3,'NO',14),(24,'IBUPROFENO ','DOLORES DE CABEZA,ESTOMAGO,FIEBRE','2018-11-22',0.50,11,5,2,1,'A',0,'NO',0),(25,'LEMONFLU2','RESFRIADOS ','2018-11-30',10.00,7,5,2,1,'A',2,'NO',29),(26,'TUKOL','TOS','2018-12-11',0.16,6,4,1,1,'A',1,'SI',10),(27,'Bepantol','asdf','2018-12-11',0.20,5,4,2,2,'A',2,'SI',0),(28,'Cebion12','pastilas ','2018-12-12',0.10,5,5,1,2,'A',2,'SI',0),(29,'Pasta Dental','pasta','2019-01-05',0.30,10,4,2,1,'A',1,'SI',0),(30,'Amantadina','Pastilla','2019-01-05',0.20,4,5,1,1,'A',1,'SI',5);

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
  PRIMARY KEY (`id_proveedor`),
  KEY `fk_1` (`id_proveedor_clase`),
  CONSTRAINT `fk_clase_proveedor` FOREIGN KEY (`id_proveedor_clase`) REFERENCES `proveedor_clase` (`id_proclase`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor` */

insert  into `proveedor`(`id_proveedor`,`id_proveedor_clase`,`cedula_ruc`,`entidad`,`representante`,`direccion`,`fecha_registro`,`estado`,`telefono`,`correo`) values (5,2,'0924878605616','inkatonsa','URSULA','coop.el tunel','2018-11-14','A','0981839603 INSTITUCIONAL','jefferson@gmail.ocm INSTITUCIONAL'),(6,1,'092458566522','NESTLE','MATT MURDOCK','COOP.EL CONDOR','2018-12-19','A','0939848461 INSTITUCIONAL','atorrez@gmail.ocm INSTITUCIONAL'),(7,2,'1300696364','cocalola','KAREN PAGE','coop.el mirador','2018-12-05','A','2260392 INSTITUCIONAL','elaine@gmail.com INSTITUCIONAL'),(8,1,'0924876014','URSULA','COLOMBIA','COOP.FLORIDA NORTE','2018-12-05','A','0986334186 PERSONAL','ursula@gmail.com PERSONAL'),(9,1,'1524896522','JULIO','STEVEN ROGERS','ENTRADA DE LA 8','2018-12-06','A','4554165165158 INSTITUCIONAL','cknc PERSONAL'),(10,1,'1515151516','CATOLICA','AMBATO','PORTIIKX','2018-12-06','A','',''),(11,1,'0925487562','PROVEMARX','EDWAR','COOP.PUEBLO LINDO','2018-12-06','A','0924876262 PERSONAL','jose@gmail.com PERSONAL'),(12,1,'0924656151514','MUEBLESPALITO','JOSE TERAN ','COOP BRISAS DEL MAR','2018-12-06','A','1221513255 INSTITUCIONAL','0112sds@gmail.com INSTITUCIONAL');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor_mail` */

insert  into `proveedor_mail`(`id_promail`,`id_tipo_correo`,`mail`,`cedula_ruc`) values (1,1,'jefferson@gmail.ocm','0924878605616'),(2,1,'ambar@gmail.com','092458566522'),(3,1,'elaine@gmail.com','1300696364'),(5,2,'cknc','1524896522'),(6,1,'ambar@gmil','1524896522'),(7,1,'0112sds@gmail.com','0924656151514'),(8,1,'JEFSS@GAMIL.COM','0925487562'),(9,2,'jose@gmail.com','0925487562'),(10,2,'ursula@gmail.com','0924876014');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `proveedor_telefono` */

insert  into `proveedor_telefono`(`id_protelefono`,`id_tipo_telefono`,`telefono`,`cedula_ruc`) values (1,1,'0981839603','0924878605616'),(2,1,'0953926261','092458566522'),(3,1,'2260392','1300696364'),(10,2,'0924876262','0925487562'),(11,2,'0256522655','0924656151514'),(12,1,'1221513255','0924656151514'),(13,2,'5615224522152','0925487562'),(14,1,'4554165165158','1524896522'),(15,2,'0986334186','0924876014');

/*Table structure for table `tipo` */

DROP TABLE IF EXISTS `tipo`;

CREATE TABLE `tipo` (
  `id_tipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id_tipo`),
  KEY `fk_tipo_subtipo` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tipo` */

insert  into `tipo`(`id_tipo`,`nombre`) values (6,'analgesico'),(7,'Antialérgicos'),(5,'Antibiótico'),(8,'AntiInflamatorios '),(11,'ANTIPIRÉTICOS'),(2,'jarabe para la toz'),(4,'pastilla para dolores de cabez'),(9,'PELOTAS'),(10,'VIVERES');

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

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `cedula` text NOT NULL,
  `direccion` text NOT NULL,
  `correo` text NOT NULL,
  `contraseña` text NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id_usuario`,`nombre`,`apellido`,`cedula`,`direccion`,`correo`,`contraseña`) values (1,'Andres','Bajaña','0931978365','Guasmo Norte','wbm.andres@gmail.com','123456789'),(2,'Kelly','Mercado','093732652373','Guayquil','.hotmail.com','hdgwtwu');

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

/* Procedure structure for procedure `listarfaltantesEnNota` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarfaltantesEnNota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarfaltantesEnNota`(in op int)
BEGIN
if op= 1 then
select df.id_detalle_faltantes,df.id_producto,p.nombre as producto,m.id_marcas,m.nombre as marca
,p.id_envase,en.nombre as envase,p.id_medidas,me.nombre_medida as medida
,t.id_tipo,t.nombre as tipo ,df.cantidad,df.estado,pr.precio_compra as precio,p.iva AS IVA
from detalle_faltantes df
join productos p on  p.id_productos= df.id_producto
join tipo t on t.id_tipo=p.id_tipo
JOIN marcas m on m.id_marcas=p.id_marcas
join envase en on en.id_envase = p.id_envase
join medidas me on me.id_medidas = p.id_medidas
join precios pr on pr.id_productos = p.id_productos
where df.estado= 'NO'
order by df.id_detalle_faltantes;
end if ;
if op= 2 then
select df.id_detalle_faltantes,df.id_producto,p.nombre as producto,m.id_marcas,m.nombre as marca
,p.id_envase,en.nombre as envase,p.id_medidas,me.nombre_medida as medida
,t.id_tipo,t.nombre as tipo ,df.cantidad,df.estado,pr.precio_compra as precio,p.iva AS IVA
from detalle_faltantes df
join productos p on  p.id_productos= df.id_producto
join tipo t on t.id_tipo=p.id_tipo
JOIN marcas m on m.id_marcas=p.id_marcas
join envase en on en.id_envase = p.id_envase
join medidas me on me.id_medidas = p.id_medidas
join precios pr on pr.id_productos = p.id_productos
where df.estado= 'OK'
order by df.id_detalle_faltantes;
end if ;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ListarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProveedor`(IN op BIGINT)
BEGIN
IF (op=1)THEN
SELECT p.`id_proveedor`,p.`id_proveedor_clase`,pc.`clase`,p.`cedula_ruc`,p.`entidad`,p.`representante`,p.`direccion`,p.`fecha_registro`,p.`estado`,
p.`telefono`,p.`correo`
FROM proveedor p 
JOIN `proveedor_clase` pc ON pc.`id_proclase`=p.`id_proveedor_clase`
WHERE p.`estado` = 'A';
END IF;
IF (op=2)THEN
SELECT p.`id_proveedor`,p.`id_proveedor_clase`,pc.`clase`,p.`cedula_ruc`,p.`entidad`,p.`representante`,p.`direccion`,p.`fecha_registro`,p.`estado`,
p.`telefono`,p.`correo`
FROM proveedor p 
JOIN `proveedor_clase` pc ON pc.`id_proclase`=p.`id_proveedor_clase`
WHERE p.`estado` = 'I';
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `mostrar_producto` */

/*!50003 DROP PROCEDURE IF EXISTS  `mostrar_producto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_producto`()
BEGIN
    SELECT 
        `p`.`nombre` AS `nombre`,
        `p`.`descripcion` AS `descripcion`,
        `p`.`peso` AS `peso`,
        `me`.`nombre_medida` AS `medida`,
        `e`.`nombre` AS `envase`,
        `ma`.`nombre` AS `marca`,
        `pr`.`precio_compra` AS `precio_compra`,
        `pr`.`precio_venta` AS `precio_venta`
    FROM
        ((((`productos` `p`
        JOIN `precios` `pr`)
        JOIN `medidas` `me`)
        JOIN `envase` `e`)
        JOIN `marcas` `ma`)
    WHERE
        ((`p`.`id_productos` = `pr`.`id_productos`)
            AND (`p`.`id_medidas` = `me`.`id_medidas`)
            AND (`e`.`id_envase` = `p`.`id_envase`)
            AND (`p`.`id_marcas` = `ma`.`id_marcas`)
            AND (`pr`.`estado` = 'A'));
END */$$
DELIMITER ;

/*Table structure for table `mostrar_producto` */

DROP TABLE IF EXISTS `mostrar_producto`;

/*!50001 DROP VIEW IF EXISTS `mostrar_producto` */;
/*!50001 DROP TABLE IF EXISTS `mostrar_producto` */;

/*!50001 CREATE TABLE  `mostrar_producto`(
 `nombre` varchar(45) ,
 `descripcion` varchar(80) ,
 `peso` double(7,2) ,
 `medida` varchar(80) ,
 `envase` varchar(80) ,
 `marca` text ,
 `precio_compra` double(5,2) ,
 `precio_venta` double(5,2) 
)*/;

/*View structure for view mostrar_producto */

/*!50001 DROP TABLE IF EXISTS `mostrar_producto` */;
/*!50001 DROP VIEW IF EXISTS `mostrar_producto` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mostrar_producto` AS select `p`.`nombre` AS `nombre`,`p`.`descripcion` AS `descripcion`,`p`.`peso` AS `peso`,`me`.`nombre_medida` AS `medida`,`e`.`nombre` AS `envase`,`ma`.`nombre` AS `marca`,`pr`.`precio_compra` AS `precio_compra`,`pr`.`precio_venta` AS `precio_venta` from ((((`productos` `p` join `precios` `pr`) join `medidas` `me`) join `envase` `e`) join `marcas` `ma`) where ((`p`.`id_productos` = `pr`.`id_productos`) and (`p`.`id_medidas` = `me`.`id_medidas`) and (`e`.`id_envase` = `p`.`id_envase`) and (`p`.`id_marcas` = `ma`.`id_marcas`) and (`pr`.`estado` = 'A')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
