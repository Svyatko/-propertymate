# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: propertymate
# Generation Time: 2019-01-21 23:55:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contact_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_field`;

CREATE TABLE `contact_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_field_contact_id_foreign` (`contact_id`),
  KEY `contact_field_field_id_foreign` (`field_id`),
  CONSTRAINT `contact_field_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contact_field_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contact_field` WRITE;
/*!40000 ALTER TABLE `contact_field` DISABLE KEYS */;

INSERT INTO `contact_field` (`id`, `contact_id`, `field_id`, `value`, `created_at`, `updated_at`)
VALUES
	(6,106,3,'Line #3',NULL,NULL),
	(8,108,3,'Line #2',NULL,NULL),
	(9,108,4,'Line #1,Line #3',NULL,NULL);

/*!40000 ALTER TABLE `contact_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `surname`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Regan Rippin','Mr. Theron Williamson DVM','2019-01-21 22:59:56','2019-01-21 19:13:47','2019-01-21 22:59:56'),
	(2,'Hillard Schuppe','Rosalyn Muller','2019-01-21 22:59:08','2019-01-21 19:13:47','2019-01-21 22:59:08'),
	(3,'Kiara Green','Zella Watsica','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(4,'Miss Lavinia Johnson V','Abelardo Ebert','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(5,'Mrs. Rozella Boyer','Prof. Adrien Schuppe PhD','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(6,'Albina Zulauf','Mrs. Aiyana Cormier Jr.','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(7,'Russell Cormier I','Prof. Sam Rohan Jr.','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(8,'Valerie Stokes DDS','Paige Sawayn MD','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(9,'Valentin O\'Connell','Jesus Okuneva','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(10,'Mitchell Luettgen','Roman Carroll I','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(11,'Jamal O\'Kon Jr.','Joaquin Adams I',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(12,'Finn Heller PhD','Nola Mueller DDS',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(13,'Chasity Becker','Dr. Eugenia McCullough',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(14,'Leatha Lockman','Ryley Satterfield',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(15,'Tate Veum','Rey Lind DVM',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(16,'Prof. Fredrick Ruecker PhD','Watson Littel',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(17,'Prof. Albert Powlowski MD','Dr. Brennon Bashirian',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(18,'Eudora McGlynn','Forest Carroll',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(19,'Sylvester Kilback','Broderick Schiller',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(20,'Nicklaus Boehm','Chelsey Becker',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(21,'Marlon Cartwright','Bill Rice',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(22,'Mr. Floy Aufderhar','Prof. Mikel Crona IV',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(23,'Raymundo Bashirian','Prof. Samson Wuckert',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(24,'Jaylon Veum','Kobe Okuneva',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(25,'Carmela Douglas','Catherine Stamm',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(26,'Carmelo DuBuque','Viviane O\'Hara',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(27,'Sonia Legros II','William Langworth',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(28,'Asha Hartmann','Hazel Lynch',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(29,'Dr. Kamryn Morissette DDS','Miss Lexie Jerde',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(30,'Mr. Barney McGlynn V','Dr. Augustus Marks MD',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(31,'Miss Maude Pagac Jr.','Dr. Genoveva Padberg',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(32,'Aubrey Legros','Mr. Damon Corwin',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(33,'Clinton Wilkinson','Peggie Dietrich',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(34,'Toni Bartoletti','Greyson Okuneva Jr.',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(35,'Prof. Stuart Hegmann III','Prof. Lennie Bosco III',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(36,'Jaunita Dicki','Shania Friesen',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(37,'Mr. Abraham Rice II','Prof. Kavon Greenfelder',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(38,'Chloe Koelpin','Katlynn Little',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(39,'Krista McGlynn','Laury Schroeder PhD',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(40,'Adella Nicolas','Mikayla Pollich DDS',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(41,'Mabelle Hoppe DDS','Miss Neoma Nitzsche',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(42,'Dr. Durward Quigley','Lucinda Davis',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(43,'Treva Sporer','Ulises Pfeffer',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(44,'Prof. Sister White','Miss Alvena Hahn II',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(45,'Prof. Hayden Orn III','Patrick Jacobi',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(46,'Misael Haag','Prof. Zack Stanton Jr.',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(47,'Willis Casper','Miss Alberta Aufderhar',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(48,'Travis Kulas Sr.','Wendy Kilback',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(49,'Prof. Faye Runolfsdottir V','Reba Hudson',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(50,'Rudolph Hoppe','Harmon Barton',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(51,'Meggie Goldner','Elouise Schmitt',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(52,'Leon Bergstrom MD','Mr. Theo Gleason',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(53,'Marilyne Hoeger','Sigurd Schaden',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(54,'Mr. Royal Wilkinson III','Ilene Dach V',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(55,'Lilliana Nolan','Dr. Kelli Hahn',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(56,'Mable Hickle','Manuela Welch',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(57,'Carmen Fritsch','Mrs. Savanna Strosin',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(58,'Gerhard Jast','Prof. Cole Parker',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(59,'Jared Turner V','Maye Stiedemann V',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(60,'Gunnar Sauer','Jennyfer Parker',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(61,'Dr. Louie Altenwerth','Madonna Wisoky',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(62,'Cory Klocko','Romaine Carroll IV',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(63,'Prof. Kacie Emmerich','Hershel Weissnat MD',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(64,'Cornelius Gusikowski','Prof. Tyrell Bode DDS',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(65,'Issac Bode I','Jada Thiel',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(66,'Reilly Armstrong','Reba Johnston III',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(67,'Dr. Lexi Breitenberg','Dr. Arch Lebsack',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(68,'Mrs. Francisca Zulauf V','Prof. Chance West',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(69,'Emelia Willms III','Matt Bauch',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(70,'Brad Armstrong','Beth Ziemann',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(71,'Heaven Hartmann','Raquel Greenfelder',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(72,'Miss Sasha Roob III','Dr. Triston Pollich I',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(73,'Katlyn Nader','Javonte Schmeler MD',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(74,'Barrett Dietrich','Ms. Ofelia Little III',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(75,'Miss Bridget Bahringer Jr.','Laisha Shields',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(76,'Monte Kuhlman','Dr. Helen Bergnaum',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(77,'Ashtyn Hudson Sr.','Westley Graham',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(78,'Adella Tillman','Emmett Herzog Jr.',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(79,'Horace Tremblay','Gretchen Daugherty',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(80,'Nat Hermann DDS','Miss Vilma Romaguera',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(81,'Anabelle Schowalter','Maximilian Krajcik',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(82,'Ms. Clarabelle West PhD','Mariane Yundt',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(83,'Mr. Jovani Turner','Jayde Raynor',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(84,'Arthur Glover','Thelma Schuster Sr.',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(85,'Rylee Willms','Dr. Caterina Gibson',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(86,'Chesley Tromp II','Prof. Leland Altenwerth',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(87,'Xander Brekke','Courtney Rohan',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(88,'Rahsaan Muller','Jeramy Schinner V',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(89,'Tara Senger','Dr. Janie Kshlerin',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(90,'Yasmin Greenfelder','Gerard Tillman',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(91,'Mrs. Jeanette Schowalter','Alexis Hilpert PhD',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(92,'Prof. Desiree Corwin','Louie Haley',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(93,'Mack Schamberger Sr.','Dewayne Padberg DDS',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(94,'Rebekah Von','Mr. Broderick Corkery',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(95,'Marina Schneider','Verna Marvin',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(96,'Kallie Mayert','Garret Shanahan',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(97,'Darren Parker','Prof. Sonya Nitzsche',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(98,'Nickolas Rodriguez','Wilber Von III',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(99,'Claudie Dickens','Ferne Weber',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(100,'Travon Murray','Jordy Ferry',NULL,'2019-01-21 19:13:47','2019-01-22 00:00:00'),
	(106,'Anton','Ginzburg',NULL,'2019-01-21 22:52:20','2019-01-21 22:52:20'),
	(107,'Anton','Ginzburg',NULL,'2019-01-21 23:03:53','2019-01-21 23:03:53'),
	(108,'Anton','Ginzburg',NULL,'2019-01-21 23:04:43','2019-01-21 23:04:43');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table docs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `docs`;

CREATE TABLE `docs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `docs_contact_id_foreign` (`contact_id`),
  CONSTRAINT `docs_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;

INSERT INTO `docs` (`id`, `contact_id`, `number`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'634984',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(2,2,'526000',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(3,3,'295951',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(4,4,'441060',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(5,5,'325054',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(6,6,'386924',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(7,7,'354584',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(8,8,'993919',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(9,9,'458577',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(10,10,'563568',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(11,11,'516220',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(12,12,'914798',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(13,13,'179278',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(14,14,'589855',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(15,15,'572231',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(16,16,'732500',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(17,17,'268714',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(18,18,'514275',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(19,19,'848858',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(20,20,'294154',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(21,21,'623055',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(22,22,'422105',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(23,23,'411010',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(24,24,'613429',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(25,25,'864213',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(26,26,'220895',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(27,27,'262476',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(28,28,'652066',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(29,29,'537086',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(30,30,'812042',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(31,31,'200566',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(32,32,'745621',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(33,33,'825200',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(34,34,'501753',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(35,35,'856914',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(36,36,'455346',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(37,37,'763390',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(38,38,'548756',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(39,39,'889969',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(40,40,'914968',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(41,41,'296556',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(42,42,'609237',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(43,43,'910623',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(44,44,'970302',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(45,45,'685574',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(46,46,'574595',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(47,47,'139844',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(48,48,'483516',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(49,49,'172193',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(50,50,'562343',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(51,51,'370616',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(52,52,'699224',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(53,53,'340189',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(54,54,'547410',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(55,55,'275167',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(56,56,'686378',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(57,57,'554186',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(58,58,'416300',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(59,59,'372467',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(60,60,'443205',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(61,61,'966089',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(62,62,'723954',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(63,63,'853364',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(64,64,'856551',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(65,65,'582637',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(66,66,'905615',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(67,67,'429129',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(68,68,'640391',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(69,69,'640889',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(70,70,'352692',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(71,71,'752556',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(72,72,'266042',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(73,73,'648963',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(74,74,'971877',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(75,75,'667526',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(76,76,'456465',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(77,77,'563089',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(78,78,'597234',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(79,79,'181477',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(80,80,'165466',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(81,81,'863709',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(82,82,'980395',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(83,83,'870335',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(84,84,'647767',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(85,85,'220087',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(86,86,'888355',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(87,87,'255295',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(88,88,'885376',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(89,89,'822775',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(90,90,'497150',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(91,91,'717319',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(92,92,'855079',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(93,93,'308327',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(94,94,'922775',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(95,95,'289317',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(96,96,'632305',NULL,'2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(97,97,'553718','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(98,98,'103294','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(99,99,'402049','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-21 19:13:47'),
	(100,100,'627919','2019-01-21 21:14:04','2019-01-21 19:13:47','2019-01-21 19:13:47');

/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fields`;

CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fields_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;

INSERT INTO `fields` (`id`, `name`, `type`, `value`, `created_at`, `updated_at`)
VALUES
	(3,'List v.2','multiple','Line #1\r\nLine #2\r\nLine #3\r\nLine #4\r\nLine #5','2019-01-21 22:15:13','2019-01-21 23:40:03'),
	(4,'Multiple','multiple','Line #5\nLine #4\nLine #3\nLine #1\nLine #2','2019-01-21 23:01:44','2019-01-21 23:01:44');

/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(5,'2019_01_21_180629_create_contacts_table',1),
	(6,'2019_01_21_181005_create_docs_table',1),
	(8,'2019_01_21_194549_create_fields_table',2),
	(9,'2019_01_21_215002_create_contact_field_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
