-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.16.71    Database: etcsinfrax21
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
-- Table structure for table `associatedfeature`
--

DROP TABLE IF EXISTS `associatedfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedfeature` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LLocFt×LAssFt` FOREIGN KEY (`id`) REFERENCES `localizationfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedfeature`
--

LOCK TABLES `associatedfeature` WRITE;
/*!40000 ALTER TABLE `associatedfeature` DISABLE KEYS */;
INSERT INTO `associatedfeature` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1'),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2'),('0e8c2da9-4c1c-4703-8367-2d5769bd3672'),('16574645-e2a3-414e-b92f-8aa3172372a9'),('1852e479-224d-4100-89eb-c0ce0dd9ae81'),('1d966e87-9696-4da3-811b-ac1d61c977a4'),('35f32f64-e725-4fcd-86f8-ccdedeac93e2'),('37f120a5-a43e-413b-bf16-3c544b66dc68'),('477665e4-ee8c-42ad-b478-4f25d506bdd2'),('53158710-2d5f-4528-ba5a-14b8f4b75912'),('57c783f2-a5f8-456a-99fe-53909e02b16a'),('83d26459-a915-4307-8030-e916ae0dc15a'),('87c94410-1739-45d3-8527-f70a5ef21d22'),('99673cd4-3f49-4919-864d-dd9f2f8ef52f'),('a34cd767-7834-416f-9323-b4f61bad9249'),('a43be22d-1219-4aa9-8419-970c595f6620'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3'),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a'),('bb143ba4-40fb-4c40-9613-5b384ae39b13'),('be79a172-2796-45ef-af58-55b534064194'),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78'),('dfe6a222-4b7a-445a-8332-25872d462190'),('e61cdaec-346d-4332-8338-3b1ff47c5162'),('e9d725c9-8511-4f72-aec0-ab8c9452f9e6'),('f450a176-8304-43be-99d1-94889e684a7b'),('f492195c-f591-4903-9992-e60ed04923fd'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313'),('fc6c5401-288e-4585-bc7f-909d7a0224e4');
/*!40000 ALTER TABLE `associatedfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedlocation`
--

DROP TABLE IF EXISTS `associatedlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedlocation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `associatedLocationType` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  `applicationDirection` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  `lateralSide` char(2) COLLATE utf8_czech_ci DEFAULT NULL,
  `lateralDistance` double DEFAULT NULL,
  `verticalSide` char(2) COLLATE utf8_czech_ci DEFAULT NULL,
  `verticalDistance` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LEtLoc×LAsLoc` FOREIGN KEY (`id`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedlocation`
--

