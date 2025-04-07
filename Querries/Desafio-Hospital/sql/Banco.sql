-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `idConsultas` int NOT NULL,
  `data_hora` datetime DEFAULT NULL,
  `idPacientes` int NOT NULL,
  `idMedicos` int NOT NULL,
  PRIMARY KEY (`idConsultas`),
  KEY `fk_Consultas_Pacientes_idx` (`idPacientes`),
  KEY `fk_Consultas_Medicos1_idx` (`idMedicos`),
  CONSTRAINT `fk_Consultas_Medicos1` FOREIGN KEY (`idMedicos`) REFERENCES `medicos` (`idMedicos`),
  CONSTRAINT `fk_Consultas_Pacientes` FOREIGN KEY (`idPacientes`) REFERENCES `pacientes` (`idPacientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,'2024-10-01 08:30:00',3,1),(2,'2024-10-01 09:00:00',7,4),(3,'2024-10-01 09:30:00',2,6),(4,'2024-10-01 10:00:00',8,5),(5,'2024-10-01 10:30:00',5,3),(6,'2024-10-01 11:00:00',9,8),(7,'2024-10-01 11:30:00',6,2),(8,'2024-10-01 13:00:00',1,7),(9,'2024-10-01 13:30:00',4,9),(10,'2024-10-01 14:00:00',10,10);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacoes`
--

DROP TABLE IF EXISTS `internacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacoes` (
  `idInternacoes` int NOT NULL,
  `entrada` datetime NOT NULL,
  `saida` datetime DEFAULT NULL,
  `idPacientes` int NOT NULL,
  `Medico_Responsavel` int NOT NULL,
  PRIMARY KEY (`idInternacoes`),
  KEY `fk_Internacoes_Pacientes1_idx` (`idPacientes`),
  KEY `fk_Internacoes_Medicos1_idx` (`Medico_Responsavel`),
  CONSTRAINT `fk_Internacoes_Medicos1` FOREIGN KEY (`Medico_Responsavel`) REFERENCES `medicos` (`idMedicos`),
  CONSTRAINT `fk_Internacoes_Pacientes1` FOREIGN KEY (`idPacientes`) REFERENCES `pacientes` (`idPacientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacoes`
--

LOCK TABLES `internacoes` WRITE;
/*!40000 ALTER TABLE `internacoes` DISABLE KEYS */;
INSERT INTO `internacoes` VALUES (1,'2024-10-01 08:00:00','2024-10-05 08:00:00',4,3),(2,'2024-10-02 09:00:00','2024-10-06 09:00:00',1,6),(3,'2024-10-03 10:00:00','2024-10-07 10:00:00',5,8),(4,'2024-10-04 11:00:00','2024-10-08 11:00:00',7,2),(5,'2024-10-05 12:00:00','2024-10-09 12:00:00',8,1),(6,'2024-10-06 13:00:00','2024-10-10 13:00:00',2,7),(7,'2024-10-07 14:00:00','2024-10-11 14:00:00',3,4),(8,'2024-10-08 15:00:00','2024-10-12 15:00:00',9,5),(9,'2024-10-09 16:00:00','2024-10-13 16:00:00',10,9),(10,'2024-10-10 08:00:00','2024-10-14 08:00:00',6,10);
/*!40000 ALTER TABLE `internacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacoes_medicos`
--

DROP TABLE IF EXISTS `internacoes_medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacoes_medicos` (
  `Internacoes_idInternacoes` int NOT NULL,
  `Medicos_idMedicos` int NOT NULL,
  KEY `fk_Internacoes_has_Medicos_Medicos1_idx` (`Medicos_idMedicos`),
  KEY `fk_Internacoes_has_Medicos_Internacoes1_idx` (`Internacoes_idInternacoes`),
  CONSTRAINT `fk_Internacoes_has_Medicos_Internacoes1` FOREIGN KEY (`Internacoes_idInternacoes`) REFERENCES `internacoes` (`idInternacoes`),
  CONSTRAINT `fk_Internacoes_has_Medicos_Medicos1` FOREIGN KEY (`Medicos_idMedicos`) REFERENCES `medicos` (`idMedicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacoes_medicos`
--

LOCK TABLES `internacoes_medicos` WRITE;
/*!40000 ALTER TABLE `internacoes_medicos` DISABLE KEYS */;
INSERT INTO `internacoes_medicos` VALUES (1,1),(2,5),(3,3),(4,4),(5,2),(6,6),(7,8),(8,7),(9,10),(10,9);
/*!40000 ALTER TABLE `internacoes_medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacoes_tratamentos`
--

DROP TABLE IF EXISTS `internacoes_tratamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacoes_tratamentos` (
  `idInternacoes` int NOT NULL,
  `idTratamentos` int NOT NULL,
  KEY `fk_Internacoes_has_Tratamentos_Tratamentos1_idx` (`idTratamentos`),
  KEY `fk_Internacoes_has_Tratamentos_Internacoes1_idx` (`idInternacoes`),
  CONSTRAINT `fk_Internacoes_has_Tratamentos_Internacoes1` FOREIGN KEY (`idInternacoes`) REFERENCES `internacoes` (`idInternacoes`),
  CONSTRAINT `fk_Internacoes_has_Tratamentos_Tratamentos1` FOREIGN KEY (`idTratamentos`) REFERENCES `tratamentos` (`idTratamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacoes_tratamentos`
--

LOCK TABLES `internacoes_tratamentos` WRITE;
/*!40000 ALTER TABLE `internacoes_tratamentos` DISABLE KEYS */;
INSERT INTO `internacoes_tratamentos` VALUES (1,4),(2,2),(3,1),(4,5),(5,6),(6,3),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `internacoes_tratamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `idMedicos` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `especialidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMedicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Dr. Eduardo Costa','Cardiologia'),(2,'Dra. Renata Mendes','Dermatologia'),(3,'Dr. Lucas Nogueira','Pediatria'),(4,'Dra. Ana Paula Martins','Ginecologia'),(5,'Dr. Fernando Silva','Ortopedia'),(6,'Dra. Márcia Freitas','Endocrinologia'),(7,'Dr. Jorge Oliveira','Neurologia'),(8,'Dra. Carla Ramos','Psiquiatria'),(9,'Dr. Victor Santos','Oftalmologia'),(10,'Dra. Fábia Almeida','Otorrinolaringologia');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `idPacientes` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idPacientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'João da Silva','123.456.789-00'),(2,'Maria de Souza','234.567.890-11'),(3,'Carlos Eduardo','345.678.901-22'),(4,'Fernanda Lima','456.789.012-33'),(5,'Ana Beatriz','567.890.123-44'),(6,'Rafael Gomes','678.901.234-55'),(7,'Luciana Pereira','789.012.345-66'),(8,'José Alves','890.123.456-77'),(9,'Marcos Aurélio','901.234.567-88'),(10,'Carolina Ribeiro','012.345.678-99');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamentos`
--

DROP TABLE IF EXISTS `tratamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamentos` (
  `idTratamentos` int NOT NULL,
  `Tratamentoscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTratamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamentos`
--

LOCK TABLES `tratamentos` WRITE;
/*!40000 ALTER TABLE `tratamentos` DISABLE KEYS */;
INSERT INTO `tratamentos` VALUES (1,'Cirurgia'),(2,'Fisioterapia'),(3,'Quimioterapia'),(4,'Radioterapia'),(5,'Terapia Ocupacional'),(6,'Psicoterapia'),(7,'Fonoaudiologia'),(8,'Nutrição Clínica'),(9,'Acupuntura'),(10,'Terapia Medicamentosa');
/*!40000 ALTER TABLE `tratamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23  7:09:12
