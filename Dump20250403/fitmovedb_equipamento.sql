-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fitmovedb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` varchar(10000) DEFAULT NULL,
  `preco_mensal` decimal(38,2) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `avaliacao` int DEFAULT NULL,
  `disponivel` bit(1) DEFAULT NULL,
  `preco_diario` decimal(38,2) DEFAULT NULL,
  `preco_semanal` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `equipamento_chk_1` CHECK ((`avaliacao` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Esteira Profissional','Esteira profissional com inclinação automática e programas de treino','https://img.freepik.com/free-photo/3d-gym-equipment_23-2151114175.jpg?t=st=1743709815~exp=1743713415~hmac=6b236ffc0e9330741ae8ddf5a502098931eed68b530c3dab43b904b26b42ae2e&w=740',299.99,'Movement',5,NULL,NULL,NULL),(2,'Bicicleta Ergométrica','Bicicleta ergométrica com resistência ajustável e monitor cardíaco','https://images-na.ssl-images-amazon.com/images/I/61pOXHTtORL.jpg',199.99,'Caloi',4,NULL,NULL,NULL),(3,'Conjunto de Halteres','Conjunto de halteres de diferentes pesos para treino de força','https://img.freepik.com/premium-photo/gym-dumbbell-rack-stand-weightlifting-gym-equipment_92242-6505.jpg?w=740',149.99,'Polimet',5,NULL,NULL,NULL),(4,'Banco Multifuncional','Banco ajustável para diversos exercícios de musculação','https://img.freepik.com/free-photo/3d-gym-equipment_23-2151114151.jpg?t=st=1743709293~exp=1743712893~hmac=09ddf40dfa0df4a7ffb4718704458fa40fe7f2be7687a28ce1ec26b8e3bd9de9&w=1380',129.99,'Kikos',4,NULL,NULL,NULL),(5,'Barra Olímpica','Barra olímpica de 2,20m para levantamento de peso','https://img.freepik.com/free-photo/top-view-training-equipment-tools_23-2148353018.jpg?t=st=1743709435~exp=1743713035~hmac=31b5c81bcd50e2c2d3ed6df7c741184ae1660a78fbcd6597d4aca6f155e175c9&w=1380',9.99,'LiveUp',5,NULL,NULL,NULL),(6,'Anilhas de Ferro','Conjunto de anilhas de ferro para musculação','https://img.freepik.com/free-vector/barbells-dumbbells-fitness-realistic-composition-with-set-circle-dumbbells-different-size-weight-vector-illustration_1284-66969.jpg?t=st=1743709109~exp=1743712709~hmac=7424827635cecb75107d1fb385706ef02573fbaeaceb8909198c1b9843b334fb&w=996',8.99,'Gorilla',5,NULL,NULL,NULL),(7,'Leg Press 45°','Equipamento para treino de pernas com ajuste de carga','https://th.bing.com/th/id/OIP.CuzLiOarROKt7vQfadg28wHaHa?rs=1&pid=ImgDetMain',39.99,'Gervasport',5,NULL,NULL,NULL),(8,'Crossover','Máquina crossover para treino de membros superiores','https://img.irroba.com.br/filters:fill(fff):quality(80)/naturalf/catalog/linha-s/linha-p/crossover-q16.jpg',49.99,'HulkFit',5,NULL,NULL,NULL),(9,'Plano Inicial','Plano básico com equipamentos essenciais para treino funcional e resistência','https://th.bing.com/th/id/OIP.K7vH_V08TBDdnwkUJnFfJwAAAA?w=474&h=474&rs=1&pid=ImgDetMain',69.99,'Iniciante',5,NULL,NULL,NULL),(10,'Plano Intermediário','Plano intermediário com mais variedade de equipamentos para musculação e cardio','https://th.bing.com/th/id/R.46bb2a3a098f8ae3dc6f68ecfbef2a9a?rik=5kVMLbdCGwFq0w&pid=ImgRaw&r=0',89.99,'Intermediario',4,NULL,NULL,NULL),(11,'Plano Avançado','Plano avançado com equipamentos completos para um treino profissional','https://http2.mlstatic.com/D_NQ_NP_667129-MLB47110717362_082021-O.webp',129.99,'Avançado',5,NULL,NULL,NULL);
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03 18:04:09
