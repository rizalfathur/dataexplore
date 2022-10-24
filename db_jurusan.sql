-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: jurusan
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `civitas`
--

DROP TABLE IF EXISTS `civitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `civitas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `Agama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civitas`
--

LOCK TABLES `civitas` WRITE;
/*!40000 ALTER TABLE `civitas` DISABLE KEYS */;
INSERT INTO `civitas` VALUES (1,'Supriyadi','Jl. Sumedang No.10','Sumedang','1970-05-21','Islam','Cleaning Service'),(2,'Murad','Jl. Sumedang No. 45','Sumedang','1985-10-30','Islam','Security'),(3,'Puadi Mardani','Jl. Raya Sumedang No. 19','Sumedang','1985-05-21','Islam','Staff TU'),(4,'Suratman','Jl. Cikeruh No. 20','Bandung','1975-02-15','Islam','Security'),(5,'Mahendar Gusti','Jl. Caringin No.13','Bandung','1987-12-12','Islam','Staff TU'),(6,'Sumarni','Jl. Sumatera No. 27','Bandung','1988-11-21','Islam','Staff TU');
/*!40000 ALTER TABLE `civitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftar_gaji`
--

DROP TABLE IF EXISTS `daftar_gaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daftar_gaji` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `gaji` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`),
  CONSTRAINT `daftar_gaji_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `dosen` (`id`),
  CONSTRAINT `daftar_gaji_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `civitas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_gaji`
--

LOCK TABLES `daftar_gaji` WRITE;
/*!40000 ALTER TABLE `daftar_gaji` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftar_gaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dosen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `gelar` varchar(10) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (1,'Marwah','Jl. Sukabumi No 90','Jakarta','1995-10-12','Islam','S.Ag','Dosen'),(2,'Juan Riqq','Komp. Bumi Parahyangan Blok A1 No 5','New York','1985-05-20','Katolik','Drs.','Dosen'),(3,'Soerjono','Jl. Lombok No 30','Solo','1975-10-11','Islam','M. Kom','Dosen'),(4,'Nurhayati','Jl. Surakarta No 11','Bandung','1980-05-10','Islam','SE','Dosen'),(5,'Maria','Jl. Komp. Bumi Asri 5 Blok C2 No 10','Jakarta','1977-02-20','Protestan','MBA','Dosen');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs`
--

DROP TABLE IF EXISTS `mhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mhs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `asal_sekolah` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs`
--

LOCK TABLES `mhs` WRITE;
/*!40000 ALTER TABLE `mhs` DISABLE KEYS */;
INSERT INTO `mhs` VALUES (1,'Salsabila Rizqia Pransgiarti','Jl. Mahadaya No.15 ','Teknik Informatika','Islam','SMAN 28 Bandung','Bandung','1999-05-29'),(2,'Rizal Fathur Rahman','Jl. Cinta Kasih No. 10','Teknik Informatika','Islam','SMAN 29 Bandung','Bandung','2000-02-27'),(3,'Sumarni Amalia','Jl. Raya Sumedang No. 10','Teknik Informatika','Islam','SMAN 2 Sumedang','Sumedang','1999-03-25'),(4,'Farhan Ramadhan','Jl. Bougenvile Blok A2 No. 1','Teknik Informatika','Islam','SMAN 66 Jakarta','Jakarta','1998-10-30'),(5,'Ginting Simanjuntak','Jl. Bougenvile Blok D1 No. 15','Teknik Informatika','Katolik','SMAN 5 Medan','Medan','1998-03-19');
/*!40000 ALTER TABLE `mhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_mk`
--

DROP TABLE IF EXISTS `mhs_mk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mhs_mk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mk_id` int DEFAULT NULL,
  `mhs_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mk_id` (`mk_id`),
  KEY `mhs_id` (`mhs_id`),
  CONSTRAINT `mhs_mk_ibfk_1` FOREIGN KEY (`mk_id`) REFERENCES `mk` (`id`),
  CONSTRAINT `mhs_mk_ibfk_2` FOREIGN KEY (`mhs_id`) REFERENCES `mhs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_mk`
--

LOCK TABLES `mhs_mk` WRITE;
/*!40000 ALTER TABLE `mhs_mk` DISABLE KEYS */;
INSERT INTO `mhs_mk` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,3,2),(7,3,3),(8,3,4),(9,3,5),(10,4,2),(11,4,5),(12,5,1),(13,5,2),(14,5,3),(15,5,4),(16,5,5),(17,6,1),(18,6,3),(19,6,4),(20,6,5);
/*!40000 ALTER TABLE `mhs_mk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mhs_ujian`
--

DROP TABLE IF EXISTS `mhs_ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mhs_ujian` (
  `nomor` int NOT NULL AUTO_INCREMENT,
  `mhs_id` int DEFAULT NULL,
  `ujian_id` int DEFAULT NULL,
  `nilai` int DEFAULT NULL,
  `kat_nilai` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nomor`),
  KEY `mhs_id` (`mhs_id`),
  KEY `ujian_id` (`ujian_id`),
  CONSTRAINT `mhs_ujian_ibfk_1` FOREIGN KEY (`mhs_id`) REFERENCES `mhs` (`id`),
  CONSTRAINT `mhs_ujian_ibfk_2` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mhs_ujian`
--

LOCK TABLES `mhs_ujian` WRITE;
/*!40000 ALTER TABLE `mhs_ujian` DISABLE KEYS */;
INSERT INTO `mhs_ujian` VALUES (1,1,1,75,'B'),(2,1,2,80,'A'),(3,1,4,90,'A'),(4,1,5,95,'A'),(5,2,1,90,'A'),(6,2,2,87,'A'),(7,2,3,85,'A'),(8,2,4,95,'A'),(9,3,1,85,'A'),(10,3,2,55,'C'),(11,3,4,60,'C'),(12,3,5,75,'B'),(13,4,1,80,'A'),(14,4,2,75,'B'),(15,4,4,45,'D'),(16,4,5,88,'A'),(17,5,2,90,'A'),(18,5,3,85,'A'),(19,5,4,76,'B'),(20,5,5,0,'E');
/*!40000 ALTER TABLE `mhs_ujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mk`
--

DROP TABLE IF EXISTS `mk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `dosen_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dosen_id` (`dosen_id`),
  CONSTRAINT `mk_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mk`
--

LOCK TABLES `mk` WRITE;
/*!40000 ALTER TABLE `mk` DISABLE KEYS */;
INSERT INTO `mk` VALUES (2,'Agama',1),(3,'Ekonomi',4),(4,'Ekonomi Terapan',5),(5,'Sistem Informasi',3),(6,'Bahasa Inggris',2);
/*!40000 ALTER TABLE `mk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujian`
--

DROP TABLE IF EXISTS `ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ujian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tgl_ujian` datetime DEFAULT NULL,
  `kat` varchar(10) DEFAULT NULL,
  `mk_id` int DEFAULT NULL,
  `dosen_id` int DEFAULT NULL,
  `waktu` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mk_id` (`mk_id`),
  KEY `dosen_id` (`dosen_id`),
  CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`mk_id`) REFERENCES `mk` (`id`),
  CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujian`
--

LOCK TABLES `ujian` WRITE;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
INSERT INTO `ujian` VALUES (1,'2022-05-15 10:30:00','UTS',2,1,90),(2,'2022-05-16 10:30:00','UTS',3,4,90),(3,'2022-05-17 10:30:00','UTS',4,5,90),(4,'2022-05-18 10:30:00','UTS',5,3,90),(5,'2022-05-19 10:30:00','UTS',6,2,90);
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukt_mhs`
--

DROP TABLE IF EXISTS `ukt_mhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukt_mhs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mhs_id` int DEFAULT NULL,
  `golongan` varchar(10) NOT NULL,
  `ukt` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mhs_id` (`mhs_id`),
  CONSTRAINT `ukt_mhs_ibfk_1` FOREIGN KEY (`mhs_id`) REFERENCES `mhs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukt_mhs`
--

LOCK TABLES `ukt_mhs` WRITE;
/*!40000 ALTER TABLE `ukt_mhs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukt_mhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jurusan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 10:14:27
