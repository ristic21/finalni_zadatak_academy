-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: blog2
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(60) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Milan Milanovic','Dobar blog',1),(2,'Milanka Milanovic','Sjajan blog',1),(3,'Jadranka','Izuzetno los blog',1),(4,'Milutin','Vrlo dobro',2),(5,'Milutin','Sjajno',3),(6,'Mitar','Sjajno',1),(7,'Jelena','Ne svidja mi se Vas blog',3),(8,'Jelena','Ne svidja mi se Vas blog',2),(9,'Jelena','Ne svidja mi se Vas blog',1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `body` varchar(950) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Prvi naslov bloga','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod tellus eget nibh bibendum, sit amet iaculis purus consequat. Nunc lorem dui, iaculis in porta vel, vehicula id tellus. Nulla facilisi. In et tellus id ipsum condimentum iaculis vel vitae neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tristique ex sit amet elit feugiat, at semper felis ornare. Morbi id augue tristique, laoreet nulla quis, viverra mauris. Vivamus euismod est eget efficitur placerat. Donec iaculis, est vel volutpat egestas, risus enim laoreet dolor, et scelerisque metus purus in odio. Quisque enim lorem, rutrum in venenatis a, facilisis vitae lectus. Nulla mi nunc, efficitur vel nisl sit amet, congue maximus nibh. Phasellus sit amet est ac diam imperdiet lacinia at sed augue. Proin pellentesque rutrum libero, sit amet iaculis velit tristique vel. Fusce ac augue metus. Quisque luctus metus est, ut scelerisque justo viverra ull','Mirko Mirkovic','2020-05-05'),(2,'Drugi naslov bloga','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod tellus eget nibh bibendum, sit amet iaculis purus consequat. Nunc lorem dui, iaculis in porta vel, vehicula id tellus. Nulla facilisi. In et tellus id ipsum condimentum iaculis vel vitae neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tristique ex sit amet elit feugiat, at semper felis ornare. Morbi id augue tristique, laoreet nulla quis, viverra mauris. Vivamus euismod est eget efficitur placerat. Donec iaculis, est vel volutpat egestas, risus enim laoreet dolor, et scelerisque metus purus in odio. Quisque enim lorem, rutrum in venenatis a, facilisis vitae lectus. Nulla mi nunc, efficitur vel nisl sit amet, congue maximus nibh. Phasellus sit amet est ac diam imperdiet lacinia at sed augue. Proin pellentesque rutrum libero, sit amet iaculis velit tristique vel. Fusce ac augue metus. Quisque luctus metus est, ut scelerisque justo viverra ull','Dragana Mirkovic','2021-05-05'),(3,'Treci naslov bloga','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod tellus eget nibh bibendum, sit amet iaculis purus consequat. Nunc lorem dui, iaculis in porta vel, vehicula id tellus. Nulla facilisi. In et tellus id ipsum condimentum iaculis vel vitae neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tristique ex sit amet elit feugiat, at semper felis ornare. Morbi id augue tristique, laoreet nulla quis, viverra mauris. Vivamus euismod est eget efficitur placerat. Donec iaculis, est vel volutpat egestas, risus enim laoreet dolor, et scelerisque metus purus in odio. Quisque enim lorem, rutrum in venenatis a, facilisis vitae lectus. Nulla mi nunc, efficitur vel nisl sit amet, congue maximus nibh. Phasellus sit amet est ac diam imperdiet lacinia at sed augue. Proin pellentesque rutrum libero, sit amet iaculis velit tristique vel. Fusce ac augue metus. Quisque luctus metus est, ut scelerisque justo viverra ull','Jelena Jankovic','2022-05-05');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 16:14:18
