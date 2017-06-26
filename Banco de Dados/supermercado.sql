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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MARCA`
--

LOCK TABLES `MARCA` WRITE;
/*!40000 ALTER TABLE `MARCA` DISABLE KEYS */;
INSERT INTO `MARCA` VALUES (1,'mmm'),(2,'uuu'),(3,'gggg'),(4,'Nestle'),(5,'chupalupipato'),(6,'chupachupitos'),(7,'bombril'),(8,'oppapaa'),(9,'ksopas'),(10,'pppp'),(11,'lll'),(12,'Ovo'),(13,'ooo'),(14,'dfg'),(15,'SANTA ');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PESSOA`
--

LOCK TABLES `PESSOA` WRITE;
/*!40000 ALTER TABLE `PESSOA` DISABLE KEYS */;
INSERT INTO `PESSOA` VALUES (1,'MARLON DA ROSA','1992-10-28','M','marlonti17@gmail.com','123'),(2,'Ariel','1992-10-28','M','arielalmeida@zipline.com','123'),(3,'kkk','4321-03-12','M','mstk@2KKK.com','123'),(4,'hjhj','5678-08-07','M','hhj@jj.com','123'),(5,'hjhj','1234-03-12','M','fL@gk.com',''),(6,'hgj','1234-02-12','M','kk@ff.cc','202cb962ac59075b964b07152d234b70'),(7,'kjh','1234-12-12','M','dfk@fkk.com',''),(8,'jkljkl','1234-12-02','M','sadkl@dsakl.com','d8aaf31be10e7f3c7290e781ad67e27c'),(9,'klj','0124-12-12','M','mskldf@fklsj.com',''),(10,'hghj','7878-08-07','M','oer@kl.com',''),(11,'jkjk','0000-00-00','M','2122@kl.com','9c15c36515870e33f7752cab6293bca9'),(12,'kj','1221-12-21','M','KJKL@LK.COM','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(13,'teste_sha1','2828-08-28','M','kel@kel.com','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(14,'novousuario','1221-12-28','M','lfkd@mm.com','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(15,'sha1','1212-02-21','M','22@kk.com','8b6ecfcc795363e21e0cced02eaacf22b9ba867b'),(16,'novo_sha1','1212-12-12','M','rr@mm.com','8b6ecfcc795363e21e0cced02eaacf22b9ba867b'),(17,'md5','1212-12-21','M','mm@mm.com','202cb962ac59075b964b07152d234b70'),(18,'novo_md5','2112-12-21','M','novo_md5@cript.com','202cb962ac59075b964b07152d234b70'),(19,'teste','1212-12-21','M','teste@teste.com','(fa109667e0938f74092be166f5c6ac17fba8d751)'),(20,'cripto','2121-02-21','M','cripto@cripto.com','(d80ec6f4b2729a59f27b502049e6ec6ffef86d29)'),(21,'cccc','1212-12-21','M','cc@cccc.com','()'),(22,'jkhhklh','7978-09-08','M','iuiu@jhkhhj','()'),(23,'nm,','0121-02-21','M','jkhs@jkh.com','(0043788a2f6a50b27429c88be35628f6b6d7d92d)'),(24,'mnbnbmnmbnmb','9898-09-08','M','IUO2iuo2K@KJL.CONM','5868d01dd8bfce34a99a2718c89d47ef088d005f'),(25,'kkk','1212-12-21','M','marlonkjl@lkj.com','dcd29b1761400f0a6cb288c745e4b887b632ea5c'),(26,'kkk','1212-12-21','M','marlonkjl@lkj.com','dcd29b1761400f0a6cb288c745e4b887b632ea5c'),(27,'kkk','1212-12-21','M','marlonkjl@lkj.com','dcd29b1761400f0a6cb288c745e4b887b632ea5c'),(28,'Joao','1993-10-28','M','joao@joao.com.br','99597cdc76de4d1b65c1ff1608de6d8cd4b5975f');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTO`
--

LOCK TABLES `PRODUTO` WRITE;
/*!40000 ALTER TABLE `PRODUTO` DISABLE KEYS */;
INSERT INTO `PRODUTO` VALUES (1,'Banana ',2.00,'Alimento',NULL,0,0),(2,'kk',1.24,'Alimento',NULL,0,0),(3,'ooo',2.25,'Alimento',NULL,0,0),(4,'jkhdf',4356.00,'Higiene',NULL,0,0),(5,'jhfdkjk',324.00,'Higiene',NULL,0,0),(6,'uma banana',123.00,'Limpeza',NULL,0,0),(7,'teste',999999.00,'Limpeza',NULL,0,0),(8,'teste10',1.50,'Higiene',NULL,0,0),(9,'teste10',1.50,'Higiene',NULL,0,0),(10,'teste11',1.00,'Alimento',NULL,0,0),(11,'teste11',1.00,'Alimento',NULL,0,0),(12,'ppp',12.00,'Alimento',NULL,1,1),(13,'teste15',23.00,'Alimento',NULL,1,2),(14,'teste15',23.00,'Alimento',NULL,1,2),(15,'pppppppp',12.00,'Alimento',NULL,1,3),(16,'blabla',1.00,'Alimento',NULL,1,6),(17,'Detergente',1.50,'Alimento',NULL,1,7),(18,'kmkimi',89889.00,'Higiene',NULL,1,0),(19,'123',2.00,'Alimento',NULL,1,0),(20,'wwww',222.00,'Bebida',NULL,1,0),(21,'teste00',123.00,'Bebida',NULL,1,0),(22,'agua',12345.00,'Bebida',NULL,1,0),(23,'teste00',1.00,'Higiene',NULL,1,0),(24,'teste01',2.00,'Higiene',NULL,1,8),(25,'chovechuva',12345.00,'Bebida',NULL,1,9),(26,'teste02',12.00,'Alimento',NULL,1,10),(27,'teste03',1.00,'Alimento',NULL,1,11),(28,'teste05',5.00,'Alimento','2017-06-22',1,13),(29,'teste06',3.00,'Alimento','2017-06-22',1,14),(30,'SANTA MARIA ',234.00,'Higiene','2017-06-22',1,15);
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

-- Dump completed on 2017-06-26 12:00:42
