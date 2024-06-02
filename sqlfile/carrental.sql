-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: data
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','5c428d8875d2948607f3e3fe134d71b4','2024-04-18 12:22:38');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbooking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (4,'test@gmail.com',1,'10/05/2024','17/05/2024','Приеду к вам в офис и обговорим детали покупки автомобиля',1,'2024-05-08 12:46:58'),(5,'test@gmail.com',5,'10/05/2024','17/05/2024','Перезвоните мне, готова купить данный автомобиль',1,'2024-05-08 12:51:38');
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbrands`
--

DROP TABLE IF EXISTS `tblbrands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbrands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbrands`
--

LOCK TABLES `tblbrands` WRITE;
/*!40000 ALTER TABLE `tblbrands` DISABLE KEYS */;
INSERT INTO `tblbrands` VALUES (1,'Hyundai','2024-04-18 16:24:34','2024-05-08 10:52:28'),(2,'BMW','2024-04-18 16:24:50',NULL),(3,'Audi','2024-04-18 16:25:03',NULL),(4,'Nissan','2024-04-18 16:25:13',NULL),(5,'Toyota','2024-04-18 16:25:24',NULL),(7,'Marutiu','2024-04-19 06:22:13',NULL);
/*!40000 ALTER TABLE `tblbrands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontactusinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactusinfo`
--

LOCK TABLES `tblcontactusinfo` WRITE;
/*!40000 ALTER TABLE `tblcontactusinfo` DISABLE KEYS */;
INSERT INTO `tblcontactusinfo` VALUES (1,'Test Demo test demo																									','test@test.com','8585233222');
/*!40000 ALTER TABLE `tblcontactusinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontactusquery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactusquery`
--

LOCK TABLES `tblcontactusquery` WRITE;
/*!40000 ALTER TABLE `tblcontactusquery` DISABLE KEYS */;
INSERT INTO `tblcontactusquery` VALUES (1,'Harry Den','webhostingamigo@gmail.com','2147483647','Свяжитесь со мной по телефону +375-29-101-02-03','2024-04-18 10:03:07',1),(2,'Мария Потапчик','test@gmail.com','37529101020','Перезвоните мне','2024-05-08 12:47:33',NULL);
/*!40000 ALTER TABLE `tblcontactusquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpages`
--

LOCK TABLES `tblpages` WRITE;
/*!40000 ALTER TABLE `tblpages` DISABLE KEYS */;
INSERT INTO `tblpages` VALUES (1,'Terms and Conditions','terms','										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! Belarus. 1Yahoo Web Services Belarus Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! Belarus. Yahoo Web Services Belarus Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! Belarus. Yahoo Web Services Belarus Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at:&nbsp;</font><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255);\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service.</font><br></p>\r\n										'),(2,'Privacy Policy','privacy','<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),(3,'О нас','aboutus','																				<p style=\"font-family: &quot;open sans&quot;, Arial, Helvetica, sans-serif; margin-bottom: 10px; color: rgb(102, 102, 102); font-size: 15px;\">На портале представлены актуальные модели автомобилей, которые можно заказать и купить у официальных дилеров в Беларуси. В данном каталоге собрана наиболее полезная для потенциальных покупателей информация: цены, комплектации, стандартное оснащение, доступные опции и их стоимость, технические характеристики и гарантийные условия. Удобная система сравнения наглядно продемонстрирует, какая же из рассматриваемых вами моделей предлагает наилучший баланс \"цена/оснащение\". Вы также найдете на портале&nbsp;<a href=\"http://www.domkrat.by/news/\" style=\"background-color: rgb(255, 255, 255); text-decoration-line: underline; outline: none; color: rgb(66, 139, 202) !important;\">новости</a>&nbsp;и обзоры о моделях и рынке новых автомобилей в Беларуси,&nbsp;<a href=\"http://www.domkrat.by/testdrives/\" style=\"background-color: rgb(255, 255, 255); text-decoration-line: underline; outline: none; color: rgb(66, 139, 202) !important;\">тест-драйвы</a>&nbsp;новых моделей,&nbsp;<a href=\"http://www.domkrat.by/actions/\" style=\"background-color: rgb(255, 255, 255); text-decoration-line: underline; outline: none; color: rgb(66, 139, 202) !important;\">акции и скидки</a>&nbsp;на автомобили и сервис от официальных дилеров,&nbsp;<a href=\"http://www.domkrat.by/feedback/\" style=\"background-color: rgb(255, 255, 255); text-decoration-line: underline; outline: none; color: rgb(66, 139, 202) !important;\">отзывы</a>&nbsp;владельцев. Мы прилагаем все усилия, чтобы поддерживать актуальность информации в автокаталоге. При этом все цены, варианты оснащения и технические характеристики, указанные на портале, не являются коммерческим предложением и приведены в качестве справочной информации. Если вам понравилась определенная модель из каталога - всего за пару кликов вы сможете заказать тест-драйв или запросить информацию о наличии автомобиля у официального дилера. Мы будем рады получить ваши предложения и пожелания по работе сайта, а также интересующие вас темы при помощи формы обратной связи. Ведь наша главная цель - помочь вам сделать правильный выбор нового авто!</p>\r\n										\r\n										'),(11,'FAQs','faqs','																																								<p style=\"padding-left: 20px; max-width: 800px; margin-bottom: 20px; line-height: 30px;\"><span style=\"color: rgb(24, 26, 27); font-family: &quot;Open Sans&quot;, system-ui, sans-serif; font-size: 18px;\">Покупка автомобиля с привлечением лизинга либо автокредитования — задача с большим количеством переменных. Среди них — стоимость самого автомобиля, объём собственных средств у покупателя, величина его дохода. Ещё есть эффективная годовая процентная ставка, сроки лизинга или кредитования, аннуитетный или дифференцированный платёж, вопросы залога, поручителей и т. п.</span></p>\r\n										\r\n										\r\n										\r\n										');
/*!40000 ALTER TABLE `tblpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubscribers`
--

DROP TABLE IF EXISTS `tblsubscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsubscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubscribers`
--

LOCK TABLES `tblsubscribers` WRITE;
/*!40000 ALTER TABLE `tblsubscribers` DISABLE KEYS */;
INSERT INTO `tblsubscribers` VALUES (4,'m.potapchik@gmail.com','2024-05-08 12:43:33');
/*!40000 ALTER TABLE `tblsubscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltestimonial`
--

DROP TABLE IF EXISTS `tbltestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltestimonial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltestimonial`
--

LOCK TABLES `tbltestimonial` WRITE;
/*!40000 ALTER TABLE `tbltestimonial` DISABLE KEYS */;
INSERT INTO `tbltestimonial` VALUES (1,'test@gmail.com','Очень приятные впечатления остались после обращения. Контактировал с девушкой Дариной и менеджером по гарантии Алексеем. Очень участливые сотрудники, полное ощущение, что стараются приложить усилия в интересах клиента и решить вопрос.','2024-04-18 07:44:31',1),(2,'test@gmail.com','Хочу выразить благодарность Дмитрию Герчинскому, за профессионализм, внимание, доходчивое объяснение и терпение:) Очень не быстро, но я определилась с выбором ))) Дмитрий, спасибо! Вам успехов, высоких показателей продаж, благодарных клиентов и отличного настроения.','2024-02-18 07:46:05',1);
/*!40000 ALTER TABLE `tbltestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES (1,'Harry Den','demo@gmail.com','f925916e2754e5e03f75dd58a5733251','2147483647',NULL,NULL,NULL,NULL,'2024-04-17 19:59:27','2024-04-26 21:02:58'),(2,'AK','anuj@gmail.com','f925916e2754e5e03f75dd58a5733251','8285703354',NULL,NULL,NULL,NULL,'2024-04-17 20:00:49','2024-04-26 21:03:09'),(3,'Mark K','webhostingamigo@gmail.com','f09df7868d52e12bba658982dbd79821','09999857868','03/02/1990','PKL','PKL','PKL','2024-04-17 20:01:43','2024-04-17 21:07:41'),(4,'Маша Потапчик','test@gmail.com','5c428d8875d2948607f3e3fe134d71b4','9999857868','','PKL','XYZ','XYZ','2024-04-17 20:03:36','2024-05-01 19:18:14');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvehiclepricehistory`
--

DROP TABLE IF EXISTS `tblvehiclepricehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvehiclepricehistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VehicleID` int NOT NULL,
  `PricePerDay` int NOT NULL,
  `CreatedAt` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblvehiclepricehistory_VehicleID_CreatedAt_uindex` (`VehicleID`,`CreatedAt`),
  CONSTRAINT `tblvehiclepricehistory_tblvehicles_id_fk` FOREIGN KEY (`VehicleID`) REFERENCES `tblvehicles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvehiclepricehistory`
