-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mercado
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `BAIRRO`
--

DROP TABLE IF EXISTS `BAIRRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BAIRRO` (
  `idBairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `idCidade` int(11) NOT NULL,
  PRIMARY KEY (`idBairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BAIRRO`
--

LOCK TABLES `BAIRRO` WRITE;
/*!40000 ALTER TABLE `BAIRRO` DISABLE KEYS */;
/*!40000 ALTER TABLE `BAIRRO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CIDADE`
--

DROP TABLE IF EXISTS `CIDADE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CIDADE` (
  `idCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `idEstado` int(11) NOT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CIDADE`
--

LOCK TABLES `CIDADE` WRITE;
/*!40000 ALTER TABLE `CIDADE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CIDADE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENDERECO`
--

DROP TABLE IF EXISTS `ENDERECO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENDERECO` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `numero` char(6) DEFAULT NULL,
  `idBairro` int(11) NOT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENDERECO`
--

LOCK TABLES `ENDERECO` WRITE;
/*!40000 ALTER TABLE `ENDERECO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ENDERECO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LISTA`
--

DROP TABLE IF EXISTS `LISTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LISTA` (
  `idLista` int(11) NOT NULL AUTO_INCREMENT,
  `nomeLista` varchar(45) DEFAULT NULL,
  `nomeProduto` varchar(45) DEFAULT NULL,
  `idPessoa` varchar(45) NOT NULL,
  PRIMARY KEY (`idLista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LISTA`
--

LOCK TABLES `LISTA` WRITE;
/*!40000 ALTER TABLE `LISTA` DISABLE KEYS */;
/*!40000 ALTER TABLE `LISTA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MARCA`
--

DROP TABLE IF EXISTS `MARCA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MARCA` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MARCA`
--

LOCK TABLES `MARCA` WRITE;
/*!40000 ALTER TABLE `MARCA` DISABLE KEYS */;
INSERT INTO `MARCA` VALUES (1,'mmm'),(2,'uuu'),(3,'gggg'),(4,'Nestle'),(5,'chupalupipato'),(6,'chupachupitos'),(7,'bombril'),(8,'oppapaa'),(9,'ksopas'),(10,'pppp'),(11,'lll'),(12,'Ovo'),(13,'ooo'),(14,'dfg'),(15,'SANTA '),(16,'juvenencio'),(17,'jjijij'),(18,'sdfg'),(19,'lklkkk'),(20,'llll'),(21,'lllllll'),(22,'kkkkk'),(23,'lklklllk'),(24,'sdf'),(25,'dove'),(26,'ttt');
/*!40000 ALTER TABLE `MARCA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PESSOA`
--

DROP TABLE IF EXISTS `PESSOA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PESSOA` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PESSOA`
--

LOCK TABLES `PESSOA` WRITE;
/*!40000 ALTER TABLE `PESSOA` DISABLE KEYS */;
INSERT INTO `PESSOA` VALUES (1,'Marlon','2017-12-30','F','a@a.a','$2y$10$kGxKOVey3vPHBt6OAHTsnubX5IMujS4m0mg2UIPENHn'),(2,'Marlon','2017-12-31','M','b@b.b','8b6ecfcc795363e21e0cced02eaacf22b9ba867b');
/*!40000 ALTER TABLE `PESSOA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUTO`
--

DROP TABLE IF EXISTS `PRODUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUTO` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) DEFAULT NULL,
  `valor` decimal(15,2) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `dataPublicacao` date DEFAULT NULL,
  `idPessoa` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTO`
--

LOCK TABLES `PRODUTO` WRITE;
/*!40000 ALTER TABLE `PRODUTO` DISABLE KEYS */;
INSERT INTO `PRODUTO` VALUES (1,'Banana ',2.00,'Alimento',NULL,0,0),(2,'kk',1.24,'Alimento',NULL,0,0),(3,'ooo',2.25,'Alimento',NULL,0,0),(4,'jkhdf',4356.00,'Higiene',NULL,0,0),(5,'jhfdkjk',324.00,'Higiene',NULL,0,0),(6,'uma banana',123.00,'Limpeza',NULL,0,0),(7,'teste',999999.00,'Limpeza',NULL,0,0),(8,'teste10',1.50,'Higiene',NULL,0,0),(9,'teste10',1.50,'Higiene',NULL,0,0),(10,'teste11',1.00,'Alimento',NULL,0,0),(11,'teste11',1.00,'Alimento',NULL,0,0),(12,'ppp',12.00,'Alimento',NULL,1,1),(13,'teste15',23.00,'Alimento',NULL,1,2),(14,'teste15',23.00,'Alimento',NULL,1,2),(15,'pppppppp',12.00,'Alimento',NULL,1,3),(16,'blabla',1.00,'Alimento',NULL,1,6),(17,'Detergente',1.50,'Alimento',NULL,1,7),(18,'kmkimi',89889.00,'Higiene',NULL,1,0),(19,'123',2.00,'Alimento',NULL,1,0),(20,'wwww',222.00,'Bebida',NULL,1,0),(21,'teste00',123.00,'Bebida',NULL,1,0),(22,'agua',12345.00,'Bebida',NULL,1,0),(23,'teste00',1.00,'Higiene',NULL,1,0),(24,'teste01',2.00,'Higiene',NULL,1,8),(25,'chovechuva',12345.00,'Bebida',NULL,1,9),(26,'teste02',12.00,'Alimento',NULL,1,10),(27,'teste03',1.00,'Alimento',NULL,1,11),(28,'teste05',5.00,'Alimento','2017-06-22',1,13),(29,'teste06',3.00,'Alimento','2017-06-22',1,14),(30,'SANTA MARIA ',234.00,'Higiene','2017-06-22',1,15),(31,'mais um',1.00,'Limpeza','2017-06-26',1,17),(32,'agua',1.00,'Alimento','2017-06-26',1,1),(33,'Procedure 00',1.00,'Alimento','2017-06-26',0,0),(34,'Chuva',1.00,'Alimento','2017-06-26',0,0),(35,'fogo',1234.00,'Alimento','2017-06-26',1,24),(36,'sabonete',2.00,'Higiene','2017-06-27',1,25),(37,'Vassoura',10.00,'Limpeza','2017-06-27',2,26);
/*!40000 ALTER TABLE `PRODUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUTO_SUPERMERCADO`
--

DROP TABLE IF EXISTS `PRODUTO_SUPERMERCADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUTO_SUPERMERCADO` (
  `idProduto_Supermercado` int(11) NOT NULL AUTO_INCREMENT,
  `idProduto` int(11) NOT NULL,
  `idSupermercado` int(11) NOT NULL,
  PRIMARY KEY (`idProduto_Supermercado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTO_SUPERMERCADO`
--

LOCK TABLES `PRODUTO_SUPERMERCADO` WRITE;
/*!40000 ALTER TABLE `PRODUTO_SUPERMERCADO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO_SUPERMERCADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROMOCAO`
--

DROP TABLE IF EXISTS `PROMOCAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROMOCAO` (
  `idPromocao` int(11) NOT NULL AUTO_INCREMENT,
  `dataPublicacao` date NOT NULL,
  PRIMARY KEY (`idPromocao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROMOCAO`
--

LOCK TABLES `PROMOCAO` WRITE;
/*!40000 ALTER TABLE `PROMOCAO` DISABLE KEYS */;
INSERT INTO `PROMOCAO` VALUES (1,'2017-06-19'),(2,'2017-06-22'),(3,'0000-00-00'),(4,'2017-06-22'),(5,'2017-06-22'),(6,'2017-06-22');
/*!40000 ALTER TABLE `PROMOCAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPERMERCADO`
--

DROP TABLE IF EXISTS `SUPERMERCADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPERMERCADO` (
  `idSupermercado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSupermercado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPERMERCADO`
--

LOCK TABLES `SUPERMERCADO` WRITE;
/*!40000 ALTER TABLE `SUPERMERCADO` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUPERMERCADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPERMERCADO_ENDERECO`
--

DROP TABLE IF EXISTS `SUPERMERCADO_ENDERECO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPERMERCADO_ENDERECO` (
  `idSupermercado_Endereco` int(11) NOT NULL AUTO_INCREMENT,
  `idSupermercado` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  PRIMARY KEY (`idSupermercado_Endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPERMERCADO_ENDERECO`
--

LOCK TABLES `SUPERMERCADO_ENDERECO` WRITE;
/*!40000 ALTER TABLE `SUPERMERCADO_ENDERECO` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUPERMERCADO_ENDERECO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TELEFONE`
--

DROP TABLE IF EXISTS `TELEFONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TELEFONE` (
  `idTelefone` int(11) NOT NULL AUTO_INCREMENT,
  `telefone` varchar(45) NOT NULL,
  PRIMARY KEY (`idTelefone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TELEFONE`
--

LOCK TABLES `TELEFONE` WRITE;
/*!40000 ALTER TABLE `TELEFONE` DISABLE KEYS */;
INSERT INTO `TELEFONE` VALUES (1,''),(2,'');
/*!40000 ALTER TABLE `TELEFONE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_imprimir_produto`
--

DROP TABLE IF EXISTS `vw_imprimir_produto`;
/*!50001 DROP VIEW IF EXISTS `vw_imprimir_produto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_imprimir_produto` AS SELECT 
 1 AS `nome`,
 1 AS `valor`,
 1 AS `nome_marca`,
 1 AS `dataPublicacao`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_imprimir_produto`
--

/*!50001 DROP VIEW IF EXISTS `vw_imprimir_produto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`127.0.0.1` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_imprimir_produto` AS select `p`.`nome` AS `nome`,`p`.`valor` AS `valor`,`m`.`nome_marca` AS `nome_marca`,`p`.`dataPublicacao` AS `dataPublicacao`,`p`.`categoria` AS `categoria` from (`produto` `p` join `marca` `m` on((`p`.`idMarca` = `m`.`idMarca`))) order by `p`.`dataPublicacao` desc */;
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

-- Dump completed on 2017-06-27 19:19:44
