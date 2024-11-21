-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: databaselab
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `highschoolstudent`
--

DROP TABLE IF EXISTS `highschoolstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `highschoolstudent` (
  `StudentID` int NOT NULL,
  `CurrentHighSchool` varchar(50) NOT NULL,
  `GradYear` varchar(50) NOT NULL,
  PRIMARY KEY (`StudentID`),
  CONSTRAINT `highschoolstudent_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highschoolstudent`
--

LOCK TABLES `highschoolstudent` WRITE;
/*!40000 ALTER TABLE `highschoolstudent` DISABLE KEYS */;
INSERT INTO `highschoolstudent` VALUES (1,'Cook, Thomas and Reyes','2024'),(2,'Crawford-Alvarez','2024'),(3,'Reed Ltd','2026'),(4,'Graham, Moran and Parsons','2024'),(5,'Griffith, Stein and Graham','2026'),(6,'Chen and Sons','2026'),(7,'Hooper, Padilla and Huber','2025'),(9,'Johnson, Snyder and Barajas','2024'),(10,'Schmitt-Romero','2025'),(11,'Holmes, Williams and Wood','2024'),(12,'Mcintosh Ltd','2026'),(13,'Oneal and Sons','2024'),(14,'Johnson Group','2025'),(15,'Walker-Garcia','2024'),(16,'Fisher PLC','2024'),(17,'Horton Inc','2026'),(18,'Morris LLC','2025'),(19,'Kennedy, Perez and Hayes','2025'),(20,'Hernandez-Bryant','2026'),(21,'Clark, Trujillo and Ford','2024'),(22,'Lopez LLC','2026'),(23,'Atkins PLC','2025'),(24,'Vega-Villegas','2025'),(25,'Elliott, Greene and Garrison','2024'),(26,'Reed Inc','2025'),(27,'Bell-Chang','2025'),(28,'Patrick, Evans and Hudson','2024'),(29,'Kidd-Vang','2025'),(30,'Serrano Ltd','2026'),(31,'Clarke-Lopez','2026'),(32,'Rogers-Herrera','2025'),(33,'Fisher Ltd','2024'),(34,'Garcia Inc','2025'),(35,'Sanchez LLC','2026'),(36,'Hill-Knox','2025'),(37,'Hart Ltd','2026'),(38,'Bauer-Hughes','2026'),(39,'Boyer, Mitchell and Nelson','2026'),(40,'Wilson-Cantu','2024'),(41,'Black Group','2026'),(42,'Owen-Singh','2024'),(43,'Pierce, Williams and White','2026'),(44,'House LLC','2024'),(45,'Wilkinson PLC','2025'),(46,'Hart, Washington and Byrd','2025'),(47,'Ward, Cox and Kirk','2025'),(48,'Beasley, Baker and Charles','2025'),(49,'Evans PLC','2026'),(50,'Miller, Douglas and Vaughn','2024'),(51,'Allen Inc','2024'),(52,'Watson-Young','2026'),(53,'Clarke, Patrick and Evans','2026'),(54,'Dunn, Lynch and Whitehead','2026'),(55,'Gonzalez, Payne and Jones','2025'),(56,'Cowan-Kelly','2025'),(57,'Hall Group','2025'),(58,'Powell LLC','2025'),(59,'Copeland and Sons','2024'),(60,'Chan, Myers and Harris','2024'),(61,'Osborne, Taylor and Nash','2025'),(62,'Phillips Inc','2024'),(63,'Perez-Coleman','2026'),(64,'Brown LLC','2025'),(65,'Bowen-Anderson','2025'),(66,'Wallace, Lyons and Smith','2025'),(67,'Walker LLC','2026'),(68,'Lucero-Watts','2024'),(69,'Harrison, Foster and Winters','2026'),(70,'Hall Inc','2026'),(71,'Green Ltd','2024'),(72,'Salazar-Bartlett','2026'),(73,'Winters Inc','2025'),(74,'Mcdowell, Black and Harris','2025'),(75,'Wells, Cox and Henderson','2026'),(76,'Phillips, Bradley and Wilson','2024'),(77,'Walsh LLC','2026'),(78,'Martin-Shea','2024'),(79,'Smith, Johnson and Rasmussen','2024'),(80,'Morton-Hunt','2024'),(81,'Vasquez, Sanchez and Ellis','2025'),(82,'Mathis Group','2024'),(83,'Garza Ltd','2024'),(84,'Hawkins, Perkins and Nguyen','2026'),(85,'Morrow, Dodson and Anderson','2025'),(86,'Mendoza PLC','2025'),(87,'Walsh-Rodriguez','2026'),(88,'Oliver, Kramer and Bishop','2025'),(89,'Wright-Conner','2024'),(90,'Benitez PLC','2025'),(91,'Flores Inc','2024'),(92,'Kent-Ramirez','2026'),(93,'Griffith-Price','2024'),(94,'Richards, Powell and Espinoza','2026'),(95,'Bailey, Green and Hogan','2026'),(96,'Hines, Francis and Francis','2024'),(97,'Silva, Yoder and Martin','2026'),(98,'Wood, Casey and Brown','2024'),(99,'Liu, Taylor and Ho','2025'),(100,'Newman, Peterson and Fox','2024'),(101,'Larson, Gregory and Fitzgerald','2025'),(102,'Garcia Group','2024'),(103,'Mclaughlin, Nguyen and Hamilton','2025'),(104,'Jenkins LLC','2026'),(105,'Hayes-Davis','2024'),(106,'Lewis, Knight and Medina','2026'),(107,'Crawford, Lindsey and Hubbard','2025'),(108,'Brooks Ltd','2026'),(109,'Greene, Parker and Delgado','2025'),(110,'Owens Ltd','2026'),(111,'Gibbs-Smith','2026'),(112,'Curry-Beck','2024'),(113,'Allen Group','2026'),(114,'Palmer, Matthews and Powell','2026'),(115,'Martinez Inc','2026'),(116,'Nelson, Young and Butler','2026'),(117,'Adams-Smith','2026'),(118,'Perez, Gibbs and Powell','2026'),(119,'Graham, Luna and Allen','2025'),(120,'Tate-Farrell','2026'),(121,'Sanchez and Sons','2026'),(122,'Reeves and Sons','2025'),(123,'Carroll-Russo','2024'),(124,'Mitchell, Hicks and Roberts','2024'),(125,'Gomez, Lewis and Dominguez','2026'),(126,'Horton, Garcia and Shaw','2026'),(127,'Hull, Schroeder and Jacobs','2024'),(128,'Hogan Ltd','2024'),(129,'Cook Group','2024'),(130,'Ramirez-Ward','2026'),(131,'Horton, Greer and Hill','2024'),(132,'Mclean-Cox','2024'),(133,'Nguyen, Skinner and Figueroa','2024'),(134,'Medina, Price and Gibson','2025'),(135,'Shields Ltd','2024'),(136,'Morales PLC','2026'),(137,'Howard, Jones and Dillon','2024'),(138,'Ryan-Stephenson','2024'),(139,'Williams and Sons','2024'),(140,'Taylor and Sons','2025'),(141,'Lara Ltd','2024'),(142,'Snyder-Cook','2024'),(143,'Solomon PLC','2024'),(144,'Carrillo and Sons','2026'),(145,'Robertson Inc','2024'),(146,'Jones-Hamilton','2025'),(147,'Dean and Sons','2024'),(148,'Weber LLC','2025'),(149,'Pacheco PLC','2024'),(150,'Vincent PLC','2026'),(151,'Johnson Ltd','2024'),(152,'Hensley-Davis','2025'),(153,'Conner-Henderson','2024'),(154,'Perez Group','2025'),(155,'Edwards, Kerr and Allen','2026'),(156,'Anthony PLC','2026'),(157,'Mills-Clark','2026'),(158,'Liu LLC','2025'),(159,'Roberts, Martin and Johnson','2026'),(160,'Hoover, Salazar and Franklin','2025'),(161,'Lopez, Brown and Elliott','2024'),(162,'Glover, Wyatt and Archer','2025'),(163,'Gibson and Sons','2024'),(164,'Smith Ltd','2026'),(165,'Webster, Cruz and Morgan','2024'),(166,'Walker-Larson','2025'),(167,'Allen LLC','2026'),(168,'Davis Group','2025'),(169,'Peck, Bradshaw and Wright','2025'),(170,'Santos, Turner and Oliver','2024'),(171,'Gonzalez-Hughes','2024'),(172,'Grant-Valencia','2024'),(173,'Carter Inc','2024'),(174,'Lopez-Brown','2026'),(175,'Smith-Chapman','2024'),(176,'Davis, Powell and Snyder','2024'),(177,'Ball Group','2026'),(178,'Lee, Harris and Hunter','2024'),(179,'Rivera-Henderson','2026'),(180,'Morales, Myers and Smith','2024'),(181,'Williamson-Pearson','2025'),(182,'Roach-Wise','2025'),(183,'Price, Garcia and Thompson','2024'),(184,'Ward Group','2024'),(185,'Lewis Ltd','2026'),(186,'Christensen, Wallace and Pugh','2024'),(187,'Williams Group','2024'),(188,'Lewis-Lewis','2024'),(189,'Morales-Haynes','2025'),(190,'Wells Group','2026'),(191,'Maxwell-Scott','2026'),(192,'White and Sons','2026'),(193,'Neal Ltd','2025'),(194,'Davis, Miller and Gonzalez','2025'),(195,'Petersen Inc','2024'),(196,'Holmes PLC','2025'),(197,'Hall, Swanson and Sosa','2026'),(198,'Lawson-Gray','2024'),(199,'Bradshaw, Morris and Charles','2026'),(200,'Williams, Carroll and Wu','2026'),(201,'Mason-Everett','2026'),(202,'Cisneros-Williams','2026'),(203,'Wall-Parrish','2025'),(204,'Gomez-Caldwell','2026'),(205,'Williams, Abbott and Duarte','2025'),(206,'Tran PLC','2025'),(207,'Taylor, Hurst and Carter','2024'),(208,'Gordon Ltd','2026'),(209,'Cook Ltd','2024'),(210,'Owen-Cooper','2024'),(211,'Thomas-Thompson','2024'),(212,'Lewis Group','2026'),(213,'Klein Group','2025'),(214,'Jackson, Price and Evans','2026'),(215,'Herrera PLC','2024'),(216,'Manning LLC','2025'),(217,'Smith and Sons','2025'),(218,'Vasquez, Graham and Evans','2025'),(219,'Reyes, Sanchez and Reyes','2024'),(220,'Davis Group','2024'),(221,'Adams, Romero and Bailey','2026'),(222,'Smith-Salazar','2026'),(223,'Callahan Group','2026'),(224,'Olson-Hartman','2026'),(225,'Perez and Sons','2024'),(226,'Padilla-Irwin','2024'),(227,'Shaw and Sons','2026'),(228,'White, Long and West','2026'),(229,'Fernandez Inc','2025'),(230,'Vega-Lee','2024'),(231,'Obrien Inc','2025'),(232,'Rodriguez LLC','2026'),(233,'Chavez Ltd','2025'),(234,'Mclaughlin-Cruz','2025'),(235,'Kelley, Kidd and Rocha','2025'),(236,'Brown, Brown and Warren','2024'),(237,'Salinas Group','2024'),(238,'Harvey Group','2026'),(239,'Campbell Inc','2026'),(240,'Flores Inc','2024'),(241,'Long, Smith and Williams','2024'),(242,'Rollins Inc','2026'),(243,'Garcia-Munoz','2024'),(244,'Powell LLC','2024'),(245,'Fleming Inc','2025'),(246,'Adams and Sons','2024'),(247,'Jones LLC','2024'),(248,'Pearson Ltd','2026'),(249,'Miller, Lam and Bennett','2026'),(250,'Perez, Wilkinson and Owen','2024'),(251,'West-Williams','2025'),(252,'Fuentes-Parsons','2026'),(253,'Jordan Inc','2025'),(254,'Werner PLC','2024'),(255,'Douglas, Torres and Aguilar','2025'),(256,'Curtis-Cruz','2026'),(257,'Farley Ltd','2025'),(258,'Mcclain LLC','2024'),(259,'Lucas-Chung','2024'),(260,'Boyer, Clark and Yoder','2026'),(261,'Gallagher, Bray and Smith','2025'),(262,'Mcgee, Mullins and Mays','2026'),(263,'Johnson, Sanders and Underwood','2025'),(264,'Adams and Sons','2026'),(265,'Harmon-Larson','2024'),(266,'Brown Inc','2024'),(267,'Cherry, Harris and Stevens','2024'),(268,'Copeland, Little and Mclean','2026'),(269,'Hall Group','2026'),(270,'Davenport Group','2026'),(271,'Odonnell, Williamson and Briggs','2025'),(272,'Weaver-Wallace','2025'),(273,'Watson-Curry','2024'),(274,'Haynes, Hughes and Houston','2024'),(275,'Palmer Inc','2024'),(276,'Pierce, Nelson and Gill','2026'),(277,'Howard, Flores and Lopez','2025'),(278,'Miller Group','2026'),(279,'Watson Ltd','2024'),(280,'Nguyen Group','2026'),(281,'Johnson-Blanchard','2026'),(282,'Flores, Boyd and Walker','2025'),(283,'Greer-Fischer','2026'),(284,'Wheeler Inc','2026'),(285,'Dunlap, Bailey and Horton','2026'),(286,'Roberts, Carter and Miller','2026'),(287,'Moore-Rios','2024'),(288,'Gray-Nguyen','2025'),(289,'Gilmore Group','2025'),(290,'Fernandez Group','2024'),(291,'Brown Inc','2026'),(292,'Estrada, Garcia and Little','2025'),(293,'Rodriguez-Hernandez','2025'),(294,'Vang PLC','2025'),(295,'Holt, Davis and Savage','2025'),(296,'Camacho Group','2026'),(297,'Reynolds-Johnson','2024'),(298,'Wyatt-Henderson','2024'),(299,'Gonzalez-Davis','2026'),(300,'Pearson Ltd','2026'),(301,'Mccarthy-Baker','2026'),(302,'Lynn PLC','2024'),(303,'Logan Inc','2025'),(304,'Gibson-Lee','2025'),(305,'Montoya-Miller','2026'),(306,'James, Cunningham and Gray','2025'),(307,'Marshall, Olson and Jackson','2026'),(308,'Orozco, Lee and Page','2026'),(309,'Jensen-Clay','2026'),(310,'Gill-Miller','2024'),(311,'Pope-Clark','2025'),(312,'Smith Ltd','2024'),(313,'Carter LLC','2024'),(314,'Carlson LLC','2026'),(315,'Miller-Foster','2025'),(316,'Phillips, Henry and Spencer','2025'),(317,'Palmer, Harrison and Murray','2024'),(318,'Nicholson-Smith','2024'),(319,'Merritt Group','2026'),(320,'Foley-Nielsen','2025'),(321,'Flowers Group','2026'),(322,'Moody-Solis','2026'),(323,'Woods, Jenkins and Garrett','2024'),(324,'Gardner-Reid','2026'),(325,'Perez-Wright','2024'),(326,'Collins and Sons','2025'),(327,'Morgan-Joseph','2026'),(328,'Rodriguez-Garcia','2025'),(329,'Dawson Group','2024'),(330,'Roman, Jordan and Shaw','2025'),(331,'Lang-Faulkner','2025'),(332,'Deleon-Perez','2024'),(333,'Duarte-Garcia','2024'),(334,'Archer-Weaver','2026'),(335,'Smith, Garner and Wright','2025'),(336,'Wilson, Williamson and Garcia','2024'),(337,'Gibson, Boyd and Barnes','2025'),(338,'Zuniga-Robinson','2024'),(339,'Adams-Davis','2026'),(340,'Greene, White and Downs','2026'),(341,'Parker Inc','2026'),(342,'Dean-Webb','2026'),(343,'Scott-Ferguson','2025'),(344,'Rivera Inc','2024'),(345,'Morris-Cook','2025'),(346,'Owens, Mcdaniel and Fox','2025'),(347,'Robbins LLC','2024'),(348,'Anderson-Daniels','2026'),(349,'Strong, Vasquez and Johnson','2026'),(350,'Lee-Nash','2024'),(351,'Gamble-Willis','2026'),(352,'Woodward PLC','2024'),(353,'Chan LLC','2025'),(354,'Ward-Warren','2024'),(355,'Daugherty, Wise and Alexander','2025'),(356,'Hernandez, Finley and Hall','2025'),(357,'George, Cooper and Kelley','2025'),(358,'Stafford and Sons','2025'),(359,'Griffin, Ramos and Daniels','2026'),(360,'Harper-Williams','2024'),(361,'Hardy and Sons','2024'),(362,'Mills Inc','2026'),(363,'Nichols Group','2025'),(364,'Vega, Dixon and Davis','2026'),(365,'Walker-Rocha','2025'),(366,'Shields-Ritter','2025'),(367,'Davis and Sons','2024'),(368,'Gregory-Garcia','2024'),(369,'Smith, Wilkinson and Franco','2026'),(370,'Taylor-Clayton','2026'),(371,'King Ltd','2025'),(372,'Young LLC','2025'),(373,'Jacobson and Sons','2024'),(374,'Rose and Sons','2024'),(375,'Bell, Thomas and Lopez','2025'),(376,'Jackson Ltd','2024'),(377,'Pham Ltd','2026'),(378,'Ho PLC','2024'),(379,'Allen Ltd','2026'),(380,'Williams, Meza and Smith','2024'),(381,'Cochran-Hart','2024'),(382,'Lewis, Perez and Horton','2026'),(383,'Gonzalez-Baker','2026'),(384,'King-Garcia','2024'),(385,'Robertson PLC','2025'),(386,'Baker PLC','2026'),(387,'Mitchell-Grant','2024'),(388,'Hurley LLC','2024'),(389,'Lewis-Baxter','2025'),(390,'Bryan PLC','2025'),(391,'Vaughn-Webster','2025'),(392,'Middleton, Davis and Davis','2026'),(393,'Brooks LLC','2026'),(394,'Oconnell-Thompson','2024'),(395,'Melton, Garcia and Frazier','2026'),(396,'Miller-Sullivan','2026'),(397,'Roberson and Sons','2026'),(398,'Banks and Sons','2026'),(399,'Vazquez PLC','2026'),(400,'Walsh Group','2025'),(401,'Johnson-Nixon','2026'),(402,'Hammond LLC','2025'),(403,'Gibson, Bell and Flynn','2026'),(404,'Barnett-Lewis','2025'),(405,'Coffey, Hughes and Douglas','2025'),(406,'Gilbert-Bates','2026'),(407,'Shields-Bartlett','2024'),(408,'Munoz, Wilson and Cameron','2025'),(409,'Stewart Ltd','2025'),(410,'Sampson LLC','2025'),(411,'Brown-Vega','2025'),(412,'Johnson LLC','2024'),(413,'Rice PLC','2024'),(414,'Beck Group','2024'),(415,'Harris, Hansen and Ortega','2025'),(416,'Rodriguez-Kim','2026'),(417,'Ruiz Ltd','2026'),(418,'Green-Barrera','2025'),(419,'Johnson-Ferguson','2026'),(420,'Kelly-Conner','2024'),(421,'Watts Ltd','2024'),(422,'Parker-Sanchez','2025'),(423,'Garcia-Salinas','2026'),(424,'Garcia PLC','2025'),(425,'Mathis PLC','2025'),(426,'Fox LLC','2025'),(427,'Montoya Inc','2025'),(428,'Thomas-Fletcher','2025'),(429,'Berger-Perkins','2024'),(430,'Moore-Rich','2025'),(431,'Woodward-Alvarez','2026'),(432,'Gomez, Burke and Davis','2026'),(433,'Morris LLC','2025'),(434,'Sanders PLC','2025'),(435,'Torres Ltd','2024'),(436,'Wright Ltd','2026'),(437,'Williams-Taylor','2026'),(438,'Stanton, Stone and Burton','2024'),(439,'Nelson-Santiago','2024'),(440,'Harris-Mullins','2026'),(441,'Kelly, Mitchell and Woods','2026'),(442,'Mcdonald, Davis and Gonzalez','2025'),(443,'Hart PLC','2026'),(444,'Lara-Huber','2026'),(445,'Sanchez-Roberts','2026'),(446,'Berry-Adams','2025'),(447,'Trujillo-Anderson','2026'),(448,'Wilson, Cooper and Parker','2026'),(449,'Stephens, Nguyen and Jones','2025'),(450,'Fletcher Group','2024'),(451,'Nielsen and Sons','2024'),(452,'Neal, Ward and Herrera','2024'),(453,'Burton PLC','2026'),(454,'Sanchez, Jackson and Bishop','2025'),(455,'Bell and Sons','2026'),(456,'Rogers, Lee and Wolf','2026'),(457,'Hall-Ross','2026'),(458,'Gray Inc','2026'),(459,'Navarro, Smith and Garcia','2026'),(460,'Graham, Holmes and Mack','2026'),(461,'Morrison-Smith','2026'),(462,'Thomas, Henderson and Garrison','2025'),(463,'Vasquez and Sons','2024'),(464,'Bailey LLC','2025'),(465,'Howard, Collier and Moreno','2024'),(466,'Maxwell, Moore and Griffin','2026'),(467,'Ortiz, Skinner and Lawrence','2026'),(468,'Smith-Franklin','2026'),(469,'Herrera, Erickson and Noble','2026'),(470,'Jackson-Allison','2024'),(471,'Fuller-Olson','2024'),(472,'Simmons Group','2025'),(473,'Brown PLC','2024'),(474,'Cooper, Frank and Cunningham','2024'),(475,'Taylor PLC','2024'),(476,'Baker Ltd','2026'),(477,'Ellis-Sullivan','2025'),(478,'Evans-Richmond','2025'),(479,'Shea-Barber','2024'),(480,'Nelson PLC','2024'),(481,'Jones LLC','2024'),(482,'Harvey-Ortiz','2026'),(483,'Lopez and Sons','2024'),(484,'Fernandez, Richmond and Clark','2024'),(485,'Monroe, Mendez and Martinez','2026'),(486,'Anderson and Sons','2025'),(487,'Stevens Ltd','2025'),(488,'Jackson, Webb and Ferguson','2026'),(489,'Wyatt-Nguyen','2024'),(490,'Tucker Ltd','2024'),(491,'Mcdonald-Washington','2024'),(492,'Tran, Kelly and Torres','2025'),(493,'Anderson, Jones and Miller','2026'),(494,'Adams-Owens','2026'),(495,'Cooley Group','2025'),(496,'Reyes LLC','2026'),(497,'Cohen, Mccarthy and Carter','2026'),(498,'Dominguez PLC','2026'),(499,'Rogers PLC','2025'),(500,'Schultz, Riley and Rubio','2024'),(501,'Smith Ltd','2024'),(502,'Baird-Wood','2024'),(503,'Williams-Townsend','2025'),(504,'White-Porter','2025'),(505,'Baker LLC','2024'),(506,'Nelson LLC','2026'),(507,'Freeman, Ortiz and Duncan','2024'),(508,'Long LLC','2025'),(509,'Hopkins, Watson and Harris','2024'),(510,'Hughes Group','2024'),(511,'Smith-King','2025'),(512,'Ellis Group','2024'),(513,'Roberts, Irwin and Wells','2024'),(514,'Sanders, Phillips and Clark','2026'),(515,'Salazar, Collins and Gonzalez','2025'),(516,'Phillips PLC','2026'),(517,'West, Thornton and Barnes','2026'),(518,'Garcia Inc','2025'),(519,'Steele, Morales and Turner','2024'),(520,'Molina Ltd','2026'),(521,'Blevins LLC','2024'),(522,'Mendoza, Miller and Bates','2026'),(523,'Patrick-Prince','2024'),(524,'Davis, Callahan and Porter','2025'),(525,'Berry, Kim and Smith','2025'),(526,'Richardson, Williams and Reynolds','2024'),(527,'Lewis, Patterson and Odom','2024'),(528,'Fry, Anderson and King','2026'),(529,'Butler, Johnson and Anderson','2024'),(530,'Raymond-Weaver','2024'),(531,'Carroll, Lewis and Nelson','2026'),(532,'Sanchez, Stewart and White','2026'),(533,'Francis Ltd','2024'),(534,'Chung, Washington and Young','2025'),(535,'Tate PLC','2025'),(536,'Anderson-Cox','2024'),(537,'Ward-Miller','2025'),(538,'Terry, Williamson and Barnett','2024'),(539,'Oliver, Jackson and Harrison','2026'),(540,'Sexton, King and Dominguez','2026'),(541,'Rodriguez, Garcia and Martinez','2025'),(542,'Robinson-May','2024'),(543,'Rowe PLC','2026'),(544,'Torres, Chan and Arnold','2026'),(545,'Padilla, Harvey and Cook','2024'),(546,'Floyd, Walker and Hunt','2026'),(547,'Wilson Inc','2025'),(548,'Mason-Carr','2025'),(549,'Vargas-Nguyen','2025'),(550,'Mclean Group','2024'),(551,'Higgins and Sons','2026'),(552,'Hamilton-Hancock','2025'),(553,'Beard Ltd','2025'),(554,'Miller-King','2026'),(555,'Hebert, Deleon and Campbell','2024'),(556,'Russell, Hale and Gross','2026'),(557,'Webster, Boyd and Fischer','2024'),(558,'Castillo LLC','2025'),(559,'Wright PLC','2026'),(560,'Lawson, Scott and Medina','2024'),(561,'Perez, Smith and Rodriguez','2024'),(562,'Watts, Morris and Morris','2024'),(563,'Keller, Clark and Merritt','2025'),(564,'Gonzalez, Campbell and Dean','2024'),(565,'Watson, Crawford and Salazar','2024'),(566,'Bryant, Powers and Paul','2024'),(567,'Reed-Wilcox','2024'),(568,'Allen and Sons','2026'),(569,'Sparks, Perez and Hanna','2024'),(570,'Johnson and Sons','2026'),(571,'Carpenter, Baldwin and Morris','2024'),(572,'Mendoza PLC','2024'),(573,'Ingram LLC','2026'),(574,'Scott Inc','2025'),(575,'Sandoval-Harrison','2026'),(576,'Decker PLC','2025'),(577,'Alvarado, Frey and Williams','2026'),(578,'Powell-Jackson','2026'),(579,'Graham-Wilson','2025'),(580,'Herman-Beard','2026'),(581,'Williams-Yoder','2024'),(582,'Hicks and Sons','2025'),(583,'Russell, Brown and Cisneros','2024'),(584,'Valdez-Jones','2026'),(585,'Calhoun LLC','2025'),(586,'Gutierrez and Sons','2024'),(587,'Khan, Jones and Daniels','2026'),(588,'Ramirez LLC','2025'),(589,'Chang LLC','2026'),(590,'Lee PLC','2024'),(591,'Grant, Christensen and Archer','2024'),(592,'Townsend-Russell','2024'),(593,'Garrison Inc','2024'),(594,'Torres and Sons','2025'),(595,'Johnson, Frye and Proctor','2026'),(596,'Parsons LLC','2025'),(597,'Mcmillan, Green and Boyer','2024'),(598,'Hall, Williams and Wolf','2024'),(599,'Jimenez Group','2024'),(600,'Wells, Smith and Holmes','2025'),(601,'Manning and Sons','2026'),(602,'Goodwin-Ford','2026'),(603,'Smith LLC','2026'),(604,'Salazar, Gomez and Armstrong','2024'),(605,'Patrick-Kaiser','2024'),(606,'Haynes, Riley and Green','2024'),(607,'Rivera LLC','2024'),(608,'Graham, Moore and Sutton','2025'),(609,'Robinson-Thomas','2026'),(610,'Lee Group','2026'),(611,'Ramirez, Hawkins and Tucker','2026'),(612,'Gilbert-Solis','2024'),(613,'Kennedy-Allison','2025'),(614,'Johnson LLC','2025'),(615,'Hale-Rodriguez','2025'),(616,'Gonzalez, Marshall and Robbins','2026'),(617,'Mejia, Boyd and Gibson','2024'),(618,'Jackson-Barnett','2024'),(619,'Griffith-Santos','2024'),(620,'Mcguire LLC','2026'),(621,'Patel, Cross and Jones','2025'),(622,'Robinson, King and Smith','2025'),(623,'Williams, Williams and Fields','2025'),(624,'Conley LLC','2025'),(625,'Hall-Ruiz','2026'),(626,'Dickson-Mitchell','2025'),(627,'Owen, Johnson and Rodriguez','2026'),(628,'Terry Ltd','2025'),(629,'Nelson-Le','2024'),(630,'Simmons LLC','2025'),(631,'Ortiz Ltd','2025'),(632,'Morgan Ltd','2024'),(633,'Rosario, Riley and Bell','2024'),(634,'Oneal Inc','2025'),(635,'Smith, Brown and Dillon','2025'),(636,'Harris, Lang and Rice','2025'),(637,'Phillips, Castro and Huynh','2024'),(638,'Sanders, Owens and Russo','2024'),(639,'Sullivan Inc','2026'),(640,'Kelly LLC','2024'),(641,'Keller-Oconnell','2026'),(642,'Herring Inc','2025'),(643,'Jones-Gallegos','2024'),(644,'Vazquez Ltd','2026'),(645,'Ali-Cunningham','2025'),(646,'Young and Sons','2025'),(647,'Gonzalez Ltd','2024'),(648,'Conrad and Sons','2025'),(649,'Young Inc','2025'),(650,'Ferguson, Murphy and Warren','2024'),(651,'Wise-Smith','2024'),(652,'Anderson Inc','2024'),(653,'Jones, Vargas and Oneill','2026'),(654,'Lee, Peters and Moore','2025'),(655,'Barnes LLC','2026'),(656,'Blankenship-Crawford','2026'),(657,'Franklin Group','2024'),(658,'Hughes-Zavala','2024'),(659,'Frazier Inc','2026'),(660,'Jackson Group','2026'),(661,'Melendez-Wilson','2026'),(662,'Maynard, Berger and Wade','2024'),(663,'Castaneda-Young','2024'),(664,'Schmidt LLC','2026'),(665,'Marshall-Barton','2026'),(666,'Rojas-Irwin','2025'),(667,'Molina, Jones and Rojas','2024'),(668,'Bell-Wiggins','2025'),(669,'Cisneros-Rowe','2025'),(670,'Campbell PLC','2025'),(671,'Campbell Ltd','2025'),(672,'Owens-Garza','2024'),(673,'Savage Inc','2026'),(674,'Cannon and Sons','2025'),(675,'Wilkerson LLC','2024'),(676,'Rogers, Green and Kelly','2024'),(677,'Summers, Wilson and Wallace','2024'),(678,'Turner and Sons','2026'),(679,'Camacho, Evans and Evans','2025'),(680,'Peterson PLC','2025'),(681,'Smith, Thompson and Lawrence','2025'),(682,'Hodges, Howe and Jackson','2026'),(683,'Manning, Weber and Thompson','2026'),(684,'Miranda and Sons','2026'),(685,'Pierce-Hawkins','2024'),(686,'Mcintosh-Simpson','2024'),(687,'Olson, Hodge and Marquez','2024'),(688,'Lopez Inc','2025'),(689,'Jones, Bryant and Molina','2024'),(690,'Avery-Perry','2026'),(691,'Jacobs-Monroe','2024'),(692,'Ellis, Jones and Hampton','2025'),(693,'Ball, Robbins and Pace','2025'),(694,'Leon Group','2024'),(695,'Chavez-Martinez','2026'),(696,'Hood, Maynard and Hoffman','2024'),(697,'Pineda-Valencia','2026'),(698,'Brown LLC','2026'),(699,'Oconnor Inc','2026'),(700,'Hopkins Ltd','2024'),(701,'Anderson PLC','2026'),(702,'Carlson, Daniels and Miller','2026'),(703,'Sanchez-Olson','2024'),(704,'Howard-Gregory','2025'),(705,'Brown and Sons','2025'),(706,'Adams-Jackson','2026'),(707,'Ramos, Page and Hickman','2026'),(708,'Wilson, Perkins and Bailey','2024'),(709,'Kemp, Hopkins and Villanueva','2026'),(710,'Martin-Perez','2025'),(711,'West, Warren and Bowers','2025'),(712,'Turner-Roth','2024'),(713,'Rivera LLC','2026'),(714,'Gutierrez-Miller','2025'),(715,'Castro PLC','2024'),(716,'Myers, Smith and Reyes','2025'),(717,'Anderson-Allen','2024'),(718,'Bray-Dixon','2026'),(719,'Mcbride-Snow','2026'),(720,'Ware, Lewis and Martinez','2025'),(721,'Cohen, Bell and Brooks','2025'),(722,'Riley, Murphy and Herrera','2026'),(723,'Burke-Brown','2026'),(724,'Stone-Mitchell','2025'),(725,'Hunt-Bauer','2024'),(726,'Williamson and Sons','2024'),(727,'Elliott, Moore and Fox','2024'),(728,'Browning-Pena','2026'),(729,'Craig-Rodriguez','2024'),(730,'Harris LLC','2024'),(731,'Vaughn LLC','2025'),(732,'Richards, Hayes and Davis','2024'),(733,'Bell-Thomas','2025'),(734,'Rivera LLC','2025'),(735,'Cummings-Barrett','2026'),(736,'Bailey, Zimmerman and Gonzalez','2024'),(737,'Wilson, Ross and Ortega','2024'),(738,'Rodriguez PLC','2025'),(739,'Torres LLC','2026'),(740,'Young, Gomez and Duke','2026'),(741,'Harding-Allen','2024'),(742,'Wilkinson Inc','2025'),(743,'Brown-Ellison','2026'),(744,'Norris-Kelley','2026'),(745,'Gallagher, Delgado and Benton','2026'),(746,'Guerrero LLC','2025'),(747,'Thomas-Hood','2024'),(748,'Adams Ltd','2025'),(749,'Cain PLC','2024'),(750,'Johnson, Martinez and Johnson','2025'),(751,'Moran-Martin','2024'),(752,'Moore-Santana','2026'),(753,'Doyle, Smith and Maddox','2025'),(754,'Smith, Jones and Marshall','2025'),(755,'Reed-Rivera','2026'),(756,'Mills, Robinson and Jones','2024'),(757,'Obrien-Thomas','2025'),(758,'Arellano, Hunter and Foster','2025'),(759,'Doyle, Nunez and Deleon','2026'),(760,'Peterson-Jones','2025'),(761,'Norris-Bennett','2026'),(762,'Williams LLC','2025'),(763,'Morgan, Wright and Ward','2026'),(764,'Ray Inc','2025'),(765,'Johnson-Kaufman','2026'),(766,'Smith, Fisher and Grimes','2025'),(767,'Garrett-Bartlett','2026'),(768,'Oliver, Thomas and Brown','2026'),(769,'Green-Miller','2026'),(770,'Rowe-Beck','2026'),(771,'Montes Inc','2024'),(772,'Sullivan-Fleming','2025'),(773,'Farrell-Garcia','2025'),(774,'Garcia PLC','2025'),(775,'Campbell, Jackson and Gould','2025'),(776,'Nichols, Lynn and Meyer','2024'),(777,'Montgomery and Sons','2025'),(778,'Rice LLC','2025'),(779,'Newman Group','2025'),(780,'Welch Group','2025'),(781,'Marshall-Parks','2026'),(782,'Keller Ltd','2024'),(783,'Weaver-Mullins','2024'),(784,'Alvarez-Roy','2024'),(785,'Alvarado, Cook and Cruz','2024'),(786,'Wilkins-Snyder','2024'),(787,'Ortiz Ltd','2025'),(788,'Nelson, Lawrence and Erickson','2024'),(789,'Gonzales, Hernandez and Powers','2024'),(790,'Morrison, Booker and Keller','2025'),(791,'Harrell-Jackson','2024'),(792,'Moore-Taylor','2026'),(793,'Ramirez Inc','2025'),(794,'Alvarado, Wolf and Jones','2025'),(795,'Jones and Sons','2024'),(796,'Hernandez, Gilbert and Bradley','2026'),(797,'Fernandez-Schwartz','2025'),(798,'Brown, Stout and Mendoza','2026'),(799,'Allen-Jackson','2024'),(800,'Carlson Group','2026'),(801,'Michael PLC','2024'),(802,'Mann and Sons','2024'),(803,'Reeves-Scott','2024'),(804,'Harmon-Everett','2026'),(805,'Carter-Wilson','2026'),(806,'Phillips, Chavez and Mills','2024'),(807,'Mann, Hansen and Patel','2025'),(808,'Thompson Inc','2025'),(809,'Brown Group','2025'),(810,'Rojas, Jones and Preston','2026'),(811,'Anderson-Hall','2026'),(812,'Martinez Ltd','2024'),(813,'Powell-Mendez','2025'),(814,'Thomas PLC','2025'),(815,'Martin Group','2026'),(816,'Young-Hayes','2026'),(817,'Williams, Flores and Moore','2026'),(818,'Garner-Jackson','2026'),(819,'Rogers-Evans','2024'),(820,'Clark, Webster and Sanchez','2024'),(821,'Hunter, Warner and Kelley','2024'),(822,'Hall, Long and Torres','2024'),(823,'Robinson, Larson and Sanchez','2026'),(824,'Rose Ltd','2024'),(825,'Williams-Sharp','2025'),(826,'Washington-Jackson','2025'),(827,'Tyler-Kemp','2026'),(828,'Jones-Hatfield','2025'),(829,'Ayala, Hernandez and Moore','2026'),(830,'Lawson Ltd','2025'),(831,'Yates-Hubbard','2025'),(832,'Jensen-Walker','2024'),(833,'Gonzalez LLC','2026'),(834,'Flores, Romero and Harding','2024'),(835,'Martinez, Berry and Brown','2024'),(836,'Morton, Edwards and Perez','2024'),(837,'Johnson Ltd','2026'),(838,'Campos-Lozano','2024'),(839,'Pruitt LLC','2024'),(840,'Rodgers-Ortiz','2026'),(841,'Burgess-Robles','2026'),(842,'Hill LLC','2024'),(843,'Velazquez PLC','2024'),(844,'Crosby Ltd','2026'),(845,'Wood LLC','2025'),(846,'Chan, Ramos and Duncan','2025'),(847,'Murillo-Doyle','2026'),(848,'Sutton, Greer and Harris','2025'),(849,'Romero-Cox','2026'),(850,'Murray PLC','2024'),(851,'Stout, Stone and Hall','2026'),(852,'Williams and Sons','2024'),(853,'Kennedy-Green','2026'),(854,'Page-Martinez','2024'),(855,'Dunn, Barrera and Crosby','2026'),(856,'Lee Group','2025'),(857,'Thompson, Lutz and Allen','2026'),(858,'Hayes and Sons','2025'),(859,'Carter Group','2026'),(860,'Mason Ltd','2024'),(861,'Roberts-Guerra','2026'),(862,'Brown-Torres','2025'),(863,'Jackson-Williams','2026'),(864,'Bradshaw Ltd','2026'),(865,'Andrews-Odom','2024'),(866,'Erickson-Brown','2025'),(867,'Higgins, Phelps and Russell','2024'),(868,'Russell-Fletcher','2024'),(869,'Greer, Garcia and Fisher','2024'),(870,'Sanchez-Simmons','2025'),(871,'Nichols Group','2025'),(872,'Johnson Group','2026'),(873,'May, Bruce and Johnson','2024'),(874,'Burton, Jordan and Harrison','2024'),(875,'Hoffman, Davis and Wilson','2024'),(876,'Mills, Holloway and Warner','2024'),(877,'Washington-Horne','2024'),(878,'Jones, Bentley and Moore','2025'),(879,'Everett, Cook and Burnett','2024'),(880,'Velazquez-Stewart','2026'),(881,'Moran, Dean and Santos','2025'),(882,'Reynolds, Coleman and Long','2025'),(883,'Rogers, Miller and Johnson','2025'),(884,'Woodward PLC','2025'),(885,'Perez-Keith','2024'),(886,'Morales-Wood','2026'),(887,'Day PLC','2024'),(888,'Casey LLC','2026'),(889,'Shaw-Tanner','2025'),(890,'Davis Ltd','2024'),(891,'Hill, Barber and Gibson','2024'),(892,'Krueger, Garrett and Johnson','2026'),(893,'Warner, Reid and Serrano','2025'),(894,'Lyons, Salinas and Dominguez','2024'),(895,'Allison, Nguyen and York','2024'),(896,'Mcfarland-Peters','2026'),(897,'Perez LLC','2025'),(898,'Aguirre, Tucker and Williams','2025'),(899,'Le-White','2026'),(900,'Mckee-Joseph','2024'),(901,'Barnes and Sons','2025'),(902,'Rodriguez-Christian','2024'),(903,'Carter-Parker','2025'),(904,'Adams, Wyatt and Reyes','2025'),(905,'Roach-Sawyer','2024'),(906,'Baldwin, Peterson and White','2026'),(907,'Whitehead, Nelson and Brown','2025'),(908,'Hicks-Martin','2024'),(909,'Jones Inc','2024'),(910,'Carter, Maxwell and Valentine','2026'),(911,'Fuentes PLC','2024'),(912,'Sanford, Barnes and Lewis','2024'),(913,'Lopez-Cole','2024'),(914,'Watkins, Baird and Mendoza','2026'),(915,'Byrd Inc','2025'),(916,'Pollard, Wilson and Wood','2026'),(917,'Taylor Group','2026'),(918,'Zuniga-Newman','2025'),(919,'Harris, Fisher and Fletcher','2024'),(920,'Wood Inc','2024'),(921,'Colon-Colon','2025'),(922,'Phillips, Irwin and Miller','2025'),(923,'Townsend, Sutton and Little','2024'),(924,'Wong, Haas and Wilson','2024'),(925,'Brown PLC','2024'),(926,'Hays, Holmes and Moore','2026'),(927,'Rasmussen Inc','2024'),(928,'Navarro and Sons','2025'),(929,'Johnson, Coffey and Young','2025'),(930,'Stark, Gonzalez and Rodriguez','2025'),(931,'Krause, Morales and Wagner','2024'),(932,'Franco Group','2024'),(933,'Shah-Calhoun','2026'),(934,'Sanchez, Lewis and Johnston','2025'),(935,'Simpson-Luna','2024'),(936,'Ward, Hernandez and Robinson','2025'),(937,'Norris, Livingston and Jackson','2025'),(938,'Harvey, Wood and Diaz','2025'),(939,'Pennington Group','2025'),(940,'Smith, Elliott and Brown','2026'),(941,'Escobar, Curry and Williams','2024'),(942,'Castaneda and Sons','2026'),(943,'Curtis-Montoya','2026'),(944,'Rodriguez LLC','2026'),(945,'Phelps PLC','2026'),(946,'Abbott, Caldwell and Allen','2024'),(947,'Anderson, Smith and White','2025'),(948,'Hall, Henderson and Benitez','2024'),(949,'Hill-Short','2026'),(950,'Phelps, Barnes and Franklin','2025'),(951,'Potter Group','2024'),(952,'Schmitt-Castro','2025'),(953,'Castro-Anthony','2025'),(954,'Rice-White','2025'),(955,'Fernandez Group','2026'),(956,'Jones LLC','2025'),(957,'Hill-Baker','2026'),(958,'Jackson-Rollins','2026'),(959,'Stanley-Wong','2024'),(960,'Marshall-Howell','2026'),(961,'Gibson Ltd','2026'),(962,'Davis Group','2025'),(963,'Murphy, Schultz and Smith','2025'),(964,'Moon-Gutierrez','2024'),(965,'Hawkins, Vega and Thomas','2024'),(966,'Berg Group','2026'),(967,'Wilcox Group','2025'),(968,'Smith Ltd','2024'),(969,'Atkins, Gonzales and Schmidt','2024'),(970,'Richards, Davidson and Davenport','2024'),(971,'Moon PLC','2026'),(972,'Lam-Henson','2024'),(973,'Edwards, Morgan and Lowe','2026'),(974,'Davis PLC','2024'),(975,'Singh, Williams and Bennett','2025'),(976,'Martinez, Weaver and Marks','2024'),(977,'Anthony Group','2026'),(978,'Odom and Sons','2025'),(979,'Patterson-Duran','2026'),(980,'Beasley-Alexander','2026'),(981,'King, Preston and Patel','2024'),(982,'Barton, Edwards and Owens','2025'),(983,'Rodriguez, Garcia and Molina','2025'),(984,'Sullivan-Adams','2025'),(985,'Mccarthy, Tucker and Buck','2024'),(986,'Larsen PLC','2024'),(987,'Turner, Perez and Miller','2026'),(988,'Good PLC','2024'),(989,'Davis Group','2025'),(990,'Mccall-Martinez','2026'),(991,'Fowler and Sons','2025'),(992,'Salinas, Morris and West','2026'),(993,'Diaz and Sons','2024'),(994,'Fernandez-Mayo','2024'),(995,'Hood-Wagner','2026'),(996,'Stephenson-Henderson','2024'),(997,'Hunt Group','2025'),(998,'Clark-Rodriguez','2024'),(999,'Atkins-Black','2026'),(1000,'Barton-Espinoza','2026'),(1002,'Elite High School','2026');
/*!40000 ALTER TABLE `highschoolstudent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 16:20:47