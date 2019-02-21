/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.25-log : Database - proyecto_pis2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto_pis2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `proyecto_pis2`;

/*Table structure for table `cabecera_venta` */

DROP TABLE IF EXISTS `cabecera_venta`;

CREATE TABLE `cabecera_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num_venta` varchar(70) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `tipo_pago` text,
  `tipo_venta` text,
  `subtotal_con_iva` decimal(10,5) NOT NULL,
  `subtotal_sin_iva` decimal(10,5) NOT NULL,
  `iva_total` decimal(10,5) NOT NULL,
  `descuento_total` decimal(10,5) NOT NULL,
  `total` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usu_cab` (`id_usuario`),
  KEY `fk_empr_cab` (`id_empresa`),
  CONSTRAINT `fk_empr_cab` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `fk_usu_cab` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `cabecera_venta` */

insert  into `cabecera_venta`(`id`,`num_venta`,`fecha_creacion`,`id_usuario`,`id_empresa`,`tipo_pago`,`tipo_venta`,`subtotal_con_iva`,`subtotal_sin_iva`,`iva_total`,`descuento_total`,`total`) values (2,'000001','2019-02-20 15:23:57',2,1,'contado','factura',20.00000,0.00000,12.00000,1.00000,32.00000),(3,'000002','2019-02-20 15:24:43',2,1,'contado','factura',20.00000,0.00000,12.00000,1.00000,32.00000);

/*Table structure for table `clase_producto` */

DROP TABLE IF EXISTS `clase_producto`;

CREATE TABLE `clase_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `clase_producto` */

insert  into `clase_producto`(`id`,`nombre`,`estado`) values (1,'ACEITE AGRICOLA','A'),(2,'ALCOHOL','A'),(3,'ARREGLO','A'),(4,'BEBIDAS','A'),(5,'BIENES','A'),(6,'COLONIAS','A'),(7,'ENVASES','A'),(8,'EQUIPOS DE ASEPSIA','A'),(9,'EXTRACTOS NATURALES','A'),(10,'FERRETERIA','A'),(11,'FRAGANCIAS','A'),(12,'LABORATORIO','A'),(13,'MINERAL','A'),(14,'MUESTRAS DE EXTRACTOS','A'),(15,'PRODUCTOS ALIMENTICIOS','A'),(16,'PRODUCTOS COSMETICOS','A'),(17,'PRODUCTOS DE LIMPIEZ','A'),(18,'PRODUCTOS INDUSTRIALES','A'),(19,'PRODUCTOS QUIMICOS','A'),(20,'PRODUCTOS VARIOS','A'),(21,'SEMILLAS','A'),(22,'SERVICIOS','A'),(23,'SOLVENTES','A'),(24,'SUMINISTROS DE HOGAR Y OFICINA','A'),(25,'SUMINISTROS DE OFICINA','A'),(26,'SUMINISTROS OFICINA','A'),(27,'TRANSPORTE','A');

/*Table structure for table `detalle_venta` */

DROP TABLE IF EXISTS `detalle_venta`;

CREATE TABLE `detalle_venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cabecera_venta` bigint(20) DEFAULT NULL,
  `id_producto` bigint(20) NOT NULL,
  `precio` decimal(10,5) DEFAULT NULL,
  `cantidad` bigint(30) NOT NULL,
  `iva` decimal(10,5) DEFAULT NULL,
  `descuento` decimal(10,5) DEFAULT NULL,
  `total` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cab_det` (`id_cabecera_venta`),
  KEY `fk_pro_det` (`id_producto`),
  CONSTRAINT `fk_det_cab` FOREIGN KEY (`id_cabecera_venta`) REFERENCES `cabecera_venta` (`id`),
  CONSTRAINT `fk_pro_det` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `detalle_venta` */

insert  into `detalle_venta`(`id`,`id_cabecera_venta`,`id_producto`,`precio`,`cantidad`,`iva`,`descuento`,`total`) values (1,2,1,20.00000,5,12.00000,1.00000,35.00000);

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ruc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `empresa` */

insert  into `empresa`(`id`,`nombre`,`direccion`,`ruc`) values (1,'empresa x','copp.asosiados exd','383776228');

/*Table structure for table `medida_producto` */

DROP TABLE IF EXISTS `medida_producto`;

CREATE TABLE `medida_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `medida_producto` */

