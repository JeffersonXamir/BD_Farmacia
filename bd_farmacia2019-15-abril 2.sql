CREATE DATABASE  IF NOT EXISTS `moduloprueba` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `moduloprueba`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (i686)
--
-- Host: localhost    Database: moduloprueba
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODIGO ATC` varchar(90) DEFAULT NULL,
  `DESCRIPCION` varchar(120) DEFAULT NULL,
  `FORMA FARMACEUTICA` varchar(90) DEFAULT NULL,
  `CONCENTRACION` varchar(60) DEFAULT NULL,
  `NIVEL DE PRESCRIPCION` varchar(60) DEFAULT NULL,
  `NIVEL DE ATENCION` varchar(60) DEFAULT NULL,
  `VIA ADM` varchar(60) DEFAULT NULL,
  `USO` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT INTO `biblioteca` VALUES (1,'J05AF06','Abacavir','Sólido oral ','300 mg','(p)',NULL,'O','En general'),(2,'J05AF06','Abacavir','Líquido oral','10 mg/ml','(p)',NULL,'O','En general'),(3,'S01EC01','Acetazolamida','Sólido oral','250 mg','E (p)',NULL,'O','En general'),(4,'R05CB01','Acetilcisteína','Líquido para inhalación','300 mg/3 ml','E',NULL,'I','En general'),(5,'V03AB23','Acetilcisteína','Líquido parenteral','100 mg/ml ','E (p)',NULL,'O','Antídotos'),(6,'J05AB01 ','Aciclovir','Líquido oral','200 mg/5 ml',NULL,NULL,'O','En general'),(7,'J05AB01 ','Aciclovir','Sólido oral ','200 mg',NULL,NULL,'O','En general'),(8,'J05AB01 ','Aciclovir','Sólido oral ','400 mg',NULL,NULL,'O','En general'),(9,'J05AB01 ','Aciclovir','Sólido oral ','800 mg',NULL,NULL,'O','En general'),(10,'J05AB01 ','Aciclovir','Sólido parenteral','250 mg','HE',NULL,'P','En general'),(11,'S01AD03','Aciclovir','Semisólido oftálmico','3 %','E',NULL,'Oc','En general'),(12,'B01AC06','Ácido acetil salicílico','Sólido oral','100 mg',NULL,NULL,'O','En general'),(13,'N02BA01','Ácido acetil salicílico','Sólido oral','500 mg',NULL,NULL,'O','En general'),(14,'M05BA04','Ácido alendrónico (Alendronato sódico)','Sólido oral ','70 mg',NULL,NULL,'O','En general'),(15,'J04AA01','Ácido aminosalicílico (Ácido paraaminosalicílico)','Sólido oral','800 mg','(p)',NULL,'O','En general'),(16,'A11GA01','Ácido ascórbico (Vitamina C)','Líquido parenteral','100 mg/ml',NULL,NULL,'P','En general'),(17,'B03BB01','Ácido fólico','Sólido oral','1 mg',NULL,NULL,'O','En general'),(18,'B03BB01','Ácido fólico','Tableta ','5 mg',NULL,NULL,'O','En general'),(19,'D06AX01','Ácido fusídico','Semisólido cutáneo','2 %',NULL,NULL,'T','En general'),(20,'B02AA02','Ácido tranexámico','Líquido parenteral','100 mg/ml','HE',NULL,'P','En general'),(21,'B02AA02','Ácido tranexámico','Sólido oral','250 mg','E',NULL,'O','En general'),(22,'B02AA02','Ácido tranexámico','Sólido oral','500 mg','E',NULL,'O','En general'),(23,'N03AG01','Ácido valpróico (Sal sódica)','Líquido oral','200 mg/ml',NULL,NULL,'O','En general'),(24,'N03AG01','Ácido valpróico (Sal sódica)','Líquido oral','375 mg/ml',NULL,NULL,'O','En general'),(25,'N03AG01','Ácido valpróico (Sal sódica)','Sólido oral','500 mg','(p)',NULL,'O','En general'),(26,'N03AG01','Ácido valpróico (Sal sódica)','Líquido oral','250 mg/5 ml','(p)',NULL,'O','En general'),(27,'M05BA08','Ácido zolendrónico','Líquido parenteral o sólido parenteral','4 mg','E',NULL,'P','Catastróficas'),(28,'D10AD03','Adapaleno','Semisólido cutáneo','0,1 %','E',NULL,'T','En general'),(29,'C01EB10','Adenosina','Líquido parenteral','3 mg/ml','HE',NULL,'P','En general'),(30,'B05AA06','Agentes gelatinas ','Líquido parenteral','3,5 %','H',NULL,'P','En general'),(31,'B05AA06','Agentes gelatinas ','Líquido parenteral','4 %','H',NULL,'P','En general'),(32,'B05AA06','Agentes gelatinas ','Líquido parenteral','5,5 %','H',NULL,'P','En general'),(33,'V07AB','Agua para inyección','Líquido parenteral','250 ml',NULL,NULL,'P','En general'),(34,'V07AB','Agua para inyección','Líquido parenteral','2 ml',NULL,NULL,'P','En general'),(35,'V07AB','Agua para inyección','Líquido parenteral','3 ml',NULL,NULL,'P','En general'),(36,'V07AB','Agua para inyección','Líquido parenteral','5 ml',NULL,NULL,'P','En general'),(37,'V07AB','Agua para inyección','Líquido parenteral','10 ml',NULL,NULL,'P','En general'),(38,'V07AB','Agua para inyección','Líquido parenteral','3000 ml',NULL,NULL,'P','En general'),(39,'P02CA03','Albendazol','Sólido oral','400 mg',NULL,NULL,'O','En general'),(40,'P02CA03','Albendazol','Líquido oral','100 mg/5 ml',NULL,NULL,'O','En general'),(41,'M04AA01','Alopurinol','Sólido oral ','100 mg',NULL,NULL,'O','En general'),(42,'M04AA01','Alopurinol','Sólido oral ','300 mg',NULL,NULL,'O','En general'),(43,'N05BA12','Alprazolam','Sólido oral','0,50 mg',NULL,NULL,'O','En general'),(44,'N05BA12','Alprazolam','Sólido oral','0,25 mg',NULL,NULL,'O','En general'),(45,'D05AA01','Alquitrán de hulla','Líquido cutáneo','5 %',NULL,NULL,'T','En general'),(46,'J02AA01','Amfotericina B ','Sólido parenteral','50 mg','HE(p)',NULL,'P','En general'),(47,'V03AF05','Amifostina','Sólido parenteral','500 mg','E (p)',NULL,'P','Catastróficas'),(48,'J01GB06','Amikacina','Líquido parenteral','50 mg/ml',NULL,NULL,'P','En general'),(49,'J01GB06','Amikacina','Líquido parenteral','250 mg/ml',NULL,NULL,'P','En general'),(50,'B05BA01','Aminoácidos','Líquido parenteral','5 %','HE',NULL,'P','En general'),(51,'B05BA01','Aminoácidos','Líquido parenteral','8,5 %','HE',NULL,'P','En general'),(52,'B05BA01','Aminoácidos','Líquido parenteral','10 %','HE',NULL,'P','En general'),(53,'B05BA01','Aminoácidos','Líquido parenteral','15 %','HE',NULL,'P','En general'),(54,'R03DA05','Aminofilina','Líquido parenteral','25 mg/ml','H',NULL,'P','En general'),(55,'C01BD01','Amiodarona','Sólido oral','200 mg',NULL,NULL,'O','En general'),(56,'C01BD01','Amiodarona','Líquido parenteral','50 mg/ml','HE',NULL,'P','En general'),(57,'N06AA09','Amitriptilina','Sólido oral','10 mg','(p)',NULL,'O','En general'),(58,'N06AA09','Amitriptilina','Sólido oral','25 mg','(p)',NULL,'O','En general'),(59,'C08CA01','Amlodipina','Sólido oral ','5 mg',NULL,NULL,'O','En general'),(60,'C08CA01','Amlodipina','Sólido oral ','10 mg',NULL,NULL,'O','En general'),(61,'J01CA04','Amoxicilina','Sólido oral (polvo)','100 mg/ml',NULL,NULL,'O','En general'),(62,'J01CA04','Amoxicilina','Sólido oral ','500 mg ',NULL,NULL,'O','En general'),(63,'J01CA04','Amoxicilina','Sólido oral (polvo)','250 mg/5 ml',NULL,NULL,'O','En general'),(64,'J01CR02','Amoxicilina + Ácido clavulánico','Sólido oral ','500 mg + 125 mg',NULL,NULL,'O','En general'),(65,'J01CR02','Amoxicilina + Ácido clavulánico','Sólido oral  (polvo)','(125 mg + 31,25 mg)/5 ml',NULL,NULL,'O','En general'),(66,'J01CR02','Amoxicilina + Ácido clavulánico','Sólido oral  (polvo)','(250 mg + 62,5 mg)/5 ml',NULL,NULL,'O','En general'),(67,'J01CR02','Amoxicilina + Ácido clavulánico','Sólido parenteral','1 000 mg + 200 mg','H',NULL,'P','En general'),(68,'J01CA01','Ampicilina','Sólido parenteral','500 mg',NULL,NULL,'P','En general'),(69,'J01CA01','Ampicilina','Sólido parenteral','1 000 mg',NULL,NULL,'P','En general'),(70,'J01CR01','Ampicilina + Sulbactam','Sólido parenteral','1 000 mg + 500 mg','H',NULL,'P','En general'),(71,'S01HA','Anéstesico local oftálmico','Líquido oftálmico',NULL,'E (p)',NULL,'Oc','En general'),(72,'P01BF01','Artemeter + lumefantrina','Sólido oral','20 mg + 120 mg',NULL,NULL,'O','En general'),(73,'L01XX02','Asparaginasa','Sólido parenteral','10 000 UI','HE(p)',NULL,'P','Catastróficas'),(74,'J05AE08','Atazanavir','Sólido oral ','150 mg','(p)',NULL,'O','En general'),(75,'J05AE08','Atazanavir','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(76,'C07AB03','Atenolol','Sólido oral ','50 mg',NULL,NULL,'O','En general'),(77,'C07AB03','Atenolol','Sólido oral ','100 mg',NULL,NULL,'O','En general'),(78,'A03BA01','Atropina','Líquido parenteral','1 mg/ml',NULL,NULL,'P','En general'),(79,'A03BA01','Atropina','Líquido parenteral','1mg/ml',NULL,NULL,'P','ANTIDOTO'),(80,'S01FA01','Atropina','Líquido oftálmico','0,5 %','E (p)',NULL,'Oc','En general'),(81,'S01FA01','Atropina','Líquido oftálmico','1 %','E (p)',NULL,'Oc','En general'),(82,'L04AX01','Azatioprina','Sólido parenteral','100 mg','HE(p)',NULL,'P','Catastróficas'),(83,'L04AX01','Azatioprina','Sólido oral ','50 mg','E (p)',NULL,'O','Catastróficas'),(84,'J01FA10','Azitromicina','Sólido oral ','250 mg',NULL,NULL,'O','En general'),(85,'J01FA10','Azitromicina','Sólido oral ','500 mg',NULL,NULL,'O','En general'),(86,'J01FA10','Azitromicina','Sólido oral  (polvo)','200 mg/5 ml ',NULL,NULL,'O','En general'),(87,'L04AC02','Basiliximab','Sólido parenteral','10 mg','HE(p)',NULL,'P','Catastróficas'),(88,'L04AC02','Basiliximab','Sólido parenteral','20 mg','HE(p)',NULL,'P','Catastróficas'),(89,'R03BA01','Beclometasona','Líquido para inhalación','50 mcg/dosis','E',NULL,'I','En general'),(90,'R03BA01','Beclometasona','Líquido para inhalación','250 mcg/dosis','E',NULL,'I','En general'),(91,'J01CE01','Bencilpenicilina (Penicilina G Cristalina)','Sólido parenteral','1 000 000 UI',NULL,NULL,'P','En general'),(92,'J01CE01','Bencilpenicilina (Penicilina G Cristalina)','Sólido parenteral','5 000 000 UI',NULL,NULL,'P','En general'),(93,'J01CE08','Bencilpenicilina benzatínica (Penicilina G benzatínica)','Sólido parenteral','600 000 UI',NULL,NULL,'P','En general'),(94,'J01CE08','Bencilpenicilina benzatínica (Penicilina G benzatínica)','Sólido parenteral','1 200 000 UI',NULL,NULL,'P','En general'),(95,'J01CE08','Bencilpenicilina benzatínica (Penicilina G benzatínica)','Sólido parenteral','2 400 000 UI',NULL,NULL,'P','En general'),(96,'P01CA02','Benznidazol','Sólido oral','50 mg','(p)',NULL,'O','En general'),(97,'P01CA02','Benznidazol','Sólido oral','100 mg','(p)',NULL,'O','En general'),(98,'D07AC01','Betametasona','Semisólido cutáneo','0,05 %','E',NULL,'T','En general'),(99,'D07AC01','Betametasona','Semisólido cutáneo','0,1 %','E',NULL,'T','En general'),(100,'D07AC01','Betametasona','líquido cutáneo','0,05 %','E',NULL,'T','En general'),(101,'D07AC01','Betametasona','líquido cutáneo','0,1 %','E',NULL,'T','En general'),(102,'H02AB01','Betametasona','Líquido parenteral','4 mg/ml',NULL,NULL,'P','En general'),(103,'L01XC07','Bevacizumab','Líquido parenteral','25 mg/ml','HE (p)',NULL,'P','Especiales bajo protocolo'),(104,'B05XA02','Bicarbonato de sodio','Líquido parenteral','1 mEq/ml (8,4%)',NULL,NULL,'P','En general'),(105,'N04AA02','Biperideno','Sólido oral','2 mg','(p)',NULL,'O','En general'),(106,'N04AA02','Biperideno','Sólido oral','4 mg','(p)',NULL,'O','En general'),(107,'N04AA02','Biperideno','Líquido parenteral','5 mg/ml','(p)',NULL,'P','En general'),(108,'L01DC01','Bleomicina','Sólido parenteral','15 UI','HE(p)',NULL,'P','Catastróficas'),(109,'N01BB01','Bupivacaína (sin epinefrina)','Líquido parenteral','0,5 %','E (p)',NULL,'P','En general'),(110,'N01BB01','Bupivacaína (sin epinefrina)','Líquido parenteral','0,75 %','E (p)',NULL,'P','En general'),(111,'N01BB51','Bupivacaína hiperbárica','Líquido parenteral','0,5 %','HE',NULL,'P','En general'),(112,'N01BB51','Bupivacaína hiperbárica','Líquido parenteral','0,75 %','HE',NULL,'P','En general'),(113,'N02AE01','Buprenorfina','Sólido cutanéo \n(Parche transdérmico)','20 mg','(p)',NULL,'T','En general'),(114,'N02AE01','Buprenorfina','Sólido oral (Sublingual)','0,2 mg','(p)',NULL,'O','En general'),(115,'N02AE01','Buprenorfina','Líquido parenteral','0,3 mg/ml','(p)',NULL,'P','En general'),(116,'A03BB01','Butilescopolamina (N-butilbromuro de hioscina)','Líquido parenteral','20 mg/ml',NULL,NULL,'P','En general'),(117,'N04BC06','Cabergolina','Sólido oral','0,5 mg','E',NULL,'O','En general'),(118,'A12AA04','Calcio carbonato','Sólido oral','500 mg',NULL,NULL,'O','Especiales bajo protocolo'),(119,'A12AA03','Calcio gluconato','Líquido parenteral','10 %',NULL,NULL,'P','En general'),(120,'A12AA03','Calcio gluconato','Líquido parenteral','10 %',NULL,NULL,'P','Antídotos'),(121,'D05AX52','Calcipotriol + Betametasona dipropionato','Semisólido cutáneo','(50 mcg + 0,5 mg)/g','E',NULL,'T','En general'),(122,'A11CC04','Calcitriol','Sólido oral','0,5 mcg','E',NULL,'O','Catastróficas'),(123,'L01BC06','Capecitabina','Sólido oral ','500 mg','E (p)',NULL,'O','Catastróficas'),(124,'J04AB30','Capreomicina','Sólido parenteral','1 000 mg','(p)',NULL,'P','En general'),(125,'N03AF01','Carbamazepina','Sólido oral','200 mg','(p)',NULL,'O','En general'),(126,'N03AF01','Carbamazepina','Sólido oral \n(Liberación controlada)','400 mg','(p)',NULL,'O','En general'),(127,'N03AF01','Carbamazepina','Líquido oral','100 mg/5 ml','(p)',NULL,'O','En general'),(128,'B05BA03','Carbohidratos (Dextrosa en agua)','Líquido parenteral','10 %','H',NULL,'P','En general'),(129,'B05BA03','Carbohidratos (Dextrosa en agua)','Líquido parenteral','50 %','H',NULL,'P','En general'),(130,'B05BA03','Carbohidratos (Dextrosa en agua)','Líquido parenteral','5 %',NULL,NULL,'P','En general'),(131,'A07BA01','Carbón activado','Sólido oral',NULL,NULL,NULL,'O','Antídotos'),(132,'L01XA02','Carboplatino','Líquido parenteral','10 mg/ml','HE(p)',NULL,'P','Catastróficas'),(133,'L01XA02','Carboplatino','Sólido parenteral','150 mg','HE(p)',NULL,'P','Catastróficas'),(134,'L01XA02','Carboplatino','Sólido parenteral','450 mg','HE(p)',NULL,'P','Catastróficas'),(135,'C07AG02','Carvedilol','Sólido oral ','6,25 mg',NULL,NULL,'O','En general'),(136,'C07AG02','Carvedilol','Sólido oral ','12,5 mg',NULL,NULL,'O','En general'),(137,'C07AG02','Carvedilol','Sólido oral ','25 mg',NULL,NULL,'O','En general'),(138,'J02AX04','Caspofungina','Sólido parenteral','50 mg','HE(p)',NULL,'P','Especiales bajo protocolo'),(139,'J02AX04','Caspofungina','Sólido parenteral','70 mg','HE(p)',NULL,'P','Especiales bajo protocolo'),(140,'J01DB01','Cefalexina','Sólido oral ','500 mg',NULL,NULL,'O','En general'),(141,'J01DB01','Cefalexina','Sólido oral ','250 mg/5 ml',NULL,NULL,'O','En general'),(142,'J01DB04','Cefazolina','Sólido parenteral','1 000 mg','H',NULL,'P','En general'),(143,'J01DE01','Cefepima','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','En general'),(144,'J01DD02','Ceftazidima','Sólido parenteral','500 mg','HE(p)',NULL,'P','En general'),(145,'J01DD02','Ceftazidima','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','En general'),(146,'J01DD04','Ceftriaxona','Sólido parenteral','500 mg','HE(p)',NULL,'P','En general'),(147,'J01DD04','Ceftriaxona','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','En general'),(148,'L01AA01','Ciclofosfamida','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','Catastróficas'),(149,'L01AA01','Ciclofosfamida','Sólido oral ','50 mg','E(p)',NULL,'O','Catastróficas'),(150,'L01AA01','Ciclofosfamida','Sólido parenteral','500 mg',NULL,NULL,'P','Antídotos'),(151,'L01AA01','Ciclofosfamida','Sólido parenteral','500 mg','HE(p)',NULL,'P','Catastróficas'),(152,'J04AB01','Cicloserina','Sólido oral ','250 mg','(p)',NULL,'O','En general'),(153,'L04AD01','Ciclosporina','Líquido Oral','100 mg/ml','E',NULL,'O','Catastróficas'),(154,'L04AD01','Ciclosporina','Líquido parenteral','50 mg/ml','HE',NULL,'P','Catastróficas'),(155,'L04AD01','Ciclosporina','Sólido oral ','25 mg','E',NULL,'O','Catastróficas'),(156,'L04AD01','Ciclosporina','Sólido oral ','50 mg','E',NULL,'O','Catastróficas'),(157,'L04AD01','Ciclosporina','Sólido oral ','100 mg','E',NULL,'O','Catastróficas'),(158,'S01AX13','Ciprofloxacina','Líquido oftálmico','0,3 %',NULL,NULL,'Oc','En general'),(159,'J01MA02','Ciprofloxacina','Sólido oral ','500 mg ',NULL,NULL,'O','En general'),(160,'J01MA02','Ciprofloxacina','Líquido parenteral','2 mg/ml','HE',NULL,'P','En general'),(161,'J01MA02','Ciprofloxacina','Líquido parenteral','10 mg/ml','HE',NULL,'P','En general'),(162,'J01MA02','Ciprofloxacina','Líquido parenteral','20 mg/ml','HE',NULL,'P','En general'),(163,'L01XA01','Cisplatino','Líquido parenteral','0,5 mg/ml','HE(p)',NULL,'P','Catastróficas'),(164,'L01XA01','Cisplatino','Líquido parenteral','1 mg/ml','HE(p)',NULL,'P','Catastróficas'),(165,'L01XA01','Cisplatino','Sólido parenteral','10 mg','HE(p)',NULL,'P','Catastróficas'),(166,'L01XA01','Cisplatino','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(167,'L01BC01','Citarabina','Sólido parenteral','100 mg','HE(p)',NULL,'P','Catastróficas'),(168,'L01BC01','Citarabina','Sólido parenteral','500 mg','HE(p)',NULL,'P','Catastróficas'),(169,'L01BC01','Citarabina','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','Catastróficas'),(170,'J01FA09','Claritromicina','Sólido oral ','500 mg',NULL,NULL,'O','En general'),(171,'J01FA09','Claritromicina','Sólido oral  (polvo)','125 mg/5 ml',NULL,NULL,'O','En general'),(172,'J01FA09','Claritromicina','Sólido oral  (polvo)','250 mg/5 ml',NULL,NULL,'O','En general'),(173,'J01FA09','Claritromicina','Sólido parenteral','500 mg','HE(p)',NULL,'P','En general'),(174,'J01FF01','Clindamicina','Sólido oral ','300 mg',NULL,NULL,'O','En general'),(175,'J01FF01','Clindamicina','Líquido parenteral','150 mg/ml','HE (p)',NULL,'P','En general'),(176,'J04BA01','Clofazimina','Sólido oral ','100 mg','E(p)',NULL,'O','En general'),(177,'G03GB02','Clomifeno','Sólido oral ','50 mg','E',NULL,'O','En general'),(178,'N03AE01','Clonazepam','Sólido oral','0,5 mg','(p)',NULL,'O','En general'),(179,'N03AE01','Clonazepam','Sólido oral','1 mg','(p)',NULL,'O','En general'),(180,'N03AE01','Clonazepam','Sólido oral','2 mg','(p)',NULL,'O','En general'),(181,'N03AE01','Clonazepam','Líquido oral','2,5 mg/ml','(p)',NULL,'O','En general'),(182,'B01AC04','Clopidogrel','Sólido oral','75 mg','E',NULL,'O','En general'),(183,'B01AC04','Clopidogrel','Sólido oral','300 mg','E',NULL,'O','En general'),(184,'L01AA02','Clorambucilo','Sólido oral ','2 mg','E(p)',NULL,'O','Catastróficas'),(185,'S01AA01','Cloranfenicol','Líquido oftálmico','0,25 %',NULL,NULL,'Oc','En general'),(186,'S01AA01','Cloranfenicol','Líquido oftálmico','0,5 %',NULL,NULL,'Oc','En general'),(187,'S01AA01','Cloranfenicol','Semisólido oftálmico','1 %',NULL,NULL,'Oc','En general'),(188,'P01BA01','Cloroquina','Sólido oral','250 mg',NULL,NULL,'O','En general'),(189,'P01BA01','Cloroquina','Líquido parenteral','40 mg/ml','H',NULL,'P','En general'),(190,'N05AA01','Clorpromazina','Líquido parenteral','25 mg/2 ml','E',NULL,'P','En general'),(191,'N05AA01','Clorpromazina','Sólido oral','25 mg','E',NULL,'O','En general'),(192,'N05AA01','Clorpromazina','Sólido oral','100 mg','E',NULL,'O','En general'),(193,'C03BA04','Clortalidona','Sólido oral ','25 mg',NULL,NULL,'O','En general'),(194,'C03BA04','Clortalidona','Sólido oral ','50 mg',NULL,NULL,'O','En general'),(195,'B05XA01','Cloruro de potasio','Líquido parenteral','2 mEq/ml (20%)',NULL,NULL,'P','En general'),(196,'B05CB01','Cloruro de sodio','Líquido parenteral','0,9 %',NULL,NULL,'P','En general'),(197,'B05XA03','Cloruro de sodio','Líquido parenteral','3,4 mEq/ml (20%)',NULL,NULL,'P','En general'),(198,'D01AC01','Clotrimazol','Semisólido cutáneo','1 %',NULL,NULL,'T','En general'),(199,'D01AC01','Clotrimazol','Líquido cutáneo','1 %',NULL,NULL,'T','En general'),(200,'G01AF02','Clotrimazol','Semisólido vaginal','1 %',NULL,NULL,'V','En general'),(201,'G01AF02','Clotrimazol','Semisólido vaginal','2 %',NULL,NULL,'V','En general'),(202,'G01AF02','Clotrimazol','Sólido vaginal ','100 mg',NULL,NULL,'V','En general'),(203,'G01AF02','Clotrimazol','Sólido vaginal ','200 mg',NULL,NULL,'V','En general'),(204,'G01AF02','Clotrimazol','Sólido vaginal ','500 mg',NULL,NULL,'V','En general'),(205,'R02DA04','Codeína','Sólido oral','10 mg','(p)',NULL,'O','En general'),(206,'R02DA04','Codeína','Sólido oral','30 mg','(p)',NULL,'O','En general'),(207,'R02DA04','Codeína','Líquido oral','10 mg/5 ml','(p)',NULL,'O','En general'),(208,'M04AC01','Colchicina','Sólido oral ','0,5 mg',NULL,NULL,'O','En general'),(209,'M04AC01','Colchicina','Sólido oral ','0.5 mg.',NULL,NULL,'O','Antídotos'),(210,'J01XB01','Colistina','Sólido parenteral','100 mg',NULL,NULL,'P','Especiales bajo protocolo'),(211,'B05CB10','Combinaciones (Lactato de Ringer)','Líquido parenteral',NULL,NULL,NULL,'P','En general'),(212,'A11JA','Combinaciones de vitaminas','Sólido parenteral',NULL,NULL,NULL,'P','En general'),(213,'A11DB','Complejo B: *\n•Tiamina (Vitamina B1)\n•Piridoxina (Vitamina B6) \n•Cianocobalamina (Vitamina B12)','Sólido oral','? 4 \n?  1 mg\n?  1 mcg',NULL,NULL,'O','En general'),(214,'A11DB','Complejo B: *\n•Tiamina (Vitamina B1)\n•Piridoxina (Vitamina B6) \n•Cianocobalamina (Vitamina B12)','Líquido parenteral','\n• 100 mg\n• 100 mg\n• 1 mg',NULL,NULL,'P/IM','En general'),(215,'A11DB','Complejo B: *\n•Tiamina (Vitamina B1)\n•Piridoxina (Vitamina B6) \n•Cianocobalamina (Vitamina B12)','Polvo parenteral','\n• 200 mg\n• 50 mg\n• 0,030 mg',NULL,NULL,'P/IV','En general'),(216,'J01EE01','Cotrimoxazol (Sulfametoxazol + Trimetoprima)','Sólido oral ','400 mg + 80 mg  ',NULL,NULL,'O','En general'),(217,'J01EE01','Cotrimoxazol (Sulfametoxazol + Trimetoprima)','Sólido oral ','800 mg + 160 mg  ',NULL,NULL,'O','En general'),(218,'J01EE01','Cotrimoxazol (Sulfametoxazol + Trimetoprima)','Liquido oral','(200 mg + 40 mg)/5 ml',NULL,NULL,'O','En general'),(219,'L01AX04','Dacarbazina','Sólido parenteral','100 mg','HE(p)',NULL,'P','Catastróficas'),(220,'L01AX04','Dacarbazina','Sólido parenteral','200 mg','HE(p)',NULL,'P','Catastróficas'),(221,'L01DA01','Dactinomicina','Sólido parenteral','0,5 mg','HE(p)',NULL,'P','Catastróficas'),(222,'M03CA01','Dantroleno','Sólido parenteral','20 mg','HE (p)',NULL,'P','Antídotos'),(223,'J04BA02','Dapsona','Sólido oral ','100 mg','E(p)',NULL,'O','En general'),(224,'J05AE10','Darunavir','Sólido oral ','600 mg','(p)',NULL,'O','En general'),(225,'J05AE10','Darunavir','Sólido oral ','400 mg','(p)',NULL,'O','En general'),(226,'L01DB02','Daunorubicina','Líquido parenteral','2 mg/ml  ','HE(p)',NULL,'P','Catastróficas'),(227,'L01DB02','Daunorubicina','Sólido parenteral','20 mg','HE(p)',NULL,'P','Catastróficas'),(228,'V03AC03','Deferasirox','Sólido oral','125 mg','E (p)',NULL,'O','Antídotos'),(229,'V03AC03','Deferasirox','Sólido oral','250 mg','E (p)',NULL,'O','Antídotos'),(230,'V03AC03','Deferasirox','Sólido oral','500 mg','E (p)',NULL,'O','Antídotos'),(231,'H01BA02','Desmopresina','Líquido parenteral','15 mcg/ml','HE',NULL,'P','En general'),(232,'H01BA02','Desmopresina','Líquido para inhalación','10 mcg/0,1 ml',NULL,NULL,'N','En general'),(233,'H02AB02','Dexametasona','Sólido oral ','4 mg',NULL,NULL,'O','En general'),(234,'H02AB02','Dexametasona','Sólido oral ','8 mg',NULL,NULL,'O','En general'),(235,'H02AB02','Dexametasona','Líquido parenteral','4 mg/ml','H',NULL,'P','En general'),(236,'S01BA01','Dexametasona','Líquido oftálmico','1 mg/ml',NULL,NULL,'Oc','En general'),(237,'S01CA01','Dexametasona + Tobramicina ','Líquido oftálmico','0,1 % + 0,3 %',NULL,NULL,'Oc','En general'),(238,'S01CA01','Dexametasona + Tobramicina ','Semisólido oftálmico','0,1 % + 0,3 %',NULL,NULL,'Oc','En general'),(239,'N05BA01','Diazepam','Sólido oral','5 mg',NULL,NULL,'O','En general'),(240,'N05BA01','Diazepam','Sólido oral','10 mg',NULL,NULL,'O','En general'),(241,'N05BA01','Diazepam','Líquido oral','2 mg/5 ml',NULL,NULL,'O','En general'),(242,'N05BA01','Diazepam','Líquido parenteral','5 mg/ml',NULL,NULL,'P','En general'),(243,'M01AB05','Diclofenaco','Sólido oral ','50 mg ',NULL,NULL,'O','En general'),(244,'M01AB05','Diclofenaco','Líquido parenteral','25 mg/ml',NULL,NULL,'P','En general'),(245,'S01BC03','Diclofenaco','Líquido oftálmico','0,1 %',NULL,NULL,'Oc','En general'),(246,'J01CF01','Dicloxacilina','Sólido oral ','500 mg',NULL,NULL,'O','En general'),(247,'J01CF01','Dicloxacilina','Sólido oral  (polvo)','125 mg/5 ml',NULL,NULL,'O','En general'),(248,'J01CF01','Dicloxacilina','Sólido oral  (polvo)','250 mg/5 ml',NULL,NULL,'O','En general'),(249,'J05AF02','Didanosina','Sólido oral ','100 mg','(p)',NULL,'O','En general'),(250,'R06AA02','Difenhidramina','Sólido oral','50 mg',NULL,NULL,'O','En general'),(251,'R06AA02','Difenhidramina','Líquido oral','10 mg/5 ml',NULL,NULL,'O','En general'),(252,'R06AA02','Difenhidramina','Líquido parenteral','50 mg/ml',NULL,NULL,'P','En general'),(253,'J06AA01','Diftérica antitoxina','Líquido parenteral','10 000 UI',NULL,NULL,'P','En general'),(254,'C01AA05','Digoxina','Sólido oral','62,5 mcg',NULL,NULL,'O','En general'),(255,'C01AA05','Digoxina','Sólido oral','250 mcg',NULL,NULL,'O','En general'),(256,'C01AA05','Digoxina','Solución oral','50 mcg/ml',NULL,NULL,'O','En general'),(257,'C01AA05','Digoxina','Líquido parenteral','0,25 mg/ml ','E',NULL,'P','En general'),(258,'C08DB01','Diltiazem','Sólido parenteral','25 mg','HE',NULL,'P','En general'),(259,'C08DB01','Diltiazem','Sólido oral ','60 mg ','E',NULL,'O','En general'),(260,'C08DB01','Diltiazem','Sólido oral (liberación prolongada)','90 mg','E',NULL,'O','En general'),(261,'C08DB01','Diltiazem','Sólido oral (liberación prolongada)','120 mg','E',NULL,'O','En general'),(262,'N07CA','Dimenhidrinato','Sólido oral','50 mg',NULL,NULL,'O','En general'),(263,'V03AB09','Dimercaprol','Líquido parenteral','100 mg/ml','(p)',NULL,'P','Antídotos'),(264,'C01DA08','Dinitrato de isosorbida','Sólido oral sublingual','5 mg',NULL,NULL,'O','En general'),(265,'N07BB01','Disulfiram','Sólido oral','500 mg','E (p)',NULL,'O','En general'),(266,'C01CA07','Dobutamina','Líquido parenteral','50 mg/ml','HE',NULL,'P','En general'),(267,'L01CD02','Docetaxel','Líquido parenteral','20 mg/0,5 ml','HE(p)',NULL,'P','Catastróficas'),(268,'L01CD02','Docetaxel','Líquido parenteral','40 mg/ml','HE(p)',NULL,'P','Catastróficas'),(269,'C01CA04','Dopamina','Líquido parenteral','40 mg/ml','HE',NULL,'P','En general'),(270,'C01CA04','Dopamina','Líquido parenteral','50 mg/ml','HE',NULL,'P','En general'),(271,'R05CB13','Dornasa alfa (desoxirribonucleasa)','Líquido para inhalación','2,5 mg/2,5 ml \n(2 500 UI)',NULL,NULL,'I','Especiales bajo protocolo'),(272,'C02CA04','Doxazosina ','Sólido oral ','2 mg','E',NULL,'O','En general'),(273,'C02CA04','Doxazosina ','Sólido oral ','4 mg','E',NULL,'O','En general'),(274,'J01AA02','Doxiciclina','Sólido oral ','100 mg ',NULL,NULL,'O','En general'),(275,'L01DB01','Doxorubicina','Sólido parenteral','10 mg','HE(p)',NULL,'P','Catastróficas'),(276,'L01DB01','Doxorubicina','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(277,'J05AG03','Efavirenz','Sólido oral ','50 mg','(p)',NULL,'O','En general'),(278,'J05AG03','Efavirenz','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(279,'J05AG03','Efavirenz','Sólido oral ','600 mg','(p)',NULL,'O','En general'),(280,'J05AG03','Efavirenz','Líquido oral','30 mg/ml','(p)',NULL,'O','En general'),(281,'C01CA26','Efedrina','Líquido parenteral','60 mg/ml','H',NULL,'P','En general'),(282,'B05BB02','Electrolitos con carbohidratos\n(Dextrosa en solución salina)','Líquido parenteral','5 % + 0,9 %',NULL,NULL,'P','En general'),(283,'J05AF09','Emtricitabina','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(284,'J05AF09','Emtricitabina','Líquido oral','10 mg/ml','(p)',NULL,'O','En general'),(285,'B05BA02','Emulsiones grasas (lípidos)','Líquido parenteral','10 %','HE',NULL,'P','En general'),(286,'B05BA02','Emulsiones grasas (lípidos)','Líquido parenteral','20 %','HE',NULL,'P','En general'),(287,'C09AA02','Enalapril','Sólido oral ','5 mg',NULL,NULL,'O','En general'),(288,'C09AA02','Enalapril','Sólido oral ','10 mg',NULL,NULL,'O','En general'),(289,'C09AA02','Enalapril','Sólido oral ','20 mg',NULL,NULL,'O','En general'),(290,'C09AA02','Enalapril','Líquido parenteral','1,25 mg/ml','HE',NULL,'P','En general'),(291,'B01AB05','Enoxaparina','Líquido parenteral','2 000 UI\n(20 mg)','E',NULL,'P','En general'),(292,'B01AB05','Enoxaparina','Líquido parenteral','4 000 UI\n(40 mg)','E',NULL,'P','En general'),(293,'B01AB05','Enoxaparina','Líquido parenteral','6 000 UI\n(60 mg)','E',NULL,'P','En general'),(294,'B01AB05','Enoxaparina','Líquido parenteral','8 000 UI\n(80 mg)','E',NULL,'P','En general'),(295,'B01AB05','Enoxaparina','Líquido parenteral','10 000 UI\n(100 mg)','E',NULL,'P','En general'),(296,'C01CA24','Epinefrina (adrenalina)','Líquido parenteral','1 mg/ml',NULL,NULL,'P','En general'),(297,'R03AA01','Epinefrina (adrenalina) racémica','Líquido para nebulización','22,5 mg/ml (2,25 %)','(p)',NULL,'I','En general'),(298,'L01DB03','Epirubicina','Líquido parenteral','2 mg/ml  ','HE(p)',NULL,'P','Catastróficas'),(299,'L01DB03','Epirubicina','Sólido parenteral','10 mg','HE(p)',NULL,'P','Catastróficas'),(300,'L01DB03','Epirubicina','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(301,'S01AA17','Eritromicina','Semisólido oftálmico','0,5 %',NULL,NULL,'Oc','En general'),(302,'J01FA01','Eritromicina','Sólido oral ','250 mg',NULL,NULL,'O','En general'),(303,'J01FA01','Eritromicina','Sólido oral ','500 mg',NULL,NULL,'O','En general'),(304,'J01FA01','Eritromicina','Sólido oral  (polvo)','200 mg/5 ml',NULL,NULL,'O','En general'),(305,'J01FA01','Eritromicina','Sólido oral  (polvo)','400 mg/5 ml',NULL,NULL,'O','En general'),(306,'B03XA01','Eritropoyetina ','Líquido o sólido parenteral','2 000 UI','E',NULL,'P','En general'),(307,'B03XA01','Eritropoyetina ','Líquido o sólido parenteral','4 000 UI','E',NULL,'P','En general'),(308,'B03XA01','Eritropoyetina ','Líquido o sólido parenteral','5 000 UI','E',NULL,'P','En general'),(309,'B03XA01','Eritropoyetina ','Líquido o sólido parenteral','10 000 UI','E',NULL,'P','En general'),(310,'J01FA02','Espiramicina','Sólido oral','3 000 000 UI','E(p)',NULL,'O','Especiales bajo protocolo'),(311,'C03DA01','Espironolactona','Sólido oral ','25 mg',NULL,NULL,'O','En general'),(312,'C03DA01','Espironolactona','Sólido oral ','100 mg',NULL,NULL,'O','En general'),(313,'G03CA03','Estradiol','Sólido oral ','1 mg','E',NULL,'O','En general'),(314,'G03AA05','Estradiol valerato + Noretisterona enantato','Líquido parenteral','(5 mg + 50 mg)/ml',NULL,NULL,'P','En general'),(315,'J01GA01','Estreptomicina','Sólido parenteral','1 000 mg',NULL,NULL,'P','En general'),(316,'B01AD01','Estreptoquinasa','Sólido parenteral','1 500 000 UI','HE (p)',NULL,'P','En general'),(317,'G03CA04','Estriol','Semisólido vaginal','1 mg/g  (0,1%)',NULL,NULL,'V','En general'),(318,'J04AK02','Etambutol','Sólido oral ','400 mg','(p)',NULL,'O','En general'),(319,'J04AM03','Etambutol + Isoniazida','Sólido oral ','400 mg + 150 mg','(p)',NULL,'O','En general'),(320,'L04AB01','Etanercept','Líquido parenteral','25 mg','HE(p)',NULL,'P','En general'),(321,'L04AB01','Etanercept','Líquido parenteral','50 mg','HE(p)',NULL,'P','En general'),(322,'J04AD03','Etionamida','Sólido oral ','250 mg','(p)',NULL,'O','En general'),(323,'J04AD03','Etionamida','Sólido oral ','500 mg','(p)',NULL,'O','En general'),(324,'L01CB01','Etopósido','Sólido oral ','50 mg','E (p)',NULL,'O','Catastróficas'),(325,'L01CB01','Etopósido','Líquido parenteral','20 mg/ml','HE(p)',NULL,'P','Catastróficas'),(326,'J05AG04','Etravirina','Sólido oral ','100 mg','(p)',NULL,'O','En general'),(327,'J05AG04','Etravirina','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(328,'L04AA18','Everolimus','Sólido oral ','0,50 mg','E (p)',NULL,'O','Catastróficas'),(329,'L04AA18','Everolimus','Sólido oral ','0,75 mg','E (p)',NULL,'O','Catastróficas'),(330,'L02BG06','Exemestano','Sólido oral ','25 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(331,'B02BD04','Factor IX ','Sólido parenteral','250 UI','E (p)',NULL,'P','General'),(332,'B02BD04','Factor IX ','Sólido parenteral','600 UI','E (p)',NULL,'P','En general'),(333,'B02BD04','Factor IX ','Sólido parenteral','1 200 UI','E (p)',NULL,'P','En general'),(334,'B02BD02','Factor VIII ','Sólido parenteral','250 UI','E (p)',NULL,'P','En general'),(335,'B02BD02','Factor VIII ','Sólido parenteral','500 UI','E (p)',NULL,'P','En general'),(336,'B02BD02','Factor VIII ','Sólido parenteral','1 000 UI','E (p)',NULL,'P','En general'),(337,'B02BD02','Factor VIII ','Sólido parenteral','1 500 UI','E (p)',NULL,'P','En general'),(338,'N03AB02','Fenitoína','Sólido oral','100 mg',NULL,NULL,'O','En general'),(339,'N03AB02','Fenitoína','Líquido oral','125 mg/5 ml',NULL,NULL,'O','En general'),(340,'N03AB02','Fenitoína','Líquido parenteral','50 mg/ml','(p)',NULL,'P','En general'),(341,'N03AA02','Fenobarbital','Sólido oral','100 mg',NULL,NULL,'O','En general'),(342,'N03AA02','Fenobarbital','Líquido oral','20 mg/5 ml',NULL,NULL,'O','En general'),(343,'N03AA02','Fenobarbital','Líquido parenteral','60 mg/ml','H (p)',NULL,'P','En general'),(344,'N01AH01','Fentanilo','Sólido cutáneo \n(Parche transdérmico)','4,2 mg (25mcg/hora)','HE (p)',NULL,'T','En general'),(345,'N01AH01','Fentanilo','Líquido parenteral','0,5 mg/10 ml','HE (p)',NULL,'P','En general'),(346,'B03AA07','Ferroso sulfato','Sólido oral','50 mg - 100 mg (equivalente a hierro elemental)',NULL,NULL,'O','En general'),(347,'B03AA07','Ferroso sulfato','Líquido oral','25 mg/ml (equivalente a hierro elemental)',NULL,NULL,'O','En general'),(348,'B03AA07','Ferroso sulfato','Líquido oral','25 - 50 mg/5 ml (equivalente a hierro elemental)',NULL,NULL,'O','En general'),(349,'L03AA02','Filgrastim','Líquido parenteral','300 mcg','HE(p)',NULL,'P','Catastróficas'),(350,'B02BA01','Fitomenadiona','Líquido parenteral','10 mg/ml',NULL,NULL,'P','En general'),(351,'J02AC01','Fluconazol','Sólido oral ','150 mg',NULL,NULL,'O','En general'),(352,'J02AC01','Fluconazol','Líquido parenteral','2 mg/ml','HE(p)',NULL,'P','En general'),(353,'L01BB05','Fludarabina','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(354,'H02AA02','Fludrocortisona','Sólido oral','0,1 mg','E(p)',NULL,'O','Especiales bajo protocolo'),(355,'V03AB25','Flumazenil','Líquido parenteral','0,1 mg/ml','(p)',NULL,'P','Antídotos'),(356,'S01BA07','Fluorometalona','Líquido oftálmico','0,1 %','E',NULL,'Oc','En general'),(357,'L01BC02','Fluoruracilo','Semisólido cutáneo','5 %','E(p)',NULL,'T','Catastróficas'),(358,'L01BC02','Fluoruracilo','Líquido parenteral','25 mg/ml','HE(p)',NULL,'P','Catastróficas'),(359,'L01BC02','Fluoruracilo','Líquido parenteral','50 mg/ml','HE(p)',NULL,'P','Catastróficas'),(360,'N06AB03','Fluoxetina','Sólido oral','20 mg','E (p)',NULL,'O','En general'),(361,'L02BB01','Flutamida','Sólido oral ','125 mg','E(p)',NULL,'O','Catastróficas'),(362,'L02BB01','Flutamida','Sólido oral ','250 mg','E(p)',NULL,'O','Catastróficas'),(363,'V03AF03','Folinato cálcico (Leucovorina)','Sólido oral','15 mg','E (p)',NULL,'O','Catastróficas'),(364,'V03AF03','Folinato cálcico (Leucovorina)','Líquido parenteral','10 mg/ml','E (p)',NULL,'P','Catastróficas'),(365,'V03AB34','Fomepizol','Líquido parenteral','1 g/ml','(p)',NULL,'P','Antídotos'),(366,'V06DB','Fórmulas para nutrición enteral','Sólido oral',NULL,'HE (p)',NULL,'O','En general'),(367,'V06DB','Fórmulas para nutrición enteral','líquido oral',NULL,'HE (p)',NULL,'O','En general'),(368,'R07AA02','Fosfolípidos naturales (Surfactante pulmonar)','Líquido intratraqueal','200 mg/8 ml','HE (p)',NULL,'IT','En general'),(369,'C03CA01','Furosemida','Sólido oral ','40 mg',NULL,NULL,'O','En general'),(370,'C03CA01','Furosemida','Líquido parenteral','10 mg/ml',NULL,NULL,'P','En general'),(371,'N03AX12','Gabapentina','Sólido oral','300 mg','(p)',NULL,'O','En general'),(372,'L01BC05','Gemcitabina','Sólido parenteral','200 mg','E (p)',NULL,'P','Catastróficas'),(373,'L01BC05','Gemcitabina','Sólido parenteral','1 000 mg','E (p)',NULL,'P','Catastróficas'),(374,'C10AB04','Gemfibrozilo','Sólido oral ','600 mg',NULL,NULL,'O','En general'),(375,'J01GB03','Gentamicina','Líquido parenteral','10 mg/ml',NULL,NULL,'P','En general'),(376,'J01GB03','Gentamicina','Líquido parenteral','20 mg/ml',NULL,NULL,'P','En general'),(377,'J01GB03','Gentamicina','Líquido parenteral','40 mg/ml',NULL,NULL,'P','En general'),(378,'J01GB03','Gentamicina','Líquido parenteral','80 mg/ml',NULL,NULL,'P','En general'),(379,'J01GB03','Gentamicina','Líquido parenteral','140 mg/ml',NULL,NULL,'P','En general'),(380,'A10BB01','Glibenclamida','Sólido oral','5 mg',NULL,NULL,'O','En general'),(381,'A06AG04','Glicerol','Sólido rectal','0,92 g - 3 g',NULL,NULL,'R','En general'),(382,'H04AA01','Glucagón','Sólido parenteral','1 mg/ml',NULL,NULL,'P','En general'),(383,'H04AA01','Glucagón','Sólido parenteral','1 mg/ml',NULL,NULL,'P','Antídotos'),(384,'D01BA01','Griseofulvina','Sólido oral ','125 mg','E',NULL,'O','En general'),(385,'D01BA01','Griseofulvina','Sólido oral ','250 mg','E',NULL,'O','En general'),(386,'D01BA01','Griseofulvina','Sólido oral ','500 mg','E',NULL,'O','En general'),(387,'N05AD01','Haloperidol','Sólido oral','5 mg','E',NULL,'O','En general'),(388,'N05AD01','Haloperidol','Sólido oral','10 mg','E',NULL,'O','En general'),(389,'N05AD01','Haloperidol','Líquido oral','2 mg/ml','E',NULL,'O','En general'),(390,'N05AD01','Haloperidol','Líquido parenteral','5 mg/ml',NULL,NULL,'P(IM)','En general'),(391,'N05AD01','Haloperidol decanoato','Líquido parenteral','50 mg/ml','E',NULL,'P','En general'),(392,'B01AB01','Heparina  ( no fraccionada )','Líquido parenteral','5 000 UI/ml','HE',NULL,'P','En general'),(393,'C02DB02','Hidralazina','Sólido oral ','50 mg',NULL,NULL,'O','En general'),(394,'C02DB02','Hidralazina','Líquido parenteral','20 mg/ml','HE',NULL,'P','En general'),(395,'N05CC01','Hidrato de cloral','Líquido oral','100 mg/ml','E',NULL,'O','En general'),(396,'H02AB09','Hidrocortisona','Sólido oral','5 mg',NULL,NULL,'O','Especiales bajo protocolo'),(397,'H02AB09','Hidrocortisona','Sólido oral','10 mg',NULL,NULL,'O','Especiales bajo protocolo'),(398,'D07AA02','Hidrocortisona','Semisólido cutáneo/ líquido cutáneo','0,5 %',NULL,NULL,'T','En general'),(399,'D07AA02','Hidrocortisona','Semisólido cutáneo/ líquido cutáneo','1 %',NULL,NULL,'T','En general'),(400,'H02AB09','Hidrocortisona, succinato sódico','Sólido parenteral','100 mg',NULL,NULL,'P','En general'),(401,'H02AB09','Hidrocortisona, succinato sódico','Sólido parenteral','500 mg',NULL,NULL,'P','En general'),(402,'N02AA03','Hidromorfona','Sólido oral','2,5 mg','(p)',NULL,'O','En general'),(403,'N02AA03','Hidromorfona','Sólido oral','5 mg','(p)',NULL,'O','En general'),(404,'N02AA03','Hidromorfona','Líquido parenteral','2 mg/ml ','(p)',NULL,'P','En general'),(405,'L01XX05','Hidroxicarbamida \n(Hidroxiurea)','Sólido oral ','500 mg','E(p)',NULL,'O','Catastróficas'),(406,'V03AB33','Hidroxocobalamina (Vitamina B12)','Líquido parenteral','1 mg/ml',NULL,NULL,'P','Antídotos'),(407,'B03AC02','Hierro sacaratado, oxido de','Líquido parenteral','100 mg','E',NULL,'P(IV)','En general'),(408,'B03AE04','Hierro, multivitaminas y minerales:\n•Hierro\n•Zinc\n•Vitamina A\n•Ácido fólico\n•Ácido ascórbico                 ','Sólido oral (Polvo)','\n• 12,5 mg\n• 5 mg\n• 300 mcg\n• 160 mcg\n• 30 mg',NULL,NULL,'O','En general'),(409,'M01AE01','Ibuprofeno','Sólido oral ','400 mg',NULL,NULL,'O','En general'),(410,'M01AE01','Ibuprofeno','Líquido oral','200 mg/5 ml',NULL,NULL,'O','En general'),(411,'L01DB06','Idarubicina','Líquido parenteral','1 mg/ml','HE(p)',NULL,'P','Catastróficas'),(412,'L01AA06','Ifosfamida','Sólido parenteral','1 g','HE(p)',NULL,'P','Catastróficas'),(413,'L01XE01','Imatinib','Sólido oral ','100 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(414,'L01XE01','Imatinib','Sólido oral ','400 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(415,'J01DH51','Imipenem + cilastatina','Sólido parenteral','500 mg + 500 mg','HE(p)',NULL,'P','En general'),(416,'L04AB02','Infliximab','Sólido parenteral','100 mg','HE(p)',NULL,'P','En general'),(417,'L04AA04','Inmuno globulina antitimocítica (Conejo)','Líquido parenteral','50 mg/ml','HE(p)',NULL,'P','Catastróficas'),(418,'J06BB01','Inmunoglobulina anti D','Líquido parenteral','200 mcg','E',NULL,'P','En general'),(419,'J06BB01','Inmunoglobulina anti D','Líquido parenteral','250 mcg','E',NULL,'P','En general'),(420,'J06BB01','Inmunoglobulina anti D','Líquido parenteral','300 mcg','E',NULL,'P','En general'),(421,'J06BB05','Inmunoglobulina antirrábica','Líquido parenteral','300 UI/ml',NULL,NULL,'P','En general'),(422,'J06BB05','Inmunoglobulina antirrábica','Líquido parenteral','1 500 UI/ml',NULL,NULL,'P','En general'),(423,'J06BB02','Inmunoglobulina antitetánica','Líquido parenteral/ sólido parenteral','200 UI',NULL,NULL,'P','En general'),(424,'J06BB02','Inmunoglobulina antitetánica','Líquido parenteral/ sólido parenteral','250 UI',NULL,NULL,'P','En general'),(425,'J06BB02','Inmunoglobulina antitetánica','Líquido parenteral/ sólido parenteral','500 UI',NULL,NULL,'P','En general'),(426,'J06BA02','Inmunoglobulina humana normal para administración intravascular','Líquido parenteral',NULL,NULL,NULL,'P(IV)','En general'),(427,'A10AB01','Insulina humana (acción rápida)','Líquido parenteral ','100 UI/ml',NULL,NULL,'P','En general'),(428,'A10AC01','Insulina humana NPH (acción intermedia)','Líquido parenteral ','100 UI/ml',NULL,NULL,'P','En general'),(429,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','3 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(430,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','5 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(431,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','10 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(432,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','15 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(433,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','25 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(434,'L03AB05','Interferón alfa 2b','Líquido parenteral/ sólido parenteral','30 000 000 UI','HE(p)',NULL,'SC','Catastróficas'),(435,'L03AB07','Interferón beta 1a','Líquido parenteral/ sólido parenteral','36 000 000 UI','HE (p)',NULL,'P','Catastróficas'),(436,'L03AB07','Interferón beta 1a','Líquido parenteral/ sólido parenteral','6 000 000 UI','HE (p)',NULL,'P','Catastróficas'),(437,'L03AB07','Interferón beta 1a','Líquido parenteral/ sólido parenteral','12 000 000 UI','HE (p)',NULL,'P','Catastróficas'),(438,'L03AB08','Interferón beta 1b','Líquido parenteral','8 000 000 UI','HE (p)',NULL,'P','Catastróficas'),(439,'R03BB01','Ipratropio bromuro','Líquido para inhalación','0,02 mg/dosis',NULL,NULL,'I ','En general'),(440,'R03BB01','Ipratropio bromuro','Líquido para nebulización','0,25 mg/ml','E',NULL,'I ','En general'),(441,'L01XX19','Irinotecan','Líquido parenteral','20 mg/ml','E(p)',NULL,'P','Catastróficas'),(442,'J04AC01','Isoniazida','Sólido oral ','100 mg','(p)',NULL,'O','En general'),(443,'J04AC01','Isoniazida','Sólido oral ','300 mg','(p)',NULL,'O','En general'),(444,'J02AC02','Itraconazol','Sólido oral ','100 mg','E',NULL,'O','En general'),(445,'J02AC02','Itraconazol','Líquido oral','10 mg/ml','E',NULL,'O','En general'),(446,'P02CF01','Ivermectina','Sólido oral','6 mg',NULL,NULL,'O','En general'),(447,'P02CF01','Ivermectina','Líquido oral','6 mg/ml',NULL,NULL,'O','En general'),(448,'M01AB15','Ketorolaco','Líquido parenteral','30 mg/ml',NULL,NULL,'P','En general'),(449,'A06AD11','Lactulosa','Solución oral','65 %',NULL,NULL,'O','En general'),(450,'S01XA20','Lágrimas artificiales y otros preparados inertes','Semisólido oftálmico',NULL,'E',NULL,'Oc','En general'),(451,'S01XA20','Lágrimas artificiales y otros preparados inertes','Líquido oftálmico',NULL,NULL,NULL,'Oc','En general'),(452,'J05AF05','Lamivudina','Sólido oral ','150 mg','(p)',NULL,'O','En general'),(453,'J05AF05','Lamivudina','Líquido oral','50 mg/5 ml','(p)',NULL,'O','En general'),(454,'J05AR02','Lamivudina + Abacavir','Sólido oral ','300 mg + 600 mg','(p)',NULL,'O','En general'),(455,'N03AX09','Lamotrigina','Sólido oral','25 mg','(p)',NULL,'O','En general'),(456,'N03AX09','Lamotrigina','Sólido oral','50 mg','(p)',NULL,'O','En general'),(457,'N03AX09','Lamotrigina','Sólido oral','100 mg','(p)',NULL,'O','En general'),(458,'S01EE01','Latanoprost','Líquido oftálmico','0,005 %','E (p)',NULL,'Oc','En general'),(459,'L02BG04','Letrozol','Sólido oral ','2,5 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(460,'L02AE02','Leuprolide','Líquido parenteral o sólido parenteral','3,75 mg','E(p)',NULL,'P','Catastróficas'),(461,'L02AE02','Leuprolide','Líquido parenteral o sólido parenteral','5 mg/ml','E(p)',NULL,'P','Catastróficas'),(462,'L02AE02','Leuprolide','Líquido parenteral o sólido parenteral','7,5 mg','E(p)',NULL,'P','Catastróficas'),(463,'L02AE02','Leuprolide','Líquido parenteral o sólido parenteral','11,25 mg','E(p)',NULL,'P','Catastróficas'),(464,'N04BA02','Levodopa + Carbidopa','Sólido oral','100 mg + 10 mg','E',NULL,'O','En general'),(465,'N04BA02','Levodopa + Carbidopa','Sólido oral','250 mg + 25 mg','E',NULL,'O','En general'),(466,'J01MA12','Levofloxacina','Sólido oral ','250 mg','E',NULL,'O','En general'),(467,'J01MA12','Levofloxacina','Sólido oral ','500 mg ','E',NULL,'O','En general'),(468,'J01MA12','Levofloxacina','Líquido parenteral','500 mg/100 ml','HE',NULL,'P','En general'),(469,'N05AA02','Levomepromazina','Sólido oral','25 mg','E',NULL,'O','En general'),(470,'N05AA02','Levomepromazina','Sólido oral','100 mg','E',NULL,'O','En general'),(471,'N05AA02','Levomepromazina','Líquido oral','40 mg/ml','E',NULL,'O','En general'),(472,'N05AA02','Levomepromazina','Líquido parenteral','25 mg/ml','E',NULL,'P','En general'),(473,'G03AC03','Levonorgestrel','Sólido parenteral (Implante subdérmico) ','150 mg (2 varillas de 75 mg)','E',NULL,'P','En general'),(474,'G03AC03','Levonorgestrel','Sólido oral ','0,030 mg','E',NULL,'O','En general'),(475,'G03AC03','Levonorgestrel','Sólido oral ','0,75 mg','E',NULL,'O','En general'),(476,'G03AC03','Levonorgestrel','Sólido oral ','1,5 mg','E',NULL,'O','En general'),(477,'G03AA07','Levonorgestrel + Etinilestradiol','Sólido oral ','150 mcg + 30 mcg',NULL,NULL,'O','En general'),(478,'H03AA01','Levotiroxina sódica','Sólido oral ','0,05 mg','E',NULL,'O','En general'),(479,'H03AA01','Levotiroxina sódica','Sólido oral ','0,075 mg','E',NULL,'O','En general'),(480,'H03AA01','Levotiroxina sódica','Sólido oral ','0,088 mg','E',NULL,'O','En general'),(481,'H03AA01','Levotiroxina sódica','Sólido oral ','0,100 mg','E',NULL,'O','En general'),(482,'H03AA01','Levotiroxina sódica','Sólido oral ','0,112 mg','E',NULL,'O','En general'),(483,'H03AA01','Levotiroxina sódica','Sólido oral ','0,125 mg','E',NULL,'O','En general'),(484,'H03AA01','Levotiroxina sódica','Sólido oral ','0,150 mg','E',NULL,'O','En general'),(485,'H03AA01','Levotiroxina sódica','Sólido oral ','0,175 mg','E',NULL,'O','En general'),(486,'H03AA01','Levotiroxina sódica','Sólido oral ','0,2 mg','E',NULL,'O','En general'),(487,'C05AD01','Lidocaína','Semisólido rectal','2 %',NULL,NULL,'R','En general'),(488,'D04AB01','Lidocaína','Semisólido cutáneo','2 %',NULL,NULL,'T','En general'),(489,'D04AB01','Lidocaína','Semisólido cutáneo','5 %',NULL,NULL,'T','En general'),(490,'D04AB01','Lidocaína','Líquido cutáneo','10 %',NULL,NULL,'T','En general'),(491,'N01BB02','Lidocaína (sin epinefrina)','Líquido parenteral *','2 %',NULL,NULL,'P','En general'),(492,'N01BB52','Lidocaína con epinefrina','Líquido parenteral *','2 % + 1:200.000',NULL,NULL,'P','En general'),(493,'J01XX08','Linezolid','Sólido oral ','600 mg','E(p)',NULL,'O','En general'),(494,'J01XX08','Linezolid','Líquido parenteral','2 mg/ml','HE(p)',NULL,'P','En general'),(495,'N05AN01','Litio, carbonato','Sólido oral','300 mg','E',NULL,'O','En general'),(496,'A07DA03','Loperamida','Sólido oral','2 mg',NULL,NULL,'O','En general'),(497,'J05AR10','Lopinavir + Ritonavir','Sólido oral ','100 mg + 25 mg','(p)',NULL,'O','En general'),(498,'J05AR10','Lopinavir + Ritonavir','Sólido oral ','200 mg + 50 mg','(p)',NULL,'O','En general'),(499,'J05AR10','Lopinavir + Ritonavir','Líquido oral','80 mg + 20 mg/ml','(p)',NULL,'O','En general'),(500,'R06AX13','Loratadina','Sólido oral','10 mg',NULL,NULL,'O','En general'),(501,'R06AX13','Loratadina','Líquido oral','5 mg/5 ml',NULL,NULL,'O','En general'),(502,'C09CA01','Losartán','Sólido oral ','50 mg',NULL,NULL,'O','En general'),(503,'C09CA01','Losartán','Sólido oral ','100 mg',NULL,NULL,'O','En general'),(504,'A02AF01','Magaldrato con simeticona (Hidróxido de Al y Mg)','Líquido oral',NULL,NULL,NULL,'O','En general'),(505,'B05BC01','Manitol','Líquido parenteral','20 %','HE',NULL,'P','En general'),(506,'G03FA12','Medroxiprogesterona + estrógenos equinos conjugados','Sólido oral ','2,5 mg + 0,625 mg',NULL,NULL,'O','En general'),(507,'P01CB01','Meglumina antimoniato','Líquido parenteral','300 mg/ml','(p)',NULL,'P','En general'),(508,'L01AA03','Melfalán','Sólido oral ','2 mg','E(p)',NULL,'O','Catastróficas'),(509,'L01BB02','Mercaptopurina','Sólido oral ','50 mg','E(p)',NULL,'O','Catastróficas'),(510,'J01DH02','Meropenem','Sólido parenteral','500 mg','HE(p)',NULL,'P','En general'),(511,'J01DH02','Meropenem','Sólido parenteral','1 000 mg','HE(p)',NULL,'P','En general'),(512,'V03AF01','Mesna','Líquido parenteral','100 mg/ml','E (p)',NULL,'P','Catastróficas'),(513,'N07BC02','Metadona','Líquido parenteral','5 mg/ml',NULL,NULL,'P','Antídotos'),(514,'A10BA02','Metformina','Sólido oral','500 mg',NULL,NULL,'O','En general'),(515,'A10BA02','Metformina','Sólido oral','750 mg',NULL,NULL,'O','En general'),(516,'A10BA02','Metformina','Sólido oral','850 mg',NULL,NULL,'O','En general'),(517,'A10BA02','Metformina','Sólido oral','1 000 mg',NULL,NULL,'O','En general'),(518,'A10BD02','Metformina + glibenclamida  ','Sólido oral','250 mg + 1,25 mg',NULL,NULL,'O','En general'),(519,'A10BD02','Metformina + glibenclamida  ','Sólido oral','500 mg + 2,5 mg',NULL,NULL,'O','En general'),(520,'A10BD02','Metformina + glibenclamida  ','Sólido oral','500 mg + 5 mg',NULL,NULL,'O','En general'),(521,'C02AB01','Metildopa ( levógira )','Sólido oral ','250 mg','E',NULL,'O','En general'),(522,'C02AB01','Metildopa ( levógira )','Sólido oral ','500 mg','E',NULL,'O','En general'),(523,'G02AB01','Metilergometrina ( o G02AB03 Ergometrina )','Líquido parenteral','0,2 mg/ml',NULL,NULL,'P','En general'),(524,'G02AB01','Metilergometrina ( o G02AB03 Ergometrina )','Sólido oral ','0,125 mg',NULL,NULL,'O','En general'),(525,'H02AB04','Metilprednisolona, acetato','Líquido parenteral','40 mg/ml','E',NULL,'P','En general'),(526,'H02AB04','Metilprednisolona, acetato','Líquido parenteral','80 mg/ml','E',NULL,'P','En general'),(527,'H02AB04','Metilprednisolona, succinato','Sólido parenteral','125 mg','E',NULL,'P','En general'),(528,'H02AB04','Metilprednisolona, succinato','Sólido parenteral','500 mg','E',NULL,'P','En general'),(529,'A03FA01','Metoclopramida','Sólido oral','10 mg',NULL,NULL,'O','En general'),(530,'A03FA01','Metoclopramida','Líquido parenteral','5 mg/ml',NULL,NULL,'P','En general'),(531,'L01BA01','Metotrexato','Líquido parenteral ','25 mg/ml ','HE(p)',NULL,'P','Catastróficas'),(532,'L01BA01','Metotrexato','Sólido oral ','2,5 mg','E (p)',NULL,'O','Catastróficas'),(533,'L01BA01','Metotrexato','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(534,'L01BA01','Metotrexato','Sólido parenteral','500 mg','HE(p)',NULL,'P','Catastróficas'),(535,'G01AF01','Metronidazol','Sólido vaginal ','500 mg',NULL,NULL,'V','En general'),(536,'G01AF01','Metronidazol','Sólido vaginal ','1 000 mg',NULL,NULL,'V','En general'),(537,'J01XD01','Metronidazol','Líquido parenteral','5 mg/ml','HE (p)',NULL,'P','En general'),(538,'P01AB01','Metronidazol','Sólido oral','250 mg',NULL,NULL,'O','En general'),(539,'P01AB01','Metronidazol','Sólido oral','500 mg',NULL,NULL,'O','En general'),(540,'P01AB01','Metronidazol','Líquido oral','125 mg/5 ml',NULL,NULL,'O','En general'),(541,'P01AB01','Metronidazol','Líquido oral','250 mg/5 ml',NULL,NULL,'O','En general'),(542,'L04AA06','Micofenolato','Sólido oral ','180 mg','E (p)',NULL,'O','Catastróficas'),(543,'L04AA06','Micofenolato','Sólido oral ','250 mg','E (p)',NULL,'O','Catastróficas'),(544,'L04AA06','Micofenolato','Sólido oral ','360 mg','E (p)',NULL,'O','Catastróficas'),(545,'L04AA06','Micofenolato','Sólido oral ','500 mg','E (p)',NULL,'O','Catastróficas'),(546,'N05CD08','Midazolam','Líquido parenteral','1 mg/ml','E',NULL,'P','En general'),(547,'N05CD08','Midazolam','Líquido parenteral','5 mg/ml','E',NULL,'P','En general'),(548,'L01XX09','Miltefosina','Sólido oral','10 mg','(p)',NULL,'O','En general'),(549,'L01XX09','Miltefosina','Sólido oral','50 mg','(p)',NULL,'O','En general'),(550,'G02AD06','Misoprostol','Sólido oral ','200 mcg','(p)',NULL,'O/V','En general'),(551,'L01DC03','Mitomicina','Sólido parenteral','20 mg','HE(p)',NULL,'P','Catastróficas'),(552,'L01DB07','Mitoxantrona','Líquido parenteral','2 mg/ml  ','HE(p)',NULL,'P','Catastróficas'),(553,'R01AD09','Mometasona','Líquido para inhalación nasal ','50 mcg',NULL,NULL,'I','En general'),(554,'C01DA14','Mononitrato de isosorbida','Sólido oral ','20 mg ',NULL,NULL,'O','En general'),(555,'N02AA01','Morfina','Líquido parenteral','10 mg/ml','(p)',NULL,'P','En general'),(556,'N02AA01','Morfina','Líquido parenteral','20 mg/ml','(p)',NULL,'P','En general'),(557,'N02AA01','Morfina','Sólido oral \n(liberación prolongada)','10 mg','(p)',NULL,'O','En general'),(558,'N02AA01','Morfina','Sólido oral \n(liberación prolongada)','30 mg','(p)',NULL,'O','En general'),(559,'N02AA01','Morfina','Sólido oral \n(liberación prolongada)','60 mg','(p)',NULL,'O','En general'),(560,'N02AA01','Morfina','Sólido oral ','10 mg  ','(p)',NULL,'O','En general'),(561,'N02AA01','Morfina','Líquido oral ','2 mg/ml','(p)',NULL,'O','En general'),(562,'N02AA01','Morfina','Líquido oral ','20 mg/ml','(p)',NULL,'O','En general'),(563,'A09AA02','Multienzimas (pancreatina: amilasa, lipasa, proteasa)','Sólido oral','150 mg (8 000 UI, 10 000 UI, 600 UI)','E',NULL,'O','Especiales bajo protocolo'),(564,'A11AA03','Multivitaminas con minerales: *\n•Tiamina (Vitamina B1)\n•Nicotinamida (Vitamina B3)\n•Piridoxina (Vitamina B6)\n•Cianicobal','Líquido oral','\n• 0,5 - 1,2 mg/5 ml\n• 6 - 16 mg/5 ml\n• 0,5 - 1 mg/5 ml\n• 1 ',NULL,NULL,'O','En general'),(565,'V03AB15','Naloxona','Líquido parenteral','0,4 mg/ml','(p)',NULL,'P','Antídotos'),(566,'N07AA01','Neostigmina','Líquido parenteral','0,5 mg/ml','E (p)',NULL,'P','En general'),(567,'N07AA01','Neostigmina','Líquido parenteral','0,5 mg/ml','E (p)',NULL,'P','Antídotos'),(568,'J05AG01','Nevirapina','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(569,'J05AG01','Nevirapina','Líquido oral','50 mg/5 ml','(p)',NULL,'O','En general'),(570,'C08CA05','Nifedipina','Sólido oral ','10 mg','E',NULL,'O','En general'),(571,'A07AA02 ','Nistatina','Líquido oral','100 000 UI/ml',NULL,NULL,'O','En general'),(572,'J01XE01','Nitrofurantoína','Líquido oral','25 mg/5 ml',NULL,NULL,'O','En general'),(573,'J01XE01','Nitrofurantoína','Sólido oral ','100 mg',NULL,NULL,'O','En general'),(574,'C02DD01','Nitroprusiato sódico','Sólido parenteral','50 mg','HE',NULL,'P','En general'),(575,'C01CA03','Norepinefrina','Líquido parenteral','1 mg/ml','HE',NULL,'P','En general'),(576,'H01CB02','Octreotida','Líquido parenteral','0,1 mg/ml  ','E (p)',NULL,'P','Especiales bajo protocolo'),(577,'H01CB02','Octreotida','Sólido parenteral','20 mg','E (p)',NULL,'P','Especiales bajo protocolo'),(578,'H01CB02','Octreotida','Sólido parenteral','30 mg','E (p)',NULL,'P','Especiales bajo protocolo'),(579,'B05XX','Oligoelementos','Líquido parenteral',NULL,'HE',NULL,'P','En general'),(580,'A02BC01','Omeprazol','Sólido oral (polvo)','10 mg/5 ml',NULL,NULL,'O','En general'),(581,'A02BC01','Omeprazol','Sólido oral','20 mg',NULL,NULL,'O','En general'),(582,'A02BC01','Omeprazol','Sólido parenteral','40 mg','H',NULL,'P','En general'),(583,'A04AA01','Ondansetrón','Sólido oral','4 mg','E',NULL,'O','En general'),(584,'A04AA01','Ondansetrón','Sólido oral','8 mg','E',NULL,'O','En general'),(585,'A04AA01','Ondansetrón','Líquido parenteral','2 mg/ml','E',NULL,'P','En general'),(586,'J05AH02','Oseltamivir','Sólido oral','75 mg','(p)',NULL,'O','En general'),(587,'J01CF04','Oxacilina','Sólido parenteral','1 000 mg','HE',NULL,'P','En general'),(588,'L01XA03','Oxaliplatino','Líquido parenteral','5 mg/ml','HE(p)',NULL,'P','Catastróficas'),(589,'L01XA03','Oxaliplatino','Sólido parenteral','50 mg','HE(p)',NULL,'P','Catastróficas'),(590,'L01XA03','Oxaliplatino','Sólido parenteral','100 mg','HE(p)',NULL,'P','Catastróficas'),(591,'N02AA05','Oxicodona ','Sólido oral','5 mg','(p)',NULL,'O','En general'),(592,'N02AA05','Oxicodona ','Sólido oral \n(liberación prolongada)','10 mg','(p)',NULL,'O','En general'),(593,'N02AA05','Oxicodona ','Sólido oral \n(liberación prolongada)','20 mg','(p)',NULL,'O','En general'),(594,'N02AA05','Oxicodona ','Sólido oral \n(liberación prolongada)','40 mg','(p)',NULL,'O','En general'),(595,'V03AN01','Oxígeno',NULL,NULL,NULL,NULL,'I','En general'),(596,'H01BB02','Oxitocina','Líquido parenteral','10 UI/ml','(p)',NULL,'P','En general'),(597,'L01CD01','Paclitaxel','Líquido parenteral','6 mg/ml ','HE(p)',NULL,'P','Catastróficas'),(598,'M03AC01','Pancuronio','Líquido parenteral','2 mg/ml','HE (p)',NULL,'P','En general'),(599,'N02BE01','Paracetamol','Sólido rectal','300 mg',NULL,NULL,'R','En general'),(600,'N02BE01','Paracetamol','Líquido parenteral','10 mg/ml',NULL,NULL,'P','En general'),(601,'N02BE01','Paracetamol','Sólido oral','500 mg ',NULL,NULL,'O','En general'),(602,'N02BE01','Paracetamol','Líquido oral','120 mg/5 ml',NULL,NULL,'O','En general'),(603,'N02BE01','Paracetamol','Líquido oral','150 mg/5 ml',NULL,NULL,'O','En general'),(604,'N02BE01','Paracetamol','Líquido oral','160 mg/5 ml',NULL,NULL,'O','En general'),(605,'N02BE01','Paracetamol','Líquido oral (gotas)','100 mg/ml',NULL,NULL,'O','En general'),(606,'N02BE01','Paracetamol','Sólido rectal','100 mg',NULL,NULL,'R','En general'),(607,'H05BX02','Paricalcitol','Líquido parenteral','5 mcg/ml','E(p)',NULL,'P','Especiales bajo protocolo'),(608,'L03AA13','Pegfilgrastim','Líquido parenteral','10 mg/ml','HE(p)',NULL,'P','Especiales bajo protocolo'),(609,'L01BA04','Pemetrexed','Sólido parenteral','500 mg','HE (p)',NULL,'P','Catastróficas'),(610,'M01CC01','Penicilamina','Sólido oral ','125 mg','(p)',NULL,'O','En general'),(611,'M01CC01','Penicilamina','Sólido oral ','250 mg','(p)',NULL,'O','En general'),(612,'M01CC01','Penicilamina','Sólido oral','125 mg ',NULL,NULL,'O','ANTIDOTO'),(613,'M01CC01','Penicilamina','Sólido oral','250 mg',NULL,NULL,'O','ANTIDOTO'),(614,'P03AC04','Permetrina','Semisólido cutáneo','1 % ',NULL,NULL,'T','En general'),(615,'P03AC04','Permetrina','Líquido cutáneo (champú)','1 % ',NULL,NULL,'T','En general'),(616,'D10AE01','Peróxido de Benzoilo','Semisólido cutáneo o líquido cutáneo','5 %',NULL,NULL,'T','En general'),(617,'D10AE01','Peróxido de Benzoilo','Semisólido cutáneo o líquido cutáneo','10 %',NULL,NULL,'T','En general'),(618,'J01CR05','Piperacilina + tazobactam','Sólido parenteral','4 000 mg + 500 mg','HE',NULL,'P','En general'),(619,'J04AK01','Pirazinamida','Sólido oral ','500 mg','(p)',NULL,'O','En general'),(620,'N07AA02','Piridostigmina','Sólido oral','60 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(621,'A11HA02','Piridoxina (Vitamina B6)','Sólido oral','100 mg',NULL,NULL,'O','En general'),(622,'A11HA02','Piridoxina (Vitamina B6)','Líquido parenteral','150 mg/ml',NULL,NULL,'P','En general'),(623,'P01BD01','Pirimetamina ','Sólido oral','25 mg ','E(p)',NULL,'O','Especiales bajo protocolo'),(624,'C05BB02','Polidocanol (agente exclerosante local)','Líquido parenteral','3 %','E',NULL,'P','En general'),(625,'A06AD65','Polietilenglicol (macrogol) en combinaciones','Sólido oral (granulado)',NULL,NULL,NULL,'O','En general'),(626,'A06AD65','Polietilenglicol (macrogol) en combinaciones','Sólido oral (granulado)',NULL,NULL,NULL,'O','Antídotos'),(627,'V03AB04','Pralidoxima','Líquido parenteral','50 mg/ml','(p)',NULL,'P','Antídotos'),(628,'P02BA01','Praziquantel','Sólido oral','600 mg',NULL,NULL,'O','En general'),(629,'H02AB06','Prednisolona','Sólido oral ','5 mg',NULL,NULL,'O','En general'),(630,'H02AB06','Prednisolona','Sólido oral ','20 mg',NULL,NULL,'O','En general'),(631,'S01BA04','Prednisolona','Líquido oftálmico','0,12 %','E',NULL,'Oc','En general'),(632,'S01BA04','Prednisolona','Líquido oftálmico','1 %','E',NULL,'Oc','En general'),(633,'H02AB07','Prednisona','Sólido oral ','5 mg',NULL,NULL,'O','En general'),(634,'H02AB07','Prednisona','Sólido oral ','20 mg',NULL,NULL,'O','En general'),(635,'P01BA03','Primaquina','Sólido oral','7,5 mg',NULL,NULL,'O','En general'),(636,'P01BA03','Primaquina','Sólido oral','15 mg',NULL,NULL,'O','En general'),(637,'L01XB01','Procarbazina','Sólido oral ','50 mg','E(p)',NULL,'O','Catastróficas'),(638,'D02AB01','Productos con zinc','Semisólido cutáneo',NULL,NULL,NULL,'T','En general'),(639,'G03DA04','Progesterona  ','Sólido oral ','100 mg','E',NULL,'O/V','En general'),(640,'N01AX10','Propofol','Líquido parenteral','10 mg/ml','HE (p)',NULL,'P','En general'),(641,'N01AX10','Propofol','Líquido parenteral','20 mg/ml','HE (p)',NULL,'P','En general'),(642,'C07AA05 ','Propranolol','Sólido oral','10 mg',NULL,NULL,'O','Especiales bajo protocolo'),(643,'C07AA05 ','Propranolol','Sólido oral','40 mg',NULL,NULL,'O','Especiales bajo protocolo'),(644,'C07AA05 ','Propranolol','Sólido oral','80 mg',NULL,NULL,'O','Especiales bajo protocolo'),(645,'C07AA05 ','Propranolol','Líquido parenteral','1 mg/ml ','HE',NULL,'P','Especiales bajo protocolo'),(646,'V03AB14','Protamina','Líquido parenteral','10 mg/ml (1 000 UI/ml)','(p)',NULL,'P','Antídotos'),(647,'N05AH04','Quetiapina','Sólido oral','25 mg','E',NULL,'O','En general'),(648,'N05AH04','Quetiapina','Sólido oral','100 mg','E',NULL,'O','En general'),(649,'N05AH04','Quetiapina','Sólido oral','200 mg','E',NULL,'O','En general'),(650,'N05AH04','Quetiapina','Sólido oral','300 mg','E',NULL,'O','En general'),(651,'P01BC01','Quinina','Líquido parenteral','300 mg/ml',NULL,NULL,'P','En general'),(652,'J05AX08','Raltegravir','Sólido oral ','400 mg','(p)',NULL,'O','En general'),(653,'A02BA02','Ranitidina','Sólido oral','150 mg ',NULL,NULL,'O','En general'),(654,'A02BA02','Ranitidina','Líquido parenteral','25 mg/ml','H',NULL,'P','En general'),(655,'N01AH06','Remifentanilo','Sólido parenteral','2 mg','HE (p)',NULL,'P','En general'),(656,'N01AH06','Remifentanilo','Sólido parenteral','5 mg','HE (p)',NULL,'P','En general'),(657,'A11CA01','Retinol (Vitamina A)','Sólido oral','50 000 UI ',NULL,NULL,'O','En general'),(658,'J04AB02','Rifampicina','Sólido oral ','300 mg','(p)',NULL,'O','En general'),(659,'J04AB02','Rifampicina','Líquido oral','100 mg/5 ml','(p)',NULL,'O','En general'),(660,'J04AM02','Rifampicina + Isoniazida','Sólido oral ','300 mg + 150 mg','(p)',NULL,'O','En general'),(661,'J04AM02','Rifampicina + Isoniazida','Sólido oral ','150 mg + 75 mg','(p)',NULL,'O','En general'),(662,'J04AM02','Rifampicina + Isoniazida','Sólido oral ','150 mg + 150 mg','(p)',NULL,'O','En general'),(663,'J04AM06','Rifampicina + Pirazinamida + Etambutol + Isoniazida','Sólido oral ','150 mg + 400 mg + 275 mg + 75 mg','(p)',NULL,'O','En general'),(664,'J04AM05','Rifampicina + Pirazinamida + Isoniazida','Sólido oral ','120 mg + 300 mg + 60 mg','(p)',NULL,'O','En general'),(665,'J04AM05','Rifampicina + Pirazinamida + Isoniazida','Sólido oral ','150 mg + 400 mg + 75 mg','(p)',NULL,'O','En general'),(666,'N05AX08','Risperidona','Sólido parenteral','25 mg','E',NULL,'P','En general'),(667,'N05AX08','Risperidona','Sólido parenteral','37,5 mg','E',NULL,'P','En general'),(668,'N05AX08','Risperidona','Líquido oral','1 mg/ml','E',NULL,'O','En general'),(669,'N05AX08','Risperidona','Sólido oral','1 mg','E',NULL,'O','En general'),(670,'N05AX08','Risperidona','Sólido oral','2 mg','E',NULL,'O','En general'),(671,'J05AE03','Ritonavir','Sólido oral ','100 mg','(p)',NULL,'O','En general'),(672,'L01XC02','Rituximab','Líquido parenteral','10 mg/ml','HE (p)',NULL,'P','Catastróficas'),(673,'M03AC09','Rocuronio, Bromuro','Líquido parenteral','10 mg/ml','HE (p)',NULL,'P','En general'),(674,'R03AC02','Salbutamol','Líquido para nebulización','5 mg/ml',NULL,NULL,'I ','En general'),(675,'R03AC02','Salbutamol','Líquido para inhalación','0,1 mg/dosis',NULL,NULL,'I ','En general'),(676,'B03AD','Sales de hierro + Ácido fólico','Sólido oral','60 mg + 400 mcg',NULL,NULL,'O','En general'),(677,'A07CA','Sales de rehidratación oral: \n•Glucosa\n•Cloruro de sodio\n•Cloruro de potasio\n•Citrato trisódico dihidrato','Sólido oral (plovo)','\n• 13,5 g/L - 20 g/L\n• 2,6 g/L - 3,5 g/L\n• 1,5 g/L\n• 2,9 g/L',NULL,NULL,'O','En general'),(678,'J05AE01','Saquinavir','Sólido oral ','200 mg','(p)',NULL,'O','En general'),(679,'J05AE01','Saquinavir','Sólido oral ','500 mg','(p)',NULL,'O','En general'),(680,'N04BD01','Selegilina','Sólido oral','5 mg','E',NULL,'O','En general'),(681,'N06AB06','Sertralina','Sólido oral','50 mg','E (p)',NULL,'O','En general'),(682,'N06AB06','Sertralina','Sólido oral','100 mg','E (p)',NULL,'O','En general'),(683,'N01AB08','Sevoflurano','Líquido para inhalación','1 mg/ml','HE (p)',NULL,'I','En general'),(684,'C10AA01','Simvastatina','Sólido oral ','20 mg',NULL,NULL,'O','En general'),(685,'C10AA01','Simvastatina','Sólido oral ','40 mg',NULL,NULL,'O','En general'),(686,'L04AA10','Sirolimus','Sólido oral ','1 mg','E (p)',NULL,'O','Catastróficas'),(687,'B05DB','Soluciones hipertónicas \n(diálisis peritoneal)','Líquido parenteral','1,5 %','E',NULL,'P','Catastróficas'),(688,'B05DB','Soluciones hipertónicas \n(diálisis peritoneal)','Líquido parenteral','2,25 % - 2,5%','E',NULL,'P','Catastróficas'),(689,'B05DB','Soluciones hipertónicas \n(diálisis peritoneal)','Líquido parenteral','4,25 % - 4,5%','E',NULL,'P','Catastróficas'),(690,'J06AA03','Suero antiofídico polivalente','Líquido parenteral/ sólido parenteral',NULL,NULL,NULL,'P','En general'),(691,'J01EC02','Sulfadiazina','Sólido oral','500 mg','E(p)',NULL,'O','Especiales bajo protocolo'),(692,'D06BA01','Sulfadiazina de plata','Semisólido cutáneo','1 %',NULL,NULL,'T','En general'),(693,'A07EC01','Sulfasalazina','Sólido oral','500 mg','E',NULL,'O','En general'),(694,'B05XA05','Sulfato de magnesio','Líquido parenteral','20 %',NULL,NULL,'P','En general'),(695,'A12CB01','Sulfato de zinc','Líquido oral','2 mg/ml',NULL,NULL,'O','En general'),(696,'A12CB01','Sulfato de zinc','Líquido oral','5 mg/ml',NULL,NULL,'O','En general'),(697,'L01XE04','Sunitinib','Sólido oral ','12,5 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(698,'L01XE04','Sunitinib','Sólido oral ','25 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(699,'L01XE04','Sunitinib','Sólido oral ','50 mg','E (p)',NULL,'O','Especiales bajo protocolo'),(700,'M03AB01','Suxametonio','Líquido parenteral','20 mg/ml','HE (p)',NULL,'P','En general'),(701,'L04AX02','Talidomida','Sólido oral ','100 mg','E (p)',NULL,'O','Catastróficas'),(702,'L02BA01','Tamoxifeno','Sólido oral ','10 mg','E(p)',NULL,'O','Especiales bajo protocolo'),(703,'L02BA01','Tamoxifeno','Sólido oral ','20 mg','E(p)',NULL,'O','Especiales bajo protocolo'),(704,'G04CA02','Tamsulosina','Sólido oral ','0,4 mg','E',NULL,'O','En general'),(705,'L01AX03','Temozolomida','Sólido oral ','20 mg','E (p)',NULL,'O','Catastróficas'),(706,'L01AX03','Temozolomida','Sólido oral ','100 mg','E (p)',NULL,'O','Catastróficas'),(707,'L01AX03','Temozolomida','Sólido oral ','250 mg','E (p)',NULL,'O','Catastróficas'),(708,'J05AR03','Tenofovir + Emtricitabina','Sólido oral ','300 mg + 200 mg','(p)',NULL,'O','En general'),(709,'J05AR06','Tenofovir + Emtricitabina + Efavirenz','Sólido oral ','300 mg + 200 mg + 600 mg','(p)',NULL,'O','En general'),(710,'J05AF07','Tenofovir disoproxilo','Sólido oral ','300 mg','(p)',NULL,'O','En general'),(711,'D01AE15','Terbinafina','Semisólido cutáneo','1 %',NULL,NULL,'T','En general'),(712,'D01BA02','Terbinafina','Sólido oral ','250 mg',NULL,NULL,'O','En general'),(713,'G03BA03','Testosterona','Líquido parenteral','250 mg/ml','E',NULL,'P','En general'),(714,'J06AA02 ','Tetánica antitoxina','Líquido parenteral','250 UI ',NULL,NULL,'P','En general'),(715,'H03BB02','Tiamazol (Metimazol)','Sólido oral ','5 mg','E',NULL,'O','En general'),(716,'A11DA01','Tiamina (Vitamina B1)','Sólido oral','50 mg',NULL,NULL,'O','En general'),(717,'A11DA01','Tiamina (Vitamina B1)','Líquido parenteral','50 mg/ml',NULL,NULL,'P','En general'),(718,'S01ED01','Timolol','Líquido oftálmico','0,25 %','E (p)',NULL,'Oc','En general'),(719,'S01ED01','Timolol','Líquido oftálmico','0,5 %','E (p)',NULL,'Oc','En general'),(720,'P01AB02','Tinidazol','Sólido oral','1 000 mg',NULL,NULL,'O','En general'),(721,'P01AB02','Tinidazol','Sólido vaginal','150 mg',NULL,NULL,'V','En general'),(722,'L01BB03','Tioguanina','Sólido oral ','40 mg','E(p)',NULL,'O','Catastróficas'),(723,'N01AF03','Tiopental sódico','Sólido parenteral','1 g','H (p)',NULL,'P','En general'),(724,'R03BB04','Tiotropio bromuro','Sólido para inhalación','22,5 mcg (equivalente a 18 mcg de tiotropio base)','(p)',NULL,'I ','En general'),(725,'B01AC17','Tirofibán','Líquido parenteral','0,25 mg/ml','HE (p)',NULL,'P','En general'),(726,'S01AA12','Tobramicina','Líquido oftálmico','0,3 %',NULL,NULL,'Oc','En general'),(727,'S01AA12','Tobramicina','Semisólido oftálmico','0,3 %',NULL,NULL,'Oc','En general'),(728,'J01GB01','Tobramicina','Líquido para inhalación','300 mg/5 ml',NULL,NULL,'I','Especiales bajo protocolo'),(729,'M03AX01','Toxina botulinica','Sólido parenteral','100 U','HE (p)',NULL,'P','En general'),(730,'M03AX01','Toxina botulinica','Sólido parenteral','500 U','HE (p)',NULL,'P','En general'),(731,'J07AM51','Toxoide diftérico tetánico (Toxoide diftérico + Toxoide tetánico)','Líquido parenteral',NULL,NULL,NULL,'P','En general'),(732,'J07AJ52','Toxoide diftérico tetánico + Vacuna pertussis (Vacuna triple DPT)','Líquido parenteral',NULL,NULL,NULL,'P','En general'),(733,'J07AM01','Toxoide tetánico','Líquido parenteral','> 40 UI/0,5ml',NULL,NULL,'P','En general'),(734,'N02AX02','Tramadol','Sólido oral','50 mg',NULL,NULL,'O','En general'),(735,'N02AX02','Tramadol','Líquido oral','100 mg/ml',NULL,NULL,'O','En general'),(736,'N02AX02','Tramadol','Líquido parenteral','50 mg/ml','H',NULL,'P','En general'),(737,'L01XC03','Trastuzumab','Sólido parenteral','440 mg','HE (p)',NULL,'P','Especiales bajo protocolo'),(738,'C01DA02','Trinitrato de glicerilo (Nitroglicerina)','Líquido parenteral','5 mg/ml','HE',NULL,'P','En general'),(739,'D03AX','Trolamina','Líquido cutáneo','0,67 g/100 g',NULL,NULL,'T','Especiales bajo protocolo'),(740,'S01FA06','Tropicamida','Líquido oftálmico','1 %','E (p)',NULL,'Oc','En general'),(741,'D02AE01','Urea','Semisólido cutáneo','5 %',NULL,NULL,'T','En general'),(742,'D02AE01','Urea','Semisólido cutáneo','10 %',NULL,NULL,'T','En general'),(743,'J07BL01','Vacuna antiamarílica','Sólido parenteral',NULL,NULL,NULL,'P','En general'),(744,'J07BC02','Vacuna antihepatitis A','Líquido parenteral ',NULL,NULL,NULL,'P','En general'),(745,'J07BC01','Vacuna antihepatitis B','Líquido parenteral ',NULL,NULL,NULL,'P','En general'),(746,'J07AH','Vacuna antimeningococo (B + C)','Líquido parenteral/ sólido parenteral',NULL,NULL,NULL,'P','En general'),(747,'J07AL02','Vacuna antineumococo (polisacárido y conjugado)','Líquido parenteral',NULL,NULL,NULL,'P','En general'),(748,'J07BF02','Vacuna antipoliomielítica','Líquido oral',NULL,NULL,NULL,'O','En general'),(749,'J07BH01','Vacuna antirotavirus','Líquido oral',NULL,NULL,NULL,'O','En general'),(750,'J07BG01','Vacuna antirrábica','Líquido parenteral/ sólido parenteral',NULL,NULL,NULL,'P','En general'),(751,'J07AN01','Vacuna BCG','Sólido parenteral',NULL,NULL,NULL,'P','En general'),(752,'J07CA11','Vacuna pentavalente  viral  (Difteria - haemophilus influenzae B - pertussis -  tétanos - hepatitis B )','Líquido parenteral/ sólido parenteral',NULL,NULL,NULL,'P','En general'),(753,'J07BD52','Vacuna triple viral (Parotiditis-Sarampión- Rubeóla)','Sólido parenteral',NULL,NULL,NULL,'P','En general'),(754,'J05AB14','Valganciclovir','Sólido oral ','450 mg','E ',NULL,'O','En general'),(755,'J01XA01','Vancomicina','Sólido parenteral','500 mg','HE (p)',NULL,'P','En general'),(756,'J01XA01','Vancomicina','Sólido parenteral','1 000 mg','HE (p)',NULL,'P','En general'),(757,'L01CA01','Vinblastina','Líquido parenteral','1 mg/ml','HE(p)',NULL,'P','Catastróficas'),(758,'L01CA02','Vincristina','Líquido parenteral','1 mg/ml ','E(p)',NULL,'P','Catastróficas'),(759,'L01CA02','Vincristina','Sólido parenteral','1 mg','E(p)',NULL,'P','Catastróficas'),(760,'J02AC03','Voriconazol','Sólido parenteral','200 mg','E',NULL,'P','En general'),(761,'J02AC03','Voriconazol','Sólido oral','200 mg',NULL,NULL,'O','Especiales bajo protocolo'),(762,'B01AA03','Warfarina','Sólido oral','5 mg','E',NULL,'O','En general'),(763,'J05AF01','Zidovudina','Sólido oral ','100 mg','(p)',NULL,'O','En general'),(764,'J05AF01','Zidovudina','Sólido oral ','300 mg','(p)',NULL,'O','En general'),(765,'J05AF01','Zidovudina','Líquido oral','50 mg/5 ml','(p)',NULL,'O','En general'),(766,'J05AF01','Zidovudina','Líquido parenteral','10 mg/ml','(p)',NULL,'P','En general'),(767,'J05AR01','Zidovudina + Lamivudina','Sólido oral ','300 mg + 150 mg','(p)',NULL,'O','En general'),(768,'J05AR05','Zidovudina + Lamivudina + Nevirapina','Sólido oral ','300 mg + 150 mg + 200 mg','(p)',NULL,'O','En general'),(769,'J07BK02','Zóster, virus vivo atenuado (Vacuna varicela)','Sólido parenteral',NULL,NULL,NULL,'P','En general');
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_faltantes`
--

