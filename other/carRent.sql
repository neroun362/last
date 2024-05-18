-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: carrent
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `carName` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `power` varchar(255) NOT NULL,
  `gps` varchar(255) NOT NULL,
  `automatic` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `idx_carName` (`carName`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Tesla','Tesla Model S','2022 год',360.00,'518 л.с.','GPS','Автомат','Погрузитесь в мир инновационной технологии и безупречного дизайна с Tesla Model S. Этот электрический седан представляет собой воплощение роскоши, производительности и экологической ответственности в автомобильном мире.','https://i.imgur.com/2rkCfrn.png','Недоступна'),(27,'Mercedes Benz','Mercedes Benz S Class','2019 год',450.00,'490 л.с.','GPS','Автомат','Добро пожаловать в мир непревзойденной элегантности и технического совершенства с Mercedes-Benz S-Class. Этот автомобиль не просто представляет собой символ роскоши, он задает новые стандарты комфорта, безопасности и инноваций в автомобильной индустрии.','https://i.imgur.com/4OzBFbz.png','Свободная'),(28,'BMW','BMW X5','2020 год',380.00,'521 л.с.','GPS','Автомат','BMW X5 M50i – это совершенно новый уровень производительности и роскоши в мире внедорожников. Этот автомобиль предлагает вам выдающиеся спортивные характеристики в сочетании с роскошным комфортом и передовыми технологиями, делая каждую поездку незабываемой.','https://i.imgur.com/FgCt0kP.png','Свободная'),(29,'Audi','Audi RS7','2021 год',460.00,'600 л.с.','GPS','Автомат','Добро пожаловать в мир Audi RS7 – автомобиля, который сочетает в себе высочайший уровень производительности с элегантным дизайном и передовыми технологиями. Этот спортивный седан предлагает вам непревзойденный опыт вождения и оставляет незабываемые впечатления на каждой дороге.','https://i.imgur.com/GTYc0Gx.jpeg','Свободная'),(30,'Cadillac','Cadillac Escalade','2018 год',400.00,'420 л.с.','GPS','Автомат','Добро пожаловать в мир Cadillac Escalade — автомобиля, который воплощает в себе роскошь, стиль и мощь. Этот внедорожник выдающегося качества предлагает непревзойденный комфорт и производительность, делая каждую поездку незабываемой.','https://i.imgur.com/fgwChbC.jpeg','Свободная'),(31,'Lexus','Lexus LX 450d','2018 год',370.00,'282 л.с.','GPS','Автомат','Добро пожаловать в мир Lexus LX 450d - автомобиля, который сочетает в себе внушительную роскошь, передовые технологии и выдающиеся внедорожные возможности. Этот внедорожник предлагает вам элегантность и мощь, обеспечивая исключительный комфорт в любых условиях.','https://i.imgur.com/u1M1QA5.jpeg','Свободная'),(32,'Chevrolet','Chevrolet Camaro','2022 год',500.00,'355 л.с.','GPS','Автомат','Добро пожаловать в мир Chevrolet Camaro — символа американской автомобильной культуры, который сочетает в себе элегантность, мощь и азартные возможности вождения. Camaro предлагает вам неповторимый опыт, который оставляет за рулем яркие впечатления.','https://i.imgur.com/RWoWqan.jpeg','Свободная'),(33,'Ford','Ford Mustang','2019 год',350.00,'310 л.с.','GPS','Автомат','Добро пожаловать в мир Ford Mustang — символа свободы, мощи и стиля. Этот автомобиль исторически является воплощением американской мечты о скорости и свободе, предлагая неповторимый опыт вождения и безграничные возможности на дороге.','https://i.imgur.com/NculsMT.png','Свободная'),(34,'Porsche','Porsche Boxster','2017 год',260.00,'275 л.с.','GPS','Автомат','Добро пожаловать в мир Porsche Boxster 718 — иконы автомобильного мастерства, предлагающей неповторимый опыт вождения и элегантный стиль. Этот спортивный родстер объединяет в себе великолепную производительность, динамичный дизайн и передовые технологии, чтобы подарить вам незабываемые моменты за рулем','https://i.imgur.com/QjSPT0p.png','Свободная');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `messageData` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (11,17,'123','2024-04-27','Закрыто'),(12,1,'Сколько стоят услуги водителя?','2024-04-28','Закрыто');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `rent_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `car_id` int NOT NULL,
  `rentData` date NOT NULL,
  `rentTime` time NOT NULL,
  `comments` text NOT NULL,
  `selectedPayment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`rent_id`),
  KEY `rent_ibfk_1` (`user_id`),
  KEY `rent_ibfk_2` (`car_id`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (27,1,1,'2024-04-26','20:00:00','Детское кресло','Банковской картой онлайн','В процессе'),(28,17,1,'2024-04-26','15:00:00','Навигатор','Наличными','Отменено'),(30,1,27,'2024-04-27','10:00:00','','Наличными','Завершено'),(31,17,28,'2024-04-30','12:00:00','Услуги водителя','Банковской картой при получении','Завершено');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deleteStatus` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Максим','Панкрат','maksim@mail.ru','+375(29)1111111','111','user','Активный'),(17,'Владимир','Клейменов','vova@gmail.com','+375(29)2222222','222','user','Активный'),(18,'admin','admin','admin','admin','admin','admin','Активный'),(51,'Иван','Иванов','ivan@gmail.com','+375(33)3333333','333','user','Удален');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 16:18:32