--

LOCK TABLES `tblvehiclepricehistory` WRITE;
/*!40000 ALTER TABLE `tblvehiclepricehistory` DISABLE KEYS */;
INSERT INTO `tblvehiclepricehistory` VALUES (1,1,30000,'2024-05-15'),(2,1,40000,'2024-05-26'),(3,1,25000,'2024-05-06'),(4,1,24000,'2024-04-08'),(5,2,71000,'2024-05-30'),(6,2,75000,'2024-05-14'),(7,2,90000,'2024-04-16'),(8,3,20000,'2024-04-16'),(9,3,25000,'2024-05-22'),(10,3,21000,'2024-06-01'),(11,2,70000,'2024-06-02'),(12,4,9000,'2024-05-06'),(13,4,10000,'2024-05-22'),(14,4,8500,'2024-04-09'),(15,5,29000,'2024-04-16'),(16,5,31000,'2024-05-20'),(17,5,30000,'2024-06-01');
/*!40000 ALTER TABLE `tblvehiclepricehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvehicles`
--

DROP TABLE IF EXISTS `tblvehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int DEFAULT NULL,
  `SeatingCapacity` int DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int DEFAULT NULL,
  `PowerDoorLocks` int DEFAULT NULL,
  `AntiLockBrakingSystem` int DEFAULT NULL,
  `BrakeAssist` int DEFAULT NULL,
  `PowerSteering` int DEFAULT NULL,
  `DriverAirbag` int DEFAULT NULL,
  `PassengerAirbag` int DEFAULT NULL,
  `PowerWindows` int DEFAULT NULL,
  `CDPlayer` int DEFAULT NULL,
  `CentralLocking` int DEFAULT NULL,
  `CrashSensor` int DEFAULT NULL,
  `LeatherSeats` int DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvehicles`
--

LOCK TABLES `tblvehicles` WRITE;
/*!40000 ALTER TABLE `tblvehicles` DISABLE KEYS */;
INSERT INTO `tblvehicles` VALUES (1,'BMW X6 G06',2,'2024 г., автомат, 3.0 л. Подробности у официального дилера ООО «АВТОИДЕЯ»',40000,'Diesel',2023,5,'bmw01.jpg','bmw02.jpg','bmw03.jpg','bmw04.jpg','',1,1,1,NULL,1,1,1,1,NULL,1,1,1,'2024-03-19 11:46:23','2024-05-08 11:18:02'),(2,'BMW XM',2,'BMW XM, 2024 г. в Минске. Автомат, 4.4 л, бензин, 631 л.с. Самый мощный автомобиль в линейке М-моделей от BMW. Цена со скидкой: 460.000 руб. Подробности на сайте ООО «АВТОИДЕЯ».',70000,'Petrol',2024,7,'bmvxm1.jpg','bmwxm3.jpg','bmvxm2.jpg','bmwxm4.jpg','',1,1,1,1,1,1,1,NULL,1,1,NULL,NULL,'2024-03-19 16:16:17','2024-05-08 11:39:30'),(3,'Nissan X-Trail IV (T33)',4,'2024 г., автомат, 1.5 л, бензин (гибрид), 1 км',22000,'Petrol',2024,7,'nis1.jpg','nis2.jpg','nis3.jpg','nis4.jpg','',1,1,1,1,1,1,1,1,1,1,NULL,NULL,'2017-06-19 16:18:20','2024-05-08 11:44:54'),(4,'Hyundai Tucson',1,'Бензиновый 2.0 MPI (155 л.с.). Цена со скидкой: 159.000 руб. Специальное предложение на автомобили 2023 года выпуска, действует до 31 мая 2024 г. Количество автомобилей ограничено. Подробности в отделах продаж автомобилей дилерских центров Hyundai.',10000,'Petrol',2023,5,'tuc1.jpg','tuc2.jpg','tuc3.jpg','tuc4.jpg','',1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,'2017-06-19 16:18:43','2024-05-08 11:05:10'),(5,'Toyota Sequoia III',5,'Продажа Toyota Sequoia III, 7 мест, 2024 г. в Минске. Автомат, 3.5 л. Цена со скидкой: 450.000 руб. Подробности у дилера \"ШикАвто\"',30000,'Petrol',2024,7,'t1.jpg','t2.jpg','t3.jpg','t4.jpg',NULL,1,1,1,1,1,1,1,1,1,1,1,1,'2017-06-20 17:57:09','2024-05-08 11:51:46');
/*!40000 ALTER TABLE `tblvehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 15:15:25