LOCK TABLES `associatedlocation` WRITE;
/*!40000 ALTER TABLE `associatedlocation` DISABLE KEYS */;
INSERT INTO `associatedlocation` VALUES ('08c1efb0-603f-4322-ab54-336d072c3463','spot','both','0',0,'0',0),('12d30e44-12d8-44fe-b8fd-535027a6d50c','spot','both','0',0,'0',0),('187de3a6-a988-45df-8527-c8cbfbb0829e','spot','both','0',0,'0',0),('21e2fed0-5c8b-48e6-8378-cee47ba74c6a','linear','both','0',0,'0',0),('357b97d0-4372-4fb0-b88a-34bd134cc3c0','spot','both','0',0,'0',0),('38ea7202-070c-4c40-910d-8e95799f123f','spot','both','0',0,'0',0),('4e015053-7a61-44b7-a025-f2f317667e92','spot','both','0',0,'0',0),('52bd816e-0ab2-4826-95b4-f7cc369a6716','linear','both','0',0,'0',0),('5c476edf-caf6-4482-95da-6df88ea1c1f9','spot','both','0',0,'0',0),('63326cb3-6b55-48bd-84dc-462f3f959e08','linear','both','0',0,'0',0),('65f773bf-5482-4ce8-bac7-326b7c4f06d3','spot','both','0',0,'0',0),('6bd5a39b-6ec6-4be0-ae3d-0842efceb640','linear','normal','0',0,'0',0),('8317a7fb-7dd0-4a9f-8cc5-57332d4ab490','spot','both','0',0,'0',0),('9d156751-9d2c-46d2-9cff-fb656f62a8fe','linear','both','0',0,'0',0),('b1f09257-4bc5-40a4-8bd5-30c3de972846','spot','both','0',0,'0',0),('c866d469-20b8-4ca3-a94b-20275b8d0648','spot','both','0',0,'0',0),('ceadece9-0eb0-48db-adf2-5d3b235720ab','spot','both','0',0,'0',0),('d494e868-a674-4bcc-882c-1fdee011675c','linear','both','0',0,'0',0),('dccda469-f4fe-463e-8f8d-524ffffc586f','spot','both','0',0,'0',0),('dcf3609a-cead-4e12-b073-19a252dd94cf','linear','both','0',0,'0',0),('f72c00f1-145e-4bd7-a1a2-1809342fda5a','spot','both','0',0,'0',0),('f7527116-3c1b-4e07-a8e9-658a353ec16c','linear','both','0',0,'0',0);
/*!40000 ALTER TABLE `associatedlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedlocationfeature`
--

DROP TABLE IF EXISTS `associatedlocationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedlocationfeature` (
  `id_AssociatedFeature` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_AssociatedLocation` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `keepsOrientation` char(1) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_AssociatedFeature`,`id_AssociatedLocation`,`sequence`),
  KEY `SI÷id_LAsLoc×LAsLFt` (`id_AssociatedLocation`),
  KEY `SI÷id_LAssFt×LAsLFt` (`id_AssociatedFeature`),
  CONSTRAINT `FK÷id_LAsLoc×LAsLFt` FOREIGN KEY (`id_AssociatedLocation`) REFERENCES `associatedlocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssFt×LAsLFt` FOREIGN KEY (`id_AssociatedFeature`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedlocationfeature`
--

LOCK TABLES `associatedlocationfeature` WRITE;
/*!40000 ALTER TABLE `associatedlocationfeature` DISABLE KEYS */;
INSERT INTO `associatedlocationfeature` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1','f72c00f1-145e-4bd7-a1a2-1809342fda5a',1,'1'),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2','357b97d0-4372-4fb0-b88a-34bd134cc3c0',1,'1'),('16574645-e2a3-414e-b92f-8aa3172372a9','21e2fed0-5c8b-48e6-8378-cee47ba74c6a',1,'1'),('1852e479-224d-4100-89eb-c0ce0dd9ae81','ceadece9-0eb0-48db-adf2-5d3b235720ab',1,'1'),('1d966e87-9696-4da3-811b-ac1d61c977a4','38ea7202-070c-4c40-910d-8e95799f123f',1,'1'),('35f32f64-e725-4fcd-86f8-ccdedeac93e2','dccda469-f4fe-463e-8f8d-524ffffc586f',1,'1'),('37f120a5-a43e-413b-bf16-3c544b66dc68','65f773bf-5482-4ce8-bac7-326b7c4f06d3',1,'1'),('477665e4-ee8c-42ad-b478-4f25d506bdd2','5c476edf-caf6-4482-95da-6df88ea1c1f9',1,'1'),('53158710-2d5f-4528-ba5a-14b8f4b75912','8317a7fb-7dd0-4a9f-8cc5-57332d4ab490',1,'1'),('87c94410-1739-45d3-8527-f70a5ef21d22','6bd5a39b-6ec6-4be0-ae3d-0842efceb640',1,'1'),('87c94410-1739-45d3-8527-f70a5ef21d22','dcf3609a-cead-4e12-b073-19a252dd94cf',1,'1'),('a34cd767-7834-416f-9323-b4f61bad9249','08c1efb0-603f-4322-ab54-336d072c3463',1,'1'),('a43be22d-1219-4aa9-8419-970c595f6620','d494e868-a674-4bcc-882c-1fdee011675c',1,'1'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3','63326cb3-6b55-48bd-84dc-462f3f959e08',1,'1'),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a','187de3a6-a988-45df-8527-c8cbfbb0829e',1,'1'),('be79a172-2796-45ef-af58-55b534064194','c866d469-20b8-4ca3-a94b-20275b8d0648',1,'1'),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78','4e015053-7a61-44b7-a025-f2f317667e92',1,'1'),('e61cdaec-346d-4332-8338-3b1ff47c5162','f7527116-3c1b-4e07-a8e9-658a353ec16c',1,'1'),('f450a176-8304-43be-99d1-94889e684a7b','b1f09257-4bc5-40a4-8bd5-30c3de972846',1,'1'),('f492195c-f591-4903-9992-e60ed04923fd','52bd816e-0ab2-4826-95b4-f7cc369a6716',1,'1'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313','9d156751-9d2c-46d2-9cff-fb656f62a8fe',1,'1'),('fc6c5401-288e-4585-bc7f-909d7a0224e4','12d30e44-12d8-44fe-b8fd-535027a6d50c',1,'1');
/*!40000 ALTER TABLE `associatedlocationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedposition`
--

DROP TABLE IF EXISTS `associatedposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedposition` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningNetElement` char(36) COLLATE utf8_czech_ci NOT NULL,
  `intrinsicReference` double DEFAULT NULL,
  `deltaPosition` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SI÷id_TNetEl×PAssPt` (`id_PositioningNetElement`),
  CONSTRAINT `FK÷id_LAssFt×LAssPs` FOREIGN KEY (`id`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtEl×LAssPs` FOREIGN KEY (`id_PositioningNetElement`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedposition`
--

LOCK TABLES `associatedposition` WRITE;
/*!40000 ALTER TABLE `associatedposition` DISABLE KEYS */;
INSERT INTO `associatedposition` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,400),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,402.5),('0e8c2da9-4c1c-4703-8367-2d5769bd3672','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,0),('1852e479-224d-4100-89eb-c0ce0dd9ae81','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,6400),('1d966e87-9696-4da3-811b-ac1d61c977a4','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,1900),('35f32f64-e725-4fcd-86f8-ccdedeac93e2','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,1902.5),('37f120a5-a43e-413b-bf16-3c544b66dc68','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,9400),('477665e4-ee8c-42ad-b478-4f25d506bdd2','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,9402.5),('53158710-2d5f-4528-ba5a-14b8f4b75912','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,4902.5),('57c783f2-a5f8-456a-99fe-53909e02b16a','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,3500),('83d26459-a915-4307-8030-e916ae0dc15a','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,9100),('99673cd4-3f49-4919-864d-dd9f2f8ef52f','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,5500),('a34cd767-7834-416f-9323-b4f61bad9249','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,6402.5),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,4900),('bb143ba4-40fb-4c40-9613-5b384ae39b13','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,7000),('be79a172-2796-45ef-af58-55b534064194','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,7902.5),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,3402.5),('dfe6a222-4b7a-445a-8332-25872d462190','9f5aea90-d268-466e-8b9c-032c4183a8d3',1,0),('e9d725c9-8511-4f72-aec0-ab8c9452f9e6','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,1800),('f450a176-8304-43be-99d1-94889e684a7b','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,7900),('fc6c5401-288e-4585-bc7f-909d7a0224e4','9f5aea90-d268-466e-8b9c-032c4183a8d3',0,3400);
/*!40000 ALTER TABLE `associatedposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedpositioningsystem`
--

DROP TABLE IF EXISTS `associatedpositioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedpositioningsystem` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningNetElement` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_PPoSys×PAssPS` (`id_PositioningSystem`),
  KEY `SI÷id_TPNtEl×PAssPS` (`id_PositioningNetElement`),
  CONSTRAINT `FK÷id_BBaObj×PAssPS` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PPoSys×PAssPS` FOREIGN KEY (`id_PositioningSystem`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtEl×PAssPS` FOREIGN KEY (`id_PositioningNetElement`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedpositioningsystem`
--

LOCK TABLES `associatedpositioningsystem` WRITE;
/*!40000 ALTER TABLE `associatedpositioningsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `associatedpositioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedsection`
--

DROP TABLE IF EXISTS `associatedsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedsection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_AssociatedPosition_A` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_AssociatedPosition_B` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_LAssPsA×LAssSc` (`id_AssociatedPosition_A`),
  KEY `SI÷id_LAssPsB×LAssSc` (`id_AssociatedPosition_B`),
  CONSTRAINT `FK÷id_LAssFt×LAssSc` FOREIGN KEY (`id`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssPsA×LAssSc` FOREIGN KEY (`id_AssociatedPosition_A`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssPsB×LAssSc` FOREIGN KEY (`id_AssociatedPosition_B`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedsection`
--

LOCK TABLES `associatedsection` WRITE;
/*!40000 ALTER TABLE `associatedsection` DISABLE KEYS */;
INSERT INTO `associatedsection` VALUES ('16574645-e2a3-414e-b92f-8aa3172372a9','99673cd4-3f49-4919-864d-dd9f2f8ef52f','bb143ba4-40fb-4c40-9613-5b384ae39b13'),('87c94410-1739-45d3-8527-f70a5ef21d22','0e8c2da9-4c1c-4703-8367-2d5769bd3672','dfe6a222-4b7a-445a-8332-25872d462190'),('a43be22d-1219-4aa9-8419-970c595f6620','0e8c2da9-4c1c-4703-8367-2d5769bd3672','e9d725c9-8511-4f72-aec0-ab8c9452f9e6'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3','57c783f2-a5f8-456a-99fe-53909e02b16a','99673cd4-3f49-4919-864d-dd9f2f8ef52f'),('e61cdaec-346d-4332-8338-3b1ff47c5162','83d26459-a915-4307-8030-e916ae0dc15a','dfe6a222-4b7a-445a-8332-25872d462190'),('f492195c-f591-4903-9992-e60ed04923fd','e9d725c9-8511-4f72-aec0-ab8c9452f9e6','57c783f2-a5f8-456a-99fe-53909e02b16a'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313','bb143ba4-40fb-4c40-9613-5b384ae39b13','83d26459-a915-4307-8030-e916ae0dc15a');
/*!40000 ALTER TABLE `associatedsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedsignaltype`
--

DROP TABLE IF EXISTS `associatedsignaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedsignaltype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_SignalType` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XYSigT×XYASiT` (`id_SignalType`),
  CONSTRAINT `FK÷id_XYSiCT×XYASiT` FOREIGN KEY (`id`) REFERENCES `signalcomponenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XYSigT×XYASiT` FOREIGN KEY (`id_SignalType`) REFERENCES `signaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedsignaltype`
--

LOCK TABLES `associatedsignaltype` WRITE;
/*!40000 ALTER TABLE `associatedsignaltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `associatedsignaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balise`
--

DROP TABLE IF EXISTS `balise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balise` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `baliseType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `defaultTelegram` varchar(256) COLLATE utf8_czech_ci DEFAULT NULL,
  `id_BaliseGroup` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `positionInGroup` int DEFAULT NULL,
  `duplicate` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XPBaGr×XPBlse` (`id_BaliseGroup`),
  CONSTRAINT `FK÷id_XPBaGr×XPBlse` FOREIGN KEY (`id_BaliseGroup`) REFERENCES `balisegroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XPTrPE×XPBlse` FOREIGN KEY (`id`) REFERENCES `trainprotectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balise`
--

LOCK TABLES `balise` WRITE;
/*!40000 ALTER TABLE `balise` DISABLE KEYS */;
INSERT INTO `balise` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962','fixed','9014000000033fff','a44e105a-2bcc-4071-ae65-41c1c7a554a5',2,'no'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5','fixed','9014000000023fff','cb79cd85-bf6d-4721-92cf-e831cc1b9fbe',2,'no'),('15b164e0-fc91-47de-952d-a68fe7c50ba9','fixed','901400000000bfff','12a9fbaa-a938-4b7b-b8cd-021654ae15ad',2,'no'),('33fee6ba-08dd-4215-8370-375cd90f60e5','fixed','9014000000003fff','fde33595-b45e-49df-84f6-e3225cffe7f8',2,'no'),('4b9e9aea-130a-4e52-a299-31f6bddc7627','fixed','901400000002bfff','a7bcf251-31d9-4ad1-84a3-8f78414d14bc',2,'no'),('57cb1234-4d6a-4b52-a458-c40774e6fefe','fixed','900400000000bfff','12a9fbaa-a938-4b7b-b8cd-021654ae15ad',1,'no'),('88a94592-853b-4010-b73b-8e0f722b021f','fixed','9004000000033fff','a44e105a-2bcc-4071-ae65-41c1c7a554a5',1,'no'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0','fixed','9004000000003fff','fde33595-b45e-49df-84f6-e3225cffe7f8',1,'no'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2','fixed','900400000001bfff','8ecfe2fe-701c-4b4c-9cc8-b9d80e149726',1,'no'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e','fixed','9004000000023fff','cb79cd85-bf6d-4721-92cf-e831cc1b9fbe',1,'no'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc','fixed','9004000000013fff','3ad943ed-1e60-40d4-80d2-0181bc9b712b',1,'no'),('e27b2e79-8fbe-417c-a389-a20d34348580','fixed','900400000002bfff','a7bcf251-31d9-4ad1-84a3-8f78414d14bc',1,'no'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354','fixed','901400000001bfff','8ecfe2fe-701c-4b4c-9cc8-b9d80e149726',2,'no'),('e59b6695-e707-478f-b58e-8138c950fa96','fixed','9014000000013fff','3ad943ed-1e60-40d4-80d2-0181bc9b712b',2,'no');
/*!40000 ALTER TABLE `balise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balisegroup`
--

DROP TABLE IF EXISTS `balisegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balisegroup` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `applicationType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `mileageDirection` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `coverage` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `numberOfBalisesInGroup` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XPTrPE×XPBaGr` FOREIGN KEY (`id`) REFERENCES `trainprotectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balisegroup`
--

LOCK TABLES `balisegroup` WRITE;
/*!40000 ALTER TABLE `balisegroup` DISABLE KEYS */;
INSERT INTO `balisegroup` VALUES ('12a9fbaa-a938-4b7b-b8cd-021654ae15ad','ETCS','nominal','physical',2),('3ad943ed-1e60-40d4-80d2-0181bc9b712b','ETCS','nominal','physical',2),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726','ETCS','nominal','physical',2),('a44e105a-2bcc-4071-ae65-41c1c7a554a5','ETCS','nominal','physical',2),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc','ETCS','nominal','physical',2),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe','ETCS','nominal','physical',2),('fde33595-b45e-49df-84f6-e3225cffe7f8','ETCS','nominal','physical',2);
/*!40000 ALTER TABLE `balisegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseobject`
--

DROP TABLE IF EXISTS `baseobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baseobject` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseobject`
--

LOCK TABLES `baseobject` WRITE;
/*!40000 ALTER TABLE `baseobject` DISABLE KEYS */;
INSERT INTO `baseobject` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1'),('08c1efb0-603f-4322-ab54-336d072c3463'),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2'),('0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('0e8c2da9-4c1c-4703-8367-2d5769bd3672'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad'),('12d30e44-12d8-44fe-b8fd-535027a6d50c'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('15b164e0-fc91-47de-952d-a68fe7c50ba9'),('16574645-e2a3-414e-b92f-8aa3172372a9'),('1852e479-224d-4100-89eb-c0ce0dd9ae81'),('187de3a6-a988-45df-8527-c8cbfbb0829e'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3'),('1d966e87-9696-4da3-811b-ac1d61c977a4'),('21e2fed0-5c8b-48e6-8378-cee47ba74c6a'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('33fee6ba-08dd-4215-8370-375cd90f60e5'),('357b97d0-4372-4fb0-b88a-34bd134cc3c0'),('35f32f64-e725-4fcd-86f8-ccdedeac93e2'),('37f120a5-a43e-413b-bf16-3c544b66dc68'),('38ea7202-070c-4c40-910d-8e95799f123f'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b'),('3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('400ff05d-6e67-441f-ad05-09fb90176c75'),('477665e4-ee8c-42ad-b478-4f25d506bdd2'),('4a471d80-3559-46d9-b39c-1ec5ab4d6703'),('4b9e9aea-130a-4e52-a299-31f6bddc7627'),('4e015053-7a61-44b7-a025-f2f317667e92'),('52bd816e-0ab2-4826-95b4-f7cc369a6716'),('53158710-2d5f-4528-ba5a-14b8f4b75912'),('57c783f2-a5f8-456a-99fe-53909e02b16a'),('57cb1234-4d6a-4b52-a458-c40774e6fefe'),('58af1adc-c998-43c3-9671-73a0cc42984a'),('5c476edf-caf6-4482-95da-6df88ea1c1f9'),('63326cb3-6b55-48bd-84dc-462f3f959e08'),('65f773bf-5482-4ce8-bac7-326b7c4f06d3'),('6bd5a39b-6ec6-4be0-ae3d-0842efceb640'),('8317a7fb-7dd0-4a9f-8cc5-57332d4ab490'),('83d26459-a915-4307-8030-e916ae0dc15a'),('87c94410-1739-45d3-8527-f70a5ef21d22'),('887a1848-5937-41db-a953-df5034273cad'),('88a94592-853b-4010-b73b-8e0f722b021f'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('99673cd4-3f49-4919-864d-dd9f2f8ef52f'),('9d156751-9d2c-46d2-9cff-fb656f62a8fe'),('9f5aea90-d268-466e-8b9c-032c4183a8d3'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('a34cd767-7834-416f-9323-b4f61bad9249'),('a43be22d-1219-4aa9-8419-970c595f6620'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('b1f09257-4bc5-40a4-8bd5-30c3de972846'),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a'),('bb143ba4-40fb-4c40-9613-5b384ae39b13'),('be79a172-2796-45ef-af58-55b534064194'),('c866d469-20b8-4ca3-a94b-20275b8d0648'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe'),('ceadece9-0eb0-48db-adf2-5d3b235720ab'),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78'),('d494e868-a674-4bcc-882c-1fdee011675c'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('dccda469-f4fe-463e-8f8d-524ffffc586f'),('dcf3609a-cead-4e12-b073-19a252dd94cf'),('dfe6a222-4b7a-445a-8332-25872d462190'),('e27b2e79-8fbe-417c-a389-a20d34348580'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('e59b6695-e707-478f-b58e-8138c950fa96'),('e61cdaec-346d-4332-8338-3b1ff47c5162'),('e9d725c9-8511-4f72-aec0-ab8c9452f9e6'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('f450a176-8304-43be-99d1-94889e684a7b'),('f492195c-f591-4903-9992-e60ed04923fd'),('f72c00f1-145e-4bd7-a1a2-1809342fda5a'),('f7527116-3c1b-4e07-a8e9-658a353ec16c'),('f786090f-654b-4785-a13b-c2926dfe038e'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313'),('fc6c5401-288e-4585-bc7f-909d7a0224e4'),('fde33595-b45e-49df-84f6-e3225cffe7f8');
/*!40000 ALTER TABLE `baseobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circulararchc`
--

DROP TABLE IF EXISTS `circulararchc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circulararchc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `radius` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGCAHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circulararchc`
--

LOCK TABLES `circulararchc` WRITE;
/*!40000 ALTER TABLE `circulararchc` DISABLE KEYS */;
/*!40000 ALTER TABLE `circulararchc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothoidhc`
--

DROP TABLE IF EXISTS `clothoidhc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothoidhc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `radius0` double DEFAULT NULL,
  `radius1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGClHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothoidhc`
--

LOCK TABLES `clothoidhc` WRITE;
/*!40000 ALTER TABLE `clothoidhc` DISABLE KEYS */;
/*!40000 ALTER TABLE `clothoidhc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositionnetelement`
--

DROP TABLE IF EXISTS `compositionnetelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compositionnetelement` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TNetEl×TCNtEl` FOREIGN KEY (`id`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositionnetelement`
--

LOCK TABLES `compositionnetelement` WRITE;
/*!40000 ALTER TABLE `compositionnetelement` DISABLE KEYS */;
INSERT INTO `compositionnetelement` VALUES ('9f5aea90-d268-466e-8b9c-032c4183a8d3');
/*!40000 ALTER TABLE `compositionnetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constantsuperelevation`
--

DROP TABLE IF EXISTS `constantsuperelevation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constantsuperelevation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `superelevation` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGSuEl×XGCoSu` FOREIGN KEY (`id`) REFERENCES `superelevation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constantsuperelevation`
--

LOCK TABLES `constantsuperelevation` WRITE;
/*!40000 ALTER TABLE `constantsuperelevation` DISABLE KEYS */;
/*!40000 ALTER TABLE `constantsuperelevation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlentity`
--

DROP TABLE IF EXISTS `controlentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XCCtrl` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlentity`
--

LOCK TABLES `controlentity` WRITE;
/*!40000 ALTER TABLE `controlentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crossing`
--

DROP TABLE IF EXISTS `crossing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crossing` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XSSuCo×XSCros` FOREIGN KEY (`id`) REFERENCES `superstructurecomponent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crossing`
--

LOCK TABLES `crossing` WRITE;
/*!40000 ALTER TABLE `crossing` DISABLE KEYS */;
/*!40000 ALTER TABLE `crossing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubicparabolahc`
--

DROP TABLE IF EXISTS `cubicparabolahc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cubicparabolahc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `radius0` double DEFAULT NULL,
  `radius1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGCPHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubicparabolahc`
--

LOCK TABLES `cubicparabolahc` WRITE;
/*!40000 ALTER TABLE `cubicparabolahc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubicparabolahc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cv_associatedfeature`
--

DROP TABLE IF EXISTS `cv_associatedfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedfeature` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedlocation`
--

DROP TABLE IF EXISTS `cv_associatedlocation`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedlocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedlocation` AS SELECT 
 1 AS `id`,
 1 AS `entityLocationUsage`,
 1 AS `associatedLocationType`,
 1 AS `applicationDirection`,
 1 AS `lateralSide`,
 1 AS `lateralDistance`,
 1 AS `verticalSide`,
 1 AS `verticalDistance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedlocationfeature`
--

DROP TABLE IF EXISTS `cv_associatedlocationfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedlocationfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedlocationfeature` AS SELECT 
 1 AS `id_AssociatedFeature`,
 1 AS `id_AssociatedLocation`,
 1 AS `sequence`,
 1 AS `keepsOrientation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedposition`
--

DROP TABLE IF EXISTS `cv_associatedposition`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedposition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedposition` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_PositioningNetElement`,
 1 AS `intrinsicReference`,
 1 AS `deltaPosition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedpositioningsystem`
--

DROP TABLE IF EXISTS `cv_associatedpositioningsystem`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedpositioningsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedpositioningsystem` AS SELECT 
 1 AS `id`,
 1 AS `id_PositioningNetElement`,
 1 AS `id_PositioningSystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedsection`
--

DROP TABLE IF EXISTS `cv_associatedsection`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedsection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedsection` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_AssociatedPosition_A`,
 1 AS `id_AssociatedPosition_B`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedsignaltype`
--

DROP TABLE IF EXISTS `cv_associatedsignaltype`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedsignaltype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedsignaltype` AS SELECT 
 1 AS `id`,
 1 AS `id_SignalType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_balise`
--

DROP TABLE IF EXISTS `cv_balise`;
/*!50001 DROP VIEW IF EXISTS `cv_balise`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_balise` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `baliseType`,
 1 AS `defaultTelegram`,
 1 AS `id_BaliseGroup`,
 1 AS `positionInGroup`,
 1 AS `duplicate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_balisegroup`
--

DROP TABLE IF EXISTS `cv_balisegroup`;
/*!50001 DROP VIEW IF EXISTS `cv_balisegroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_balisegroup` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `applicationType`,
 1 AS `mileageDirection`,
 1 AS `coverage`,
 1 AS `numberOfBalisesInGroup`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_baseobject`
--

DROP TABLE IF EXISTS `cv_baseobject`;
/*!50001 DROP VIEW IF EXISTS `cv_baseobject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_baseobject` AS SELECT 
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_circulararchc`
--

DROP TABLE IF EXISTS `cv_circulararchc`;
/*!50001 DROP VIEW IF EXISTS `cv_circulararchc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_circulararchc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `azimuth0`,
 1 AS `deltaAzimuth`,
 1 AS `radius`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_clothoidhc`
--

DROP TABLE IF EXISTS `cv_clothoidhc`;
/*!50001 DROP VIEW IF EXISTS `cv_clothoidhc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_clothoidhc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `azimuth0`,
 1 AS `deltaAzimuth`,
 1 AS `radius0`,
 1 AS `radius1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_compositionnetelement`
--

DROP TABLE IF EXISTS `cv_compositionnetelement`;
/*!50001 DROP VIEW IF EXISTS `cv_compositionnetelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_compositionnetelement` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_constantsuperelevation`
--

DROP TABLE IF EXISTS `cv_constantsuperelevation`;
/*!50001 DROP VIEW IF EXISTS `cv_constantsuperelevation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_constantsuperelevation` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `anchoredAxisReference`,
 1 AS `superelevation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_controlentity`
--

DROP TABLE IF EXISTS `cv_controlentity`;
/*!50001 DROP VIEW IF EXISTS `cv_controlentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_controlentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_crossing`
--

DROP TABLE IF EXISTS `cv_crossing`;
/*!50001 DROP VIEW IF EXISTS `cv_crossing`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_crossing` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_OperationalArea`,
 1 AS `operationalDesignator`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_cubicparabolahc`
--

DROP TABLE IF EXISTS `cv_cubicparabolahc`;
/*!50001 DROP VIEW IF EXISTS `cv_cubicparabolahc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_cubicparabolahc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `azimuth0`,
 1 AS `deltaAzimuth`,
 1 AS `radius0`,
 1 AS `radius1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_derivednetentity`
--

DROP TABLE IF EXISTS `cv_derivednetentity`;
/*!50001 DROP VIEW IF EXISTS `cv_derivednetentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_derivednetentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_NetEntity_Template`,
 1 AS `derivationRule`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_electrificationarea`
--

DROP TABLE IF EXISTS `cv_electrificationarea`;
/*!50001 DROP VIEW IF EXISTS `cv_electrificationarea`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_electrificationarea` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_PowerSource`,
 1 AS `contactLineType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_electrificationentity`
--

DROP TABLE IF EXISTS `cv_electrificationentity`;
/*!50001 DROP VIEW IF EXISTS `cv_electrificationentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_electrificationentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_elementpartcollection`
--

DROP TABLE IF EXISTS `cv_elementpartcollection`;
/*!50001 DROP VIEW IF EXISTS `cv_elementpartcollection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_elementpartcollection` AS SELECT 
 1 AS `id`,
 1 AS `id_CompositionNetElement`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_entitylocation`
--

DROP TABLE IF EXISTS `cv_entitylocation`;
/*!50001 DROP VIEW IF EXISTS `cv_entitylocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_entitylocation` AS SELECT 
 1 AS `id`,
 1 AS `entityLocationUsage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_entitylocationassignment`
--

DROP TABLE IF EXISTS `cv_entitylocationassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_entitylocationassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_entitylocationassignment` AS SELECT 
 1 AS `id_EntityLocation`,
 1 AS `id_LocatedNetEntity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_entitytype`
--

DROP TABLE IF EXISTS `cv_entitytype`;
/*!50001 DROP VIEW IF EXISTS `cv_entitytype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_entitytype` AS SELECT 
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_generaltype`
--

DROP TABLE IF EXISTS `cv_generaltype`;
/*!50001 DROP VIEW IF EXISTS `cv_generaltype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_generaltype` AS SELECT 
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geofeature`
--

DROP TABLE IF EXISTS `cv_geofeature`;
/*!50001 DROP VIEW IF EXISTS `cv_geofeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geofeature` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geofeatureassociatedfeature`
--

DROP TABLE IF EXISTS `cv_geofeatureassociatedfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_geofeatureassociatedfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geofeatureassociatedfeature` AS SELECT 
 1 AS `id_AssociatedFeature`,
 1 AS `id_GeoFeature`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geolocation`
--

DROP TABLE IF EXISTS `cv_geolocation`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocation` AS SELECT 
 1 AS `id`,
 1 AS `entityLocationUsage`,
 1 AS `geoLocationType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geolocationfeature`
--

DROP TABLE IF EXISTS `cv_geolocationfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocationfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocationfeature` AS SELECT 
 1 AS `id_GeoFeature`,
 1 AS `id_GeoLocation`,
 1 AS `sequence`,
 1 AS `keepsOrientation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geolocationorientation`
--

DROP TABLE IF EXISTS `cv_geolocationorientation`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocationorientation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocationorientation` AS SELECT 
 1 AS `id_GeoLocation`,
 1 AS `id_PositioningSystem`,
 1 AS `azimuthAngle`,
 1 AS `elevationAngle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geometryentity`
--

DROP TABLE IF EXISTS `cv_geometryentity`;
/*!50001 DROP VIEW IF EXISTS `cv_geometryentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geometryentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopoint`
--

DROP TABLE IF EXISTS `cv_geopoint`;
/*!50001 DROP VIEW IF EXISTS `cv_geopoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopoint` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopointgeocoordinate`
--

DROP TABLE IF EXISTS `cv_geopointgeocoordinate`;
/*!50001 DROP VIEW IF EXISTS `cv_geopointgeocoordinate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopointgeocoordinate` AS SELECT 
 1 AS `id_GeoPoint`,
 1 AS `id_GeoPositioningSystem`,
 1 AS `sequence`,
 1 AS `x`,
 1 AS `y`,
 1 AS `z`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopointlinearcoordinate`
--

DROP TABLE IF EXISTS `cv_geopointlinearcoordinate`;
/*!50001 DROP VIEW IF EXISTS `cv_geopointlinearcoordinate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopointlinearcoordinate` AS SELECT 
 1 AS `id_GeoPoint`,
 1 AS `id_LinearPositioningSystem`,
 1 AS `sequence`,
 1 AS `measure`,
 1 AS `lateralOffset`,
 1 AS `verticalOffset`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopolygonalchain`
--

DROP TABLE IF EXISTS `cv_geopolygonalchain`;
/*!50001 DROP VIEW IF EXISTS `cv_geopolygonalchain`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopolygonalchain` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopolygonalchaingeopoint`
--

DROP TABLE IF EXISTS `cv_geopolygonalchaingeopoint`;
/*!50001 DROP VIEW IF EXISTS `cv_geopolygonalchaingeopoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopolygonalchaingeopoint` AS SELECT 
 1 AS `id_GeoPolygonalChain`,
 1 AS `id_GeoPoint`,
 1 AS `sequence`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geopositioningsystem`
--

DROP TABLE IF EXISTS `cv_geopositioningsystem`;
/*!50001 DROP VIEW IF EXISTS `cv_geopositioningsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopositioningsystem` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `crsDefinition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_horizontalcurve`
--

DROP TABLE IF EXISTS `cv_horizontalcurve`;
/*!50001 DROP VIEW IF EXISTS `cv_horizontalcurve`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_horizontalcurve` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `azimuth0`,
 1 AS `deltaAzimuth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_impedancetransformer`
--

DROP TABLE IF EXISTS `cv_impedancetransformer`;
/*!50001 DROP VIEW IF EXISTS `cv_impedancetransformer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_impedancetransformer` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `impedanceTransformerType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_indicatortype`
--

DROP TABLE IF EXISTS `cv_indicatortype`;
/*!50001 DROP VIEW IF EXISTS `cv_indicatortype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_indicatortype` AS SELECT 
 1 AS `id`,
 1 AS `indicatorMeaning`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_insulatedrailjoint`
--

DROP TABLE IF EXISTS `cv_insulatedrailjoint`;
/*!50001 DROP VIEW IF EXISTS `cv_insulatedrailjoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_insulatedrailjoint` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_TrackCircuit_A`,
 1 AS `id_TrackCircuit_B`,
 1 AS `id_ImpedanceTransformer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_labeltype`
--

DROP TABLE IF EXISTS `cv_labeltype`;
/*!50001 DROP VIEW IF EXISTS `cv_labeltype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_labeltype` AS SELECT 
 1 AS `id`,
 1 AS `labelMeaning`,
 1 AS `units`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_levelnetwork`
--

DROP TABLE IF EXISTS `cv_levelnetwork`;
/*!50001 DROP VIEW IF EXISTS `cv_levelnetwork`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_levelnetwork` AS SELECT 
 1 AS `id`,
 1 AS `descriptionLevel`,
 1 AS `representation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_levelresourceassignment`
--

DROP TABLE IF EXISTS `cv_levelresourceassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_levelresourceassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_levelresourceassignment` AS SELECT 
 1 AS `id_NetworkResource`,
 1 AS `id_LevelNetwork`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_lighttype`
--

DROP TABLE IF EXISTS `cv_lighttype`;
/*!50001 DROP VIEW IF EXISTS `cv_lighttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_lighttype` AS SELECT 
 1 AS `id`,
 1 AS `lightColour`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_linearanchorpoint`
--

DROP TABLE IF EXISTS `cv_linearanchorpoint`;
/*!50001 DROP VIEW IF EXISTS `cv_linearanchorpoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_linearanchorpoint` AS SELECT 
 1 AS `id`,
 1 AS `id_LinearPositioningSystem`,
 1 AS `anchorName`,
 1 AS `measure`,
 1 AS `id_LinearAnchorPoint_Next`,
 1 AS `measureToNext`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_linearelement`
--

DROP TABLE IF EXISTS `cv_linearelement`;
/*!50001 DROP VIEW IF EXISTS `cv_linearelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_linearelement` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `length`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_linearpositioningsystem`
--

DROP TABLE IF EXISTS `cv_linearpositioningsystem`;
/*!50001 DROP VIEW IF EXISTS `cv_linearpositioningsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_linearpositioningsystem` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `linearReferencingMethod`,
 1 AS `startMeasure`,
 1 AS `endMeasure`,
 1 AS `units`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_linearsuperelevationramp`
--

DROP TABLE IF EXISTS `cv_linearsuperelevationramp`;
/*!50001 DROP VIEW IF EXISTS `cv_linearsuperelevationramp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_linearsuperelevationramp` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `anchoredAxisReference`,
 1 AS `superelevation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_localizationfeature`
--

DROP TABLE IF EXISTS `cv_localizationfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_localizationfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_localizationfeature` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_locatednetentity`
--

DROP TABLE IF EXISTS `cv_locatednetentity`;
/*!50001 DROP VIEW IF EXISTS `cv_locatednetentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_locatednetentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_EntityLocation_Primary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_modularentity`
--

DROP TABLE IF EXISTS `cv_modularentity`;
/*!50001 DROP VIEW IF EXISTS `cv_modularentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_modularentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_modularentitytype`
--

DROP TABLE IF EXISTS `cv_modularentitytype`;
/*!50001 DROP VIEW IF EXISTS `cv_modularentitytype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_modularentitytype` AS SELECT 
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_namedresource`
--

DROP TABLE IF EXISTS `cv_namedresource`;
/*!50001 DROP VIEW IF EXISTS `cv_namedresource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_namedresource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_netelement`
--

DROP TABLE IF EXISTS `cv_netelement`;
/*!50001 DROP VIEW IF EXISTS `cv_netelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_netelement` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_netentity`
--

DROP TABLE IF EXISTS `cv_netentity`;
/*!50001 DROP VIEW IF EXISTS `cv_netentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_netentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_network`
--

DROP TABLE IF EXISTS `cv_network`;
/*!50001 DROP VIEW IF EXISTS `cv_network`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_network` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_networklevelassignment`
--

DROP TABLE IF EXISTS `cv_networklevelassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_networklevelassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_networklevelassignment` AS SELECT 
 1 AS `id_LevelNetwork`,
 1 AS `id_Network`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_networkresource`
--

DROP TABLE IF EXISTS `cv_networkresource`;
/*!50001 DROP VIEW IF EXISTS `cv_networkresource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_networkresource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_networkresourceassignment`
--

DROP TABLE IF EXISTS `cv_networkresourceassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_networkresourceassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_networkresourceassignment` AS SELECT 
 1 AS `id_NetworkResource`,
 1 AS `id_Network`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_nonlinearelement`
--

DROP TABLE IF EXISTS `cv_nonlinearelement`;
/*!50001 DROP VIEW IF EXISTS `cv_nonlinearelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_nonlinearelement` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_objectprojection`
--

DROP TABLE IF EXISTS `cv_objectprojection`;
/*!50001 DROP VIEW IF EXISTS `cv_objectprojection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_objectprojection` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_BaseObject`,
 1 AS `id_Visualization`,
 1 AS `id_ObjectProjectionSymbol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_objectprojectioncoordinate`
--

DROP TABLE IF EXISTS `cv_objectprojectioncoordinate`;
/*!50001 DROP VIEW IF EXISTS `cv_objectprojectioncoordinate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_objectprojectioncoordinate` AS SELECT 
 1 AS `id_ObjectProjection`,
 1 AS `id_ScreenPositioningSystem`,
 1 AS `sequence`,
 1 AS `x`,
 1 AS `y`,
 1 AS `z`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_objectprojectionsymbol`
--

DROP TABLE IF EXISTS `cv_objectprojectionsymbol`;
/*!50001 DROP VIEW IF EXISTS `cv_objectprojectionsymbol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_objectprojectionsymbol` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `externalIconRef`,
 1 AS `orientation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_operationalarea`
--

DROP TABLE IF EXISTS `cv_operationalarea`;
/*!50001 DROP VIEW IF EXISTS `cv_operationalarea`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_operationalarea` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `isStoppingPoint`,
 1 AS `isStation`,
 1 AS `isDepot`,
 1 AS `isJunction`,
 1 AS `isInterstationSection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_operationalareasignalassignment`
--

DROP TABLE IF EXISTS `cv_operationalareasignalassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_operationalareasignalassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_operationalareasignalassignment` AS SELECT 
 1 AS `id_Signal`,
 1 AS `id_OperationalArea`,
 1 AS `operationalDesignator`,
 1 AS `operationalFunction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_operationalentity`
--

DROP TABLE IF EXISTS `cv_operationalentity`;
/*!50001 DROP VIEW IF EXISTS `cv_operationalentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_operationalentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_orderedcollection`
--

DROP TABLE IF EXISTS `cv_orderedcollection`;
/*!50001 DROP VIEW IF EXISTS `cv_orderedcollection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_orderedcollection` AS SELECT 
 1 AS `id`,
 1 AS `id_CompositionNetElement`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_orderedcollectionelement`
--

DROP TABLE IF EXISTS `cv_orderedcollectionelement`;
/*!50001 DROP VIEW IF EXISTS `cv_orderedcollectionelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_orderedcollectionelement` AS SELECT 
 1 AS `id_NetElement`,
 1 AS `id_OrderedCollection`,
 1 AS `sequence`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_parabolavc`
--

DROP TABLE IF EXISTS `cv_parabolavc`;
/*!50001 DROP VIEW IF EXISTS `cv_parabolavc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_parabolavc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `horizontalLength`,
 1 AS `elevation0`,
 1 AS `deltaElevation`,
 1 AS `parabolaVertexRadius`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_platform`
--

DROP TABLE IF EXISTS `cv_platform`;
/*!50001 DROP VIEW IF EXISTS `cv_platform`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_platform` AS SELECT 
 1 AS `id`,
 1 AS `id_OperationalArea`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `operationalDesignator`,
 1 AS `width`,
 1 AS `platformType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_platformedge`
--

DROP TABLE IF EXISTS `cv_platformedge`;
/*!50001 DROP VIEW IF EXISTS `cv_platformedge`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_platformedge` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_Platform`,
 1 AS `maximumTrainLength`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_platformstoppingplace`
--

DROP TABLE IF EXISTS `cv_platformstoppingplace`;
/*!50001 DROP VIEW IF EXISTS `cv_platformstoppingplace`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_platformstoppingplace` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `trainRelation`,
 1 AS `wagonCount`,
 1 AS `id_PlatformEdge`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_positionedrelation`
--

DROP TABLE IF EXISTS `cv_positionedrelation`;
/*!50001 DROP VIEW IF EXISTS `cv_positionedrelation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_positionedrelation` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_PositioningNetElement_A`,
 1 AS `id_PositioningNetElement_B`,
 1 AS `positionOnA`,
 1 AS `positionOnB`,
 1 AS `navigability`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_positioningnetelement`
--

DROP TABLE IF EXISTS `cv_positioningnetelement`;
/*!50001 DROP VIEW IF EXISTS `cv_positioningnetelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_positioningnetelement` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_positioningsystem`
--

DROP TABLE IF EXISTS `cv_positioningsystem`;
/*!50001 DROP VIEW IF EXISTS `cv_positioningsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_positioningsystem` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_powersource`
--

DROP TABLE IF EXISTS `cv_powersource`;
/*!50001 DROP VIEW IF EXISTS `cv_powersource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_powersource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_railwayroute`
--

DROP TABLE IF EXISTS `cv_railwayroute`;
/*!50001 DROP VIEW IF EXISTS `cv_railwayroute`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_railwayroute` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `railwayRouteType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_relation`
--

DROP TABLE IF EXISTS `cv_relation`;
/*!50001 DROP VIEW IF EXISTS `cv_relation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_relation` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_routecomponentassignment`
--

DROP TABLE IF EXISTS `cv_routecomponentassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_routecomponentassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_routecomponentassignment` AS SELECT 
 1 AS `id_SuperstructureComponent`,
 1 AS `id_RailwayRoute`,
 1 AS `routeRole`,
 1 AS `assignmentType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_routecontrolentityassignment`
--

DROP TABLE IF EXISTS `cv_routecontrolentityassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_routecontrolentityassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_routecontrolentityassignment` AS SELECT 
 1 AS `id_ControlEntity`,
 1 AS `id_RailwayRoute`,
 1 AS `requiredState`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_routecurveassignment`
--

DROP TABLE IF EXISTS `cv_routecurveassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_routecurveassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_routecurveassignment` AS SELECT 
 1 AS `id_SuperstructureComponent`,
 1 AS `id_RailwayRoute`,
 1 AS `routeRole`,
 1 AS `assignmentType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_screenpositioningsystem`
--

DROP TABLE IF EXISTS `cv_screenpositioningsystem`;
/*!50001 DROP VIEW IF EXISTS `cv_screenpositioningsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_screenpositioningsystem` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `pxX`,
 1 AS `pxY`,
 1 AS `pxZ`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_signalcomponenttype`
--

DROP TABLE IF EXISTS `cv_signalcomponenttype`;
/*!50001 DROP VIEW IF EXISTS `cv_signalcomponenttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_signalcomponenttype` AS SELECT 
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_signalcomponenttypeassignment`
--

DROP TABLE IF EXISTS `cv_signalcomponenttypeassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_signalcomponenttypeassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_signalcomponenttypeassignment` AS SELECT 
 1 AS `id_SignalType`,
 1 AS `id_SignalComponentType`,
 1 AS `verticalPosition`,
 1 AS `horizontalPosition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_signallabeltypeassignment`
--

DROP TABLE IF EXISTS `cv_signallabeltypeassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_signallabeltypeassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_signallabeltypeassignment` AS SELECT 
 1 AS `id_Signal`,
 1 AS `id_LabelType`,
 1 AS `indicatedValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_signaltype`
--

DROP TABLE IF EXISTS `cv_signaltype`;
/*!50001 DROP VIEW IF EXISTS `cv_signaltype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_signaltype` AS SELECT 
 1 AS `id`,
 1 AS `signalCategory`,
 1 AS `signalConstructionType`,
 1 AS `defaultIndication`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_significantlooppoint`
--

DROP TABLE IF EXISTS `cv_significantlooppoint`;
/*!50001 DROP VIEW IF EXISTS `cv_significantlooppoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_significantlooppoint` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_TransmissionLoop`,
 1 AS `loopPointType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_speedprofile`
--

DROP TABLE IF EXISTS `cv_speedprofile`;
/*!50001 DROP VIEW IF EXISTS `cv_speedprofile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_speedprofile` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `speedProfileType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_speedprofilesectionassignment`
--

DROP TABLE IF EXISTS `cv_speedprofilesectionassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_speedprofilesectionassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_speedprofilesectionassignment` AS SELECT 
 1 AS `id_SpeedSection`,
 1 AS `id_SpeedProfile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_speedsection`
--

DROP TABLE IF EXISTS `cv_speedsection`;
/*!50001 DROP VIEW IF EXISTS `cv_speedsection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_speedsection` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `maxSpeed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_speedsectionsignalassignment`
--

DROP TABLE IF EXISTS `cv_speedsectionsignalassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_speedsectionsignalassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_speedsectionsignalassignment` AS SELECT 
 1 AS `id_Signal`,
 1 AS `id_SpeedSection`,
 1 AS `signalRole`,
 1 AS `trainRelation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_stoppingplace`
--

DROP TABLE IF EXISTS `cv_stoppingplace`;
/*!50001 DROP VIEW IF EXISTS `cv_stoppingplace`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_stoppingplace` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `trainRelation`,
 1 AS `wagonCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_straighthc`
--

DROP TABLE IF EXISTS `cv_straighthc`;
/*!50001 DROP VIEW IF EXISTS `cv_straighthc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_straighthc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `azimuth0`,
 1 AS `deltaAzimuth`,
 1 AS `horizontalLength`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_straightvc`
--

DROP TABLE IF EXISTS `cv_straightvc`;
/*!50001 DROP VIEW IF EXISTS `cv_straightvc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_straightvc` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `horizontalLength`,
 1 AS `elevation0`,
 1 AS `deltaElevation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_structuralentity`
--

DROP TABLE IF EXISTS `cv_structuralentity`;
/*!50001 DROP VIEW IF EXISTS `cv_structuralentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_structuralentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_superelevation`
--

DROP TABLE IF EXISTS `cv_superelevation`;
/*!50001 DROP VIEW IF EXISTS `cv_superelevation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_superelevation` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `anchoredAxisReference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_superstructurecomponent`
--

DROP TABLE IF EXISTS `cv_superstructurecomponent`;
/*!50001 DROP VIEW IF EXISTS `cv_superstructurecomponent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_superstructurecomponent` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_OperationalArea`,
 1 AS `operationalDesignator`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_switchmachine`
--

DROP TABLE IF EXISTS `cv_switchmachine`;
/*!50001 DROP VIEW IF EXISTS `cv_switchmachine`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_switchmachine` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_Turnout`,
 1 AS `switchMachineRole`,
 1 AS `defaultState`,
 1 AS `id_TracksideSignal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_switchmachinerelationassignment`
--

DROP TABLE IF EXISTS `cv_switchmachinerelationassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_switchmachinerelationassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_switchmachinerelationassignment` AS SELECT 
 1 AS `id_SwitchMachine`,
 1 AS `id_PossitionedRelation`,
 1 AS `validForState`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_symbolcoordinate`
--

DROP TABLE IF EXISTS `cv_symbolcoordinate`;
/*!50001 DROP VIEW IF EXISTS `cv_symbolcoordinate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_symbolcoordinate` AS SELECT 
 1 AS `id_ObjectProjectionSymbol`,
 1 AS `id_ScreenPositioningSystem`,
 1 AS `x`,
 1 AS `y`,
 1 AS `z`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_track`
--

DROP TABLE IF EXISTS `cv_track`;
/*!50001 DROP VIEW IF EXISTS `cv_track`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_track` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_OperationalArea`,
 1 AS `operationalDesignator`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_trackbed`
--

DROP TABLE IF EXISTS `cv_trackbed`;
/*!50001 DROP VIEW IF EXISTS `cv_trackbed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_trackbed` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `trackBedType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_trackcircuit`
--

DROP TABLE IF EXISTS `cv_trackcircuit`;
/*!50001 DROP VIEW IF EXISTS `cv_trackcircuit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_trackcircuit` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_OperationalArea`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_trackcircuitloopassignment`
--

DROP TABLE IF EXISTS `cv_trackcircuitloopassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_trackcircuitloopassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_trackcircuitloopassignment` AS SELECT 
 1 AS `id_TransmissionLoop`,
 1 AS `id_TrackCircuit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_tracksidesignal`
--

DROP TABLE IF EXISTS `cv_tracksidesignal`;
/*!50001 DROP VIEW IF EXISTS `cv_tracksidesignal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_tracksidesignal` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_SignalType`,
 1 AS `referencePointHeight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_traindetectionentity`
--

DROP TABLE IF EXISTS `cv_traindetectionentity`;
/*!50001 DROP VIEW IF EXISTS `cv_traindetectionentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_traindetectionentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_trainprotectionentity`
--

DROP TABLE IF EXISTS `cv_trainprotectionentity`;
/*!50001 DROP VIEW IF EXISTS `cv_trainprotectionentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_trainprotectionentity` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_transmissionloop`
--

DROP TABLE IF EXISTS `cv_transmissionloop`;
/*!50001 DROP VIEW IF EXISTS `cv_transmissionloop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_transmissionloop` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_TransmitterBox`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_transmitterbox`
--

DROP TABLE IF EXISTS `cv_transmitterbox`;
/*!50001 DROP VIEW IF EXISTS `cv_transmitterbox`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_transmitterbox` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `protectionSystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_tunnel`
--

DROP TABLE IF EXISTS `cv_tunnel`;
/*!50001 DROP VIEW IF EXISTS `cv_tunnel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_tunnel` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `numberOfTracks`,
 1 AS `liningMaterial`,
 1 AS `crossSectionShape`,
 1 AS `horizontalCrossSectionDimension`,
 1 AS `height`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_turnout`
--

DROP TABLE IF EXISTS `cv_turnout`;
/*!50001 DROP VIEW IF EXISTS `cv_turnout`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_turnout` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `id_OperationalArea`,
 1 AS `operationalDesignator`,
 1 AS `turnoutType`,
 1 AS `technicalDesignator`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_unorderedcollection`
--

DROP TABLE IF EXISTS `cv_unorderedcollection`;
/*!50001 DROP VIEW IF EXISTS `cv_unorderedcollection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_unorderedcollection` AS SELECT 
 1 AS `id`,
 1 AS `id_CompositionNetElement`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_unorderedcollectionelement`
--

DROP TABLE IF EXISTS `cv_unorderedcollectionelement`;
/*!50001 DROP VIEW IF EXISTS `cv_unorderedcollectionelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_unorderedcollectionelement` AS SELECT 
 1 AS `id_NetElement`,
 1 AS `id_UnorderedCollection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_verticalcurve`
--

DROP TABLE IF EXISTS `cv_verticalcurve`;
/*!50001 DROP VIEW IF EXISTS `cv_verticalcurve`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_verticalcurve` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `horizontalLength`,
 1 AS `elevation0`,
 1 AS `deltaElevation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_visualization`
--

DROP TABLE IF EXISTS `cv_visualization`;
/*!50001 DROP VIEW IF EXISTS `cv_visualization`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_visualization` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_visualizationbaseobject`
--

DROP TABLE IF EXISTS `cv_visualizationbaseobject`;
/*!50001 DROP VIEW IF EXISTS `cv_visualizationbaseobject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_visualizationbaseobject` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `derivednetentity`
--

DROP TABLE IF EXISTS `derivednetentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `derivednetentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_NetEntity_Template` char(36) COLLATE utf8_czech_ci NOT NULL,
  `derivationRule` varchar(45) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_ENetEtTemplate×EDerEt` (`id_NetEntity_Template`),
  CONSTRAINT `FK÷id_ENetEtTemplate×EDerEt` FOREIGN KEY (`id_NetEntity_Template`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_ENetEt×EDerEt` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derivednetentity`
--

LOCK TABLES `derivednetentity` WRITE;
/*!40000 ALTER TABLE `derivednetentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `derivednetentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electrificationarea`
--

DROP TABLE IF EXISTS `electrificationarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electrificationarea` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PowerSource` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `contactLineType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XEPwSr×XEElAr` (`id_PowerSource`),
  CONSTRAINT `FK÷id_XEEleE×XEElAe` FOREIGN KEY (`id`) REFERENCES `electrificationentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XEPwSr×XEElAr` FOREIGN KEY (`id_PowerSource`) REFERENCES `powersource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electrificationarea`
--

LOCK TABLES `electrificationarea` WRITE;
/*!40000 ALTER TABLE `electrificationarea` DISABLE KEYS */;
/*!40000 ALTER TABLE `electrificationarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electrificationentity`
--

DROP TABLE IF EXISTS `electrificationentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electrificationentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XEEleE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electrificationentity`
--

LOCK TABLES `electrificationentity` WRITE;
/*!40000 ALTER TABLE `electrificationentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `electrificationentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementpartcollection`
--

DROP TABLE IF EXISTS `elementpartcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementpartcollection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_CompositionNetElement` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_TCNtEl×TElPaC` (`id_CompositionNetElement`),
  CONSTRAINT `FK÷id_BBaObj×TElPaC` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TCNtEl×TElPaC` FOREIGN KEY (`id_CompositionNetElement`) REFERENCES `compositionnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementpartcollection`
--

LOCK TABLES `elementpartcollection` WRITE;
/*!40000 ALTER TABLE `elementpartcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementpartcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitylocation`
--

DROP TABLE IF EXISTS `entitylocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitylocation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `entityLocationUsage` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BBaObj×LEtLoc` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitylocation`
--

LOCK TABLES `entitylocation` WRITE;
/*!40000 ALTER TABLE `entitylocation` DISABLE KEYS */;
INSERT INTO `entitylocation` VALUES ('08c1efb0-603f-4322-ab54-336d072c3463','functionallyPhysical'),('12d30e44-12d8-44fe-b8fd-535027a6d50c','functionallyPhysical'),('187de3a6-a988-45df-8527-c8cbfbb0829e','functionallyPhysical'),('21e2fed0-5c8b-48e6-8378-cee47ba74c6a','functionallyPhysical'),('357b97d0-4372-4fb0-b88a-34bd134cc3c0','functionallyPhysical'),('38ea7202-070c-4c40-910d-8e95799f123f','functionallyPhysical'),('4e015053-7a61-44b7-a025-f2f317667e92','functionallyPhysical'),('52bd816e-0ab2-4826-95b4-f7cc369a6716','functionallyPhysical'),('5c476edf-caf6-4482-95da-6df88ea1c1f9','functionallyPhysical'),('63326cb3-6b55-48bd-84dc-462f3f959e08','functionallyPhysical'),('65f773bf-5482-4ce8-bac7-326b7c4f06d3','functionallyPhysical'),('6bd5a39b-6ec6-4be0-ae3d-0842efceb640','functionallyPhysical'),('8317a7fb-7dd0-4a9f-8cc5-57332d4ab490','functionallyPhysical'),('9d156751-9d2c-46d2-9cff-fb656f62a8fe','functionallyPhysical'),('b1f09257-4bc5-40a4-8bd5-30c3de972846','functionallyPhysical'),('c866d469-20b8-4ca3-a94b-20275b8d0648','functionallyPhysical'),('ceadece9-0eb0-48db-adf2-5d3b235720ab','functionallyPhysical'),('d494e868-a674-4bcc-882c-1fdee011675c','functionallyPhysical'),('dccda469-f4fe-463e-8f8d-524ffffc586f','functionallyPhysical'),('dcf3609a-cead-4e12-b073-19a252dd94cf','functionallyPhysical'),('f72c00f1-145e-4bd7-a1a2-1809342fda5a','functionallyPhysical'),('f7527116-3c1b-4e07-a8e9-658a353ec16c','functionallyPhysical');
/*!40000 ALTER TABLE `entitylocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitylocationassignment`
--

DROP TABLE IF EXISTS `entitylocationassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitylocationassignment` (
  `id_EntityLocation` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_LocatedNetEntity` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_EntityLocation`,`id_LocatedNetEntity`),
  KEY `SI÷id_ELocNE×EELocA` (`id_LocatedNetEntity`),
  KEY `SI÷id_LEtLoc×EELocA` (`id_EntityLocation`),
  CONSTRAINT `FK÷id_ELocNE×EELocA` FOREIGN KEY (`id_LocatedNetEntity`) REFERENCES `locatednetentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LEtLoc×EELocA` FOREIGN KEY (`id_EntityLocation`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitylocationassignment`
--

LOCK TABLES `entitylocationassignment` WRITE;
/*!40000 ALTER TABLE `entitylocationassignment` DISABLE KEYS */;
INSERT INTO `entitylocationassignment` VALUES ('5c476edf-caf6-4482-95da-6df88ea1c1f9','0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('08c1efb0-603f-4322-ab54-336d072c3463','14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('dccda469-f4fe-463e-8f8d-524ffffc586f','15b164e0-fc91-47de-952d-a68fe7c50ba9'),('6bd5a39b-6ec6-4be0-ae3d-0842efceb640','1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3'),('21e2fed0-5c8b-48e6-8378-cee47ba74c6a','259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('9d156751-9d2c-46d2-9cff-fb656f62a8fe','2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('357b97d0-4372-4fb0-b88a-34bd134cc3c0','33fee6ba-08dd-4215-8370-375cd90f60e5'),('c866d469-20b8-4ca3-a94b-20275b8d0648','4b9e9aea-130a-4e52-a299-31f6bddc7627'),('38ea7202-070c-4c40-910d-8e95799f123f','57cb1234-4d6a-4b52-a458-c40774e6fefe'),('dcf3609a-cead-4e12-b073-19a252dd94cf','887a1848-5937-41db-a953-df5034273cad'),('65f773bf-5482-4ce8-bac7-326b7c4f06d3','88a94592-853b-4010-b73b-8e0f722b021f'),('f72c00f1-145e-4bd7-a1a2-1809342fda5a','8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('52bd816e-0ab2-4826-95b4-f7cc369a6716','920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('187de3a6-a988-45df-8527-c8cbfbb0829e','a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('ceadece9-0eb0-48db-adf2-5d3b235720ab','b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('12d30e44-12d8-44fe-b8fd-535027a6d50c','d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('b1f09257-4bc5-40a4-8bd5-30c3de972846','e27b2e79-8fbe-417c-a389-a20d34348580'),('8317a7fb-7dd0-4a9f-8cc5-57332d4ab490','e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('4e015053-7a61-44b7-a025-f2f317667e92','e59b6695-e707-478f-b58e-8138c950fa96'),('d494e868-a674-4bcc-882c-1fdee011675c','f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('63326cb3-6b55-48bd-84dc-462f3f959e08','f786090f-654b-4785-a13b-c2926dfe038e'),('f7527116-3c1b-4e07-a8e9-658a353ec16c','f8f7716a-54c3-4945-ba4a-c5a1753802e2');
/*!40000 ALTER TABLE `entitylocationassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitytype`
--

DROP TABLE IF EXISTS `entitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitytype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_YGenTy×YEntTy` FOREIGN KEY (`id`) REFERENCES `generaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitytype`
--

LOCK TABLES `entitytype` WRITE;
/*!40000 ALTER TABLE `entitytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `entitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generaltype`
--

DROP TABLE IF EXISTS `generaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generaltype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×YGenTy` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generaltype`
--

LOCK TABLES `generaltype` WRITE;
/*!40000 ALTER TABLE `generaltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `generaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geofeature`
--

DROP TABLE IF EXISTS `geofeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geofeature` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LLocFt×LGeoFt` FOREIGN KEY (`id`) REFERENCES `localizationfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geofeature`
--

LOCK TABLES `geofeature` WRITE;
/*!40000 ALTER TABLE `geofeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `geofeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geofeatureassociatedfeature`
--

DROP TABLE IF EXISTS `geofeatureassociatedfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geofeatureassociatedfeature` (
  `id_AssociatedFeature` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_GeoFeature` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_AssociatedFeature`,`id_GeoFeature`),
  KEY `SI÷id_LAssFt×LGFAFt` (`id_AssociatedFeature`),
  KEY `SI÷id_LGeoFt×LGFAFt` (`id_GeoFeature`),
  CONSTRAINT `FK÷id_LAssFt×LGFAFt` FOREIGN KEY (`id_AssociatedFeature`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoFt×LGFAFt` FOREIGN KEY (`id_GeoFeature`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geofeatureassociatedfeature`
--

LOCK TABLES `geofeatureassociatedfeature` WRITE;
/*!40000 ALTER TABLE `geofeatureassociatedfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `geofeatureassociatedfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `geoLocationType` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LEtLoc×LGeLoc` FOREIGN KEY (`id`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocation`
--

LOCK TABLES `geolocation` WRITE;
/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocationfeature`
--

DROP TABLE IF EXISTS `geolocationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocationfeature` (
  `id_GeoFeature` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_GeoLocation` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `keepsOrientation` char(1) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_GeoFeature`,`id_GeoLocation`,`sequence`),
  KEY `SI÷id_LGeLoc×LGeLFt` (`id_GeoLocation`),
  KEY `SI÷id_LGeoFt×LGeLFt` (`id_GeoFeature`),
  CONSTRAINT `FK÷id_LGeLoc×LGeLFt` FOREIGN KEY (`id_GeoLocation`) REFERENCES `geolocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoFt×LGeLFt` FOREIGN KEY (`id_GeoFeature`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocationfeature`
--

LOCK TABLES `geolocationfeature` WRITE;
/*!40000 ALTER TABLE `geolocationfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocationorientation`
--

DROP TABLE IF EXISTS `geolocationorientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocationorientation` (
  `id_GeoLocation` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `azimuthAngle` double DEFAULT NULL,
  `elevationAngle` double DEFAULT NULL,
  PRIMARY KEY (`id_GeoLocation`,`id_PositioningSystem`),
  KEY `SI÷id_LGeLoc×PGLcOr` (`id_GeoLocation`),
  KEY `SI÷id_PPoSys×PGLcOr` (`id_PositioningSystem`),
  CONSTRAINT `FK÷id_LGeLoc×PGLcOr` FOREIGN KEY (`id_GeoLocation`) REFERENCES `geolocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PPoSys×PGLcOr` FOREIGN KEY (`id_PositioningSystem`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocationorientation`
--

LOCK TABLES `geolocationorientation` WRITE;
/*!40000 ALTER TABLE `geolocationorientation` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocationorientation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geometryentity`
--

DROP TABLE IF EXISTS `geometryentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geometryentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_ENetEt×XGGeoE` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geometryentity`
--

LOCK TABLES `geometryentity` WRITE;
/*!40000 ALTER TABLE `geometryentity` DISABLE KEYS */;
INSERT INTO `geometryentity` VALUES ('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('f786090f-654b-4785-a13b-c2926dfe038e'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2');
/*!40000 ALTER TABLE `geometryentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopoint`
--

DROP TABLE IF EXISTS `geopoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopoint` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LGeoFt×LGeoPt` FOREIGN KEY (`id`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopoint`
--

LOCK TABLES `geopoint` WRITE;
/*!40000 ALTER TABLE `geopoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `geopoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopointgeocoordinate`
--

DROP TABLE IF EXISTS `geopointgeocoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopointgeocoordinate` (
  `id_GeoPoint` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_GeoPositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`id_GeoPoint`,`id_GeoPositioningSystem`,`sequence`),
  KEY `SI÷id_PGeoPS×PGPGeC` (`id_GeoPositioningSystem`),
  KEY `SI÷id_LGeoPt×PGPGeC` (`id_GeoPoint`),
  CONSTRAINT `FK÷id_LGeoPt×PGPGeC` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PGeoPS×PGPGeC` FOREIGN KEY (`id_GeoPositioningSystem`) REFERENCES `geopositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopointgeocoordinate`
--

LOCK TABLES `geopointgeocoordinate` WRITE;
/*!40000 ALTER TABLE `geopointgeocoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `geopointgeocoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopointlinearcoordinate`
--

DROP TABLE IF EXISTS `geopointlinearcoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopointlinearcoordinate` (
  `id_GeoPoint` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_LinearPositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `measure` double DEFAULT NULL,
  `lateralOffset` double DEFAULT NULL,
  `verticalOffset` double DEFAULT NULL,
  PRIMARY KEY (`id_GeoPoint`,`id_LinearPositioningSystem`,`sequence`),
  KEY `SI÷id_PLinPS×PGPLiC` (`id_LinearPositioningSystem`),
  KEY `SI÷id_LGeoPt×PGPLiC` (`id_GeoPoint`),
  CONSTRAINT `FK÷id_LGeoPt×PGPLiC` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinPS×PGPLiC` FOREIGN KEY (`id_LinearPositioningSystem`) REFERENCES `linearpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopointlinearcoordinate`
--

LOCK TABLES `geopointlinearcoordinate` WRITE;
/*!40000 ALTER TABLE `geopointlinearcoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `geopointlinearcoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopolygonalchain`
--

DROP TABLE IF EXISTS `geopolygonalchain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopolygonalchain` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LGeoFt×LGeoPC` FOREIGN KEY (`id`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopolygonalchain`
--

LOCK TABLES `geopolygonalchain` WRITE;
/*!40000 ALTER TABLE `geopolygonalchain` DISABLE KEYS */;
/*!40000 ALTER TABLE `geopolygonalchain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopolygonalchaingeopoint`
--

DROP TABLE IF EXISTS `geopolygonalchaingeopoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopolygonalchaingeopoint` (
  `id_GeoPolygonalChain` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_GeoPoint` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  PRIMARY KEY (`id_GeoPolygonalChain`,`id_GeoPoint`,`sequence`),
  KEY `SI÷id_LGeoPt×LGPCGP` (`id_GeoPoint`),
  KEY `SI÷id_LGeoPC×LGPCGP` (`id_GeoPolygonalChain`),
  CONSTRAINT `FK÷id_LGeoPC×LGPCGP` FOREIGN KEY (`id_GeoPolygonalChain`) REFERENCES `geopolygonalchain` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoPt×LGPCGP` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopolygonalchaingeopoint`
--

LOCK TABLES `geopolygonalchaingeopoint` WRITE;
/*!40000 ALTER TABLE `geopolygonalchaingeopoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `geopolygonalchaingeopoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopositioningsystem`
--

DROP TABLE IF EXISTS `geopositioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopositioningsystem` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `crsDefinition` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_PPoSys×PGeoPS` FOREIGN KEY (`id`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopositioningsystem`
--

LOCK TABLES `geopositioningsystem` WRITE;
/*!40000 ALTER TABLE `geopositioningsystem` DISABLE KEYS */;
INSERT INTO `geopositioningsystem` VALUES ('58af1adc-c998-43c3-9671-73a0cc42984a','RhinoCRS');
/*!40000 ALTER TABLE `geopositioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horizontalcurve`
--

DROP TABLE IF EXISTS `horizontalcurve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horizontalcurve` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `azimuth0` double DEFAULT NULL,
  `deltaAzimuth` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGHorC` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horizontalcurve`
--

LOCK TABLES `horizontalcurve` WRITE;
/*!40000 ALTER TABLE `horizontalcurve` DISABLE KEYS */;
INSERT INTO `horizontalcurve` VALUES ('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3',90,0);
/*!40000 ALTER TABLE `horizontalcurve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impedancetransformer`
--

DROP TABLE IF EXISTS `impedancetransformer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impedancetransformer` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `impedanceTransformerType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XDTrDE×XDITra` FOREIGN KEY (`id`) REFERENCES `traindetectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impedancetransformer`
--

LOCK TABLES `impedancetransformer` WRITE;
/*!40000 ALTER TABLE `impedancetransformer` DISABLE KEYS */;
/*!40000 ALTER TABLE `impedancetransformer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicatortype`
--

DROP TABLE IF EXISTS `indicatortype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicatortype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `indicatorMeaning` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYSiCT×XYIndT` FOREIGN KEY (`id`) REFERENCES `signalcomponenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicatortype`
--

LOCK TABLES `indicatortype` WRITE;
/*!40000 ALTER TABLE `indicatortype` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicatortype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insulatedrailjoint`
--

DROP TABLE IF EXISTS `insulatedrailjoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insulatedrailjoint` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_TrackCircuit_A` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `id_TrackCircuit_B` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `id_ImpedanceTransformer` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XDTCirA×XDIsRJ` (`id_TrackCircuit_A`),
  KEY `SI÷id_XDTCirB×XDIsRJ` (`id_TrackCircuit_B`),
  KEY `SI÷id_XDITra×XDIsRJ` (`id_ImpedanceTransformer`),
  CONSTRAINT `FK÷id_XDITra×XDIsRJ` FOREIGN KEY (`id_ImpedanceTransformer`) REFERENCES `impedancetransformer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XDTCirA×XDIsRJ` FOREIGN KEY (`id_TrackCircuit_A`) REFERENCES `trackcircuit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XDTCirB×XDIsRJ` FOREIGN KEY (`id_TrackCircuit_B`) REFERENCES `trackcircuit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XDTrDE×XDIsRJ` FOREIGN KEY (`id`) REFERENCES `traindetectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insulatedrailjoint`
--

LOCK TABLES `insulatedrailjoint` WRITE;
/*!40000 ALTER TABLE `insulatedrailjoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `insulatedrailjoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labeltype`
--

DROP TABLE IF EXISTS `labeltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labeltype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `labelMeaning` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `units` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYSiCT×XYLabT` FOREIGN KEY (`id`) REFERENCES `signalcomponenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labeltype`
--

LOCK TABLES `labeltype` WRITE;
/*!40000 ALTER TABLE `labeltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `labeltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelnetwork`
--

DROP TABLE IF EXISTS `levelnetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levelnetwork` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `descriptionLevel` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  `representation` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BBaObj×NLevNw` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelnetwork`
--

LOCK TABLES `levelnetwork` WRITE;
/*!40000 ALTER TABLE `levelnetwork` DISABLE KEYS */;
INSERT INTO `levelnetwork` VALUES ('400ff05d-6e67-441f-ad05-09fb90176c75','micro','2D'),('4a471d80-3559-46d9-b39c-1ec5ab4d6703','micro','3D');
/*!40000 ALTER TABLE `levelnetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelresourceassignment`
--

DROP TABLE IF EXISTS `levelresourceassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levelresourceassignment` (
  `id_NetworkResource` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_LevelNetwork` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetworkResource`,`id_LevelNetwork`),
  KEY `SI÷id_NNtwRs×NLvRsA` (`id_NetworkResource`),
  KEY `SI÷id_NLevNw×NLvRsA` (`id_LevelNetwork`),
  CONSTRAINT `FK÷id_NLevNw×NLvRsA` FOREIGN KEY (`id_LevelNetwork`) REFERENCES `levelnetwork` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNtwRs×NLvRsA` FOREIGN KEY (`id_NetworkResource`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelresourceassignment`
--

LOCK TABLES `levelresourceassignment` WRITE;
/*!40000 ALTER TABLE `levelresourceassignment` DISABLE KEYS */;
INSERT INTO `levelresourceassignment` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962','400ff05d-6e67-441f-ad05-09fb90176c75'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad','400ff05d-6e67-441f-ad05-09fb90176c75'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5','400ff05d-6e67-441f-ad05-09fb90176c75'),('15b164e0-fc91-47de-952d-a68fe7c50ba9','400ff05d-6e67-441f-ad05-09fb90176c75'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3','400ff05d-6e67-441f-ad05-09fb90176c75'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8','400ff05d-6e67-441f-ad05-09fb90176c75'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7','400ff05d-6e67-441f-ad05-09fb90176c75'),('33fee6ba-08dd-4215-8370-375cd90f60e5','400ff05d-6e67-441f-ad05-09fb90176c75'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b','400ff05d-6e67-441f-ad05-09fb90176c75'),('4b9e9aea-130a-4e52-a299-31f6bddc7627','400ff05d-6e67-441f-ad05-09fb90176c75'),('57cb1234-4d6a-4b52-a458-c40774e6fefe','400ff05d-6e67-441f-ad05-09fb90176c75'),('887a1848-5937-41db-a953-df5034273cad','400ff05d-6e67-441f-ad05-09fb90176c75'),('88a94592-853b-4010-b73b-8e0f722b021f','400ff05d-6e67-441f-ad05-09fb90176c75'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726','400ff05d-6e67-441f-ad05-09fb90176c75'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0','400ff05d-6e67-441f-ad05-09fb90176c75'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e','400ff05d-6e67-441f-ad05-09fb90176c75'),('9f5aea90-d268-466e-8b9c-032c4183a8d3','400ff05d-6e67-441f-ad05-09fb90176c75'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2','400ff05d-6e67-441f-ad05-09fb90176c75'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5','400ff05d-6e67-441f-ad05-09fb90176c75'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc','400ff05d-6e67-441f-ad05-09fb90176c75'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e','400ff05d-6e67-441f-ad05-09fb90176c75'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe','400ff05d-6e67-441f-ad05-09fb90176c75'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc','400ff05d-6e67-441f-ad05-09fb90176c75'),('e27b2e79-8fbe-417c-a389-a20d34348580','400ff05d-6e67-441f-ad05-09fb90176c75'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354','400ff05d-6e67-441f-ad05-09fb90176c75'),('e59b6695-e707-478f-b58e-8138c950fa96','400ff05d-6e67-441f-ad05-09fb90176c75'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b','400ff05d-6e67-441f-ad05-09fb90176c75'),('f786090f-654b-4785-a13b-c2926dfe038e','400ff05d-6e67-441f-ad05-09fb90176c75'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2','400ff05d-6e67-441f-ad05-09fb90176c75'),('fde33595-b45e-49df-84f6-e3225cffe7f8','400ff05d-6e67-441f-ad05-09fb90176c75');
/*!40000 ALTER TABLE `levelresourceassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lighttype`
--

DROP TABLE IF EXISTS `lighttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lighttype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `lightColour` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYSiCT×XYLigT` FOREIGN KEY (`id`) REFERENCES `signalcomponenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lighttype`
--

LOCK TABLES `lighttype` WRITE;
/*!40000 ALTER TABLE `lighttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `lighttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearanchorpoint`
--

DROP TABLE IF EXISTS `linearanchorpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearanchorpoint` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_LinearPositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `anchorName` varchar(128) COLLATE utf8_czech_ci DEFAULT NULL,
  `measure` double NOT NULL,
  `id_LinearAnchorPoint_Next` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `measureToNext` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_PLinPS×PLinAP` (`id_LinearPositioningSystem`),
  KEY `SI÷id_PLinAPNext×PLinAP` (`id_LinearAnchorPoint_Next`),
  CONSTRAINT `FK÷id_BBaObj×PLinAP` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinAPNext×PLinAP` FOREIGN KEY (`id_LinearAnchorPoint_Next`) REFERENCES `linearanchorpoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinPS×PLinAP` FOREIGN KEY (`id_LinearPositioningSystem`) REFERENCES `linearpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearanchorpoint`
--

LOCK TABLES `linearanchorpoint` WRITE;
/*!40000 ALTER TABLE `linearanchorpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `linearanchorpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearelement`
--

DROP TABLE IF EXISTS `linearelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearelement` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `length` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TPNtEl×TLinEl` FOREIGN KEY (`id`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearelement`
--

LOCK TABLES `linearelement` WRITE;
/*!40000 ALTER TABLE `linearelement` DISABLE KEYS */;
INSERT INTO `linearelement` VALUES ('9f5aea90-d268-466e-8b9c-032c4183a8d3',10000);
/*!40000 ALTER TABLE `linearelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearpositioningsystem`
--

DROP TABLE IF EXISTS `linearpositioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearpositioningsystem` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `linearReferencingMethod` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `startMeasure` double DEFAULT NULL,
  `endMeasure` double DEFAULT NULL,
  `units` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_PPoSys×PLinPS` FOREIGN KEY (`id`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearpositioningsystem`
--

LOCK TABLES `linearpositioningsystem` WRITE;
/*!40000 ALTER TABLE `linearpositioningsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `linearpositioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearsuperelevationramp`
--

DROP TABLE IF EXISTS `linearsuperelevationramp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearsuperelevationramp` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `superelevation0` double DEFAULT NULL,
  `superelevation1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGSuEl×XGLiSR` FOREIGN KEY (`id`) REFERENCES `superelevation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearsuperelevationramp`
--

LOCK TABLES `linearsuperelevationramp` WRITE;
/*!40000 ALTER TABLE `linearsuperelevationramp` DISABLE KEYS */;
/*!40000 ALTER TABLE `linearsuperelevationramp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizationfeature`
--

DROP TABLE IF EXISTS `localizationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizationfeature` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×LLocFt` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizationfeature`
--

LOCK TABLES `localizationfeature` WRITE;
/*!40000 ALTER TABLE `localizationfeature` DISABLE KEYS */;
INSERT INTO `localizationfeature` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1'),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2'),('0e8c2da9-4c1c-4703-8367-2d5769bd3672'),('16574645-e2a3-414e-b92f-8aa3172372a9'),('1852e479-224d-4100-89eb-c0ce0dd9ae81'),('1d966e87-9696-4da3-811b-ac1d61c977a4'),('35f32f64-e725-4fcd-86f8-ccdedeac93e2'),('37f120a5-a43e-413b-bf16-3c544b66dc68'),('477665e4-ee8c-42ad-b478-4f25d506bdd2'),('53158710-2d5f-4528-ba5a-14b8f4b75912'),('57c783f2-a5f8-456a-99fe-53909e02b16a'),('83d26459-a915-4307-8030-e916ae0dc15a'),('87c94410-1739-45d3-8527-f70a5ef21d22'),('99673cd4-3f49-4919-864d-dd9f2f8ef52f'),('a34cd767-7834-416f-9323-b4f61bad9249'),('a43be22d-1219-4aa9-8419-970c595f6620'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3'),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a'),('bb143ba4-40fb-4c40-9613-5b384ae39b13'),('be79a172-2796-45ef-af58-55b534064194'),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78'),('dfe6a222-4b7a-445a-8332-25872d462190'),('e61cdaec-346d-4332-8338-3b1ff47c5162'),('e9d725c9-8511-4f72-aec0-ab8c9452f9e6'),('f450a176-8304-43be-99d1-94889e684a7b'),('f492195c-f591-4903-9992-e60ed04923fd'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313'),('fc6c5401-288e-4585-bc7f-909d7a0224e4');
/*!40000 ALTER TABLE `localizationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locatednetentity`
--

DROP TABLE IF EXISTS `locatednetentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locatednetentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_EntityLocation_Primary` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_LEtLocPrimary×ELocNE` (`id_EntityLocation_Primary`),
  CONSTRAINT `FK÷id_ENetEt×ELocNE` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LEtLocPrimary×ELocNE` FOREIGN KEY (`id_EntityLocation_Primary`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatednetentity`
--

LOCK TABLES `locatednetentity` WRITE;
/*!40000 ALTER TABLE `locatednetentity` DISABLE KEYS */;
INSERT INTO `locatednetentity` VALUES ('14b894cb-72f6-45da-b22b-168e3d6ba1f5','08c1efb0-603f-4322-ab54-336d072c3463'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc','12d30e44-12d8-44fe-b8fd-535027a6d50c'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2','187de3a6-a988-45df-8527-c8cbfbb0829e'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8','21e2fed0-5c8b-48e6-8378-cee47ba74c6a'),('33fee6ba-08dd-4215-8370-375cd90f60e5','357b97d0-4372-4fb0-b88a-34bd134cc3c0'),('57cb1234-4d6a-4b52-a458-c40774e6fefe','38ea7202-070c-4c40-910d-8e95799f123f'),('e59b6695-e707-478f-b58e-8138c950fa96','4e015053-7a61-44b7-a025-f2f317667e92'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e','52bd816e-0ab2-4826-95b4-f7cc369a6716'),('0e6cec43-1bb4-4e24-a0b0-8d1e45785962','5c476edf-caf6-4482-95da-6df88ea1c1f9'),('f786090f-654b-4785-a13b-c2926dfe038e','63326cb3-6b55-48bd-84dc-462f3f959e08'),('88a94592-853b-4010-b73b-8e0f722b021f','65f773bf-5482-4ce8-bac7-326b7c4f06d3'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3','6bd5a39b-6ec6-4be0-ae3d-0842efceb640'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354','8317a7fb-7dd0-4a9f-8cc5-57332d4ab490'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7','9d156751-9d2c-46d2-9cff-fb656f62a8fe'),('e27b2e79-8fbe-417c-a389-a20d34348580','b1f09257-4bc5-40a4-8bd5-30c3de972846'),('4b9e9aea-130a-4e52-a299-31f6bddc7627','c866d469-20b8-4ca3-a94b-20275b8d0648'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e','ceadece9-0eb0-48db-adf2-5d3b235720ab'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b','d494e868-a674-4bcc-882c-1fdee011675c'),('15b164e0-fc91-47de-952d-a68fe7c50ba9','dccda469-f4fe-463e-8f8d-524ffffc586f'),('887a1848-5937-41db-a953-df5034273cad','dcf3609a-cead-4e12-b073-19a252dd94cf'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0','f72c00f1-145e-4bd7-a1a2-1809342fda5a'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2','f7527116-3c1b-4e07-a8e9-658a353ec16c');
/*!40000 ALTER TABLE `locatednetentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modularentity`
--

DROP TABLE IF EXISTS `modularentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modularentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_ENetEt×XXMEnt` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modularentity`
--

LOCK TABLES `modularentity` WRITE;
/*!40000 ALTER TABLE `modularentity` DISABLE KEYS */;
INSERT INTO `modularentity` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('15b164e0-fc91-47de-952d-a68fe7c50ba9'),('33fee6ba-08dd-4215-8370-375cd90f60e5'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b'),('4b9e9aea-130a-4e52-a299-31f6bddc7627'),('57cb1234-4d6a-4b52-a458-c40774e6fefe'),('887a1848-5937-41db-a953-df5034273cad'),('88a94592-853b-4010-b73b-8e0f722b021f'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('e27b2e79-8fbe-417c-a389-a20d34348580'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('e59b6695-e707-478f-b58e-8138c950fa96'),('fde33595-b45e-49df-84f6-e3225cffe7f8');
/*!40000 ALTER TABLE `modularentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modularentitytype`
--

DROP TABLE IF EXISTS `modularentitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modularentitytype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_YEntTy×XYMEtT` FOREIGN KEY (`id`) REFERENCES `entitytype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modularentitytype`
--

LOCK TABLES `modularentitytype` WRITE;
/*!40000 ALTER TABLE `modularentitytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `modularentitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namedresource`
--

DROP TABLE IF EXISTS `namedresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `namedresource` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_czech_ci DEFAULT NULL,
  `longname` varchar(128) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UI÷name×BNmRes` (`name`),
  CONSTRAINT `FK÷id_BBaObj×BNmRes` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namedresource`
--

LOCK TABLES `namedresource` WRITE;
/*!40000 ALTER TABLE `namedresource` DISABLE KEYS */;
INSERT INTO `namedresource` VALUES ('06dd95d1-0cb2-424a-896e-be7bdf841eb1','LAssPs_8','Bod lokalizace balízy 1-1'),('08fa2f1f-21af-4e2b-9774-f6ea33e82eb2','LAssPs_9','Bod pro lokalizaci balízy 1-2'),('0e6cec43-1bb4-4e24-a0b0-8d1e45785962','XPBlse_14','BG6_1'),('0e8c2da9-4c1c-4703-8367-2d5769bd3672','LAssPs_1','Začátek zkušebního úseku'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad','XPBaGr_2','BG1'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5','XPBlse_10','BG4_1'),('15b164e0-fc91-47de-952d-a68fe7c50ba9','XPBlse_4','BG1_1'),('16574645-e2a3-414e-b92f-8aa3172372a9','LAssSc_5','Segment pro lokalizaci klesání 1'),('1852e479-224d-4100-89eb-c0ce0dd9ae81','LAssPs_16','Bod pro lokalizaci balízy 5-1'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3','XGStHC_1','Zkušební přímá'),('1d966e87-9696-4da3-811b-ac1d61c977a4','LAssPs_10','Bod pro lokalizaci balízy 2-1'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8','XGStVC_4','Klesání 1'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7','XGStVC_5','Stoupání 2'),('33fee6ba-08dd-4215-8370-375cd90f60e5','XPBlse_2','BG0_1'),('35f32f64-e725-4fcd-86f8-ccdedeac93e2','LAssPs_11','Bod pro lokalizaci balízy 2-2'),('37f120a5-a43e-413b-bf16-3c544b66dc68','LAssPs_20','Bod pro lokalizaci balízy 7-1'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b','XPBaGr_3','BG2'),('3e1a8de4-23ca-4af4-9bc8-37c144f56018','NNetwk_1','Zkušební síť'),('477665e4-ee8c-42ad-b478-4f25d506bdd2','LAssPs_21','Bod pro lokalizaci balízy 7-2'),('4b9e9aea-130a-4e52-a299-31f6bddc7627','XPBlse_12','BG5_1'),('53158710-2d5f-4528-ba5a-14b8f4b75912','LAssPs_15','Bod pro lokalizaci balízy 4-2'),('57c783f2-a5f8-456a-99fe-53909e02b16a','LAssPs_4','Bod změny sklonu 2'),('57cb1234-4d6a-4b52-a458-c40774e6fefe','XPBlse_3','BG1_0'),('58af1adc-c998-43c3-9671-73a0cc42984a','PGeoPS_1','Geometrický_souřadnicový_systém'),('83d26459-a915-4307-8030-e916ae0dc15a','LAssPs_7','Bod změny sklonu 5'),('87c94410-1739-45d3-8527-f70a5ef21d22','LAssSc_1','Segment pro lokalizaci zkušební přímé'),('887a1848-5937-41db-a953-df5034273cad','XOSpSc_1','Úsek rychlosti 1'),('88a94592-853b-4010-b73b-8e0f722b021f','XPBlse_13','BG6_0'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726','XPBaGr_4','BG3'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0','XPBlse_1','BG0_0'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e','XGStVC_2','Stoupání 1'),('99673cd4-3f49-4919-864d-dd9f2f8ef52f','LAssPs_5','Bod změny sklonu 3'),('9f5aea90-d268-466e-8b9c-032c4183a8d3','TLinEl_1','Zkušební úsek'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2','XPBlse_7','BG3_0'),('a34cd767-7834-416f-9323-b4f61bad9249','LAssPs_17','Bod pro lokalizaci balízy 5-2'),('a43be22d-1219-4aa9-8419-970c595f6620','LAssSc_2','Segment pro lokalizaci vodorovného úseku 1'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5','XPBaGr_7','BG6'),('a4b1217c-4d19-4157-86cd-7d0ec8c892b3','LAssSc_4','Segment pro lokalizaci vodorovného úseku 2'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc','XPBaGr_6','BG5'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e','XPBlse_9','BG4_0'),('b3dbd7fa-3c0b-43e4-8078-1c05af08f96a','LAssPs_14','Bod pro lokalizaci balízy 4-1'),('bb143ba4-40fb-4c40-9613-5b384ae39b13','LAssPs_6','Bod změny sklonu 4'),('be79a172-2796-45ef-af58-55b534064194','LAssPs_19','Bod pro lokalizaci balízy 6-2'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe','XPBaGr_5','BG4'),('d1004a49-b10f-4d6c-8ad5-cfa5bbe7ea78','LAssPs_13','Bod pro lokalizaci balízy 3-2'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc','XPBlse_5','BG2_0'),('dfe6a222-4b7a-445a-8332-25872d462190','LAssPs_2','Konec zkušebního úseku'),('e27b2e79-8fbe-417c-a389-a20d34348580','XPBlse_11','BG5_0'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354','XPBlse_8','BG3_1'),('e59b6695-e707-478f-b58e-8138c950fa96','XPBlse_6','BG2_1'),('e61cdaec-346d-4332-8338-3b1ff47c5162','LAssSc_7','Segment pro lokalizaci vodorovného úseku 3'),('e9d725c9-8511-4f72-aec0-ab8c9452f9e6','LAssPs_3','Bod změny sklonu 1'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b','XGStVC_1','Vodorovný úsek 1'),('f450a176-8304-43be-99d1-94889e684a7b','LAssPs_18','Bod pro lokalizaci balízy 6-1'),('f492195c-f591-4903-9992-e60ed04923fd','LAssSc_3','Segment pro lokalizaci stoupání 1'),('f786090f-654b-4785-a13b-c2926dfe038e','XGStVC_3','Vodorovný úsek 2'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2','XGStVC_6','Vodorovný úsek 3'),('f9ff8eff-312b-403c-b9e2-7a70a3f06313','LAssSc_6','Segment pro lokalizaci stoupání 2'),('fc6c5401-288e-4585-bc7f-909d7a0224e4','LAssPs_12','Bod pro lokalizaci balízy 3-1'),('fde33595-b45e-49df-84f6-e3225cffe7f8','XPBaGr_1','BG0');
/*!40000 ALTER TABLE `namedresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netelement`
--

DROP TABLE IF EXISTS `netelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netelement` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×TNetEl` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netelement`
--

LOCK TABLES `netelement` WRITE;
/*!40000 ALTER TABLE `netelement` DISABLE KEYS */;
INSERT INTO `netelement` VALUES ('9f5aea90-d268-466e-8b9c-032c4183a8d3');
/*!40000 ALTER TABLE `netelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netentity`
--

DROP TABLE IF EXISTS `netentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×ENetEt` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netentity`
--

LOCK TABLES `netentity` WRITE;
/*!40000 ALTER TABLE `netentity` DISABLE KEYS */;
INSERT INTO `netentity` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('15b164e0-fc91-47de-952d-a68fe7c50ba9'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('33fee6ba-08dd-4215-8370-375cd90f60e5'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b'),('4b9e9aea-130a-4e52-a299-31f6bddc7627'),('57cb1234-4d6a-4b52-a458-c40774e6fefe'),('887a1848-5937-41db-a953-df5034273cad'),('88a94592-853b-4010-b73b-8e0f722b021f'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('e27b2e79-8fbe-417c-a389-a20d34348580'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('e59b6695-e707-478f-b58e-8138c950fa96'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('f786090f-654b-4785-a13b-c2926dfe038e'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2'),('fde33595-b45e-49df-84f6-e3225cffe7f8');
/*!40000 ALTER TABLE `netentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×NNetwk` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('3e1a8de4-23ca-4af4-9bc8-37c144f56018');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networklevelassignment`
--

DROP TABLE IF EXISTS `networklevelassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networklevelassignment` (
  `id_LevelNetwork` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_Network` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_LevelNetwork`,`id_Network`),
  KEY `SI÷id_NNetwk×NNwLvA` (`id_Network`),
  KEY `SI÷id_NLevNw×NNwLvA` (`id_LevelNetwork`),
  CONSTRAINT `FK÷id_NLevNw×NLvNwA` FOREIGN KEY (`id_LevelNetwork`) REFERENCES `levelnetwork` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNetwk×NLvNwA` FOREIGN KEY (`id_Network`) REFERENCES `network` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networklevelassignment`
--

LOCK TABLES `networklevelassignment` WRITE;
/*!40000 ALTER TABLE `networklevelassignment` DISABLE KEYS */;
INSERT INTO `networklevelassignment` VALUES ('400ff05d-6e67-441f-ad05-09fb90176c75','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('4a471d80-3559-46d9-b39c-1ec5ab4d6703','3e1a8de4-23ca-4af4-9bc8-37c144f56018');
/*!40000 ALTER TABLE `networklevelassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkresource`
--

DROP TABLE IF EXISTS `networkresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkresource` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×NNtwRs` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkresource`
--

LOCK TABLES `networkresource` WRITE;
/*!40000 ALTER TABLE `networkresource` DISABLE KEYS */;
INSERT INTO `networkresource` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('15b164e0-fc91-47de-952d-a68fe7c50ba9'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('33fee6ba-08dd-4215-8370-375cd90f60e5'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b'),('4b9e9aea-130a-4e52-a299-31f6bddc7627'),('57cb1234-4d6a-4b52-a458-c40774e6fefe'),('887a1848-5937-41db-a953-df5034273cad'),('88a94592-853b-4010-b73b-8e0f722b021f'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('9f5aea90-d268-466e-8b9c-032c4183a8d3'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('e27b2e79-8fbe-417c-a389-a20d34348580'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('e59b6695-e707-478f-b58e-8138c950fa96'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('f786090f-654b-4785-a13b-c2926dfe038e'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2'),('fde33595-b45e-49df-84f6-e3225cffe7f8');
/*!40000 ALTER TABLE `networkresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkresourceassignment`
--

DROP TABLE IF EXISTS `networkresourceassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkresourceassignment` (
  `id_NetworkResource` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_Network` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetworkResource`,`id_Network`),
  KEY `SI÷id_NNetwk×NNwRsA` (`id_Network`),
  KEY `SI÷id_NNtwRs×NNwRsA` (`id_NetworkResource`),
  CONSTRAINT `FK÷id_NNetwk×NNwRsA` FOREIGN KEY (`id_Network`) REFERENCES `network` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNtwRs×NNwRsA` FOREIGN KEY (`id_NetworkResource`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkresourceassignment`
--

LOCK TABLES `networkresourceassignment` WRITE;
/*!40000 ALTER TABLE `networkresourceassignment` DISABLE KEYS */;
INSERT INTO `networkresourceassignment` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('15b164e0-fc91-47de-952d-a68fe7c50ba9','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('259085ea-b8a8-4b7e-95e2-2e2a633a11e8','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('33fee6ba-08dd-4215-8370-375cd90f60e5','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('4b9e9aea-130a-4e52-a299-31f6bddc7627','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('57cb1234-4d6a-4b52-a458-c40774e6fefe','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('887a1848-5937-41db-a953-df5034273cad','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('88a94592-853b-4010-b73b-8e0f722b021f','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('9f5aea90-d268-466e-8b9c-032c4183a8d3','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('e27b2e79-8fbe-417c-a389-a20d34348580','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('e59b6695-e707-478f-b58e-8138c950fa96','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('f786090f-654b-4785-a13b-c2926dfe038e','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2','3e1a8de4-23ca-4af4-9bc8-37c144f56018'),('fde33595-b45e-49df-84f6-e3225cffe7f8','3e1a8de4-23ca-4af4-9bc8-37c144f56018');
/*!40000 ALTER TABLE `networkresourceassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonlinearelement`
--

DROP TABLE IF EXISTS `nonlinearelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonlinearelement` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TPNtEl×TNoLEl` FOREIGN KEY (`id`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonlinearelement`
--

LOCK TABLES `nonlinearelement` WRITE;
/*!40000 ALTER TABLE `nonlinearelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonlinearelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectprojection`
--

DROP TABLE IF EXISTS `objectprojection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objectprojection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_BaseObject` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_Visualization` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_ObjectProjectionSymbol` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_VVisul×VObjPr` (`id_Visualization`),
  KEY `SI÷id_BBaObj×VObjPr` (`id_BaseObject`),
  KEY `SI÷id_VObjPS×VObjPr` (`id_ObjectProjectionSymbol`),
  CONSTRAINT `FK÷id_BBaObj×VObjPr` FOREIGN KEY (`id_BaseObject`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_VObjPS×VObjPr` FOREIGN KEY (`id_ObjectProjectionSymbol`) REFERENCES `objectprojectionsymbol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_VVBObj×VObjPr` FOREIGN KEY (`id`) REFERENCES `visualizationbaseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_VVisul×VObjPr` FOREIGN KEY (`id_Visualization`) REFERENCES `visualization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectprojection`
--

LOCK TABLES `objectprojection` WRITE;
/*!40000 ALTER TABLE `objectprojection` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectprojection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectprojectioncoordinate`
--

DROP TABLE IF EXISTS `objectprojectioncoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objectprojectioncoordinate` (
  `id_ObjectProjection` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_ScreenPositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `x` int unsigned NOT NULL,
  `y` int unsigned NOT NULL,
  `z` int unsigned NOT NULL,
  PRIMARY KEY (`id_ObjectProjection`,`id_ScreenPositioningSystem`,`sequence`),
  KEY `SI÷id_VScrPS×VObjPC` (`id_ScreenPositioningSystem`),
  KEY `SI÷id_VObjPr×VObjPC` (`id_ObjectProjection`),
  CONSTRAINT `FK÷id_VObjPr×VObjPC` FOREIGN KEY (`id_ObjectProjection`) REFERENCES `objectprojection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_VScrPS×VObjPC` FOREIGN KEY (`id_ScreenPositioningSystem`) REFERENCES `screenpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectprojectioncoordinate`
--

LOCK TABLES `objectprojectioncoordinate` WRITE;
/*!40000 ALTER TABLE `objectprojectioncoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectprojectioncoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectprojectionsymbol`
--

DROP TABLE IF EXISTS `objectprojectionsymbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objectprojectionsymbol` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `externalIconRef` varchar(260) COLLATE utf8_czech_ci NOT NULL,
  `orientation` varchar(16) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_VVBObj×VObjPS` FOREIGN KEY (`id`) REFERENCES `visualizationbaseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectprojectionsymbol`
--

LOCK TABLES `objectprojectionsymbol` WRITE;
/*!40000 ALTER TABLE `objectprojectionsymbol` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectprojectionsymbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationalarea`
--

DROP TABLE IF EXISTS `operationalarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operationalarea` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `isStoppingPoint` char(1) COLLATE utf8_czech_ci DEFAULT NULL,
  `isStation` char(1) COLLATE utf8_czech_ci DEFAULT NULL,
  `isDepot` char(1) COLLATE utf8_czech_ci DEFAULT NULL,
  `isJunction` char(1) COLLATE utf8_czech_ci DEFAULT NULL,
  `isInterstationSection` char(1) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XOOpAr` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationalarea`
--

LOCK TABLES `operationalarea` WRITE;
/*!40000 ALTER TABLE `operationalarea` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationalarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationalareasignalassignment`
--

DROP TABLE IF EXISTS `operationalareasignalassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operationalareasignalassignment` (
  `id_Signal` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_OperationalArea` char(36) COLLATE utf8_czech_ci NOT NULL,
  `operationalDesignator` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `operationalFunction` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_Signal`,`id_OperationalArea`),
  KEY `SI÷id_XOOpAr×XOOASA` (`id_OperationalArea`),
  KEY `SI÷id_XCSign×XOOASA` (`id_Signal`),
  CONSTRAINT `FK÷id_XCSign×XOOASA` FOREIGN KEY (`id_Signal`) REFERENCES `tracksidesignal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XOOpAr×XOOASA` FOREIGN KEY (`id_OperationalArea`) REFERENCES `operationalarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationalareasignalassignment`
--

LOCK TABLES `operationalareasignalassignment` WRITE;
/*!40000 ALTER TABLE `operationalareasignalassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationalareasignalassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationalentity`
--

DROP TABLE IF EXISTS `operationalentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operationalentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XMPMtE×XOOpeE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationalentity`
--

LOCK TABLES `operationalentity` WRITE;
/*!40000 ALTER TABLE `operationalentity` DISABLE KEYS */;
INSERT INTO `operationalentity` VALUES ('887a1848-5937-41db-a953-df5034273cad');
/*!40000 ALTER TABLE `operationalentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderedcollection`
--

DROP TABLE IF EXISTS `orderedcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedcollection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TElPaC×TOrCol` FOREIGN KEY (`id`) REFERENCES `elementpartcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderedcollection`
--

LOCK TABLES `orderedcollection` WRITE;
/*!40000 ALTER TABLE `orderedcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderedcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderedcollectionelement`
--

DROP TABLE IF EXISTS `orderedcollectionelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedcollectionelement` (
  `id_NetElement` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_OrderedCollection` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int unsigned NOT NULL,
  PRIMARY KEY (`id_NetElement`,`id_OrderedCollection`),
  UNIQUE KEY `UI÷id_TOrCol·sequence×TOColE` (`sequence`,`id_OrderedCollection`),
  KEY `SI÷id_TOrCol×TOColE` (`id_OrderedCollection`),
  KEY `SI÷id_TNetEl×TOColE` (`id_NetElement`),
  CONSTRAINT `FK÷id_TNetEl×TOColE` FOREIGN KEY (`id_NetElement`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TOrCol×TOColE` FOREIGN KEY (`id_OrderedCollection`) REFERENCES `orderedcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderedcollectionelement`
--

LOCK TABLES `orderedcollectionelement` WRITE;
/*!40000 ALTER TABLE `orderedcollectionelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderedcollectionelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parabolavc`
--

DROP TABLE IF EXISTS `parabolavc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parabolavc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `parabolaVertexRadius` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGVerC×XGPbVC` FOREIGN KEY (`id`) REFERENCES `verticalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parabolavc`
--

LOCK TABLES `parabolavc` WRITE;
/*!40000 ALTER TABLE `parabolavc` DISABLE KEYS */;
/*!40000 ALTER TABLE `parabolavc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_OperationalArea` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `width` double DEFAULT NULL,
  `platformType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XOOpAr×XSPlat` (`id_OperationalArea`),
  CONSTRAINT `FK÷id_XOOpAr×XSPlat` FOREIGN KEY (`id_OperationalArea`) REFERENCES `operationalarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XSStrE×XSPlat` FOREIGN KEY (`id`) REFERENCES `structuralentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platformedge`
--

DROP TABLE IF EXISTS `platformedge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platformedge` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_Platform` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `maximumTrainLength` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XSPlat×XSPlEg` (`id_Platform`),
  CONSTRAINT `FK÷id_XOOpeE×XSPlEg` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XSPlat×XSPlEg` FOREIGN KEY (`id_Platform`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platformedge`
--

LOCK TABLES `platformedge` WRITE;
/*!40000 ALTER TABLE `platformedge` DISABLE KEYS */;
/*!40000 ALTER TABLE `platformedge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platformstoppingplace`
--

DROP TABLE IF EXISTS `platformstoppingplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platformstoppingplace` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PlatformEdge` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XSPlEg×XOPlSP` (`id_PlatformEdge`),
  CONSTRAINT `FK÷id_XOStPl×XOPlSP` FOREIGN KEY (`id`) REFERENCES `stoppingplace` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XSPlEg×XOPlSP` FOREIGN KEY (`id_PlatformEdge`) REFERENCES `platformedge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platformstoppingplace`
--

LOCK TABLES `platformstoppingplace` WRITE;
/*!40000 ALTER TABLE `platformstoppingplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `platformstoppingplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionedrelation`
--

DROP TABLE IF EXISTS `positionedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionedrelation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningNetElement_A` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PositioningNetElement_B` char(36) COLLATE utf8_czech_ci NOT NULL,
  `positionOnA` char(1) COLLATE utf8_czech_ci NOT NULL,
  `positionOnB` char(1) COLLATE utf8_czech_ci NOT NULL,
  `navigability` varchar(32) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_TPNtElA×TPosRt` (`id_PositioningNetElement_A`),
  KEY `SI÷id_TPNtElB×TPosRt` (`id_PositioningNetElement_B`),
  CONSTRAINT `FK÷id_TPNtElA×TPosRt` FOREIGN KEY (`id_PositioningNetElement_A`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtElB×TPosRt` FOREIGN KEY (`id_PositioningNetElement_B`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TRelat×TPosRt` FOREIGN KEY (`id`) REFERENCES `relation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionedrelation`
--

LOCK TABLES `positionedrelation` WRITE;
/*!40000 ALTER TABLE `positionedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `positionedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positioningnetelement`
--

DROP TABLE IF EXISTS `positioningnetelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positioningnetelement` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TCNtEl×TPNtEl` FOREIGN KEY (`id`) REFERENCES `compositionnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioningnetelement`
--

LOCK TABLES `positioningnetelement` WRITE;
/*!40000 ALTER TABLE `positioningnetelement` DISABLE KEYS */;
INSERT INTO `positioningnetelement` VALUES ('9f5aea90-d268-466e-8b9c-032c4183a8d3');
/*!40000 ALTER TABLE `positioningnetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positioningsystem`
--

DROP TABLE IF EXISTS `positioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positioningsystem` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×PPoSys` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioningsystem`
--

LOCK TABLES `positioningsystem` WRITE;
/*!40000 ALTER TABLE `positioningsystem` DISABLE KEYS */;
INSERT INTO `positioningsystem` VALUES ('58af1adc-c998-43c3-9671-73a0cc42984a');
/*!40000 ALTER TABLE `positioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `powersource`
--

DROP TABLE IF EXISTS `powersource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `powersource` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XEEleE×XEPwSr` FOREIGN KEY (`id`) REFERENCES `electrificationentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `powersource`
--

LOCK TABLES `powersource` WRITE;
/*!40000 ALTER TABLE `powersource` DISABLE KEYS */;
/*!40000 ALTER TABLE `powersource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `railwayroute`
--

DROP TABLE IF EXISTS `railwayroute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `railwayroute` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `railwayRouteType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XORaRo` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `railwayroute`
--

LOCK TABLES `railwayroute` WRITE;
/*!40000 ALTER TABLE `railwayroute` DISABLE KEYS */;
/*!40000 ALTER TABLE `railwayroute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×TRelat` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routecomponentassignment`
--

DROP TABLE IF EXISTS `routecomponentassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routecomponentassignment` (
  `id_SuperstructureComponent` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_RailwayRoute` char(36) COLLATE utf8_czech_ci NOT NULL,
  `routeRole` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `assignmentType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_SuperstructureComponent`,`id_RailwayRoute`),
  KEY `SI÷id_XORaRo×XORCoA` (`id_RailwayRoute`),
  KEY `SI÷id_XSSuCo×XORCoA` (`id_SuperstructureComponent`),
  CONSTRAINT `FK÷id_XORaRo×XORCoA` FOREIGN KEY (`id_RailwayRoute`) REFERENCES `railwayroute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XSSuCo×XORCoA` FOREIGN KEY (`id_SuperstructureComponent`) REFERENCES `superstructurecomponent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routecomponentassignment`
--

LOCK TABLES `routecomponentassignment` WRITE;
/*!40000 ALTER TABLE `routecomponentassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `routecomponentassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routecontrolentityassignment`
--

DROP TABLE IF EXISTS `routecontrolentityassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routecontrolentityassignment` (
  `id_ControlEntity` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_RailwayRoute` char(36) COLLATE utf8_czech_ci NOT NULL,
  `requiredState` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_ControlEntity`,`id_RailwayRoute`),
  KEY `SI÷id_XORaRo×XORCEA` (`id_RailwayRoute`),
  KEY `SI÷id_XCConE×XORCEA` (`id_ControlEntity`),
  CONSTRAINT `FK÷id_XCConE×XORCEA` FOREIGN KEY (`id_ControlEntity`) REFERENCES `controlentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XORaRo×XORCEA` FOREIGN KEY (`id_RailwayRoute`) REFERENCES `railwayroute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routecontrolentityassignment`
--

LOCK TABLES `routecontrolentityassignment` WRITE;
/*!40000 ALTER TABLE `routecontrolentityassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `routecontrolentityassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routecurveassignment`
--

DROP TABLE IF EXISTS `routecurveassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routecurveassignment` (
  `id_HorizontalCurve` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_RailwayRoute` char(36) COLLATE utf8_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  PRIMARY KEY (`id_HorizontalCurve`,`id_RailwayRoute`,`sequence`),
  KEY `SI÷id_XGHorC×XORCuA` (`id_HorizontalCurve`),
  KEY `SI÷id_XORaRo×XORCuA` (`id_RailwayRoute`),
  CONSTRAINT `FK÷id_XGHorC×XORCuA` FOREIGN KEY (`id_HorizontalCurve`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XORaRo×XORCuA` FOREIGN KEY (`id_RailwayRoute`) REFERENCES `railwayroute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routecurveassignment`
--

LOCK TABLES `routecurveassignment` WRITE;
/*!40000 ALTER TABLE `routecurveassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `routecurveassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenpositioningsystem`
--

DROP TABLE IF EXISTS `screenpositioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenpositioningsystem` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `pxX` int unsigned NOT NULL,
  `pxY` int unsigned NOT NULL,
  `pxZ` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_PPoSys×VScrPS` FOREIGN KEY (`id`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenpositioningsystem`
--

LOCK TABLES `screenpositioningsystem` WRITE;
/*!40000 ALTER TABLE `screenpositioningsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `screenpositioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signalcomponenttype`
--

DROP TABLE IF EXISTS `signalcomponenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signalcomponenttype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYMEtT×XYSiCT` FOREIGN KEY (`id`) REFERENCES `modularentitytype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signalcomponenttype`
--

LOCK TABLES `signalcomponenttype` WRITE;
/*!40000 ALTER TABLE `signalcomponenttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `signalcomponenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signalcomponenttypeassignment`
--

DROP TABLE IF EXISTS `signalcomponenttypeassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signalcomponenttypeassignment` (
  `id_SignalType` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_SignalComponentType` char(36) COLLATE utf8_czech_ci NOT NULL,
  `verticalPosition` double DEFAULT NULL,
  `horizontalPosition` double DEFAULT NULL,
  PRIMARY KEY (`id_SignalType`,`id_SignalComponentType`),
  KEY `SI÷id_XYSigT×XYSCTA` (`id_SignalType`),
  KEY `SI÷id_XYSiCT×XYSCTA` (`id_SignalComponentType`),
  CONSTRAINT `FK÷id_XYSiCT×XYSCTA` FOREIGN KEY (`id_SignalComponentType`) REFERENCES `signalcomponenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XYSigT×XYSCTA` FOREIGN KEY (`id_SignalType`) REFERENCES `signaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signalcomponenttypeassignment`
--

LOCK TABLES `signalcomponenttypeassignment` WRITE;
/*!40000 ALTER TABLE `signalcomponenttypeassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `signalcomponenttypeassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signallabeltypeassignment`
--

DROP TABLE IF EXISTS `signallabeltypeassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signallabeltypeassignment` (
  `id_Signal` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_LabelType` char(36) COLLATE utf8_czech_ci NOT NULL,
  `indicatedValue` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_Signal`,`id_LabelType`),
  KEY `SI÷id_XYLabT×XCSLTA` (`id_LabelType`),
  KEY `SI÷id_XCTSig×XCSLTA` (`id_Signal`),
  CONSTRAINT `FK÷id_XCTSig×XCSLTA` FOREIGN KEY (`id_Signal`) REFERENCES `tracksidesignal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XYLabT×XCSLTA` FOREIGN KEY (`id_LabelType`) REFERENCES `labeltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signallabeltypeassignment`
--

LOCK TABLES `signallabeltypeassignment` WRITE;
/*!40000 ALTER TABLE `signallabeltypeassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `signallabeltypeassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signaltype`
--

DROP TABLE IF EXISTS `signaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signaltype` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `signalCategory` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `signalConstructionType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `defaultIndication` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYMEtT×XYSigT` FOREIGN KEY (`id`) REFERENCES `modularentitytype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signaltype`
--

LOCK TABLES `signaltype` WRITE;
/*!40000 ALTER TABLE `signaltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `signaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `significantlooppoint`
--

DROP TABLE IF EXISTS `significantlooppoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `significantlooppoint` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_TransmissionLoop` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `loopPointType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XPTmLp×XPSLpP` (`id_TransmissionLoop`),
  CONSTRAINT `FK÷id_XPTmLp×XPSLpP` FOREIGN KEY (`id_TransmissionLoop`) REFERENCES `transmissionloop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XPTrPE×XPSLpP` FOREIGN KEY (`id`) REFERENCES `trainprotectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `significantlooppoint`
--

LOCK TABLES `significantlooppoint` WRITE;
/*!40000 ALTER TABLE `significantlooppoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `significantlooppoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedprofile`
--

DROP TABLE IF EXISTS `speedprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedprofile` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `speedProfileType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XOStPl00` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedprofile`
--

LOCK TABLES `speedprofile` WRITE;
/*!40000 ALTER TABLE `speedprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `speedprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedprofilesectionassignment`
--

DROP TABLE IF EXISTS `speedprofilesectionassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedprofilesectionassignment` (
  `id_SpeedSection` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_SpeedProfile` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_SpeedSection`,`id_SpeedProfile`),
  KEY `SI÷id_XOSpSc×XOSPSA` (`id_SpeedSection`),
  KEY `SI÷id_XOSpPf×XOSPSA` (`id_SpeedProfile`),
  CONSTRAINT `FK÷id_XOSpPf×XOSPSA` FOREIGN KEY (`id_SpeedProfile`) REFERENCES `speedprofile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XOSpSc×XOSPSA` FOREIGN KEY (`id_SpeedSection`) REFERENCES `speedsection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedprofilesectionassignment`
--

LOCK TABLES `speedprofilesectionassignment` WRITE;
/*!40000 ALTER TABLE `speedprofilesectionassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `speedprofilesectionassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedsection`
--

DROP TABLE IF EXISTS `speedsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedsection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `maxSpeed` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XOStPl0` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedsection`
--

LOCK TABLES `speedsection` WRITE;
/*!40000 ALTER TABLE `speedsection` DISABLE KEYS */;
INSERT INTO `speedsection` VALUES ('887a1848-5937-41db-a953-df5034273cad',120);
/*!40000 ALTER TABLE `speedsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedsectionsignalassignment`
--

DROP TABLE IF EXISTS `speedsectionsignalassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedsectionsignalassignment` (
  `id_Signal` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_SpeedSection` char(36) COLLATE utf8_czech_ci NOT NULL,
  `signalRole` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `trainRelation` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_Signal`,`id_SpeedSection`),
  KEY `SI÷id_XOSpSc×XOSSSA` (`id_SpeedSection`),
  KEY `SI÷id_XCTSig×XOSSSA` (`id_Signal`),
  CONSTRAINT `FK÷id_XCTSig×XOSSSA` FOREIGN KEY (`id_Signal`) REFERENCES `tracksidesignal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XOSpSc×XOSSSA` FOREIGN KEY (`id_SpeedSection`) REFERENCES `speedsection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedsectionsignalassignment`
--

LOCK TABLES `speedsectionsignalassignment` WRITE;
/*!40000 ALTER TABLE `speedsectionsignalassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `speedsectionsignalassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stoppingplace`
--

DROP TABLE IF EXISTS `stoppingplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stoppingplace` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `trainRelation` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `wagonCount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XOStPl` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoppingplace`
--

LOCK TABLES `stoppingplace` WRITE;
/*!40000 ALTER TABLE `stoppingplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `stoppingplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `straighthc`
--

DROP TABLE IF EXISTS `straighthc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `straighthc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `horizontalLength` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGStHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `straighthc`
--

LOCK TABLES `straighthc` WRITE;
/*!40000 ALTER TABLE `straighthc` DISABLE KEYS */;
INSERT INTO `straighthc` VALUES ('1ae78cd6-7951-42ca-9b4c-2eda61c8b3f3',10000);
/*!40000 ALTER TABLE `straighthc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `straightvc`
--

DROP TABLE IF EXISTS `straightvc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `straightvc` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGVerC×XGStVC` FOREIGN KEY (`id`) REFERENCES `verticalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `straightvc`
--

LOCK TABLES `straightvc` WRITE;
/*!40000 ALTER TABLE `straightvc` DISABLE KEYS */;
INSERT INTO `straightvc` VALUES ('259085ea-b8a8-4b7e-95e2-2e2a633a11e8'),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7'),('920afcc4-7ceb-4eb9-96a3-5c146b48946e'),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b'),('f786090f-654b-4785-a13b-c2926dfe038e'),('f8f7716a-54c3-4945-ba4a-c5a1753802e2');
/*!40000 ALTER TABLE `straightvc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structuralentity`
--

DROP TABLE IF EXISTS `structuralentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `structuralentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XSStrE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structuralentity`
--

LOCK TABLES `structuralentity` WRITE;
/*!40000 ALTER TABLE `structuralentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `structuralentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superelevation`
--

DROP TABLE IF EXISTS `superelevation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superelevation` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `anchoredAxisReference` char(2) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGSuEl` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superelevation`
--

LOCK TABLES `superelevation` WRITE;
/*!40000 ALTER TABLE `superelevation` DISABLE KEYS */;
/*!40000 ALTER TABLE `superelevation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superstructurecomponent`
--

DROP TABLE IF EXISTS `superstructurecomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superstructurecomponent` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_OperationalArea` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `operationalDesignator` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XOOpAr×XSSuCo` (`id_OperationalArea`),
  CONSTRAINT `FK÷id_XOOpAr×XSSuCo` FOREIGN KEY (`id_OperationalArea`) REFERENCES `operationalarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XSStrE×XSSuCo` FOREIGN KEY (`id`) REFERENCES `structuralentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superstructurecomponent`
--

LOCK TABLES `superstructurecomponent` WRITE;
/*!40000 ALTER TABLE `superstructurecomponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `superstructurecomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchmachine`
--

DROP TABLE IF EXISTS `switchmachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `switchmachine` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_Turnout` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `switchMachineRole` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `defaultState` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `id_TracksideSignal` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XCTSig×XCSwMa` (`id_TracksideSignal`),
  KEY `SI÷id_XCSwMa×XSTurn` (`id_Turnout`),
  CONSTRAINT `FK÷id_XCConE×XCSwMa` FOREIGN KEY (`id`) REFERENCES `controlentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XCSwMa×XSTurn` FOREIGN KEY (`id_Turnout`) REFERENCES `turnout` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XCTSig×XCSwMa` FOREIGN KEY (`id_TracksideSignal`) REFERENCES `tracksidesignal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchmachine`
--

LOCK TABLES `switchmachine` WRITE;
/*!40000 ALTER TABLE `switchmachine` DISABLE KEYS */;
/*!40000 ALTER TABLE `switchmachine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchmachinerelationassignment`
--

DROP TABLE IF EXISTS `switchmachinerelationassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `switchmachinerelationassignment` (
  `id_SwitchMachine` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_PossitionedRelation` char(36) COLLATE utf8_czech_ci NOT NULL,
  `validForState` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id_SwitchMachine`,`id_PossitionedRelation`),
  KEY `SI÷id_TPosRt×XCSMRA` (`id_PossitionedRelation`),
  KEY `SI÷id_XCSwMa×XCSMRA` (`id_SwitchMachine`),
  CONSTRAINT `FK÷id_TPosRt×XCSMRA` FOREIGN KEY (`id_PossitionedRelation`) REFERENCES `positionedrelation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XCSwMa×XCSMRA` FOREIGN KEY (`id_SwitchMachine`) REFERENCES `switchmachine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchmachinerelationassignment`
--

LOCK TABLES `switchmachinerelationassignment` WRITE;
/*!40000 ALTER TABLE `switchmachinerelationassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `switchmachinerelationassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symbolcoordinate`
--

DROP TABLE IF EXISTS `symbolcoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbolcoordinate` (
  `id_ObjectProjectionSymbol` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_ScreenPositioningSystem` char(36) COLLATE utf8_czech_ci NOT NULL,
  `x` int unsigned NOT NULL,
  `y` int unsigned NOT NULL,
  `z` int unsigned NOT NULL,
  PRIMARY KEY (`id_ObjectProjectionSymbol`,`id_ScreenPositioningSystem`),
  KEY `SI÷id_VScrPS×VSymCo` (`id_ScreenPositioningSystem`),
  KEY `SI÷id_VObjPS×VSymCo` (`id_ObjectProjectionSymbol`),
  CONSTRAINT `FK÷id_VObjPS×VSymCo` FOREIGN KEY (`id_ObjectProjectionSymbol`) REFERENCES `objectprojectionsymbol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_VScrPS×VSymCo` FOREIGN KEY (`id_ScreenPositioningSystem`) REFERENCES `screenpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symbolcoordinate`
--

LOCK TABLES `symbolcoordinate` WRITE;
/*!40000 ALTER TABLE `symbolcoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `symbolcoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XSSuCo×XSTrac` FOREIGN KEY (`id`) REFERENCES `superstructurecomponent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackbed`
--

DROP TABLE IF EXISTS `trackbed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackbed` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `trackBedType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XSStrE×XSTBed` FOREIGN KEY (`id`) REFERENCES `structuralentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackbed`
--

LOCK TABLES `trackbed` WRITE;
/*!40000 ALTER TABLE `trackbed` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackbed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackcircuit`
--

DROP TABLE IF EXISTS `trackcircuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackcircuit` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_OperationalArea` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XOOpAr×XDTCir` (`id_OperationalArea`),
  CONSTRAINT `FK÷id_XDTrDE×XDTCir` FOREIGN KEY (`id`) REFERENCES `traindetectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XOOpPt×XDTCir` FOREIGN KEY (`id_OperationalArea`) REFERENCES `operationalarea` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackcircuit`
--

LOCK TABLES `trackcircuit` WRITE;
/*!40000 ALTER TABLE `trackcircuit` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackcircuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackcircuitloopassignment`
--

DROP TABLE IF EXISTS `trackcircuitloopassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackcircuitloopassignment` (
  `id_TransmissionLoop` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_TrackCircuit` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_TransmissionLoop`,`id_TrackCircuit`),
  KEY `SI÷id_XPTmLp×XDTCLA` (`id_TransmissionLoop`),
  KEY `SI÷id_XDTCir×XDTCLA` (`id_TrackCircuit`),
  CONSTRAINT `FK÷id_XDTCir×XDTCLA` FOREIGN KEY (`id_TrackCircuit`) REFERENCES `trackcircuit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XPTmLp×XDTCLA` FOREIGN KEY (`id_TransmissionLoop`) REFERENCES `transmissionloop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackcircuitloopassignment`
--

LOCK TABLES `trackcircuitloopassignment` WRITE;
/*!40000 ALTER TABLE `trackcircuitloopassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackcircuitloopassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracksidesignal`
--

DROP TABLE IF EXISTS `tracksidesignal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracksidesignal` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_SignalType` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  `referencePointHeight` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XYSigT×XCTSig` (`id_SignalType`),
  CONSTRAINT `FK÷id_XCConE×XCTSig` FOREIGN KEY (`id`) REFERENCES `controlentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XYSigT×XCTSig` FOREIGN KEY (`id_SignalType`) REFERENCES `signaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracksidesignal`
--

LOCK TABLES `tracksidesignal` WRITE;
/*!40000 ALTER TABLE `tracksidesignal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracksidesignal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traindetectionentity`
--

DROP TABLE IF EXISTS `traindetectionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traindetectionentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XDTrDE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traindetectionentity`
--

LOCK TABLES `traindetectionentity` WRITE;
/*!40000 ALTER TABLE `traindetectionentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `traindetectionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainprotectionentity`
--

DROP TABLE IF EXISTS `trainprotectionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainprotectionentity` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XPTrPE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainprotectionentity`
--

LOCK TABLES `trainprotectionentity` WRITE;
/*!40000 ALTER TABLE `trainprotectionentity` DISABLE KEYS */;
INSERT INTO `trainprotectionentity` VALUES ('0e6cec43-1bb4-4e24-a0b0-8d1e45785962'),('12a9fbaa-a938-4b7b-b8cd-021654ae15ad'),('14b894cb-72f6-45da-b22b-168e3d6ba1f5'),('15b164e0-fc91-47de-952d-a68fe7c50ba9'),('33fee6ba-08dd-4215-8370-375cd90f60e5'),('3ad943ed-1e60-40d4-80d2-0181bc9b712b'),('4b9e9aea-130a-4e52-a299-31f6bddc7627'),('57cb1234-4d6a-4b52-a458-c40774e6fefe'),('88a94592-853b-4010-b73b-8e0f722b021f'),('8ecfe2fe-701c-4b4c-9cc8-b9d80e149726'),('8fd4275c-ad38-4af0-ad9f-5c11bbc701f0'),('a0ed63cd-08ce-4386-b7f6-91028e2a00b2'),('a44e105a-2bcc-4071-ae65-41c1c7a554a5'),('a7bcf251-31d9-4ad1-84a3-8f78414d14bc'),('b03701dd-6d73-4e04-bc9d-f75c5fab068e'),('cb79cd85-bf6d-4721-92cf-e831cc1b9fbe'),('d87311d1-6618-4c4f-87e3-79a4b9467dfc'),('e27b2e79-8fbe-417c-a389-a20d34348580'),('e48942cd-f01c-4c2c-998a-4d7d8e8ac354'),('e59b6695-e707-478f-b58e-8138c950fa96'),('fde33595-b45e-49df-84f6-e3225cffe7f8');
/*!40000 ALTER TABLE `trainprotectionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmissionloop`
--

DROP TABLE IF EXISTS `transmissionloop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transmissionloop` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_TransmitterBox` char(36) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XPTmLp×XPSLpP` (`id_TransmitterBox`),
  CONSTRAINT `FK÷id_XPTmBx×XPTmLp` FOREIGN KEY (`id_TransmitterBox`) REFERENCES `transmitterbox` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XPTrPE×XPTmLp` FOREIGN KEY (`id`) REFERENCES `trainprotectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmissionloop`
--

LOCK TABLES `transmissionloop` WRITE;
/*!40000 ALTER TABLE `transmissionloop` DISABLE KEYS */;
/*!40000 ALTER TABLE `transmissionloop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmitterbox`
--

DROP TABLE IF EXISTS `transmitterbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transmitterbox` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `protectionSystem` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XPTrPE×XPTmBx` FOREIGN KEY (`id`) REFERENCES `trainprotectionentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmitterbox`
--

LOCK TABLES `transmitterbox` WRITE;
/*!40000 ALTER TABLE `transmitterbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `transmitterbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tunnel`
--

DROP TABLE IF EXISTS `tunnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tunnel` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `numberOfTracks` int DEFAULT NULL,
  `liningMaterial` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `crossSectionShape` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `horizontalCrossSectionDimension` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XSStrE×XSTunl` FOREIGN KEY (`id`) REFERENCES `structuralentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tunnel`
--

LOCK TABLES `tunnel` WRITE;
/*!40000 ALTER TABLE `tunnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tunnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnout`
--

DROP TABLE IF EXISTS `turnout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnout` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `turnoutType` varchar(32) COLLATE utf8_czech_ci DEFAULT NULL,
  `technicalDesignator` varchar(64) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XSSuCo×XSTurn` FOREIGN KEY (`id`) REFERENCES `superstructurecomponent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnout`
--

LOCK TABLES `turnout` WRITE;
/*!40000 ALTER TABLE `turnout` DISABLE KEYS */;
/*!40000 ALTER TABLE `turnout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unorderedcollection`
--

DROP TABLE IF EXISTS `unorderedcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unorderedcollection` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TElPaC×TUoCol` FOREIGN KEY (`id`) REFERENCES `elementpartcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unorderedcollection`
--

LOCK TABLES `unorderedcollection` WRITE;
/*!40000 ALTER TABLE `unorderedcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `unorderedcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unorderedcollectionelement`
--

DROP TABLE IF EXISTS `unorderedcollectionelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unorderedcollectionelement` (
  `id_NetElement` char(36) COLLATE utf8_czech_ci NOT NULL,
  `id_UnorderedCollection` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetElement`,`id_UnorderedCollection`),
  KEY `SI÷id_TUoCol×TUColE` (`id_UnorderedCollection`),
  KEY `SI÷id_TNetEl×TUColE` (`id_NetElement`),
  CONSTRAINT `FK÷id_TNetEl×TUColE` FOREIGN KEY (`id_NetElement`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TUoCol×TUColE` FOREIGN KEY (`id_UnorderedCollection`) REFERENCES `unorderedcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unorderedcollectionelement`
--

LOCK TABLES `unorderedcollectionelement` WRITE;
/*!40000 ALTER TABLE `unorderedcollectionelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `unorderedcollectionelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verticalcurve`
--

DROP TABLE IF EXISTS `verticalcurve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verticalcurve` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  `horizontalLength` double DEFAULT NULL,
  `elevation0` double DEFAULT NULL,
  `deltaElevation` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGVerC` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verticalcurve`
--

LOCK TABLES `verticalcurve` WRITE;
/*!40000 ALTER TABLE `verticalcurve` DISABLE KEYS */;
INSERT INTO `verticalcurve` VALUES ('259085ea-b8a8-4b7e-95e2-2e2a633a11e8',1500,15.3,-9),('2f916a50-f0b2-4a5e-81bb-7a689d7207f7',2100,6.3,16.8),('920afcc4-7ceb-4eb9-96a3-5c146b48946e',1700,0,15.3),('f30ea11d-2467-4dc4-bfeb-c82b3df5df3b',1800,0,0),('f786090f-654b-4785-a13b-c2926dfe038e',2000,15.3,0),('f8f7716a-54c3-4945-ba4a-c5a1753802e2',900,23.1,0);
/*!40000 ALTER TABLE `verticalcurve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualization`
--

DROP TABLE IF EXISTS `visualization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualization` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_VVBObj×VVisul` FOREIGN KEY (`id`) REFERENCES `visualizationbaseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualization`
--

LOCK TABLES `visualization` WRITE;
/*!40000 ALTER TABLE `visualization` DISABLE KEYS */;
/*!40000 ALTER TABLE `visualization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualizationbaseobject`
--

DROP TABLE IF EXISTS `visualizationbaseobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualizationbaseobject` (
  `id` char(36) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×VVBObj` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualizationbaseobject`
--

LOCK TABLES `visualizationbaseobject` WRITE;
/*!40000 ALTER TABLE `visualizationbaseobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `visualizationbaseobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'etcsinfrax21'
--
/*!50003 DROP PROCEDURE IF EXISTS `ANALYZE_INVALID_FOREIGN_KEYS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Adam`@`%` PROCEDURE `ANALYZE_INVALID_FOREIGN_KEYS`(
        checked_database_name VARCHAR(64), 
        checked_table_name VARCHAR(64))
    READS SQL DATA
BEGIN
        DECLARE TABLE_SCHEMA_VAR VARCHAR(64);
        DECLARE TABLE_NAME_VAR VARCHAR(64);
        DECLARE COLUMN_NAME_VAR VARCHAR(64); 
        DECLARE CONSTRAINT_NAME_VAR VARCHAR(64);
        DECLARE REFERENCED_TABLE_SCHEMA_VAR VARCHAR(64);
        DECLARE REFERENCED_TABLE_NAME_VAR VARCHAR(64);
        DECLARE REFERENCED_COLUMN_NAME_VAR VARCHAR(64);
        DECLARE KEYS_SQL_VAR VARCHAR(1024);

        DECLARE done INT DEFAULT 0;

        DECLARE foreign_key_cursor CURSOR FOR
            SELECT
                `TABLE_SCHEMA`,
                `TABLE_NAME`,
                `COLUMN_NAME`,
                `CONSTRAINT_NAME`,
                `REFERENCED_TABLE_SCHEMA`,
                `REFERENCED_TABLE_NAME`,
                `REFERENCED_COLUMN_NAME`
            FROM 
                information_schema.KEY_COLUMN_USAGE 
            WHERE 
                `CONSTRAINT_SCHEMA` LIKE checked_database_name AND
                `TABLE_NAME` LIKE checked_table_name AND
                `REFERENCED_TABLE_SCHEMA` IS NOT NULL;

        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
        OPEN foreign_key_cursor;
        foreign_key_cursor_loop: LOOP
            FETCH foreign_key_cursor INTO 
            TABLE_SCHEMA_VAR, 
            TABLE_NAME_VAR, 
            COLUMN_NAME_VAR, 
            CONSTRAINT_NAME_VAR, 
            REFERENCED_TABLE_SCHEMA_VAR, 
            REFERENCED_TABLE_NAME_VAR, 
            REFERENCED_COLUMN_NAME_VAR;
            IF done THEN
                LEAVE foreign_key_cursor_loop;
            END IF;


            SET @from_part = CONCAT('FROM ', '`', TABLE_SCHEMA_VAR, '`.`', TABLE_NAME_VAR, '`', ' AS REFERRING ', 
                 'LEFT JOIN `', REFERENCED_TABLE_SCHEMA_VAR, '`.`', REFERENCED_TABLE_NAME_VAR, '`', ' AS REFERRED ', 
                 'ON (REFERRING', '.`', COLUMN_NAME_VAR, '`', ' = ', 'REFERRED', '.`', REFERENCED_COLUMN_NAME_VAR, '`', ') ', 
                 'WHERE REFERRING', '.`', COLUMN_NAME_VAR, '`', ' IS NOT NULL ',
                 'AND REFERRED', '.`', REFERENCED_COLUMN_NAME_VAR, '`', ' IS NULL');
            SET @full_query = CONCAT('SELECT COUNT(*) ', @from_part, ' INTO @invalid_key_count;');
            PREPARE stmt FROM @full_query;

            EXECUTE stmt;
            IF @invalid_key_count > 0 THEN
                INSERT INTO 
                    INVALID_FOREIGN_KEYS 
                SET 
                    `TABLE_SCHEMA` = TABLE_SCHEMA_VAR, 
                    `TABLE_NAME` = TABLE_NAME_VAR, 
                    `COLUMN_NAME` = COLUMN_NAME_VAR, 
                    `CONSTRAINT_NAME` = CONSTRAINT_NAME_VAR, 
                    `REFERENCED_TABLE_SCHEMA` = REFERENCED_TABLE_SCHEMA_VAR, 
                    `REFERENCED_TABLE_NAME` = REFERENCED_TABLE_NAME_VAR, 
                    `REFERENCED_COLUMN_NAME` = REFERENCED_COLUMN_NAME_VAR, 
                    `INVALID_KEY_COUNT` = @invalid_key_count,
                    `INVALID_KEY_SQL` = CONCAT('SELECT ', 
                        'REFERRING.', '`', COLUMN_NAME_VAR, '` ', 'AS "Invalid: ', COLUMN_NAME_VAR, '", ', 
                        'REFERRING.* ', 
                        @from_part, ';');
            END IF;
            DEALLOCATE PREPARE stmt; 

        END LOOP foreign_key_cursor_loop;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cv_associatedfeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedfeature` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `associatedfeature` on((`baseobject`.`id` = `associatedfeature`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedlocation`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedlocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedlocation` AS select `baseobject`.`id` AS `id`,`entitylocation`.`entityLocationUsage` AS `entityLocationUsage`,`associatedlocation`.`associatedLocationType` AS `associatedLocationType`,`associatedlocation`.`applicationDirection` AS `applicationDirection`,`associatedlocation`.`lateralSide` AS `lateralSide`,`associatedlocation`.`lateralDistance` AS `lateralDistance`,`associatedlocation`.`verticalSide` AS `verticalSide`,`associatedlocation`.`verticalDistance` AS `verticalDistance` from ((`baseobject` join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) join `associatedlocation` on((`baseobject`.`id` = `associatedlocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedlocationfeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedlocationfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedlocationfeature` AS select `associatedlocationfeature`.`id_AssociatedFeature` AS `id_AssociatedFeature`,`associatedlocationfeature`.`id_AssociatedLocation` AS `id_AssociatedLocation`,`associatedlocationfeature`.`sequence` AS `sequence`,`associatedlocationfeature`.`keepsOrientation` AS `keepsOrientation` from `associatedlocationfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedposition`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedposition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedposition` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`associatedposition`.`id_PositioningNetElement` AS `id_PositioningNetElement`,`associatedposition`.`intrinsicReference` AS `intrinsicReference`,`associatedposition`.`deltaPosition` AS `deltaPosition` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `associatedfeature` on((`baseobject`.`id` = `associatedfeature`.`id`))) join `associatedposition` on((`baseobject`.`id` = `associatedposition`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedpositioningsystem`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedpositioningsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedpositioningsystem` AS select `baseobject`.`id` AS `id`,`associatedpositioningsystem`.`id_PositioningNetElement` AS `id_PositioningNetElement`,`associatedpositioningsystem`.`id_PositioningSystem` AS `id_PositioningSystem` from (`baseobject` join `associatedpositioningsystem` on((`baseobject`.`id` = `associatedpositioningsystem`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedsection`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedsection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedsection` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`associatedsection`.`id_AssociatedPosition_A` AS `id_AssociatedPosition_A`,`associatedsection`.`id_AssociatedPosition_B` AS `id_AssociatedPosition_B` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `associatedfeature` on((`baseobject`.`id` = `associatedfeature`.`id`))) join `associatedsection` on((`baseobject`.`id` = `associatedsection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedsignaltype`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedsignaltype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedsignaltype` AS select `baseobject`.`id` AS `id`,`associatedsignaltype`.`id_SignalType` AS `id_SignalType` from (((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signalcomponenttype` on((`baseobject`.`id` = `signalcomponenttype`.`id`))) join `associatedsignaltype` on((`baseobject`.`id` = `associatedsignaltype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_balise`
--

/*!50001 DROP VIEW IF EXISTS `cv_balise`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_balise` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`balise`.`baliseType` AS `baliseType`,`balise`.`defaultTelegram` AS `defaultTelegram`,`balise`.`id_BaliseGroup` AS `id_BaliseGroup`,`balise`.`positionInGroup` AS `positionInGroup`,`balise`.`duplicate` AS `duplicate` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) join `balise` on((`baseobject`.`id` = `balise`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_balisegroup`
--

/*!50001 DROP VIEW IF EXISTS `cv_balisegroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_balisegroup` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`balisegroup`.`applicationType` AS `applicationType`,`balisegroup`.`mileageDirection` AS `mileageDirection`,`balisegroup`.`coverage` AS `coverage`,`balisegroup`.`numberOfBalisesInGroup` AS `numberOfBalisesInGroup` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) join `balisegroup` on((`baseobject`.`id` = `balisegroup`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_baseobject`
--

/*!50001 DROP VIEW IF EXISTS `cv_baseobject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_baseobject` AS select `baseobject`.`id` AS `id` from `baseobject` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_circulararchc`
--

/*!50001 DROP VIEW IF EXISTS `cv_circulararchc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_circulararchc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`horizontalcurve`.`azimuth0` AS `azimuth0`,`horizontalcurve`.`deltaAzimuth` AS `deltaAzimuth`,`circulararchc`.`radius` AS `radius` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `horizontalcurve` on((`baseobject`.`id` = `horizontalcurve`.`id`))) join `circulararchc` on((`baseobject`.`id` = `circulararchc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_clothoidhc`
--

/*!50001 DROP VIEW IF EXISTS `cv_clothoidhc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_clothoidhc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`horizontalcurve`.`azimuth0` AS `azimuth0`,`horizontalcurve`.`deltaAzimuth` AS `deltaAzimuth`,`clothoidhc`.`radius0` AS `radius0`,`clothoidhc`.`radius1` AS `radius1` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `horizontalcurve` on((`baseobject`.`id` = `horizontalcurve`.`id`))) join `clothoidhc` on((`baseobject`.`id` = `clothoidhc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_compositionnetelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_compositionnetelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_compositionnetelement` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netelement` on((`baseobject`.`id` = `netelement`.`id`))) join `compositionnetelement` on((`baseobject`.`id` = `compositionnetelement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_constantsuperelevation`
--

/*!50001 DROP VIEW IF EXISTS `cv_constantsuperelevation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_constantsuperelevation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superelevation`.`anchoredAxisReference` AS `anchoredAxisReference`,`constantsuperelevation`.`superelevation` AS `superelevation` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `superelevation` on((`baseobject`.`id` = `superelevation`.`id`))) join `constantsuperelevation` on((`baseobject`.`id` = `constantsuperelevation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_controlentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_controlentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_controlentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `controlentity` on((`baseobject`.`id` = `controlentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_crossing`
--

/*!50001 DROP VIEW IF EXISTS `cv_crossing`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_crossing` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superstructurecomponent`.`id_OperationalArea` AS `id_OperationalArea`,`superstructurecomponent`.`operationalDesignator` AS `operationalDesignator` from (((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `superstructurecomponent` on((`baseobject`.`id` = `superstructurecomponent`.`id`))) join `crossing` on((`baseobject`.`id` = `crossing`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_cubicparabolahc`
--

/*!50001 DROP VIEW IF EXISTS `cv_cubicparabolahc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_cubicparabolahc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`horizontalcurve`.`azimuth0` AS `azimuth0`,`horizontalcurve`.`deltaAzimuth` AS `deltaAzimuth`,`cubicparabolahc`.`radius0` AS `radius0`,`cubicparabolahc`.`radius1` AS `radius1` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `horizontalcurve` on((`baseobject`.`id` = `horizontalcurve`.`id`))) join `cubicparabolahc` on((`baseobject`.`id` = `cubicparabolahc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_derivednetentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_derivednetentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_derivednetentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`derivednetentity`.`id_NetEntity_Template` AS `id_NetEntity_Template`,`derivednetentity`.`derivationRule` AS `derivationRule` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `derivednetentity` on((`baseobject`.`id` = `derivednetentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_electrificationarea`
--

/*!50001 DROP VIEW IF EXISTS `cv_electrificationarea`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_electrificationarea` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`electrificationarea`.`id_PowerSource` AS `id_PowerSource`,`electrificationarea`.`contactLineType` AS `contactLineType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `electrificationentity` on((`baseobject`.`id` = `electrificationentity`.`id`))) join `electrificationarea` on((`baseobject`.`id` = `electrificationarea`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_electrificationentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_electrificationentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_electrificationentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `electrificationentity` on((`baseobject`.`id` = `electrificationentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_elementpartcollection`
--

/*!50001 DROP VIEW IF EXISTS `cv_elementpartcollection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_elementpartcollection` AS select `baseobject`.`id` AS `id`,`elementpartcollection`.`id_CompositionNetElement` AS `id_CompositionNetElement` from (`baseobject` join `elementpartcollection` on((`baseobject`.`id` = `elementpartcollection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_entitylocation`
--

/*!50001 DROP VIEW IF EXISTS `cv_entitylocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_entitylocation` AS select `baseobject`.`id` AS `id`,`entitylocation`.`entityLocationUsage` AS `entityLocationUsage` from (`baseobject` join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_entitylocationassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_entitylocationassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_entitylocationassignment` AS select `entitylocationassignment`.`id_EntityLocation` AS `id_EntityLocation`,`entitylocationassignment`.`id_LocatedNetEntity` AS `id_LocatedNetEntity` from `entitylocationassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_entitytype`
--

/*!50001 DROP VIEW IF EXISTS `cv_entitytype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_entitytype` AS select `baseobject`.`id` AS `id` from ((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_generaltype`
--

/*!50001 DROP VIEW IF EXISTS `cv_generaltype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_generaltype` AS select `baseobject`.`id` AS `id` from (`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geofeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_geofeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geofeature` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `geofeature` on((`baseobject`.`id` = `geofeature`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geofeatureassociatedfeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_geofeatureassociatedfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geofeatureassociatedfeature` AS select `geofeatureassociatedfeature`.`id_AssociatedFeature` AS `id_AssociatedFeature`,`geofeatureassociatedfeature`.`id_GeoFeature` AS `id_GeoFeature` from `geofeatureassociatedfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geolocation`
--

/*!50001 DROP VIEW IF EXISTS `cv_geolocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geolocation` AS select `baseobject`.`id` AS `id`,`entitylocation`.`entityLocationUsage` AS `entityLocationUsage`,`geolocation`.`geoLocationType` AS `geoLocationType` from ((`baseobject` join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) join `geolocation` on((`baseobject`.`id` = `geolocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geolocationfeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_geolocationfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geolocationfeature` AS select `geolocationfeature`.`id_GeoFeature` AS `id_GeoFeature`,`geolocationfeature`.`id_GeoLocation` AS `id_GeoLocation`,`geolocationfeature`.`sequence` AS `sequence`,`geolocationfeature`.`keepsOrientation` AS `keepsOrientation` from `geolocationfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geolocationorientation`
--

/*!50001 DROP VIEW IF EXISTS `cv_geolocationorientation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geolocationorientation` AS select `geolocationorientation`.`id_GeoLocation` AS `id_GeoLocation`,`geolocationorientation`.`id_PositioningSystem` AS `id_PositioningSystem`,`geolocationorientation`.`azimuthAngle` AS `azimuthAngle`,`geolocationorientation`.`elevationAngle` AS `elevationAngle` from `geolocationorientation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geometryentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_geometryentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geometryentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopoint`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopoint` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `geofeature` on((`baseobject`.`id` = `geofeature`.`id`))) join `geopoint` on((`baseobject`.`id` = `geopoint`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopointgeocoordinate`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopointgeocoordinate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopointgeocoordinate` AS select `geopointgeocoordinate`.`id_GeoPoint` AS `id_GeoPoint`,`geopointgeocoordinate`.`id_GeoPositioningSystem` AS `id_GeoPositioningSystem`,`geopointgeocoordinate`.`sequence` AS `sequence`,`geopointgeocoordinate`.`x` AS `x`,`geopointgeocoordinate`.`y` AS `y`,`geopointgeocoordinate`.`z` AS `z` from `geopointgeocoordinate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopointlinearcoordinate`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopointlinearcoordinate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopointlinearcoordinate` AS select `geopointlinearcoordinate`.`id_GeoPoint` AS `id_GeoPoint`,`geopointlinearcoordinate`.`id_LinearPositioningSystem` AS `id_LinearPositioningSystem`,`geopointlinearcoordinate`.`sequence` AS `sequence`,`geopointlinearcoordinate`.`measure` AS `measure`,`geopointlinearcoordinate`.`lateralOffset` AS `lateralOffset`,`geopointlinearcoordinate`.`verticalOffset` AS `verticalOffset` from `geopointlinearcoordinate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopolygonalchain`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopolygonalchain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopolygonalchain` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) join `geofeature` on((`baseobject`.`id` = `geofeature`.`id`))) join `geopolygonalchain` on((`baseobject`.`id` = `geopolygonalchain`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopolygonalchaingeopoint`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopolygonalchaingeopoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopolygonalchaingeopoint` AS select `geopolygonalchaingeopoint`.`id_GeoPolygonalChain` AS `id_GeoPolygonalChain`,`geopolygonalchaingeopoint`.`id_GeoPoint` AS `id_GeoPoint`,`geopolygonalchaingeopoint`.`sequence` AS `sequence` from `geopolygonalchaingeopoint` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geopositioningsystem`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopositioningsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopositioningsystem` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`geopositioningsystem`.`crsDefinition` AS `crsDefinition` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `positioningsystem` on((`baseobject`.`id` = `positioningsystem`.`id`))) join `geopositioningsystem` on((`baseobject`.`id` = `geopositioningsystem`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_horizontalcurve`
--

/*!50001 DROP VIEW IF EXISTS `cv_horizontalcurve`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_horizontalcurve` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`horizontalcurve`.`azimuth0` AS `azimuth0`,`horizontalcurve`.`deltaAzimuth` AS `deltaAzimuth` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `horizontalcurve` on((`baseobject`.`id` = `horizontalcurve`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_impedancetransformer`
--

/*!50001 DROP VIEW IF EXISTS `cv_impedancetransformer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_impedancetransformer` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`impedancetransformer`.`impedanceTransformerType` AS `impedanceTransformerType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `traindetectionentity` on((`baseobject`.`id` = `traindetectionentity`.`id`))) join `impedancetransformer` on((`baseobject`.`id` = `impedancetransformer`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_indicatortype`
--

/*!50001 DROP VIEW IF EXISTS `cv_indicatortype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_indicatortype` AS select `baseobject`.`id` AS `id`,`indicatortype`.`indicatorMeaning` AS `indicatorMeaning` from (((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signalcomponenttype` on((`baseobject`.`id` = `signalcomponenttype`.`id`))) join `indicatortype` on((`baseobject`.`id` = `indicatortype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_insulatedrailjoint`
--

/*!50001 DROP VIEW IF EXISTS `cv_insulatedrailjoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_insulatedrailjoint` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`insulatedrailjoint`.`id_TrackCircuit_A` AS `id_TrackCircuit_A`,`insulatedrailjoint`.`id_TrackCircuit_B` AS `id_TrackCircuit_B`,`insulatedrailjoint`.`id_ImpedanceTransformer` AS `id_ImpedanceTransformer` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `traindetectionentity` on((`baseobject`.`id` = `traindetectionentity`.`id`))) join `insulatedrailjoint` on((`baseobject`.`id` = `insulatedrailjoint`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_labeltype`
--

/*!50001 DROP VIEW IF EXISTS `cv_labeltype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_labeltype` AS select `baseobject`.`id` AS `id`,`labeltype`.`labelMeaning` AS `labelMeaning`,`labeltype`.`units` AS `units` from (((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signalcomponenttype` on((`baseobject`.`id` = `signalcomponenttype`.`id`))) join `labeltype` on((`baseobject`.`id` = `labeltype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_levelnetwork`
--

/*!50001 DROP VIEW IF EXISTS `cv_levelnetwork`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_levelnetwork` AS select `baseobject`.`id` AS `id`,`levelnetwork`.`descriptionLevel` AS `descriptionLevel`,`levelnetwork`.`representation` AS `representation` from (`baseobject` join `levelnetwork` on((`baseobject`.`id` = `levelnetwork`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_levelresourceassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_levelresourceassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_levelresourceassignment` AS select `levelresourceassignment`.`id_NetworkResource` AS `id_NetworkResource`,`levelresourceassignment`.`id_LevelNetwork` AS `id_LevelNetwork` from `levelresourceassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_lighttype`
--

/*!50001 DROP VIEW IF EXISTS `cv_lighttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_lighttype` AS select `baseobject`.`id` AS `id`,`lighttype`.`lightColour` AS `lightColour` from (((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signalcomponenttype` on((`baseobject`.`id` = `signalcomponenttype`.`id`))) join `lighttype` on((`baseobject`.`id` = `lighttype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_linearanchorpoint`
--

/*!50001 DROP VIEW IF EXISTS `cv_linearanchorpoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_linearanchorpoint` AS select `baseobject`.`id` AS `id`,`linearanchorpoint`.`id_LinearPositioningSystem` AS `id_LinearPositioningSystem`,`linearanchorpoint`.`anchorName` AS `anchorName`,`linearanchorpoint`.`measure` AS `measure`,`linearanchorpoint`.`id_LinearAnchorPoint_Next` AS `id_LinearAnchorPoint_Next`,`linearanchorpoint`.`measureToNext` AS `measureToNext` from (`baseobject` join `linearanchorpoint` on((`baseobject`.`id` = `linearanchorpoint`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_linearelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_linearelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_linearelement` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`linearelement`.`length` AS `length` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netelement` on((`baseobject`.`id` = `netelement`.`id`))) join `compositionnetelement` on((`baseobject`.`id` = `compositionnetelement`.`id`))) join `positioningnetelement` on((`baseobject`.`id` = `positioningnetelement`.`id`))) join `linearelement` on((`baseobject`.`id` = `linearelement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_linearpositioningsystem`
--

/*!50001 DROP VIEW IF EXISTS `cv_linearpositioningsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_linearpositioningsystem` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`linearpositioningsystem`.`linearReferencingMethod` AS `linearReferencingMethod`,`linearpositioningsystem`.`startMeasure` AS `startMeasure`,`linearpositioningsystem`.`endMeasure` AS `endMeasure`,`linearpositioningsystem`.`units` AS `units` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `positioningsystem` on((`baseobject`.`id` = `positioningsystem`.`id`))) join `linearpositioningsystem` on((`baseobject`.`id` = `linearpositioningsystem`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_linearsuperelevationramp`
--

/*!50001 DROP VIEW IF EXISTS `cv_linearsuperelevationramp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_linearsuperelevationramp` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superelevation`.`anchoredAxisReference` AS `anchoredAxisReference`,`constantsuperelevation`.`superelevation` AS `superelevation` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `superelevation` on((`baseobject`.`id` = `superelevation`.`id`))) join `constantsuperelevation` on((`baseobject`.`id` = `constantsuperelevation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_localizationfeature`
--

/*!50001 DROP VIEW IF EXISTS `cv_localizationfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_localizationfeature` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `localizationfeature` on((`baseobject`.`id` = `localizationfeature`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_locatednetentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_locatednetentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_locatednetentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`locatednetentity`.`id_EntityLocation_Primary` AS `id_EntityLocation_Primary` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `locatednetentity` on((`baseobject`.`id` = `locatednetentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_modularentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_modularentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_modularentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_modularentitytype`
--

/*!50001 DROP VIEW IF EXISTS `cv_modularentitytype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_modularentitytype` AS select `baseobject`.`id` AS `id` from (((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_namedresource`
--

/*!50001 DROP VIEW IF EXISTS `cv_namedresource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_namedresource` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_netelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_netelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_netelement` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netelement` on((`baseobject`.`id` = `netelement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_netentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_netentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_netentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_network`
--

/*!50001 DROP VIEW IF EXISTS `cv_network`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_network` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `network` on((`baseobject`.`id` = `network`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_networklevelassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_networklevelassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_networklevelassignment` AS select `networklevelassignment`.`id_LevelNetwork` AS `id_LevelNetwork`,`networklevelassignment`.`id_Network` AS `id_Network` from `networklevelassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_networkresource`
--

/*!50001 DROP VIEW IF EXISTS `cv_networkresource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_networkresource` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_networkresourceassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_networkresourceassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_networkresourceassignment` AS select `networkresourceassignment`.`id_NetworkResource` AS `id_NetworkResource`,`networkresourceassignment`.`id_Network` AS `id_Network` from `networkresourceassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_nonlinearelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_nonlinearelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_nonlinearelement` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netelement` on((`baseobject`.`id` = `netelement`.`id`))) join `compositionnetelement` on((`baseobject`.`id` = `compositionnetelement`.`id`))) join `positioningnetelement` on((`baseobject`.`id` = `positioningnetelement`.`id`))) join `nonlinearelement` on((`baseobject`.`id` = `nonlinearelement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_objectprojection`
--

/*!50001 DROP VIEW IF EXISTS `cv_objectprojection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_objectprojection` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`objectprojection`.`id_BaseObject` AS `id_BaseObject`,`objectprojection`.`id_Visualization` AS `id_Visualization`,`objectprojection`.`id_ObjectProjectionSymbol` AS `id_ObjectProjectionSymbol` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `visualizationbaseobject` on((`baseobject`.`id` = `visualizationbaseobject`.`id`))) join `objectprojection` on((`baseobject`.`id` = `objectprojection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_objectprojectioncoordinate`
--

/*!50001 DROP VIEW IF EXISTS `cv_objectprojectioncoordinate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_objectprojectioncoordinate` AS select `objectprojectioncoordinate`.`id_ObjectProjection` AS `id_ObjectProjection`,`objectprojectioncoordinate`.`id_ScreenPositioningSystem` AS `id_ScreenPositioningSystem`,`objectprojectioncoordinate`.`sequence` AS `sequence`,`objectprojectioncoordinate`.`x` AS `x`,`objectprojectioncoordinate`.`y` AS `y`,`objectprojectioncoordinate`.`z` AS `z` from `objectprojectioncoordinate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_objectprojectionsymbol`
--

/*!50001 DROP VIEW IF EXISTS `cv_objectprojectionsymbol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_objectprojectionsymbol` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`objectprojectionsymbol`.`externalIconRef` AS `externalIconRef`,`objectprojectionsymbol`.`orientation` AS `orientation` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `visualizationbaseobject` on((`baseobject`.`id` = `visualizationbaseobject`.`id`))) join `objectprojectionsymbol` on((`baseobject`.`id` = `objectprojectionsymbol`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_operationalarea`
--

/*!50001 DROP VIEW IF EXISTS `cv_operationalarea`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_operationalarea` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`operationalarea`.`isStoppingPoint` AS `isStoppingPoint`,`operationalarea`.`isStation` AS `isStation`,`operationalarea`.`isDepot` AS `isDepot`,`operationalarea`.`isJunction` AS `isJunction`,`operationalarea`.`isInterstationSection` AS `isInterstationSection` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `operationalarea` on((`baseobject`.`id` = `operationalarea`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_operationalareasignalassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_operationalareasignalassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_operationalareasignalassignment` AS select `operationalareasignalassignment`.`id_Signal` AS `id_Signal`,`operationalareasignalassignment`.`id_OperationalArea` AS `id_OperationalArea`,`operationalareasignalassignment`.`operationalDesignator` AS `operationalDesignator`,`operationalareasignalassignment`.`operationalFunction` AS `operationalFunction` from `operationalareasignalassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_operationalentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_operationalentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_operationalentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_orderedcollection`
--

/*!50001 DROP VIEW IF EXISTS `cv_orderedcollection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_orderedcollection` AS select `baseobject`.`id` AS `id`,`elementpartcollection`.`id_CompositionNetElement` AS `id_CompositionNetElement` from ((`baseobject` join `elementpartcollection` on((`baseobject`.`id` = `elementpartcollection`.`id`))) join `orderedcollection` on((`baseobject`.`id` = `orderedcollection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_orderedcollectionelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_orderedcollectionelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_orderedcollectionelement` AS select `orderedcollectionelement`.`id_NetElement` AS `id_NetElement`,`orderedcollectionelement`.`id_OrderedCollection` AS `id_OrderedCollection`,`orderedcollectionelement`.`sequence` AS `sequence` from `orderedcollectionelement` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_parabolavc`
--

/*!50001 DROP VIEW IF EXISTS `cv_parabolavc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_parabolavc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`verticalcurve`.`horizontalLength` AS `horizontalLength`,`verticalcurve`.`elevation0` AS `elevation0`,`verticalcurve`.`deltaElevation` AS `deltaElevation`,`parabolavc`.`parabolaVertexRadius` AS `parabolaVertexRadius` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `verticalcurve` on((`baseobject`.`id` = `verticalcurve`.`id`))) join `parabolavc` on((`baseobject`.`id` = `parabolavc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_platform`
--

/*!50001 DROP VIEW IF EXISTS `cv_platform`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_platform` AS select `baseobject`.`id` AS `id`,`superstructurecomponent`.`id_OperationalArea` AS `id_OperationalArea`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superstructurecomponent`.`operationalDesignator` AS `operationalDesignator`,`platform`.`width` AS `width`,`platform`.`platformType` AS `platformType` from (((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `superstructurecomponent` on((`baseobject`.`id` = `superstructurecomponent`.`id`))) join `platform` on(((`baseobject`.`id` = `platform`.`id`) and (`superstructurecomponent`.`id_OperationalArea` = `platform`.`id_OperationalArea`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_platformedge`
--

/*!50001 DROP VIEW IF EXISTS `cv_platformedge`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_platformedge` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`platformedge`.`id_Platform` AS `id_Platform`,`platformedge`.`maximumTrainLength` AS `maximumTrainLength` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `platformedge` on((`baseobject`.`id` = `platformedge`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_platformstoppingplace`
--

/*!50001 DROP VIEW IF EXISTS `cv_platformstoppingplace`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_platformstoppingplace` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`stoppingplace`.`trainRelation` AS `trainRelation`,`stoppingplace`.`wagonCount` AS `wagonCount`,`platformstoppingplace`.`id_PlatformEdge` AS `id_PlatformEdge` from (((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `stoppingplace` on((`baseobject`.`id` = `stoppingplace`.`id`))) join `platformstoppingplace` on((`baseobject`.`id` = `platformstoppingplace`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_positionedrelation`
--

/*!50001 DROP VIEW IF EXISTS `cv_positionedrelation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_positionedrelation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`positionedrelation`.`id_PositioningNetElement_A` AS `id_PositioningNetElement_A`,`positionedrelation`.`id_PositioningNetElement_B` AS `id_PositioningNetElement_B`,`positionedrelation`.`positionOnA` AS `positionOnA`,`positionedrelation`.`positionOnB` AS `positionOnB`,`positionedrelation`.`navigability` AS `navigability` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `relation` on((`baseobject`.`id` = `relation`.`id`))) join `positionedrelation` on((`baseobject`.`id` = `positionedrelation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_positioningnetelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_positioningnetelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_positioningnetelement` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netelement` on((`baseobject`.`id` = `netelement`.`id`))) join `compositionnetelement` on((`baseobject`.`id` = `compositionnetelement`.`id`))) join `positioningnetelement` on((`baseobject`.`id` = `positioningnetelement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_positioningsystem`
--

/*!50001 DROP VIEW IF EXISTS `cv_positioningsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_positioningsystem` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `positioningsystem` on((`baseobject`.`id` = `positioningsystem`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_powersource`
--

/*!50001 DROP VIEW IF EXISTS `cv_powersource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_powersource` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `electrificationentity` on((`baseobject`.`id` = `electrificationentity`.`id`))) join `powersource` on((`baseobject`.`id` = `powersource`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_railwayroute`
--

/*!50001 DROP VIEW IF EXISTS `cv_railwayroute`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_railwayroute` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`railwayroute`.`railwayRouteType` AS `railwayRouteType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `railwayroute` on((`baseobject`.`id` = `railwayroute`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_relation`
--

/*!50001 DROP VIEW IF EXISTS `cv_relation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_relation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `relation` on((`baseobject`.`id` = `relation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_routecomponentassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_routecomponentassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_routecomponentassignment` AS select `routecomponentassignment`.`id_SuperstructureComponent` AS `id_SuperstructureComponent`,`routecomponentassignment`.`id_RailwayRoute` AS `id_RailwayRoute`,`routecomponentassignment`.`routeRole` AS `routeRole`,`routecomponentassignment`.`assignmentType` AS `assignmentType` from `routecomponentassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_routecontrolentityassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_routecontrolentityassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_routecontrolentityassignment` AS select `routecontrolentityassignment`.`id_ControlEntity` AS `id_ControlEntity`,`routecontrolentityassignment`.`id_RailwayRoute` AS `id_RailwayRoute`,`routecontrolentityassignment`.`requiredState` AS `requiredState` from `routecontrolentityassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_routecurveassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_routecurveassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_routecurveassignment` AS select `routecomponentassignment`.`id_SuperstructureComponent` AS `id_SuperstructureComponent`,`routecomponentassignment`.`id_RailwayRoute` AS `id_RailwayRoute`,`routecomponentassignment`.`routeRole` AS `routeRole`,`routecomponentassignment`.`assignmentType` AS `assignmentType` from `routecomponentassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_screenpositioningsystem`
--

/*!50001 DROP VIEW IF EXISTS `cv_screenpositioningsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_screenpositioningsystem` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`screenpositioningsystem`.`pxX` AS `pxX`,`screenpositioningsystem`.`pxY` AS `pxY`,`screenpositioningsystem`.`pxZ` AS `pxZ` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `positioningsystem` on((`baseobject`.`id` = `positioningsystem`.`id`))) join `screenpositioningsystem` on((`baseobject`.`id` = `screenpositioningsystem`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_signalcomponenttype`
--

/*!50001 DROP VIEW IF EXISTS `cv_signalcomponenttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_signalcomponenttype` AS select `baseobject`.`id` AS `id` from ((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signalcomponenttype` on((`baseobject`.`id` = `signalcomponenttype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_signalcomponenttypeassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_signalcomponenttypeassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_signalcomponenttypeassignment` AS select `signalcomponenttypeassignment`.`id_SignalType` AS `id_SignalType`,`signalcomponenttypeassignment`.`id_SignalComponentType` AS `id_SignalComponentType`,`signalcomponenttypeassignment`.`verticalPosition` AS `verticalPosition`,`signalcomponenttypeassignment`.`horizontalPosition` AS `horizontalPosition` from `signalcomponenttypeassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_signallabeltypeassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_signallabeltypeassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_signallabeltypeassignment` AS select `signallabeltypeassignment`.`id_Signal` AS `id_Signal`,`signallabeltypeassignment`.`id_LabelType` AS `id_LabelType`,`signallabeltypeassignment`.`indicatedValue` AS `indicatedValue` from `signallabeltypeassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_signaltype`
--

/*!50001 DROP VIEW IF EXISTS `cv_signaltype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_signaltype` AS select `baseobject`.`id` AS `id`,`signaltype`.`signalCategory` AS `signalCategory`,`signaltype`.`signalConstructionType` AS `signalConstructionType`,`signaltype`.`defaultIndication` AS `defaultIndication` from ((((`baseobject` join `generaltype` on((`baseobject`.`id` = `generaltype`.`id`))) join `entitytype` on((`baseobject`.`id` = `entitytype`.`id`))) join `modularentitytype` on((`baseobject`.`id` = `modularentitytype`.`id`))) join `signaltype` on((`baseobject`.`id` = `signaltype`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_significantlooppoint`
--

/*!50001 DROP VIEW IF EXISTS `cv_significantlooppoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_significantlooppoint` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`significantlooppoint`.`id_TransmissionLoop` AS `id_TransmissionLoop`,`significantlooppoint`.`loopPointType` AS `loopPointType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) join `significantlooppoint` on((`baseobject`.`id` = `significantlooppoint`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_speedprofile`
--

/*!50001 DROP VIEW IF EXISTS `cv_speedprofile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_speedprofile` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`speedprofile`.`speedProfileType` AS `speedProfileType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `speedprofile` on((`baseobject`.`id` = `speedprofile`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_speedprofilesectionassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_speedprofilesectionassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_speedprofilesectionassignment` AS select `speedprofilesectionassignment`.`id_SpeedSection` AS `id_SpeedSection`,`speedprofilesectionassignment`.`id_SpeedProfile` AS `id_SpeedProfile` from `speedprofilesectionassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_speedsection`
--

/*!50001 DROP VIEW IF EXISTS `cv_speedsection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_speedsection` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`speedsection`.`maxSpeed` AS `maxSpeed` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `speedsection` on((`baseobject`.`id` = `speedsection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_speedsectionsignalassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_speedsectionsignalassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_speedsectionsignalassignment` AS select `speedsectionsignalassignment`.`id_Signal` AS `id_Signal`,`speedsectionsignalassignment`.`id_SpeedSection` AS `id_SpeedSection`,`speedsectionsignalassignment`.`signalRole` AS `signalRole`,`speedsectionsignalassignment`.`trainRelation` AS `trainRelation` from `speedsectionsignalassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_stoppingplace`
--

/*!50001 DROP VIEW IF EXISTS `cv_stoppingplace`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_stoppingplace` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`stoppingplace`.`trainRelation` AS `trainRelation`,`stoppingplace`.`wagonCount` AS `wagonCount` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `stoppingplace` on((`baseobject`.`id` = `stoppingplace`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_straighthc`
--

/*!50001 DROP VIEW IF EXISTS `cv_straighthc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_straighthc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`horizontalcurve`.`azimuth0` AS `azimuth0`,`horizontalcurve`.`deltaAzimuth` AS `deltaAzimuth`,`straighthc`.`horizontalLength` AS `horizontalLength` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `horizontalcurve` on((`baseobject`.`id` = `horizontalcurve`.`id`))) join `straighthc` on((`baseobject`.`id` = `straighthc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_straightvc`
--

/*!50001 DROP VIEW IF EXISTS `cv_straightvc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_straightvc` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`verticalcurve`.`horizontalLength` AS `horizontalLength`,`verticalcurve`.`elevation0` AS `elevation0`,`verticalcurve`.`deltaElevation` AS `deltaElevation` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `verticalcurve` on((`baseobject`.`id` = `verticalcurve`.`id`))) join `straightvc` on((`baseobject`.`id` = `straightvc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_structuralentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_structuralentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_structuralentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_superelevation`
--

/*!50001 DROP VIEW IF EXISTS `cv_superelevation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_superelevation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superelevation`.`anchoredAxisReference` AS `anchoredAxisReference` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `superelevation` on((`baseobject`.`id` = `superelevation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_superstructurecomponent`
--

/*!50001 DROP VIEW IF EXISTS `cv_superstructurecomponent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_superstructurecomponent` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superstructurecomponent`.`id_OperationalArea` AS `id_OperationalArea`,`superstructurecomponent`.`operationalDesignator` AS `operationalDesignator` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `superstructurecomponent` on((`baseobject`.`id` = `superstructurecomponent`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_switchmachine`
--

/*!50001 DROP VIEW IF EXISTS `cv_switchmachine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_switchmachine` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`switchmachine`.`id_Turnout` AS `id_Turnout`,`switchmachine`.`switchMachineRole` AS `switchMachineRole`,`switchmachine`.`defaultState` AS `defaultState`,`switchmachine`.`id_TracksideSignal` AS `id_TracksideSignal` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `controlentity` on((`baseobject`.`id` = `controlentity`.`id`))) join `switchmachine` on((`baseobject`.`id` = `switchmachine`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_switchmachinerelationassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_switchmachinerelationassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_switchmachinerelationassignment` AS select `switchmachinerelationassignment`.`id_SwitchMachine` AS `id_SwitchMachine`,`switchmachinerelationassignment`.`id_PossitionedRelation` AS `id_PossitionedRelation`,`switchmachinerelationassignment`.`validForState` AS `validForState` from `switchmachinerelationassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_symbolcoordinate`
--

/*!50001 DROP VIEW IF EXISTS `cv_symbolcoordinate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_symbolcoordinate` AS select `symbolcoordinate`.`id_ObjectProjectionSymbol` AS `id_ObjectProjectionSymbol`,`symbolcoordinate`.`id_ScreenPositioningSystem` AS `id_ScreenPositioningSystem`,`symbolcoordinate`.`x` AS `x`,`symbolcoordinate`.`y` AS `y`,`symbolcoordinate`.`z` AS `z` from `symbolcoordinate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_track`
--

/*!50001 DROP VIEW IF EXISTS `cv_track`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_track` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superstructurecomponent`.`id_OperationalArea` AS `id_OperationalArea`,`superstructurecomponent`.`operationalDesignator` AS `operationalDesignator` from (((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `superstructurecomponent` on((`baseobject`.`id` = `superstructurecomponent`.`id`))) join `track` on((`baseobject`.`id` = `track`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_trackbed`
--

/*!50001 DROP VIEW IF EXISTS `cv_trackbed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_trackbed` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`trackbed`.`trackBedType` AS `trackBedType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `trackbed` on((`baseobject`.`id` = `trackbed`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_trackcircuit`
--

/*!50001 DROP VIEW IF EXISTS `cv_trackcircuit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_trackcircuit` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`trackcircuit`.`id_OperationalArea` AS `id_OperationalArea` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `traindetectionentity` on((`baseobject`.`id` = `traindetectionentity`.`id`))) join `trackcircuit` on((`baseobject`.`id` = `trackcircuit`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_trackcircuitloopassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_trackcircuitloopassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_trackcircuitloopassignment` AS select `trackcircuitloopassignment`.`id_TransmissionLoop` AS `id_TransmissionLoop`,`trackcircuitloopassignment`.`id_TrackCircuit` AS `id_TrackCircuit` from `trackcircuitloopassignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_tracksidesignal`
--

/*!50001 DROP VIEW IF EXISTS `cv_tracksidesignal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_tracksidesignal` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`tracksidesignal`.`id_SignalType` AS `id_SignalType`,`tracksidesignal`.`referencePointHeight` AS `referencePointHeight` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `controlentity` on((`baseobject`.`id` = `controlentity`.`id`))) join `tracksidesignal` on((`baseobject`.`id` = `tracksidesignal`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_traindetectionentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_traindetectionentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_traindetectionentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `traindetectionentity` on((`baseobject`.`id` = `traindetectionentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_trainprotectionentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_trainprotectionentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_trainprotectionentity` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_transmissionloop`
--

/*!50001 DROP VIEW IF EXISTS `cv_transmissionloop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_transmissionloop` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`transmissionloop`.`id_TransmitterBox` AS `id_TransmitterBox` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) join `transmissionloop` on((`baseobject`.`id` = `transmissionloop`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_transmitterbox`
--

/*!50001 DROP VIEW IF EXISTS `cv_transmitterbox`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_transmitterbox` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`transmitterbox`.`protectionSystem` AS `protectionSystem` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `trainprotectionentity` on((`baseobject`.`id` = `trainprotectionentity`.`id`))) join `transmitterbox` on((`baseobject`.`id` = `transmitterbox`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_tunnel`
--

/*!50001 DROP VIEW IF EXISTS `cv_tunnel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_tunnel` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`tunnel`.`numberOfTracks` AS `numberOfTracks`,`tunnel`.`liningMaterial` AS `liningMaterial`,`tunnel`.`crossSectionShape` AS `crossSectionShape`,`tunnel`.`horizontalCrossSectionDimension` AS `horizontalCrossSectionDimension`,`tunnel`.`height` AS `height` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `tunnel` on((`baseobject`.`id` = `tunnel`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_turnout`
--

/*!50001 DROP VIEW IF EXISTS `cv_turnout`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_turnout` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`superstructurecomponent`.`id_OperationalArea` AS `id_OperationalArea`,`superstructurecomponent`.`operationalDesignator` AS `operationalDesignator`,`turnout`.`turnoutType` AS `turnoutType`,`turnout`.`technicalDesignator` AS `technicalDesignator` from (((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `structuralentity` on((`baseobject`.`id` = `structuralentity`.`id`))) join `superstructurecomponent` on((`baseobject`.`id` = `superstructurecomponent`.`id`))) join `turnout` on((`baseobject`.`id` = `turnout`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_unorderedcollection`
--

/*!50001 DROP VIEW IF EXISTS `cv_unorderedcollection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_unorderedcollection` AS select `baseobject`.`id` AS `id`,`elementpartcollection`.`id_CompositionNetElement` AS `id_CompositionNetElement` from ((`baseobject` join `elementpartcollection` on((`baseobject`.`id` = `elementpartcollection`.`id`))) join `unorderedcollection` on((`baseobject`.`id` = `unorderedcollection`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_unorderedcollectionelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_unorderedcollectionelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_unorderedcollectionelement` AS select `unorderedcollectionelement`.`id_NetElement` AS `id_NetElement`,`unorderedcollectionelement`.`id_UnorderedCollection` AS `id_UnorderedCollection` from `unorderedcollectionelement` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_verticalcurve`
--

/*!50001 DROP VIEW IF EXISTS `cv_verticalcurve`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_verticalcurve` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`verticalcurve`.`horizontalLength` AS `horizontalLength`,`verticalcurve`.`elevation0` AS `elevation0`,`verticalcurve`.`deltaElevation` AS `deltaElevation` from (((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `geometryentity` on((`baseobject`.`id` = `geometryentity`.`id`))) join `verticalcurve` on((`baseobject`.`id` = `verticalcurve`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_visualization`
--

/*!50001 DROP VIEW IF EXISTS `cv_visualization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_visualization` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `visualizationbaseobject` on((`baseobject`.`id` = `visualizationbaseobject`.`id`))) join `visualization` on((`baseobject`.`id` = `visualization`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_visualizationbaseobject`
--

/*!50001 DROP VIEW IF EXISTS `cv_visualizationbaseobject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_visualizationbaseobject` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname` from ((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `visualizationbaseobject` on((`baseobject`.`id` = `visualizationbaseobject`.`id`))) */;
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

-- Dump completed on 2021-11-23 14:50:16