insert  into `medida_producto`(`id`,`nombre`,`estado`) values (1,'1/2 KILO','A'),(2,'500ML','A'),(3,'1000 LITROS','A'),(4,'1/4 KILO','A'),(5,'250ML','A'),(6,'12 ONZAS','A'),(7,'30 CC','A'),(8,'GALON(ES) AM','A'),(9,'KILO(S)','A'),(10,'TANQUE 176 KILOS','A'),(11,'LITRO(S)','A');

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio_compra_referencial` decimal(10,5) DEFAULT NULL,
  `precio_compra_ult` decimal(10,5) DEFAULT NULL,
  `precio_Vent_A` decimal(10,5) DEFAULT NULL,
  `precio_Vent_B` decimal(10,5) DEFAULT NULL,
  `precio_Vent_C` decimal(10,5) DEFAULT NULL,
  `clase` bigint(20) DEFAULT NULL,
  `tipo` bigint(20) DEFAULT NULL,
  `medida` bigint(20) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `iva` char(1) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pro_clase` (`clase`),
  KEY `fk_pro_tipo` (`tipo`),
  KEY `fk_pro_medi` (`medida`),
  CONSTRAINT `fk_pro_clase` FOREIGN KEY (`clase`) REFERENCES `clase_producto` (`id`),
  CONSTRAINT `fk_pro_medi` FOREIGN KEY (`medida`) REFERENCES `medida_producto` (`id`),
  CONSTRAINT `fk_pro_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

insert  into `producto`(`id`,`nombre`,`precio_compra_referencial`,`precio_compra_ult`,`precio_Vent_A`,`precio_Vent_B`,`precio_Vent_C`,`clase`,`tipo`,`medida`,`stock`,`iva`,`estado`) values (1,'ACEITE AGRICOLA (SPRY O)',1.70000,1.13000,2.00000,1.82000,1.73000,1,1,8,40,'S','A'),(2,'ACEITE EMULSIONADO',0.90000,0.85000,3.00000,2.00000,1.00000,1,1,9,50,'S','A'),(3,'ACEITE VASELINA',350.00000,0.00000,450.00000,420.00000,400.00000,1,2,10,50,'S','A'),(4,'ALCOHOL FARMACEUTICO',70.00000,0.00000,1.00000,1.10000,1.20000,2,3,11,50,'N','A'),(5,'ALCOHOL ANTISEPTICO',3.00000,0.85000,0.80000,0.85000,0.88000,2,4,11,50,'S','I');

/*Table structure for table `relacion_roles_usuario` */

DROP TABLE IF EXISTS `relacion_roles_usuario`;

CREATE TABLE `relacion_roles_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_roles` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_relacion` (`id_usuario`),
  KEY `fk_rol_relacion` (`id_roles`),
  CONSTRAINT `fk_rol_relacion` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_usuario_relacion` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `relacion_roles_usuario` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

/*Table structure for table `tb_seguridad_usuario` */

DROP TABLE IF EXISTS `tb_seguridad_usuario`;

CREATE TABLE `tb_seguridad_usuario` (
  `cedula_u` varchar(10) DEFAULT NULL,
  `nombres_u` varchar(25) DEFAULT NULL,
  `apellidos_u` varchar(35) DEFAULT NULL,
  `telefono_u` varchar(15) DEFAULT NULL,
  `direccion_u` varchar(50) DEFAULT NULL,
  `contrasena_u` varchar(15) DEFAULT NULL,
  `fecha_accion_u` date DEFAULT NULL,
  `accion_u` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_seguridad_usuario` */

insert  into `tb_seguridad_usuario`(`cedula_u`,`nombres_u`,`apellidos_u`,`telefono_u`,`direccion_u`,`contrasena_u`,`fecha_accion_u`,`accion_u`) values ('09764632','juan jose','flores','38737382','coop.el condor','axj3h4','2019-01-11','Agregado'),('092487605','ALEX 2','EL LEON','2260395','coop.el emplame','asjnx58','2019-01-11','Modificado'),('09764632','juan jose','flores','38737382','coop.el condor','axj3h4','2019-01-11','Eliminado'),('092487605','ALEX 2','EL LEON','2260395','coop.el emplame','asjnx58','2019-02-01','Eliminado'),('092485511','ALEJANDRO','alcalde','042260984','coop.el mirsador','asjnrer68','2019-02-01','Eliminado'),('092475455','ALFONSO','RODRIGUEZ','2255788','coop.el la florida','asjflmm21','2019-02-01','Eliminado'),('092651553','andres','reyes','2245555','coop.la floresta','asexw28xwq','2019-02-01','Eliminado'),('092481515','walter','cedeño','22648485','coop.bastion popular','asjdf514','2019-02-01','Eliminado'),('7727283728','alex tuti','el matatan','3398334','copp.asosiados','tshd823','2019-02-11','Agregado');

