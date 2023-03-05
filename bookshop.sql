CREATE DATABASE  IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshop`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `Код автора` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(45) DEFAULT NULL,
  `Имя` varchar(45) DEFAULT NULL,
  `Отчество` varchar(45) DEFAULT NULL,
  `Дата рождения` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код автора`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'a','a','a','a'),(2,'b','b','b','01-01-2000');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Код книги` int NOT NULL AUTO_INCREMENT,
  `Наименование книги` varchar(45) DEFAULT NULL,
  `Стоимость` varchar(45) DEFAULT NULL,
  `Жанр` int DEFAULT NULL,
  `Автор` int DEFAULT NULL,
  `Издательство` int DEFAULT NULL,
  PRIMARY KEY (`Код книги`),
  KEY `books_FK` (`Жанр`),
  KEY `books_FK_1` (`Автор`),
  KEY `books_FK_2` (`Издательство`),
  CONSTRAINT `books_FK` FOREIGN KEY (`Жанр`) REFERENCES `genre` (`Код жанра`),
  CONSTRAINT `books_FK_1` FOREIGN KEY (`Автор`) REFERENCES `author` (`Код автора`),
  CONSTRAINT `books_FK_2` FOREIGN KEY (`Издательство`) REFERENCES `publishing_house` (`Код издательства`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (4,'TEST','10000',1,NULL,NULL),(12,'test','35235',1,1,1),(13,'aaa','1',1,1,1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Код клиента` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Имя` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Отчество` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата рождения` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `e-mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Код клиента`)
) ENGINE=InnoDB AUTO_INCREMENT=45462601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (45462526,'Фролов','Андрей','Иванович','2001-07-13','gohufreilagrau-3818@yopmail.com'),(45462527,'Николаев','Даниил','Всеволодович','2001-02-09','xawugosune-1385@yopmail.com'),(45462528,'Снегирев','Макар','Иванович','1998-05-20','satrahuddusei-4458@yopmail.com'),(45462529,'Иванов','Иван','Ильич','1998-09-30','boippaxeufrepra-7093@yopmail.com'),(45462530,'Филиппова','Анна','Глебовна','1976-05-30','zapramaxesu-7741@yopmail.com'),(45462531,'Иванов','Михаил','Владимирович','1985-11-03','rouzecroummegre-3899@yopmail.com'),(45462532,'Власов','Дмитрий','Александрович','1998-08-16','ziyeuddocrabri-4748@yopmail.com'),(45462533,'Серова','Екатерина','Львовна','1984-10-23','ketameissoinnei-1951@yopmail.com'),(45462534,'Борисова','Ирина','Ивановна','1976-10-13','yipraubaponou-5849@yopmail.com'),(45462535,'Зайцев','Никита','Артёмович','1999-10-13','crapedocouca-3572@yopmail.com'),(45462536,'Медведев','Святослав','Евгеньевич','1985-07-12','ceigoixakaunni-9227@yopmail.com'),(45462537,'Коротков','Кирилл','Алексеевич','1976-05-25','yeimmeiwauzomo-7054@yopmail.com'),(45462538,'Калашникова','Арина','Максимовна','1999-08-12','poleifenevi-1560@yopmail.com'),(45462539,'Минина','Таисия','Кирилловна','1985-10-12','kauprezofautei-6607@yopmail.com'),(45462540,'Наумов','Серафим','Романович','1999-04-14','quaffaullelourei-1667@yopmail.com'),(45462541,'Воробьева','Василиса','Евгеньевна','1999-01-12','jsteele@rojas-robinson.net'),(45462542,'Калинин','Александр','Андреевич','1999-01-06','vhopkins@lewis-mullen.com'),(45462543,'Кузнецова','Милана','Владиславовна','1999-01-23','nlewis@yahoo.com'),(45462544,'Фирсов','Егор','Романович','1993-09-01','garciadavid@mckinney-mcbride.com'),(45462545,'Зимина','Агния','Александровна','1998-09-02','cbradley@castro.com'),(45462546,'Титов','Андрей','Глебович','1985-10-22','cuevascatherine@carlson.biz'),(45462547,'Орлов','Николай','Егорович','1985-07-26','thomasmoore@wilson-singh.net'),(45462548,'Кузнецова','Аиша','Михайловна','1998-10-03','jessica84@hotmail.com'),(45462549,'Куликов','Никита','Георгиевич','1999-04-22','jessicapark@hotmail.com'),(45462550,'Карпова','София','Егоровна','1993-09-30','ginaritter@schneider-buchanan.com'),(45462551,'Смирнова','Дарья','Макаровна','1976-03-21','stephen99@yahoo.com'),(45462552,'Абрамова','Александра','Мироновна','1999-03-25','lopezlisa@hotmail.com'),(45462553,'Наумов','Руслан','Михайлович','1999-10-10','lori17@hotmail.com'),(45462554,'Бочаров','Никита','Матвеевич','1997-06-28','campbellkevin@gardner.com'),(45462555,'Соловьев','Давид','Ильич','1984-03-05','morganhoward@clark.com'),(45462556,'Васильева','Валерия','Дмитриевна','1999-09-29','carsontamara@gmail.com'),(45462557,'Макарова','Василиса','Андреевна','1999-04-07','kevinpatel@gmail.com'),(45462558,'Алексеев','Матвей','Викторович','1998-08-01','sethbishop@yahoo.com'),(45462559,'Никитина','Полина','Александровна','1976-09-18','drollins@schultz-soto.net'),(45462560,'Окулова','Олеся','Алексеевна','1999-04-02','pblack@copeland-winters.org'),(45462561,'Захарова','Полина','Яновна','1976-04-20','johnathon.oberbrunner@yahoo.com'),(45462562,'Зайцев','Владимир','Давидович','1998-01-25','bradly29@gmail.com'),(45462563,'Иванов','Виталий','Даниилович','1976-08-10','stark.cristina@hilpert.biz'),(45462564,'Захаров','Матвей','Романович','1993-07-11','bruen.eleanore@yahoo.com'),(45462565,'Иванов','Степан','Степанович','1998-09-18','percival.halvorson@yahoo.com'),(45462566,'Ткачева','Милана','Тимуровна','1998-05-23','javonte71@kuhlman.biz'),(45462567,'Семенов','Даниил','Иванович','1976-01-03','vconnelly@kautzer.com'),(45462568,'Виноградов','Вячеслав','Дмитриевич','1976-07-11','anabelle07@schultz.info'),(45462569,'Соболева','Николь','Фёдоровна','1976-05-01','nitzsche.katlynn@yahoo.com'),(45462570,'Тихонова','Анна','Львовна','1985-03-22','corine16@von.com'),(45462571,'Кузнецова','Ульяна','Савельевна','1999-06-02','otha.wisozk@lubowitz.org'),(45462572,'Смирнова','Анна','Германовна','1997-07-17','may.kirlin@hotmail.com'),(45462573,'Черепанова','Анна','Давидовна','1985-11-05','bryana.kautzer@yahoo.com'),(45462574,'Григорьев','Максим','Кириллович','1999-05-25','deborah.christiansen@quigley.biz'),(45462575,'Голубев','Даниэль','Александрович','1999-06-13','connelly.makayla@yahoo.com'),(45462576,'Миронов','Юрий','Денисович','1985-01-25','tatum.collins@fay.org'),(45462577,'Терехов','Михаил','Андреевич','1976-07-05','itzel73@anderson.com'),(45462578,'Орлова','Алиса','Михайловна','1997-02-23','arjun39@hotmail.com'),(45462579,'Кулаков','Константин','Даниилович','1993-06-19','ohara.rebeka@yahoo.com'),(45462580,'Кудрявцев','Максим','Романович','1998-05-09','danika58@rath.com'),(45462581,'Соболева','Кира','Фёдоровна','1998-03-13','janae.bogan@gmail.com'),(45462582,'Коновалов','Арсений','Максимович','1985-02-17','vern91@yahoo.com'),(45462583,'Гусев','Михаил','Дмитриевич','1999-11-22','mariana.leannon@larkin.net'),(45462584,'Суханова','Варвара','Матвеевна','1993-09-12','vmoore@gmail.com'),(45462585,'Орлова','Ясмина','Васильевна','1984-06-23','damon.mcclure@mills.com'),(45462586,'Васильева','Ксения','Константиновна','1999-07-31','grady.reilly@block.com'),(45462587,'Борисова','Тамара','Данииловна','1993-05-28','boyd.koss@yahoo.com'),(45462588,'Дмитриев','Мирон','Ильич','1985-04-12','obartell@franecki.info'),(45462589,'Лебедева','Анна','Александровна','1985-03-29','reina75@ferry.net'),(45462590,'Пономарев','Артём','Маркович','1984-06-01','karson28@hotmail.com'),(45462591,'Борисова','Елена','Михайловна','1976-05-22','damaris61@okon.com'),(45462592,'Моисеев','Камиль','Максимович','1999-06-16','carroll.jerod@hotmail.com'),(45462593,'Герасимова','Дарья','Константиновна','1984-10-12','ron.treutel@quitzon.com'),(45462594,'Михайлова','Мария','Марковна','1976-12-01','olen79@yahoo.com'),(45462595,'Коршунов','Кирилл','Максимович','1985-05-21','pacocha.robbie@yahoo.com'),(45462596,'test','test','test','2000-01-01','test'),(45462597,'test','test','test','2000-01-01','test'),(45462598,'test1','test1','test1','01.01.2000','test1'),(45462599,'test','test','test','01.01.2000','test'),(45462600,'test','test','test','01.01.2000','test');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Код сотрудника` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Имя` varchar(100) DEFAULT NULL,
  `Отчество` varchar(100) DEFAULT NULL,
  `Должность` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Логин` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Пароль` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Последний вход` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Тип входа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Фото` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (101,'Иванов','Иван','Иванович','Продавец','Ivanov@namecomp.ru','2L6KZG','18:02:2023 22:02:19','False',NULL),(102,'Петров','Петр','Петрович','Продавец','petrov@namecomp.ru','uzWC67','15:05:2022 13:13:00','Успешно',NULL),(103,'Федоров','Федор','Федорович','Администратор','fedorov@namecomp.ru','8ntwUp','15:05:2022 13:13:00','Успешно',NULL),(104,'Миронов','Вениамин','Куприянович','Старший смены','mironov@namecomp.ru','YOyhfR','15:05:2022 13:13:00','Успешно',NULL),(105,'Ширяев','Ермолай','Вениаминович','Старший смены','shiryev@namecomp.ru','RSbvHv','15:05:2022 13:13:00','Неуспешно',NULL),(106,'Игнатов','Кассиан','Васильевич','Старший смены','ignatov@namecomp.ru','rwVDh9','15:05:2022 13:13:00','Успешно',NULL),(107,'Хохлов','Владимир','Мэлсович','Продавец','hohlov@namecomp.ru','LdNyos','15:05:2022 13:13:00','Успешно',NULL),(108,'Стрелков','Мстислав','Георгьевич','Продавец','strelkov@namecomp.ru','gynQMT','15:05:2022 13:13:00','Неуспешно',NULL),(109,'Беляева','Лилия','Наумовна','Продавец','belyeva@@namecomp.ru','AtnDjr','15:05:2022 13:13:00','Успешно',NULL),(110,'Смирнова','Ульяна','Гордеевна','Продавец','smirnova@@namecomp.ru','JlFRCZ','15:05:2022 13:13:00','Успешно',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `Код жанра` int NOT NULL AUTO_INCREMENT,
  `Жанр` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код жанра`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Классика'),(3,'test');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Дата входа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата выхода` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Блокировка` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Логин сотрудника` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `history_FK` (`Логин сотрудника`),
  CONSTRAINT `history_FK` FOREIGN KEY (`Логин сотрудника`) REFERENCES `employees` (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (54,'28:02:2023 21:26:21',NULL,'1',101),(55,'28:02:2023 21:28:42',NULL,'1',101),(56,'28:02:2023 21:28:56',NULL,'1',101),(57,'28:02:2023 21:29:52',NULL,'1',101),(58,'28:02:2023 21:30:46',NULL,'1',101),(59,'28:02:2023 21:30:57',NULL,'1',101),(60,'28:02:2023 21:31:53',NULL,'1',101),(61,'28:02:2023 21:44:06',NULL,'1',101),(62,'28:02:2023 21:44:34',NULL,'1',101),(63,'28:02:2023 21:46:23',NULL,'1',101),(64,'28:02:2023 21:47:30',NULL,'1',101),(65,'28:02:2023 21:47:51',NULL,'1',101),(66,'28:02:2023 21:48:50',NULL,'1',101),(67,'28:02:2023 21:49:19',NULL,'1',101),(68,'28:02:2023 21:51:22',NULL,'1',101),(69,'28:02:2023 21:52:34',NULL,'1',101),(70,'28:02:2023 21:52:58',NULL,'1',101),(71,'28:02:2023 21:54:03',NULL,'1',101),(72,'28:02:2023 21:54:31',NULL,'1',101),(73,NULL,'28:02:2023 21:54:31','0',101),(74,'28:02:2023 21:54:53',NULL,'1',103),(75,'28:02:2023 22:00:14',NULL,'1',103),(76,'28:02:2023 22:15:32',NULL,'1',103),(77,'28:02:2023 22:15:54',NULL,'1',103),(78,'28:02:2023 22:24:19',NULL,'1',103),(79,'28:02:2023 22:24:38',NULL,'1',103),(80,'28:02:2023 22:25:26',NULL,'1',103),(81,'28:02:2023 22:26:08',NULL,'1',103),(82,'28:02:2023 22:26:54',NULL,'1',103),(83,'28:02:2023 22:27:31',NULL,'1',103),(84,'01:03:2023 00:20:47',NULL,'1',103),(85,'01:03:2023 00:21:29',NULL,'1',103),(86,'01:03:2023 00:35:07',NULL,'1',103),(87,'01:03:2023 00:37:49',NULL,'1',103),(88,'01:03:2023 00:38:57',NULL,'1',103),(89,'01:03:2023 00:39:14',NULL,'1',103),(90,'01:03:2023 00:43:05',NULL,'1',103),(91,'01:03:2023 00:43:20',NULL,'1',103),(92,'01:03:2023 00:43:49',NULL,'1',103),(93,'01:03:2023 00:44:09',NULL,'1',103),(94,'01:03:2023 00:46:57',NULL,'1',103),(95,'01:03:2023 00:48:53',NULL,'1',103),(96,'01:03:2023 00:49:54',NULL,'1',103),(97,'01:03:2023 00:50:11',NULL,'1',103),(98,'01:03:2023 00:58:14',NULL,'1',103),(99,'01:03:2023 00:58:31',NULL,'1',103),(100,'01:03:2023 00:59:11',NULL,'1',103),(101,'01:03:2023 01:02:24',NULL,'1',103),(102,'01:03:2023 01:04:19',NULL,'1',103),(103,'01:03:2023 01:07:08',NULL,'1',103),(104,'01:03:2023 01:08:21',NULL,'1',103),(105,'01:03:2023 01:08:54',NULL,'1',103),(106,'01:03:2023 01:09:34',NULL,'1',103),(107,'01:03:2023 01:10:00',NULL,'1',103),(108,'01:03:2023 01:14:32',NULL,'1',103),(109,'01:03:2023 01:15:24',NULL,'1',103),(110,'01:03:2023 01:18:15',NULL,'1',103),(111,'01:03:2023 01:19:50',NULL,'1',103),(112,'01:03:2023 01:22:04',NULL,'1',103);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_house`
--

DROP TABLE IF EXISTS `publishing_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_house` (
  `Код издательства` int NOT NULL AUTO_INCREMENT,
  `Название издательства` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Код издательства`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_house`
--

LOCK TABLES `publishing_house` WRITE;
/*!40000 ALTER TABLE `publishing_house` DISABLE KEYS */;
INSERT INTO `publishing_house` VALUES (1,'aaa'),(2,'bbb'),(3,'bbb'),(4,'bbb'),(5,'bbb'),(6,'bbb');
/*!40000 ALTER TABLE `publishing_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Код заказа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата создания` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Время заказа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Клиент` int DEFAULT NULL,
  `Книга` int DEFAULT NULL,
  `Сотрудник` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `requests_FK` (`Книга`),
  KEY `requests_FK_1` (`Клиент`),
  KEY `requests_FK_2` (`Сотрудник`),
  CONSTRAINT `requests_FK` FOREIGN KEY (`Книга`) REFERENCES `books` (`Код книги`),
  CONSTRAINT `requests_FK_1` FOREIGN KEY (`Клиент`) REFERENCES `clients` (`Код клиента`),
  CONSTRAINT `requests_FK_2` FOREIGN KEY (`Сотрудник`) REFERENCES `employees` (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (22,'0/2023.02.20','2023.02.20','13:31',45462526,4,NULL),(23,'0/2023.02.28','2023.02.28','21:51',45462526,4,101),(24,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(25,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(26,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(27,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01  1:28:57