DROP TABLE IF EXISTS `bitacora_faltantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_faltantes` (
  `id_bitacora_faltantes` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `cantidad` int(20) NOT NULL,
  PRIMARY KEY (`id_bitacora_faltantes`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_faltantes`
--

LOCK TABLES `bitacora_faltantes` WRITE;
/*!40000 ALTER TABLE `bitacora_faltantes` DISABLE KEYS */;
INSERT INTO `bitacora_faltantes` VALUES (1,21,NULL,'2018-12-11 23:58:25',15),(2,21,NULL,'2018-12-12 00:12:23',12),(3,22,NULL,'2018-12-13 16:29:18',200),(4,21,NULL,'2018-12-13 16:29:18',100),(5,23,NULL,'2018-12-13 16:29:18',300),(6,24,NULL,'2018-12-13 16:29:18',400),(7,25,NULL,'2018-12-13 16:29:18',500),(8,27,NULL,'2018-12-13 16:29:18',600),(9,31,NULL,'2019-03-19 17:47:07',100),(10,33,NULL,'2019-03-19 17:47:07',100),(11,32,NULL,'2019-03-21 16:52:41',50),(12,22,NULL,'2019-03-21 16:52:41',30),(13,27,NULL,'2019-03-21 16:52:41',40),(14,23,NULL,'2019-03-21 18:07:56',20),(15,21,NULL,'2019-03-22 16:12:33',45),(16,37,NULL,'2019-03-22 16:13:06',34),(17,38,NULL,'2019-03-22 17:23:34',10),(18,41,NULL,'2019-03-29 18:56:33',25);
/*!40000 ALTER TABLE `bitacora_faltantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_precios`
--

DROP TABLE IF EXISTS `bitacora_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_precios` (
  `id_bitacora_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `precio_compra` double(5,2) NOT NULL,
  `precio_venta` double(5,2) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_bitacora_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_precios`
--

LOCK TABLES `bitacora_precios` WRITE;
/*!40000 ALTER TABLE `bitacora_precios` DISABLE KEYS */;
INSERT INTO `bitacora_precios` VALUES (1,30,15.60,32.60,'2018-12-18 03:27:01',2),(2,28,0.63,0.64,'0000-00-00 00:00:00',2),(3,28,0.89,0.92,'0000-00-00 00:00:00',2),(4,28,0.96,0.97,'0000-00-00 00:00:00',2),(5,28,0.89,0.92,'0000-00-00 00:00:00',2),(6,28,0.89,0.92,'0000-00-00 00:00:00',2),(7,28,0.89,0.92,'2018-12-19 23:39:46',2),(8,28,0.63,0.92,'2018-12-19 23:41:55',2),(9,28,0.89,0.92,'2018-12-19 00:01:25',2),(10,28,0.63,1.24,'2018-12-20 00:45:54',2),(11,28,0.96,0.97,'2018-12-20 00:49:40',2),(12,27,1.62,1.96,'2018-12-20 01:22:29',2),(13,23,1.92,2.20,'2018-12-20 01:25:44',2),(14,31,0.65,0.90,'2018-12-20 13:05:03',2),(15,24,0.26,0.30,'2018-12-21 01:03:22',2),(16,24,0.56,0.57,'2018-12-21 01:15:00',2),(17,28,0.90,0.96,'2018-12-21 01:39:54',2),(18,31,0.65,0.65,'2018-12-21 03:13:21',2),(19,32,2.60,2.80,'2018-12-21 11:10:45',2),(20,31,0.67,0.65,'2018-12-21 11:55:28',2),(21,31,0.63,0.79,'2018-12-21 12:27:19',2),(22,31,0.68,0.69,'2019-01-02 15:23:05',2),(23,31,0.65,0.90,'2019-01-02 15:24:23',2),(24,27,1.42,1.78,'2019-01-02 16:01:12',2),(25,27,1.56,1.57,'2019-01-02 16:02:10',2),(26,28,0.63,1.24,'2019-01-03 02:12:54',2),(27,27,1.56,1.57,'2019-01-03 17:10:12',2),(28,27,1.42,1.78,'2019-01-03 17:10:29',2),(29,27,1.62,1.96,'2019-01-03 17:10:41',2),(30,31,0.63,0.79,'2019-01-03 17:11:01',2),(31,31,0.65,0.90,'2019-01-03 17:11:06',2);
/*!40000 ALTER TABLE `bitacora_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabecera_compra`
--

DROP TABLE IF EXISTS `cabecera_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabecera_compra`
--

LOCK TABLES `cabecera_compra` WRITE;
/*!40000 ALTER TABLE `cabecera_compra` DISABLE KEYS */;
INSERT INTO `cabecera_compra` VALUES (16,8,2,'2019-03-11 04:52:06','Inmediato',2,1,4.4520000,0.0000000,41.5520000,'A'),(18,14,2,'2019-03-11 05:01:30','Inmediato',2,1,2.8740000,0.0000000,26.8240000,'A'),(19,16,2,'2019-03-14 12:36:15','Inmediato',2,1,0.9000000,0.0000000,132.7200000,'D'),(20,14,2,'2019-03-21 05:02:22','Inmediato',2,1,4.0500000,0.0000000,75.6900000,'A'),(21,14,2,'2019-03-22 05:31:48','Inmediato',2,1,0.0000000,0.0000000,2.0000000,'A'),(22,14,2,'2019-03-29 07:01:05','Inmediato',2,1,12.0000000,0.0000000,112.0000000,'A');
/*!40000 ALTER TABLE `cabecera_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabecera_nota_pedidos`
--

DROP TABLE IF EXISTS `cabecera_nota_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabecera_nota_pedidos`
--

LOCK TABLES `cabecera_nota_pedidos` WRITE;
/*!40000 ALTER TABLE `cabecera_nota_pedidos` DISABLE KEYS */;
INSERT INTO `cabecera_nota_pedidos` VALUES (85,8,2,'2019-03-11 16:51:46','EF','Inmediato','Contado',4.4520000,0.0000000,41.5520000),(86,14,2,'2019-03-11 17:01:15','EF','Inmediato','Contado',2.8740000,0.0000000,26.8240000),(87,11,2,'2019-03-12 16:29:26','SI','Inmediato','Contado',4.2600000,0.0000000,574.9500000),(88,8,2,'2019-03-12 16:42:26','SI','Inmediato','Contado',0.0000000,0.0000000,405.8400000),(89,16,2,'2019-03-14 12:35:13','D','Inmediato','Contado',0.9000000,0.0000000,132.7200000),(90,16,2,'2019-03-18 17:23:47','SI','Inmediato','Contado',3.0600000,0.0000000,72.2600000),(91,11,2,'2019-03-20 18:55:42','SI','Inmediato','Contado',999.9999999,0.0000000,999.9999999),(92,14,2,'2019-03-21 17:01:16','EF','Inmediato','Contado',4.0500000,0.0000000,75.6900000),(93,8,2,'2019-03-22 15:48:17','SI','Inmediato','Contado',13.9356000,0.0000000,130.0656000),(94,14,2,'2019-03-22 17:29:52','EF','Inmediato','Contado',0.0000000,0.0000000,2.0000000),(95,15,2,'2019-03-29 18:58:26','SI','Inmediato','Contado',12.0000000,0.0000000,0.0000000),(96,14,2,'2019-03-29 19:00:44','EF','Inmediato','Contado',12.0000000,0.0000000,112.0000000),(97,11,2,'2019-03-29 19:14:45','SI','Inmediato','Contado',0.7800000,0.6500000,6.6300000),(98,7,2,'2019-04-10 19:28:18','SI','Inmediato','Contado',4.1400000,0.0000000,38.6400000);
/*!40000 ALTER TABLE `cabecera_nota_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabecera_venta`
--

DROP TABLE IF EXISTS `cabecera_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabecera_venta`
--

LOCK TABLES `cabecera_venta` WRITE;
/*!40000 ALTER TABLE `cabecera_venta` DISABLE KEYS */;
INSERT INTO `cabecera_venta` VALUES (1,'000001','2019-03-21 17:43:07',10,36,2,'contado','Factura',10.8000000,35.1000000,1.2960000,0.0000000,51.4080000,13.3392000,'A'),(2,'000002','2019-03-21 17:50:24',3,36,2,'contado','Factura',10.8000000,35.1000000,1.2960000,0.0000000,51.4080000,13.3392000,'A'),(3,'000003','2019-03-22 17:37:44',10,36,2,'contado','Factura',0.0000000,3.6000000,0.0000000,0.0000000,4.0320000,0.6720000,'A'),(4,'000004','2019-03-29 19:01:56',10,36,2,'contado','Factura',90.0000000,0.0000000,10.8000000,0.0000000,100.8000000,16.8000000,'A');
/*!40000 ALTER TABLE `cabecera_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'0952364855','KELLY','MERCADO','GUAYAQUIL','2018-12-04','I','',''),(2,'0932067010','JOSE FRANCISCO','LOPEZ MACIAS','GUAYAQUIL','2019-01-02','A','0985849256 CONVENCIONAL','gmail'),(3,'0924876015','JUAN','TOMALA','COOP FLORIDA NORET','2018-12-10','A','0999999999 CONVENCIONAL','jeff@gmail.com'),(4,'0924876251','LAURA  MARIA','TOMALA','VALERIO ESTACIO','2018-12-21','A','2154151521356 CONVENCIONAL','jdsb@gmail.com'),(5,'0944037977','ALEX','MARIN','SEDALANA Y LA 10MA','2018-12-10','I','0993387081 CELULAR','am3377944@gmail.com'),(6,'0912232525','FIORELLA','SABANDO','PORTETE ','2018-12-10','A','0991232552 CELULAR','fiosaban2@gmail.com'),(7,'0991251252','JAIRO','SANTA FE','GUAYAQUIL','2018-12-10','A','0994521252 CELULAR ','sua@hotmail.es'),(8,'0931978365','ARISTIDES','BAJAÑA','GUASMO NORTE','2019-01-23','A','4767657876767 CONVENCIONAL','wbm.andres@gmail.com'),(9,'9348974397','KELLY JACINTA','MONTECARBO','LALA','2019-02-11','A','5435345346 CONVENCIONAL','4btrb@hotmail.com'),(10,'9999999999','CONSUMIDOR FINAL','XXXXXXXXX','xxxxxxxxxxx','2019-03-21','A','0000000000 CONVENCIONAL','xxxxx@gmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correo`
--

DROP TABLE IF EXISTS `correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correo` (
  `id_Correo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Correo` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo`
--

LOCK TABLES `correo` WRITE;
/*!40000 ALTER TABLE `correo` DISABLE KEYS */;
INSERT INTO `correo` VALUES (1,'marin.hotmail.com',''),(3,'123.gmail',''),(4,'aaa.gmail',''),(5,'gmail','3333333333'),(6,'hotmail','0932067010'),(7,'hotmail','5555555555'),(8,'hhhhh','0932067010'),(9,'gmail','0932067010'),(10,'hotmail.es','5555555555'),(11,'jeff@gmail.com','0924876015'),(12,'jdsb@gmail.com','0924876251'),(13,'am3377944@gmail.com','0944037977'),(14,'fiosaban2@gmail.com','0912232525'),(15,'sua@hotmail.es','0991251252'),(16,'wbm.andres@gmail.com','0931978365'),(17,'675675@','091327918856'),(18,'4btrb@hotmail.com','9348974397'),(19,'xxxxx@gmail.com','9999999999');
/*!40000 ALTER TABLE `correo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `fecha_caducidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_compra`),
  KEY `fk_cabcom_detcom` (`id_cabecera_compra`),
  KEY `fk_det_precios` (`id_precio`),
  CONSTRAINT `fk_cabcom_detcom` FOREIGN KEY (`id_cabecera_compra`) REFERENCES `cabecera_compra` (`id_cabecera_compra`),
  CONSTRAINT `fk_det_precios` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES (1,16,44,20,0.7500000,0.0000000,1.8000000,16.8000000,0,NULL),(2,16,27,34,0.6500000,0.0000000,2.6520000,24.7520000,0,NULL),(3,18,44,12,0.7500000,0.0000000,1.0800000,10.0800000,0,NULL),(4,18,27,23,0.6500000,0.0000000,1.7940000,16.7440000,0,NULL),(5,19,25,12,1.6200000,0.0000000,0.0000000,19.4400000,0,NULL),(6,19,42,23,4.5600000,0.0000000,0.0000000,104.8800000,0,NULL),(7,19,44,10,0.7500000,0.0000000,0.9000000,8.4000000,2,NULL),(8,20,40,10,2.3400000,0.0000000,0.0000000,23.4000000,0,NULL),(9,20,8,23,0.6300000,0.0000000,0.0000000,14.4900000,0,NULL),(10,20,44,45,0.7500000,0.0000000,4.0500000,37.8000000,0,NULL),(11,21,52,10,0.1666667,0.0000000,0.0000000,2.0000000,2,NULL),(12,22,56,20,5.0000000,0.0000000,12.0000000,112.0000000,0,NULL);
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_faltantes`
--

DROP TABLE IF EXISTS `detalle_faltantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_faltantes`
--

LOCK TABLES `detalle_faltantes` WRITE;
/*!40000 ALTER TABLE `detalle_faltantes` DISABLE KEYS */;
INSERT INTO `detalle_faltantes` VALUES (2,21,NULL,'2019-03-22 16:12:33',112,'TR'),(3,22,NULL,'2019-03-21 16:52:41',207,'OK'),(4,23,NULL,'2019-03-21 18:07:56',320,'TR'),(5,25,NULL,'2018-12-13 16:29:18',500,'OK'),(6,24,NULL,'2018-12-13 16:29:18',400,'OK'),(10,27,NULL,'2019-03-21 16:52:41',594,'OK'),(11,32,NULL,'2019-03-21 16:52:41',60,'TR'),(12,31,2,'2019-03-19 17:47:07',100,'TR'),(13,33,2,'2019-03-19 17:47:07',55,'OK'),(14,34,NULL,'2019-02-25 00:00:00',13,'NO'),(15,35,NULL,'2019-02-25 00:00:00',0,'NO'),(16,36,NULL,'2019-03-21 00:00:00',0,'NO'),(17,37,NULL,'2019-03-22 16:13:06',34,'TR'),(18,38,NULL,'2019-03-22 17:23:34',0,'OK'),(19,39,NULL,'2019-03-29 00:00:00',0,'NO'),(20,40,NULL,'2019-03-29 00:00:00',0,'NO'),(21,41,NULL,'2019-03-29 18:56:33',5,'OK'),(22,42,NULL,'2019-04-11 00:00:00',0,'NO'),(23,43,NULL,'2019-04-15 00:00:00',0,'NO');
/*!40000 ALTER TABLE `detalle_faltantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_nota_pedidos`
--

DROP TABLE IF EXISTS `detalle_nota_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `fecha_caducidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_cabecera_idx` (`id_cabecera_nota_pedidos`),
  KEY `fk_detalle_nota_pedidos_precio_idx` (`id_precio`),
  CONSTRAINT `fk_detalle_nota_pedidos_cabecera` FOREIGN KEY (`id_cabecera_nota_pedidos`) REFERENCES `cabecera_nota_pedidos` (`id_cabecera_nota_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_nota_pedidos_precio` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_nota_pedidos`
--

LOCK TABLES `detalle_nota_pedidos` WRITE;
/*!40000 ALTER TABLE `detalle_nota_pedidos` DISABLE KEYS */;
INSERT INTO `detalle_nota_pedidos` VALUES (1,44,85,20,0.7500000,0.0000000,1.8000000,16.8000000,0,NULL),(2,27,85,34,0.6500000,0.0000000,2.6520000,24.7520000,0,NULL),(3,44,86,12,0.7500000,0.0000000,1.0800000,10.0800000,0,NULL),(4,27,86,23,0.6500000,0.0000000,1.7940000,16.7440000,0,NULL),(5,42,87,89,4.5600000,0.0000000,0.0000000,405.8400000,0,NULL),(6,13,87,199,0.6500000,0.0000000,0.0000000,129.3500000,0,NULL),(7,42,88,89,4.5600000,0.0000000,0.0000000,405.8400000,0,NULL),(8,27,87,20,0.6500000,0.0000000,1.5600000,14.5600000,0,NULL),(9,44,87,30,0.7500000,0.0000000,2.7000000,25.2000000,0,NULL),(10,25,89,12,1.6200000,0.0000000,0.0000000,19.4400000,0,NULL),(11,42,89,23,4.5600000,0.0000000,0.0000000,104.8800000,0,NULL),(12,44,89,10,0.7500000,0.0000000,0.9000000,8.4000000,2,NULL),(13,44,90,34,0.7500000,0.0000000,3.0600000,28.5600000,0,NULL),(14,40,90,12,2.3400000,0.0000000,0.0000000,28.0800000,0,NULL),(15,24,90,11,1.4200000,0.0000000,0.0000000,15.6200000,0,NULL),(16,8,92,23,0.6300000,0.0000000,0.0000000,14.4900000,0,NULL),(17,44,92,45,0.7500000,0.0000000,4.0500000,37.8000000,0,NULL),(18,40,92,10,2.3400000,0.0000000,0.0000000,23.4000000,0,NULL),(19,27,93,12,0.6500000,0.0000000,0.9360000,8.7360000,0,NULL),(20,39,93,23,2.7900000,0.0000000,7.7004000,71.8704000,0,NULL),(21,26,93,23,1.9200000,0.0000000,5.2992000,49.4592000,0,NULL),(22,52,94,10,0.1666667,0.0000000,0.0000000,2.0000000,2,NULL),(23,56,95,18,5.0000000,0.0000000,12.0000000,0.0000000,0,NULL),(24,56,96,20,5.0000000,0.0000000,12.0000000,112.0000000,0,NULL),(25,27,97,10,0.3250000,0.6500000,0.7800000,6.6300000,10,NULL),(26,53,98,23,1.5000000,0.0000000,4.1400000,38.6400000,0,NULL);
/*!40000 ALTER TABLE `detalle_nota_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,8,0.9000000,23,0.0000000,0.0000000),(2,1,27,0.9000000,12,1.2960000,0.0000000),(3,1,40,2.8800000,5,0.0000000,0.0000000),(4,2,8,0.9000000,23,0.0000000,0.0000000),(5,2,27,0.9000000,12,1.2960000,0.0000000),(6,2,40,2.8800000,5,0.0000000,0.0000000),(7,3,52,0.2400000,15,0.0000000,0.0000000),(8,4,56,6.0000000,15,10.8000000,0.0000000);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envase`
--

DROP TABLE IF EXISTS `envase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envase` (
  `id_envase` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_envase`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envase`
--

LOCK TABLES `envase` WRITE;
/*!40000 ALTER TABLE `envase` DISABLE KEYS */;
INSERT INTO `envase` VALUES (1,'FRASCO','A'),(2,'CAJAS','A'),(3,'funda','A'),(4,'unidades','A'),(5,'gg','A');
/*!40000 ALTER TABLE `envase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `faltantes_previo`
--

DROP TABLE IF EXISTS `faltantes_previo`;
/*!50001 DROP VIEW IF EXISTS `faltantes_previo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `faltantes_previo` AS SELECT 
 1 AS `id_productos`,
 1 AS `marca`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `cantidad_minima`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fc_bitacora_registros_usuario`
--

DROP TABLE IF EXISTS `fc_bitacora_registros_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_bitacora_registros_usuario`
--

LOCK TABLES `fc_bitacora_registros_usuario` WRITE;
/*!40000 ALTER TABLE `fc_bitacora_registros_usuario` DISABLE KEYS */;
INSERT INTO `fc_bitacora_registros_usuario` VALUES (1,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'mucho lote',NULL,'2019-02-03 19:21:39','Actualizacion, registro anterior',NULL),(2,33,'0950963059','pedro ','lucas','0950963058','0950963058','@hotmail.com','2019-01-23','1',NULL,NULL,NULL,NULL,'femenino','mucho lote','Administrador','2019-02-03 19:31:38','Actualizacion, registro anterior',NULL),(3,33,'0950963059','jazmin','solorzano','0950963058','0950963058','@hotmail.com','2019-01-23',NULL,NULL,NULL,NULL,NULL,NULL,'viernes santo',NULL,'2019-02-03 21:11:50','Actualizacion, registro anterior',NULL),(4,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(5,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(6,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(7,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador',NULL,NULL,NULL),(8,36,'0950963058','carlos','cordova','0950963058','0950963058','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-04 15:03:32','usuario actualizado',NULL),(9,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-04 16:08:36','usuario actualizado',NULL),(10,38,'0910203040','jose','chulli','0912345678','0912345678','@gmail.com','2019-02-04','inactivo',NULL,NULL,NULL,NULL,'masculino','portete','Supervisor','2019-02-06 16:20:24','usuario actualizado',NULL),(11,40,'0509060507','prueba ','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 09:57:09','usuario actualizado',NULL),(12,36,'0950963058','carlos','cordova','0950963058','0950963058','cc@gmail.com','2019-02-04','activo',NULL,NULL,NULL,NULL,'masculino','bastion popular','Administrador','2019-02-07 11:14:03','usuario actualizado',NULL),(13,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','activo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:37:50','usuario actualizado',NULL),(14,40,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','2019-02-06','inactivo',NULL,NULL,NULL,NULL,'femenino','prubaaaaa','Vendedor','2019-02-07 11:41:10','usuario actualizado',NULL),(15,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(16,41,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'masculino','pruebbaaaaa 50000','Supervisor',NULL,NULL,NULL),(17,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(18,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(19,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(20,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(21,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(22,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(23,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(24,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(25,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(26,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(27,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(28,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(29,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(30,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(31,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(32,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 11:15:28','usuario actualizado',NULL),(33,42,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador',NULL,NULL,NULL),(34,42,'0950963057','jazmin','solorzano','0950963058','0950963058','12345678','2019-02-07','activo',NULL,NULL,NULL,NULL,'femenino','pruebaaaaaaa 60000','digitador','2019-02-08 13:30:40','usuario actualizado',NULL),(35,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 16:59:05','usuario actualizado',NULL),(36,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(37,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(38,43,'0123456789','admin','admin','1234567890','1234567890','admin@gmail.com','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:06:06','usuario actualizado',NULL),(39,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador',NULL,NULL,NULL),(40,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:12:22','usuario actualizado',NULL),(41,43,'0123456789','admin','admin','1234567890','1234567890','admin','2019-02-09','activo',NULL,NULL,NULL,NULL,'masculino','la calle q pasa  la q cruza','Administrador','2019-02-09 17:15:40','usuario actualizado',NULL),(42,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(43,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(44,49,'0915101621','carlos luis','soto allende','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-02-19 15:59:34','usuario actualizado',NULL),(45,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero',NULL,NULL,NULL),(46,49,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','2019-02-19','activo',NULL,NULL,NULL,NULL,'masculino','oconnor','bodeguero','2019-03-06 14:12:47','usuario actualizado',NULL),(47,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','192.168.100.9','1','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 14:14:04','usuario actualizado',NULL),(48,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','127.0.0.1','1','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1','MASCULINO','BASTION POPULAR','SUPERVISOR','2019-03-06 16:46:41','usuario actualizado',NULL),(49,36,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','2019-02-04','ACTIVO','192.168.100.9','1','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9','MASCULINO','BASTION POPULAR','SUPERVISOR',NULL,NULL,NULL),(50,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','10.227.223.115','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(51,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','10.227.223.115','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(52,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','192.168.1.8','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL),(53,53,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','2019-03-19','ACTIVO','192.168.1.18','1','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','MASCULINO','COOP.FRANCISCO JACOME','ADMINISTRADOR',NULL,NULL,NULL);
/*!40000 ALTER TABLE `fc_bitacora_registros_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_bitacora_seguridad`
--

DROP TABLE IF EXISTS `fc_bitacora_seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_bitacora_seguridad`
--

LOCK TABLES `fc_bitacora_seguridad` WRITE;
/*!40000 ALTER TABLE `fc_bitacora_seguridad` DISABLE KEYS */;
INSERT INTO `fc_bitacora_seguridad` VALUES (1,'yyyyyy','yyyyyyy','127.0.0.1','100000000','carlos-PC','2019-01-11 17:53:03','localhost/127.0.0.1/carlos-PC/127.0.0.1',NULL),(2,'yyyyy','qwertt','127.0.0.1','100000000','carlos-PC','2019-01-11 18:04:04','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(3,'ddgbvdgb','gvgvtgvrfc   tbv','127.0.0.1','100000000','carlos-PC','2019-01-11 18:05:49','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(4,'erver','sdcef','127.0.0.1','100000000','carlos-PC','2019-01-11 18:07:43','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(5,'ece','ercfe','127.0.0.1','100000000','carlos-PC','2019-01-11 18:11:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(6,'rtbgrt','dfvr','127.0.0.1','100000000','carlos-PC','2019-01-11 18:12:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(7,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:13:47','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(8,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:14:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(9,'fsgfdg','ecer','127.0.0.1','100000000','carlos-PC','2019-01-11 18:15:58','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(10,'fffff','ggggg','127.0.0.1','100000000','carlos-PC','2019-01-11 18:18:22','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(11,'jzhxkzcxhk','ssdsd','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:08','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(12,'@gmail.com.ec','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(13,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 18:20:39','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(14,'holas','1234','127.0.0.1','100000000','carlos-PC','2019-01-11 20:09:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(15,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-11 20:10:24','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(16,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 16:03:24','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(17,'@gmail.com','c123','192.168.100.10','100000000','carlos-PC','2019-01-12 13:49:56','localhost/127.0.0.1/carlos-PC/192.168.100.10','C'),(18,'jazmiliana','161012','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:09','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(19,'@gmail.com','c123','127.0.0.1','100000000','carlos-PC','2019-01-12 22:46:33','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(20,'@gmail.com','123','127.0.0.1','100000000','carlos-PC','2019-01-14 18:54:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(21,'@gmail.com','12345','127.0.0.1','100000000','carlos-PC','2019-01-14 18:55:07','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(22,'@gmail.com','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:38:06','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(23,'ana cargosa','12345','10.227.223.160','100000000','carlos-PC','2019-01-14 19:39:46','localhost/127.0.0.1/carlos-PC/10.227.223.160','I'),(24,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:08:11','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(25,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:39:49','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(26,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:41:40','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(27,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-19 22:42:26','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(28,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 13:15:53','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(29,'@gmail.com','c123','192.168.100.6','100000000','carlos-PC','2019-01-20 22:33:56','localhost/127.0.0.1/carlos-PC/192.168.100.6','C'),(30,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:18:39','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(31,'@hotmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:21','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(32,'@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:19:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(33,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:20:44','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(34,'cc@gmail.com','12345','192.168.100.9','100000000','carlos-PC','2019-02-06 16:32:01','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(35,'cc2@gmail.com','0950963059','192.168.100.9','100000000','carlos-PC','2019-02-07 10:15:45','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(36,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-07 14:21:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(37,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:35:09','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(38,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:38:30','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(39,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:04','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(40,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:40:23','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(41,'cc@gmail.com','0950963058','10.227.219.96','100000000','carlos-PC','2019-02-07 18:41:10','localhost/127.0.0.1/carlos-PC/10.227.219.96','C'),(42,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(43,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:12:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(44,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-07 20:20:54','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(45,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:02:20','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(46,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-08 14:25:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(47,'cc@gmail.com','cc@gmail.com','127.0.0.1','100000000','carlos-PC','2019-02-08 17:33:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(48,'@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:37:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(49,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:11','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(50,'kasdkqdk','kjbkjwbefkbwek','127.0.0.1','100000000','carlos-PC','2019-02-08 17:43:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(51,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:47:59','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(52,'cc@gmial.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-08 17:49:02','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(53,'ahajdv','jhjved','127.0.0.1','100000000','carlos-PC','2019-02-08 17:54:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(54,'aejhejhv','jhhvwejhfvwej','127.0.0.1','100000000','carlos-PC','2019-02-08 17:55:50','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(55,'ajsvjavcj','jhavsjvcj','127.0.0.1','100000000','carlos-PC','2019-02-08 17:56:29','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(56,'adcvjav','jhjhcjhc','127.0.0.1','100000000','carlos-PC','2019-02-08 18:01:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(57,'bfccgc','hfjfj','127.0.0.1','100000000','carlos-PC','2019-02-08 18:05:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(58,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:16','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(59,'lsdslñd','ldsñsc','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(60,'sdcewc','wefwfew','192.168.100.9','100000000','carlos-PC','2019-02-09 15:36:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(61,'ssckjsnk','jkncksec','192.168.100.9','100000000','carlos-PC','2019-02-09 15:42:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(62,'bsdjbcsd','jdksjdnks','192.168.100.9','100000000','carlos-PC','2019-02-09 15:43:00','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(63,'bsjcjscbs','jbjbsbd','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:13','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(64,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(65,'jdsncckdb','jknkneiue','192.168.100.9','100000000','carlos-PC','2019-02-09 15:45:40','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(66,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:46:17','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(67,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:15','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(68,'jckdnknsc','lkqeen','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:37','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(69,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 15:49:52','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(70,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:12:34','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(71,'adwad','qdwqdawd','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(72,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:28','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(73,'afadasda','sefsfe','192.168.100.9','100000000','carlos-PC','2019-02-09 16:51:49','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(74,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 16:52:18','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(75,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(76,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 16:57:47','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(77,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:10','localhost/127.0.0.1/carlos-PC/192.168.100.9','I'),(78,'admin@gmail.com','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:04:31','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(79,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:11:22','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(80,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:14:25','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(81,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:20:06','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(82,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-09 17:26:59','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(83,'admin','admin123','192.168.100.9','100000000','carlos-PC','2019-02-09 17:48:35','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(84,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(85,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:31:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(86,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:32:30','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(87,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:36:01','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(88,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:25','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(89,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 17:38:36','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(90,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 18:00:20','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(91,'admin','admin123','172.10.180.83','100000000','carlos-PC','2019-02-11 18:09:39','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(92,'admin','admin123','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:31','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(93,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:23:56','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(94,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-11 19:31:51','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(95,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-11 21:50:44','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(96,'cc@gmail.com','0950963058','192.168.100.9','100000000','carlos-PC','2019-02-12 16:47:57','localhost/127.0.0.1/carlos-PC/192.168.100.9','C'),(97,'cc@gmail.com','0950963058','172.10.180.83','100000000','carlos-PC','2019-02-12 21:41:22','localhost/127.0.0.1/carlos-PC/172.10.180.83','C'),(98,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:19','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(99,'ccgmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:51:52','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(100,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 15:52:06','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(101,'cc@gmailcom','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:05:46','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(102,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:06:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(103,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-02-19 16:40:18','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(104,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 17:57:02','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(105,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 17:58:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(106,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:05:05','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(107,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:08:56','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(108,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:12:11','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(109,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:13:59','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(110,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:15:06','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(111,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:16:22','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(112,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:18:52','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(113,'farmacia','1234','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-13 18:21:48','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(114,'farmacia','1234','192.168.1.4','100000000','DESKTOP-28AV0M7','2019-03-14 12:34:46','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.4','I'),(115,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:14:28','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(116,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:22:49','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(117,'farmacia','1234','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-18 17:26:25','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(118,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:47:50','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(119,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:48:18','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(120,'jeffersonxamir@gmail.com','0924876014','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-19 16:53:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(121,'cc@gmail.com','0950963058','10.227.220.1','100000000','carlos-PC','2019-03-20 16:51:48','localhost/127.0.0.1/carlos-PC/10.227.220.1','C'),(122,'cc@gmail.com','0950963058','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-21 16:28:40','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(123,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-21 17:35:18','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(124,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 01:47:54','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(125,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 11:58:22','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(126,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:19:03','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(127,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:24:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(128,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:27:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(129,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 12:30:57','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(130,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:16:19','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(131,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:36:08','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(132,'jeffersonxamir@gamil.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:40:41','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','I'),(133,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:40:52','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(134,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:45:11','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(135,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:47:13','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(136,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:51:02','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(137,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:53:48','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(138,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 13:56:38','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(139,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 14:00:28','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(140,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-03-22 14:09:26','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(141,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 15:46:47','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(142,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-03-22 16:01:00','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(143,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:37:57','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(144,'jeffersonxamir@gmail.com','123446','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:49:46','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','I'),(145,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:56:12','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(146,'jeffersonxamir@gmail.com','123456','10.227.223.115','100000000','DESKTOP-28AV0M7','2019-03-22 16:57:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.223.115','C'),(147,'jeffersonxamir@gamil.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 19:36:47','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','I'),(148,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 19:36:59','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(149,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 22:56:47','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(150,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:18:32','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(151,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:20:31','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(152,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:21:55','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(153,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:24:18','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(154,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:27:09','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(155,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:30:30','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(156,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:35:28','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(157,'jeffersonxamir@gmail.com','123456','192.168.1.18','100000000','DESKTOP-28AV0M7','2019-03-23 23:59:38','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18','C'),(158,'cc2@gmail.com','0950963059','192.168.43.241','100000000','carlos-PC','2019-03-26 17:31:38','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(159,'vendedor@gmail.com','vendedor','192.168.43.241','100000000','carlos-PC','2019-03-26 17:49:57','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(160,'bodeguero@gmail.com','bodeguero','192.168.43.241','100000000','carlos-PC','2019-03-26 17:50:35','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(161,'jeffersonxamir@gmail.com','123456','192.168.43.241','100000000','carlos-PC','2019-03-26 17:51:22','localhost/127.0.0.1/carlos-PC/192.168.43.241','C'),(162,'ccgmail.com','0950963054','127.0.0.1','100000000','carlos-PC','2019-03-28 17:51:38','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(163,'cc@gmail.com','095096351','127.0.0.1','100000000','carlos-PC','2019-03-28 17:52:08','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(164,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 17:52:30','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(165,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 17:53:17','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(166,'vendedor','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 17:54:07','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(167,'vendedor@gmail.com','0950','127.0.0.1','100000000','carlos-PC','2019-03-28 17:54:28','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(168,'vendedor@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 17:59:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(169,'vendedor@gmail.com','vendedorsdsd','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:28','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(170,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:43','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(171,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:04:55','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(172,'vendedor@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:14:24','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(173,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:14:48','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(174,'supervisor@gmail.com','supervisor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:15:20','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(175,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:18:53','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(176,'vendedor@gmail.com','vendedor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:20:45','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(177,'supervisor@gmail.com','supervisor','127.0.0.1','100000000','carlos-PC','2019-03-28 18:21:16','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(178,'administardor@gmail.com','administrador','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:03','localhost/127.0.0.1/carlos-PC/127.0.0.1','I'),(179,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:19','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(180,'cc@gmail.com','0950963058','127.0.0.1','100000000','carlos-PC','2019-03-28 18:27:35','localhost/127.0.0.1/carlos-PC/127.0.0.1','C'),(181,'jeffersonxamir@gmail.com','12345','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-03-29 14:00:30','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','I'),(182,'jeffersonxamir@gmail.com','123','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-03-29 14:05:17','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','I'),(183,'jeffersonxamir@gmail.com','aa','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-03-29 14:06:54','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','I'),(184,'jeffersonxamir@gmail.com','1234','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-03-29 14:12:47','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','I'),(185,'jeffersonxamir@gamil.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 17:54:58','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(186,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 17:55:09','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(187,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 17:58:06','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(188,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 18:04:03','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(189,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 18:08:59','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(190,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-03-29 18:14:17','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(191,'jeffersonxamir@gmail.com','123456','10.227.217.187','100000000','DESKTOP-28AV0M7','2019-03-29 21:23:28','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.217.187','C'),(192,'jeffersonxamir@gmail.com','123456','10.227.217.187','100000000','DESKTOP-28AV0M7','2019-03-29 21:24:04','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.217.187','C'),(193,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-02 16:05:00','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(194,'jeffersonxamir@gmail.com','123456','10.227.217.187','100000000','DESKTOP-28AV0M7','2019-04-10 17:43:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.217.187','C'),(195,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:26:30','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(196,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:35:02','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(197,'jeffersonxamir@gmail.com','123','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:51:39','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(198,'jeffersonxamir@gamil.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:51:51','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','I'),(199,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:52:06','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(200,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 18:58:24','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(201,'jeffersonxamir@gmail.com','123456','192.168.43.208','100000000','DESKTOP-28AV0M7','2019-04-10 19:27:27','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.43.208','C'),(202,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-04-11 10:03:46','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(203,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-04-11 11:20:40','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(204,'jeffersonxamir@gmail.com','123456','192.168.1.8','100000000','DESKTOP-28AV0M7','2019-04-11 12:07:22','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.8','C'),(205,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 17:51:01','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(206,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 18:12:51','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(207,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 18:14:46','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(208,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 18:18:26','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(209,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 18:23:19','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(210,'jeffersonxamir@gmail.com','123456','10.227.216.119','100000000','DESKTOP-28AV0M7','2019-04-11 18:26:08','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.216.119','C'),(211,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-04-12 15:51:48','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(212,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 16:17:30','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(213,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 16:35:18','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(214,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 16:43:25','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(215,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 16:50:13','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(216,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 16:52:42','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(217,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-04-12 16:55:50','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(218,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-04-12 16:58:47','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(219,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-04-12 17:05:04','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(220,'jeffersonxamir@gmail.com','123456','127.0.0.1','100000000','DESKTOP-28AV0M7','2019-04-12 17:09:57','localhost/127.0.0.1/DESKTOP-28AV0M7/127.0.0.1','C'),(221,'jeffersonxamir@gmail.com','123456','10.227.220.223','100000000','DESKTOP-28AV0M7','2019-04-12 17:18:28','localhost/127.0.0.1/DESKTOP-28AV0M7/10.227.220.223','C'),(222,'jeffersonxamir@gmail.com','123456','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-04-15 11:57:48','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','C'),(223,'jeffersonxamir@gmail.com','123456','192.168.1.11','100000000','DESKTOP-28AV0M7','2019-04-15 12:05:23','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.11','C'),(224,'jeffersonxamir@gmail.com','123456','127.0.1.1','100000000','admin1-desktop','2019-04-15 15:45:03','localhost/127.0.0.1/admin1-desktop/127.0.1.1','C'),(225,'jeffersonxamir@gmail.com','123456','127.0.1.1','100000000','admin1-desktop','2019-04-15 16:58:51','localhost/127.0.0.1/admin1-desktop/127.0.1.1','C'),(226,'jeffersonxamir@gmail.com','123456','127.0.1.1','100000000','admin1-desktop','2019-04-15 17:07:51','localhost/127.0.0.1/admin1-desktop/127.0.1.1','C'),(227,'jeffersonxamir@gmail.com','123456','127.0.1.1','100000000','admin1-desktop','2019-04-15 17:27:35','localhost/127.0.0.1/admin1-desktop/127.0.1.1','C'),(228,'jeffersonxamir@gmail.com','123456','127.0.1.1','100000000','admin1-desktop','2019-04-15 18:13:54','localhost/127.0.0.1/admin1-desktop/127.0.1.1','C');
/*!40000 ALTER TABLE `fc_bitacora_seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_discapacidad`
--

DROP TABLE IF EXISTS `fc_discapacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc_discapacidad` (
  `id_discapacidad` bigint(20) NOT NULL AUTO_INCREMENT,
  `discapacidad` text,
  PRIMARY KEY (`id_discapacidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_discapacidad`
--

LOCK TABLES `fc_discapacidad` WRITE;
/*!40000 ALTER TABLE `fc_discapacidad` DISABLE KEYS */;
INSERT INTO `fc_discapacidad` VALUES (1,'ninguno'),(2,'visual'),(3,'motriz'),(4,'auditiva'),(5,'intelectual'),(6,'vocal');
/*!40000 ALTER TABLE `fc_discapacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_estado_usuario`
--

DROP TABLE IF EXISTS `fc_estado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc_estado_usuario` (
  `id_estado` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` text,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_estado_usuario`
--

LOCK TABLES `fc_estado_usuario` WRITE;
/*!40000 ALTER TABLE `fc_estado_usuario` DISABLE KEYS */;
INSERT INTO `fc_estado_usuario` VALUES (1,'ACTIVO'),(2,'INACTIVO');
/*!40000 ALTER TABLE `fc_estado_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_genero`
--

DROP TABLE IF EXISTS `fc_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc_genero` (
  `id_genero` bigint(20) NOT NULL AUTO_INCREMENT,
  `genero` text,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_genero`
--

LOCK TABLES `fc_genero` WRITE;
/*!40000 ALTER TABLE `fc_genero` DISABLE KEYS */;
INSERT INTO `fc_genero` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `fc_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_localidad_guayas`
--

DROP TABLE IF EXISTS `fc_localidad_guayas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc_localidad_guayas` (
  `id_localidad_guayas` bigint(20) NOT NULL AUTO_INCREMENT,
  `localidad` text,
  PRIMARY KEY (`id_localidad_guayas`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_localidad_guayas`
--

LOCK TABLES `fc_localidad_guayas` WRITE;
/*!40000 ALTER TABLE `fc_localidad_guayas` DISABLE KEYS */;
INSERT INTO `fc_localidad_guayas` VALUES (1,'Guayaquil'),(2,'Duran'),(3,'Samborondon'),(4,'Balzar'),(5,'El Empalme'),(6,'Alfredo Baquerizo Moreno'),(7,'Balao'),(8,'Colimes'),(9,'El Triunfo'),(10,'Daule\r\n'),(11,'General Antonio Elizalde\r\n'),(12,'Isidro Ayora'),(13,'Lomas de Sargentillo'),(14,'Marcelino Maridueña'),(15,'Milagro'),(16,'Naranjal'),(17,'Naranjito'),(18,'Nobol'),(19,'Palestina'),(20,'Pedro Carbo'),(21,'Playas'),(22,'Salitre'),(23,'Santa Lucía'),(24,'Simón Bolívar'),(25,'Yaguachi');
/*!40000 ALTER TABLE `fc_localidad_guayas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_punto_venta`
--

DROP TABLE IF EXISTS `fc_punto_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_punto_venta`
--

LOCK TABLES `fc_punto_venta` WRITE;
/*!40000 ALTER TABLE `fc_punto_venta` DISABLE KEYS */;
INSERT INTO `fc_punto_venta` VALUES (1,'PRUEBA CIEN','PRUEBA DIRECCION','0910203040',NULL,'2019-02-21','2019-03-29','0950963058001',1,'ACTIVO','LOCAL NUEVO'),(2,'PRUEBA DOS','PRUEBA','9506046506',NULL,'2019-03-05',NULL,'5040807060',5,'ACTIVO','LOCAL NUEVO'),(3,'BALAO','BALAO','0980504012',NULL,'2019-03-29',NULL,'5547124586',7,'ACTIVO','NUEVO LOCAL'),(4,'DURAN','DURAN','0840602010',NULL,'2019-03-29',NULL,'4475214578',2,'ACTIVO','NUEVO LOCAL'),(5,'BALZAR','BALZAR','0840506321',NULL,'2019-03-29',NULL,'0845010705',4,'ACTIVO','NUEVO LOCAL');
/*!40000 ALTER TABLE `fc_punto_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_rol`
--

DROP TABLE IF EXISTS `fc_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc_rol` (
  `id_rol` bigint(20) NOT NULL AUTO_INCREMENT,
  `cargo` text,
  `descripcion` text,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_rol`
--

LOCK TABLES `fc_rol` WRITE;
/*!40000 ALTER TABLE `fc_rol` DISABLE KEYS */;
INSERT INTO `fc_rol` VALUES (1,'SUPERVISOR','Administra local farmaceutico'),(2,'ADMINISTRADOR','Tiene el control de todo el sistema'),(3,'VENDEDOR','Maneja el area de vantas del sistema'),(5,'BODEGUERO','administra bodega');
/*!40000 ALTER TABLE `fc_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_session`
--

DROP TABLE IF EXISTS `fc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_session`
--

LOCK TABLES `fc_session` WRITE;
/*!40000 ALTER TABLE `fc_session` DISABLE KEYS */;
INSERT INTO `fc_session` VALUES (36,37,1,'PRUEBA 69','2019-03-13 14:46:32',1,NULL),(37,38,3,'NUEVO USUARIO',NULL,1,NULL),(38,39,1,'activo','2019-02-04 16:12:32',1,NULL),(39,40,5,'NUEVO USUARIO',NULL,1,NULL),(40,41,3,'activo','2019-02-07 11:41:10',1,NULL),(41,42,1,'NUEVO USUARIO',NULL,1,NULL),(42,43,5,'ppppppppppppppp','2019-02-08 11:17:01',1,NULL),(43,44,2,'actualizacion de admin ','2019-02-09 17:15:40',1,NULL),(44,45,5,'NUEVO USUARIO',NULL,1,NULL),(45,46,5,'NUEVO USUARIO',NULL,1,NULL),(46,47,3,'NUEVO USUARIO',NULL,1,NULL),(47,48,5,'NUEVO USUARIO',NULL,1,NULL),(48,49,5,'NUEVO USUARIO',NULL,1,NULL),(49,50,5,'nada njj','2019-02-19 16:01:31',1,NULL),(50,51,1,'NUEVO USUARIO',NULL,1,NULL),(51,52,1,'NUEVO USUARIO',NULL,1,NULL),(52,53,5,'nuevo usuario',NULL,1,NULL),(53,54,2,'NUEVO XD','2019-03-23 22:19:14',1,NULL);
/*!40000 ALTER TABLE `fc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc_usuario`
--

DROP TABLE IF EXISTS `fc_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc_usuario`
--

LOCK TABLES `fc_usuario` WRITE;
/*!40000 ALTER TABLE `fc_usuario` DISABLE KEYS */;
INSERT INTO `fc_usuario` VALUES (37,'0950963058','CARLOS','CORDOVA','0950963058','0950963058','cc@gmail.com','0950963058','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-04',1,'192.168.100.9','2','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION POPULAR'),(38,'0102030405','ana karen','chichande perez','0950963058','0950963058','ac@hotmail.com','12345','1','2019-02-04',1,'2','3','4','5',2,'perimetral '),(39,'0910203040','jose','chulli','0912345678','0912345678','pp@gmail.com','12345','1','2019-02-04',1,'1','2','3','4',1,'portete'),(40,'0908010203','jazmin','solorzano','0912345678','0912345678','dd@gmail.com','12345','1','2019-02-04',2,'2','3','4','5',2,'viernes santo'),(41,'0509060507','pruebá','de ips','0950963058','0950963058','pb@gmail.com','12345','1','2019-02-06',1,'1','2','3','4',2,'prubaaaaa'),(42,'0950963059','carlos dos','cordova lucas','0950963058','0950963058','cc2@gmail.com','0950963059','1','2019-02-07',1,'farmacia','3','192.168.100.9','carlos-PC',1,'pruebbaaaaa 50000'),(43,'0950963057','jazmin','solorzano','0950963058','0950963058','js@gmail.com','0950963057','1','2019-02-07',2,'1','2','3','4',2,'pruebaaaaaaa 60000'),(44,'0123456789','ADMIN','ADMIN','1234567890','1234567890','admin','admin123','1','2019-02-09',1,'192.168.100.9','2','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'la calle q pasa y  la q cruza'),(45,'0102030406','prueba','pruebaaa','0912345678','0912345678','prue@gmail.com','0102030406','IMAGEN','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'saconacnaocoas'),(46,'0801020308','anaoanca','acasncas','0912345678','0912345678','abc@gmail.com','0801020308','','2019-02-09',2,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'acsacacascsvsvsd'),(47,'0911111111','VENDEDOR','VENDEDOR','0912345678','0912345678','vendedor@gmail.com','vendedor','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'zkjkbcusbackbs'),(48,'0922222222','BODEGUERO','BODEGUERO','0912345678','0912345678','bodeguero@gmail.com','bodeguero','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-09',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'scjabckac akscasc'),(49,'1234567890','jose','lopez','0967899045','887878787','jhjhjh','1234567890','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-11',1,'172.10.180.83','3','carlos-PC','localhost/127.0.0.1/carlos-PC/172.10.180.83',1,'loja'),(50,'0915101621','carlos luis','soto cedeño','0981708551','2663876','carlos@gmail.com','0915101621','1','2019-02-19',2,'127.0.0.1','2','carlos-PC','localhost/127.0.0.1/carlos-PC/127.0.0.1',1,'oconnor'),(51,'0933333333','SUPERVISOR','SUPERVISOR','0950302021','09123456789','supervisor@gmail.com','supervisor','C:\\Users\\carlos\\Desktop\\login_128.png','2019-02-21',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION'),(52,'0098754120','PRUEBA ','PREUBA ','0912345678','0123456798','pppp@gmail.com','0098754120','C:\\Users\\carlos\\Desktop\\add usuario96.png','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',1,'BASTION '),(53,'0970405487','PRUEBA DOS','PRUEBA DOS','0912345678','0912345678','pruebados@gmail.con','0970405487','','2019-02-22',1,'192.168.100.9','3','carlos-PC','localhost/127.0.0.1/carlos-PC/192.168.100.9',2,'ALSCNKACBW'),(54,'0924876014','JEFFERSON','XAMIR','0924876014','2260392','jeffersonxamir@gmail.com','123456','C:\\Users\\usuario\\Documents\\resoaldo j7\\status\\c71b5e4bdc3043459e777fa92fab6f8a.jpg','2019-03-19',1,'192.168.1.18','2','DESKTOP-28AV0M7','localhost/127.0.0.1/DESKTOP-28AV0M7/192.168.1.18',1,'COOP.FRANCISCO JACOME');
/*!40000 ALTER TABLE `fc_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iva`
--

DROP TABLE IF EXISTS `iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iva` (
  `id_iva` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `est` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_iva`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iva`
--

LOCK TABLES `iva` WRITE;
/*!40000 ALTER TABLE `iva` DISABLE KEYS */;
INSERT INTO `iva` VALUES (13,0.12,'2019-01-31',1,'A'),(14,0.14,'2019-01-31',1,'I');
/*!40000 ALTER TABLE `iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (2,'5555555555555','KTGTT','ELLY','77777','2018-07-05','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','kelly@gmai.con'),(3,'06660060000','ALEDUD','SDSSFFF','8888','2018-11-05','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','aaa@gmail.com'),(4,'0000000000000','ALEX','GUAYAQUIL','0993387089','2018-11-13','//home//ineval//Escritorio//P-FARMACIA UBUNTU//sin-imagen.png','alex@gmail.com'),(5,'555554888888','HHH','RRRF','313215','2018-12-12','com.farmacia.icono/sinimagen1.jpeg','jjjj.@hotmail.coim');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id_marcas` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_marcas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'bayer','A'),(2,'pelikan','A'),(3,'bago','A');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidas`
--

DROP TABLE IF EXISTS `medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medidas` (
  `id_medidas` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_medida` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_medidas`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidas`
--

LOCK TABLES `medidas` WRITE;
/*!40000 ALTER TABLE `medidas` DISABLE KEYS */;
INSERT INTO `medidas` VALUES (1,'ml','A'),(2,'lt','A'),(3,'mml','A'),(4,'15 LT','A'),(5,'56 GR','A'),(6,'GR','A'),(7,'PRUEBA1','A'),(8,'PRUEBA2','A'),(9,'PRUEBA3','A'),(10,'PRUEBA4','A'),(11,'PRUEBA5','A'),(12,'100 LT','A'),(13,'6-10 KG','A');
/*!40000 ALTER TABLE `medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id_pagos` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pagos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'CONTADO'),(2,'CREDITO');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precios` (
  `id_precio` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) DEFAULT NULL,
  `precio_base` double(5,2) DEFAULT NULL,
  `precio_compra` double(5,2) DEFAULT NULL,
  `precio_venta` double(5,2) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `porcentaje` bigint(20) DEFAULT NULL,
  `descuentoVenta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_precio`),
  KEY `fk_precios_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,22,NULL,0.55,0.60,'I','0000-00-00 00:00:00',NULL,0,0),(2,22,NULL,0.70,0.80,'I','0000-00-00 00:00:00',NULL,0,0),(8,22,NULL,0.63,0.90,'A','2018-12-20 17:56:59',2,0,0),(13,22,NULL,0.65,0.95,'A','2018-12-20 19:24:12',2,0,0),(14,22,NULL,0.45,0.35,'I','2018-12-20 19:24:12',5,0,0),(16,22,NULL,0.59,0.97,'I','2018-12-14 00:57:18',2,0,0),(17,22,NULL,0.73,0.96,'I','2018-12-14 08:28:31',2,0,0),(18,30,NULL,15.60,32.62,'A','2018-12-18 03:27:01',2,0,0),(19,22,NULL,0.44,0.61,'I',NULL,NULL,0,0),(20,28,NULL,0.63,1.24,'A','2019-01-03 02:12:54',2,0,0),(21,28,NULL,0.89,0.92,'I','2018-12-19 00:01:25',2,0,0),(22,28,NULL,0.96,0.97,'I','2018-12-20 00:49:40',2,0,0),(23,27,NULL,1.56,1.57,'I','2019-01-03 17:10:12',2,0,0),(24,27,NULL,1.42,1.78,'A','2019-01-03 17:10:29',2,0,0),(25,27,NULL,1.62,1.96,'A','2019-01-03 17:10:41',2,0,0),(26,23,NULL,1.92,1.95,'A','2018-12-20 01:25:44',2,0,0),(27,31,NULL,0.65,0.90,'A','2019-01-16 03:53:26',2,0,0),(28,31,NULL,0.90,0.96,'I',NULL,NULL,0,0),(29,31,NULL,0.63,0.79,'I','2019-01-03 17:11:01',2,0,0),(30,28,NULL,0.86,0.98,'I',NULL,NULL,0,0),(31,24,NULL,0.26,0.30,'I','2018-12-21 01:03:22',2,0,0),(32,24,NULL,0.60,0.61,'I',NULL,NULL,0,0),(33,24,NULL,0.56,0.57,'I','2018-12-21 01:15:00',2,0,0),(34,24,NULL,58.60,59.60,'I',NULL,NULL,0,0),(35,24,NULL,0.67,0.97,'A',NULL,NULL,0,0),(36,28,NULL,0.90,0.96,'I','2018-12-21 01:39:54',2,0,0),(37,31,NULL,0.67,0.65,'I','2018-12-21 11:55:28',2,0,0),(38,31,NULL,0.68,0.69,'I','2019-01-02 15:23:05',2,0,0),(39,32,NULL,2.79,2.87,'A','2018-12-21 11:10:45',2,0,0),(40,27,NULL,2.34,2.88,'A','2019-01-20 00:00:01',2,0,0),(41,27,NULL,23.50,24.67,'A','2019-01-20 00:00:00',2,0,0),(42,21,NULL,4.56,6.76,'A','2019-01-20 00:00:00',2,0,0),(43,30,NULL,4.67,6.89,'A','2019-01-20 03:46:15',2,0,0),(44,33,NULL,0.75,1.00,'A','2019-01-20 12:38:15',2,0,0),(45,34,NULL,12.50,12.75,'A','2019-02-25 16:39:24',2,0,0),(46,35,NULL,8.90,9.00,'A','2019-02-25 16:58:10',2,0,0),(47,36,NULL,0.80,1.20,'A','2019-03-21 16:37:36',2,0,0),(48,36,NULL,0.90,1.30,'A','2019-03-21 16:44:39',2,0,0),(49,37,NULL,1.00,1.30,'A','2019-03-21 18:05:26',2,0,0),(50,25,NULL,23.40,26.21,'A','2019-03-22 14:10:06',2,0,0),(51,38,NULL,0.25,0.30,'A','2019-03-22 17:09:14',2,0,0),(52,38,NULL,0.20,0.24,'A','2019-03-22 17:16:35',2,0,0),(53,37,NULL,1.50,1.73,'A','2019-03-23 23:03:02',2,15,0),(54,39,NULL,23.45,26.26,'A','2019-03-29 18:09:31',2,12,0),(55,40,NULL,0.63,0.03,'A','2019-03-29 18:10:37',3,0,0),(56,41,NULL,5.00,6.00,'A','2019-03-29 18:55:06',2,20,0),(57,41,NULL,6.00,6.60,'A','2019-03-29 18:57:20',2,10,0),(58,42,34.00,34.56,35.00,'A','2019-04-11 10:04:53',2,0,10),(59,27,67.00,80.00,80.00,'A','2019-04-12 17:20:44',2,0,7),(60,27,16.00,10.00,10.00,'A','2019-04-12 17:22:30',2,0,0),(61,27,0.00,2.34,2.88,'A','2019-04-12 17:23:54',2,0,0),(62,23,0.00,1.92,1.96,'A','2019-04-12 17:30:42',2,0,0),(63,23,0.00,1.92,1.99,'A','2019-04-12 17:31:13',2,0,0);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `estado` varchar(1) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `iva` varchar(15) NOT NULL,
  `cantidad_minima` bigint(20) DEFAULT NULL,
  `receta` varchar(20) DEFAULT NULL,
  `unidades` bigint(20) DEFAULT NULL,
  `codigo_barras` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `fk_tipos_productos` (`id_tipo`),
  KEY `fk_medidas_productos` (`id_medidas`),
  KEY `fk_envase_productos` (`id_envase`),
  KEY `fk_marcas_productos` (`id_marcas`),
  CONSTRAINT `fk_envase_productos` FOREIGN KEY (`id_envase`) REFERENCES `envase` (`id_envase`),
  CONSTRAINT `fk_marcas_productos` FOREIGN KEY (`id_marcas`) REFERENCES `marcas` (`id_marcas`),
  CONSTRAINT `fk_medidas_productos` FOREIGN KEY (`id_medidas`) REFERENCES `medidas` (`id_medidas`),
  CONSTRAINT `fk_tipos_productos` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (21,'ASPIRINA','dolores de cabeza','2018-11-16',15.50,5,4,2,1,'A',1,'NO',15,NULL,NULL,NULL),(22,'AMOXICILINA','INFECCION','2018-11-16',10.20,5,5,2,2,'A',2,'NO',24,NULL,NULL,NULL),(23,'PASTA','MEBOCAINA','2018-11-21',1.26,6,1,1,1,'A',3,'SI',14,NULL,NULL,NULL),(24,'IBUPROFENO ','DOLORES DE CABEZA,ESTOMAGO,FIEBRE','2018-11-22',0.50,11,5,2,1,'A',7,'NO',7,NULL,NULL,NULL),(25,'LEMONFLU2','RESFRIADOS ','2018-11-30',10.00,7,5,2,1,'A',2,'NO',29,NULL,NULL,NULL),(27,'tucol','jarabe para la toz','2018-12-12',15.60,2,3,1,1,'A',3,'NO',14,NULL,NULL,NULL),(28,'GAMALATE','CONCENTRACION','2018-12-13',2.60,7,1,2,1,'A',2,'0.12',15,NULL,NULL,NULL),(29,'ZALEPLA','RELAJACION','2018-12-13',2.60,11,1,1,1,'A',3,'NO',14,NULL,NULL,NULL),(30,'AFRIN','PARA DESCONGESTIONAR LA NARIZ','2018-12-18',2.36,7,3,1,1,'A',5,'NO',19,NULL,NULL,NULL),(31,'VITAMINA C','VITAMINAS','2018-12-20',0.63,5,2,3,1,'A',2,'0.12',15,NULL,NULL,NULL),(32,'OMEPRASOL','INFECCIONES','2018-12-21',2.30,5,6,2,2,'A',2,'0.12',45,NULL,NULL,NULL),(33,'TRIPLE ACCION','PASTA DENTAL','2019-01-20',1.05,10,4,2,1,'A',2,'0.12',10,NULL,NULL,NULL),(34,'ALCOHOL','LIMPIEZA CORPORAL','2019-02-25',12.00,7,3,2,1,'A',2,'',23,NULL,NULL,NULL),(35,'TERMOMETRO','FIEBRE','2019-02-25',0.23,5,4,1,1,'A',2,'0.12',34,NULL,NULL,NULL),(36,'PARACETAMOL2','PRUEBA2','2019-03-21',34.00,6,5,2,3,'A',36,'NO',35,NULL,NULL,NULL),(37,'PASTA','DENTAL','2019-03-21',0.80,10,6,2,2,'A',53,'0.12',15,NULL,NULL,NULL),(38,'APRONAX','NAPROXENO SODICO 500MG','2019-03-22',550.00,6,6,2,1,'I',53,'NO',1,NULL,NULL,NULL),(39,'SDCWD','SDCSD','2019-03-29',10.00,5,6,2,3,'A',53,'NO',23,'SIN RECETA ',NULL,NULL),(40,'AMOXICILINA1','INFECCION1','2019-03-29',10.20,5,5,4,2,'A',3,'NO',24,NULL,NULL,NULL),(41,'LACTIBON LOCION 3.5 PH','SUSTITUTO DE JABON','2019-03-29',8.00,7,1,1,1,'A',53,'0.12',3,'SIN RECETA ',NULL,NULL),(42,'ACERLET','ACERLET 500','2019-04-11',3.00,7,6,2,3,'A',53,'NO',23,'SIN RECETA ',24,NULL),(43,'PAÑALIN','EXTRA GRANDES','2019-04-15',10.00,12,13,2,2,'A',53,'NO',3,'SIN RECETA ',24,'7702111376564');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `correo` varchar(70) DEFAULT NULL,
  `direccionImagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `fk_1` (`id_proveedor_clase`),
  CONSTRAINT `fk_clase_proveedor` FOREIGN KEY (`id_proveedor_clase`) REFERENCES `proveedor_clase` (`id_proclase`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (5,2,'0924878605616','inkatonsa','URSULA','coop.el tunel','2018-11-14','A','0981839603 INSTITUCIONAL','jefferson@gmail.ocm INSTITUCIONAL',NULL),(6,1,'092458566522','NESTLE SA..','ABIGAIL TORRES','COOP.EL CONDOR','2018-12-19','A','0953926261 INSTITUCIONAL','ambar@gmail.com INSTITUCIONAL','F:\\civil.jpg'),(7,2,'1300696364','cocalola','KARE PAGE ','coop.el mirador','2018-12-05','A','2260392 INSTITUCIONAL','elaine@gmail.com INSTITUCIONAL',NULL),(8,1,'0924876014','URSULA.','COLOMBIA','COOP.FLORIDA NORTE','2018-12-05','A','0986334186 PERSONAL','ursula@gmail.com PERSONAL',NULL),(9,1,'1524896522','JULIO','MATT','ENTRADA DE LA 8','2018-12-06','I','4554165165158 INSTITUCIONAL','cknc PERSONAL',NULL),(10,1,'1515151516','CATOLICA','AMBATO','PORTIIKX','2018-12-06','A','','',NULL),(11,1,'0925487562','PROVEMARX','EDWAR','COOP.PUEBLO LINDO','2018-12-06','A','0924876262 PERSONAL','jose@gmail.com PERSONAL',NULL),(12,1,'0924656151514','MUEBLESPALITO','JOSE TERAN ','COOP BRISAS DEL MAR','2018-12-06','I','1221513255 INSTITUCIONAL','0112sds@gmail.com INSTITUCIONAL',NULL),(13,2,'09123456567','COCA COLA','FOGGY ','Floresta 1','2019-01-14','A','132654687489PERSONAL','MAT@gmail.com PERSONAL',NULL),(14,2,'091327918856','Universal','MATT MURDOCK','HELLS KITCHEN','2019-01-20','A','3098545778','MUT@gmail.com',NULL),(15,1,'2343243244','LOS PINOS','JOSE LUIS','cooop manuela cañizares','2019-01-23','A','6565676567 PERSONAL','ghf@gmail.com PERSONAL','C:\\Users\\usuario\\Desktop\\experiencia-de-usuario.jpg'),(16,1,'0987865372','SOCIEDAD QUITUMBE','ALEJANDRO','coop.gallegos lara','2019-01-30','A','0982729262 PERSONAL','alejand@gmail.com PERSONAL','C:\\Users\\usuario\\Desktop\\experiencia-de-usuario.jpg');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_clase`
--

DROP TABLE IF EXISTS `proveedor_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor_clase` (
  `id_proclase` bigint(20) NOT NULL AUTO_INCREMENT,
  `clase` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proclase`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_clase`
--

LOCK TABLES `proveedor_clase` WRITE;
/*!40000 ALTER TABLE `proveedor_clase` DISABLE KEYS */;
INSERT INTO `proveedor_clase` VALUES (1,'laboratorio'),(2,'distribuidor');
/*!40000 ALTER TABLE `proveedor_clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_mail`
--

DROP TABLE IF EXISTS `proveedor_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor_mail` (
  `id_promail` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_tipo_correo` bigint(20) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `cedula_ruc` varchar(15) NOT NULL,
  PRIMARY KEY (`id_promail`),
  KEY `fk_tipo_correo` (`id_tipo_correo`),
  CONSTRAINT `fk_tipo_correo` FOREIGN KEY (`id_tipo_correo`) REFERENCES `tipo_correo` (`id_tipo_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_mail`
--

LOCK TABLES `proveedor_mail` WRITE;
/*!40000 ALTER TABLE `proveedor_mail` DISABLE KEYS */;
INSERT INTO `proveedor_mail` VALUES (1,1,'jefferson@gmail.ocm','0924878605616'),(2,1,'ambar@gmail.com','092458566522'),(3,1,'elaine@gmail.com','1300696364'),(5,2,'cknc','1524896522'),(6,1,'ambar@gmil','1524896522'),(7,1,'0112sds@gmail.com','0924656151514'),(8,1,'JEFSS@GAMIL.COM','0925487562'),(9,2,'jose@gmail.com','0925487562'),(10,2,'ursula@gmail.com','0924876014'),(11,2,'ghf@gmail.com','2343243244'),(12,2,'alejand@gmail.com','0987865372');
/*!40000 ALTER TABLE `proveedor_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_telefono`
--

DROP TABLE IF EXISTS `proveedor_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor_telefono` (
  `id_protelefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_tipo_telefono` bigint(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `cedula_ruc` varchar(15) NOT NULL,
  PRIMARY KEY (`id_protelefono`),
  KEY `fk_tipo_telefeono` (`id_tipo_telefono`),
  CONSTRAINT `fk_tipo_telefeono` FOREIGN KEY (`id_tipo_telefono`) REFERENCES `tipo_telefono` (`id_tipo_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_telefono`
--

LOCK TABLES `proveedor_telefono` WRITE;
/*!40000 ALTER TABLE `proveedor_telefono` DISABLE KEYS */;
INSERT INTO `proveedor_telefono` VALUES (1,1,'0981839603','0924878605616'),(2,1,'0953926261','092458566522'),(3,1,'2260392','1300696364'),(10,2,'0924876262','0925487562'),(11,2,'0256522655','0924656151514'),(12,1,'1221513255','0924656151514'),(13,2,'5615224522152','0925487562'),(14,1,'4554165165158','1524896522'),(15,2,'0986334186','0924876014'),(16,2,'6565676567','2343243244'),(17,2,'0982729262','0987865372');
/*!40000 ALTER TABLE `proveedor_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id_stock` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad` bigint(20) NOT NULL,
  `id_precio` bigint(20) NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `fk_stock_precios` (`id_precio`),
  CONSTRAINT `fk_stock_precios` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,0,42),(2,0,20),(3,20,8),(4,77,44),(5,12,13),(7,0,26),(8,0,35),(9,0,39),(10,33,27),(13,0,40),(14,0,25),(15,-5,52),(16,24,55),(17,5,56);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (2,'092487602876','farmacias comunitarias','alexis','coop.la concordia',NULL,2);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `id_Telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_Tipo_Telefono` bigint(20) NOT NULL,
  `Numero` text NOT NULL,
  `Cedula` text NOT NULL,
  PRIMARY KEY (`id_Telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (1,1,'0997854655','4444444444'),(2,1,'5555555555555','4444444444'),(3,1,'4444444444444','4444444444'),(4,1,'5555555555555','3333333333'),(5,1,'0997857654','0932067010'),(6,1,'5555555555','5555555555'),(7,1,'0000000000','0932067010'),(8,1,'0985849256','0932067010'),(9,1,'0999999999','0924876015'),(10,1,'2154151521356','0924876251'),(11,2,'0993387081','0944037977'),(12,2,'0991232552','0912232525'),(13,2,'0994521252','0991251252'),(14,2,'0962959794','0931978365'),(15,1,'4767657876767','0931978365'),(16,1,'5435345346','9348974397'),(17,1,'0000000000','9999999999');
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `id_tipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_tipo`),
  KEY `fk_tipo_subtipo` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (2,'jarabe para la toz','A'),(4,'pastilla para dolores de cabez','A'),(5,'Antibiótico','A'),(6,'analgesico','A'),(7,'Antialérgicos','A'),(8,'AntiInflamatorios ','A'),(9,'PELOTAS','A'),(10,'VIVERES','A'),(11,'ANTIPIRÉTICOS','A'),(12,'ANTIIRRITACIONES','A');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_correo`
--

DROP TABLE IF EXISTS `tipo_correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_correo` (
  `id_tipo_correo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_tipo_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_correo`
--

LOCK TABLES `tipo_correo` WRITE;
/*!40000 ALTER TABLE `tipo_correo` DISABLE KEYS */;
INSERT INTO `tipo_correo` VALUES (1,'INTITUCIONAL'),(2,'PERSONAL'),(3,'OTRO');
/*!40000 ALTER TABLE `tipo_correo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefono`
--

DROP TABLE IF EXISTS `tipo_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_telefono` (
  `id_tipo_telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_tipo_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefono`
--

LOCK TABLES `tipo_telefono` WRITE;
/*!40000 ALTER TABLE `tipo_telefono` DISABLE KEYS */;
INSERT INTO `tipo_telefono` VALUES (1,'INSTITUCIONAL'),(2,'PERSONAL'),(3,'OTRO');
/*!40000 ALTER TABLE `tipo_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefono_cliente`
--

DROP TABLE IF EXISTS `tipo_telefono_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_telefono_cliente` (
  `id_Tipo_Telefono` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tipo` text NOT NULL,
  PRIMARY KEY (`id_Tipo_Telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefono_cliente`
--

LOCK TABLES `tipo_telefono_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_telefono_cliente` DISABLE KEYS */;
INSERT INTO `tipo_telefono_cliente` VALUES (1,'Convencional'),(2,'Celular'),(3,'Trabajo');
/*!40000 ALTER TABLE `tipo_telefono_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'moduloprueba'
--

--
-- Dumping routines for database 'moduloprueba'
--
/*!50003 DROP FUNCTION IF EXISTS `EncontrarID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `EncontrarID`(nombre1 varchar(80),id_marcas1 bigint(20),id_medidas1 bigint(20),id_tipo1 bigint(20)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        set valor = (SELECT `id_productos` FROM `productos` WHERE `nombre`= nombre1 AND `id_marcas`= id_marcas1 AND `id_medidas`= id_medidas1 AND `id_tipo`= id_tipo1);
        RETURN valor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validacion`(ruc1 text) RETURNS int(11)
BEGIN
declare resultado int;
select count(id_Laboratorio) into resultado from Laboratorio where RUC=ruc1;
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarEnvaseProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarEnvaseProducto`(nombre1 varchar(80)) RETURNS int(11)
BEGIN
	declare valor int; 
        SELECT COUNT(`id_envase`)INTO valor FROM envase
        WHERE nombre = nombre1 and estado = 'A';
        return valor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarMarcaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarMarcaProducto`(nombre1 VARCHAR(80)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        SELECT COUNT(`id_marcas`)INTO valor FROM marcas
        WHERE nombre = nombre1 ;
        RETURN valor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarMedidaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarMedidaProducto`(nombre_medida1 varchar(80)) RETURNS int(11)
BEGIN
	DECLARE valor INT; 
        SELECT COUNT(`id_medidas`)INTO valor FROM medidas
        WHERE nombre_medida = nombre_medida1;
        RETURN valor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarProveedor`(cedula varchar(15)) RETURNS int(11)
BEGIN
	DECLARE val INT;
        SELECT COUNT(cedula_ruc) INTO val FROM proveedor WHERE cedula_ruc = cedula;
        RETURN val;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarPrueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarPrueba`(nombre1 text, apellido1 text,direccion1 text ) RETURNS bigint(20)
BEGIN
declare resultado bigint;
select  id_Clientes into resultado from Clientes
where nombre= nombre1 and Apellido=apellido1 and direccion=direccion1;
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `validarTipoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `validarTipoProducto`(nombre1 varchar(80)) RETURNS int(11)
BEGIN
	declare valor int; 
        SELECT COUNT(`id_tipo`)INTO valor FROM tipo
        WHERE nombre = nombre1 and estado = 'A';
        return valor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivarEstadoNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivarEstadoNotaPedido`(IN id_cabecera_nota_pedidos1 BIGINT,
OUT valor TEXT)
BEGIN
	UPDATE cabecera_nota_pedidos 
	SET estado = 'SI'
	WHERE id_cabecera_nota_pedidos = id_cabecera_nota_pedidos1;
	SET valor ='Actualizado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar`(in id_Laboratorio1 bigint, in RUC1 text, in nombre1 text,
in direccion1 text, in telefono1 text, in fecha1 date, in imagen1 text, in correo1 text, out valor text)
BEGIN
update laboratorio set RUC= RUC1 , Nombre = nombre1,
Direccion = direccion1, Telefono = telefono1, 
Fecha = fecha1, Imagen = imagen1, Correo = correo1 where id_Laboratorio = id_Laboratorio1;
set valor = 'Laboratorio actualizado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarCabeceraNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarCabeceraNotaPedido`(in plazo1 text, in formapago2 text, in iva3 decimal(10,7),
in descuento4 decimal(10,7),in total5 decimal(10,7),in idcab6 decimal(10,7),out valor text)
BEGIN
	UPDATE `cabecera_nota_pedidos` SET `plazo`=plazo1,`forma_pago`=formapago2,`iva`=iva3,`descuento`=descuento4,`total`=total5 WHERE `id_cabecera_nota_pedidos`= idcab6;
	set valor ='actualizacion con exito';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCliente`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarDetalleCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleCompras`(IN id_detalle_nota_pedidos1 BIGINT,
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarDetalleIndividualNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleIndividualNotaPedido`(in id_detalle_nota_pedidos1 BIGINT,
in cantidad1 int,in descuento1 Double,in iva1 Double ,in total1 Double )
BEGIN
UPDATE `detalle_nota_pedidos` SET  
cantidad = cantidad1,
descuento = descuento1,
iva = iva1,
total = total1 
WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarDetalleNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDetalleNotaPedido`(IN id_detalle_nota_pedidos1 BIGINT,
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPrecioCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioCompra`(IN id_producto1 BIGINT,in precioBase2 double(5,2),IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),in fecha4 datetime,in id_usu bigint,IN Porcen BIGINT,in descvent bigint,OUT valor1 TEXT )
BEGIN
	DECLARE id_pre INT;
	INSERT INTO `precios`(`id_producto`,`precio_base`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`,`porcentaje`,`descuentoVenta`) VALUES (id_producto1,precioBase2,precio_compra2,precio_venta3,'A',fecha4,id_usu,Porcen,descvent);
	set valor1='PRECIO AGREGADO';
   -- SET id_pre =(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND`precio_compra`=precio_compra2 AND `precio_venta`= precio_venta3);
    -- UPDATE `precios` SET estado='I' WHERE `id_precio` NOT IN (id_pre) AND `id_producto`=id_producto1;
	-- SET valor1=(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND `precio_compra`= precio_compra2 AND`precio_venta`=precio_venta3);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPrecioConvertidor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioConvertidor`(IN id_producto1 BIGINT,IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),IN fecha4 DATETIME,IN id_usu BIGINT,IN Porcen BIGINT,OUT valor2 TEXT )
BEGIN
	DECLARE id_pre INT;
	INSERT INTO `precios`(`id_producto`,`precio_compra`,`precio_venta`,`estado`,`fecha_registro`,`id_usuario`,`porcentaje`) VALUES (id_producto1,precio_compra2,precio_venta3,'A',fecha4,id_usu,Porcen);
	seT valor2=(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND`precio_compra`=precio_compra2 AND `precio_venta`= precio_venta3);
   -- SET id_pre =(SELECT `id_precio` FROM `precios` WHERE `id_producto`=id_producto1 AND`precio_compra`=precio_compra2 AND `precio_venta`= precio_venta3);
    -- UPDATE `precios` SET estado='I' WHERE `id_precio` NOT IN (id_pre) AND `id_producto`=id_producto1;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPrecioProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPrecioProducto`(IN consu TEXT,OUT valor TEXT)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    SET valor ='precio actualizado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarStockVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarStockVentas`(
in _id_control bigint,
in _cantidad bigint
)
BEGIN
UPDATE `stock`
SET 
  `cantidad` = _cantidad
WHERE `stock`.`id_precio` = _id_control;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Envase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Envase`(in nombre_f text,in id_tipo_f int, out salida text)
BEGIN
declare nra int;
set nra = (SELECT validarEnvaseProducto(nombre_f));
	if(nra<1) then 
	update envase set nombre = nombre_f where envase.id_envase = id_tipo_f;
	set salida = 'DATO ACTUALIZADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_punto_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_punto_venta`(id1 BIGINT, nombre_localidad1 TEXT,nombre_local1 TEXT,  direccion1 TEXT,dir_ip1 TEXT,  IN observacion TEXT, OUT salida TEXT)
BEGIN
DECLARE id_localidad1 INT;
SELECT `id_localidad_guayas` INTO id_localidad1 FROM `fc_localidad_guayas` WHERE `localidad`=nombre_localidad1;
UPDATE fc_punto_venta SET `id_localidad_guayas`=id_localidad1, `nombre`=nombre_local1,`direccion`=direccion1, 
`observacion`=observacion, `ip_publica`=	dir_ip1 WHERE `id_punto_venta`=id1;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Tipo`(in nombre_f text,in id_tipo_f int, out salida text)
BEGIN
declare nra int;
set nra = (SELECT validarTipoProducto(nombre_f));
	if(nra<1) then 
	update tipo set nombre = nombre_f where tipo.id_tipo = id_tipo_f;
	set salida = 'DATO ACTUALIZADO';
	else
	set salida ='DATO EXISTENTE';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bitacora_seguridad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bitacora_seguridad`(IN `user1` TEXT, IN `password1` TEXT, IN `ip_equipo1` TEXT, /*in `ip_publico1` text,*/
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarIDCabeceraCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarIDCabeceraCompras`(IN descuento1 DECIMAL(10,7),
IN iva1 DECIMAL(10,7),IN total1 DECIMAL(10,7),OUT valor TEXT)
BEGIN
	select `id_cabecera_compra` into valor from `cabecera_compra` where `descuento`= descuento1 and `iva`= iva1 and `total`= total1;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarIDDetalleCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarIDDetalleCompras`(in idcab bigint,IN descuento1 DECIMAL(10,7),
in iva1 decimal(10,7),in total1 decimal(10,7),in bono1 bigint,out valor text)
BEGIN
    
	select `id_detalle_compra` into valor from `detalle_compra` where `descuento`= descuento1 and`iva`=iva1  and `total`= total1 and `bono`=bono1;
     
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarIDProductoNuevo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarIDProductoNuevo`(IN nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN fecha_registro1 DATE,IN peso1 DOUBLE(7,2),IN id_tipo1 BIGINT(20), 
IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_usuario1 BIGINT,IN iva1 VARCHAR(15),IN cantidad_minima1 BIGINT,IN receta1 VARCHAR(45),IN unidade1 BIGINT, OUT valor1 TEXT)
BEGIN
	SET valor1= (SELECT `id_productos` FROM `productos` WHERE `descripcion`=descripcion1 AND`fecha_registro`=fecha_registro1 AND`peso`=peso1 AND`id_tipo`=id_tipo1 AND 
`id_medidas`=id_medidas1 AND `id_envase`=id_envase1 AND `id_marcas`=id_marcas1 AND`estado`='A' AND `id_usuario`=id_usuario1 AND`iva`=iva1 AND `cantidad_minima`=cantidad_minima1 AND `receta`= receta1 AND `unidades`=unidade1); 
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarStockVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarStockVentas`(
in _id_cabecera_ventas bigint
)
BEGIN
SELECT `detalle_venta`.`id_control` AS id_control,(`stock`.`cantidad`-`detalle_venta`.`cantidad`) AS cantidad
FROM  `stock` INNER JOIN `detalle_venta`
ON `stock`.`id_precio` = `detalle_venta`.`id_control`
WHERE `detalle_venta`.`id_cabecera_venta` = _id_cabecera_ventas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarEstadoDevolucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarEstadoDevolucion`(in id_nota bigint, in id_compra bigint)
BEGIN
	update `cabecera_nota_pedidos` set `estado` = 'D' where`id_cabecera_nota_pedidos`= id_nota;
	update `cabecera_compra` set `estado` = 'D' where `id_cabecera_compra` = id_compra;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cantidad_compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cantidad_compras`(in fecha1 date, in fecha2 date)
BEGIN
select distinct
pr.id_producto,
p.nombre,
p.descripcion,
SUM(dc.cantidad) AS `cantidad_comprado`,
SUM(dc.total) AS `total`
from cabecera_compra cp
join detalle_compra dc on dc.id_cabecera_compra=cp.id_cabecera_compra
join precios pr on pr.id_precio = dc.id_precio
join productos p on p.id_productos=pr.id_producto
join pagos pg on cp.id_tipoPago = pg.id_pagos
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2
order by cantidad_comprado desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cantidad_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cantidad_ventas`(in fecha1 date, in fecha2 date)
BEGIN
select distinct
p.id_productos,
p.nombre,
p.descripcion,
SUM(dv.cantidad) AS cantidad_venta,
SUM(cv.total) AS total
from cabecera_venta cv
join detalle_venta dv on dv.id_cabecera_venta=cv.id
join precios pr on pr.id_precio = dv.id_control
join productos p on p.id_productos=pr.id_producto
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2,3
order by cantidad_venta desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `convertirStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `convertirStock`(in Stock1 bigint,in Stock2 bigint,in valor1 bigint,valor2 bigint,out valor text)
BEGIN
	update `stock` set `cantidad`=valor1 where `id_stock`=Stock1;
	UPDATE `stock` SET `cantidad`=valor2 WHERE `id_stock`=Stock2;
	set valor ='EXITO';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `convertirStockProductoNuevo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `convertirStockProductoNuevo`(IN Stock1 BIGINT,IN id_precio2 BIGINT,IN valor1 BIGINT,valor2 BIGINT,OUT valor TEXT)
BEGIN
	DECLARE id_preciox BIGINT;
	DECLARE cantidadx BIGINT;
	DECLARE cant BIGINT;
		
	UPDATE `stock` SET `cantidad`=valor1 WHERE `id_stock`=Stock1;
	
	SELECT `id_precio` INTO  id_preciox  FROM `stock` WHERE `id_precio`=id_precio2;
	
	IF(id_preciox = id_precio2)THEN
	SET cantidadx=(SELECT `cantidad` FROM `stock` WHERE `id_precio`=id_precio2);
	SET cant =(cantidadx + valor2);
	UPDATE `stock` SET `cantidad` = cant WHERE `id_precio` = id_precio2;
	ELSE
	-- SET cant2 = (cantidad3+bono8);
	INSERT INTO `stock`(`cantidad`,`id_precio`)VALUES(valor2,id_precio2);
	END IF;
	
	SET valor ='EXITO';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesactivarNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesactivarNotaPedido`(IN id_cabecera_nota_pedidos1 BIGINT,
OUT valor TEXT)
BEGIN
	UPDATE cabecera_nota_pedidos 
	SET estado = 'NO'
	WHERE id_cabecera_nota_pedidos = id_cabecera_nota_pedidos1;
	SET valor ='Actualizado';
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `devolverProductosComprados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `devolverProductosComprados`(IN cantidad1 INT,IN id_precio2 BIGINT,out valor text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edicionCabeceraNota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edicionCabeceraNota`(IN iva8 DECIMAL(10,7),
IN descuento9 DECIMAL(10,7),IN total10 DECIMAL(10,7),IN id_cab_ped11 BIGINT,OUT valor TEXT)
BEGIN
	UPDATE`cabecera_nota_pedidos` SET `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 WHERE`id_cabecera_nota_pedidos`= id_cab_ped11;
	SET valor='EXITO';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edicionCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edicionCompra`(IN iva8 DECIMAL(10,7),
IN descuento9 DECIMAL(10,7),IN total10 DECIMAL(10,7),IN id_cab_ped11 BIGINT,in idComp bigint,OUT valor TEXT)
BEGIN
	update`cabecera_nota_pedidos` set `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 where`id_cabecera_nota_pedidos`= id_cab_ped11;
	
	update `cabecera_compra` set `iva`= iva8 ,`descuento`= descuento9 ,`total`= total10 where `id_cabecera_compra` = idComp;
	set valor='exito';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarMarcaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editarMarcaProducto`(IN nombre_medida1 VARCHAR(80),in pos int, OUT valor1 TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarMedidaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editarMedidaProducto`(IN nombre_medida1 VARCHAR(80),in pos int, OUT valor1 TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editarProveedor`(IN id_proveedor_clase1 BIGINT, IN entidad3 VARCHAR(100),
IN representante4 VARCHAR(70),IN direccion5 VARCHAR(100),IN fecha6 DATE,IN estado7 VARCHAR(1),IN telefono8 VARCHAR(70),IN correo9 VARCHAR(70),IN cedula2 VARCHAR(15),IN imagen TEXT,OUT valor TEXT)
BEGIN
UPDATE proveedor SET `id_proveedor_clase`=id_proveedor_clase1,`entidad`=entidad3,`representante`=representante4,`direccion`=direccion5,
`fecha_registro`=fecha6,`estado`=estado7,`telefono`=telefono8,`correo`=correo9 ,`direccionImagen`=imagen WHERE cedula_ruc = cedula2;
SET valor = 'Proveedor Actualizado'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar`(id_Laboratorio1 bigint, out valor  text)
BEGIN
delete from laboratorio where id_Laboratorio = id_Laboratorio1;
set valor = 'Laboratorio eliminado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleCompra`(IN id_cab BIGINT,IN id_det BIGINT,OUT valor TEXT)
BEGIN
	DELETE FROM `detalle_nota_pedidos` WHERE `id_detalle_nota_pedidos`= id_det AND `id_cabecera_nota_pedidos`= id_cab;
	SET valor='elemento eliminado';
		
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarDetalleDevolucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDetalleDevolucion`(in detNotaPed bigint,in idPrecio1 bigint, in cantidad1 bigint,
    in descuento1 decimal(10,7),in iva1 DECIMAL(10,7),in total1 DECIMAL(10,7),in bono1 bigint,out valor text)
BEGIN
	declare idDetCompra bigint;
	select `id_detalle_compra` into idDetCompra from `detalle_compra` where `id_precio`= idPrecio1 and `descuento`= descuento1 and 
	`iva`= iva1 and `total`= total1 and `bono`=bono1;
	
	delete from `detalle_nota_pedidos` where `id_detalle_nota_pedidos`= detNotaPed;
	
	delete from `detalle_compra` where `id_detalle_compra`=idDetCompra;
	SET valor='EXITO';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarDetalleNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarDetalleNotaPedido`(IN id_detalle_nota_pedidos1 BIGINT,OUT valor TEXT)
BEGIN
DELETE FROM `detalle_nota_pedidos` WHERE id_detalle_nota_pedidos = id_detalle_nota_pedidos1;
SET valor='Detalle Eliminado';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarMarcaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMarcaProducto`(in pos int, OUT valor1 TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarMedidaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMedidaProducto`(in pos int, OUT valor1 TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProducto`(in id_productos1 bigint,out valor text)
BEGIN
	update `productos` set `estado`='I' where `productos`.`id_productos`= id_productos1;
	set valor='Producto Eliminado con Exito';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProveedor`(in op bigint, id_proveedor1 bigint,out valor text)
BEGIN
	if (op=1)then
	update `proveedor` set `estado`='I' where `id_proveedor`=id_proveedor1;
	set valor='¡PROVEEDOR DADO DE BAJA!';
	end if;
	IF (op=2)THEN
	UPDATE `proveedor` SET `estado`='A' WHERE `id_proveedor`=id_proveedor1;
	SET valor='¡PROVEEDOR RESTABLECIDO!';
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Envase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Envase`(in id_tipo_f int, out salida text)
BEGIN
declare esta_f char(1);
    set esta_f = 'I';
update envase set estado = esta_f where id_envase = id_tipo_f;
 set salida = 'DATO ELIMINADO';
 select salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_iva`(IN id_iva1 INT,OUT msg TEXT)
BEGIN
	UPDATE iva SET est = 'I' WHERE id_iva= id_iva1;
    SET msg = 'Valor Eliminado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Tipo`(in id_tipo_f int, out salida text)
BEGIN
declare esta_f char(1);
    set esta_f = 'I';
update tipo set estado = esta_f where id_tipo = id_tipo_f;
 set salida = 'DATO ELIMINADO';
 select salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Envase_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Envase_Producto`()
BEGIN
select envase.id_envase, envase.nombre from moduloprueba.envase where estado = 'A' order by envase.id_envase;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `estadoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `estadoCliente`(
in cedula123 text, 
 out msg text)
BEGIN
update  Clientes set Estado = 'I' WHERE Cedula = cedula123;
set msg = 'Cliente eliminado!!';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `estadoCliente2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `estadoCliente2`(
in cedula123 text, out mst text)
BEGIN
update  Clientes set Estado = 'A' WHERE Cedula = cedula123;
set mst = 'Cliente activado!!';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `faltantes_cantidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `faltantes_cantidad`()
BEGIN
SELECT DISTINCT (df.`id_detalle_faltantes`),df.`id_producto`,p.`nombre`, m.nombre AS marcas,df.`cantidad`AS cantidad_Faltantes,
p.`cantidad_minima` AS can_minima,df.`estado`,p.`descripcion` AS descripcion
FROM `detalle_faltantes` df
JOIN `productos` p ON p.`id_productos` = df.`id_producto`
JOIN `precios` pr ON pr.`id_producto`= p.`id_productos`
JOIN `marcas` m ON p.`id_marcas` = m.`id_marcas`    
WHERE `df`.cantidad <= cantidad_minima OR `df`.cantidad = 0
AND `df`.estado = 'NO' OR `df`.estado = 'OK';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_actualizar_local` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_actualizar_local`(IN nombre1 TEXT,IN direccion1 TEXT,IN telefono_pv1 TEXT, OUT salida TEXT)
BEGIN    
    
UPDATE `fc_punto_venta`
SET `nombre` = nombre1,
  `direccion` = direccion1,
  `telefono_pv` = telefono_pv1,
  `fecha_actualizacion` = now()
WHERE `id_punto_venta` = 1;
SET salida='Local acualizado correctamente';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_actualizar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_actualizar_usuario`(IN cedula1 TEXT, IN nombres1 TEXT, IN apellidos1 TEXT, IN telefono1 TEXT, IN convencional1 TEXT, IN correo1 TEXT, 
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combos_ac_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combos_ac_usuarios`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combo_discapacidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_discapacidad`()
BEGIN
	SELECT `discapacidad` FROM `fc_discapacidad`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combo_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_genero`()
BEGIN
	SELECT `id_genero`,`genero` FROM `fc_genero`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combo_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_porcentaje`()
BEGIN
	SELECT `porcentaje` FROM `fc_porcentaje_discapacidad`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combo_pv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_pv`()
BEGIN
	SELECT `nombre` FROM `fc_punto_venta` ORDER BY `nombre` ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_combo_rol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_combo_rol`()
BEGIN
	SELECT `id_rol`,`cargo` FROM `fc_rol`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_crear_local` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_crear_local`(in nombre1 text,in direccion1 text,in telefono_pv1 text, out salida text)
BEGIN
	INSERT INTO `fc_punto_venta` (`nombre`,`direccion`,`telefono_pv`,`fecha_creacion`,`fecha_actualizacion`)
	VALUES (nombre1,direccion1,telefono_pv1,now(),'0000-00-00');
	SET salida='Local creado correctamente'; 
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_esatdo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_esatdo_usuario`()
BEGIN
	SELECT `id_estado`,`estado` FROM `fc_estado_usuario`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_estado_pv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_estado_pv`()
BEGIN
	SELECT `fc_estado_pv`.`id_estado_pv`, `fc_estado_pv`.`estado_pv` FROM `fc_estado_pv`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_apellido_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_apellido_usuario`(in valor text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_cedula_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_cedula_usuario`(IN valor TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_cod_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_cod_usuario`(IN valor bigint)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_estado_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_estado_usuario`(IN valor bigint)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_fecha_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_fecha_usuario`(IN valor text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_pv_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_pv_id`(in id_punto_venta1 bigint)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_filtro_pv_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_filtro_pv_nombre`( IN nombre1 TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_getComboVariosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_getComboVariosUsuario`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_login_bitacora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_login_bitacora`(IN `user1` TEXT, IN `password1` TEXT, IN `ip_equipo1` TEXT, /*in `ip_publico1` text,*/
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_mostrar_local` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_mostrar_local`()
BEGIN
	SELECT `fc_punto_venta`.`nombre`, `fc_punto_venta`.`direccion`, `fc_punto_venta`.`telefono_pv`,`fc_punto_venta`.`fecha_creacion`, 
	`fc_punto_venta`.`fecha_actualizacion` FROM `fc_punto_venta` where `fc_punto_venta`.`id_punto_venta`=1;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_mostrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_mostrar_usuario`()
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_nuevo_punto_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_nuevo_punto_venta`(in localidad_guayas1 text,IN nombre1 TEXT,IN direccion1 TEXT,IN ruc_local1 TEXT,IN telefono_pv1 TEXT,out salida text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_punto_venta_prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_punto_venta_prueba`()
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_registrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_registrar_usuario`(IN cedula1 TEXT, IN nombres1 TEXT, IN apellidos1 TEXT, IN telefono1 TEXT, IN convencional1 TEXT, IN correo1 TEXT, 
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_respaldo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_respaldo_usuario`(IN cedula1 TEXT,IN nombres1 TEXT,IN apellidos1 TEXT,IN telefono1 TEXT,
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fc_ruc_local` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fc_ruc_local`(in valor text, out salida text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filtroProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filtroProducto`(IN consu TEXT)
BEGIN
	SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FiltroRangoFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltroRangoFecha`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FiltroRangoFecha2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltroRangoFecha2`(
IN op INT,IN Fecha1 DATETIME, IN Fecha2 DATETIME
)
BEGIN
IF op=1 THEN 
select distinct
pr.id_producto,
p.nombre,
p.descripcion,
SUM(dc.cantidad) AS `cantidad_comprado`,
SUM(dc.total) AS `total`
from cabecera_compra cp
join detalle_compra dc on dc.id_cabecera_compra=cp.id_cabecera_compra
join precios pr on pr.id_precio = dc.id_precio
join productos p on p.id_productos=pr.id_producto
join pagos pg on cp.id_tipoPago = pg.id_pagos
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2
order by cantidad_comprado desc;
END IF; 
IF op=2 THEN 
	select distinct
pr.id_producto,
p.nombre,
p.descripcion,
SUM(dc.cantidad) AS `cantidad_comprado`,
SUM(dc.total) AS `total`
from cabecera_compra cp
join detalle_compra dc on dc.id_cabecera_compra=cp.id_cabecera_compra
join precios pr on pr.id_precio = dc.id_precio
join productos p on p.id_productos=pr.id_producto
join pagos pg on cp.id_tipoPago = pg.id_pagos
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2
order by cantidad_comprado desc;
END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FiltroRangoFecha3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltroRangoFecha3`(
IN op INT,IN Fecha1 DATETIME, IN Fecha2 DATETIME
)
BEGIN
IF op=1 THEN 
	select distinct
p.id_productos,
p.nombre,
p.descripcion,
SUM(dv.cantidad) AS cantidad_venta,
SUM(cv.total) AS total
from cabecera_venta cv
join detalle_venta dv on dv.id_cabecera_venta=cv.id
join precios pr on pr.id_precio = dv.id_control
join productos p on p.id_productos=pr.id_producto
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2,3
order by cantidad_venta desc;
END IF; 
IF op=2 THEN 
	select distinct
p.id_productos,
p.nombre,
p.descripcion,
SUM(dv.cantidad) AS cantidad_venta,
SUM(cv.total) AS total
from cabecera_venta cv
join detalle_venta dv on dv.id_cabecera_venta=cv.id
join precios pr on pr.id_precio = dv.id_control
join productos p on p.id_productos=pr.id_producto
where fecha_creacion between (fecha1)and(fecha2)
GROUP BY 1,2,3
order by cantidad_venta desc;
END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FiltrosProductosNota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FiltrosProductosNota`(IN Buscar_Producto TEXT,IN accion TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getComboPrecios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getComboPrecios`(IN op BIGINT, IN id BIGINT,OUT valor DOUBLE(5,2))
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLocalidadComboGuayas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLocalidadComboGuayas`(IN op BIGINT,IN id BIGINT, OUT valor TEXT)
BEGIN
    SET valor='';
	IF op=1 THEN 
	 SELECT DISTINCT (t.`localidad`) INTO valor
	FROM `fc_punto_venta` p
	JOIN `fc_localidad_guayas` t ON t.`id_localidad_guayas`= p.`id_localidad_guayas`
	WHERE p.`id_punto_venta`= id;
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNombreComboProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getNombreComboProducto`(IN op BIGINT,IN id BIGINT, OUT valor TEXT,OUT valord DOUBLE)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresarProducto`(in codigo1 varchar(13),IN nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN fecha_registro1 DATE,IN peso1 DOUBLE(7,2),IN id_tipo1 BIGINT(20), 
IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_usuario1 BIGINT,IN iva1 VARCHAR(15),IN cantidad_minima1 BIGINT,IN receta1 VARCHAR(45),IN unidade1 BIGINT, OUT valor1 TEXT)
BEGIN
	DECLARE nr INT; 
DECLARE id_pro INT; 
IF (nombre1='' OR descripcion1=''OR fecha_registro1='' OR peso1='' OR id_tipo1='' OR id_medidas1='' OR id_envase1='' OR id_marcas1='') THEN 
SET valor1 ='campos invalidos2'; 
ELSE 
INSERT INTO `productos` (codigo_barras, `nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`, 
`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`,`receta`,`unidades`) 
VALUES(codigo1,nombre1,descripcion1,fecha_registro1,peso1,id_tipo1,id_medidas1,id_envase1,id_marcas1,'A',id_usuario1,iva1,cantidad_minima1,receta1,unidade1); 
SET id_pro = (SELECT EncontrarID (nombre1,id_marcas1,id_medidas1,id_tipo1)); 
INSERT INTO `detalle_faltantes`(`id_producto`,`fecha_registro`,`cantidad`,`estado`) VALUES (id_pro,fecha_registro1,0,'NO'); 
SET valor1 ='exito'; 
END IF; 
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresarProductoConvertidor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresarProductoConvertidor`(IN nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN fecha_registro1 DATE,IN peso1 DOUBLE(7,2),IN id_tipo1 BIGINT(20),
	IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_usuario1 BIGINT,IN iva1 VARCHAR(15),IN cantidad_minima1 BIGINT, OUT valor1 TEXT)
BEGIN
	DECLARE id_pro INT;
	INSERT INTO `productos` (`nombre`,`descripcion`,`fecha_registro`,`peso`,`id_tipo`,
	`id_medidas`,`id_envase`,`id_marcas`,`estado`,`id_usuario`,`iva`,`cantidad_minima`)
	VALUES(nombre1,descripcion1,fecha_registro1,peso1,id_tipo1,id_medidas1,id_envase1,id_marcas1,'A',id_usuario1,iva1,cantidad_minima1);
	SET id_pro = (SELECT `id_productos` FROM `productos` WHERE `nombre`= nombre1 AND `descripcion`= descripcion1 AND `id_tipo`= id_tipo1 AND `id_medidas` = id_medidas1 AND `id_envase`= id_envase1 AND `id_marcas` =id_marcas1);
	INSERT INTO `detalle_faltantes`(`id_producto`,`fecha_registro`,`cantidad`,`estado`) VALUES (id_pro,fecha_registro1,0,'NO');
	SET valor1 = id_pro;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresoDePrecios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoDePrecios`(IN op BIGINT, id_producto1 BIGINT,IN precio_compra2 DOUBLE(5,2),IN precio_venta3 DOUBLE(5,2),
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `iniciar_sesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `iniciar_sesion`(IN correo1 TEXT,IN password1 TEXT,IN ip_equipo1 TEXT, /*ip_publico1 text,*/ IN usuario_equipo1 TEXT, OUT salida TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertaBitacoraFaltantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertaBitacoraFaltantes`(IN id_detalle_faltantes1 BIGINT(20), 
IN fecha_registro1 DATETIME,
IN cantidad1 INT
)
BEGIN
INSERT INTO `bitacora_faltantes` (`id_detalle_faltantes`,`fecha_registro`,`cantidad`)
	VALUES(id_detalle_faltantes1,fecha_registro1,cantidad1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarCabceraCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCabceraCompras`(in id_proveedor2 bigint,in id_usuario3 bigint,
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
	
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarCabeceraNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCabeceraNotaPedido`(IN id_proveedor1 BIGINT,IN id_usuario2 BIGINT,IN fecha_creacion3 DATETIME,
    IN plazo5 VARCHAR(45), IN forma_pago6 VARCHAR(45),IN iva7 DOUBLE, IN descuento8 DOUBLE,IN total9 DOUBLE, OUT valor TEXT)
BEGIN
	INSERT INTO `cabecera_nota_pedidos`(`id_proveedor`,`id_usuario`,`fecha_creacion`,`estado`,`plazo`,`forma_pago`,`iva`,`descuento`,`total`)
	VALUES (id_proveedor1,id_usuario2,fecha_creacion3,'SI',plazo5,forma_pago6,iva7,descuento8,total9);
	
	SET valor =(SELECT `id_cabecera_nota_pedidos` FROM `cabecera_nota_pedidos` WHERE `id_proveedor`=id_proveedor1 AND `id_usuario`=id_usuario2 AND
	`fecha_creacion`=fecha_creacion3 AND `estado`='SI' AND `plazo`= plazo5 AND `forma_pago`=forma_pago6 AND `iva`=iva7 AND 
	`descuento`=descuento8 AND `total`= total9);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarCabeceraVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCabeceraVentas`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarClientes`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarCorreo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCorreo`( 
IN tipo_correo1 INT ,
IN correo TEXT,
IN cedula1 TEXT 
)
BEGIN
INSERT INTO proveedor_mail(id_tipo_correo, mail, cedula_ruc)
VALUES ( tipo_correo1, correo,cedula1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarCorreoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCorreoCliente`( 
IN cedula1 TEXT, 
IN correo TEXT,
OUT msg TEXT)
BEGIN
 
INSERT INTO Correo ( Correo, Cedula)
VALUES ( correo, cedula1);
SET msg = 'Correo guardado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarDetalleCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarDetalleCompras`(in id_cabecera_compra1 bigint,in id_precio2 bigint,
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarDetalleVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDetalleVentas`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarEnvaseProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarEnvaseProducto`(IN nombre1 VARCHAR(80), OUT valor1 TEXT)
BEGIN
	DECLARE nr INT;
	IF (nombre1='') THEN
	SET valor1 ='campos invalidos';
	ELSE
	SET nr = (SELECT validarEnvaseProducto(nombre1));
	IF(nr<1) THEN 
	INSERT INTO envase (`nombre`,`estado`) VALUES (nombre1,'A');
	SET valor1 ='exito';
	ELSE
	SET valor1 ='ya existe';
	END IF;
	END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarLab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarLab`(in ruc1 text, in nombre1 text, in direccion1 text, in telefono1 text,
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarMarcaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarMarcaProducto`(IN nombre1 VARCHAR(80), OUT valor1 TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarMedidaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarMedidaProducto`(IN nombre_medida1 VARCHAR(80), OUT valor1 TEXT)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarProveedor`(IN id_proveedor_clase1 BIGINT,IN cedula2 VARCHAR(15),
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarTelefono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTelefono`(
IN id_Tipo_Telefono1 INT,
IN numero TEXT,
IN cedula1 TEXT)
BEGIN
INSERT INTO proveedor_telefono( id_tipo_telefono,telefono, cedula_ruc)
VALUES ( id_Tipo_Telefono1, numero, cedula1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarTelefonoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTelefonoCliente`(
IN cedula1 TEXT,
IN id_Tipo_Telefono1 INT,
IN numero TEXT,
OUT msg TEXT)
BEGIN
INSERT INTO Telefono ( id_Tipo_Telefono,Numero, Cedula)
VALUES ( id_Tipo_Telefono1, numero, cedula1);
SET msg = 'Telefono guardado!!';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarTipoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTipoProducto`(in nombre1 varchar(80), out valor1 text)
BEGIN
	declare nr int;
	if (nombre1='') then
	set valor1 ='campos invalidos';
	else
	set nr = (SELECT validarTipoProducto(nombre1));
	if(nr<1) then 
	insert into tipo (`nombre`,`estado`) values (nombre1,'A');
	set valor1 ='exito';
	else
	set valor1 ='ya existe';
	end if;
	end if;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Envase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Envase`(in nombre_f text, out salida text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_fecha_caducidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_fecha_caducidad`(in fecha_cad date,in cod_det bigint,out valor text)
BEGIN

  UPDATE detalle_nota_pedidos SET fecha_caducidad = fecha_cad WHERE id_detalle_nota_pedidos=cod_det;
  set valor = 'exito';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_iva`(IN iva1 DOUBLE, IN id_usuario1 INT, OUT msg TEXT)
BEGIN
	update iva set est = 'I';
	INSERT INTO iva(iva,fecha,id_usuario,est)VALUES(iva1,NOW(),id_usuario1,'A');
    SET msg = 'Valor Agregado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Tipo`(in nombre_f text, out salida text)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `libreTransaccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `libreTransaccion`(IN consu text)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaComboLocalidadr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaComboLocalidadr`()
BEGIN
	SELECT `id_localidad_guayas`,`localidad` FROM `fc_localidad_guayas` ORDER BY `localidad` ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarClientes`()
BEGIN
select * from Clientes order by Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarClientesVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarClientesVentas`(
IN op INT
)
BEGIN
    IF op=1 THEN 
        SELECT clientes.id_Clientes AS  Codigo,clientes.Cedula AS Cedula,clientes.Nombre AS Nombre, clientes.Apellido AS Apellido, clientes.Direccion AS Direccion,
        clientes.str_telefono AS Telefono, clientes.str_correo AS Correo 
        from clientes 
        where clientes.Estado = 'A';
    
    end IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarComboEnvasePro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboEnvasePro`()
BEGIN
	SELECT `id_envase`,`nombre` FROM`envase` where estado='A' ORDER BY nombre;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarComboIva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboIva`()
BEGIN
    SELECT `id_iva`,`iva`,`fecha`,`id_usuario`,`est` FROM `iva` WHERE est = 'A';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarComboMarcaPro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboMarcaPro`()
BEGIN
	SELECT `id_marcas`,`nombre` FROM marcas WHERE estado = 'A' ORDER BY nombre;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarComboMedidaPro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboMedidaPro`()
BEGIN
	SELECT `id_medidas`,`nombre_medida` FROM `medidas` WHERE estado = 'A'ORDER BY nombre_medida ;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarComboTipoPro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarComboTipoPro`()
BEGIN
	SELECT `id_tipo`,`nombre` FROM `tipo` where estado='A' order by nombre;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarCorreo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarCorreo`(in cedula1 text)
BEGIN
select * from Correo where Cedula = cedula1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarFaltantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarFaltantes`(in op int,in id_cabecera_faltantes1 bigint)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarfaltantesEnNota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarfaltantesEnNota`(IN op INT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarJoinProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductos`(in op int)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarJoinProductosFaltantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarJoinProductosFaltantes`(in op int)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarLaboratorio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarLaboratorio`()
BEGIN
select * from laboratorio order by Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarPoductosCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPoductosCompras`(IN op INT)
BEGIN
    IF op=1 THEN
      SELECT p.`id_productos`,p.`codigo_barras`,p.`nombre`,p.`descripcion`,p.`fecha_registro`,p.`peso`,p.`id_tipo`,t.`nombre`AS tipo,p.`id_medidas`,m.`nombre_medida` AS medida,
      p.`id_envase`,e.`nombre`AS envase ,p.`id_marcas`,ma.`nombre` AS marca, p.id_usuario, p.iva , p.cantidad_minima,p.`receta`,p.`unidades`
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarPrecioNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarPrecioNotaPedido`(in op int,in id_producto1 bigint)
BEGIN
    select pre.id_precio,p.nombre,p.descripcion,pre.id_producto,pre.precio_compra,pre.estado as estado_precio
    ,p.id_productos,p.fecha_registro,p.peso
    ,p.id_tipo,p.id_medidas,p.id_envase,p.id_marcas,p.estado as estado_producto,p.iva
    ,pre.fecha_registro as fecha_RegistroPrecio
    from precios pre
    inner join productos p on p.id_productos = pre.id_producto
    where id_producto = id_producto1 and pre.estado = 'A';
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarProductosStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarProductosStock`(in op bigint)
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
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarProductosVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProductosVentas`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProveedor`(IN op BIGINT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarPuntoVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarPuntoVenta`()
BEGIN
	SELECT pv.id_punto_venta, pv.nombre, lg.localidad, pv.direccion,  pv.observacion FROM fc_localidad_guayas lg, fc_punto_venta pv WHERE lg.id_localidad_guayas= pv.id_localidad_guayas;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarRegistroDeNotas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDeNotas`(IN op INT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarRegistroDetalleNotaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDetalleNotaPedido`(IN op INT,in id text)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarRegistroDetalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroDetalleVenta`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarRegistroVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarRegistroVenta`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarTelefono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarTelefono`(in cedula1 text)
BEGIN
select * from Telefono where Cedula = cedula1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `llamarIVAactual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llamarIVAactual`(OUT valor TEXT)
BEGIN
	SET valor = (SELECT `iva` FROM`iva` WHERE `est`='A');
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificarProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarProductos`(in nombre1 VARCHAR(45),IN descripcion1 VARCHAR(80),IN peso1 DOUBLE(7,2),
    IN id_tipo1 BIGINT(20),IN id_medidas1 BIGINT(20),IN id_envase1 BIGINT(20),IN id_marcas1 BIGINT(20),IN id_productos1 BIGINT(20),
    IN id_usuario1 BIGINT, IN iva1 VARCHAR(2), IN cantidad_minima1 BIGINT,in receta1 text,in unidade1 bigint, OUT valor TEXT)
BEGIN
    IF (nombre1='' OR descripcion1='' OR peso1='' OR id_tipo1='' OR id_medidas1='' OR id_envase1='' OR id_marcas1=''
    OR id_usuario1='' OR iva1='' OR cantidad_minima1='')THEN
    SET valor = 'campos invalidos';
    ELSE 
	UPDATE productos SET nombre = nombre1,descripcion = descripcion1,peso=peso1 ,id_tipo= id_tipo1,
	`id_medidas`= id_medidas1,`id_envase`=id_envase1,`id_marcas`=id_marcas1,`id_usuario`=id_usuario1,
	`iva`=iva1,`cantidad_minima`=cantidad_minima1 ,`receta`= receta1 ,`unidades` = unidade1 WHERE id_productos =id_productos1;
    SET valor = 'Producto actualizado';
    END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_iva`()
BEGIN
SELECT * FROM iva WHERE est = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_usuario`()
BEGIN
SELECT `fc_session`.`id_sesion`, `fc_usuario`.`fecha_registro`, `fc_usuario`.`cedula`, `fc_usuario`.`apellidos`, `fc_usuario`.`nombres`, 
`fc_usuario`.`direccion`, `fc_usuario`.`telefono`, `fc_usuario`.`convencional`, `fc_usuario`.`correo`, `fc_rol`.`cargo`, 
`fc_genero`.`genero`, `fc_discapacidad`.`discapacidad`, `fc_porcentaje_discapacidad`.`porcentaje`, `fc_session`.`estado`, `fc_session`.`observacion` 
FROM `fc_usuario` INNER JOIN `fc_session` ON `fc_usuario`.`id_usuario` = `fc_session`.`id_usuario` 
INNER JOIN `fc_rol` ON `fc_rol`.`id_rol` = `fc_session`.`id_rol` 
INNER JOIN `fc_genero` ON `fc_genero`.`id_genero` = `fc_usuario`.`id_genero` 
INNER JOIN `fc_discapacidad` ON `fc_discapacidad`.`id_discapacidad` = `fc_usuario`.`id_discapacidad` 
INNER JOIN `fc_porcentaje_discapacidad` ON `fc_porcentaje_discapacidad`.`id_porcentaje_discapacidad` = `fc_usuario`.`id_porcentaje_discapacidad`;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevo_punto_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_punto_venta`(nombre_localidad1 TEXT,nombre_local1 TEXT,  direccion1 TEXT,dir_ip1 TEXT, OUT salida TEXT)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_usuario`(IN nombre_punto_venta1 TEXT, IN nombre_rol1 TEXT,IN  cedula1 TEXT,IN nombre1 TEXT,IN apellido1 TEXT,IN telefono1 TEXT,IN correo1 TEXT, IN password1 TEXT,IN password2 TEXT,IN ruta_imagen1 TEXT,IN id_usuario1 BIGINT,IN ip_equipo1 TEXT,IN ip_publica1 TEXT,IN usuario_equipo1 TEXT,IN dir_ip_completa1 TEXT /*,out salida text*/)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_usuario`()
BEGIN
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Tipo_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Tipo_Producto`()
BEGIN
select tipo.id_tipo, tipo.nombre from moduloprueba.tipo where estado = 'A' order by tipo.id_tipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `universal_sentences` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `universal_sentences`(IN consu TEXT)
BEGIN
    SET @query = CONCAT(consu);
    PREPARE statement FROM @query;       -- Preparar query.
    EXECUTE statement;                   -- Ejecutar query.
    DEALLOCATE PREPARE statement;        -- Eliminar query alojado en memoria.
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `faltantes_previo`
--

/*!50001 DROP VIEW IF EXISTS `faltantes_previo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `faltantes_previo` AS select `pr`.`id_productos` AS `id_productos`,`mr`.`nombre` AS `marca`,`pr`.`nombre` AS `nombre`,`pr`.`descripcion` AS `descripcion`,`pr`.`cantidad_minima` AS `cantidad_minima`,sum(`s`.`cantidad`) AS `total` from (((`stock` `s` join `precios` `p` on((`s`.`id_precio` = `p`.`id_precio`))) join `productos` `pr` on((`p`.`id_producto` = `pr`.`id_productos`))) join `marcas` `mr` on((`mr`.`id_marcas` = `pr`.`id_marcas`))) group by `pr`.`id_productos`,`mr`.`nombre`,`pr`.`nombre` order by `mr`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-15 19:48:41
