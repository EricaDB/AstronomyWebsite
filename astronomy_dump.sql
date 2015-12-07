-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: ix.cs.uoregon.edu    Database: astronomy
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `asteroid`
--

DROP TABLE IF EXISTS `asteroid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asteroid` (
  `asteroid_id` int(11) NOT NULL,
  `designation` varchar(32) DEFAULT NULL,
  `diameter` decimal(6,2) DEFAULT NULL,
  `distance_ly` decimal(5,3) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`asteroid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asteroid`
--

LOCK TABLES `asteroid` WRITE;
/*!40000 ALTER TABLE `asteroid` DISABLE KEYS */;
INSERT INTO `asteroid` (`asteroid_id`, `designation`, `diameter`, `distance_ly`, `year_discovered`, `researcher_id`, `class`, `picture_id`) VALUES (1,'1 Ceres',946.00,2.766,1801,10,'G',1),(2,'4 Vesta',525.00,2.362,1807,11,'V',2),(3,'2 Pallas',512.00,2.773,1802,11,'B',NULL),(4,'10 Hygiea',431.00,3.139,1849,12,'C',NULL),(5,'704 Interamnia',326.00,3.062,1910,13,'F',NULL),(6,'52 Europa',315.00,3.095,1858,14,'C',NULL),(7,'511 Davida',289.00,3.168,1903,15,'C',NULL),(8,'87 Sylvia',286.00,3.485,1866,16,'X',NULL),(9,'65 Cybele',273.00,3.439,1861,18,'C',NULL),(10,'15 Eunomia',268.00,2.643,1851,12,'S',NULL),(11,'259 Aletheia',190.00,3.135,1886,19,'CP/X',NULL),(12,'31 Euphrosyne',256.00,3.149,1854,20,'C',NULL),(13,'624 Hektor',241.00,5.235,1907,21,'D',NULL),(14,'88 Thisbe',232.00,2.769,1866,19,'B',NULL),(15,'324 Bamberga',229.00,2.684,1892,22,'C',NULL),(16,'6 Hebe',186.00,2.426,1847,23,'S',NULL),(17,'532 Herculina',222.00,2.772,1904,24,'S',NULL),(18,'48 Doris',222.00,3.108,1857,14,'C',NULL),(19,'16 Psyche',186.00,2.924,1852,12,'M',NULL),(20,'107 Camilla',215.00,3.476,1868,16,'C',NULL);
/*!40000 ALTER TABLE `asteroid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comet`
--

DROP TABLE IF EXISTS `comet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comet` (
  `comet_id` int(11) NOT NULL,
  `designation` varchar(16) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `orbital_period_y` decimal(8,2) DEFAULT NULL,
  `last_appearance` int(11) DEFAULT NULL,
  `next_appearance` int(11) DEFAULT NULL,
  `visible_naked_eye` tinyint(1) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comet`
--

LOCK TABLES `comet` WRITE;
/*!40000 ALTER TABLE `comet` DISABLE KEYS */;
INSERT INTO `comet` (`comet_id`, `designation`, `name`, `researcher_id`, `year_discovered`, `orbital_period_y`, `last_appearance`, `next_appearance`, `visible_naked_eye`, `picture_id`) VALUES (1,'1P/Halley','Halley\'s Comet',6,1705,75.30,1986,2061,1,3),(2,'C/1906 V1','Thiele',7,1906,110.00,1906,2021,0,NULL),(3,'C/1917 F1','Mellish',8,1917,145.00,1917,2062,0,NULL),(4,'P/1997 B1','Kobayashi',9,1997,25.17,1997,2022,0,NULL),(5,'C/2001 OG108','LONEOS',1,2001,48.50,2002,2050,0,NULL),(6,'C/1942 EA','Vaisala',2,1942,85.40,1942,2027,0,NULL),(7,'C/1680 V1','Great Comet of 1680',3,1680,9400.00,1680,11080,1,4),(8,'C/2000 S3','LONEOS',1,2000,39.97,2000,2040,0,NULL),(9,'C/2007 S2','Lemmon',4,2007,44.45,2008,2053,0,NULL),(10,'C/2014 W11','PANSTARRS',5,2014,106000.00,2013,108014,0,NULL),(11,'C/2011 L4','PANSTARRS',5,2011,30.75,2015,2036,0,NULL);
/*!40000 ALTER TABLE `comet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constellation`
--

DROP TABLE IF EXISTS `constellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constellation` (
  `constellation_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `family` varchar(32) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`constellation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constellation`
--

LOCK TABLES `constellation` WRITE;
/*!40000 ALTER TABLE `constellation` DISABLE KEYS */;
INSERT INTO `constellation` (`constellation_id`, `name`, `family`, `picture_id`) VALUES (1,'Aquarius','Zodiac',5),(2,'Aries','Zodiac',6),(3,'Cancer','Zodiac',7),(4,'Caproconus','Zodiac',8),(5,'Gemini','Zodiac',9),(6,'Leo','Zodiac',10),(7,'Libra','Zodiac',11),(8,'Pisces','Zodiac',12),(9,'Sagittarius','Zodiac',13),(10,'Scorpius','Zodiac',14),(11,'Taurus','Zodiac',15),(12,'Virgo','Zodiac',16),(13,'Bootes','Ursa Major',17),(14,'Camelopardalis','Ursa Major',18),(15,'Canes Venatici','Ursa Major',19),(16,'Coma Berenicies','Ursa Major',20),(17,'Corona Borealis','Ursa Major',21),(18,'Draco','Ursa Major',22),(19,'Leo Minor','Ursa Major',23),(20,'Lynx','Ursa Major',24),(21,'Ursa Major','Ursa Major',25),(22,'Ursa Minor','Ursa Major',26),(23,'Andromeda','Perseus',NULL),(24,'Auriga','Perseus',27),(25,'Cassiopeia','Perseus',28),(26,'Cepheus','Perseus',29),(27,'Cetus','Perseus',30),(28,'Lacerta','Perseus',31),(29,'Pegasus','Perseus',32),(30,'Perseus','Perseus',33),(31,'Triangulum','Perseus',34),(32,'Canis Major','Orion',35),(33,'Canis Minor','Orion',36),(34,'Lepus','Orion',37),(35,'Monoceros','Orion',38),(36,'Orion','Orion',39),(37,'Antlia','La Caille',40),(38,'Caelum','La Caille',41),(39,'Circinus','La Caille',42),(40,'Fornax','La Caille',43),(41,'Horologium','La Caille',44),(42,'Mensa','La Caille',45),(43,'Microscopium','La Caille',46),(44,'Norma','La Caille',47),(45,'Octans','La Caille',48),(46,'Pictor','La Caille',49),(47,'Reticulum','La Caille',50),(48,'Sculptor','La Caille',51),(49,'Telescopium','La Caille',52),(50,'Aquila','Hercules',53),(51,'Ara','Hercules',54),(52,'Centaurus','Hercules',55),(53,'Corona Australis','Hercules',56),(54,'Corvus','Hercules',57),(55,'Crater','Hercules',58),(56,'Crux','Hercules',59),(57,'Cygnus','Hercules',60),(58,'Hercules','Hercules',61),(59,'Hydra','Hercules',62),(60,'Lupus','Hercules',63),(61,'Lyra','Hercules',64),(62,'Ophiuchus','Hercules',65),(63,'Sagitta','Hercules',66),(64,'Scutum','Hercules',67),(65,'Serpens','Hercules',68),(66,'Sextans','Hercules',69),(67,'Triangulum Australe','Hercules',70),(68,'Vulpecula','Hercules',71),(69,'Carina','Heavenly Waters',72),(70,'Columba','Heavenly Waters',73),(71,'Delphinus','Heavenly Waters',74),(72,'Equuleus','Heavenly Waters',75),(73,'Eridanus','Heavenly Waters',76),(74,'Piscis Austrinus','Heavenly Waters',77),(75,'Puppis','Heavenly Waters',78),(76,'Pyxis','Heavenly Waters',79),(77,'Vela','Heavenly Waters',80),(78,'Apus','Bayer',81),(79,'Chamaeleon','Bayer',82),(80,'Dorado','Bayer',83),(81,'Grus','Bayer',84),(82,'Hydrus','Bayer',85),(83,'Indus','Bayer',86),(84,'Musca','Bayer',87),(85,'Pavo','Bayer',88),(86,'Phoenix','Bayer',89),(87,'Tucana','Bayer',90),(88,'Volans','Bayer',91);
/*!40000 ALTER TABLE `constellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxy`
--

DROP TABLE IF EXISTS `galaxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galaxy` (
  `galaxy_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `constellation_id` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `size_ly` int(11) DEFAULT NULL,
  `distance_mly` decimal(5,3) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`galaxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galaxy`
--

LOCK TABLES `galaxy` WRITE;
/*!40000 ALTER TABLE `galaxy` DISABLE KEYS */;
INSERT INTO `galaxy` (`galaxy_id`, `name`, `group_id`, `constellation_id`, `researcher_id`, `year_discovered`, `size_ly`, `distance_mly`, `picture_id`) VALUES (1,'Milky Way',1,NULL,NULL,NULL,10000,0.027,92),(2,'Canis Major Dwarf',1,32,NULL,2003,NULL,0.025,NULL),(3,'Sagittarius Dwarf',1,9,NULL,1994,10000,0.081,NULL),(4,'Ursa Major II Dwarf',1,21,NULL,2006,NULL,0.098,NULL),(5,'Large Magellanic Cloud',1,80,40,964,14000,0.163,93),(6,'Bootes I',1,13,NULL,NULL,NULL,0.197,NULL),(7,'Small Magellanic Cloud',1,87,NULL,NULL,7000,0.206,94),(8,'Ursa Minor Dwarf',1,22,41,1955,NULL,0.206,NULL),(9,'Draco Dwarf',1,18,41,1954,NULL,0.258,95),(10,'NGC 2419',1,20,25,1788,NULL,0.275,96),(11,'Andromeda',1,23,39,1612,220000,2.560,97),(12,'UGC 9240',2,13,38,1959,15000,9.100,98);
/*!40000 ALTER TABLE `galaxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxy_group`
--

DROP TABLE IF EXISTS `galaxy_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galaxy_group` (
  `group_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `distance_ly` double DEFAULT NULL,
  `naked_eye` tinyint(1) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galaxy_group`
--

LOCK TABLES `galaxy_group` WRITE;
/*!40000 ALTER TABLE `galaxy_group` DISABLE KEYS */;
INSERT INTO `galaxy_group` (`group_id`, `name`, `distance_ly`, `naked_eye`, `picture_id`) VALUES (1,'Local Group',NULL,1,99),(2,'M81 Group',11400000,1,100),(3,'M94 Group',13000000,0,NULL),(4,'Centaurus A Group',11900000,1,101),(5,'Sculptor Group',12700000,0,NULL),(6,'BoRG 58',13100000000,0,102);
/*!40000 ALTER TABLE `galaxy_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moon`
--

DROP TABLE IF EXISTS `moon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moon` (
  `moon_id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `orbital_period_d` decimal(8,4) DEFAULT NULL,
  `diameter_km` decimal(6,2) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`moon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moon`
--

LOCK TABLES `moon` WRITE;
/*!40000 ALTER TABLE `moon` DISABLE KEYS */;
INSERT INTO `moon` (`moon_id`, `name`, `planet_id`, `researcher_id`, `year_discovered`, `orbital_period_d`, `diameter_km`, `picture_id`) VALUES (1,'The Moon',3,NULL,NULL,27.3210,3474.00,103),(2,'Phobos',4,29,1877,0.3180,22.50,104),(3,'Deimos',4,29,1877,1.2630,12.40,105),(4,'Ganymede',5,30,-365,7.1540,5262.40,106),(5,'Callisto',5,31,1610,16.6890,4820.60,107),(6,'Io',5,31,1610,1.7691,3660.00,108),(7,'Europa',5,31,1610,3.5512,3121.60,109),(8,'Titan',6,32,1655,16.0000,5150.00,110),(9,'Rhea',6,33,1672,4.5180,1527.00,111),(10,'Iapetus',6,33,1671,79.0000,1470.00,112),(11,'Dione',6,33,1684,2.7000,1123.00,113),(12,'Tethys',6,33,1684,1.9000,1062.00,114),(13,'WASP-12b\'s moon',13,NULL,2012,NULL,NULL,NULL);
/*!40000 ALTER TABLE `moon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nebula`
--

DROP TABLE IF EXISTS `nebula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nebula` (
  `nebula_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `constellation_id` int(11) DEFAULT NULL,
  `diameter_ly` int(11) DEFAULT NULL,
  `distance_ly` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nebula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nebula`
--

LOCK TABLES `nebula` WRITE;
/*!40000 ALTER TABLE `nebula` DISABLE KEYS */;
INSERT INTO `nebula` (`nebula_id`, `name`, `type`, `constellation_id`, `diameter_ly`, `distance_ly`, `researcher_id`, `year_discovered`, `picture_id`) VALUES (1,'Coalsack Nebula','dark nebula',56,64,600,42,1499,115),(2,'Cone Nebula','dark nebula',35,8,2700,25,1785,116),(3,'Dark Doodad Nebula','dark nebula',84,NULL,NULL,43,1986,117),(4,'Dark Horse Nebula','dark nebula',62,NULL,NULL,NULL,NULL,118),(5,'Sagittarius A East','supernova remnant',9,25,26000,NULL,NULL,NULL),(6,'Cygnus Loop','supernova remnant',57,90,1470,NULL,NULL,119),(7,'Puppis A','supernova remnant',75,100,7000,44,1971,120),(8,'w50','supernova remnant',50,NULL,18000,NULL,NULL,121),(9,'Barnard\'s Loop','diffuse nebula',25,150,1600,45,1894,122),(10,'Witch Head Nebula','reflection nebula',73,NULL,900,NULL,NULL,123);
/*!40000 ALTER TABLE `nebula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `picture_id` int(11) NOT NULL,
  `path` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` (`picture_id`, `path`) VALUES (1,'astronomy_pictures/asteroid_1.jpg'),(2,'astronomy_pictures/asteroid_2.jpg'),(3,'astronomy_pictures/comet_1.jpg'),(4,'astronomy_pictures/comet_7.jpg'),(5,'astronomy_pictures/constellation_1.png'),(6,'astronomy_pictures/constellation_2.png'),(7,'astronomy_pictures/constellation_3.png'),(8,'astronomy_pictures/constellation_4.png'),(9,'astronomy_pictures/constellation_5.png'),(10,'astronomy_pictures/constellation_6.png'),(11,'astronomy_pictures/constellation_7.png'),(12,'astronomy_pictures/constellation_8.png'),(13,'astronomy_pictures/constellation_9.png'),(14,'astronomy_pictures/constellation_10.png'),(15,'astronomy_pictures/constellation_11.png'),(16,'astronomy_pictures/constellation_12.png'),(17,'astronomy_pictures/constellation_13.png'),(18,'astronomy_pictures/constellation_14.png'),(19,'astronomy_pictures/constellation_15.png'),(20,'astronomy_pictures/constellation_16.png'),(21,'astronomy_pictures/constellation_17.png'),(22,'astronomy_pictures/constellation_18.png'),(23,'astronomy_pictures/constellation_19.png'),(24,'astronomy_pictures/constellation_20.png'),(25,'astronomy_pictures/constellation_21.png'),(26,'astronomy_pictures/constellation_22.png'),(27,'astronomy_pictures/constellation_24.png'),(28,'astronomy_pictures/constellation_25.png'),(29,'astronomy_pictures/constellation_26.png'),(30,'astronomy_pictures/constellation_27.png'),(31,'astronomy_pictures/constellation_28.png'),(32,'astronomy_pictures/constellation_29.png'),(33,'astronomy_pictures/constellation_30.png'),(34,'astronomy_pictures/constellation_31.png'),(35,'astronomy_pictures/constellation_32.png'),(36,'astronomy_pictures/constellation_33.png'),(37,'astronomy_pictures/constellation_34.png'),(38,'astronomy_pictures/constellation_35.png'),(39,'astronomy_pictures/constellation_36.png'),(40,'astronomy_pictures/constellation_37.png'),(41,'astronomy_pictures/constellation_38.png'),(42,'astronomy_pictures/constellation_39.png'),(43,'astronomy_pictures/constellation_40.png'),(44,'astronomy_pictures/constellation_41.png'),(45,'astronomy_pictures/constellation_42.png'),(46,'astronomy_pictures/constellation_43.png'),(47,'astronomy_pictures/constellation_44.png'),(48,'astronomy_pictures/constellation_45.png'),(49,'astronomy_pictures/constellation_46.png'),(50,'astronomy_pictures/constellation_47.png'),(51,'astronomy_pictures/constellation_48.png'),(52,'astronomy_pictures/constellation_49.png'),(53,'astronomy_pictures/constellation_50.png'),(54,'astronomy_pictures/constellation_51.png'),(55,'astronomy_pictures/constellation_52.png'),(56,'astronomy_pictures/constellation_53.png'),(57,'astronomy_pictures/constellation_54.png'),(58,'astronomy_pictures/constellation_55.png'),(59,'astronomy_pictures/constellation_56.png'),(60,'astronomy_pictures/constellation_57.png'),(61,'astronomy_pictures/constellation_58.png'),(62,'astronomy_pictures/constellation_59.png'),(63,'astronomy_pictures/constellation_60.png'),(64,'astronomy_pictures/constellation_61.png'),(65,'astronomy_pictures/constellation_62.png'),(66,'astronomy_pictures/constellation_63.png'),(67,'astronomy_pictures/constellation_64.png'),(68,'astronomy_pictures/constellation_65.png'),(69,'astronomy_pictures/constellation_66.png'),(70,'astronomy_pictures/constellation_67.png'),(71,'astronomy_pictures/constellation_68.png'),(72,'astronomy_pictures/constellation_69.png'),(73,'astronomy_pictures/constellation_70.png'),(74,'astronomy_pictures/constellation_71.png'),(75,'astronomy_pictures/constellation_72.png'),(76,'astronomy_pictures/constellation_73.png'),(77,'astronomy_pictures/constellation_74.png'),(78,'astronomy_pictures/constellation_75.png'),(79,'astronomy_pictures/constellation_76.png'),(80,'astronomy_pictures/constellation_77.png'),(81,'astronomy_pictures/constellation_78.png'),(82,'astronomy_pictures/constellation_79.png'),(83,'astronomy_pictures/constellation_80.png'),(84,'astronomy_pictures/constellation_81.png'),(85,'astronomy_pictures/constellation_82.png'),(86,'astronomy_pictures/constellation_83.png'),(87,'astronomy_pictures/constellation_84.png'),(88,'astronomy_pictures/constellation_85.png'),(89,'astronomy_pictures/constellation_86.png'),(90,'astronomy_pictures/constellation_87.png'),(91,'astronomy_pictures/constellation_88.png'),(92,'astronomy_pictures/galaxy_1.jpg'),(93,'astronomy_pictures/galaxy_5.jpg'),(94,'astronomy_pictures/galaxy_7.jpg'),(95,'astronomy_pictures/galaxy_9.jpg'),(96,'astronomy_pictures/galaxy_10.jpg'),(97,'astronomy_pictures/galaxy_11.jpg'),(98,'astronomy_pictures/galaxy_12.jpg'),(99,'astronomy_pictures/galaxy_group_1.png'),(100,'astronomy_pictures/galaxy_group_2.jpg'),(101,'astronomy_pictures/galaxy_group_4.png'),(102,'astronomy_pictures/galaxy_group_6.jpg'),(103,'astronomy_pictures/moon_1.jpg'),(104,'astronomy_pictures/moon_2.jpg'),(105,'astronomy_pictures/moon_3.jpg'),(106,'astronomy_pictures/moon_4.jpg'),(107,'astronomy_pictures/moon_5.jpg'),(108,'astronomy_pictures/moon_6.jpg'),(109,'astronomy_pictures/moon_7.jpg'),(110,'astronomy_pictures/moon_8.jpg'),(111,'astronomy_pictures/moon_9.jpg'),(112,'astronomy_pictures/moon_10.jpg'),(113,'astronomy_pictures/moon_11.jpg'),(114,'astronomy_pictures/moon_12.jpg'),(115,'astronomy_pictures/nebula_1.jpg'),(116,'astronomy_pictures/nebula_2.jpg'),(117,'astronomy_pictures/nebula_3.jpg'),(118,'astronomy_pictures/nebula_4.jpg'),(119,'astronomy_pictures/nebula_6.jpg'),(120,'astronomy_pictures/nebula_7.jpg'),(121,'astronomy_pictures/nebula_8.jpg'),(122,'astronomy_pictures/nebula_9.jpg'),(123,'astronomy_pictures/nebula_10.jpg'),(124,'astronomy_pictures/planet_1.jpg'),(125,'astronomy_pictures/planet_2.jpg'),(126,'astronomy_pictures/planet_3.jpg'),(127,'astronomy_pictures/planet_4.jpg'),(128,'astronomy_pictures/planet_5.jpg'),(129,'astronomy_pictures/planet_6.jpg'),(130,'astronomy_pictures/planet_7.jpg'),(131,'astronomy_pictures/planet_8.jpg'),(132,'astronomy_pictures/planet_13.jpg'),(133,'astronomy_pictures/researcher_2.jpg'),(134,'astronomy_pictures/researcher_3.jpg'),(135,'astronomy_pictures/researcher_5.png'),(136,'astronomy_pictures/researcher_6.gif'),(137,'astronomy_pictures/researcher_8.jpg'),(138,'astronomy_pictures/researcher_10.jpg'),(139,'astronomy_pictures/researcher_11.jpg'),(140,'astronomy_pictures/researcher_12.gif'),(141,'astronomy_pictures/researcher_13.jpg'),(142,'astronomy_pictures/researcher_15.jpg'),(143,'astronomy_pictures/researcher_16.jpg'),(144,'astronomy_pictures/researcher_18.jpg'),(145,'astronomy_pictures/researcher_19.jpg'),(146,'astronomy_pictures/researcher_20.jpg'),(147,'astronomy_pictures/researcher_21.jpg'),(148,'astronomy_pictures/researcher_22.jpg'),(149,'astronomy_pictures/researcher_23.png'),(150,'astronomy_pictures/researcher_24.jpg'),(151,'astronomy_pictures/researcher_25.jpg'),(152,'astronomy_pictures/researcher_26.jpg'),(153,'astronomy_pictures/researcher_27.png'),(154,'astronomy_pictures/researcher_29.jpg'),(155,'astronomy_pictures/researcher_31.jpg'),(156,'astronomy_pictures/researcher_32.jpg'),(157,'astronomy_pictures/researcher_33.jpg'),(158,'astronomy_pictures/researcher_34.jpg'),(159,'astronomy_pictures/researcher_36.png'),(160,'astronomy_pictures/researcher_37.png'),(161,'astronomy_pictures/researcher_39.jpg'),(162,'astronomy_pictures/researcher_44.png'),(163,'astronomy_pictures/researcher_45.jpg'),(164,'astronomy_pictures/star_1.jpg'),(165,'astronomy_pictures/star_2.png'),(166,'astronomy_pictures/star_4.jpg'),(167,'astronomy_pictures/star_5.jpg'),(168,'astronomy_pictures/star_6.png'),(169,'astronomy_pictures/star_7.png'),(170,'astronomy_pictures/star_8.png'),(171,'astronomy_pictures/star_9.png'),(172,'astronomy_pictures/star_10.png'),(173,'astronomy_pictures/star_cluster_1.jpg'),(174,'astronomy_pictures/star_cluster_2.jpg'),(175,'astronomy_pictures/star_cluster_3.jpg'),(176,'astronomy_pictures/star_cluster_4.jpg'),(177,'astronomy_pictures/star_cluster_5.jpg'),(178,'astronomy_pictures/star_cluster_6.jpg'),(179,'astronomy_pictures/star_cluster_7.jpg'),(180,'astronomy_pictures/star_cluster_8.jpg'),(181,'astronomy_pictures/star_cluster_13.jpg'),(182,'astronomy_pictures/star_cluster_14.jpg'),(183,'astronomy_pictures/star_cluster_15.jpg'),(184,'astronomy_pictures/star_cluster_16.jpg'),(185,'astronomy_pictures/star_cluster_17.jpg'),(186,'astronomy_pictures/star_cluster_18.jpg'),(187,'astronomy_pictures/star_cluster_19.jpg'),(188,'astronomy_pictures/star_cluster_20.jpg'),(189,'astronomy_pictures/star_cluster_21.jpg'),(190,'astronomy_pictures/star_cluster_22.jpg'),(191,'astronomy_pictures/star_cluster_23.jpg'),(192,'astronomy_pictures/star_cluster_24.jpg'),(193,'astronomy_pictures/star_cluster_25.jpg'),(194,'astronomy_pictures/star_cluster_26.jpg'),(195,'astronomy_pictures/star_cluster_27.jpg'),(196,'astronomy_pictures/star_cluster_28.jpg'),(197,'astronomy_pictures/star_cluster_29.jpg'),(198,'astronomy_pictures/star_cluster_30.jpg'),(199,'astronomy_pictures/star_cluster_32.png'),(200,'astronomy_pictures/star_cluster_33.png'),(201,'astronomy_pictures/star_cluster_35.png'),(202,'astronomy_pictures/star_cluster_37.jpg'),(203,'astronomy_pictures/star_cluster_38.png'),(204,'astronomy_pictures/star_cluster_40.jpg'),(205,'astronomy_pictures/star_cluster_41.jpg'),(206,'astronomy_pictures/star_cluster_42.jpg'),(207,'astronomy_pictures/star_cluster_43.jpg'),(208,'astronomy_pictures/star_cluster_44.jpg'),(209,'astronomy_pictures/telescope_1.jpg'),(210,'astronomy_pictures/telescope_2.png'),(211,'astronomy_pictures/telescope_4.jpg'),(212,'astronomy_pictures/telescope_5.jpg'),(213,'astronomy_pictures/telescope_6.jpg'),(214,'astronomy_pictures/telescope_10.jpg');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planet`
--

DROP TABLE IF EXISTS `planet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planet` (
  `planet_id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `orbital_period_d` decimal(9,3) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `mass_earth_units` decimal(6,2) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`planet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planet`
--

LOCK TABLES `planet` WRITE;
/*!40000 ALTER TABLE `planet` DISABLE KEYS */;
INSERT INTO `planet` (`planet_id`, `name`, `orbital_period_d`, `researcher_id`, `year_discovered`, `mass_earth_units`, `picture_id`) VALUES (1,'Mercury',87.969,NULL,NULL,0.06,124),(2,'Venus',224.700,NULL,NULL,0.82,125),(3,'Earth',365.256,NULL,NULL,1.00,126),(4,'Mars',687.000,NULL,NULL,0.11,127),(5,'Jupiter',4332.590,NULL,NULL,317.80,128),(6,'Saturn',10759.220,NULL,NULL,95.20,129),(7,'Uranus',30687.150,25,1781,14.60,130),(8,'Neptune',60190.030,26,1846,17.20,131),(9,'Kepler-47b',49.500,27,2012,NULL,NULL),(10,'Kepler-47c',303.200,27,2012,NULL,NULL),(11,'hd 142b',349.700,28,2001,397.25,NULL),(12,'hd 142c',6005.000,28,2012,1684.34,NULL),(13,'WASP-12b',1.000,17,2008,441.74,132),(14,'Kepler-438b',35.230,37,2015,0.54,NULL);
/*!40000 ALTER TABLE `planet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researcher`
--

DROP TABLE IF EXISTS `researcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researcher` (
  `researcher_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `nationality` varchar(16) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`researcher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researcher`
--

LOCK TABLES `researcher` WRITE;
/*!40000 ALTER TABLE `researcher` DISABLE KEYS */;
INSERT INTO `researcher` (`researcher_id`, `name`, `nationality`, `picture_id`) VALUES (1,'Lowell Observatory Near-Earth-Object Search','United States',NULL),(2,'Yrjo Vaisala','Finnish',133),(3,'Gottfried Kirch','German',134),(4,'Mount Lemmon Survey (MLS)','United States',NULL),(5,'Panoramic Survey Telescope and Rapid Response System',NULL,135),(6,'Edmond Halley','English',136),(7,'Holger Thiele','Danish',NULL),(8,'John E. Mellish','United States',137),(9,'Takao Kobayashi','Japanese',NULL),(10,'Giuseppe Piazzi','Italian',138),(11,'Heinrich Wilhelm Matthias Olbers','German',139),(12,'Annibale de Gasparis','Italian',140),(13,'Vincenzo Cerulli','Italian',141),(14,'Hermann Mayer Salomon Goldschmidt','German',NULL),(15,'Raymond Smith Dugan','United States',142),(16,'Norman Robert Pogson','English',143),(17,'Wide Angle Search for Planets',NULL,NULL),(18,'Ernst Wilhelm Leberecht Tempel','German',144),(19,'Christian Heinrich Friedrich Peters','German',145),(20,'James Ferguson','United States',146),(21,'August Kopff','German',147),(22,'Johann Palisa','Austrian',148),(23,'Karl Ludwig Hencke','German',149),(24,'Max Wolf','German',150),(25,'William Herschel','German',151),(26,'Johann Galle','German',152),(27,'Tel-Aviv University','Israeli',153),(28,'Anglo-Australian Planet Search','Australian',NULL),(29,'Asaph Hall','United States',154),(30,'Gan De','Chinese',NULL),(31,'Galileo Galilei','Italian',155),(32,'Christiaan Huygens','Dutch',156),(33,'Giovanni Domenico Cassini','Italian',157),(34,'Harvard College Observatory','United States',158),(35,'Hubble Telescope',NULL,NULL),(36,'2MASS',NULL,159),(37,'NASA','United States',160),(38,'Sidney van der Bergh','Canadian',NULL),(39,'Simon Marius','German',161),(40,'Abd al-Rahman al-SufiShirazi','Persian',NULL),(41,'Lowell Observatory in the Palomar Sky Survey','United States',NULL),(42,'Vicente Yanez Pinzon','Spanish',NULL),(43,'Dennis di Cicco','United States',NULL),(44,'UK Space Agency','United Kingdom',162),(45,'Edward Emerson Barnard','United States',163);
/*!40000 ALTER TABLE `researcher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star` (
  `star_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `constellation_id` int(11) DEFAULT NULL,
  `solar_mass` decimal(7,3) DEFAULT NULL,
  `galaxy_id` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `distance_ly` decimal(12,6) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`star_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star`
--

LOCK TABLES `star` WRITE;
/*!40000 ALTER TABLE `star` DISABLE KEYS */;
INSERT INTO `star` (`star_id`, `name`, `constellation_id`, `solar_mass`, `galaxy_id`, `researcher_id`, `year_discovered`, `distance_ly`, `picture_id`) VALUES (1,'Sun',NULL,1.000,1,NULL,NULL,0.000016,164),(2,'Sirius A',32,2.020,1,NULL,NULL,8.600000,165),(3,'Sirius B',32,0.978,1,NULL,NULL,8.600000,165),(4,'Canopus',69,9.800,1,NULL,NULL,310.000000,166),(5,'Alpha Centauri',52,1.100,1,NULL,NULL,4.400000,167),(6,'Arcturus',13,1.080,1,NULL,NULL,37.000000,168),(7,'Vega',61,2.135,1,NULL,NULL,25.000000,169),(8,'Capella',24,2.690,1,NULL,NULL,42.000000,170),(9,'Rigel',36,21.000,1,NULL,NULL,860.000000,171),(10,'Procyon A',33,1.400,1,NULL,NULL,11.000000,172),(11,'Procyon B',33,0.600,1,NULL,NULL,11.000000,172),(12,'Achernar',73,6.700,1,NULL,NULL,140.000000,NULL),(13,'HD 142 A',86,1.250,1,NULL,NULL,84.000000,NULL),(14,'HD 142 B',86,0.590,1,34,1894,84.000000,NULL),(15,'R136a1',80,256.000,2,37,NULL,163000.000000,NULL),(16,'Keplar-47 Star A',57,NULL,1,37,2012,4900.000000,NULL),(17,'Kepler-47 Star B',57,NULL,1,37,2012,4900.000000,NULL),(18,'2MASS J0523-1403',34,0.080,1,36,2014,40.000000,NULL),(19,'WASP-12',24,1.350,1,NULL,NULL,871.000000,NULL),(20,'Kepler-438',61,NULL,1,37,NULL,470.000000,NULL);
/*!40000 ALTER TABLE `star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_cluster`
--

DROP TABLE IF EXISTS `star_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star_cluster` (
  `cluster_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `constellation_id` int(11) DEFAULT NULL,
  `distance_ly` decimal(16,6) DEFAULT NULL,
  `age_my` int(11) DEFAULT NULL,
  `diameter_ly` decimal(8,2) DEFAULT NULL,
  `brightness` decimal(4,2) DEFAULT NULL,
  `cluster_type` varchar(8) DEFAULT NULL,
  `galaxy_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_cluster`
--

LOCK TABLES `star_cluster` WRITE;
/*!40000 ALTER TABLE `star_cluster` DISABLE KEYS */;
INSERT INTO `star_cluster` (`cluster_id`, `name`, `constellation_id`, `distance_ly`, `age_my`, `diameter_ly`, `brightness`, `cluster_type`, `galaxy_id`, `picture_id`) VALUES (1,'Hyades',11,150.031760,625,330.00,0.50,'open',1,173),(2,'Coma',16,293.540400,400,120.00,1.80,'open',1,174),(3,'Butterfly (M 6)',10,1588.379720,94,20.00,4.20,'open',1,175),(4,'Messier 7',10,913.236800,224,80.00,3.30,'open',1,176),(5,'Wild Duck (M 11)',64,6197.000000,250,13.00,5.80,'open',1,177),(6,'Eagle Nebula (M 16)',65,5871.000000,1,6.00,6.00,'open',1,178),(7,'Messier 18',9,4227.000000,17,5.00,6.90,'open',1,179),(8,'Messier 21',9,3930.000000,12,14.00,5.90,'open',1,180),(9,'Messier 23',9,2048.259680,300,30.00,5.50,'open',1,NULL),(10,'Messier 24',9,10013.000000,220,90.00,4.60,'open',1,NULL),(11,'Messier 25',9,2022.167200,92,30.00,4.60,'open',1,NULL),(12,'Messier 26',64,5218.000000,85,7.00,8.00,'open',1,NULL),(13,'Messier 34',30,1627.518440,180,36.00,5.20,'open',1,181),(14,'Messier 35',5,2974.542720,180,25.00,5.00,'open',1,182),(15,'Messier 36',24,4338.000000,25,10.00,6.00,'open',1,183),(16,'Messier 37',24,4566.000000,347,14.00,5.60,'open',1,184),(17,'Messier 38',24,4566.000000,316,20.00,6.40,'open',1,185),(18,'Messier 39',57,1014.345160,280,30.00,4.60,'open',1,186),(19,'Messier 41',32,2315.707600,240,40.00,4.50,'open',1,187),(20,'Beehive (M 44)',3,521.849600,830,70.00,3.10,'open',1,188),(21,'Pleiades (M 45)',11,440.310600,125,120.00,1.20,'open',1,189),(22,'Messier 46',75,4925.000000,250,20.00,6.10,'open',1,190),(23,'Messier 47',75,1598.164400,73,25.00,4.40,'open',1,191),(24,'Messier 48',59,2511.401200,400,30.00,5.80,'open',1,192),(25,'Messier 50',35,3262.000000,130,14.00,5.90,'open',1,193),(26,'Messier 52',25,4566.000000,160,15.00,6.90,'open',1,194),(27,'Messier 67',3,2961.496480,4000,25.00,6.90,'open',1,195),(28,'Messier 93',75,3382.237720,390,10.00,6.20,'open',1,196),(29,'Messier 103',25,9785.000000,16,5.00,7.40,'open',1,197),(30,'Southern Pleiades (IC 2602)',69,479.449320,30,100.00,1.90,'open',1,198),(31,'IC 2391 (Omicron Velorum Cluster)',77,482.710880,30,60.00,2.50,'open',1,NULL),(32,'NGC 2451 A',75,616.434840,50,45.00,2.80,'open',1,199),(33,'Alpha Persei',30,652.312000,50,300.00,1.20,'open',1,200),(34,'Blanco 1',48,825.174680,100,90.00,4.50,'open',1,NULL),(35,'NGC 2232',35,1060.007000,53,45.00,3.90,'open',1,201),(36,'IC 4756',65,1076.314800,500,40.00,4.60,'open',1,NULL),(37,'NGC 2516 (Diamond Cluster)',69,1128.499760,141,30.00,3.80,'open',1,202),(38,'IC 4665',62,1148.069120,43,70.00,4.20,'open',1,203),(39,'Trumpler 10',77,1190.469400,35,14.00,4.60,'open',1,NULL),(40,'NGC 3532 (Wishing Well Cluster)',69,1320.931800,316,50.00,3.00,'open',1,204),(41,'Jewel Box (NGC 4755)',56,6445.000000,14,10.00,4.20,'open',1,205),(42,'Hodge 301',80,167644.000000,25,NULL,11.00,'open',5,206),(43,'NGC 3766 Pearl Cluster',52,5691.422200,NULL,5.00,5.30,'open',1,207),(44,'Mayall II',23,130000.000000,NULL,10.00,13.70,'globular',11,208);
/*!40000 ALTER TABLE `star_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_orbitted`
--

DROP TABLE IF EXISTS `star_orbitted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star_orbitted` (
  `star_id` int(11) NOT NULL,
  `planet_id` int(11) NOT NULL,
  PRIMARY KEY (`star_id`,`planet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_orbitted`
--

LOCK TABLES `star_orbitted` WRITE;
/*!40000 ALTER TABLE `star_orbitted` DISABLE KEYS */;
INSERT INTO `star_orbitted` (`star_id`, `planet_id`) VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(13,11),(13,12),(14,11),(14,12),(16,9),(16,10),(17,9),(17,10),(19,13),(20,14);
/*!40000 ALTER TABLE `star_orbitted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supernova`
--

DROP TABLE IF EXISTS `supernova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supernova` (
  `supernova_id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `constellation_id` int(11) DEFAULT NULL,
  `distance_ly` int(11) DEFAULT NULL,
  `galaxy_id` int(11) DEFAULT NULL,
  `naked_eye` tinyint(1) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`supernova_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supernova`
--

LOCK TABLES `supernova` WRITE;
/*!40000 ALTER TABLE `supernova` DISABLE KEYS */;
INSERT INTO `supernova` (`supernova_id`, `name`, `constellation_id`, `distance_ly`, `galaxy_id`, `naked_eye`, `note`) VALUES (1,'SN 185',52,8200,1,1,'Surviving description sketchy; modern estimates of maximum apparent magnitude vary from +4 to ?8. The remnant is probably RCW 86, some 8200 ly distant,[2]making it comparable to SN 1572. Some researchers have suggested it was a comet, not a supernova.'),(2,'SN 386',9,14700,1,1,'The candidate remnant is G11.2-0.3.'),(3,'SN 393',10,34000,1,1,'NULL'),(4,'SN 1006',60,7200,1,1,'Widely observed on Earth; in apparent magnitude, the brightest stellar event in recorded history.'),(5,'SN 1054',11,6500,1,1,'Remnant is the Crab Nebula with its pulsar (neutron star).'),(6,'SN 1181',25,8500,1,1,'NULL'),(7,'SN 1572',25,8000,1,1,'Tycho\'s Nova'),(8,'SN 1604',62,14000,1,1,'Kepler\'s Star; most recent readily visible supernova within the Milky Way.'),(9,'Cassiopeia A',25,9000,1,0,'Apparently never visually conspicuous, due to interstellar dust; but the remnant, Cas A, is the brightest extrasolar radio source in the sky.'),(10,'SNR G1.9+0.3',9,25000,1,0,'\"Posthumously\" discovered in 1985; age determined in 2008'),(11,'SN 1885A',23,2400000,11,0,'First observation of an extragalactic supernova'),(12,'SN 1987A',80,160000,5,0,'Intense radiation reached Earth on February 23, 1987, 7:35:35 UT. Notable for archival photos of progenitor star and detection of supernova neutrinos. Most recent Local Group supernova.');
/*!40000 ALTER TABLE `supernova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telescope`
--

DROP TABLE IF EXISTS `telescope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telescope` (
  `telescope_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `size_meters` decimal(8,4) DEFAULT NULL,
  `size_inches` decimal(8,2) DEFAULT NULL,
  `mirror_type` varchar(32) DEFAULT NULL,
  `sponsor` varchar(64) DEFAULT NULL,
  `site` varchar(64) DEFAULT NULL,
  `year_built` smallint(6) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`telescope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telescope`
--

LOCK TABLES `telescope` WRITE;
/*!40000 ALTER TABLE `telescope` DISABLE KEYS */;
INSERT INTO `telescope` (`telescope_id`, `name`, `size_meters`, `size_inches`, `mirror_type`, `sponsor`, `site`, `year_built`, `picture_id`) VALUES (1,'Gran Telescopio Canarias(GTC)',10.4000,409.00,'Segmented, 36','Spain (90%), Mexico, USA','Roque de los Muchachos Obs.,Canary Islands, Spain',2006,209),(2,'Keck 1',10.0000,394.00,'Segmented, 36','USA','Mauna Kea Observatories,Hawaii, USA',1993,210),(3,'Keck 2',10.0000,394.00,'Segmented, 36','USA','Mauna Kea Observatories,Hawaii, USA',1996,NULL),(4,'Southern African Large Telescope (SALT)',9.2000,362.00,'Segmented, 91','South Africa, USA, UK, Germany, Poland, New Zealand','South African Astronomical Obs.,Northern Cape, South Africa',2005,211),(5,'Hobby-Eberly Telescope',9.2000,362.00,'Segmented, 91','USA, Germany','McDonald Observatory, Texas, USA',1997,212),(6,'BTA-6',6.0000,238.00,'Reflector','Soviet Union','Zelenchukskaya, Caucasus',1976,213),(7,'Hans Lippershey\'s telescope',NULL,NULL,'Refractor','Hans Lippershey','Middelburg, theNetherlands',1608,NULL),(8,'Galileo\'s 1609 telescope [4]',0.0150,0.62,'Refractor','Galileo Galilei','Italy',1609,NULL),(9,'Christiaan Huygens 210 foot refractor',0.1900,7.50,'Refractor - Aerial telescope','Christiaan Huygens','Netherlands',1686,NULL),(10,'Leviathan of Parsonstown',1.8300,72.00,'Reflector - metal mirror','William Parsons','Birr Castle; Ireland',NULL,214);
/*!40000 ALTER TABLE `telescope` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-06 19:33:37