/*Table structure for table `tipo_producto` */

DROP TABLE IF EXISTS `tipo_producto`;

CREATE TABLE `tipo_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_producto` */

insert  into `tipo_producto`(`id`,`nombre`,`estado`) values (1,'HIC-ACEITE','A'),(2,'INDUSTRIAL','A'),(3,'ALCOHOL ALT','A'),(4,'ANTISEPTICO','A'),(5,'GEL','A'),(6,'HIC-DEODORIZADO','A'),(7,'HIC-DESODORIZADO','A'),(8,'INDUSTRIAL','A'),(9,'POTABLE','A'),(10,'HIC-ESENCIA','A');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `contrasena` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `contrasena` (`contrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`cedula`,`nombres`,`apellidos`,`telefono`,`direccion`,`contrasena`) values (2,'7727283728','alex tuti','el matatan','3398334','copp.asosiados','tshd823');

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_insert_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_insert_usuario` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( new.cedula, new.nombres,
new.apellidos, new.telefono, new.direccion, new.contrasena, CURDATE(),'Agregado');
END */$$


DELIMITER ;

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_update_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_update_usuario` BEFORE UPDATE ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( new.cedula, new.nombres,
new.apellidos, new.telefono, new.direccion, new.contrasena, CURDATE(),'Modificado');
END */$$


DELIMITER ;

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_delete_usuario` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tr_delete_usuario` BEFORE DELETE ON `usuario` FOR EACH ROW BEGIN
INSERT INTO tb_seguridad_usuario VALUES ( old.cedula, old.nombres,
old.apellidos, old.telefono, old.direccion, old.contrasena, CURDATE(),'Eliminado');
END */$$


DELIMITER ;

/* Procedure structure for procedure `inactivarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `inactivarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `inactivarProducto`(in op int ,in idPro bigint)
BEGIN
	if (op=1)then
	update `producto` set `producto`.`estado`='I' where `producto`.`id`=idPro;
	end if;
	IF (op=2)THEN
	UPDATE `producto` SET `producto`.`estado`='A' WHERE `producto`.`id`=idPro;
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ingresoProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `ingresoProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoProducto`(IN nombre1 VARCHAR(100),IN compra_ref DECIMAL(10,5),IN precio_ult DECIMAL(10,5),IN precio_A DECIMAL(10,5),
IN precio_B DECIMAL(10,5),IN precio_C DECIMAL(10,5),IN clase7 BIGINT,IN tipo8 BIGINT,IN medida9 BIGINT,IN stock10 BIGINT,IN iva11 TEXT,OUT valor TEXT)
BEGIN
    
    insert into `producto`(`nombre`,`precio_compra_referencial`,`precio_compra_ult`,`precio_Vent_A`,`precio_Vent_B`,`precio_Vent_C`,
    `clase`,`tipo`,`medida`,`stock`,`iva`,`estado`)values(nombre1,compra_ref,precio_ult,precio_A,precio_B,precio_C,clase7,
    tipo8,medida9,stock10,iva11,'A');
    set valor='¡PRODUCTO INGRESADO!';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertarCabeceraVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarCabeceraVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCabeceraVentas`(
    in _num_venta varchar(70),
    in _id_usuario BIGINT,
    in _id_empresa bigint,
    in _tipo_pago TEXT,
    in _tipo_venta text,
    in _Subtotal_con_iva decimal(10,5),
    in _Subtotal_sin_iva decimal(10,5),
    in _iva_total decimal(10,5),
    in _descuento_total decimal(19,5),
    in _total decimal(10,5),
	out valor text
)
BEGIN
	
	declare _fecha_creacion datetime;
    set _fecha_creacion = now();
    set valor='';
    insert into `cabecera_venta`(num_venta,fecha_creacion,id_usuario,id_empresa,tipo_pago,tipo_venta,Subtotal_con_iva,Subtotal_sin_iva,iva_total,descuento_total,total)
	values(_num_venta,_fecha_creacion,_id_usuario,_id_empresa,_tipo_pago,_tipo_venta,_Subtotal_con_iva,_Subtotal_sin_iva,_iva_total,_descuento_total,_total);
    set valor = (select id from cabecera_venta where id_usuario=_id_usuario  and num_venta = _num_venta and fecha_creacion = _fecha_creacion );
END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertarDetalleVentas` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertarDetalleVentas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDetalleVentas`(
	in _id_cabecera_venta BIGINT,
    in _id_producto BIGINT,
    in _precio decimal(10,5),
    in _cantidad bigint,
    in _iva decimal(10,5),
    in _descuento decimal(10,5),
    in _total decimal(10,5),
    out valor text
)
BEGIN
	set valor='';
    insert into `detalle_venta`(id_cabecera_venta,id_producto,precio,cantidad,iva,descuento,total)

	values(_id_cabecera_venta,_id_producto,_precio,_cantidad,_iva,_descuento,_total);
    set valor = (select id from detalle_venta where id_cabecera_venta =_id_cabecera_venta  and id_producto = _id_producto and cantidad = _cantidad);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarComboProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarComboProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboProductos`(in op int)
BEGIN
	if (op = 1) then
	select `id`,`nombre`,`estado` from `clase_producto` where `estado`='A';
	end if;
	IF (op = 2) THEN
	SELECT `id`,`nombre`,`estado` FROM `tipo_producto` WHERE `estado`='A';
	END IF;
	IF (op = 3) THEN
	SELECT `id`,`nombre`,`estado` FROM `medida_producto` WHERE `estado`='A';
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listarJoinProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `listarJoinProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductos`(in op int)
BEGIN
if (op=1)then
SELECT p.`id`,p.`nombre`,p.`precio_compra_referencial`,p.`precio_compra_ult`,p.`precio_Vent_A`,p.`precio_Vent_B`,p.`precio_Vent_C`,p.`clase` AS id_clase,
cp.`nombre` AS clase ,p.`tipo` AS id_tipo ,tp.`nombre` AS tipo ,p.`medida` AS id_medida ,mp.`nombre` AS medida,p.`stock`,p.`iva`,p.`estado`FROM `producto` p 
JOIN `clase_producto` cp ON cp.`id`= p.`clase`
JOIN `tipo_producto` tp ON tp.`id`= p.`tipo`
JOIN `medida_producto` mp ON mp.`id`=p.`medida`
where p.`estado`='A';
end if;
IF (op=2)THEN
SELECT p.`id`,p.`nombre`,p.`precio_compra_referencial`,p.`precio_compra_ult`,p.`precio_Vent_A`,p.`precio_Vent_B`,p.`precio_Vent_C`,p.`clase` AS id_clase,
cp.`nombre` AS clase ,p.`tipo` AS id_tipo ,tp.`nombre` AS tipo ,p.`medida` AS id_medida ,mp.`nombre` AS medida,p.`stock`,p.`iva`,p.`estado`FROM `producto` p 
JOIN `clase_producto` cp ON cp.`id`= p.`clase`
JOIN `tipo_producto` tp ON tp.`id`= p.`tipo`
JOIN `medida_producto` mp ON mp.`id`=p.`medida`
WHERE p.`estado`='I';
END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `modificarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarProducto`(in nombre1 varchar(100),in compra_ref decimal(10,5),in precio_ult DECIMAL(10,5),in precio_A DECIMAL(10,5),
in precio_B DECIMAL(10,5),in precio_C DECIMAL(10,5),in clase7 bigint,in tipo8 bigint,in medida9 bigint,in stock10 bigint,in iva11 text,in idpro12 bigint,out valor text)
BEGIN
	update `producto` SET `nombre`=nombre1,`precio_compra_referencial`=compra_ref,`precio_compra_ult`=precio_ult,`precio_Vent_A`=precio_A,
	`precio_Vent_B`=precio_B,`precio_Vent_C`=precio_C,`clase`=clase7,`tipo`=tipo8,`medida`=medida9,`stock`=stock10,`iva`=iva11 
        where `id`= idpro12;
	set valor = 'PRODUCTO ACTUALIZADO';
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
