CREATE DATABASE  IF NOT EXISTS `infradb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `infradb`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: infradb
-- ------------------------------------------------------
-- Server version	8.0.32

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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LLocFt×LAssFt` FOREIGN KEY (`id`) REFERENCES `localizationfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedfeature`
--

LOCK TABLES `associatedfeature` WRITE;
/*!40000 ALTER TABLE `associatedfeature` DISABLE KEYS */;
INSERT INTO `associatedfeature` VALUES ('01a9c127-6e7d-48f7-bc10-09ee80a2dcd6'),('02999a8c-af0f-4248-af0f-eef490cd7e31'),('0454ad4e-62dd-4d83-9ca9-221425631ba3'),('04838aab-69d4-4692-94d3-8b4f983a724c'),('05306e38-c960-47ca-9086-00f839c7fa60'),('057b3705-5231-4cab-b9b9-17aa1bf89241'),('06e1aa7f-78b4-468e-9296-0a59f1a1c87b'),('07a60544-71bb-429c-9abc-40a924e1e99a'),('07dff07d-6d34-492a-9ea1-aafe5b5211f4'),('09c172cb-7163-4a38-8644-2af203bd0ce3'),('0b0e998f-5e3d-4e98-aff5-9b3594801b79'),('0b5f44d6-5b27-434f-98c4-1714f43029e4'),('0bad7d72-6beb-4b0f-b54b-49122febc1c8'),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614'),('0ef72324-b415-4fe0-92df-7a1161b2c7c2'),('0faf9536-e80c-41da-97d6-0c86a231eae8'),('10904523-b07c-4652-9101-026c66f9f1f0'),('12303966-2516-4133-a476-019e4d6f4f0f'),('13882ddc-3ee7-4e29-8ec0-07333fde5e26'),('174036a8-0646-4a6d-a201-d02c9199c025'),('17878bf8-4a92-4420-aaff-02a80a6f2443'),('18cc266a-fd28-4f2c-8867-e2f6c58b957d'),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5'),('1917257c-1f1a-4880-be8a-8557c13a78af'),('1a1d1211-a95a-47ac-8a64-b9583aaec3db'),('1b701ddf-3aec-4b66-871e-2033ad6d3296'),('1b796be0-fdec-438d-a31a-752f7bec3dcf'),('1bc3b810-3633-4af5-9255-f606ec3c6c6a'),('1c64062a-3ff7-4b09-a503-23edad1d9d75'),('1c88f911-9386-4ca3-adff-9f0904bd8ab3'),('1d3c1dc1-22d3-4506-a640-634676fd350d'),('1e07f41d-1838-4312-8bee-8b53faa03478'),('1e6a5850-068c-42de-bce3-cb132b3464ca'),('2019841b-5c4a-436f-b962-b5ea3b07a300'),('2135642f-501f-4c17-9be0-e30f77b004f8'),('227b147c-9ca0-45fb-8127-37c0e76dd2fe'),('236f1fd0-3707-436d-9b2e-55d007289ec3'),('26d2a50f-7c07-476a-9237-ff664c89761f'),('276a2a9d-d81c-4ccb-9695-13e810edaf6e'),('29b27a99-e952-411f-b79d-62370cc50a34'),('2a70d8c9-9d63-4e4f-830a-ef9436677df1'),('2ac252cc-1a23-48be-8d6e-4b86a07e93ab'),('2b46747a-1982-40ea-8aa4-1047c16abf0c'),('2b783415-8e6d-43c9-83e2-81b7a0d82882'),('2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77'),('2fa6ed09-b298-419d-81f9-674200c80c84'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374'),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7'),('2ffb28ca-96f5-4459-ae92-79b326322198'),('300a5be5-5a15-4e94-a3a7-b95a97df0079'),('31de7e27-a7f4-418b-9cea-6b944a865607'),('31df2e28-a114-4e23-ae59-99f4b0b66f1e'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5'),('329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f'),('34e34729-eaa9-4a11-89d5-d526568c4de5'),('35705e47-f346-4c5e-b340-22f276d6adaa'),('3660f6eb-4ba5-463c-9133-c0fc6b28c300'),('39bb825c-0d68-4c44-b669-3ce7eab6f7cd'),('3bc42c44-6215-4305-aeed-640f7086c018'),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef'),('4258eb32-f565-4699-9af0-2589898ad991'),('4335eda7-7674-4541-aa8b-05dbf8fed356'),('44b12111-a06c-4204-8d73-55794b6f99c3'),('452e59d2-c784-44cd-abbf-d13d8e793bb3'),('46268b2b-146f-4873-9019-3ca4899ff14e'),('46d81d9a-df69-4929-9425-d58186b88f74'),('4a0cfe80-ab79-4e4c-b58e-610501e057b6'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db'),('4cc213cc-0574-4914-847e-85b32f056ac1'),('4d228e7c-b38d-43a1-8409-f854fcf6f4fb'),('4d4cd0b1-de2f-4e78-9602-61046c05b411'),('4de555a2-1809-4454-a63a-ef9ebb2c10d7'),('502f79a5-db67-4315-bbdf-37b467100783'),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc'),('51a216f2-f50f-4aa0-a579-311484a65253'),('51ab9fed-6e7c-4063-9744-8ae03edf5399'),('5289a274-9b12-4f64-8b33-5a564f60f66a'),('540e79c4-a0a9-47af-8186-a064378c4338'),('555ceaae-2ac9-4485-8eec-58081bdf8b89'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60'),('5624dd54-16ce-4175-ad65-7da103f964f6'),('59256249-29ed-4480-8caf-7e849c938987'),('5ad462db-8cb2-45ff-9329-183dcca47d22'),('5b0024c1-cdc8-48bc-b3ca-42dce781d302'),('5b525c9d-40d5-4291-93b1-a81128ed5464'),('5baa6010-3a05-4152-8eaa-082bfb523b59'),('5eaab8bb-d072-4760-8454-a9721316d2ab'),('602bb3ce-12a2-4288-bc2b-25130d4f677e'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f'),('60720144-4d50-4215-a779-d1234f6be5da'),('6323fba8-3e59-4d04-b666-dc9e54f915bd'),('63a59af7-cc0b-4708-838d-4ef36ca39ab3'),('65100f76-ecee-4c9f-876e-b36b1053d4f8'),('66400b90-fc89-4b24-9d02-9e189e7cd818'),('66768df2-d6e3-4ada-b0de-c95e3302d413'),('683d40f0-f025-4f42-8929-a31c82e460c4'),('6849be14-3caf-46e4-9a8d-c2faa01751ca'),('68f5763b-5a8b-4260-9446-54ca77be3ccc'),('69f83619-c907-4dc9-aaba-8d78d4bccc53'),('6a7fe213-9090-4d79-b810-9591f0e63f08'),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c'),('6b080122-3982-49d5-b741-bdacf5418861'),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0'),('6be06976-a899-4cb8-a743-1410095d607c'),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0'),('6e86f033-d9b5-4afc-91e6-60fb4167d587'),('711cc632-431e-4274-8410-ef4b6a794b6c'),('71600112-3966-4a9a-852e-b2f02aebc7db'),('73cc4a98-e747-4b2d-80ec-f250208a5e2e'),('743af29b-6935-4660-a6cb-5f3c25066961'),('744847d0-494b-4805-8628-07d25058237a'),('758cb070-5e99-4cbe-93b5-d10e122c9505'),('769dc71a-26e6-42d5-af92-7b1b6b187443'),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c'),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55'),('7975c16b-0243-42c3-a686-74469e0302e3'),('7989faf8-b33d-447b-a18e-ca4f70c29909'),('7b472dde-a145-4a5c-ac30-05191a01b693'),('7bd3f369-45ea-4bd5-a83c-0d74df0002cb'),('7e15063b-4f15-4845-911a-3aef4da09c1e'),('7fb51a90-c9a7-43e1-b51f-fab92cf9304e'),('83183263-5091-4103-82d1-56129605415a'),('837a119a-ad62-469d-96f6-a216fe5a2629'),('83962e21-18e3-4033-b060-cf9ec2047dc8'),('84b04a57-2047-428d-98e7-7a8d7deedaef'),('87ccd3fb-8235-45ab-86f2-9df058c8b942'),('88a25ad4-d98e-4686-93ef-f77367bfd320'),('89fee055-9c00-4c56-86e4-4cc138eccabc'),('8bb66c7b-65a4-42dd-9368-3ae036e9cb6c'),('8c95a69b-6fae-4954-bf87-d0063195f568'),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4'),('8d1251c3-998e-4112-b090-31a9f6a0174e'),('90fd6ef3-34c3-4941-af3d-401a544aee72'),('912e925b-edf3-4f36-8509-8d5ae4177750'),('9178b6af-7b8f-4127-a36d-a334e7aabfd9'),('91b1be25-3841-44cd-b31c-0c7ac5f77778'),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0'),('94dcacd1-b692-4220-b615-d8502b5482a4'),('950dcb66-d81f-47d8-a057-e01e36d4e9bb'),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7'),('95c78591-a626-4b1a-b1a3-bafb8a7b3d48'),('95cd2cf1-dcc5-48b1-b88f-66875cca638c'),('96e6f5ef-954a-4ada-8af2-be55214b84e9'),('9735ba6c-1663-49e3-a3da-e7bd85f45948'),('975460d1-4453-450f-bf6c-14727d8f9df3'),('976543b9-5aed-4800-b023-dd34856ea1d8'),('97c85f99-c081-4d1f-9d1d-48731a056fd6'),('97d85633-a337-4890-b396-c24d0e9cd705'),('993fd49f-ada9-44a9-8c8d-775605015284'),('9a67c071-1b66-4716-b1aa-f1a06fd7e057'),('9ea0fdd8-8f7c-4182-a7bb-999035956d26'),('a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5'),('a2af9a5c-24c7-49db-b134-f53d013fe244'),('a3be6484-6f78-436c-b82e-d6ed9c730cd8'),('a4fcc78c-7a5c-4829-868a-4636e194a11b'),('a6919436-9467-416c-a065-95d8e6aab4d3'),('a6d5c9bf-91c5-49a7-9140-081fd57543f2'),('a85b007e-f3a6-41d8-9f1e-990357683971'),('aab99697-56d1-40db-9588-b36739412118'),('ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28'),('acd25e23-c017-425b-8474-b8a948a5d2b3'),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a'),('ad8e224c-9472-4336-8c17-01afb6abac72'),('b58a4779-70c1-42a3-bc69-a0199cb673fe'),('b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05'),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0'),('b790cecc-4c2b-42bb-9256-ee80369c04d2'),('b7e84a87-f16f-4328-bb12-7bc289b26296'),('b831b034-cc95-4147-b665-1e6294bd8d60'),('ba3f9014-281e-4e0d-828e-e3020a96e551'),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70'),('ba9e650f-7ffe-426d-b658-9689e18196eb'),('bb0578b7-9d71-4681-b46c-ce934e5755aa'),('bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0'),('bddb0084-0ed2-4e64-aa02-a524c8ad303f'),('beac405a-a4bd-490d-9335-9638e001f937'),('c2304be5-282a-4a5a-9ec3-e1149284cd7a'),('c23a4cdd-854d-43e1-aa03-3a208dbca255'),('c2c301b5-8404-42b6-a687-5e1b4880dffc'),('c7acb121-5adc-40e7-9280-42b7d335df3b'),('c87e3e0c-01cc-4c2e-8eb4-ea64a0457540'),('c8b31340-41d9-4791-b28a-98fc1b0c6337'),('c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e'),('c92509fc-c7db-46ef-b784-b93a37d88c1c'),('ca3911af-3dfb-40c8-9dd4-78d8041ec767'),('cd34c226-8b87-45bf-8e76-f88f1b2052b9'),('cef21db7-8e06-4249-903d-414e105e393e'),('cfadce12-10c8-44aa-b8c8-33e8d42d4f0b'),('d0217043-d49e-4279-886c-ab5f133b266d'),('d06314e2-9492-4926-8578-77c3ad030340'),('d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14'),('d14d7867-359b-46d3-9f6b-be552cbd3eb8'),('d3ab2776-89d8-4851-b8d3-249b81d94841'),('d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab'),('d4f493ce-1dd3-4e73-9981-2879b9d5f390'),('d5d929fb-4c08-4721-9133-e8d72b64c258'),('d6be8438-9759-4afa-a3bd-b5127e3a7f96'),('d6d9797c-51b3-4b68-8694-42578996e395'),('d97a3c78-7217-4297-9646-c12650f31703'),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf'),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc'),('df9be0f4-adcb-4f7e-aafd-456e4f88c309'),('e31f9825-79e0-4962-b3ef-01f27a8e7306'),('e41cc1aa-986a-489b-a7d0-5e1ed6ced26c'),('e62251d5-657c-4f48-91c4-f31f14923a71'),('e75558be-6134-4567-b4f9-8d1b5c7bc548'),('e82add42-7c89-4649-af77-4ef4b207ad70'),('e86b663a-44ee-4663-9318-cdf677b27e09'),('e88c465d-1230-4048-9b9a-4c0c6b472ef1'),('e92c7b50-ba87-4827-91f3-c2f18b549f4d'),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90'),('ea29b33d-fda1-4486-935f-bd100ad73ffd'),('edccb89e-efd0-4849-b0b3-489197784c5f'),('f0f0f62b-20e7-433c-9822-4b45d0ace9ae'),('f2b4e265-77ac-4719-8386-657a58fa6171'),('f6ccf006-01b3-4a85-9256-392d53ef6874'),('f7c3c234-51ee-4df5-9e7e-a31e89cef3e5'),('fc1601a1-454a-4e53-ae5f-7458fb31bdde'),('fcbd2d31-d162-4306-93db-1ba4037998ff'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7'),('fd8b9ab2-c638-494e-a4a2-8baea8bba478'),('fec4df34-db16-43f4-867e-ed077dad202a'),('fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f'),('fffea957-d9b4-4e33-804b-18d8b95ffd9e');
/*!40000 ALTER TABLE `associatedfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedlocation`
--

DROP TABLE IF EXISTS `associatedlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedlocation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `associatedLocationType` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LEtLoc×LAsLoc` FOREIGN KEY (`id`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedlocation`
--

LOCK TABLES `associatedlocation` WRITE;
/*!40000 ALTER TABLE `associatedlocation` DISABLE KEYS */;
INSERT INTO `associatedlocation` VALUES ('049e46b5-aa9d-419d-8fc2-de61cd56c90b','linear'),('068efa91-3a50-410d-acdc-39be07eeff11','spot'),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13','spot'),('11044084-740c-4b7d-a3b1-93b73170a68a','spot'),('14cc5352-77a4-4f52-a159-1838c5b238aa','linear'),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f','spot'),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58','linear'),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd','spot'),('1a4b96ee-da61-43e8-ac78-525a85b5ae36','spot'),('1d88281c-80fd-4264-b243-b78d7cf230da','linear'),('1edfd449-da6c-4780-af68-fa2bd5241689','linear'),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57','linear'),('25455e34-bfd1-4177-bc50-693cef286b76','linear'),('27e1ccd9-c298-481c-b244-4f0f5c4edb10','spot'),('28bb66f2-f928-4370-b735-e822bd951df4','linear'),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4','linear'),('2d33f61b-4519-4f66-9351-ac6b766e619f','spot'),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751','linear'),('333ae376-6658-4fbe-86d7-de80ebceeeef','spot'),('3660591b-7979-4873-8566-6de58976950b','spot'),('3a6660ea-f800-4917-86a1-75fee90d9a55','linear'),('3c9b6391-91ec-4453-8a30-87809d4f941f','spot'),('43432693-5c55-426d-a5a7-f62bb0af67d1','spot'),('47f2dcef-dc53-4ab3-9966-24205149f4db','linear'),('48abe320-b800-4f48-adad-4dc503c54ff4','linear'),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8','linear'),('4b043639-bc5f-411d-a741-276ad262b786','linear'),('4c17ba4b-d54d-4077-908f-0d9e704fa72d','linear'),('4f64ca12-091c-4f47-9f40-ea0484f6355e','spot'),('56a71c7d-430d-428a-92ac-44f0862e7290','linear'),('56e7182e-8c69-458c-9fcb-f6058279ccc2','spot'),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456','spot'),('60c63f89-bd12-40a7-aed6-998035edde3e','spot'),('6268314a-6dcc-477e-bb20-6d821036e607','spot'),('65c9da5e-9af7-4075-aca5-38083216f665','spot'),('705898a1-bda4-463b-b9d9-37b1e8dd3eff','spot'),('709c7842-b7fd-4915-95bb-e4e57201d4ad','spot'),('728a9d52-1579-4f8b-825a-83982608d9a1','linear'),('7f804017-4582-4242-9943-a0e5a9600b88','spot'),('7f88dee8-a634-4f41-8717-8e8befe6feab','linear'),('86dae328-33e0-4a44-a287-3c8361521bf6','spot'),('8a5f326f-fbca-4519-ad9b-cf9991f5725f','spot'),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad','linear'),('8effeebb-7679-474b-b187-43f91542b714','linear'),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3','linear'),('9520e575-0983-40f8-b0f0-2e8ecea6fe42','spot'),('98df0731-144c-4cbb-8f26-125cc7e4b795','spot'),('999596ab-4774-4d1d-8c05-d51787e24122','spot'),('99d0d301-dff8-42b9-acd4-7ced58e511ff','spot'),('9a010ba7-7c2d-42ce-9925-ffc97f988d71','spot'),('9b825acc-e081-4bcc-a3d1-993da20dc22e','spot'),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8','spot'),('a09f7b29-77ab-4a77-a803-053384327475','spot'),('a47a3400-4286-41c7-9fc9-d7c378fbe838','spot'),('a670b4bf-f87c-4055-92f9-f86bda09e690','spot'),('a75b2734-30a3-45eb-bc21-dc328b7377f9','linear'),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf','spot'),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f','linear'),('abf5000f-f2f4-45d5-94aa-325e8436db2b','spot'),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add','spot'),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d','spot'),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e','spot'),('b1cdc087-91b0-4c31-a290-e2e37e093822','spot'),('b60d85e1-876e-4be4-a272-742312b08722','spot'),('bb02e0f9-fa84-49af-aff9-8761777ec907','linear'),('bc6a6a38-72f0-4b18-aba9-edbd52852068','spot'),('bea3fc59-365d-4253-a5a1-3e225acf1106','spot'),('bedcbb5b-c119-451d-ae3a-7204f0c7335a','linear'),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9','linear'),('c19bffaf-a310-4000-9c1c-f6f9fc060334','spot'),('c5393e9f-2c65-40bd-a2ac-32db50845885','spot'),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1','linear'),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57','spot'),('c7b47338-c191-41d5-a057-4f358d40f168','spot'),('c7e98354-6400-4724-bf19-138669b25993','linear'),('caa8b599-c00d-49a8-80f2-de9563e30727','linear'),('d3a35778-3749-4bf8-a780-2174e09c7ff2','spot'),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf','linear'),('d88a4e1b-eda3-4498-a736-0f18327e28ed','spot'),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7','spot'),('ded1d00e-86cc-4215-a23f-3f19b849d44f','spot'),('df82f85d-2287-4c4c-9a90-e3c5bba67472','linear'),('e2099fd4-fd51-44cd-9075-223d1012a9f0','linear'),('e2b25350-e7e3-4b7b-998b-b4652628f816','spot'),('e2b45cd7-e832-4479-8f5f-d595f4749a9f','linear'),('e35e08b2-a11c-494d-930a-2f79221ffb11','linear'),('e9e0da43-7fa5-4047-8950-2fd7eb583a05','spot'),('ecee46bf-489a-44ca-82ca-609505c0e0ef','linear'),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e','spot'),('f4f96fc0-ba93-4cf5-908c-647010a61011','linear'),('f75e1fec-93b8-4869-adb0-2f04ff90c42b','spot'),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73','linear'),('f860871e-64fa-4ade-800f-46c299ecdf65','spot'),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340','linear'),('fb0401d8-3853-4eda-b9fd-f6d28dde228b','linear'),('fb9a6ee2-d46f-4830-9680-7d5219a40a99','spot'),('fcc6268a-284f-4717-af93-0c3534205ba3','spot'),('fe5d9832-de82-498b-901a-042928d774c8','linear'),('ffafaa1c-1f6b-43e3-b862-758a52c04f35','linear');
/*!40000 ALTER TABLE `associatedlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedlocationentity`
--

DROP TABLE IF EXISTS `associatedlocationentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedlocationentity` (
  `id_NetEntity` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_AssociatedLocation` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `lateralSide` int DEFAULT NULL,
  `lateralDistance` double DEFAULT NULL,
  `verticalSide` int DEFAULT NULL,
  `verticalDistance` double DEFAULT NULL,
  `functionalLocationReference` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `physicalLocationReference` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `applicationDirection` int DEFAULT NULL,
  `locationPriority` int DEFAULT NULL,
  PRIMARY KEY (`id_NetEntity`,`id_AssociatedLocation`),
  KEY `SI÷id_ENetEt×LALcEt` (`id_NetEntity`),
  KEY `SI÷id_LAsLoc×LALcEt` (`id_AssociatedLocation`),
  CONSTRAINT `FK÷id_ENetEt×LALcEt` FOREIGN KEY (`id_NetEntity`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAsLoc×LALcEt` FOREIGN KEY (`id_AssociatedLocation`) REFERENCES `associatedlocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedlocationentity`
--

LOCK TABLES `associatedlocationentity` WRITE;
/*!40000 ALTER TABLE `associatedlocationentity` DISABLE KEYS */;
INSERT INTO `associatedlocationentity` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c','4f64ca12-091c-4f47-9f40-ea0484f6355e',0,0,0,0,'source','source',0,1),('07be4875-623f-4b25-8e32-e79bbf929a08','709c7842-b7fd-4915-95bb-e4e57201d4ad',0,0,0,0,'source','source',0,1),('0b021a04-9a2b-4850-86f2-d4d7124e76ae','fe5d9832-de82-498b-901a-042928d774c8',0,0,0,0,'source','none',0,1),('0c1aeac1-0e69-42f5-a787-a990d8561dab','d7b5cad3-f88e-4d00-9b07-d7793554c9cf',0,0,0,0,'source','none',0,1),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b','c7b47338-c191-41d5-a057-4f358d40f168',0,0,0,0,'source','source',0,1),('0cf67c3a-fae0-4139-97c0-828958395118','bedcbb5b-c119-451d-ae3a-7204f0c7335a',0,0,0,0,'source','none',0,1),('0e782fd6-80b9-4327-a748-bca404381449','aa2ae174-ae5a-432f-bca6-23ef34c75b6f',0,0,0,0,'source','none',0,1),('10c7296b-cb20-40c9-9890-e10992e4d8b2','f4f96fc0-ba93-4cf5-908c-647010a61011',0,0,0,0,'source','none',0,1),('13974828-1903-4364-9f69-eb7fd8d0e838','4c17ba4b-d54d-4077-908f-0d9e704fa72d',0,0,0,0,'source','none',0,1),('18216b6b-d689-41d2-b7aa-e0d8fe262651','56a71c7d-430d-428a-92ac-44f0862e7290',0,0,0,0,'source','none',0,1),('1985bab8-1465-4ac3-bfa5-800d7890028c','e9e0da43-7fa5-4047-8950-2fd7eb583a05',0,0,0,0,'source','source',0,1),('1e351385-524e-4fd5-b3e3-eab03383143f','60c63f89-bd12-40a7-aed6-998035edde3e',0,0,0,0,'source','source',0,1),('1e74043e-3d84-4ab4-9466-580bc61511d3','4c17ba4b-d54d-4077-908f-0d9e704fa72d',0,0,0,0,'source','none',0,1),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf','ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add',0,0,0,0,'source','source',0,1),('1e9a5717-0aa3-479a-8969-57e3af52b542','6268314a-6dcc-477e-bb20-6d821036e607',0,0,0,0,'source','source',0,1),('26e05d9a-5f77-4fc8-bab2-9910b373c083','9520e575-0983-40f8-b0f0-2e8ecea6fe42',0,0,0,0,'source','source',0,1),('2799d78e-8416-409b-8c09-80b21cf7d036','2d33f61b-4519-4f66-9351-ac6b766e619f',1,4,0,0,'source','target',1,1),('27f9d7c5-a439-47b4-9f38-1177586cbe19','b1cdc087-91b0-4c31-a290-e2e37e093822',0,0,0,0,'source','source',0,1),('29417886-5c69-4ef5-9daf-0842415935ec','8effeebb-7679-474b-b187-43f91542b714',0,0,0,0,'source','none',0,1),('2950249d-ad0f-434c-be25-fb94c9b87a11','ffafaa1c-1f6b-43e3-b862-758a52c04f35',0,0,0,0,'source','none',0,1),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918','fcc6268a-284f-4717-af93-0c3534205ba3',0,0,0,0,'source','source',0,1),('32617a21-0ae9-4486-9189-8463111e5ddc','86dae328-33e0-4a44-a287-3c8361521bf6',1,4,0,0,'source','target',1,1),('32b72542-f146-44ed-ae59-0d0dd898339b','493b212a-c1e6-4303-a4fb-14f1dd6dc8b8',0,0,0,0,'source','none',0,1),('364e6b35-3705-4390-8bd7-9c4c069540a9','068efa91-3a50-410d-acdc-39be07eeff11',0,0,0,0,'source','source',0,1),('38069531-1026-4b46-a572-b128c18ec18c','bea3fc59-365d-4253-a5a1-3e225acf1106',0,0,0,0,'source','source',0,1),('390fa6af-7512-4ceb-a0fc-0b5728642d73','4b043639-bc5f-411d-a741-276ad262b786',0,0,0,0,'source','none',0,1),('3ad1de23-c02e-41e1-bec6-c625933d14e9','7f804017-4582-4242-9943-a0e5a9600b88',0,0,0,0,'source','source',0,1),('3d13e88f-1c88-4ba9-893b-4eccca61e442','abf5000f-f2f4-45d5-94aa-325e8436db2b',1,4,0,0,'source','target',1,1),('3d9c1b8c-ca05-41fb-b296-caa475398f9e','bb02e0f9-fa84-49af-aff9-8761777ec907',0,0,0,0,'source','none',0,1),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62','3a6660ea-f800-4917-86a1-75fee90d9a55',0,0,0,0,'source','none',0,1),('40f2d16c-8dd0-4198-ac74-c260235c0e67','9c2de20d-27d9-492d-bc4e-1e66e62c1cf8',1,4,0,0,'source','target',1,1),('42db04f7-224d-4185-96bd-83ef78e295e9','1fc3a7d9-5b6e-464b-a3d1-9adb90600a57',0,0,0,0,'source','none',0,1),('43a66cb9-46bb-4934-a30d-fe6473785ce4','2c6ee7b2-290b-401b-9dcf-f0b74190cec4',0,0,0,0,'source','none',0,1),('47529a09-a1cc-4ebf-8955-a16c39303eae','9b825acc-e081-4bcc-a3d1-993da20dc22e',0,0,0,0,'source','source',0,1),('47c1ed7b-fa77-4c81-8eef-69845d4df868','dcd539e0-fd9d-43c1-93c0-c944cffd4ea7',-1,4,-1,0,'source','target',-1,1),('4b096cf3-4b8f-4075-b049-33927c60cc0d','1a4b96ee-da61-43e8-ac78-525a85b5ae36',0,0,0,0,'source','source',0,1),('4db19623-8331-4c81-9b7c-e8aebc03033b','705898a1-bda4-463b-b9d9-37b1e8dd3eff',0,0,0,0,'source','source',0,1),('4e0651b8-8283-451e-bb70-2d42f89887e0','df82f85d-2287-4c4c-9a90-e3c5bba67472',0,0,0,0,'source','none',0,1),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0','9a010ba7-7c2d-42ce-9925-ffc97f988d71',0,0,0,0,'source','source',0,1),('4ecf7943-7873-434d-89b6-1a486f85b77a','aa2ae174-ae5a-432f-bca6-23ef34c75b6f',0,0,0,0,'source','none',0,1),('50b05f70-ca53-4964-9a79-37222d7b275d','a8be00a7-6cfa-468b-a331-cb1c0ffb76cf',0,0,0,0,'source','source',0,1),('5102a15b-e264-478a-9ad2-ce99f9df2e4b','d88a4e1b-eda3-4498-a736-0f18327e28ed',-1,4,0,0,'source','target',-1,1),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9','18e0b3f6-e59e-4297-b2fb-dca81fdc1b58',0,0,0,0,'source','none',0,1),('588b9192-e349-4031-bd8e-49dc16f19ff9','43432693-5c55-426d-a5a7-f62bb0af67d1',0,0,0,0,'source','source',0,1),('5f32d8ef-5e29-4613-ab0e-c8d666704229','3a6660ea-f800-4917-86a1-75fee90d9a55',0,0,0,0,'source','none',0,1),('65d15f20-5245-422f-9d5b-82b147a4de25','049e46b5-aa9d-419d-8fc2-de61cd56c90b',0,0,0,0,'source','none',0,1),('667477b7-e08a-4abe-906e-86bebc26b3bb','b1352282-59cb-44e6-a0d5-fe0a1f98c35e',0,0,0,0,'source','source',0,1),('68b433fb-af0f-439b-9cbc-4f434e7a120b','c6bd374f-add0-4c4a-82e2-9dfaedac3b57',-1,4,0,0,'source','target',-1,1),('6ac2e221-044e-4727-813b-c91e96f1d59f','25455e34-bfd1-4177-bc50-693cef286b76',0,0,0,0,'source','none',0,1),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3','ecee46bf-489a-44ca-82ca-609505c0e0ef',0,0,0,0,'source','none',0,1),('6caa269f-85ba-4870-832e-781f5a9753da','56e7182e-8c69-458c-9fcb-f6058279ccc2',1,4,0,0,'source','target',1,1),('6d43b482-4704-4243-9c8b-04de791a82ed','3c9b6391-91ec-4453-8a30-87809d4f941f',1,4,0,0,'source','target',1,1),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f','10ecddbf-e69b-4c07-ac45-d3d2652d2a13',1,4,0,1,'source','target',1,1),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd','2f1afbbd-b20c-443f-b51b-a5cfe72a1751',0,0,0,0,'source','none',0,1),('767b79cf-a053-4a00-b820-d093d68fd8b6','ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d',0,0,0,0,'source','source',0,1),('76f9e8c6-023a-403e-842a-a5eeea4916da','a670b4bf-f87c-4055-92f9-f86bda09e690',-1,4,0,0,'source','target',-1,1),('7949c5ca-400b-48cc-88ed-ced6c24a63b5','a47a3400-4286-41c7-9fc9-d7c378fbe838',0,0,0,0,'source','source',0,1),('7b43bcbe-470e-484b-a30a-1ef7e412a01a','abf5000f-f2f4-45d5-94aa-325e8436db2b',-1,4,0,0,'source','target',-1,1),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8','bc6a6a38-72f0-4b18-aba9-edbd52852068',0,0,0,0,'source','source',0,1),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e','8a5f326f-fbca-4519-ad9b-cf9991f5725f',0,0,0,0,'source','source',0,1),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5','5a564a4a-e527-41a6-8d9f-d9a5bd5a3456',0,0,0,0,'source','source',0,1),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d','ee198f75-0e64-4de6-a9a7-5f07f80e7e0e',0,0,0,0,'source','source',0,1),('852f242d-cca6-4f21-b84b-9b9467ec7c65','e2b25350-e7e3-4b7b-998b-b4652628f816',0,0,0,0,'source','source',0,1),('87cd6ce9-d444-4a1e-b213-c3bb711e469a','c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1',0,0,0,0,'source','none',0,1),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb','999596ab-4774-4d1d-8c05-d51787e24122',0,0,0,0,'source','source',0,1),('8877868b-e670-45be-9823-b9ea6a603763','c5393e9f-2c65-40bd-a2ac-32db50845885',1,4,0,0,'source','target',1,1),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230','728a9d52-1579-4f8b-825a-83982608d9a1',0,0,0,0,'source','none',0,1),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d','fb9a6ee2-d46f-4830-9680-7d5219a40a99',0,0,0,0,'source','source',0,1),('8e1f35a9-aab3-449e-8f30-a08e1174ae17','11044084-740c-4b7d-a3b1-93b73170a68a',0,0,0,0,'source','source',0,1),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca','99d0d301-dff8-42b9-acd4-7ced58e511ff',0,0,0,0,'source','source',0,1),('902dcdf8-7eb9-4444-af86-33193215bd88','333ae376-6658-4fbe-86d7-de80ebceeeef',0,0,0,0,'source','source',0,1),('9108bd03-6144-4693-ba6e-7174b11c6db6','28bb66f2-f928-4370-b735-e822bd951df4',0,0,0,0,'source','none',0,1),('93afbf8e-415c-43a3-9134-f89357902809','14cc5352-77a4-4f52-a159-1838c5b238aa',0,0,0,0,'source','none',0,1),('9736089b-e2b9-48db-bf62-9f8849c8f350','3c9b6391-91ec-4453-8a30-87809d4f941f',-1,4,0,0,'source','target',-1,1),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8','f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340',0,0,0,0,'source','none',0,1),('9b7958b1-92d5-4657-aeac-fd960ee6098f','1d88281c-80fd-4264-b243-b78d7cf230da',0,0,0,0,'source','none',0,1),('9da483cb-9261-4fce-9b03-38d802585935','3660591b-7979-4873-8566-6de58976950b',0,0,0,0,'source','source',0,1),('9f64a748-7af9-41fe-b5d6-81037c18ea57','18e0b3f6-e59e-4297-b2fb-dca81fdc1b58',0,0,0,0,'source','none',0,1),('a516a241-330e-4da9-bb2f-9ddcb0a8a617','f75e1fec-93b8-4869-adb0-2f04ff90c42b',0,0,0,0,'source','source',0,1),('a7e51ff3-0c30-4d95-86ca-e2998a41d014','ded1d00e-86cc-4215-a23f-3f19b849d44f',0,0,0,0,'source','source',0,1),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f','a09f7b29-77ab-4a77-a803-053384327475',0,0,0,0,'source','source',0,1),('b045c8a6-425d-45e5-9254-f9207728797f','e35e08b2-a11c-494d-930a-2f79221ffb11',0,0,0,0,'source','none',0,1),('b384513c-6bf6-4591-ba8f-3161ae1bba4c','194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd',0,0,0,0,'source','source',0,1),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af','fb0401d8-3853-4eda-b9fd-f6d28dde228b',0,0,0,0,'source','none',0,1),('b797f47e-a543-4bf4-979a-4083aba0000b','b60d85e1-876e-4be4-a272-742312b08722',0,0,0,0,'source','source',0,1),('b9c1002a-f334-4681-a689-143962e24899','bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9',0,0,0,0,'source','none',1,1),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42','2c6ee7b2-290b-401b-9dcf-f0b74190cec4',0,0,0,0,'source','none',0,1),('be3faccb-b557-4c65-90f7-976c401b396a','caa8b599-c00d-49a8-80f2-de9563e30727',0,0,0,0,'source','none',0,1),('c13536c1-5744-48f4-9649-b9d3e1e475cb','1edfd449-da6c-4780-af68-fa2bd5241689',0,0,0,0,'source','none',0,1),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18','47f2dcef-dc53-4ab3-9966-24205149f4db',0,0,0,0,'source','none',0,1),('c2e508ab-139c-4601-84fe-6e534344ce92','c19bffaf-a310-4000-9c1c-f6f9fc060334',0,0,0,0,'source','source',0,1),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b','e2099fd4-fd51-44cd-9075-223d1012a9f0',0,0,0,0,'source','none',0,1),('c5b6fca1-d851-45b7-8f06-88ffb213388a','d3a35778-3749-4bf8-a780-2174e09c7ff2',-1,4,0,0,'source','target',-1,1),('c6aac27c-8056-4c86-85ab-8983ab87362a','1fc3a7d9-5b6e-464b-a3d1-9adb90600a57',0,0,0,0,'source','none',0,1),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565','56a71c7d-430d-428a-92ac-44f0862e7290',0,0,0,0,'source','none',0,1),('d79a04c2-984b-42fa-a37c-727a591d97c6','48abe320-b800-4f48-adad-4dc503c54ff4',0,0,0,0,'source','none',0,1),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be','160f8bba-4e13-4d7c-9266-89d7cbb7e01f',0,0,0,0,'source','source',0,1),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa','f7b2bb31-aa67-4c2c-b142-ba64e0621d73',0,0,0,0,'source','none',0,1),('db5ffd82-7cc3-4969-a5a2-3171f46b120c','27e1ccd9-c298-481c-b244-4f0f5c4edb10',0,0,0,0,'source','source',0,1),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7','a75b2734-30a3-45eb-bc21-dc328b7377f9',0,0,0,0,'source','none',0,1),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5','10ecddbf-e69b-4c07-ac45-d3d2652d2a13',-1,4,0,0,'source','target',-1,1),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a','c7e98354-6400-4724-bf19-138669b25993',0,0,0,0,'source','none',-1,1),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498','f860871e-64fa-4ade-800f-46c299ecdf65',0,0,0,0,'source','source',0,1),('ea7f117e-3360-48a5-91af-6020881e2c46','e2b45cd7-e832-4479-8f5f-d595f4749a9f',0,0,0,0,'source','none',0,1),('eab7199d-6752-4d03-bf26-09241d91aa4c','98df0731-144c-4cbb-8f26-125cc7e4b795',0,0,0,0,'source','source',0,1),('edd50a61-b972-4d59-96ae-177971c5dda9','728a9d52-1579-4f8b-825a-83982608d9a1',0,0,0,0,'source','none',0,1),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b','e2099fd4-fd51-44cd-9075-223d1012a9f0',0,0,0,0,'source','none',0,1),('ef76601b-831e-480b-adcc-aee620a5573f','7f88dee8-a634-4f41-8717-8e8befe6feab',0,0,0,0,'source','none',0,1),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7','94d0c4c9-3547-4c05-b5f7-f56de01e88b3',0,0,0,0,'source','none',0,1),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1','65c9da5e-9af7-4075-aca5-38083216f665',0,0,0,0,'source','source',0,1),('f7197abd-a814-4258-888f-fb5359da5611','8df4c5a2-4b60-4baa-84aa-25f14fcb80ad',0,0,0,0,'source','none',0,1);
/*!40000 ALTER TABLE `associatedlocationentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedlocationfeature`
--

DROP TABLE IF EXISTS `associatedlocationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedlocationfeature` (
  `id_AssociatedLocation` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `id_AssociatedFeature` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `featureOrientation` int NOT NULL,
  PRIMARY KEY (`id_AssociatedLocation`,`sequence`),
  KEY `SI÷id_LAsLoc×LAsLFt` (`id_AssociatedLocation`),
  KEY `SI÷id_LAssFt×LAsLFt` (`id_AssociatedFeature`),
  CONSTRAINT `FK÷id_LAsLoc×LAsLFt` FOREIGN KEY (`id_AssociatedLocation`) REFERENCES `associatedlocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssFt×LAsLFt` FOREIGN KEY (`id_AssociatedFeature`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedlocationfeature`
--

LOCK TABLES `associatedlocationfeature` WRITE;
/*!40000 ALTER TABLE `associatedlocationfeature` DISABLE KEYS */;
INSERT INTO `associatedlocationfeature` VALUES ('049e46b5-aa9d-419d-8fc2-de61cd56c90b',1,'e75558be-6134-4567-b4f9-8d1b5c7bc548',1),('068efa91-3a50-410d-acdc-39be07eeff11',1,'8cc1ddf9-9207-4b15-925d-6baf2a0391e4',1),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13',1,'3660f6eb-4ba5-463c-9133-c0fc6b28c300',1),('11044084-740c-4b7d-a3b1-93b73170a68a',1,'91b1be25-3841-44cd-b31c-0c7ac5f77778',1),('14cc5352-77a4-4f52-a159-1838c5b238aa',1,'68f5763b-5a8b-4260-9446-54ca77be3ccc',1),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f',1,'60720144-4d50-4215-a779-d1234f6be5da',1),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58',1,'276a2a9d-d81c-4ccb-9695-13e810edaf6e',1),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd',1,'ea29b33d-fda1-4486-935f-bd100ad73ffd',1),('1a4b96ee-da61-43e8-ac78-525a85b5ae36',1,'9178b6af-7b8f-4127-a36d-a334e7aabfd9',1),('1d88281c-80fd-4264-b243-b78d7cf230da',1,'10904523-b07c-4652-9101-026c66f9f1f0',1),('1edfd449-da6c-4780-af68-fa2bd5241689',1,'7e15063b-4f15-4845-911a-3aef4da09c1e',1),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57',1,'c7acb121-5adc-40e7-9280-42b7d335df3b',1),('25455e34-bfd1-4177-bc50-693cef286b76',1,'d3ab2776-89d8-4851-b8d3-249b81d94841',1),('27e1ccd9-c298-481c-b244-4f0f5c4edb10',1,'0b0e998f-5e3d-4e98-aff5-9b3594801b79',1),('28bb66f2-f928-4370-b735-e822bd951df4',1,'c8b31340-41d9-4791-b28a-98fc1b0c6337',1),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4',1,'1d3c1dc1-22d3-4506-a640-634676fd350d',1),('2d33f61b-4519-4f66-9351-ac6b766e619f',1,'d0217043-d49e-4279-886c-ab5f133b266d',1),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751',1,'ba3f9014-281e-4e0d-828e-e3020a96e551',1),('333ae376-6658-4fbe-86d7-de80ebceeeef',1,'5b525c9d-40d5-4291-93b1-a81128ed5464',1),('3660591b-7979-4873-8566-6de58976950b',1,'69f83619-c907-4dc9-aaba-8d78d4bccc53',1),('3a6660ea-f800-4917-86a1-75fee90d9a55',1,'502f79a5-db67-4315-bbdf-37b467100783',1),('3c9b6391-91ec-4453-8a30-87809d4f941f',1,'190a0ce3-89ef-45cf-8b19-e4fca54cbcb5',1),('43432693-5c55-426d-a5a7-f62bb0af67d1',1,'1917257c-1f1a-4880-be8a-8557c13a78af',1),('47f2dcef-dc53-4ab3-9966-24205149f4db',1,'95c78591-a626-4b1a-b1a3-bafb8a7b3d48',1),('48abe320-b800-4f48-adad-4dc503c54ff4',1,'4cc213cc-0574-4914-847e-85b32f056ac1',1),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8',1,'cfadce12-10c8-44aa-b8c8-33e8d42d4f0b',1),('4b043639-bc5f-411d-a741-276ad262b786',1,'fcbd2d31-d162-4306-93db-1ba4037998ff',1),('4c17ba4b-d54d-4077-908f-0d9e704fa72d',1,'f0f0f62b-20e7-433c-9822-4b45d0ace9ae',1),('4f64ca12-091c-4f47-9f40-ea0484f6355e',1,'f6ccf006-01b3-4a85-9256-392d53ef6874',1),('56a71c7d-430d-428a-92ac-44f0862e7290',1,'9ea0fdd8-8f7c-4182-a7bb-999035956d26',1),('56e7182e-8c69-458c-9fcb-f6058279ccc2',1,'ba9e650f-7ffe-426d-b658-9689e18196eb',1),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456',1,'174036a8-0646-4a6d-a201-d02c9199c025',1),('60c63f89-bd12-40a7-aed6-998035edde3e',1,'0d67c18c-9e1a-4e54-9a2c-24dcc99e4614',1),('6268314a-6dcc-477e-bb20-6d821036e607',1,'950dcb66-d81f-47d8-a057-e01e36d4e9bb',1),('65c9da5e-9af7-4075-aca5-38083216f665',1,'66768df2-d6e3-4ada-b0de-c95e3302d413',1),('705898a1-bda4-463b-b9d9-37b1e8dd3eff',1,'51a216f2-f50f-4aa0-a579-311484a65253',1),('709c7842-b7fd-4915-95bb-e4e57201d4ad',1,'1c64062a-3ff7-4b09-a503-23edad1d9d75',1),('728a9d52-1579-4f8b-825a-83982608d9a1',1,'88a25ad4-d98e-4686-93ef-f77367bfd320',1),('7f804017-4582-4242-9943-a0e5a9600b88',1,'df9be0f4-adcb-4f7e-aafd-456e4f88c309',1),('7f88dee8-a634-4f41-8717-8e8befe6feab',1,'7b472dde-a145-4a5c-ac30-05191a01b693',1),('86dae328-33e0-4a44-a287-3c8361521bf6',1,'4a0cfe80-ab79-4e4c-b58e-610501e057b6',1),('8a5f326f-fbca-4519-ad9b-cf9991f5725f',1,'976543b9-5aed-4800-b023-dd34856ea1d8',1),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad',1,'c87e3e0c-01cc-4c2e-8eb4-ea64a0457540',1),('8effeebb-7679-474b-b187-43f91542b714',1,'975460d1-4453-450f-bf6c-14727d8f9df3',1),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3',1,'7bd3f369-45ea-4bd5-a83c-0d74df0002cb',1),('9520e575-0983-40f8-b0f0-2e8ecea6fe42',1,'dcd45e12-9a61-4481-b4b4-bb4595fe9d01',1),('98df0731-144c-4cbb-8f26-125cc7e4b795',1,'602bb3ce-12a2-4288-bc2b-25130d4f677e',1),('999596ab-4774-4d1d-8c05-d51787e24122',1,'c23a4cdd-854d-43e1-aa03-3a208dbca255',1),('99d0d301-dff8-42b9-acd4-7ced58e511ff',1,'2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7',1),('9a010ba7-7c2d-42ce-9925-ffc97f988d71',1,'fc1601a1-454a-4e53-ae5f-7458fb31bdde',1),('9b825acc-e081-4bcc-a3d1-993da20dc22e',1,'da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf',1),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8',1,'07a60544-71bb-429c-9abc-40a924e1e99a',1),('a09f7b29-77ab-4a77-a803-053384327475',1,'34e34729-eaa9-4a11-89d5-d526568c4de5',1),('a47a3400-4286-41c7-9fc9-d7c378fbe838',1,'300a5be5-5a15-4e94-a3a7-b95a97df0079',1),('a670b4bf-f87c-4055-92f9-f86bda09e690',1,'1e6a5850-068c-42de-bce3-cb132b3464ca',1),('a75b2734-30a3-45eb-bc21-dc328b7377f9',1,'1c88f911-9386-4ca3-adff-9f0904bd8ab3',1),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf',1,'ca3911af-3dfb-40c8-9dd4-78d8041ec767',1),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f',1,'04838aab-69d4-4692-94d3-8b4f983a724c',1),('abf5000f-f2f4-45d5-94aa-325e8436db2b',1,'13882ddc-3ee7-4e29-8ec0-07333fde5e26',1),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add',1,'555ceaae-2ac9-4485-8eec-58081bdf8b89',1),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d',1,'cef21db7-8e06-4249-903d-414e105e393e',1),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e',1,'744847d0-494b-4805-8628-07d25058237a',1),('b1cdc087-91b0-4c31-a290-e2e37e093822',1,'acd25e23-c017-425b-8474-b8a948a5d2b3',1),('b60d85e1-876e-4be4-a272-742312b08722',1,'837a119a-ad62-469d-96f6-a216fe5a2629',1),('bb02e0f9-fa84-49af-aff9-8761777ec907',1,'fd8b9ab2-c638-494e-a4a2-8baea8bba478',1),('bc6a6a38-72f0-4b18-aba9-edbd52852068',1,'f2b4e265-77ac-4719-8386-657a58fa6171',1),('bea3fc59-365d-4253-a5a1-3e225acf1106',1,'1b796be0-fdec-438d-a31a-752f7bec3dcf',1),('bedcbb5b-c119-451d-ae3a-7204f0c7335a',1,'0bad7d72-6beb-4b0f-b54b-49122febc1c8',1),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9',1,'6b080122-3982-49d5-b741-bdacf5418861',1),('c19bffaf-a310-4000-9c1c-f6f9fc060334',1,'d6be8438-9759-4afa-a3bd-b5127e3a7f96',1),('c5393e9f-2c65-40bd-a2ac-32db50845885',1,'769dc71a-26e6-42d5-af92-7b1b6b187443',1),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1',1,'4d228e7c-b38d-43a1-8409-f854fcf6f4fb',1),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57',1,'d6d9797c-51b3-4b68-8694-42578996e395',1),('c7b47338-c191-41d5-a057-4f358d40f168',1,'c2304be5-282a-4a5a-9ec3-e1149284cd7a',1),('c7e98354-6400-4724-bf19-138669b25993',1,'6b080122-3982-49d5-b741-bdacf5418861',1),('caa8b599-c00d-49a8-80f2-de9563e30727',1,'06e1aa7f-78b4-468e-9296-0a59f1a1c87b',1),('d3a35778-3749-4bf8-a780-2174e09c7ff2',1,'e88c465d-1230-4048-9b9a-4c0c6b472ef1',1),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf',1,'8bb66c7b-65a4-42dd-9368-3ae036e9cb6c',1),('d88a4e1b-eda3-4498-a736-0f18327e28ed',1,'2fa6ed09-b298-419d-81f9-674200c80c84',1),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7',1,'6b25b441-86c6-416a-85f8-c7d9da5cbfd0',1),('ded1d00e-86cc-4215-a23f-3f19b849d44f',1,'bb0578b7-9d71-4681-b46c-ce934e5755aa',1),('df82f85d-2287-4c4c-9a90-e3c5bba67472',1,'b58a4779-70c1-42a3-bc69-a0199cb673fe',1),('e2099fd4-fd51-44cd-9075-223d1012a9f0',1,'bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0',1),('e2b25350-e7e3-4b7b-998b-b4652628f816',1,'84b04a57-2047-428d-98e7-7a8d7deedaef',1),('e2b45cd7-e832-4479-8f5f-d595f4749a9f',1,'e92c7b50-ba87-4827-91f3-c2f18b549f4d',1),('e35e08b2-a11c-494d-930a-2f79221ffb11',1,'d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab',1),('e9e0da43-7fa5-4047-8950-2fd7eb583a05',1,'b72d3988-44e6-45b6-8bbf-9c34cc4158c0',1),('ecee46bf-489a-44ca-82ca-609505c0e0ef',1,'743af29b-6935-4660-a6cb-5f3c25066961',1),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e',1,'b831b034-cc95-4147-b665-1e6294bd8d60',1),('f4f96fc0-ba93-4cf5-908c-647010a61011',1,'d06314e2-9492-4926-8578-77c3ad030340',1),('f75e1fec-93b8-4869-adb0-2f04ff90c42b',1,'4de555a2-1809-4454-a63a-ef9ebb2c10d7',1),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73',1,'b790cecc-4c2b-42bb-9256-ee80369c04d2',1),('f860871e-64fa-4ade-800f-46c299ecdf65',1,'4335eda7-7674-4541-aa8b-05dbf8fed356',1),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340',1,'c2c301b5-8404-42b6-a687-5e1b4880dffc',1),('fb0401d8-3853-4eda-b9fd-f6d28dde228b',1,'31de7e27-a7f4-418b-9cea-6b944a865607',1),('fb9a6ee2-d46f-4830-9680-7d5219a40a99',1,'6be06976-a899-4cb8-a743-1410095d607c',1),('fcc6268a-284f-4717-af93-0c3534205ba3',1,'ba41f5cc-e522-42cf-93b1-6dd5fddc7b70',1),('fe5d9832-de82-498b-901a-042928d774c8',1,'39bb825c-0d68-4c44-b669-3ce7eab6f7cd',1),('ffafaa1c-1f6b-43e3-b862-758a52c04f35',1,'758cb070-5e99-4cbe-93b5-d10e122c9505',1);
/*!40000 ALTER TABLE `associatedlocationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedposition`
--

DROP TABLE IF EXISTS `associatedposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedposition` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_PositioningNetElement` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `intrinsicReference` double DEFAULT NULL,
  `deltaPosition` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SI÷id_TNetEl×PAssPt` (`id_PositioningNetElement`),
  CONSTRAINT `FK÷id_LAssFt×LAssPs` FOREIGN KEY (`id`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtEl×LAssPs` FOREIGN KEY (`id_PositioningNetElement`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedposition`
--

LOCK TABLES `associatedposition` WRITE;
/*!40000 ALTER TABLE `associatedposition` DISABLE KEYS */;
INSERT INTO `associatedposition` VALUES ('01a9c127-6e7d-48f7-bc10-09ee80a2dcd6','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1800.0000135144),('02999a8c-af0f-4248-af0f-eef490cd7e31','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8860.28751068021),('0454ad4e-62dd-4d83-9ca9-221425631ba3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8431.52202666116),('05306e38-c960-47ca-9086-00f839c7fa60','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8998.52202666011),('057b3705-5231-4cab-b9b9-17aa1bf89241','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4672.38099323752),('07a60544-71bb-429c-9abc-40a924e1e99a','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9350),('07dff07d-6d34-492a-9ea1-aafe5b5211f4','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7478.43595416292),('09c172cb-7163-4a38-8644-2af203bd0ce3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,650.000000000001),('0b0e998f-5e3d-4e98-aff5-9b3594801b79','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1340),('0b5f44d6-5b27-434f-98c4-1714f43029e4','910d1e73-4df6-4b15-9745-8c77e564c67a',1,0),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4700),('0ef72324-b415-4fe0-92df-7a1161b2c7c2','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3262.66626339938),('0faf9536-e80c-41da-97d6-0c86a231eae8','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8656.52202665997),('12303966-2516-4133-a476-019e4d6f4f0f','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1349.99999963029),('13882ddc-3ee7-4e29-8ec0-07333fde5e26','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6300),('174036a8-0646-4a6d-a201-d02c9199c025','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5300),('17878bf8-4a92-4420-aaff-02a80a6f2443','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5618.2360487956),('18cc266a-fd28-4f2c-8867-e2f6c58b957d','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7700.45770909663),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5000),('1917257c-1f1a-4880-be8a-8557c13a78af','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2900),('1a1d1211-a95a-47ac-8a64-b9583aaec3db','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7660.75954899277),('1b701ddf-3aec-4b66-871e-2033ad6d3296','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9350.52202666085),('1b796be0-fdec-438d-a31a-752f7bec3dcf','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8190),('1bc3b810-3633-4af5-9255-f606ec3c6c6a','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8111.09894336503),('1c64062a-3ff7-4b09-a503-23edad1d9d75','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9344),('1e07f41d-1838-4312-8bee-8b53faa03478','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8260.6996331849),('1e6a5850-068c-42de-bce3-cb132b3464ca','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9800),('2019841b-5c4a-436f-b962-b5ea3b07a300','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8110.6009969292),('2135642f-501f-4c17-9be0-e30f77b004f8','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7180.7325612404),('227b147c-9ca0-45fb-8127-37c0e76dd2fe','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4104.30454025409),('236f1fd0-3707-436d-9b2e-55d007289ec3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,190),('26d2a50f-7c07-476a-9237-ff664c89761f','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,194),('29b27a99-e952-411f-b79d-62370cc50a34','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7810.4043655862),('2a70d8c9-9d63-4e4f-830a-ef9436677df1','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1806.00001226477),('2ac252cc-1a23-48be-8d6e-4b86a07e93ab','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6300.40527802304),('2b46747a-1982-40ea-8aa4-1047c16abf0c','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4388.58662689288),('2b783415-8e6d-43c9-83e2-81b7a0d82882','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8431),('2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6900.41996405759),('2fa6ed09-b298-419d-81f9-674200c80c84','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8650),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4238.1374125399),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2304),('2ffb28ca-96f5-4459-ae92-79b326322198','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2300.0123112544),('300a5be5-5a15-4e94-a3a7-b95a97df0079','910d1e73-4df6-4b15-9745-8c77e564c67a',0,656),('31df2e28-a114-4e23-ae59-99f4b0b66f1e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1339.99999973004),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6560.7138448725),('329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5300.38105040404),('34e34729-eaa9-4a11-89d5-d526568c4de5','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6504),('35705e47-f346-4c5e-b340-22f276d6adaa','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3412.5966763466),('3660f6eb-4ba5-463c-9133-c0fc6b28c300','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3700),('3bc42c44-6215-4305-aeed-640f7086c018','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1419.99999881383),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7810.87289419399),('4258eb32-f565-4699-9af0-2589898ad991','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3500.20668801616),('4335eda7-7674-4541-aa8b-05dbf8fed356','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1806),('44b12111-a06c-4204-8d73-55794b6f99c3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2400.02850993715),('452e59d2-c784-44cd-abbf-d13d8e793bb3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8200.50670656753),('46268b2b-146f-4873-9019-3ca4899ff14e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,660.000000000001),('46d81d9a-df69-4929-9425-d58186b88f74','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7422),('4a0cfe80-ab79-4e4c-b58e-610501e057b6','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8200),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8510.6996331849),('4d4cd0b1-de2f-4e78-9602-61046c05b411','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6500.41016720564),('4de555a2-1809-4454-a63a-ef9ebb2c10d7','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2904),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7422.43275293379),('51a216f2-f50f-4aa0-a579-311484a65253','910d1e73-4df6-4b15-9745-8c77e564c67a',0,580),('51ab9fed-6e7c-4063-9744-8ae03edf5399','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,0),('5289a274-9b12-4f64-8b33-5a564f60f66a','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2127.99999732656),('540e79c4-a0a9-47af-8186-a064378c4338','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4388.2360487956),('555ceaae-2ac9-4485-8eec-58081bdf8b89','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7700),('55622aa1-bea9-40f3-98b2-d32f6e44dd60','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2128),('5624dd54-16ce-4175-ad65-7da103f964f6','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,580),('59256249-29ed-4480-8caf-7e849c938987','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7104.4249654898),('5ad462db-8cb2-45ff-9329-183dcca47d22','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,200),('5b0024c1-cdc8-48bc-b3ca-42dce781d302','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1001.99999337022),('5b525c9d-40d5-4291-93b1-a81128ed5464','910d1e73-4df6-4b15-9745-8c77e564c67a',0,194),('5baa6010-3a05-4152-8eaa-082bfb523b59','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9209.35336107885),('5eaab8bb-d072-4760-8454-a9721316d2ab','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4238.4636766264),('602bb3ce-12a2-4288-bc2b-25130d4f677e','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4100),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f','910d1e73-4df6-4b15-9745-8c77e564c67a',0,0),('60720144-4d50-4215-a779-d1234f6be5da','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9810),('6323fba8-3e59-4d04-b666-dc9e54f915bd','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8859.7654835838),('63a59af7-cc0b-4708-838d-4ef36ca39ab3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5904.39556236236),('65100f76-ecee-4c9f-876e-b36b1053d4f8','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2812.29805387576),('66400b90-fc89-4b24-9d02-9e189e7cd818','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5272.38099323748),('66768df2-d6e3-4ada-b0de-c95e3302d413','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1002),('683d40f0-f025-4f42-8929-a31c82e460c4','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6561.12549696722),('6849be14-3caf-46e4-9a8d-c2faa01751ca','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7660.3057293305),('69f83619-c907-4dc9-aaba-8d78d4bccc53','910d1e73-4df6-4b15-9745-8c77e564c67a',0,190),('6a7fe213-9090-4d79-b810-9591f0e63f08','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8650.52202666027),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8261.21228856626),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1800),('6be06976-a899-4cb8-a743-1410095d607c','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8656),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8511.22166028145),('6e86f033-d9b5-4afc-91e6-60fb4167d587','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9208.8313339827),('711cc632-431e-4274-8410-ef4b6a794b6c','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3112.54331313369),('71600112-3966-4a9a-852e-b2f02aebc7db','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9810.52202666085),('73cc4a98-e747-4b2d-80ec-f250208a5e2e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8270.51356633733),('744847d0-494b-4805-8628-07d25058237a','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7100),('769dc71a-26e6-42d5-af92-7b1b6b187443','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1350),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6900),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6850),('7975c16b-0243-42c3-a686-74469e0302e3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4700.38099323752),('7989faf8-b33d-447b-a18e-ca4f70c29909','5695c0f7-ceeb-4127-8c5c-2da3a5932225',1,0),('7fb51a90-c9a7-43e1-b51f-fab92cf9304e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3504.20733718173),('83183263-5091-4103-82d1-56129605415a','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4528),('837a119a-ad62-469d-96f6-a216fe5a2629','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1344),('83962e21-18e3-4033-b060-cf9ec2047dc8','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2662.1041362365),('84b04a57-2047-428d-98e7-7a8d7deedaef','910d1e73-4df6-4b15-9745-8c77e564c67a',0,6500),('87ccd3fb-8235-45ab-86f2-9df058c8b942','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2272.00777561914),('89fee055-9c00-4c56-86e4-4cc138eccabc','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8190.50572662865),('8c95a69b-6fae-4954-bf87-d0063195f568','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5328.38145056745),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3504),('8d1251c3-998e-4112-b090-31a9f6a0174e','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2002.1041362365),('90fd6ef3-34c3-4941-af3d-401a544aee72','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3112.3994038352),('912e925b-edf3-4f36-8509-8d5ae4177750','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8319.51836810205),('9178b6af-7b8f-4127-a36d-a334e7aabfd9','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8194),('91b1be25-3841-44cd-b31c-0c7ac5f77778','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7704),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2662.17510361006),('94dcacd1-b692-4220-b615-d8502b5482a4','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9806.52202666085),('950dcb66-d81f-47d8-a057-e01e36d4e9bb','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7104),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4528.37321761555),('95cd2cf1-dcc5-48b1-b88f-66875cca638c','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7100.42486748539),('96e6f5ef-954a-4ada-8af2-be55214b84e9','910d1e73-4df6-4b15-9745-8c77e564c67a',0,920),('9735ba6c-1663-49e3-a3da-e7bd85f45948','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3700.23909219663),('976543b9-5aed-4800-b023-dd34856ea1d8','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3500),('97c85f99-c081-4d1f-9d1d-48731a056fd6','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,3412.78921366506),('97d85633-a337-4890-b396-c24d0e9cd705','910d1e73-4df6-4b15-9745-8c77e564c67a',0,3262.4980400909),('993fd49f-ada9-44a9-8c8d-775605015284','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8600.52202665994),('9a67c071-1b66-4716-b1aa-f1a06fd7e057','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2002.10413623606),('a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7600.44790957714),('a2af9a5c-24c7-49db-b134-f53d013fe244','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6504.41026533503),('a3be6484-6f78-436c-b82e-d6ed9c730cd8','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9344.52202666085),('a4fcc78c-7a5c-4829-868a-4636e194a11b','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9340.52202666085),('a6919436-9467-416c-a065-95d8e6aab4d3','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8580.52202665659),('a6d5c9bf-91c5-49a7-9140-081fd57543f2','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4704.38099323752),('a85b007e-f3a6-41d8-9f1e-990357683971','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5304.38107857061),('aab99697-56d1-40db-9588-b36739412118','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2272),('ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,656.000000000001),('acd25e23-c017-425b-8474-b8a948a5d2b3','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2300),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8600),('ad8e224c-9472-4336-8c17-01afb6abac72','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9420.52202666085),('b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8660.52202665978),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4704),('b7e84a87-f16f-4328-bb12-7bc289b26296','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5328),('b831b034-cc95-4147-b665-1e6294bd8d60','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5304),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9002),('ba9e650f-7ffe-426d-b658-9689e18196eb','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2400),('bb0578b7-9d71-4681-b46c-ce934e5755aa','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9420),('bddb0084-0ed2-4e64-aa02-a524c8ad303f','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2900.10950186694),('beac405a-a4bd-490d-9335-9638e001f937','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2904.11014695622),('c2304be5-282a-4a5a-9ec3-e1149284cd7a','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1810),('c23a4cdd-854d-43e1-aa03-3a208dbca255','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5900),('c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,6850.41873897593),('c92509fc-c7db-46ef-b784-b93a37d88c1c','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7478),('ca3911af-3dfb-40c8-9dd4-78d8041ec767','910d1e73-4df6-4b15-9745-8c77e564c67a',0,660),('cd34c226-8b87-45bf-8e76-f88f1b2052b9','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8580),('cef21db7-8e06-4249-903d-414e105e393e','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9806),('d0217043-d49e-4279-886c-ab5f133b266d','910d1e73-4df6-4b15-9745-8c77e564c67a',0,200),('d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1343.99999969176),('d14d7867-359b-46d3-9f6b-be552cbd3eb8','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9800.52202666085),('d4f493ce-1dd3-4e73-9981-2879b9d5f390','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,7704.45810113867),('d5d929fb-4c08-4721-9133-e8d72b64c258','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,2304.01295919666),('d6be8438-9759-4afa-a3bd-b5127e3a7f96','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8270),('d6d9797c-51b3-4b68-8694-42578996e395','910d1e73-4df6-4b15-9745-8c77e564c67a',0,650),('d97a3c78-7217-4297-9646-c12650f31703','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5618.62461046744),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf','910d1e73-4df6-4b15-9745-8c77e564c67a',0,1420),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4104),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8319),('df9be0f4-adcb-4f7e-aafd-456e4f88c309','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5904),('e31f9825-79e0-4962-b3ef-01f27a8e7306','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,4100.30389152644),('e41cc1aa-986a-489b-a7d0-5e1ed6ced26c','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,9002.52202665991),('e62251d5-657c-4f48-91c4-f31f14923a71','910d1e73-4df6-4b15-9745-8c77e564c67a',0,4672),('e82add42-7c89-4649-af77-4ef4b207ad70','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5000.3809932375),('e86b663a-44ee-4663-9318-cdf677b27e09','910d1e73-4df6-4b15-9745-8c77e564c67a',0,2812.2027724922),('e88c465d-1230-4048-9b9a-4c0c6b472ef1','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7600),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,920.000000000048),('ea29b33d-fda1-4486-935f-bd100ad73ffd','910d1e73-4df6-4b15-9745-8c77e564c67a',0,9340),('edccb89e-efd0-4849-b0b3-489197784c5f','910d1e73-4df6-4b15-9745-8c77e564c67a',0,7180.3057293305),('f2b4e265-77ac-4719-8386-657a58fa6171','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8998),('f6ccf006-01b3-4a85-9256-392d53ef6874','910d1e73-4df6-4b15-9745-8c77e564c67a',0,8660),('f7c3c234-51ee-4df5-9e7e-a31e89cef3e5','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,8194.50611869864),('fc1601a1-454a-4e53-ae5f-7458fb31bdde','910d1e73-4df6-4b15-9745-8c77e564c67a',0,998),('fcf5301c-baa5-47f4-b887-7c13c3c228e7','910d1e73-4df6-4b15-9745-8c77e564c67a',0,5272),('fec4df34-db16-43f4-867e-ed077dad202a','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,1810.00001132575),('fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,997.999994699849),('fffea957-d9b4-4e33-804b-18d8b95ffd9e','5695c0f7-ceeb-4127-8c5c-2da3a5932225',0,5900.39546431001);
/*!40000 ALTER TABLE `associatedposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedpositionassignment`
--

DROP TABLE IF EXISTS `associatedpositionassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedpositionassignment` (
  `id_AssociatedPosition_A` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_AssociatedPosition_B` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_AssociatedPosition_A`,`id_AssociatedPosition_B`),
  KEY `SI÷id_LAssPsA×LAsPsA` (`id_AssociatedPosition_A`),
  KEY `SI÷id_LAssPsB×LAsPsA` (`id_AssociatedPosition_B`),
  CONSTRAINT `FK÷id_LAssPsA×LAsPsA` FOREIGN KEY (`id_AssociatedPosition_A`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssPsB×LAsPsA` FOREIGN KEY (`id_AssociatedPosition_B`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedpositionassignment`
--

LOCK TABLES `associatedpositionassignment` WRITE;
/*!40000 ALTER TABLE `associatedpositionassignment` DISABLE KEYS */;
INSERT INTO `associatedpositionassignment` VALUES ('07a60544-71bb-429c-9abc-40a924e1e99a','1b701ddf-3aec-4b66-871e-2033ad6d3296'),('0b0e998f-5e3d-4e98-aff5-9b3594801b79','31df2e28-a114-4e23-ae59-99f4b0b66f1e'),('0b5f44d6-5b27-434f-98c4-1714f43029e4','7989faf8-b33d-447b-a18e-ca4f70c29909'),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614','7975c16b-0243-42c3-a686-74469e0302e3'),('13882ddc-3ee7-4e29-8ec0-07333fde5e26','2ac252cc-1a23-48be-8d6e-4b86a07e93ab'),('174036a8-0646-4a6d-a201-d02c9199c025','329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f'),('17878bf8-4a92-4420-aaff-02a80a6f2443','d97a3c78-7217-4297-9646-c12650f31703'),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5','e82add42-7c89-4649-af77-4ef4b207ad70'),('1917257c-1f1a-4880-be8a-8557c13a78af','bddb0084-0ed2-4e64-aa02-a524c8ad303f'),('1b796be0-fdec-438d-a31a-752f7bec3dcf','89fee055-9c00-4c56-86e4-4cc138eccabc'),('1c64062a-3ff7-4b09-a503-23edad1d9d75','a3be6484-6f78-436c-b82e-d6ed9c730cd8'),('1e07f41d-1838-4312-8bee-8b53faa03478','6a891bbe-0c19-4abc-a685-d7e76cc04f3c'),('1e6a5850-068c-42de-bce3-cb132b3464ca','d14d7867-359b-46d3-9f6b-be552cbd3eb8'),('2019841b-5c4a-436f-b962-b5ea3b07a300','1bc3b810-3633-4af5-9255-f606ec3c6c6a'),('29b27a99-e952-411f-b79d-62370cc50a34','3d1c0315-240a-4e56-8a2a-254bfd7a24ef'),('2b783415-8e6d-43c9-83e2-81b7a0d82882','0454ad4e-62dd-4d83-9ca9-221425631ba3'),('2fa6ed09-b298-419d-81f9-674200c80c84','6a7fe213-9090-4d79-b810-9591f0e63f08'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374','5eaab8bb-d072-4760-8454-a9721316d2ab'),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7','d5d929fb-4c08-4721-9133-e8d72b64c258'),('300a5be5-5a15-4e94-a3a7-b95a97df0079','ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5','683d40f0-f025-4f42-8929-a31c82e460c4'),('34e34729-eaa9-4a11-89d5-d526568c4de5','a2af9a5c-24c7-49db-b134-f53d013fe244'),('35705e47-f346-4c5e-b340-22f276d6adaa','97c85f99-c081-4d1f-9d1d-48731a056fd6'),('3660f6eb-4ba5-463c-9133-c0fc6b28c300','9735ba6c-1663-49e3-a3da-e7bd85f45948'),('4335eda7-7674-4541-aa8b-05dbf8fed356','2a70d8c9-9d63-4e4f-830a-ef9436677df1'),('46d81d9a-df69-4929-9425-d58186b88f74','5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc'),('4a0cfe80-ab79-4e4c-b58e-610501e057b6','452e59d2-c784-44cd-abbf-d13d8e793bb3'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db','6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0'),('4de555a2-1809-4454-a63a-ef9ebb2c10d7','beac405a-a4bd-490d-9335-9638e001f937'),('51a216f2-f50f-4aa0-a579-311484a65253','5624dd54-16ce-4175-ad65-7da103f964f6'),('540e79c4-a0a9-47af-8186-a064378c4338','2b46747a-1982-40ea-8aa4-1047c16abf0c'),('555ceaae-2ac9-4485-8eec-58081bdf8b89','18cc266a-fd28-4f2c-8867-e2f6c58b957d'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60','5289a274-9b12-4f64-8b33-5a564f60f66a'),('5b525c9d-40d5-4291-93b1-a81128ed5464','26d2a50f-7c07-476a-9237-ff664c89761f'),('602bb3ce-12a2-4288-bc2b-25130d4f677e','e31f9825-79e0-4962-b3ef-01f27a8e7306'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f','51ab9fed-6e7c-4063-9744-8ae03edf5399'),('60720144-4d50-4215-a779-d1234f6be5da','71600112-3966-4a9a-852e-b2f02aebc7db'),('6323fba8-3e59-4d04-b666-dc9e54f915bd','02999a8c-af0f-4248-af0f-eef490cd7e31'),('66768df2-d6e3-4ada-b0de-c95e3302d413','5b0024c1-cdc8-48bc-b3ca-42dce781d302'),('6849be14-3caf-46e4-9a8d-c2faa01751ca','1a1d1211-a95a-47ac-8a64-b9583aaec3db'),('69f83619-c907-4dc9-aaba-8d78d4bccc53','236f1fd0-3707-436d-9b2e-55d007289ec3'),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0','01a9c127-6e7d-48f7-bc10-09ee80a2dcd6'),('6be06976-a899-4cb8-a743-1410095d607c','0faf9536-e80c-41da-97d6-0c86a231eae8'),('6e86f033-d9b5-4afc-91e6-60fb4167d587','5baa6010-3a05-4152-8eaa-082bfb523b59'),('744847d0-494b-4805-8628-07d25058237a','95cd2cf1-dcc5-48b1-b88f-66875cca638c'),('769dc71a-26e6-42d5-af92-7b1b6b187443','12303966-2516-4133-a476-019e4d6f4f0f'),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c','2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77'),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55','c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e'),('83183263-5091-4103-82d1-56129605415a','95bc7ca4-ee83-4585-9817-8ec1eb7997d7'),('837a119a-ad62-469d-96f6-a216fe5a2629','d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14'),('83962e21-18e3-4033-b060-cf9ec2047dc8','939874d7-a5f0-48ad-ac78-9fcdce2ffce0'),('84b04a57-2047-428d-98e7-7a8d7deedaef','4d4cd0b1-de2f-4e78-9602-61046c05b411'),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4','7fb51a90-c9a7-43e1-b51f-fab92cf9304e'),('8d1251c3-998e-4112-b090-31a9f6a0174e','9a67c071-1b66-4716-b1aa-f1a06fd7e057'),('90fd6ef3-34c3-4941-af3d-401a544aee72','711cc632-431e-4274-8410-ef4b6a794b6c'),('9178b6af-7b8f-4127-a36d-a334e7aabfd9','f7c3c234-51ee-4df5-9e7e-a31e89cef3e5'),('91b1be25-3841-44cd-b31c-0c7ac5f77778','d4f493ce-1dd3-4e73-9981-2879b9d5f390'),('950dcb66-d81f-47d8-a057-e01e36d4e9bb','59256249-29ed-4480-8caf-7e849c938987'),('96e6f5ef-954a-4ada-8af2-be55214b84e9','e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90'),('976543b9-5aed-4800-b023-dd34856ea1d8','4258eb32-f565-4699-9af0-2589898ad991'),('97d85633-a337-4890-b396-c24d0e9cd705','0ef72324-b415-4fe0-92df-7a1161b2c7c2'),('aab99697-56d1-40db-9588-b36739412118','87ccd3fb-8235-45ab-86f2-9df058c8b942'),('acd25e23-c017-425b-8474-b8a948a5d2b3','2ffb28ca-96f5-4459-ae92-79b326322198'),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a','993fd49f-ada9-44a9-8c8d-775605015284'),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0','a6d5c9bf-91c5-49a7-9140-081fd57543f2'),('b7e84a87-f16f-4328-bb12-7bc289b26296','8c95a69b-6fae-4954-bf87-d0063195f568'),('b831b034-cc95-4147-b665-1e6294bd8d60','a85b007e-f3a6-41d8-9f1e-990357683971'),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70','e41cc1aa-986a-489b-a7d0-5e1ed6ced26c'),('ba9e650f-7ffe-426d-b658-9689e18196eb','44b12111-a06c-4204-8d73-55794b6f99c3'),('bb0578b7-9d71-4681-b46c-ce934e5755aa','ad8e224c-9472-4336-8c17-01afb6abac72'),('c2304be5-282a-4a5a-9ec3-e1149284cd7a','fec4df34-db16-43f4-867e-ed077dad202a'),('c23a4cdd-854d-43e1-aa03-3a208dbca255','fffea957-d9b4-4e33-804b-18d8b95ffd9e'),('c92509fc-c7db-46ef-b784-b93a37d88c1c','07dff07d-6d34-492a-9ea1-aafe5b5211f4'),('ca3911af-3dfb-40c8-9dd4-78d8041ec767','46268b2b-146f-4873-9019-3ca4899ff14e'),('cd34c226-8b87-45bf-8e76-f88f1b2052b9','a6919436-9467-416c-a065-95d8e6aab4d3'),('cef21db7-8e06-4249-903d-414e105e393e','94dcacd1-b692-4220-b615-d8502b5482a4'),('d0217043-d49e-4279-886c-ab5f133b266d','5ad462db-8cb2-45ff-9329-183dcca47d22'),('d6be8438-9759-4afa-a3bd-b5127e3a7f96','73cc4a98-e747-4b2d-80ec-f250208a5e2e'),('d6d9797c-51b3-4b68-8694-42578996e395','09c172cb-7163-4a38-8644-2af203bd0ce3'),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf','3bc42c44-6215-4305-aeed-640f7086c018'),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01','227b147c-9ca0-45fb-8127-37c0e76dd2fe'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc','912e925b-edf3-4f36-8509-8d5ae4177750'),('df9be0f4-adcb-4f7e-aafd-456e4f88c309','63a59af7-cc0b-4708-838d-4ef36ca39ab3'),('e62251d5-657c-4f48-91c4-f31f14923a71','057b3705-5231-4cab-b9b9-17aa1bf89241'),('e86b663a-44ee-4663-9318-cdf677b27e09','65100f76-ecee-4c9f-876e-b36b1053d4f8'),('e88c465d-1230-4048-9b9a-4c0c6b472ef1','a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5'),('ea29b33d-fda1-4486-935f-bd100ad73ffd','a4fcc78c-7a5c-4829-868a-4636e194a11b'),('edccb89e-efd0-4849-b0b3-489197784c5f','2135642f-501f-4c17-9be0-e30f77b004f8'),('f2b4e265-77ac-4719-8386-657a58fa6171','05306e38-c960-47ca-9086-00f839c7fa60'),('f6ccf006-01b3-4a85-9256-392d53ef6874','b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05'),('fc1601a1-454a-4e53-ae5f-7458fb31bdde','fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7','66400b90-fc89-4b24-9d02-9e189e7cd818');
/*!40000 ALTER TABLE `associatedpositionassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associatedsection`
--

DROP TABLE IF EXISTS `associatedsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associatedsection` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_AssociatedPosition_A` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_AssociatedPosition_B` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_LAssPsB×LAssSc` (`id_AssociatedPosition_B`),
  KEY `FK÷id_LAssPsA×LAssSc_idx` (`id_AssociatedPosition_A`),
  CONSTRAINT `FK÷id_LAssFt×LAssSc` FOREIGN KEY (`id`) REFERENCES `associatedfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssPsA×LAssSc` FOREIGN KEY (`id_AssociatedPosition_A`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LAssPsB×LAssSc` FOREIGN KEY (`id_AssociatedPosition_B`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associatedsection`
--

LOCK TABLES `associatedsection` WRITE;
/*!40000 ALTER TABLE `associatedsection` DISABLE KEYS */;
INSERT INTO `associatedsection` VALUES ('04838aab-69d4-4692-94d3-8b4f983a724c','29b27a99-e952-411f-b79d-62370cc50a34','2019841b-5c4a-436f-b962-b5ea3b07a300'),('06e1aa7f-78b4-468e-9296-0a59f1a1c87b','604fffe7-95b2-42f7-b732-f8ce0fc2e86f','55622aa1-bea9-40f3-98b2-d32f6e44dd60'),('0bad7d72-6beb-4b0f-b54b-49122febc1c8','540e79c4-a0a9-47af-8186-a064378c4338','6849be14-3caf-46e4-9a8d-c2faa01751ca'),('10904523-b07c-4652-9101-026c66f9f1f0','55622aa1-bea9-40f3-98b2-d32f6e44dd60','aab99697-56d1-40db-9588-b36739412118'),('1c88f911-9386-4ca3-adff-9f0904bd8ab3','c92509fc-c7db-46ef-b784-b93a37d88c1c','de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc'),('1d3c1dc1-22d3-4506-a640-634676fd350d','2019841b-5c4a-436f-b962-b5ea3b07a300','1e07f41d-1838-4312-8bee-8b53faa03478'),('276a2a9d-d81c-4ccb-9695-13e810edaf6e','83962e21-18e3-4033-b060-cf9ec2047dc8','e86b663a-44ee-4663-9318-cdf677b27e09'),('31de7e27-a7f4-418b-9cea-6b944a865607','4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db','6323fba8-3e59-4d04-b666-dc9e54f915bd'),('39bb825c-0d68-4c44-b669-3ce7eab6f7cd','17878bf8-4a92-4420-aaff-02a80a6f2443','31e2e55d-3a4f-46a3-a975-c5d900cf97d5'),('4cc213cc-0574-4914-847e-85b32f056ac1','540e79c4-a0a9-47af-8186-a064378c4338','17878bf8-4a92-4420-aaff-02a80a6f2443'),('4d228e7c-b38d-43a1-8409-f854fcf6f4fb','604fffe7-95b2-42f7-b732-f8ce0fc2e86f','96e6f5ef-954a-4ada-8af2-be55214b84e9'),('502f79a5-db67-4315-bbdf-37b467100783','90fd6ef3-34c3-4941-af3d-401a544aee72','97d85633-a337-4890-b396-c24d0e9cd705'),('68f5763b-5a8b-4260-9446-54ca77be3ccc','1e07f41d-1838-4312-8bee-8b53faa03478','0b5f44d6-5b27-434f-98c4-1714f43029e4'),('6b080122-3982-49d5-b741-bdacf5418861','cd34c226-8b87-45bf-8e76-f88f1b2052b9','ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a'),('743af29b-6935-4660-a6cb-5f3c25066961','6e86f033-d9b5-4afc-91e6-60fb4167d587','0b5f44d6-5b27-434f-98c4-1714f43029e4'),('758cb070-5e99-4cbe-93b5-d10e122c9505','791bf27f-3671-48d2-9e7a-f63d7f5b5e55','77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c'),('7b472dde-a145-4a5c-ac30-05191a01b693','b7e84a87-f16f-4328-bb12-7bc289b26296','46d81d9a-df69-4929-9425-d58186b88f74'),('7bd3f369-45ea-4bd5-a83c-0d74df0002cb','83183263-5091-4103-82d1-56129605415a','e62251d5-657c-4f48-91c4-f31f14923a71'),('7e15063b-4f15-4845-911a-3aef4da09c1e','fcf5301c-baa5-47f4-b887-7c13c3c228e7','b7e84a87-f16f-4328-bb12-7bc289b26296'),('88a25ad4-d98e-4686-93ef-f77367bfd320','97d85633-a337-4890-b396-c24d0e9cd705','35705e47-f346-4c5e-b340-22f276d6adaa'),('8bb66c7b-65a4-42dd-9368-3ae036e9cb6c','e62251d5-657c-4f48-91c4-f31f14923a71','791bf27f-3671-48d2-9e7a-f63d7f5b5e55'),('95c78591-a626-4b1a-b1a3-bafb8a7b3d48','e62251d5-657c-4f48-91c4-f31f14923a71','fcf5301c-baa5-47f4-b887-7c13c3c228e7'),('975460d1-4453-450f-bf6c-14727d8f9df3','aab99697-56d1-40db-9588-b36739412118','83183263-5091-4103-82d1-56129605415a'),('9ea0fdd8-8f7c-4182-a7bb-999035956d26','35705e47-f346-4c5e-b340-22f276d6adaa','2fb9d74c-bb13-4833-a2a2-fc5d09d8e374'),('b58a4779-70c1-42a3-bc69-a0199cb673fe','ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a','0b5f44d6-5b27-434f-98c4-1714f43029e4'),('b790cecc-4c2b-42bb-9256-ee80369c04d2','31e2e55d-3a4f-46a3-a975-c5d900cf97d5','edccb89e-efd0-4849-b0b3-489197784c5f'),('ba3f9014-281e-4e0d-828e-e3020a96e551','de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc','2b783415-8e6d-43c9-83e2-81b7a0d82882'),('bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0','2fb9d74c-bb13-4833-a2a2-fc5d09d8e374','540e79c4-a0a9-47af-8186-a064378c4338'),('c2c301b5-8404-42b6-a687-5e1b4880dffc','6323fba8-3e59-4d04-b666-dc9e54f915bd','6e86f033-d9b5-4afc-91e6-60fb4167d587'),('c7acb121-5adc-40e7-9280-42b7d335df3b','e86b663a-44ee-4663-9318-cdf677b27e09','90fd6ef3-34c3-4941-af3d-401a544aee72'),('c87e3e0c-01cc-4c2e-8eb4-ea64a0457540','1e07f41d-1838-4312-8bee-8b53faa03478','4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db'),('c8b31340-41d9-4791-b28a-98fc1b0c6337','604fffe7-95b2-42f7-b732-f8ce0fc2e86f','83962e21-18e3-4033-b060-cf9ec2047dc8'),('cfadce12-10c8-44aa-b8c8-33e8d42d4f0b','96e6f5ef-954a-4ada-8af2-be55214b84e9','8d1251c3-998e-4112-b090-31a9f6a0174e'),('d06314e2-9492-4926-8578-77c3ad030340','46d81d9a-df69-4929-9425-d58186b88f74','c92509fc-c7db-46ef-b784-b93a37d88c1c'),('d3ab2776-89d8-4851-b8d3-249b81d94841','55622aa1-bea9-40f3-98b2-d32f6e44dd60','e62251d5-657c-4f48-91c4-f31f14923a71'),('d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab','604fffe7-95b2-42f7-b732-f8ce0fc2e86f','55622aa1-bea9-40f3-98b2-d32f6e44dd60'),('e75558be-6134-4567-b4f9-8d1b5c7bc548','77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c','cd34c226-8b87-45bf-8e76-f88f1b2052b9'),('e92c7b50-ba87-4827-91f3-c2f18b549f4d','edccb89e-efd0-4849-b0b3-489197784c5f','6849be14-3caf-46e4-9a8d-c2faa01751ca'),('f0f0f62b-20e7-433c-9822-4b45d0ace9ae','6849be14-3caf-46e4-9a8d-c2faa01751ca','29b27a99-e952-411f-b79d-62370cc50a34'),('fcbd2d31-d162-4306-93db-1ba4037998ff','8d1251c3-998e-4112-b090-31a9f6a0174e','83962e21-18e3-4033-b060-cf9ec2047dc8'),('fd8b9ab2-c638-494e-a4a2-8baea8bba478','2b783415-8e6d-43c9-83e2-81b7a0d82882','0b5f44d6-5b27-434f-98c4-1714f43029e4');
/*!40000 ALTER TABLE `associatedsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balise`
--

DROP TABLE IF EXISTS `balise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balise` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `baliseType` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `defaultTelegram` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XCConE×XCBlse` FOREIGN KEY (`id`) REFERENCES `controlentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balise`
--

LOCK TABLES `balise` WRITE;
/*!40000 ALTER TABLE `balise` DISABLE KEYS */;
INSERT INTO `balise` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c','fixed','90127fc020237fff'),('07be4875-623f-4b25-8e32-e79bbf929a08','fixed','90127fc020247fff'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b','fixed','90127fc0201c7fff'),('1985bab8-1465-4ac3-bfa5-800d7890028c','fixed','90127fc0201f7fff'),('1e351385-524e-4fd5-b3e3-eab03383143f','fixed','90027fc0201f7fff'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf','fixed','90027fc02021ffff'),('1e9a5717-0aa3-479a-8969-57e3af52b542','fixed','90127fc020217fff'),('26e05d9a-5f77-4fc8-bab2-9910b373c083','fixed','90127fc0201effff'),('27f9d7c5-a439-47b4-9f38-1177586cbe19','fixed','90027fc0201cffff'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918','fixed','90127fc02023ffff'),('364e6b35-3705-4390-8bd7-9c4c069540a9','fixed','90127fc0201dffff'),('38069531-1026-4b46-a572-b128c18ec18c','fixed','90027fc020227fff'),('3ad1de23-c02e-41e1-bec6-c625933d14e9','fixed','90127fc020207fff'),('47529a09-a1cc-4ebf-8955-a16c39303eae','fixed','90007fc0201bffff'),('4b096cf3-4b8f-4075-b049-33927c60cc0d','fixed','90127fc020227fff'),('4db19623-8331-4c81-9b7c-e8aebc03033b','fixed','90007fc02019ffff'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0','fixed','90027fc0201affff'),('50b05f70-ca53-4964-9a79-37222d7b275d','fixed','90127fc0201a7fff'),('588b9192-e349-4031-bd8e-49dc16f19ff9','fixed','90027fc0201d7fff'),('667477b7-e08a-4abe-906e-86bebc26b3bb','fixed','90027fc020217fff'),('767b79cf-a053-4a00-b820-d093d68fd8b6','fixed','90027fc020257fff'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5','fixed','90027fc0201a7fff'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8','fixed','90027fc02023ffff'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e','fixed','90027fc0201dffff'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5','fixed','90027fc0201fffff'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d','fixed','90127fc0201fffff'),('852f242d-cca6-4f21-b84b-9b9467ec7c65','fixed','90027fc02020ffff'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb','fixed','90027fc020207fff'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d','fixed','90027fc020237fff'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17','fixed','90127fc02021ffff'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca','fixed','90127fc0201cffff'),('902dcdf8-7eb9-4444-af86-33193215bd88','fixed','90127fc020197fff'),('9da483cb-9261-4fce-9b03-38d802585935','fixed','90027fc020197fff'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617','fixed','90127fc0201d7fff'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014','fixed','90007fc02024ffff'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f','fixed','90127fc02020ffff'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c','fixed','90027fc020247fff'),('b797f47e-a543-4bf4-979a-4083aba0000b','fixed','90127fc0201b7fff'),('c2e508ab-139c-4601-84fe-6e534344ce92','fixed','90007fc02022ffff'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be','fixed','90127fc020257fff'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c','fixed','90027fc0201b7fff'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498','fixed','90027fc0201c7fff'),('eab7199d-6752-4d03-bf26-09241d91aa4c','fixed','90027fc0201effff'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1','fixed','90127fc0201affff');
/*!40000 ALTER TABLE `balise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseobject`
--

DROP TABLE IF EXISTS `baseobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baseobject` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseobject`
--

LOCK TABLES `baseobject` WRITE;
/*!40000 ALTER TABLE `baseobject` DISABLE KEYS */;
INSERT INTO `baseobject` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e'),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb'),('01a9c127-6e7d-48f7-bc10-09ee80a2dcd6'),('02916d74-c19b-4ec8-a202-765d79335dfa'),('02999a8c-af0f-4248-af0f-eef490cd7e31'),('0454ad4e-62dd-4d83-9ca9-221425631ba3'),('04838aab-69d4-4692-94d3-8b4f983a724c'),('049e46b5-aa9d-419d-8fc2-de61cd56c90b'),('05306e38-c960-47ca-9086-00f839c7fa60'),('057b3705-5231-4cab-b9b9-17aa1bf89241'),('0612824a-6987-4dbe-973d-9c25690c6cc0'),('068efa91-3a50-410d-acdc-39be07eeff11'),('06e1aa7f-78b4-468e-9296-0a59f1a1c87b'),('0755058c-99ca-4a02-8f95-5e2ae1bcb75c'),('07a60544-71bb-429c-9abc-40a924e1e99a'),('07a62d49-93b2-41c6-9c39-5c717f62af64'),('07be4875-623f-4b25-8e32-e79bbf929a08'),('07dff07d-6d34-492a-9ea1-aafe5b5211f4'),('09c172cb-7163-4a38-8644-2af203bd0ce3'),('0a6afc2d-f09a-457b-b320-92bb1677d994'),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae'),('0b0e998f-5e3d-4e98-aff5-9b3594801b79'),('0b5f44d6-5b27-434f-98c4-1714f43029e4'),('0bad7d72-6beb-4b0f-b54b-49122febc1c8'),('0c1aeac1-0e69-42f5-a787-a990d8561dab'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b'),('0cf67c3a-fae0-4139-97c0-828958395118'),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614'),('0e782fd6-80b9-4327-a748-bca404381449'),('0ee06538-e727-4864-b710-b6a25e4de51b'),('0ef72324-b415-4fe0-92df-7a1161b2c7c2'),('0faf9536-e80c-41da-97d6-0c86a231eae8'),('10904523-b07c-4652-9101-026c66f9f1f0'),('10c7296b-cb20-40c9-9890-e10992e4d8b2'),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13'),('11044084-740c-4b7d-a3b1-93b73170a68a'),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e'),('12303966-2516-4133-a476-019e4d6f4f0f'),('137a806f-f544-4de0-b386-3ea291a9a984'),('13882ddc-3ee7-4e29-8ec0-07333fde5e26'),('13974828-1903-4364-9f69-eb7fd8d0e838'),('14cc5352-77a4-4f52-a159-1838c5b238aa'),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f'),('174036a8-0646-4a6d-a201-d02c9199c025'),('17878bf8-4a92-4420-aaff-02a80a6f2443'),('18104740-d288-4f26-8aea-0b3c82a7131a'),('18216b6b-d689-41d2-b7aa-e0d8fe262651'),('182c0435-11ce-40ad-bfd9-11c884b0194f'),('1849e717-b04f-4485-b3d8-e1795654ddbf'),('18c5e944-0e18-4d27-94b1-ca7496ba4721'),('18cc266a-fd28-4f2c-8867-e2f6c58b957d'),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58'),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5'),('1917257c-1f1a-4880-be8a-8557c13a78af'),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd'),('1985bab8-1465-4ac3-bfa5-800d7890028c'),('1a1d1211-a95a-47ac-8a64-b9583aaec3db'),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9'),('1a4b96ee-da61-43e8-ac78-525a85b5ae36'),('1b701ddf-3aec-4b66-871e-2033ad6d3296'),('1b796be0-fdec-438d-a31a-752f7bec3dcf'),('1bc3b810-3633-4af5-9255-f606ec3c6c6a'),('1c64062a-3ff7-4b09-a503-23edad1d9d75'),('1c88f911-9386-4ca3-adff-9f0904bd8ab3'),('1cee0a14-8f30-4702-9fbc-229e21157552'),('1d3c1dc1-22d3-4506-a640-634676fd350d'),('1d88281c-80fd-4264-b243-b78d7cf230da'),('1e07f41d-1838-4312-8bee-8b53faa03478'),('1e351385-524e-4fd5-b3e3-eab03383143f'),('1e6a5850-068c-42de-bce3-cb132b3464ca'),('1e74043e-3d84-4ab4-9466-580bc61511d3'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf'),('1e9a5717-0aa3-479a-8969-57e3af52b542'),('1edfd449-da6c-4780-af68-fa2bd5241689'),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57'),('2019841b-5c4a-436f-b962-b5ea3b07a300'),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9'),('2135642f-501f-4c17-9be0-e30f77b004f8'),('227b147c-9ca0-45fb-8127-37c0e76dd2fe'),('236f1fd0-3707-436d-9b2e-55d007289ec3'),('25455e34-bfd1-4177-bc50-693cef286b76'),('26d2a50f-7c07-476a-9237-ff664c89761f'),('26e05d9a-5f77-4fc8-bab2-9910b373c083'),('26ee3b2d-f58b-462b-adb5-d159090c88ea'),('276a2a9d-d81c-4ccb-9695-13e810edaf6e'),('2799d78e-8416-409b-8c09-80b21cf7d036'),('27e1ccd9-c298-481c-b244-4f0f5c4edb10'),('27f9d7c5-a439-47b4-9f38-1177586cbe19'),('28bb66f2-f928-4370-b735-e822bd951df4'),('29417886-5c69-4ef5-9daf-0842415935ec'),('2950249d-ad0f-434c-be25-fb94c9b87a11'),('29b27a99-e952-411f-b79d-62370cc50a34'),('2a70d8c9-9d63-4e4f-830a-ef9436677df1'),('2aa4a136-53f4-4230-a87c-9c4002bd6b26'),('2ac252cc-1a23-48be-8d6e-4b86a07e93ab'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918'),('2b46747a-1982-40ea-8aa4-1047c16abf0c'),('2b783415-8e6d-43c9-83e2-81b7a0d82882'),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4'),('2d33f61b-4519-4f66-9351-ac6b766e619f'),('2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77'),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751'),('2fa6ed09-b298-419d-81f9-674200c80c84'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374'),('2fcd1de4-b5dc-4de1-b424-9356231d9161'),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7'),('2ffb28ca-96f5-4459-ae92-79b326322198'),('300a5be5-5a15-4e94-a3a7-b95a97df0079'),('301a9233-7757-47e1-a9ba-b2970fd8e4f2'),('304cf976-6b08-4b45-bc22-a8cc5866d313'),('31134ddf-2269-4578-895c-b6ccedc0dbaf'),('31475acb-0c21-48ed-aa9a-28f5383f7075'),('31de7e27-a7f4-418b-9cea-6b944a865607'),('31df2e28-a114-4e23-ae59-99f4b0b66f1e'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5'),('3210fb48-65a6-4e87-b4da-b1f30ab958b5'),('32617a21-0ae9-4486-9189-8463111e5ddc'),('329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f'),('32b72542-f146-44ed-ae59-0d0dd898339b'),('333ae376-6658-4fbe-86d7-de80ebceeeef'),('34d359e3-a53f-48e2-9ff9-7accddd90824'),('34e34729-eaa9-4a11-89d5-d526568c4de5'),('35705e47-f346-4c5e-b340-22f276d6adaa'),('364e6b35-3705-4390-8bd7-9c4c069540a9'),('3660591b-7979-4873-8566-6de58976950b'),('3660f6eb-4ba5-463c-9133-c0fc6b28c300'),('38069531-1026-4b46-a572-b128c18ec18c'),('390fa6af-7512-4ceb-a0fc-0b5728642d73'),('39bb825c-0d68-4c44-b669-3ce7eab6f7cd'),('3a13352d-376d-4a8e-aa0a-1db5621be935'),('3a517cb2-f2ed-462c-b281-cf46dbff99b2'),('3a6660ea-f800-4917-86a1-75fee90d9a55'),('3ad1de23-c02e-41e1-bec6-c625933d14e9'),('3bc42c44-6215-4305-aeed-640f7086c018'),('3bc94d92-e9d6-4e64-9030-41016ddb04b1'),('3c9b6391-91ec-4453-8a30-87809d4f941f'),('3d13e88f-1c88-4ba9-893b-4eccca61e442'),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62'),('3f9635d8-6460-46cb-9d74-0293aba82e86'),('40c7336f-927f-4370-8052-59b17324daff'),('40f2d16c-8dd0-4198-ac74-c260235c0e67'),('4258eb32-f565-4699-9af0-2589898ad991'),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a'),('42db04f7-224d-4185-96bd-83ef78e295e9'),('4335eda7-7674-4541-aa8b-05dbf8fed356'),('43432693-5c55-426d-a5a7-f62bb0af67d1'),('43a66cb9-46bb-4934-a30d-fe6473785ce4'),('44b12111-a06c-4204-8d73-55794b6f99c3'),('452e59d2-c784-44cd-abbf-d13d8e793bb3'),('46268b2b-146f-4873-9019-3ca4899ff14e'),('46d81d9a-df69-4929-9425-d58186b88f74'),('472b07e6-155e-4e7c-b4c6-754011559fa8'),('47529a09-a1cc-4ebf-8955-a16c39303eae'),('47c1ed7b-fa77-4c81-8eef-69845d4df868'),('47f2dcef-dc53-4ab3-9966-24205149f4db'),('48abe320-b800-4f48-adad-4dc503c54ff4'),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8'),('4a0cfe80-ab79-4e4c-b58e-610501e057b6'),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c'),('4b043639-bc5f-411d-a741-276ad262b786'),('4b096cf3-4b8f-4075-b049-33927c60cc0d'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db'),('4c17ba4b-d54d-4077-908f-0d9e704fa72d'),('4c75c162-40e4-4234-99b7-dd1bf2632987'),('4cc213cc-0574-4914-847e-85b32f056ac1'),('4d228e7c-b38d-43a1-8409-f854fcf6f4fb'),('4d4cd0b1-de2f-4e78-9602-61046c05b411'),('4db19623-8331-4c81-9b7c-e8aebc03033b'),('4de555a2-1809-4454-a63a-ef9ebb2c10d7'),('4e0651b8-8283-451e-bb70-2d42f89887e0'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0'),('4ecf7943-7873-434d-89b6-1a486f85b77a'),('4f64ca12-091c-4f47-9f40-ea0484f6355e'),('502f79a5-db67-4315-bbdf-37b467100783'),('50b05f70-ca53-4964-9a79-37222d7b275d'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b'),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc'),('51a216f2-f50f-4aa0-a579-311484a65253'),('51ab9fed-6e7c-4063-9744-8ae03edf5399'),('5289a274-9b12-4f64-8b33-5a564f60f66a'),('53eae429-bde8-4f96-81c9-db833b7f4c25'),('540e79c4-a0a9-47af-8186-a064378c4338'),('555ceaae-2ac9-4485-8eec-58081bdf8b89'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9'),('55c9d3a3-872b-47ac-8ed2-437eff14f306'),('5624dd54-16ce-4175-ad65-7da103f964f6'),('5695c0f7-ceeb-4127-8c5c-2da3a5932225'),('56a71c7d-430d-428a-92ac-44f0862e7290'),('56e7182e-8c69-458c-9fcb-f6058279ccc2'),('588b9192-e349-4031-bd8e-49dc16f19ff9'),('59256249-29ed-4480-8caf-7e849c938987'),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456'),('5ad462db-8cb2-45ff-9329-183dcca47d22'),('5b0024c1-cdc8-48bc-b3ca-42dce781d302'),('5b525c9d-40d5-4291-93b1-a81128ed5464'),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46'),('5baa6010-3a05-4152-8eaa-082bfb523b59'),('5d12f423-f1fc-4f9c-8e9e-90c455c91874'),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d'),('5eaab8bb-d072-4760-8454-a9721316d2ab'),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37'),('5f32d8ef-5e29-4613-ab0e-c8d666704229'),('602bb3ce-12a2-4288-bc2b-25130d4f677e'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f'),('60720144-4d50-4215-a779-d1234f6be5da'),('60c63f89-bd12-40a7-aed6-998035edde3e'),('62407317-922e-4bbd-b03d-50a180f09885'),('6268314a-6dcc-477e-bb20-6d821036e607'),('6323fba8-3e59-4d04-b666-dc9e54f915bd'),('63a59af7-cc0b-4708-838d-4ef36ca39ab3'),('6402006a-735d-4a5b-ad17-f2c24e687c76'),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46'),('65100f76-ecee-4c9f-876e-b36b1053d4f8'),('65c9da5e-9af7-4075-aca5-38083216f665'),('65d15f20-5245-422f-9d5b-82b147a4de25'),('66400b90-fc89-4b24-9d02-9e189e7cd818'),('664edb17-58a7-4d18-8245-4fe0d5c087e6'),('667477b7-e08a-4abe-906e-86bebc26b3bb'),('66768df2-d6e3-4ada-b0de-c95e3302d413'),('675c7023-72d2-458f-9fcd-5eb619762ce4'),('683d40f0-f025-4f42-8929-a31c82e460c4'),('6849be14-3caf-46e4-9a8d-c2faa01751ca'),('68b433fb-af0f-439b-9cbc-4f434e7a120b'),('68f5763b-5a8b-4260-9446-54ca77be3ccc'),('69033d61-b770-471d-8c72-06984e8bc294'),('69f83619-c907-4dc9-aaba-8d78d4bccc53'),('6a7fe213-9090-4d79-b810-9591f0e63f08'),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c'),('6ac2e221-044e-4727-813b-c91e96f1d59f'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3'),('6b080122-3982-49d5-b741-bdacf5418861'),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0'),('6be06976-a899-4cb8-a743-1410095d607c'),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0'),('6caa269f-85ba-4870-832e-781f5a9753da'),('6d43b482-4704-4243-9c8b-04de791a82ed'),('6e86f033-d9b5-4afc-91e6-60fb4167d587'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f'),('705898a1-bda4-463b-b9d9-37b1e8dd3eff'),('709c7842-b7fd-4915-95bb-e4e57201d4ad'),('711cc632-431e-4274-8410-ef4b6a794b6c'),('71600112-3966-4a9a-852e-b2f02aebc7db'),('7254b735-486d-4f37-b30f-7f5c78476a22'),('728a9d52-1579-4f8b-825a-83982608d9a1'),('731e2b71-dccb-499b-b406-369328f6330f'),('73cc4a98-e747-4b2d-80ec-f250208a5e2e'),('73dd753b-0449-45d1-b198-418c8daa56d0'),('743af29b-6935-4660-a6cb-5f3c25066961'),('744847d0-494b-4805-8628-07d25058237a'),('758cb070-5e99-4cbe-93b5-d10e122c9505'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd'),('767b79cf-a053-4a00-b820-d093d68fd8b6'),('769dc71a-26e6-42d5-af92-7b1b6b187443'),('76f9e8c6-023a-403e-842a-a5eeea4916da'),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c'),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5'),('7975c16b-0243-42c3-a686-74469e0302e3'),('7989faf8-b33d-447b-a18e-ca4f70c29909'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a'),('7b472dde-a145-4a5c-ac30-05191a01b693'),('7bd3f369-45ea-4bd5-a83c-0d74df0002cb'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8'),('7c77b497-f2dc-482c-a0bc-383a952a2da4'),('7e15063b-4f15-4845-911a-3aef4da09c1e'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e'),('7f804017-4582-4242-9943-a0e5a9600b88'),('7f88dee8-a634-4f41-8717-8e8befe6feab'),('7fb51a90-c9a7-43e1-b51f-fab92cf9304e'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d'),('83183263-5091-4103-82d1-56129605415a'),('837a119a-ad62-469d-96f6-a216fe5a2629'),('83962e21-18e3-4033-b060-cf9ec2047dc8'),('84b04a57-2047-428d-98e7-7a8d7deedaef'),('852f242d-cca6-4f21-b84b-9b9467ec7c65'),('86dae328-33e0-4a44-a287-3c8361521bf6'),('87ccd3fb-8235-45ab-86f2-9df058c8b942'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb'),('8877868b-e670-45be-9823-b9ea6a603763'),('88a25ad4-d98e-4686-93ef-f77367bfd320'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230'),('89fee055-9c00-4c56-86e4-4cc138eccabc'),('8a5f326f-fbca-4519-ad9b-cf9991f5725f'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d'),('8bb66c7b-65a4-42dd-9368-3ae036e9cb6c'),('8c95a69b-6fae-4954-bf87-d0063195f568'),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4'),('8d1251c3-998e-4112-b090-31a9f6a0174e'),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca'),('8effeebb-7679-474b-b187-43f91542b714'),('902dcdf8-7eb9-4444-af86-33193215bd88'),('90fd6ef3-34c3-4941-af3d-401a544aee72'),('9108bd03-6144-4693-ba6e-7174b11c6db6'),('910d1e73-4df6-4b15-9745-8c77e564c67a'),('912e925b-edf3-4f36-8509-8d5ae4177750'),('9178b6af-7b8f-4127-a36d-a334e7aabfd9'),('91b1be25-3841-44cd-b31c-0c7ac5f77778'),('91eb52a9-c3f3-484e-9651-a386273a648b'),('923d2761-9734-4980-9684-60d9cf01902d'),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0'),('93afbf8e-415c-43a3-9134-f89357902809'),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3'),('94dcacd1-b692-4220-b615-d8502b5482a4'),('950dcb66-d81f-47d8-a057-e01e36d4e9bb'),('9520e575-0983-40f8-b0f0-2e8ecea6fe42'),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7'),('95c78591-a626-4b1a-b1a3-bafb8a7b3d48'),('95cd2cf1-dcc5-48b1-b88f-66875cca638c'),('96e6f5ef-954a-4ada-8af2-be55214b84e9'),('9735ba6c-1663-49e3-a3da-e7bd85f45948'),('9736089b-e2b9-48db-bf62-9f8849c8f350'),('975460d1-4453-450f-bf6c-14727d8f9df3'),('976543b9-5aed-4800-b023-dd34856ea1d8'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8'),('97c85f99-c081-4d1f-9d1d-48731a056fd6'),('97d85633-a337-4890-b396-c24d0e9cd705'),('98b22019-6332-47e8-9b02-4ee53b052583'),('98c32492-27fb-469f-a864-84502bb4fc02'),('98df0731-144c-4cbb-8f26-125cc7e4b795'),('993fd49f-ada9-44a9-8c8d-775605015284'),('999596ab-4774-4d1d-8c05-d51787e24122'),('99d0d301-dff8-42b9-acd4-7ced58e511ff'),('9a010ba7-7c2d-42ce-9925-ffc97f988d71'),('9a1f4355-cf42-4821-a8d9-948ed71d73b4'),('9a67c071-1b66-4716-b1aa-f1a06fd7e057'),('9b7958b1-92d5-4657-aeac-fd960ee6098f'),('9b825acc-e081-4bcc-a3d1-993da20dc22e'),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8'),('9da483cb-9261-4fce-9b03-38d802585935'),('9ea0fdd8-8f7c-4182-a7bb-999035956d26'),('9eca42f9-c247-4dd9-810c-d09b69a96964'),('9f64a748-7af9-41fe-b5d6-81037c18ea57'),('a09f7b29-77ab-4a77-a803-053384327475'),('a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5'),('a2af9a5c-24c7-49db-b134-f53d013fe244'),('a2f869ae-8e63-4d38-a3cc-8575e3da090f'),('a3be6484-6f78-436c-b82e-d6ed9c730cd8'),('a47a3400-4286-41c7-9fc9-d7c378fbe838'),('a4fcc78c-7a5c-4829-868a-4636e194a11b'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617'),('a596f918-2df5-419e-b9c9-032ce481b5f5'),('a670b4bf-f87c-4055-92f9-f86bda09e690'),('a6919436-9467-416c-a065-95d8e6aab4d3'),('a6d5c9bf-91c5-49a7-9140-081fd57543f2'),('a75b2734-30a3-45eb-bc21-dc328b7377f9'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014'),('a85b007e-f3a6-41d8-9f1e-990357683971'),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f'),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f'),('aab99697-56d1-40db-9588-b36739412118'),('abf5000f-f2f4-45d5-94aa-325e8436db2b'),('ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28'),('acd25e23-c017-425b-8474-b8a948a5d2b3'),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a'),('ad8e224c-9472-4336-8c17-01afb6abac72'),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add'),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d'),('b045c8a6-425d-45e5-9254-f9207728797f'),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e'),('b1cdc087-91b0-4c31-a290-e2e37e093822'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af'),('b58a4779-70c1-42a3-bc69-a0199cb673fe'),('b60d85e1-876e-4be4-a272-742312b08722'),('b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05'),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0'),('b78ed092-2ba8-43a7-a753-6063dd9c51b9'),('b790cecc-4c2b-42bb-9256-ee80369c04d2'),('b797f47e-a543-4bf4-979a-4083aba0000b'),('b7e84a87-f16f-4328-bb12-7bc289b26296'),('b831b034-cc95-4147-b665-1e6294bd8d60'),('b9c1002a-f334-4681-a689-143962e24899'),('ba3f9014-281e-4e0d-828e-e3020a96e551'),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70'),('ba9e650f-7ffe-426d-b658-9689e18196eb'),('bb02e0f9-fa84-49af-aff9-8761777ec907'),('bb0578b7-9d71-4681-b46c-ce934e5755aa'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42'),('bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0'),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6'),('bc6a6a38-72f0-4b18-aba9-edbd52852068'),('bddb0084-0ed2-4e64-aa02-a524c8ad303f'),('be3faccb-b557-4c65-90f7-976c401b396a'),('bea3fc59-365d-4253-a5a1-3e225acf1106'),('beac405a-a4bd-490d-9335-9638e001f937'),('bedcbb5b-c119-451d-ae3a-7204f0c7335a'),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9'),('c0959fcb-5b54-437f-8df5-a59e729a70b9'),('c13536c1-5744-48f4-9649-b9d3e1e475cb'),('c19bffaf-a310-4000-9c1c-f6f9fc060334'),('c2304be5-282a-4a5a-9ec3-e1149284cd7a'),('c23a4cdd-854d-43e1-aa03-3a208dbca255'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18'),('c2c301b5-8404-42b6-a687-5e1b4880dffc'),('c2e508ab-139c-4601-84fe-6e534344ce92'),('c34b71c4-bc7a-4edc-8635-3ba6b6590875'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b'),('c501feb3-249e-4642-975c-4abf9c4693d1'),('c5393e9f-2c65-40bd-a2ac-32db50845885'),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1'),('c5b6fca1-d851-45b7-8f06-88ffb213388a'),('c6aac27c-8056-4c86-85ab-8983ab87362a'),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57'),('c7acb121-5adc-40e7-9280-42b7d335df3b'),('c7b47338-c191-41d5-a057-4f358d40f168'),('c7e98354-6400-4724-bf19-138669b25993'),('c87e3e0c-01cc-4c2e-8eb4-ea64a0457540'),('c8b31340-41d9-4791-b28a-98fc1b0c6337'),('c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e'),('c92509fc-c7db-46ef-b784-b93a37d88c1c'),('ca3911af-3dfb-40c8-9dd4-78d8041ec767'),('caa8b599-c00d-49a8-80f2-de9563e30727'),('cd34c226-8b87-45bf-8e76-f88f1b2052b9'),('cef21db7-8e06-4249-903d-414e105e393e'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565'),('cf7623ee-79f2-41f3-8926-4be70c18b5bb'),('cfadce12-10c8-44aa-b8c8-33e8d42d4f0b'),('d0217043-d49e-4279-886c-ab5f133b266d'),('d06314e2-9492-4926-8578-77c3ad030340'),('d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14'),('d14d7867-359b-46d3-9f6b-be552cbd3eb8'),('d3a35778-3749-4bf8-a780-2174e09c7ff2'),('d3ab2776-89d8-4851-b8d3-249b81d94841'),('d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab'),('d4f493ce-1dd3-4e73-9981-2879b9d5f390'),('d5d929fb-4c08-4721-9133-e8d72b64c258'),('d6be8438-9759-4afa-a3bd-b5127e3a7f96'),('d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('d6d9797c-51b3-4b68-8694-42578996e395'),('d79a04c2-984b-42fa-a37c-727a591d97c6'),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf'),('d88a4e1b-eda3-4498-a736-0f18327e28ed'),('d97a3c78-7217-4297-9646-c12650f31703'),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c'),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01'),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5'),('ded1d00e-86cc-4215-a23f-3f19b849d44f'),('df82f85d-2287-4c4c-9a90-e3c5bba67472'),('df9be0f4-adcb-4f7e-aafd-456e4f88c309'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a'),('e2099fd4-fd51-44cd-9075-223d1012a9f0'),('e2b25350-e7e3-4b7b-998b-b4652628f816'),('e2b45cd7-e832-4479-8f5f-d595f4749a9f'),('e31f9825-79e0-4962-b3ef-01f27a8e7306'),('e35e08b2-a11c-494d-930a-2f79221ffb11'),('e41cc1aa-986a-489b-a7d0-5e1ed6ced26c'),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea'),('e4d83c88-8d4c-4d49-9a44-aee678d348c7'),('e62251d5-657c-4f48-91c4-f31f14923a71'),('e75558be-6134-4567-b4f9-8d1b5c7bc548'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498'),('e82add42-7c89-4649-af77-4ef4b207ad70'),('e86b663a-44ee-4663-9318-cdf677b27e09'),('e88c465d-1230-4048-9b9a-4c0c6b472ef1'),('e92c7b50-ba87-4827-91f3-c2f18b549f4d'),('e9e0da43-7fa5-4047-8950-2fd7eb583a05'),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90'),('ea29b33d-fda1-4486-935f-bd100ad73ffd'),('ea7f117e-3360-48a5-91af-6020881e2c46'),('eab7199d-6752-4d03-bf26-09241d91aa4c'),('ecee46bf-489a-44ca-82ca-609505c0e0ef'),('edccb89e-efd0-4849-b0b3-489197784c5f'),('edd50a61-b972-4d59-96ae-177971c5dda9'),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b'),('ef76601b-831e-480b-adcc-aee620a5573f'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7'),('f0f0f62b-20e7-433c-9822-4b45d0ace9ae'),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd'),('f2b4e265-77ac-4719-8386-657a58fa6171'),('f4f96fc0-ba93-4cf5-908c-647010a61011'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1'),('f6ccf006-01b3-4a85-9256-392d53ef6874'),('f7197abd-a814-4258-888f-fb5359da5611'),('f75e1fec-93b8-4869-adb0-2f04ff90c42b'),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73'),('f7c3c234-51ee-4df5-9e7e-a31e89cef3e5'),('f860871e-64fa-4ade-800f-46c299ecdf65'),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340'),('fb0401d8-3853-4eda-b9fd-f6d28dde228b'),('fb9a6ee2-d46f-4830-9680-7d5219a40a99'),('fc1601a1-454a-4e53-ae5f-7458fb31bdde'),('fcbd2d31-d162-4306-93db-1ba4037998ff'),('fcc6268a-284f-4717-af93-0c3534205ba3'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7'),('fd8b9ab2-c638-494e-a4a2-8baea8bba478'),('fe5d9832-de82-498b-901a-042928d774c8'),('fec4df34-db16-43f4-867e-ed077dad202a'),('fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f'),('ffafaa1c-1f6b-43e3-b862-758a52c04f35'),('fffea957-d9b4-4e33-804b-18d8b95ffd9e');
/*!40000 ALTER TABLE `baseobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circulararchc`
--

DROP TABLE IF EXISTS `circulararchc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circulararchc` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `radius` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGCAHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circulararchc`
--

LOCK TABLES `circulararchc` WRITE;
/*!40000 ALTER TABLE `circulararchc` DISABLE KEYS */;
INSERT INTO `circulararchc` VALUES ('0b021a04-9a2b-4850-86f2-d4d7124e76ae',-5400),('0e782fd6-80b9-4327-a748-bca404381449',-860),('18216b6b-d689-41d2-b7aa-e0d8fe262651',-860),('32b72542-f146-44ed-ae59-0d0dd898339b',-6200),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8',-10000),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af',10000),('c6aac27c-8056-4c86-85ab-8983ab87362a',860),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa',-7100);
/*!40000 ALTER TABLE `circulararchc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothoidhc`
--

DROP TABLE IF EXISTS `clothoidhc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothoidhc` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `radius0` double DEFAULT NULL,
  `radius1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGClHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothoidhc`
--

LOCK TABLES `clothoidhc` WRITE;
/*!40000 ALTER TABLE `clothoidhc` DISABLE KEYS */;
INSERT INTO `clothoidhc` VALUES ('1e74043e-3d84-4ab4-9466-580bc61511d3',0,-860),('5f32d8ef-5e29-4613-ab0e-c8d666704229',860,0),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230',0,-860),('9f64a748-7af9-41fe-b5d6-81037c18ea57',0,860),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42',-860,0),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b',-860,0);
/*!40000 ALTER TABLE `clothoidhc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositionnetelement`
--

DROP TABLE IF EXISTS `compositionnetelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compositionnetelement` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TNetEl×TCNtEl` FOREIGN KEY (`id`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositionnetelement`
--

LOCK TABLES `compositionnetelement` WRITE;
/*!40000 ALTER TABLE `compositionnetelement` DISABLE KEYS */;
INSERT INTO `compositionnetelement` VALUES ('5695c0f7-ceeb-4127-8c5c-2da3a5932225'),('910d1e73-4df6-4b15-9745-8c77e564c67a');
/*!40000 ALTER TABLE `compositionnetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constantsuperelevation`
--

DROP TABLE IF EXISTS `constantsuperelevation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constantsuperelevation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `superelevation` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGSuEl×XGCoSu` FOREIGN KEY (`id`) REFERENCES `superelevation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constantsuperelevation`
--

LOCK TABLES `constantsuperelevation` WRITE;
/*!40000 ALTER TABLE `constantsuperelevation` DISABLE KEYS */;
INSERT INTO `constantsuperelevation` VALUES ('0cf67c3a-fae0-4139-97c0-828958395118',0),('42db04f7-224d-4185-96bd-83ef78e295e9',120),('4ecf7943-7873-434d-89b6-1a486f85b77a',-120),('9108bd03-6144-4693-ba6e-7174b11c6db6',0),('93afbf8e-415c-43a3-9134-f89357902809',0),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565',-120);
/*!40000 ALTER TABLE `constantsuperelevation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlentity`
--

DROP TABLE IF EXISTS `controlentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlentity` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XCCtrl` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlentity`
--

LOCK TABLES `controlentity` WRITE;
/*!40000 ALTER TABLE `controlentity` DISABLE KEYS */;
INSERT INTO `controlentity` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c'),('07be4875-623f-4b25-8e32-e79bbf929a08'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b'),('1985bab8-1465-4ac3-bfa5-800d7890028c'),('1e351385-524e-4fd5-b3e3-eab03383143f'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf'),('1e9a5717-0aa3-479a-8969-57e3af52b542'),('26e05d9a-5f77-4fc8-bab2-9910b373c083'),('2799d78e-8416-409b-8c09-80b21cf7d036'),('27f9d7c5-a439-47b4-9f38-1177586cbe19'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918'),('32617a21-0ae9-4486-9189-8463111e5ddc'),('364e6b35-3705-4390-8bd7-9c4c069540a9'),('38069531-1026-4b46-a572-b128c18ec18c'),('3ad1de23-c02e-41e1-bec6-c625933d14e9'),('3d13e88f-1c88-4ba9-893b-4eccca61e442'),('40f2d16c-8dd0-4198-ac74-c260235c0e67'),('47529a09-a1cc-4ebf-8955-a16c39303eae'),('47c1ed7b-fa77-4c81-8eef-69845d4df868'),('4b096cf3-4b8f-4075-b049-33927c60cc0d'),('4db19623-8331-4c81-9b7c-e8aebc03033b'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0'),('50b05f70-ca53-4964-9a79-37222d7b275d'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b'),('588b9192-e349-4031-bd8e-49dc16f19ff9'),('667477b7-e08a-4abe-906e-86bebc26b3bb'),('68b433fb-af0f-439b-9cbc-4f434e7a120b'),('6caa269f-85ba-4870-832e-781f5a9753da'),('6d43b482-4704-4243-9c8b-04de791a82ed'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f'),('767b79cf-a053-4a00-b820-d093d68fd8b6'),('76f9e8c6-023a-403e-842a-a5eeea4916da'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d'),('852f242d-cca6-4f21-b84b-9b9467ec7c65'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb'),('8877868b-e670-45be-9823-b9ea6a603763'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca'),('902dcdf8-7eb9-4444-af86-33193215bd88'),('9736089b-e2b9-48db-bf62-9f8849c8f350'),('9da483cb-9261-4fce-9b03-38d802585935'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c'),('b797f47e-a543-4bf4-979a-4083aba0000b'),('c2e508ab-139c-4601-84fe-6e534344ce92'),('c5b6fca1-d851-45b7-8f06-88ffb213388a'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498'),('eab7199d-6752-4d03-bf26-09241d91aa4c'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1');
/*!40000 ALTER TABLE `controlentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubicparabolahc`
--

DROP TABLE IF EXISTS `cubicparabolahc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cubicparabolahc` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `radius0` double DEFAULT NULL,
  `radius1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGCPHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
 1 AS `name`,
 1 AS `longname`,
 1 AS `numberOfFeatures`,
 1 AS `associatedLocationType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedlocationentity`
--

DROP TABLE IF EXISTS `cv_associatedlocationentity`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedlocationentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedlocationentity` AS SELECT 
 1 AS `id_NetEntity`,
 1 AS `id_AssociatedLocation`,
 1 AS `lateralSide`,
 1 AS `lateralDistance`,
 1 AS `verticalSide`,
 1 AS `verticalDistance`,
 1 AS `functionalLocationReference`,
 1 AS `physicalLocationReference`,
 1 AS `applicationDirection`,
 1 AS `locationPriority`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_associatedlocationfeature`
--

DROP TABLE IF EXISTS `cv_associatedlocationfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedlocationfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedlocationfeature` AS SELECT 
 1 AS `id_AssociatedLocation`,
 1 AS `sequence`,
 1 AS `id_AssociatedFeature`,
 1 AS `featureOrientation`*/;
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
-- Temporary view structure for view `cv_associatedpositionassignment`
--

DROP TABLE IF EXISTS `cv_associatedpositionassignment`;
/*!50001 DROP VIEW IF EXISTS `cv_associatedpositionassignment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_associatedpositionassignment` AS SELECT 
 1 AS `id_AssociatedPosition_A`,
 1 AS `id_AssociatedPosition_B`*/;
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
 1 AS `defaultTelegram`*/;
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
 1 AS `name`,
 1 AS `longname`,
 1 AS `numberOfFeatures`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_entityorientation`
--

DROP TABLE IF EXISTS `cv_entityorientation`;
/*!50001 DROP VIEW IF EXISTS `cv_entityorientation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_entityorientation` AS SELECT 
 1 AS `id_NetEntity`,
 1 AS `id_PositioningSystem`,
 1 AS `deltaHorizontalRotation`,
 1 AS `deltaVerticalRotation`*/;
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
-- Temporary view structure for view `cv_geolocation`
--

DROP TABLE IF EXISTS `cv_geolocation`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocation` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `longname`,
 1 AS `numberOfFeatures`,
 1 AS `geoLocationType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geolocationentity`
--

DROP TABLE IF EXISTS `cv_geolocationentity`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocationentity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocationentity` AS SELECT 
 1 AS `id_NetEntity`,
 1 AS `id_GeoLocation`,
 1 AS `bufferDistance`,
 1 AS `height`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cv_geolocationfeature`
--

DROP TABLE IF EXISTS `cv_geolocationfeature`;
/*!50001 DROP VIEW IF EXISTS `cv_geolocationfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geolocationfeature` AS SELECT 
 1 AS `id_GeoLocation`,
 1 AS `sequence`,
 1 AS `id_GeoFeature`*/;
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
-- Temporary view structure for view `cv_geopointassociatedposition`
--

DROP TABLE IF EXISTS `cv_geopointassociatedposition`;
/*!50001 DROP VIEW IF EXISTS `cv_geopointassociatedposition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_geopointassociatedposition` AS SELECT 
 1 AS `id_AssociatedPosition`,
 1 AS `id_GeoPoint`*/;
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
 1 AS `sequence`,
 1 AS `id_GeoPoint`*/;
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
-- Temporary view structure for view `cv_levelnetwork`
--

DROP TABLE IF EXISTS `cv_levelnetwork`;
/*!50001 DROP VIEW IF EXISTS `cv_levelnetwork`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_levelnetwork` AS SELECT 
 1 AS `id`,
 1 AS `descriptionLevel`,
 1 AS `dimension`,
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
-- Temporary view structure for view `cv_netentityrelation`
--

DROP TABLE IF EXISTS `cv_netentityrelation`;
/*!50001 DROP VIEW IF EXISTS `cv_netentityrelation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_netentityrelation` AS SELECT 
 1 AS `id`,
 1 AS `id_NetEntity_A`,
 1 AS `id_NetEntity_B`,
 1 AS `relationType`*/;
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
 1 AS `id_OrderedCollection`,
 1 AS `sequence`,
 1 AS `id_NetElement`*/;
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
-- Temporary view structure for view `cv_positioningsystemnetelement`
--

DROP TABLE IF EXISTS `cv_positioningsystemnetelement`;
/*!50001 DROP VIEW IF EXISTS `cv_positioningsystemnetelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cv_positioningsystemnetelement` AS SELECT 
 1 AS `id_PositioningNetElement`,
 1 AS `id_PositioningSystem`,
 1 AS `elementRoleWithinBase`*/;
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
 1 AS `defaultMaximalSpeed`*/;
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
 1 AS `id_SignalType`*/;
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
-- Table structure for table `elementpartcollection`
--

DROP TABLE IF EXISTS `elementpartcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementpartcollection` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_CompositionNetElement` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_TCNtEl×TElPaC` (`id_CompositionNetElement`),
  CONSTRAINT `FK÷id_BBaObj×TElPaC` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TCNtEl×TElPaC` FOREIGN KEY (`id_CompositionNetElement`) REFERENCES `compositionnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementpartcollection`
--

LOCK TABLES `elementpartcollection` WRITE;
/*!40000 ALTER TABLE `elementpartcollection` DISABLE KEYS */;
INSERT INTO `elementpartcollection` VALUES ('e4d83c88-8d4c-4d49-9a44-aee678d348c7','5695c0f7-ceeb-4127-8c5c-2da3a5932225');
/*!40000 ALTER TABLE `elementpartcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitylocation`
--

DROP TABLE IF EXISTS `entitylocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitylocation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `numberOfFeatures` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×LEtLoc` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitylocation`
--

LOCK TABLES `entitylocation` WRITE;
/*!40000 ALTER TABLE `entitylocation` DISABLE KEYS */;
INSERT INTO `entitylocation` VALUES ('049e46b5-aa9d-419d-8fc2-de61cd56c90b',1),('068efa91-3a50-410d-acdc-39be07eeff11',1),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13',1),('11044084-740c-4b7d-a3b1-93b73170a68a',1),('14cc5352-77a4-4f52-a159-1838c5b238aa',1),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f',1),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58',1),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd',1),('1a4b96ee-da61-43e8-ac78-525a85b5ae36',1),('1d88281c-80fd-4264-b243-b78d7cf230da',1),('1edfd449-da6c-4780-af68-fa2bd5241689',1),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57',1),('25455e34-bfd1-4177-bc50-693cef286b76',1),('27e1ccd9-c298-481c-b244-4f0f5c4edb10',1),('28bb66f2-f928-4370-b735-e822bd951df4',1),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4',1),('2d33f61b-4519-4f66-9351-ac6b766e619f',1),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751',1),('333ae376-6658-4fbe-86d7-de80ebceeeef',1),('3660591b-7979-4873-8566-6de58976950b',1),('3a6660ea-f800-4917-86a1-75fee90d9a55',1),('3c9b6391-91ec-4453-8a30-87809d4f941f',1),('43432693-5c55-426d-a5a7-f62bb0af67d1',1),('47f2dcef-dc53-4ab3-9966-24205149f4db',1),('48abe320-b800-4f48-adad-4dc503c54ff4',1),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8',1),('4b043639-bc5f-411d-a741-276ad262b786',1),('4c17ba4b-d54d-4077-908f-0d9e704fa72d',1),('4f64ca12-091c-4f47-9f40-ea0484f6355e',1),('56a71c7d-430d-428a-92ac-44f0862e7290',1),('56e7182e-8c69-458c-9fcb-f6058279ccc2',1),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456',1),('60c63f89-bd12-40a7-aed6-998035edde3e',1),('6268314a-6dcc-477e-bb20-6d821036e607',1),('65c9da5e-9af7-4075-aca5-38083216f665',1),('705898a1-bda4-463b-b9d9-37b1e8dd3eff',1),('709c7842-b7fd-4915-95bb-e4e57201d4ad',1),('728a9d52-1579-4f8b-825a-83982608d9a1',1),('7f804017-4582-4242-9943-a0e5a9600b88',1),('7f88dee8-a634-4f41-8717-8e8befe6feab',1),('86dae328-33e0-4a44-a287-3c8361521bf6',1),('8a5f326f-fbca-4519-ad9b-cf9991f5725f',1),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad',1),('8effeebb-7679-474b-b187-43f91542b714',1),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3',1),('9520e575-0983-40f8-b0f0-2e8ecea6fe42',1),('98df0731-144c-4cbb-8f26-125cc7e4b795',1),('999596ab-4774-4d1d-8c05-d51787e24122',1),('99d0d301-dff8-42b9-acd4-7ced58e511ff',1),('9a010ba7-7c2d-42ce-9925-ffc97f988d71',1),('9b825acc-e081-4bcc-a3d1-993da20dc22e',1),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8',1),('a09f7b29-77ab-4a77-a803-053384327475',1),('a47a3400-4286-41c7-9fc9-d7c378fbe838',1),('a670b4bf-f87c-4055-92f9-f86bda09e690',1),('a75b2734-30a3-45eb-bc21-dc328b7377f9',1),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf',1),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f',1),('abf5000f-f2f4-45d5-94aa-325e8436db2b',1),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add',1),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d',1),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e',1),('b1cdc087-91b0-4c31-a290-e2e37e093822',1),('b60d85e1-876e-4be4-a272-742312b08722',1),('bb02e0f9-fa84-49af-aff9-8761777ec907',1),('bc6a6a38-72f0-4b18-aba9-edbd52852068',1),('bea3fc59-365d-4253-a5a1-3e225acf1106',1),('bedcbb5b-c119-451d-ae3a-7204f0c7335a',1),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9',1),('c19bffaf-a310-4000-9c1c-f6f9fc060334',1),('c5393e9f-2c65-40bd-a2ac-32db50845885',1),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1',1),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57',1),('c7b47338-c191-41d5-a057-4f358d40f168',1),('c7e98354-6400-4724-bf19-138669b25993',1),('caa8b599-c00d-49a8-80f2-de9563e30727',1),('d3a35778-3749-4bf8-a780-2174e09c7ff2',1),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf',1),('d88a4e1b-eda3-4498-a736-0f18327e28ed',1),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7',1),('ded1d00e-86cc-4215-a23f-3f19b849d44f',1),('df82f85d-2287-4c4c-9a90-e3c5bba67472',1),('e2099fd4-fd51-44cd-9075-223d1012a9f0',1),('e2b25350-e7e3-4b7b-998b-b4652628f816',1),('e2b45cd7-e832-4479-8f5f-d595f4749a9f',1),('e35e08b2-a11c-494d-930a-2f79221ffb11',1),('e9e0da43-7fa5-4047-8950-2fd7eb583a05',1),('ecee46bf-489a-44ca-82ca-609505c0e0ef',1),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e',1),('f4f96fc0-ba93-4cf5-908c-647010a61011',1),('f75e1fec-93b8-4869-adb0-2f04ff90c42b',1),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73',1),('f860871e-64fa-4ade-800f-46c299ecdf65',1),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340',1),('fb0401d8-3853-4eda-b9fd-f6d28dde228b',1),('fb9a6ee2-d46f-4830-9680-7d5219a40a99',1),('fcc6268a-284f-4717-af93-0c3534205ba3',1),('fe5d9832-de82-498b-901a-042928d774c8',1),('ffafaa1c-1f6b-43e3-b862-758a52c04f35',1);
/*!40000 ALTER TABLE `entitylocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entityorientation`
--

DROP TABLE IF EXISTS `entityorientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entityorientation` (
  `id_NetEntity` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_PositioningSystem` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `deltaHorizontalRotation` double DEFAULT NULL,
  `deltaVerticalRotation` double DEFAULT NULL,
  PRIMARY KEY (`id_NetEntity`,`id_PositioningSystem`),
  KEY `SI÷id_PPoSys×PEtOri` (`id_PositioningSystem`),
  KEY `SI÷id_ENetEt×PEtOri` (`id_NetEntity`),
  CONSTRAINT `FK÷id_ENetEt×PEtOri` FOREIGN KEY (`id_NetEntity`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PPoSys×PEtOri` FOREIGN KEY (`id_PositioningSystem`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entityorientation`
--

LOCK TABLES `entityorientation` WRITE;
/*!40000 ALTER TABLE `entityorientation` DISABLE KEYS */;
/*!40000 ALTER TABLE `entityorientation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitytype`
--

DROP TABLE IF EXISTS `entitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitytype` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_YGenTy×YEntTy` FOREIGN KEY (`id`) REFERENCES `generaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitytype`
--

LOCK TABLES `entitytype` WRITE;
/*!40000 ALTER TABLE `entitytype` DISABLE KEYS */;
INSERT INTO `entitytype` VALUES ('3a13352d-376d-4a8e-aa0a-1db5621be935'),('7c77b497-f2dc-482c-a0bc-383a952a2da4');
/*!40000 ALTER TABLE `entitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generaltype`
--

DROP TABLE IF EXISTS `generaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generaltype` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×YGenTy` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generaltype`
--

LOCK TABLES `generaltype` WRITE;
/*!40000 ALTER TABLE `generaltype` DISABLE KEYS */;
INSERT INTO `generaltype` VALUES ('3a13352d-376d-4a8e-aa0a-1db5621be935'),('7c77b497-f2dc-482c-a0bc-383a952a2da4');
/*!40000 ALTER TABLE `generaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geofeature`
--

DROP TABLE IF EXISTS `geofeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geofeature` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LLocFt×LGeoFt` FOREIGN KEY (`id`) REFERENCES `localizationfeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geofeature`
--

LOCK TABLES `geofeature` WRITE;
/*!40000 ALTER TABLE `geofeature` DISABLE KEYS */;
INSERT INTO `geofeature` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e'),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb'),('0612824a-6987-4dbe-973d-9c25690c6cc0'),('07a62d49-93b2-41c6-9c39-5c717f62af64'),('0a6afc2d-f09a-457b-b320-92bb1677d994'),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b'),('0ee06538-e727-4864-b710-b6a25e4de51b'),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e'),('137a806f-f544-4de0-b386-3ea291a9a984'),('18104740-d288-4f26-8aea-0b3c82a7131a'),('182c0435-11ce-40ad-bfd9-11c884b0194f'),('1849e717-b04f-4485-b3d8-e1795654ddbf'),('18c5e944-0e18-4d27-94b1-ca7496ba4721'),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9'),('1cee0a14-8f30-4702-9fbc-229e21157552'),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9'),('26ee3b2d-f58b-462b-adb5-d159090c88ea'),('2aa4a136-53f4-4230-a87c-9c4002bd6b26'),('2fcd1de4-b5dc-4de1-b424-9356231d9161'),('301a9233-7757-47e1-a9ba-b2970fd8e4f2'),('304cf976-6b08-4b45-bc22-a8cc5866d313'),('31134ddf-2269-4578-895c-b6ccedc0dbaf'),('31475acb-0c21-48ed-aa9a-28f5383f7075'),('3210fb48-65a6-4e87-b4da-b1f30ab958b5'),('34d359e3-a53f-48e2-9ff9-7accddd90824'),('3a517cb2-f2ed-462c-b281-cf46dbff99b2'),('3bc94d92-e9d6-4e64-9030-41016ddb04b1'),('3f9635d8-6460-46cb-9d74-0293aba82e86'),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a'),('472b07e6-155e-4e7c-b4c6-754011559fa8'),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c'),('4c75c162-40e4-4234-99b7-dd1bf2632987'),('55c9d3a3-872b-47ac-8ed2-437eff14f306'),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46'),('5d12f423-f1fc-4f9c-8e9e-90c455c91874'),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d'),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37'),('62407317-922e-4bbd-b03d-50a180f09885'),('6402006a-735d-4a5b-ad17-f2c24e687c76'),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46'),('664edb17-58a7-4d18-8245-4fe0d5c087e6'),('675c7023-72d2-458f-9fcd-5eb619762ce4'),('69033d61-b770-471d-8c72-06984e8bc294'),('7254b735-486d-4f37-b30f-7f5c78476a22'),('731e2b71-dccb-499b-b406-369328f6330f'),('73dd753b-0449-45d1-b198-418c8daa56d0'),('91eb52a9-c3f3-484e-9651-a386273a648b'),('923d2761-9734-4980-9684-60d9cf01902d'),('98b22019-6332-47e8-9b02-4ee53b052583'),('98c32492-27fb-469f-a864-84502bb4fc02'),('9a1f4355-cf42-4821-a8d9-948ed71d73b4'),('9eca42f9-c247-4dd9-810c-d09b69a96964'),('a2f869ae-8e63-4d38-a3cc-8575e3da090f'),('a596f918-2df5-419e-b9c9-032ce481b5f5'),('b78ed092-2ba8-43a7-a753-6063dd9c51b9'),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6'),('c0959fcb-5b54-437f-8df5-a59e729a70b9'),('c34b71c4-bc7a-4edc-8635-3ba6b6590875'),('c501feb3-249e-4642-975c-4abf9c4693d1'),('cf7623ee-79f2-41f3-8926-4be70c18b5bb'),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea'),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd');
/*!40000 ALTER TABLE `geofeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `geoLocationType` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LEtLoc×LGeLoc` FOREIGN KEY (`id`) REFERENCES `entitylocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocation`
--

LOCK TABLES `geolocation` WRITE;
/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocationentity`
--

DROP TABLE IF EXISTS `geolocationentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocationentity` (
  `id_NetEntity` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_GeoLocation` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `bufferDistance` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  PRIMARY KEY (`id_NetEntity`,`id_GeoLocation`),
  KEY `SI÷id_LGeLoc×LGLcEt` (`id_GeoLocation`),
  KEY `SI÷id_ENetEt×LGLcEt` (`id_NetEntity`),
  CONSTRAINT `FK÷id_ENetEt×LGLcEt` FOREIGN KEY (`id_NetEntity`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeLoc×LGLcEt` FOREIGN KEY (`id_GeoLocation`) REFERENCES `geolocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocationentity`
--

LOCK TABLES `geolocationentity` WRITE;
/*!40000 ALTER TABLE `geolocationentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocationentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocationfeature`
--

DROP TABLE IF EXISTS `geolocationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocationfeature` (
  `id_GeoLocation` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `id_GeoFeature` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_GeoLocation`,`sequence`),
  KEY `SI÷id_LGeLoc×LGeLFt` (`id_GeoLocation`),
  KEY `SI÷id_LGeoFt×LGeLFt` (`id_GeoFeature`),
  CONSTRAINT `FK÷id_LGeLoc×LGeLFt` FOREIGN KEY (`id_GeoLocation`) REFERENCES `geolocation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoFt×LGeLFt` FOREIGN KEY (`id_GeoFeature`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocationfeature`
--

LOCK TABLES `geolocationfeature` WRITE;
/*!40000 ALTER TABLE `geolocationfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geometryentity`
--

DROP TABLE IF EXISTS `geometryentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geometryentity` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_ENetEt×XGGeoE` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geometryentity`
--

LOCK TABLES `geometryentity` WRITE;
/*!40000 ALTER TABLE `geometryentity` DISABLE KEYS */;
INSERT INTO `geometryentity` VALUES ('0b021a04-9a2b-4850-86f2-d4d7124e76ae'),('0cf67c3a-fae0-4139-97c0-828958395118'),('0e782fd6-80b9-4327-a748-bca404381449'),('10c7296b-cb20-40c9-9890-e10992e4d8b2'),('13974828-1903-4364-9f69-eb7fd8d0e838'),('18216b6b-d689-41d2-b7aa-e0d8fe262651'),('1e74043e-3d84-4ab4-9466-580bc61511d3'),('29417886-5c69-4ef5-9daf-0842415935ec'),('32b72542-f146-44ed-ae59-0d0dd898339b'),('390fa6af-7512-4ceb-a0fc-0b5728642d73'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62'),('42db04f7-224d-4185-96bd-83ef78e295e9'),('43a66cb9-46bb-4934-a30d-fe6473785ce4'),('4ecf7943-7873-434d-89b6-1a486f85b77a'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9'),('5f32d8ef-5e29-4613-ab0e-c8d666704229'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230'),('9108bd03-6144-4693-ba6e-7174b11c6db6'),('93afbf8e-415c-43a3-9134-f89357902809'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8'),('9b7958b1-92d5-4657-aeac-fd960ee6098f'),('9f64a748-7af9-41fe-b5d6-81037c18ea57'),('b045c8a6-425d-45e5-9254-f9207728797f'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42'),('c13536c1-5744-48f4-9649-b9d3e1e475cb'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b'),('c6aac27c-8056-4c86-85ab-8983ab87362a'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565'),('d79a04c2-984b-42fa-a37c-727a591d97c6'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7'),('ea7f117e-3360-48a5-91af-6020881e2c46'),('edd50a61-b972-4d59-96ae-177971c5dda9'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b'),('ef76601b-831e-480b-adcc-aee620a5573f'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7'),('f7197abd-a814-4258-888f-fb5359da5611');
/*!40000 ALTER TABLE `geometryentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopoint`
--

DROP TABLE IF EXISTS `geopoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopoint` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LGeoFt×LGeoPt` FOREIGN KEY (`id`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopoint`
--

LOCK TABLES `geopoint` WRITE;
/*!40000 ALTER TABLE `geopoint` DISABLE KEYS */;
INSERT INTO `geopoint` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e'),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb'),('0612824a-6987-4dbe-973d-9c25690c6cc0'),('07a62d49-93b2-41c6-9c39-5c717f62af64'),('0a6afc2d-f09a-457b-b320-92bb1677d994'),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b'),('0ee06538-e727-4864-b710-b6a25e4de51b'),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e'),('137a806f-f544-4de0-b386-3ea291a9a984'),('18104740-d288-4f26-8aea-0b3c82a7131a'),('182c0435-11ce-40ad-bfd9-11c884b0194f'),('1849e717-b04f-4485-b3d8-e1795654ddbf'),('18c5e944-0e18-4d27-94b1-ca7496ba4721'),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9'),('1cee0a14-8f30-4702-9fbc-229e21157552'),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9'),('26ee3b2d-f58b-462b-adb5-d159090c88ea'),('2aa4a136-53f4-4230-a87c-9c4002bd6b26'),('2fcd1de4-b5dc-4de1-b424-9356231d9161'),('301a9233-7757-47e1-a9ba-b2970fd8e4f2'),('304cf976-6b08-4b45-bc22-a8cc5866d313'),('31134ddf-2269-4578-895c-b6ccedc0dbaf'),('31475acb-0c21-48ed-aa9a-28f5383f7075'),('3210fb48-65a6-4e87-b4da-b1f30ab958b5'),('34d359e3-a53f-48e2-9ff9-7accddd90824'),('3a517cb2-f2ed-462c-b281-cf46dbff99b2'),('3bc94d92-e9d6-4e64-9030-41016ddb04b1'),('3f9635d8-6460-46cb-9d74-0293aba82e86'),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a'),('472b07e6-155e-4e7c-b4c6-754011559fa8'),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c'),('4c75c162-40e4-4234-99b7-dd1bf2632987'),('55c9d3a3-872b-47ac-8ed2-437eff14f306'),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46'),('5d12f423-f1fc-4f9c-8e9e-90c455c91874'),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d'),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37'),('62407317-922e-4bbd-b03d-50a180f09885'),('6402006a-735d-4a5b-ad17-f2c24e687c76'),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46'),('664edb17-58a7-4d18-8245-4fe0d5c087e6'),('675c7023-72d2-458f-9fcd-5eb619762ce4'),('69033d61-b770-471d-8c72-06984e8bc294'),('7254b735-486d-4f37-b30f-7f5c78476a22'),('731e2b71-dccb-499b-b406-369328f6330f'),('73dd753b-0449-45d1-b198-418c8daa56d0'),('91eb52a9-c3f3-484e-9651-a386273a648b'),('923d2761-9734-4980-9684-60d9cf01902d'),('98b22019-6332-47e8-9b02-4ee53b052583'),('98c32492-27fb-469f-a864-84502bb4fc02'),('9a1f4355-cf42-4821-a8d9-948ed71d73b4'),('9eca42f9-c247-4dd9-810c-d09b69a96964'),('a2f869ae-8e63-4d38-a3cc-8575e3da090f'),('a596f918-2df5-419e-b9c9-032ce481b5f5'),('b78ed092-2ba8-43a7-a753-6063dd9c51b9'),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6'),('c0959fcb-5b54-437f-8df5-a59e729a70b9'),('c34b71c4-bc7a-4edc-8635-3ba6b6590875'),('c501feb3-249e-4642-975c-4abf9c4693d1'),('cf7623ee-79f2-41f3-8926-4be70c18b5bb'),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea'),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd');
/*!40000 ALTER TABLE `geopoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopointassociatedposition`
--

DROP TABLE IF EXISTS `geopointassociatedposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopointassociatedposition` (
  `id_AssociatedPosition` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_GeoPoint` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_AssociatedPosition`,`id_GeoPoint`),
  KEY `SI÷id_LAssPs×LGPAPs` (`id_AssociatedPosition`),
  KEY `SI÷id_LGeoPt×LGPAPs` (`id_GeoPoint`),
  CONSTRAINT `FK÷id_LAssPs×LGPAPs` FOREIGN KEY (`id_AssociatedPosition`) REFERENCES `associatedposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoPt×LGPAPs` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopointassociatedposition`
--

LOCK TABLES `geopointassociatedposition` WRITE;
/*!40000 ALTER TABLE `geopointassociatedposition` DISABLE KEYS */;
INSERT INTO `geopointassociatedposition` VALUES ('02999a8c-af0f-4248-af0f-eef490cd7e31','18104740-d288-4f26-8aea-0b3c82a7131a'),('0454ad4e-62dd-4d83-9ca9-221425631ba3','55c9d3a3-872b-47ac-8ed2-437eff14f306'),('057b3705-5231-4cab-b9b9-17aa1bf89241','1849e717-b04f-4485-b3d8-e1795654ddbf'),('07dff07d-6d34-492a-9ea1-aafe5b5211f4','0612824a-6987-4dbe-973d-9c25690c6cc0'),('0b5f44d6-5b27-434f-98c4-1714f43029e4','9eca42f9-c247-4dd9-810c-d09b69a96964'),('0ef72324-b415-4fe0-92df-7a1161b2c7c2','98b22019-6332-47e8-9b02-4ee53b052583'),('17878bf8-4a92-4420-aaff-02a80a6f2443','73dd753b-0449-45d1-b198-418c8daa56d0'),('1a1d1211-a95a-47ac-8a64-b9583aaec3db','137a806f-f544-4de0-b386-3ea291a9a984'),('1bc3b810-3633-4af5-9255-f606ec3c6c6a','11d293eb-73dc-4c80-bca3-f2e7f8f8e69e'),('1e07f41d-1838-4312-8bee-8b53faa03478','5d12f423-f1fc-4f9c-8e9e-90c455c91874'),('2019841b-5c4a-436f-b962-b5ea3b07a300','07a62d49-93b2-41c6-9c39-5c717f62af64'),('2135642f-501f-4c17-9be0-e30f77b004f8','472b07e6-155e-4e7c-b4c6-754011559fa8'),('29b27a99-e952-411f-b79d-62370cc50a34','a2f869ae-8e63-4d38-a3cc-8575e3da090f'),('2b46747a-1982-40ea-8aa4-1047c16abf0c','3210fb48-65a6-4e87-b4da-b1f30ab958b5'),('2b783415-8e6d-43c9-83e2-81b7a0d82882','00762feb-9f60-4bc2-b8ca-b0effd364d9e'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374','7254b735-486d-4f37-b30f-7f5c78476a22'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5','6402006a-735d-4a5b-ad17-f2c24e687c76'),('35705e47-f346-4c5e-b340-22f276d6adaa','42a6abfc-4bcc-41f4-bed6-580a0eaf926a'),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef','18c5e944-0e18-4d27-94b1-ca7496ba4721'),('46d81d9a-df69-4929-9425-d58186b88f74','3f9635d8-6460-46cb-9d74-0293aba82e86'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db','91eb52a9-c3f3-484e-9651-a386273a648b'),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc','5eb475cf-efb9-488a-8a9a-8e0bb8072b37'),('51ab9fed-6e7c-4063-9744-8ae03edf5399','5b5577ef-8dd9-48f6-9453-0e269a2b3a46'),('5289a274-9b12-4f64-8b33-5a564f60f66a','c34b71c4-bc7a-4edc-8635-3ba6b6590875'),('540e79c4-a0a9-47af-8186-a064378c4338','182c0435-11ce-40ad-bfd9-11c884b0194f'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60','0a6afc2d-f09a-457b-b320-92bb1677d994'),('5baa6010-3a05-4152-8eaa-082bfb523b59','62407317-922e-4bbd-b03d-50a180f09885'),('5eaab8bb-d072-4760-8454-a9721316d2ab','304cf976-6b08-4b45-bc22-a8cc5866d313'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f','6508e6e7-0122-4a8c-8697-63c0b2f8ce46'),('6323fba8-3e59-4d04-b666-dc9e54f915bd','664edb17-58a7-4d18-8245-4fe0d5c087e6'),('65100f76-ecee-4c9f-876e-b36b1053d4f8','98c32492-27fb-469f-a864-84502bb4fc02'),('66400b90-fc89-4b24-9d02-9e189e7cd818','2aa4a136-53f4-4230-a87c-9c4002bd6b26'),('683d40f0-f025-4f42-8929-a31c82e460c4','0105082d-b8b8-4ef6-91e9-227e79f2e5bb'),('6849be14-3caf-46e4-9a8d-c2faa01751ca','31475acb-0c21-48ed-aa9a-28f5383f7075'),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c','34d359e3-a53f-48e2-9ff9-7accddd90824'),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0','301a9233-7757-47e1-a9ba-b2970fd8e4f2'),('6e86f033-d9b5-4afc-91e6-60fb4167d587','3bc94d92-e9d6-4e64-9030-41016ddb04b1'),('711cc632-431e-4274-8410-ef4b6a794b6c','26ee3b2d-f58b-462b-adb5-d159090c88ea'),('7989faf8-b33d-447b-a18e-ca4f70c29909','2fcd1de4-b5dc-4de1-b424-9356231d9161'),('83183263-5091-4103-82d1-56129605415a','0ee06538-e727-4864-b710-b6a25e4de51b'),('83962e21-18e3-4033-b060-cf9ec2047dc8','731e2b71-dccb-499b-b406-369328f6330f'),('87ccd3fb-8235-45ab-86f2-9df058c8b942','1cee0a14-8f30-4702-9fbc-229e21157552'),('8c95a69b-6fae-4954-bf87-d0063195f568','c0959fcb-5b54-437f-8df5-a59e729a70b9'),('8d1251c3-998e-4112-b090-31a9f6a0174e','675c7023-72d2-458f-9fcd-5eb619762ce4'),('90fd6ef3-34c3-4941-af3d-401a544aee72','0acc7823-9241-4e04-be53-4e9f3ffb1a5b'),('912e925b-edf3-4f36-8509-8d5ae4177750','f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd'),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0','69033d61-b770-471d-8c72-06984e8bc294'),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7','e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea'),('96e6f5ef-954a-4ada-8af2-be55214b84e9','cf7623ee-79f2-41f3-8926-4be70c18b5bb'),('97c85f99-c081-4d1f-9d1d-48731a056fd6','2126f5c8-cb8c-4ee2-a812-bbf17824e0c9'),('97d85633-a337-4890-b396-c24d0e9cd705','bc53b872-a66c-4de9-afe2-e0b0d57f4eb6'),('9a67c071-1b66-4716-b1aa-f1a06fd7e057','5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d'),('aab99697-56d1-40db-9588-b36739412118','9a1f4355-cf42-4821-a8d9-948ed71d73b4'),('b7e84a87-f16f-4328-bb12-7bc289b26296','4c75c162-40e4-4234-99b7-dd1bf2632987'),('c92509fc-c7db-46ef-b784-b93a37d88c1c','1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9'),('d97a3c78-7217-4297-9646-c12650f31703','3a517cb2-f2ed-462c-b281-cf46dbff99b2'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc','31134ddf-2269-4578-895c-b6ccedc0dbaf'),('e62251d5-657c-4f48-91c4-f31f14923a71','4acd737d-31ba-4be8-a157-7e9fdd26ff0c'),('e86b663a-44ee-4663-9318-cdf677b27e09','b78ed092-2ba8-43a7-a753-6063dd9c51b9'),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90','923d2761-9734-4980-9684-60d9cf01902d'),('edccb89e-efd0-4849-b0b3-489197784c5f','a596f918-2df5-419e-b9c9-032ce481b5f5'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7','c501feb3-249e-4642-975c-4abf9c4693d1');
/*!40000 ALTER TABLE `geopointassociatedposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopointgeocoordinate`
--

DROP TABLE IF EXISTS `geopointgeocoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopointgeocoordinate` (
  `id_GeoPoint` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_GeoPositioningSystem` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  PRIMARY KEY (`id_GeoPoint`,`id_GeoPositioningSystem`),
  KEY `SI÷id_PGeoPS×PGPGeC` (`id_GeoPositioningSystem`),
  KEY `SI÷id_LGeoPt×PGPGeC` (`id_GeoPoint`),
  CONSTRAINT `FK÷id_LGeoPt×PGPGeC` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PGeoPS×PGPGeC` FOREIGN KEY (`id_GeoPositioningSystem`) REFERENCES `geopositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopointgeocoordinate`
--

LOCK TABLES `geopointgeocoordinate` WRITE;
/*!40000 ALTER TABLE `geopointgeocoordinate` DISABLE KEYS */;
INSERT INTO `geopointgeocoordinate` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3754.73608184171,0),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb','53eae429-bde8-4f96-81c9-db833b7f4c25',5736.77152315509,2075.79473125263,234.375003085893),('0612824a-6987-4dbe-973d-9c25690c6cc0','53eae429-bde8-4f96-81c9-db833b7f4c25',6218.41951070088,2855.99822994803,227.758),('07a62d49-93b2-41c6-9c39-5c717f62af64','53eae429-bde8-4f96-81c9-db833b7f4c25',6458.08386112136,3434.45166589395,0),('0a6afc2d-f09a-457b-b320-92bb1677d994','53eae429-bde8-4f96-81c9-db833b7f4c25',2120.60192160896,216.053518178471,0),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b','53eae429-bde8-4f96-81c9-db833b7f4c25',3092.59418316033,304.510765322369,0),('0ee06538-e727-4864-b710-b6a25e4de51b','53eae429-bde8-4f96-81c9-db833b7f4c25',4360.81379891586,583.817565654885,0),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e','53eae429-bde8-4f96-81c9-db833b7f4c25',6458.08386112136,3434.45166589395,218.901586042991),('137a806f-f544-4de0-b386-3ea291a9a984','53eae429-bde8-4f96-81c9-db833b7f4c25',6309.57237557276,3013.87962316159,225.205719789373),('18104740-d288-4f26-8aea-0b3c82a7131a','53eae429-bde8-4f96-81c9-db833b7f4c25',6468.54414955035,4183.43068248699,215.2),('182c0435-11ce-40ad-bfd9-11c884b0194f','53eae429-bde8-4f96-81c9-db833b7f4c25',4261.98576154244,484.989528281466,0),('1849e717-b04f-4485-b3d8-e1795654ddbf','53eae429-bde8-4f96-81c9-db833b7f4c25',4462.6371754066,685.640942145634,243.2),('18c5e944-0e18-4d27-94b1-ca7496ba4721','53eae429-bde8-4f96-81c9-db833b7f4c25',6380.78111761398,3145.95389955994,223.104338881793),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9','53eae429-bde8-4f96-81c9-db833b7f4c25',6218.41951070088,2855.99822994803,0),('1cee0a14-8f30-4702-9fbc-229e21157552','53eae429-bde8-4f96-81c9-db833b7f4c25',2262.41424067275,241.058856226254,201.296),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9','53eae429-bde8-4f96-81c9-db833b7f4c25',3377.4602624803,210.125837659987,221.826740174239),('26ee3b2d-f58b-462b-adb5-d159090c88ea','53eae429-bde8-4f96-81c9-db833b7f4c25',3092.59418316033,304.510765322369,216.423189269034),('2aa4a136-53f4-4230-a87c-9c4002bd6b26','53eae429-bde8-4f96-81c9-db833b7f4c25',4886.90124411853,1109.90501085756,243.2),('2fcd1de4-b5dc-4de1-b424-9356231d9161','53eae429-bde8-4f96-81c9-db833b7f4c25',6474.63587935939,5332.425649512,215.2),('301a9233-7757-47e1-a9ba-b2970fd8e4f2','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3834.43571546198,215.2),('304cf976-6b08-4b45-bc22-a8cc5866d313','53eae429-bde8-4f96-81c9-db833b7f4c25',4152.84198559889,382.023827186265,236.686473425718),('31134ddf-2269-4578-895c-b6ccedc0dbaf','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3642.73608184171,0),('31475acb-0c21-48ed-aa9a-28f5383f7075','53eae429-bde8-4f96-81c9-db833b7f4c25',6309.57237557276,3013.87962316159,0),('3210fb48-65a6-4e87-b4da-b1f30ab958b5','53eae429-bde8-4f96-81c9-db833b7f4c25',4261.98576154244,484.989528281466,239.388248878321),('34d359e3-a53f-48e2-9ff9-7accddd90824','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3584.43571546198,216.800205135411),('3a517cb2-f2ed-462c-b281-cf46dbff99b2','53eae429-bde8-4f96-81c9-db833b7f4c25',5131.72710240189,1354.73086914092,240.972347658431),('3bc94d92-e9d6-4e64-9030-41016ddb04b1','53eae429-bde8-4f96-81c9-db833b7f4c25',6474.63587935939,4532.425649512,0),('3f9635d8-6460-46cb-9d74-0293aba82e86','53eae429-bde8-4f96-81c9-db833b7f4c25',6190.41951070088,2807.5008073361,0),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a','53eae429-bde8-4f96-81c9-db833b7f4c25',3377.4602624803,210.125837659987,0),('472b07e6-155e-4e7c-b4c6-754011559fa8','53eae429-bde8-4f96-81c9-db833b7f4c25',6069.57237557276,2598.18742934505,230.037859894687),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c','53eae429-bde8-4f96-81c9-db833b7f4c25',4462.6371754066,685.640942145634,0),('4c75c162-40e4-4234-99b7-dd1bf2632987','53eae429-bde8-4f96-81c9-db833b7f4c25',4926.49922386498,1149.50299060401,0),('55c9d3a3-872b-47ac-8ed2-437eff14f306','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3754.73608184171,215.2),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46','53eae429-bde8-4f96-81c9-db833b7f4c25',0,100,200),('5d12f423-f1fc-4f9c-8e9e-90c455c91874','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3584.43571546198,0),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d','53eae429-bde8-4f96-81c9-db833b7f4c25',1996.61870153497,194.191931324311,200),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37','53eae429-bde8-4f96-81c9-db833b7f4c25',6190.41951070088,2807.5008073361,228.346),('62407317-922e-4bbd-b03d-50a180f09885','53eae429-bde8-4f96-81c9-db833b7f4c25',6474.63587935939,4532.425649512,215.2),('6402006a-735d-4a5b-ad17-f2c24e687c76','53eae429-bde8-4f96-81c9-db833b7f4c25',5736.77152315509,2075.79473125263,0),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46','53eae429-bde8-4f96-81c9-db833b7f4c25',0,100,0),('664edb17-58a7-4d18-8245-4fe0d5c087e6','53eae429-bde8-4f96-81c9-db833b7f4c25',6468.54414955035,4183.43068248699,0),('675c7023-72d2-458f-9fcd-5eb619762ce4','53eae429-bde8-4f96-81c9-db833b7f4c25',1996.61870153497,194.191931324311,0),('69033d61-b770-471d-8c72-06984e8bc294','53eae429-bde8-4f96-81c9-db833b7f4c25',2646.59181852302,308.799728584485,208.317874452257),('7254b735-486d-4f37-b30f-7f5c78476a22','53eae429-bde8-4f96-81c9-db833b7f4c25',4152.84198559889,382.023827186265,0),('731e2b71-dccb-499b-b406-369328f6330f','53eae429-bde8-4f96-81c9-db833b7f4c25',2646.59181852302,308.799728584485,0),('73dd753b-0449-45d1-b198-418c8daa56d0','53eae429-bde8-4f96-81c9-db833b7f4c25',5131.72710240189,1354.73086914092,0),('91eb52a9-c3f3-484e-9651-a386273a648b','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3834.43571546198,0),('923d2761-9734-4980-9684-60d9cf01902d','53eae429-bde8-4f96-81c9-db833b7f4c25',920,100,200),('98b22019-6332-47e8-9b02-4ee53b052583','53eae429-bde8-4f96-81c9-db833b7f4c25',3235.02722282031,257.318301491178,219.124964721636),('98c32492-27fb-469f-a864-84502bb4fc02','53eae429-bde8-4f96-81c9-db833b7f4c25',2795.05586560917,330.541995072672,211.01964990486),('9a1f4355-cf42-4821-a8d9-948ed71d73b4','53eae429-bde8-4f96-81c9-db833b7f4c25',2262.41424067275,241.058856226254,0),('9eca42f9-c247-4dd9-810c-d09b69a96964','53eae429-bde8-4f96-81c9-db833b7f4c25',6474.63587935939,5332.425649512,0),('a2f869ae-8e63-4d38-a3cc-8575e3da090f','53eae429-bde8-4f96-81c9-db833b7f4c25',6380.78111761398,3145.95389955994,0),('a596f918-2df5-419e-b9c9-032ce481b5f5','53eae429-bde8-4f96-81c9-db833b7f4c25',6069.57237557276,2598.18742934505,0),('b78ed092-2ba8-43a7-a753-6063dd9c51b9','53eae429-bde8-4f96-81c9-db833b7f4c25',2795.05586560917,330.541995072672,0),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6','53eae429-bde8-4f96-81c9-db833b7f4c25',3235.02722282031,257.318301491178,0),('c0959fcb-5b54-437f-8df5-a59e729a70b9','53eae429-bde8-4f96-81c9-db833b7f4c25',4926.49922386498,1149.50299060401,243.004),('c34b71c4-bc7a-4edc-8635-3ba6b6590875','53eae429-bde8-4f96-81c9-db833b7f4c25',2120.60192160896,216.053518178471,200),('c501feb3-249e-4642-975c-4abf9c4693d1','53eae429-bde8-4f96-81c9-db833b7f4c25',4886.90124411853,1109.90501085756,0),('cf7623ee-79f2-41f3-8926-4be70c18b5bb','53eae429-bde8-4f96-81c9-db833b7f4c25',920,100,0),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea','53eae429-bde8-4f96-81c9-db833b7f4c25',4360.81379891586,583.817565654885,241.904),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd','53eae429-bde8-4f96-81c9-db833b7f4c25',6462.45241974131,3642.73608184171,215.984);
/*!40000 ALTER TABLE `geopointgeocoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geopointlinearcoordinate`
--

DROP TABLE IF EXISTS `geopointlinearcoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geopointlinearcoordinate` (
  `id_GeoPoint` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_LinearPositioningSystem` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `measure` double DEFAULT NULL,
  `lateralOffset` double DEFAULT NULL,
  `verticalOffset` double DEFAULT NULL,
  PRIMARY KEY (`id_GeoPoint`,`id_LinearPositioningSystem`),
  KEY `SI÷id_PLinPS×PGPLiC` (`id_LinearPositioningSystem`),
  KEY `SI÷id_LGeoPt×PGPLiC` (`id_GeoPoint`),
  CONSTRAINT `FK÷id_LGeoPt×PGPLiC` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinPS×PGPLiC` FOREIGN KEY (`id_LinearPositioningSystem`) REFERENCES `linearpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_LGeoFt×LGeoPC` FOREIGN KEY (`id`) REFERENCES `geofeature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id_GeoPolygonalChain` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `sequence` int NOT NULL,
  `id_GeoPoint` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_GeoPolygonalChain`,`sequence`),
  KEY `SI÷id_LGeoPt×LGPCGP` (`id_GeoPoint`),
  KEY `SI÷id_LGeoPC×LGPCGP` (`id_GeoPolygonalChain`),
  CONSTRAINT `FK÷id_LGeoPC×LGPCGP` FOREIGN KEY (`id_GeoPolygonalChain`) REFERENCES `geopolygonalchain` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_LGeoPt×LGPCGP` FOREIGN KEY (`id_GeoPoint`) REFERENCES `geopoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `crsDefinition` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_PPoSys×PGeoPS` FOREIGN KEY (`id`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geopositioningsystem`
--

LOCK TABLES `geopositioningsystem` WRITE;
/*!40000 ALTER TABLE `geopositioningsystem` DISABLE KEYS */;
INSERT INTO `geopositioningsystem` VALUES ('53eae429-bde8-4f96-81c9-db833b7f4c25','RhinoCRS');
/*!40000 ALTER TABLE `geopositioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horizontalcurve`
--

DROP TABLE IF EXISTS `horizontalcurve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horizontalcurve` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `azimuth0` double DEFAULT NULL,
  `deltaAzimuth` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGHorC` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horizontalcurve`
--

LOCK TABLES `horizontalcurve` WRITE;
/*!40000 ALTER TABLE `horizontalcurve` DISABLE KEYS */;
INSERT INTO `horizontalcurve` VALUES ('0b021a04-9a2b-4850-86f2-d4d7124e76ae',45,-10),('0e782fd6-80b9-4327-a748-bca404381449',25,-20),('18216b6b-d689-41d2-b7aa-e0d8fe262651',105,-55),('1e74043e-3d84-4ab4-9466-580bc61511d3',30,-5),('32b72542-f146-44ed-ae59-0d0dd898339b',90,-10),('390fa6af-7512-4ceb-a0fc-0b5728642d73',80,0),('5f32d8ef-5e29-4613-ab0e-c8d666704229',105,5),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3',0,0),('87cd6ce9-d444-4a1e-b213-c3bb711e469a',90,0),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230',110,-5),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8',2,-2),('9f64a748-7af9-41fe-b5d6-81037c18ea57',80,5),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af',0,2),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42',5,-5),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b',50,-5),('c6aac27c-8056-4c86-85ab-8983ab87362a',85,20),('d79a04c2-984b-42fa-a37c-727a591d97c6',45,0),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa',35,-5),('ea7f117e-3360-48a5-91af-6020881e2c46',30,0),('f7197abd-a814-4258-888f-fb5359da5611',0,0);
/*!40000 ALTER TABLE `horizontalcurve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelnetwork`
--

DROP TABLE IF EXISTS `levelnetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levelnetwork` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `descriptionLevel` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `dimension` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `representation` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BBaObj×NLevNw` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelnetwork`
--

LOCK TABLES `levelnetwork` WRITE;
/*!40000 ALTER TABLE `levelnetwork` DISABLE KEYS */;
INSERT INTO `levelnetwork` VALUES ('40c7336f-927f-4370-8052-59b17324daff','micro','xyz','realistic'),('d6d8bd0e-7faa-499a-81b2-8aeb844efa42','micro','xy','realistic');
/*!40000 ALTER TABLE `levelnetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levelresourceassignment`
--

DROP TABLE IF EXISTS `levelresourceassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levelresourceassignment` (
  `id_NetworkResource` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_LevelNetwork` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetworkResource`,`id_LevelNetwork`),
  KEY `SI÷id_NNtwRs×NLvRsA` (`id_NetworkResource`),
  KEY `SI÷id_NLevNw×NLvRsA` (`id_LevelNetwork`),
  CONSTRAINT `FK÷id_NLevNw×NLvRsA` FOREIGN KEY (`id_LevelNetwork`) REFERENCES `levelnetwork` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNtwRs×NLvRsA` FOREIGN KEY (`id_NetworkResource`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelresourceassignment`
--

LOCK TABLES `levelresourceassignment` WRITE;
/*!40000 ALTER TABLE `levelresourceassignment` DISABLE KEYS */;
INSERT INTO `levelresourceassignment` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('07be4875-623f-4b25-8e32-e79bbf929a08','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('0c1aeac1-0e69-42f5-a787-a990d8561dab','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('0cf67c3a-fae0-4139-97c0-828958395118','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('0e782fd6-80b9-4327-a748-bca404381449','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('10c7296b-cb20-40c9-9890-e10992e4d8b2','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('13974828-1903-4364-9f69-eb7fd8d0e838','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('18216b6b-d689-41d2-b7aa-e0d8fe262651','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('1985bab8-1465-4ac3-bfa5-800d7890028c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('1e351385-524e-4fd5-b3e3-eab03383143f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('1e74043e-3d84-4ab4-9466-580bc61511d3','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('1e9a5717-0aa3-479a-8969-57e3af52b542','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('26e05d9a-5f77-4fc8-bab2-9910b373c083','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('2799d78e-8416-409b-8c09-80b21cf7d036','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('27f9d7c5-a439-47b4-9f38-1177586cbe19','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('29417886-5c69-4ef5-9daf-0842415935ec','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('2950249d-ad0f-434c-be25-fb94c9b87a11','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('32617a21-0ae9-4486-9189-8463111e5ddc','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('32b72542-f146-44ed-ae59-0d0dd898339b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('364e6b35-3705-4390-8bd7-9c4c069540a9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('38069531-1026-4b46-a572-b128c18ec18c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('390fa6af-7512-4ceb-a0fc-0b5728642d73','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('3ad1de23-c02e-41e1-bec6-c625933d14e9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('3d13e88f-1c88-4ba9-893b-4eccca61e442','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('40f2d16c-8dd0-4198-ac74-c260235c0e67','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('42db04f7-224d-4185-96bd-83ef78e295e9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('43a66cb9-46bb-4934-a30d-fe6473785ce4','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('47529a09-a1cc-4ebf-8955-a16c39303eae','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('47c1ed7b-fa77-4c81-8eef-69845d4df868','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('4b096cf3-4b8f-4075-b049-33927c60cc0d','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('4db19623-8331-4c81-9b7c-e8aebc03033b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('4e0651b8-8283-451e-bb70-2d42f89887e0','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('4ecf7943-7873-434d-89b6-1a486f85b77a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('50b05f70-ca53-4964-9a79-37222d7b275d','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('5695c0f7-ceeb-4127-8c5c-2da3a5932225','40c7336f-927f-4370-8052-59b17324daff'),('588b9192-e349-4031-bd8e-49dc16f19ff9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('5f32d8ef-5e29-4613-ab0e-c8d666704229','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('65d15f20-5245-422f-9d5b-82b147a4de25','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('667477b7-e08a-4abe-906e-86bebc26b3bb','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('68b433fb-af0f-439b-9cbc-4f434e7a120b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('6ac2e221-044e-4727-813b-c91e96f1d59f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('6caa269f-85ba-4870-832e-781f5a9753da','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('6d43b482-4704-4243-9c8b-04de791a82ed','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('767b79cf-a053-4a00-b820-d093d68fd8b6','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('76f9e8c6-023a-403e-842a-a5eeea4916da','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('852f242d-cca6-4f21-b84b-9b9467ec7c65','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('8877868b-e670-45be-9823-b9ea6a603763','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('902dcdf8-7eb9-4444-af86-33193215bd88','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('9108bd03-6144-4693-ba6e-7174b11c6db6','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('910d1e73-4df6-4b15-9745-8c77e564c67a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('93afbf8e-415c-43a3-9134-f89357902809','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('9736089b-e2b9-48db-bf62-9f8849c8f350','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('9b7958b1-92d5-4657-aeac-fd960ee6098f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('9da483cb-9261-4fce-9b03-38d802585935','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('9f64a748-7af9-41fe-b5d6-81037c18ea57','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('b045c8a6-425d-45e5-9254-f9207728797f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('b797f47e-a543-4bf4-979a-4083aba0000b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('b9c1002a-f334-4681-a689-143962e24899','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('be3faccb-b557-4c65-90f7-976c401b396a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c13536c1-5744-48f4-9649-b9d3e1e475cb','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c2e508ab-139c-4601-84fe-6e534344ce92','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c5b6fca1-d851-45b7-8f06-88ffb213388a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('c6aac27c-8056-4c86-85ab-8983ab87362a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('d79a04c2-984b-42fa-a37c-727a591d97c6','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('ea7f117e-3360-48a5-91af-6020881e2c46','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('eab7199d-6752-4d03-bf26-09241d91aa4c','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('edd50a61-b972-4d59-96ae-177971c5dda9','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('ef76601b-831e-480b-adcc-aee620a5573f','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1','d6d8bd0e-7faa-499a-81b2-8aeb844efa42'),('f7197abd-a814-4258-888f-fb5359da5611','d6d8bd0e-7faa-499a-81b2-8aeb844efa42');
/*!40000 ALTER TABLE `levelresourceassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearanchorpoint`
--

DROP TABLE IF EXISTS `linearanchorpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearanchorpoint` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_LinearPositioningSystem` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `anchorName` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `measure` double NOT NULL,
  `id_LinearAnchorPoint_Next` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `measureToNext` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_PLinPS×PLinAP` (`id_LinearPositioningSystem`),
  KEY `SI÷id_PLinAPNext×PLinAP` (`id_LinearAnchorPoint_Next`),
  CONSTRAINT `FK÷id_BBaObj×PLinAP` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinAPNext×PLinAP` FOREIGN KEY (`id_LinearAnchorPoint_Next`) REFERENCES `linearanchorpoint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_PLinPS×PLinAP` FOREIGN KEY (`id_LinearPositioningSystem`) REFERENCES `linearpositioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `length` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TPNtEl×TLinEl` FOREIGN KEY (`id`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearelement`
--

LOCK TABLES `linearelement` WRITE;
/*!40000 ALTER TABLE `linearelement` DISABLE KEYS */;
INSERT INTO `linearelement` VALUES ('5695c0f7-ceeb-4127-8c5c-2da3a5932225',10009.3533610789),('910d1e73-4df6-4b15-9745-8c77e564c67a',10008.8313339825);
/*!40000 ALTER TABLE `linearelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linearpositioningsystem`
--

DROP TABLE IF EXISTS `linearpositioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linearpositioningsystem` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `linearReferencingMethod` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `startMeasure` double DEFAULT NULL,
  `endMeasure` double DEFAULT NULL,
  `units` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_PPoSys×PLinPS` FOREIGN KEY (`id`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `superelevation0` double DEFAULT NULL,
  `superelevation1` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGSuEl×XGLiSR` FOREIGN KEY (`id`) REFERENCES `superelevation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linearsuperelevationramp`
--

LOCK TABLES `linearsuperelevationramp` WRITE;
/*!40000 ALTER TABLE `linearsuperelevationramp` DISABLE KEYS */;
INSERT INTO `linearsuperelevationramp` VALUES ('13974828-1903-4364-9f69-eb7fd8d0e838',0,-120),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62',120,0),('43a66cb9-46bb-4934-a30d-fe6473785ce4',-120,0),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9',0,120),('edd50a61-b972-4d59-96ae-177971c5dda9',0,-120),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b',-120,0);
/*!40000 ALTER TABLE `linearsuperelevationramp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizationfeature`
--

DROP TABLE IF EXISTS `localizationfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizationfeature` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×LLocFt` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizationfeature`
--

LOCK TABLES `localizationfeature` WRITE;
/*!40000 ALTER TABLE `localizationfeature` DISABLE KEYS */;
INSERT INTO `localizationfeature` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e'),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb'),('01a9c127-6e7d-48f7-bc10-09ee80a2dcd6'),('02999a8c-af0f-4248-af0f-eef490cd7e31'),('0454ad4e-62dd-4d83-9ca9-221425631ba3'),('04838aab-69d4-4692-94d3-8b4f983a724c'),('05306e38-c960-47ca-9086-00f839c7fa60'),('057b3705-5231-4cab-b9b9-17aa1bf89241'),('0612824a-6987-4dbe-973d-9c25690c6cc0'),('06e1aa7f-78b4-468e-9296-0a59f1a1c87b'),('07a60544-71bb-429c-9abc-40a924e1e99a'),('07a62d49-93b2-41c6-9c39-5c717f62af64'),('07dff07d-6d34-492a-9ea1-aafe5b5211f4'),('09c172cb-7163-4a38-8644-2af203bd0ce3'),('0a6afc2d-f09a-457b-b320-92bb1677d994'),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b'),('0b0e998f-5e3d-4e98-aff5-9b3594801b79'),('0b5f44d6-5b27-434f-98c4-1714f43029e4'),('0bad7d72-6beb-4b0f-b54b-49122febc1c8'),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614'),('0ee06538-e727-4864-b710-b6a25e4de51b'),('0ef72324-b415-4fe0-92df-7a1161b2c7c2'),('0faf9536-e80c-41da-97d6-0c86a231eae8'),('10904523-b07c-4652-9101-026c66f9f1f0'),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e'),('12303966-2516-4133-a476-019e4d6f4f0f'),('137a806f-f544-4de0-b386-3ea291a9a984'),('13882ddc-3ee7-4e29-8ec0-07333fde5e26'),('174036a8-0646-4a6d-a201-d02c9199c025'),('17878bf8-4a92-4420-aaff-02a80a6f2443'),('18104740-d288-4f26-8aea-0b3c82a7131a'),('182c0435-11ce-40ad-bfd9-11c884b0194f'),('1849e717-b04f-4485-b3d8-e1795654ddbf'),('18c5e944-0e18-4d27-94b1-ca7496ba4721'),('18cc266a-fd28-4f2c-8867-e2f6c58b957d'),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5'),('1917257c-1f1a-4880-be8a-8557c13a78af'),('1a1d1211-a95a-47ac-8a64-b9583aaec3db'),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9'),('1b701ddf-3aec-4b66-871e-2033ad6d3296'),('1b796be0-fdec-438d-a31a-752f7bec3dcf'),('1bc3b810-3633-4af5-9255-f606ec3c6c6a'),('1c64062a-3ff7-4b09-a503-23edad1d9d75'),('1c88f911-9386-4ca3-adff-9f0904bd8ab3'),('1cee0a14-8f30-4702-9fbc-229e21157552'),('1d3c1dc1-22d3-4506-a640-634676fd350d'),('1e07f41d-1838-4312-8bee-8b53faa03478'),('1e6a5850-068c-42de-bce3-cb132b3464ca'),('2019841b-5c4a-436f-b962-b5ea3b07a300'),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9'),('2135642f-501f-4c17-9be0-e30f77b004f8'),('227b147c-9ca0-45fb-8127-37c0e76dd2fe'),('236f1fd0-3707-436d-9b2e-55d007289ec3'),('26d2a50f-7c07-476a-9237-ff664c89761f'),('26ee3b2d-f58b-462b-adb5-d159090c88ea'),('276a2a9d-d81c-4ccb-9695-13e810edaf6e'),('29b27a99-e952-411f-b79d-62370cc50a34'),('2a70d8c9-9d63-4e4f-830a-ef9436677df1'),('2aa4a136-53f4-4230-a87c-9c4002bd6b26'),('2ac252cc-1a23-48be-8d6e-4b86a07e93ab'),('2b46747a-1982-40ea-8aa4-1047c16abf0c'),('2b783415-8e6d-43c9-83e2-81b7a0d82882'),('2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77'),('2fa6ed09-b298-419d-81f9-674200c80c84'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374'),('2fcd1de4-b5dc-4de1-b424-9356231d9161'),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7'),('2ffb28ca-96f5-4459-ae92-79b326322198'),('300a5be5-5a15-4e94-a3a7-b95a97df0079'),('301a9233-7757-47e1-a9ba-b2970fd8e4f2'),('304cf976-6b08-4b45-bc22-a8cc5866d313'),('31134ddf-2269-4578-895c-b6ccedc0dbaf'),('31475acb-0c21-48ed-aa9a-28f5383f7075'),('31de7e27-a7f4-418b-9cea-6b944a865607'),('31df2e28-a114-4e23-ae59-99f4b0b66f1e'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5'),('3210fb48-65a6-4e87-b4da-b1f30ab958b5'),('329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f'),('34d359e3-a53f-48e2-9ff9-7accddd90824'),('34e34729-eaa9-4a11-89d5-d526568c4de5'),('35705e47-f346-4c5e-b340-22f276d6adaa'),('3660f6eb-4ba5-463c-9133-c0fc6b28c300'),('39bb825c-0d68-4c44-b669-3ce7eab6f7cd'),('3a517cb2-f2ed-462c-b281-cf46dbff99b2'),('3bc42c44-6215-4305-aeed-640f7086c018'),('3bc94d92-e9d6-4e64-9030-41016ddb04b1'),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef'),('3f9635d8-6460-46cb-9d74-0293aba82e86'),('4258eb32-f565-4699-9af0-2589898ad991'),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a'),('4335eda7-7674-4541-aa8b-05dbf8fed356'),('44b12111-a06c-4204-8d73-55794b6f99c3'),('452e59d2-c784-44cd-abbf-d13d8e793bb3'),('46268b2b-146f-4873-9019-3ca4899ff14e'),('46d81d9a-df69-4929-9425-d58186b88f74'),('472b07e6-155e-4e7c-b4c6-754011559fa8'),('4a0cfe80-ab79-4e4c-b58e-610501e057b6'),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db'),('4c75c162-40e4-4234-99b7-dd1bf2632987'),('4cc213cc-0574-4914-847e-85b32f056ac1'),('4d228e7c-b38d-43a1-8409-f854fcf6f4fb'),('4d4cd0b1-de2f-4e78-9602-61046c05b411'),('4de555a2-1809-4454-a63a-ef9ebb2c10d7'),('502f79a5-db67-4315-bbdf-37b467100783'),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc'),('51a216f2-f50f-4aa0-a579-311484a65253'),('51ab9fed-6e7c-4063-9744-8ae03edf5399'),('5289a274-9b12-4f64-8b33-5a564f60f66a'),('540e79c4-a0a9-47af-8186-a064378c4338'),('555ceaae-2ac9-4485-8eec-58081bdf8b89'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60'),('55c9d3a3-872b-47ac-8ed2-437eff14f306'),('5624dd54-16ce-4175-ad65-7da103f964f6'),('59256249-29ed-4480-8caf-7e849c938987'),('5ad462db-8cb2-45ff-9329-183dcca47d22'),('5b0024c1-cdc8-48bc-b3ca-42dce781d302'),('5b525c9d-40d5-4291-93b1-a81128ed5464'),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46'),('5baa6010-3a05-4152-8eaa-082bfb523b59'),('5d12f423-f1fc-4f9c-8e9e-90c455c91874'),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d'),('5eaab8bb-d072-4760-8454-a9721316d2ab'),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37'),('602bb3ce-12a2-4288-bc2b-25130d4f677e'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f'),('60720144-4d50-4215-a779-d1234f6be5da'),('62407317-922e-4bbd-b03d-50a180f09885'),('6323fba8-3e59-4d04-b666-dc9e54f915bd'),('63a59af7-cc0b-4708-838d-4ef36ca39ab3'),('6402006a-735d-4a5b-ad17-f2c24e687c76'),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46'),('65100f76-ecee-4c9f-876e-b36b1053d4f8'),('66400b90-fc89-4b24-9d02-9e189e7cd818'),('664edb17-58a7-4d18-8245-4fe0d5c087e6'),('66768df2-d6e3-4ada-b0de-c95e3302d413'),('675c7023-72d2-458f-9fcd-5eb619762ce4'),('683d40f0-f025-4f42-8929-a31c82e460c4'),('6849be14-3caf-46e4-9a8d-c2faa01751ca'),('68f5763b-5a8b-4260-9446-54ca77be3ccc'),('69033d61-b770-471d-8c72-06984e8bc294'),('69f83619-c907-4dc9-aaba-8d78d4bccc53'),('6a7fe213-9090-4d79-b810-9591f0e63f08'),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c'),('6b080122-3982-49d5-b741-bdacf5418861'),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0'),('6be06976-a899-4cb8-a743-1410095d607c'),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0'),('6e86f033-d9b5-4afc-91e6-60fb4167d587'),('711cc632-431e-4274-8410-ef4b6a794b6c'),('71600112-3966-4a9a-852e-b2f02aebc7db'),('7254b735-486d-4f37-b30f-7f5c78476a22'),('731e2b71-dccb-499b-b406-369328f6330f'),('73cc4a98-e747-4b2d-80ec-f250208a5e2e'),('73dd753b-0449-45d1-b198-418c8daa56d0'),('743af29b-6935-4660-a6cb-5f3c25066961'),('744847d0-494b-4805-8628-07d25058237a'),('758cb070-5e99-4cbe-93b5-d10e122c9505'),('769dc71a-26e6-42d5-af92-7b1b6b187443'),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c'),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55'),('7975c16b-0243-42c3-a686-74469e0302e3'),('7989faf8-b33d-447b-a18e-ca4f70c29909'),('7b472dde-a145-4a5c-ac30-05191a01b693'),('7bd3f369-45ea-4bd5-a83c-0d74df0002cb'),('7e15063b-4f15-4845-911a-3aef4da09c1e'),('7fb51a90-c9a7-43e1-b51f-fab92cf9304e'),('83183263-5091-4103-82d1-56129605415a'),('837a119a-ad62-469d-96f6-a216fe5a2629'),('83962e21-18e3-4033-b060-cf9ec2047dc8'),('84b04a57-2047-428d-98e7-7a8d7deedaef'),('87ccd3fb-8235-45ab-86f2-9df058c8b942'),('88a25ad4-d98e-4686-93ef-f77367bfd320'),('89fee055-9c00-4c56-86e4-4cc138eccabc'),('8bb66c7b-65a4-42dd-9368-3ae036e9cb6c'),('8c95a69b-6fae-4954-bf87-d0063195f568'),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4'),('8d1251c3-998e-4112-b090-31a9f6a0174e'),('90fd6ef3-34c3-4941-af3d-401a544aee72'),('912e925b-edf3-4f36-8509-8d5ae4177750'),('9178b6af-7b8f-4127-a36d-a334e7aabfd9'),('91b1be25-3841-44cd-b31c-0c7ac5f77778'),('91eb52a9-c3f3-484e-9651-a386273a648b'),('923d2761-9734-4980-9684-60d9cf01902d'),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0'),('94dcacd1-b692-4220-b615-d8502b5482a4'),('950dcb66-d81f-47d8-a057-e01e36d4e9bb'),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7'),('95c78591-a626-4b1a-b1a3-bafb8a7b3d48'),('95cd2cf1-dcc5-48b1-b88f-66875cca638c'),('96e6f5ef-954a-4ada-8af2-be55214b84e9'),('9735ba6c-1663-49e3-a3da-e7bd85f45948'),('975460d1-4453-450f-bf6c-14727d8f9df3'),('976543b9-5aed-4800-b023-dd34856ea1d8'),('97c85f99-c081-4d1f-9d1d-48731a056fd6'),('97d85633-a337-4890-b396-c24d0e9cd705'),('98b22019-6332-47e8-9b02-4ee53b052583'),('98c32492-27fb-469f-a864-84502bb4fc02'),('993fd49f-ada9-44a9-8c8d-775605015284'),('9a1f4355-cf42-4821-a8d9-948ed71d73b4'),('9a67c071-1b66-4716-b1aa-f1a06fd7e057'),('9ea0fdd8-8f7c-4182-a7bb-999035956d26'),('9eca42f9-c247-4dd9-810c-d09b69a96964'),('a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5'),('a2af9a5c-24c7-49db-b134-f53d013fe244'),('a2f869ae-8e63-4d38-a3cc-8575e3da090f'),('a3be6484-6f78-436c-b82e-d6ed9c730cd8'),('a4fcc78c-7a5c-4829-868a-4636e194a11b'),('a596f918-2df5-419e-b9c9-032ce481b5f5'),('a6919436-9467-416c-a065-95d8e6aab4d3'),('a6d5c9bf-91c5-49a7-9140-081fd57543f2'),('a85b007e-f3a6-41d8-9f1e-990357683971'),('aab99697-56d1-40db-9588-b36739412118'),('ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28'),('acd25e23-c017-425b-8474-b8a948a5d2b3'),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a'),('ad8e224c-9472-4336-8c17-01afb6abac72'),('b58a4779-70c1-42a3-bc69-a0199cb673fe'),('b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05'),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0'),('b78ed092-2ba8-43a7-a753-6063dd9c51b9'),('b790cecc-4c2b-42bb-9256-ee80369c04d2'),('b7e84a87-f16f-4328-bb12-7bc289b26296'),('b831b034-cc95-4147-b665-1e6294bd8d60'),('ba3f9014-281e-4e0d-828e-e3020a96e551'),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70'),('ba9e650f-7ffe-426d-b658-9689e18196eb'),('bb0578b7-9d71-4681-b46c-ce934e5755aa'),('bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0'),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6'),('bddb0084-0ed2-4e64-aa02-a524c8ad303f'),('beac405a-a4bd-490d-9335-9638e001f937'),('c0959fcb-5b54-437f-8df5-a59e729a70b9'),('c2304be5-282a-4a5a-9ec3-e1149284cd7a'),('c23a4cdd-854d-43e1-aa03-3a208dbca255'),('c2c301b5-8404-42b6-a687-5e1b4880dffc'),('c34b71c4-bc7a-4edc-8635-3ba6b6590875'),('c501feb3-249e-4642-975c-4abf9c4693d1'),('c7acb121-5adc-40e7-9280-42b7d335df3b'),('c87e3e0c-01cc-4c2e-8eb4-ea64a0457540'),('c8b31340-41d9-4791-b28a-98fc1b0c6337'),('c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e'),('c92509fc-c7db-46ef-b784-b93a37d88c1c'),('ca3911af-3dfb-40c8-9dd4-78d8041ec767'),('cd34c226-8b87-45bf-8e76-f88f1b2052b9'),('cef21db7-8e06-4249-903d-414e105e393e'),('cf7623ee-79f2-41f3-8926-4be70c18b5bb'),('cfadce12-10c8-44aa-b8c8-33e8d42d4f0b'),('d0217043-d49e-4279-886c-ab5f133b266d'),('d06314e2-9492-4926-8578-77c3ad030340'),('d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14'),('d14d7867-359b-46d3-9f6b-be552cbd3eb8'),('d3ab2776-89d8-4851-b8d3-249b81d94841'),('d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab'),('d4f493ce-1dd3-4e73-9981-2879b9d5f390'),('d5d929fb-4c08-4721-9133-e8d72b64c258'),('d6be8438-9759-4afa-a3bd-b5127e3a7f96'),('d6d9797c-51b3-4b68-8694-42578996e395'),('d97a3c78-7217-4297-9646-c12650f31703'),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf'),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc'),('df9be0f4-adcb-4f7e-aafd-456e4f88c309'),('e31f9825-79e0-4962-b3ef-01f27a8e7306'),('e41cc1aa-986a-489b-a7d0-5e1ed6ced26c'),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea'),('e62251d5-657c-4f48-91c4-f31f14923a71'),('e75558be-6134-4567-b4f9-8d1b5c7bc548'),('e82add42-7c89-4649-af77-4ef4b207ad70'),('e86b663a-44ee-4663-9318-cdf677b27e09'),('e88c465d-1230-4048-9b9a-4c0c6b472ef1'),('e92c7b50-ba87-4827-91f3-c2f18b549f4d'),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90'),('ea29b33d-fda1-4486-935f-bd100ad73ffd'),('edccb89e-efd0-4849-b0b3-489197784c5f'),('f0f0f62b-20e7-433c-9822-4b45d0ace9ae'),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd'),('f2b4e265-77ac-4719-8386-657a58fa6171'),('f6ccf006-01b3-4a85-9256-392d53ef6874'),('f7c3c234-51ee-4df5-9e7e-a31e89cef3e5'),('fc1601a1-454a-4e53-ae5f-7458fb31bdde'),('fcbd2d31-d162-4306-93db-1ba4037998ff'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7'),('fd8b9ab2-c638-494e-a4a2-8baea8bba478'),('fec4df34-db16-43f4-867e-ed077dad202a'),('fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f'),('fffea957-d9b4-4e33-804b-18d8b95ffd9e');
/*!40000 ALTER TABLE `localizationfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modularentity`
--

DROP TABLE IF EXISTS `modularentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modularentity` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_ENetEt×XXMEnt` FOREIGN KEY (`id`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modularentity`
--

LOCK TABLES `modularentity` WRITE;
/*!40000 ALTER TABLE `modularentity` DISABLE KEYS */;
INSERT INTO `modularentity` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c'),('07be4875-623f-4b25-8e32-e79bbf929a08'),('0c1aeac1-0e69-42f5-a787-a990d8561dab'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b'),('1985bab8-1465-4ac3-bfa5-800d7890028c'),('1e351385-524e-4fd5-b3e3-eab03383143f'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf'),('1e9a5717-0aa3-479a-8969-57e3af52b542'),('26e05d9a-5f77-4fc8-bab2-9910b373c083'),('2799d78e-8416-409b-8c09-80b21cf7d036'),('27f9d7c5-a439-47b4-9f38-1177586cbe19'),('2950249d-ad0f-434c-be25-fb94c9b87a11'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918'),('32617a21-0ae9-4486-9189-8463111e5ddc'),('364e6b35-3705-4390-8bd7-9c4c069540a9'),('38069531-1026-4b46-a572-b128c18ec18c'),('3ad1de23-c02e-41e1-bec6-c625933d14e9'),('3d13e88f-1c88-4ba9-893b-4eccca61e442'),('40f2d16c-8dd0-4198-ac74-c260235c0e67'),('47529a09-a1cc-4ebf-8955-a16c39303eae'),('47c1ed7b-fa77-4c81-8eef-69845d4df868'),('4b096cf3-4b8f-4075-b049-33927c60cc0d'),('4db19623-8331-4c81-9b7c-e8aebc03033b'),('4e0651b8-8283-451e-bb70-2d42f89887e0'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0'),('50b05f70-ca53-4964-9a79-37222d7b275d'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b'),('588b9192-e349-4031-bd8e-49dc16f19ff9'),('65d15f20-5245-422f-9d5b-82b147a4de25'),('667477b7-e08a-4abe-906e-86bebc26b3bb'),('68b433fb-af0f-439b-9cbc-4f434e7a120b'),('6ac2e221-044e-4727-813b-c91e96f1d59f'),('6caa269f-85ba-4870-832e-781f5a9753da'),('6d43b482-4704-4243-9c8b-04de791a82ed'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f'),('767b79cf-a053-4a00-b820-d093d68fd8b6'),('76f9e8c6-023a-403e-842a-a5eeea4916da'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d'),('852f242d-cca6-4f21-b84b-9b9467ec7c65'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb'),('8877868b-e670-45be-9823-b9ea6a603763'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca'),('902dcdf8-7eb9-4444-af86-33193215bd88'),('9736089b-e2b9-48db-bf62-9f8849c8f350'),('9da483cb-9261-4fce-9b03-38d802585935'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c'),('b797f47e-a543-4bf4-979a-4083aba0000b'),('b9c1002a-f334-4681-a689-143962e24899'),('be3faccb-b557-4c65-90f7-976c401b396a'),('c2e508ab-139c-4601-84fe-6e534344ce92'),('c5b6fca1-d851-45b7-8f06-88ffb213388a'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498'),('eab7199d-6752-4d03-bf26-09241d91aa4c'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1');
/*!40000 ALTER TABLE `modularentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modularentitytype`
--

DROP TABLE IF EXISTS `modularentitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modularentitytype` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_YEntTy×XYMEtT` FOREIGN KEY (`id`) REFERENCES `entitytype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modularentitytype`
--

LOCK TABLES `modularentitytype` WRITE;
/*!40000 ALTER TABLE `modularentitytype` DISABLE KEYS */;
INSERT INTO `modularentitytype` VALUES ('3a13352d-376d-4a8e-aa0a-1db5621be935'),('7c77b497-f2dc-482c-a0bc-383a952a2da4');
/*!40000 ALTER TABLE `modularentitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namedresource`
--

DROP TABLE IF EXISTS `namedresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `namedresource` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `longname` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UI÷name×BNmRes` (`name`),
  CONSTRAINT `FK÷id_BBaObj×BNmRes` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namedresource`
--

LOCK TABLES `namedresource` WRITE;
/*!40000 ALTER TABLE `namedresource` DISABLE KEYS */;
INSERT INTO `namedresource` VALUES ('00762feb-9f60-4bc2-b8ca-b0effd364d9e','LGeoPt_000031','GeoPoint_000031'),('0105082d-b8b8-4ef6-91e9-227e79f2e5bb','LGeoPt_000041','GeoPoint_000041'),('01a9c127-6e7d-48f7-bc10-09ee80a2dcd6','LAssPs_000039_3D','AssociatedPosition_000039_3D'),('02916d74-c19b-4ec8-a202-765d79335dfa','NNetwk_000001','Pokusná trať000000'),('02999a8c-af0f-4248-af0f-eef490cd7e31','LAssPs_000019_3D','AssociatedPosition_000019_3D'),('0454ad4e-62dd-4d83-9ca9-221425631ba3','LAssPs_000031_3D','AssociatedPosition_000031_3D'),('04838aab-69d4-4692-94d3-8b4f983a724c','LAssSc_000015','AssociatedSection_000015'),('049e46b5-aa9d-419d-8fc2-de61cd56c90b','LAsLoc_000039','AssociatedLocation_000039'),('05306e38-c960-47ca-9086-00f839c7fa60','LAssPs_000087_3D','AssociatedPosition_000087_3D'),('057b3705-5231-4cab-b9b9-17aa1bf89241','LAssPs_000025_3D','AssociatedPosition_000025_3D'),('0612824a-6987-4dbe-973d-9c25690c6cc0','LGeoPt_000060','GeoPoint_000060'),('068efa91-3a50-410d-acdc-39be07eeff11','LAsLoc_000074','AssociatedLocation_000074'),('06e1aa7f-78b4-468e-9296-0a59f1a1c87b','LAssSc_000035','AssociatedSection_000035'),('0755058c-99ca-4a02-8f95-5e2ae1bcb75c','XPBlse_000037','Balise_000037'),('07a60544-71bb-429c-9abc-40a924e1e99a','LAssPs_000047','AssociatedPosition_000047'),('07a62d49-93b2-41c6-9c39-5c717f62af64','LGeoPt_000016','GeoPoint_000016'),('07be4875-623f-4b25-8e32-e79bbf929a08','XPBlse_000041','Balise_000041'),('07dff07d-6d34-492a-9ea1-aafe5b5211f4','LAssPs_000029_3D','AssociatedPosition_000029_3D'),('09c172cb-7163-4a38-8644-2af203bd0ce3','LAssPs_000037_3D','AssociatedPosition_000037_3D'),('0a6afc2d-f09a-457b-b320-92bb1677d994','LGeoPt_000022','GeoPoint_000022'),('0acc7823-9241-4e04-be53-4e9f3ffb1a5b','LGeoPt_000006','GeoPoint_000006'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae','XGCAHC_000004','CircularArcHC_000004'),('0b0e998f-5e3d-4e98-aff5-9b3594801b79','LAssPs_000056','AssociatedPosition_000056'),('0b5f44d6-5b27-434f-98c4-1714f43029e4','LAssPs_000021','AssociatedPosition_000021'),('0bad7d72-6beb-4b0f-b54b-49122febc1c8','LAssSc_000022','AssociatedSection_000022'),('0c1aeac1-0e69-42f5-a787-a990d8561dab','XOSpSc_000003','SpeedSection_000003'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b','XPBlse_000012','Balise_000012'),('0cf67c3a-fae0-4139-97c0-828958395118','XGCoSu_000004','ConstantSuperelevation_000004'),('0d67c18c-9e1a-4e54-9a2c-24dcc99e4614','LAssPs_000070','AssociatedPosition_000070'),('0e782fd6-80b9-4327-a748-bca404381449','XGCAHC_000006','CircularArcHC_000006'),('0ee06538-e727-4864-b710-b6a25e4de51b','LGeoPt_000024','GeoPoint_000024'),('0ef72324-b415-4fe0-92df-7a1161b2c7c2','LAssPs_000007_3D','AssociatedPosition_000007_3D'),('0faf9536-e80c-41da-97d6-0c86a231eae8','LAssPs_000085_3D','AssociatedPosition_000085_3D'),('10904523-b07c-4652-9101-026c66f9f1f0','LAssSc_000025','AssociatedSection_000025'),('10c7296b-cb20-40c9-9890-e10992e4d8b2','XGPbVC_000004','ParabolaVC_000004'),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13','LAsLoc_000048','AssociatedLocation_000048'),('11044084-740c-4b7d-a3b1-93b73170a68a','LAsLoc_000086','AssociatedLocation_000086'),('11d293eb-73dc-4c80-bca3-f2e7f8f8e69e','LGeoPt_000037','GeoPoint_000037'),('12303966-2516-4133-a476-019e4d6f4f0f','LAssPs_000038_3D','AssociatedPosition_000038_3D'),('137a806f-f544-4de0-b386-3ea291a9a984','LGeoPt_000039','GeoPoint_000039'),('13882ddc-3ee7-4e29-8ec0-07333fde5e26','LAssPs_000043','AssociatedPosition_000043'),('13974828-1903-4364-9f69-eb7fd8d0e838','XGLiSR_000005','LinearSuperelevationRamp_000005'),('14cc5352-77a4-4f52-a159-1838c5b238aa','LAsLoc_000023','AssociatedLocation_000023'),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f','LAsLoc_000100','AssociatedLocation_000100'),('174036a8-0646-4a6d-a201-d02c9199c025','LAssPs_000072','AssociatedPosition_000072'),('17878bf8-4a92-4420-aaff-02a80a6f2443','LAssPs_000011','AssociatedPosition_000011'),('18104740-d288-4f26-8aea-0b3c82a7131a','LGeoPt_000034','GeoPoint_000034'),('18216b6b-d689-41d2-b7aa-e0d8fe262651','XGCAHC_000003','CircularArcHC_000003'),('182c0435-11ce-40ad-bfd9-11c884b0194f','LGeoPt_000010','GeoPoint_000010'),('1849e717-b04f-4485-b3d8-e1795654ddbf','LGeoPt_000056','GeoPoint_000056'),('18c5e944-0e18-4d27-94b1-ca7496ba4721','LGeoPt_000038','GeoPoint_000038'),('18cc266a-fd28-4f2c-8867-e2f6c58b957d','LAssPs_000078_3D','AssociatedPosition_000078_3D'),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58','LAsLoc_000004','AssociatedLocation_000004'),('190a0ce3-89ef-45cf-8b19-e4fca54cbcb5','LAssPs_000042','AssociatedPosition_000042'),('1917257c-1f1a-4880-be8a-8557c13a78af','LAssPs_000064','AssociatedPosition_000064'),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd','LAsLoc_000096','AssociatedLocation_000096'),('1985bab8-1465-4ac3-bfa5-800d7890028c','XPBlse_000022','Balise_000022'),('1a1d1211-a95a-47ac-8a64-b9583aaec3db','LAssPs_000014_3D','AssociatedPosition_000014_3D'),('1a278b68-d5f6-4b3a-a6e6-1c68b8b95ab9','LGeoPt_000029','GeoPoint_000029'),('1a4b96ee-da61-43e8-ac78-525a85b5ae36','LAsLoc_000090','AssociatedLocation_000090'),('1b701ddf-3aec-4b66-871e-2033ad6d3296','LAssPs_000047_3D','AssociatedPosition_000047_3D'),('1b796be0-fdec-438d-a31a-752f7bec3dcf','LAssPs_000082','AssociatedPosition_000082'),('1bc3b810-3633-4af5-9255-f606ec3c6c6a','LAssPs_000016_3D','AssociatedPosition_000016_3D'),('1c64062a-3ff7-4b09-a503-23edad1d9d75','LAssPs_000090','AssociatedPosition_000090'),('1c88f911-9386-4ca3-adff-9f0904bd8ab3','LAssSc_000032','AssociatedSection_000032'),('1cee0a14-8f30-4702-9fbc-229e21157552','LGeoPt_000054','GeoPoint_000054'),('1d3c1dc1-22d3-4506-a640-634676fd350d','LAssSc_000016','AssociatedSection_000016'),('1d88281c-80fd-4264-b243-b78d7cf230da','LAsLoc_000025','AssociatedLocation_000025'),('1e07f41d-1838-4312-8bee-8b53faa03478','LAssPs_000017','AssociatedPosition_000017'),('1e351385-524e-4fd5-b3e3-eab03383143f','XPBlse_000021','Balise_000021'),('1e6a5850-068c-42de-bce3-cb132b3464ca','LAssPs_000048','AssociatedPosition_000048'),('1e74043e-3d84-4ab4-9466-580bc61511d3','XGClHC_000005','ClothoidHC_000005'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf','XPBlse_000031','Balise_000031'),('1e9a5717-0aa3-479a-8969-57e3af52b542','XPBlse_000030','Balise_000030'),('1edfd449-da6c-4780-af68-fa2bd5241689','LAsLoc_000029','AssociatedLocation_000029'),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57','LAsLoc_000005','AssociatedLocation_000005'),('2019841b-5c4a-436f-b962-b5ea3b07a300','LAssPs_000016','AssociatedPosition_000016'),('2126f5c8-cb8c-4ee2-a812-bbf17824e0c9','LGeoPt_000045','GeoPoint_000045'),('2135642f-501f-4c17-9be0-e30f77b004f8','LAssPs_000013_3D','AssociatedPosition_000013_3D'),('227b147c-9ca0-45fb-8127-37c0e76dd2fe','LAssPs_000069_3D','AssociatedPosition_000069_3D'),('236f1fd0-3707-436d-9b2e-55d007289ec3','LAssPs_000049_3D','AssociatedPosition_000049_3D'),('25455e34-bfd1-4177-bc50-693cef286b76','LAsLoc_000036','AssociatedLocation_000036'),('26d2a50f-7c07-476a-9237-ff664c89761f','LAssPs_000050_3D','AssociatedPosition_000050_3D'),('26e05d9a-5f77-4fc8-bab2-9910b373c083','XPBlse_000020','Balise_000020'),('26ee3b2d-f58b-462b-adb5-d159090c88ea','LGeoPt_000047','GeoPoint_000047'),('276a2a9d-d81c-4ccb-9695-13e810edaf6e','LAssSc_000004','AssociatedSection_000004'),('2799d78e-8416-409b-8c09-80b21cf7d036','XCTSign_000001','TracksideSignal_000001'),('27e1ccd9-c298-481c-b244-4f0f5c4edb10','LAsLoc_000063','AssociatedLocation_000063'),('27f9d7c5-a439-47b4-9f38-1177586cbe19','XPBlse_000013','Balise_000013'),('28bb66f2-f928-4370-b735-e822bd951df4','LAsLoc_000021','AssociatedLocation_000021'),('29417886-5c69-4ef5-9daf-0842415935ec','XGStVC_000002','StraightVC_000002'),('2950249d-ad0f-434c-be25-fb94c9b87a11','XOSpSc_000004','SpeedSection_000004'),('29b27a99-e952-411f-b79d-62370cc50a34','LAssPs_000015','AssociatedPosition_000015'),('2a70d8c9-9d63-4e4f-830a-ef9436677df1','LAssPs_000059_3D','AssociatedPosition_000059_3D'),('2aa4a136-53f4-4230-a87c-9c4002bd6b26','LGeoPt_000057','GeoPoint_000057'),('2ac252cc-1a23-48be-8d6e-4b86a07e93ab','LAssPs_000043_3D','AssociatedPosition_000043_3D'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918','XPBlse_000039','Balise_000039'),('2b46747a-1982-40ea-8aa4-1047c16abf0c','LAssPs_000010_3D','AssociatedPosition_000010_3D'),('2b783415-8e6d-43c9-83e2-81b7a0d82882','LAssPs_000031','AssociatedPosition_000031'),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4','LAsLoc_000016','AssociatedLocation_000016'),('2d33f61b-4519-4f66-9351-ac6b766e619f','LAsLoc_000043','AssociatedLocation_000043'),('2e49f1d9-6af9-47ca-9e4e-8d2fabde3b77','LAssPs_000033_3D','AssociatedPosition_000033_3D'),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751','LAsLoc_000033','AssociatedLocation_000033'),('2fa6ed09-b298-419d-81f9-674200c80c84','LAssPs_000046','AssociatedPosition_000046'),('2fb9d74c-bb13-4833-a2a2-fc5d09d8e374','LAssPs_000009','AssociatedPosition_000009'),('2fcd1de4-b5dc-4de1-b424-9356231d9161','LGeoPt_000032','GeoPoint_000032'),('2fe7c7ea-a86e-40f6-b338-2ac04f6a8cd7','LAssPs_000063','AssociatedPosition_000063'),('2ffb28ca-96f5-4459-ae92-79b326322198','LAssPs_000061_3D','AssociatedPosition_000061_3D'),('300a5be5-5a15-4e94-a3a7-b95a97df0079','LAssPs_000052','AssociatedPosition_000052'),('301a9233-7757-47e1-a9ba-b2970fd8e4f2','LGeoPt_000035','GeoPoint_000035'),('304cf976-6b08-4b45-bc22-a8cc5866d313','LGeoPt_000044','GeoPoint_000044'),('31134ddf-2269-4578-895c-b6ccedc0dbaf','LGeoPt_000030','GeoPoint_000030'),('31475acb-0c21-48ed-aa9a-28f5383f7075','LGeoPt_000014','GeoPoint_000014'),('31de7e27-a7f4-418b-9cea-6b944a865607','LAssSc_000018','AssociatedSection_000018'),('31df2e28-a114-4e23-ae59-99f4b0b66f1e','LAssPs_000056_3D','AssociatedPosition_000056_3D'),('31e2e55d-3a4f-46a3-a975-c5d900cf97d5','LAssPs_000012','AssociatedPosition_000012'),('3210fb48-65a6-4e87-b4da-b1f30ab958b5','LGeoPt_000043','GeoPoint_000043'),('32617a21-0ae9-4486-9189-8463111e5ddc','XCTSign_000013','TracksideSignal_000013'),('329e3a88-bfe6-4ad5-9b57-6ab28ec6c70f','LAssPs_000072_3D','AssociatedPosition_000072_3D'),('32b72542-f146-44ed-ae59-0d0dd898339b','XGCAHC_000001','CircularArcHC_000001'),('333ae376-6658-4fbe-86d7-de80ebceeeef','LAsLoc_000057','AssociatedLocation_000057'),('34d359e3-a53f-48e2-9ff9-7accddd90824','LGeoPt_000036','GeoPoint_000036'),('34e34729-eaa9-4a11-89d5-d526568c4de5','LAssPs_000077','AssociatedPosition_000077'),('35705e47-f346-4c5e-b340-22f276d6adaa','LAssPs_000008','AssociatedPosition_000008'),('364e6b35-3705-4390-8bd7-9c4c069540a9','XPBlse_000018','Balise_000018'),('3660591b-7979-4873-8566-6de58976950b','LAsLoc_000056','AssociatedLocation_000056'),('3660f6eb-4ba5-463c-9133-c0fc6b28c300','LAssPs_000041','AssociatedPosition_000041'),('38069531-1026-4b46-a572-b128c18ec18c','XPBlse_000033','Balise_000033'),('390fa6af-7512-4ceb-a0fc-0b5728642d73','XGStHC_000002','StraightHC_000002'),('39bb825c-0d68-4c44-b669-3ce7eab6f7cd','LAssSc_000011','AssociatedSection_000011'),('3a13352d-376d-4a8e-aa0a-1db5621be935','XYSigT_000001','main'),('3a517cb2-f2ed-462c-b281-cf46dbff99b2','LGeoPt_000042','GeoPoint_000042'),('3a6660ea-f800-4917-86a1-75fee90d9a55','LAsLoc_000006','AssociatedLocation_000006'),('3ad1de23-c02e-41e1-bec6-c625933d14e9','XPBlse_000026','Balise_000026'),('3bc42c44-6215-4305-aeed-640f7086c018','LAssPs_000058_3D','AssociatedPosition_000058_3D'),('3bc94d92-e9d6-4e64-9030-41016ddb04b1','LGeoPt_000020','GeoPoint_000020'),('3c9b6391-91ec-4453-8a30-87809d4f941f','LAsLoc_000049','AssociatedLocation_000049'),('3d13e88f-1c88-4ba9-893b-4eccca61e442','XCTSign_000010','TracksideSignal_000010'),('3d1c0315-240a-4e56-8a2a-254bfd7a24ef','LAssPs_000015_3D','AssociatedPosition_000015_3D'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e','XGStVC_000006','StraightVC_000006'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62','XGLiSR_000002','LinearSuperelevationRamp_000002'),('3f9635d8-6460-46cb-9d74-0293aba82e86','LGeoPt_000028','GeoPoint_000028'),('40f2d16c-8dd0-4198-ac74-c260235c0e67','XCTSign_000015','TracksideSignal_000015'),('4258eb32-f565-4699-9af0-2589898ad991','LAssPs_000066_3D','AssociatedPosition_000066_3D'),('42a6abfc-4bcc-41f4-bed6-580a0eaf926a','LGeoPt_000008','GeoPoint_000008'),('42db04f7-224d-4185-96bd-83ef78e295e9','XGCoSu_000002','ConstantSuperelevation_000002'),('4335eda7-7674-4541-aa8b-05dbf8fed356','LAssPs_000059','AssociatedPosition_000059'),('43432693-5c55-426d-a5a7-f62bb0af67d1','LAsLoc_000071','AssociatedLocation_000071'),('43a66cb9-46bb-4934-a30d-fe6473785ce4','XGLiSR_000006','LinearSuperelevationRamp_000006'),('44b12111-a06c-4204-8d73-55794b6f99c3','LAssPs_000040_3D','AssociatedPosition_000040_3D'),('452e59d2-c784-44cd-abbf-d13d8e793bb3','LAssPs_000045_3D','AssociatedPosition_000045_3D'),('46268b2b-146f-4873-9019-3ca4899ff14e','LAssPs_000053_3D','AssociatedPosition_000053_3D'),('46d81d9a-df69-4929-9425-d58186b88f74','LAssPs_000028','AssociatedPosition_000028'),('472b07e6-155e-4e7c-b4c6-754011559fa8','LGeoPt_000040','GeoPoint_000040'),('47529a09-a1cc-4ebf-8955-a16c39303eae','XPBlse_000010','Balise_000010'),('47c1ed7b-fa77-4c81-8eef-69845d4df868','XCTSign_000004','TracksideSignal_000004'),('47f2dcef-dc53-4ab3-9966-24205149f4db','LAsLoc_000028','AssociatedLocation_000028'),('48abe320-b800-4f48-adad-4dc503c54ff4','LAsLoc_000010','AssociatedLocation_000010'),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8','LAsLoc_000002','AssociatedLocation_000002'),('4a0cfe80-ab79-4e4c-b58e-610501e057b6','LAssPs_000045','AssociatedPosition_000045'),('4acd737d-31ba-4be8-a157-7e9fdd26ff0c','LGeoPt_000025','GeoPoint_000025'),('4b043639-bc5f-411d-a741-276ad262b786','LAsLoc_000003','AssociatedLocation_000003'),('4b096cf3-4b8f-4075-b049-33927c60cc0d','XPBlse_000034','Balise_000034'),('4b3b20ee-ebd2-442a-a4c5-d3e5316bd9db','LAssPs_000018','AssociatedPosition_000018'),('4c17ba4b-d54d-4077-908f-0d9e704fa72d','LAsLoc_000014','AssociatedLocation_000014'),('4c75c162-40e4-4234-99b7-dd1bf2632987','LGeoPt_000027','GeoPoint_000027'),('4cc213cc-0574-4914-847e-85b32f056ac1','LAssSc_000010','AssociatedSection_000010'),('4d228e7c-b38d-43a1-8409-f854fcf6f4fb','LAssSc_000001','AssociatedSection_000001'),('4d4cd0b1-de2f-4e78-9602-61046c05b411','LAssPs_000076_3D','AssociatedPosition_000076_3D'),('4db19623-8331-4c81-9b7c-e8aebc03033b','XPBlse_000003','Balise_000003'),('4de555a2-1809-4454-a63a-ef9ebb2c10d7','LAssPs_000065','AssociatedPosition_000065'),('4e0651b8-8283-451e-bb70-2d42f89887e0','XOSpSc_000008','SpeedSection_000008'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0','XPBlse_000006','Balise_000006'),('4ecf7943-7873-434d-89b6-1a486f85b77a','XGCoSu_000005','ConstantSuperelevation_000005'),('4f64ca12-091c-4f47-9f40-ea0484f6355e','LAsLoc_000093','AssociatedLocation_000093'),('502f79a5-db67-4315-bbdf-37b467100783','LAssSc_000006','AssociatedSection_000006'),('50b05f70-ca53-4964-9a79-37222d7b275d','XPBlse_000005','Balise_000005'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b','XCTSign_000014','TracksideSignal_000014'),('5103c8b9-4cf9-4ab2-9e7d-14dc4d381dfc','LAssPs_000028_3D','AssociatedPosition_000028_3D'),('51a216f2-f50f-4aa0-a579-311484a65253','LAssPs_000051','AssociatedPosition_000051'),('51ab9fed-6e7c-4063-9744-8ae03edf5399','LAssPs_000001_3D','AssociatedPosition_000001_3D'),('5289a274-9b12-4f64-8b33-5a564f60f66a','LAssPs_000022_3D','AssociatedPosition_000022_3D'),('53eae429-bde8-4f96-81c9-db833b7f4c25','PGeoPS_000001','Geometrický souřadnicový systém000000'),('540e79c4-a0a9-47af-8186-a064378c4338','LAssPs_000010','AssociatedPosition_000010'),('555ceaae-2ac9-4485-8eec-58081bdf8b89','LAssPs_000078','AssociatedPosition_000078'),('55622aa1-bea9-40f3-98b2-d32f6e44dd60','LAssPs_000022','AssociatedPosition_000022'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9','XGLiSR_000001','LinearSuperelevationRamp_000001'),('55c9d3a3-872b-47ac-8ed2-437eff14f306','LGeoPt_000062','GeoPoint_000062'),('5624dd54-16ce-4175-ad65-7da103f964f6','LAssPs_000051_3D','AssociatedPosition_000051_3D'),('5695c0f7-ceeb-4127-8c5c-2da3a5932225','TLinEl_000001_3D','LinearElement_000001_3D'),('56a71c7d-430d-428a-92ac-44f0862e7290','LAsLoc_000008','AssociatedLocation_000008'),('56e7182e-8c69-458c-9fcb-f6058279ccc2','LAsLoc_000047','AssociatedLocation_000047'),('588b9192-e349-4031-bd8e-49dc16f19ff9','XPBlse_000015','Balise_000015'),('59256249-29ed-4480-8caf-7e849c938987','LAssPs_000081_3D','AssociatedPosition_000081_3D'),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456','LAsLoc_000079','AssociatedLocation_000079'),('5ad462db-8cb2-45ff-9329-183dcca47d22','LAssPs_000036_3D','AssociatedPosition_000036_3D'),('5b0024c1-cdc8-48bc-b3ca-42dce781d302','LAssPs_000055_3D','AssociatedPosition_000055_3D'),('5b525c9d-40d5-4291-93b1-a81128ed5464','LAssPs_000050','AssociatedPosition_000050'),('5b5577ef-8dd9-48f6-9453-0e269a2b3a46','LGeoPt_000052','GeoPoint_000052'),('5baa6010-3a05-4152-8eaa-082bfb523b59','LAssPs_000020_3D','AssociatedPosition_000020_3D'),('5d12f423-f1fc-4f9c-8e9e-90c455c91874','LGeoPt_000017','GeoPoint_000017'),('5e28cd99-e82f-44a9-b5a9-8ef0cffdc05d','LGeoPt_000050','GeoPoint_000050'),('5eaab8bb-d072-4760-8454-a9721316d2ab','LAssPs_000009_3D','AssociatedPosition_000009_3D'),('5eb475cf-efb9-488a-8a9a-8e0bb8072b37','LGeoPt_000059','GeoPoint_000059'),('5f32d8ef-5e29-4613-ab0e-c8d666704229','XGClHC_000002','ClothoidHC_000002'),('602bb3ce-12a2-4288-bc2b-25130d4f677e','LAssPs_000068','AssociatedPosition_000068'),('604fffe7-95b2-42f7-b732-f8ce0fc2e86f','LAssPs_000001','AssociatedPosition_000001'),('60720144-4d50-4215-a779-d1234f6be5da','LAssPs_000093','AssociatedPosition_000093'),('60c63f89-bd12-40a7-aed6-998035edde3e','LAsLoc_000077','AssociatedLocation_000077'),('62407317-922e-4bbd-b03d-50a180f09885','LGeoPt_000033','GeoPoint_000033'),('6268314a-6dcc-477e-bb20-6d821036e607','LAsLoc_000088','AssociatedLocation_000088'),('6323fba8-3e59-4d04-b666-dc9e54f915bd','LAssPs_000019','AssociatedPosition_000019'),('63a59af7-cc0b-4708-838d-4ef36ca39ab3','LAssPs_000075_3D','AssociatedPosition_000075_3D'),('6402006a-735d-4a5b-ad17-f2c24e687c76','LGeoPt_000012','GeoPoint_000012'),('6508e6e7-0122-4a8c-8697-63c0b2f8ce46','LGeoPt_000001','GeoPoint_000001'),('65100f76-ecee-4c9f-876e-b36b1053d4f8','LAssPs_000005_3D','AssociatedPosition_000005_3D'),('65c9da5e-9af7-4075-aca5-38083216f665','LAsLoc_000062','AssociatedLocation_000062'),('65d15f20-5245-422f-9d5b-82b147a4de25','XOSpSc_000005','SpeedSection_000005'),('66400b90-fc89-4b24-9d02-9e189e7cd818','LAssPs_000026_3D','AssociatedPosition_000026_3D'),('664edb17-58a7-4d18-8245-4fe0d5c087e6','LGeoPt_000019','GeoPoint_000019'),('667477b7-e08a-4abe-906e-86bebc26b3bb','XPBlse_000029','Balise_000029'),('66768df2-d6e3-4ada-b0de-c95e3302d413','LAssPs_000055','AssociatedPosition_000055'),('675c7023-72d2-458f-9fcd-5eb619762ce4','LGeoPt_000003','GeoPoint_000003'),('683d40f0-f025-4f42-8929-a31c82e460c4','LAssPs_000012_3D','AssociatedPosition_000012_3D'),('6849be14-3caf-46e4-9a8d-c2faa01751ca','LAssPs_000014','AssociatedPosition_000014'),('68b433fb-af0f-439b-9cbc-4f434e7a120b','XCTSign_000002','TracksideSignal_000002'),('68f5763b-5a8b-4260-9446-54ca77be3ccc','LAssSc_000023','AssociatedSection_000023'),('69033d61-b770-471d-8c72-06984e8bc294','LGeoPt_000049','GeoPoint_000049'),('69f83619-c907-4dc9-aaba-8d78d4bccc53','LAssPs_000049','AssociatedPosition_000049'),('6a7fe213-9090-4d79-b810-9591f0e63f08','LAssPs_000046_3D','AssociatedPosition_000046_3D'),('6a891bbe-0c19-4abc-a685-d7e76cc04f3c','LAssPs_000017_3D','AssociatedPosition_000017_3D'),('6ac2e221-044e-4727-813b-c91e96f1d59f','XOSpSc_000002','SpeedSection_000002'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3','XGStHC_000006','StraightHC_000006'),('6b080122-3982-49d5-b741-bdacf5418861','LAssSc_000040','AssociatedSection_000040'),('6b25b441-86c6-416a-85f8-c7d9da5cbfd0','LAssPs_000039','AssociatedPosition_000039'),('6be06976-a899-4cb8-a743-1410095d607c','LAssPs_000085','AssociatedPosition_000085'),('6bee4cf5-e372-40e3-8bd5-3ee0ff3dd9b0','LAssPs_000018_3D','AssociatedPosition_000018_3D'),('6caa269f-85ba-4870-832e-781f5a9753da','XCTSign_000005','TracksideSignal_000005'),('6d43b482-4704-4243-9c8b-04de791a82ed','XCTSign_000008','TracksideSignal_000008'),('6e86f033-d9b5-4afc-91e6-60fb4167d587','LAssPs_000020','AssociatedPosition_000020'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f','XCTSign_000006','TracksideSignal_000006'),('705898a1-bda4-463b-b9d9-37b1e8dd3eff','LAsLoc_000058','AssociatedLocation_000058'),('709c7842-b7fd-4915-95bb-e4e57201d4ad','LAsLoc_000097','AssociatedLocation_000097'),('711cc632-431e-4274-8410-ef4b6a794b6c','LAssPs_000006_3D','AssociatedPosition_000006_3D'),('71600112-3966-4a9a-852e-b2f02aebc7db','LAssPs_000093_3D','AssociatedPosition_000093_3D'),('7254b735-486d-4f37-b30f-7f5c78476a22','LGeoPt_000009','GeoPoint_000009'),('728a9d52-1579-4f8b-825a-83982608d9a1','LAsLoc_000007','AssociatedLocation_000007'),('731e2b71-dccb-499b-b406-369328f6330f','LGeoPt_000004','GeoPoint_000004'),('73cc4a98-e747-4b2d-80ec-f250208a5e2e','LAssPs_000084_3D','AssociatedPosition_000084_3D'),('73dd753b-0449-45d1-b198-418c8daa56d0','LGeoPt_000011','GeoPoint_000011'),('743af29b-6935-4660-a6cb-5f3c25066961','LAssSc_000020','AssociatedSection_000020'),('744847d0-494b-4805-8628-07d25058237a','LAssPs_000080','AssociatedPosition_000080'),('758cb070-5e99-4cbe-93b5-d10e122c9505','LAssSc_000038','AssociatedSection_000038'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd','XGPbVC_000005','ParabolaVC_000005'),('767b79cf-a053-4a00-b820-d093d68fd8b6','XPBlse_000043','Balise_000043'),('769dc71a-26e6-42d5-af92-7b1b6b187443','LAssPs_000038','AssociatedPosition_000038'),('76f9e8c6-023a-403e-842a-a5eeea4916da','XCTSign_000016','TracksideSignal_000016'),('77fb4cc3-22fb-49a2-9cc6-e474e0e3d63c','LAssPs_000033','AssociatedPosition_000033'),('791bf27f-3671-48d2-9e7a-f63d7f5b5e55','LAssPs_000032','AssociatedPosition_000032'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5','XPBlse_000004','Balise_000004'),('7975c16b-0243-42c3-a686-74469e0302e3','LAssPs_000070_3D','AssociatedPosition_000070_3D'),('7989faf8-b33d-447b-a18e-ca4f70c29909','LAssPs_000021_3D','AssociatedPosition_000021_3D'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a','XCTSign_000011','TracksideSignal_000011'),('7b472dde-a145-4a5c-ac30-05191a01b693','LAssSc_000030','AssociatedSection_000030'),('7bd3f369-45ea-4bd5-a83c-0d74df0002cb','LAssSc_000027','AssociatedSection_000027'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8','XPBlse_000038','Balise_000038'),('7c77b497-f2dc-482c-a0bc-383a952a2da4','XYSigT_000002','ab'),('7e15063b-4f15-4845-911a-3aef4da09c1e','LAssSc_000029','AssociatedSection_000029'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e','XPBlse_000017','Balise_000017'),('7f804017-4582-4242-9943-a0e5a9600b88','LAsLoc_000082','AssociatedLocation_000082'),('7f88dee8-a634-4f41-8717-8e8befe6feab','LAsLoc_000030','AssociatedLocation_000030'),('7fb51a90-c9a7-43e1-b51f-fab92cf9304e','LAssPs_000067_3D','AssociatedPosition_000067_3D'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5','XPBlse_000023','Balise_000023'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d','XPBlse_000024','Balise_000024'),('83183263-5091-4103-82d1-56129605415a','LAssPs_000024','AssociatedPosition_000024'),('837a119a-ad62-469d-96f6-a216fe5a2629','LAssPs_000057','AssociatedPosition_000057'),('83962e21-18e3-4033-b060-cf9ec2047dc8','LAssPs_000004','AssociatedPosition_000004'),('84b04a57-2047-428d-98e7-7a8d7deedaef','LAssPs_000076','AssociatedPosition_000076'),('852f242d-cca6-4f21-b84b-9b9467ec7c65','XPBlse_000027','Balise_000027'),('86dae328-33e0-4a44-a287-3c8361521bf6','LAsLoc_000052','AssociatedLocation_000052'),('87ccd3fb-8235-45ab-86f2-9df058c8b942','LAssPs_000023_3D','AssociatedPosition_000023_3D'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a','XGStHC_000001','StraightHC_000001'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb','XPBlse_000025','Balise_000025'),('8877868b-e670-45be-9823-b9ea6a603763','XCTSign_000003','TracksideSignal_000003'),('88a25ad4-d98e-4686-93ef-f77367bfd320','LAssSc_000007','AssociatedSection_000007'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230','XGClHC_000003','ClothoidHC_000003'),('89fee055-9c00-4c56-86e4-4cc138eccabc','LAssPs_000082_3D','AssociatedPosition_000082_3D'),('8a5f326f-fbca-4519-ad9b-cf9991f5725f','LAsLoc_000073','AssociatedLocation_000073'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d','XPBlse_000036','Balise_000036'),('8bb66c7b-65a4-42dd-9368-3ae036e9cb6c','LAssSc_000037','AssociatedSection_000037'),('8c95a69b-6fae-4954-bf87-d0063195f568','LAssPs_000027_3D','AssociatedPosition_000027_3D'),('8cc1ddf9-9207-4b15-925d-6baf2a0391e4','LAssPs_000067','AssociatedPosition_000067'),('8d1251c3-998e-4112-b090-31a9f6a0174e','LAssPs_000003','AssociatedPosition_000003'),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad','LAsLoc_000017','AssociatedLocation_000017'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17','XPBlse_000032','Balise_000032'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca','XPBlse_000014','Balise_000014'),('8effeebb-7679-474b-b187-43f91542b714','LAsLoc_000026','AssociatedLocation_000026'),('902dcdf8-7eb9-4444-af86-33193215bd88','XPBlse_000002','Balise_000002'),('90fd6ef3-34c3-4941-af3d-401a544aee72','LAssPs_000006','AssociatedPosition_000006'),('9108bd03-6144-4693-ba6e-7174b11c6db6','XGCoSu_000001','ConstantSuperelevation_000001'),('910d1e73-4df6-4b15-9745-8c77e564c67a','TLinEl_000001','LinearElement_000001'),('912e925b-edf3-4f36-8509-8d5ae4177750','LAssPs_000030_3D','AssociatedPosition_000030_3D'),('9178b6af-7b8f-4127-a36d-a334e7aabfd9','LAssPs_000083','AssociatedPosition_000083'),('91b1be25-3841-44cd-b31c-0c7ac5f77778','LAssPs_000079','AssociatedPosition_000079'),('91eb52a9-c3f3-484e-9651-a386273a648b','LGeoPt_000018','GeoPoint_000018'),('923d2761-9734-4980-9684-60d9cf01902d','LGeoPt_000051','GeoPoint_000051'),('939874d7-a5f0-48ad-ac78-9fcdce2ffce0','LAssPs_000004_3D','AssociatedPosition_000004_3D'),('93afbf8e-415c-43a3-9134-f89357902809','XGCoSu_000006','ConstantSuperelevation_000006'),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3','LAsLoc_000027','AssociatedLocation_000027'),('94dcacd1-b692-4220-b615-d8502b5482a4','LAssPs_000092_3D','AssociatedPosition_000092_3D'),('950dcb66-d81f-47d8-a057-e01e36d4e9bb','LAssPs_000081','AssociatedPosition_000081'),('9520e575-0983-40f8-b0f0-2e8ecea6fe42','LAsLoc_000076','AssociatedLocation_000076'),('95bc7ca4-ee83-4585-9817-8ec1eb7997d7','LAssPs_000024_3D','AssociatedPosition_000024_3D'),('95c78591-a626-4b1a-b1a3-bafb8a7b3d48','LAssSc_000028','AssociatedSection_000028'),('95cd2cf1-dcc5-48b1-b88f-66875cca638c','LAssPs_000080_3D','AssociatedPosition_000080_3D'),('96e6f5ef-954a-4ada-8af2-be55214b84e9','LAssPs_000002','AssociatedPosition_000002'),('9735ba6c-1663-49e3-a3da-e7bd85f45948','LAssPs_000041_3D','AssociatedPosition_000041_3D'),('9736089b-e2b9-48db-bf62-9f8849c8f350','XCTSign_000009','TracksideSignal_000009'),('975460d1-4453-450f-bf6c-14727d8f9df3','LAssSc_000026','AssociatedSection_000026'),('976543b9-5aed-4800-b023-dd34856ea1d8','LAssPs_000066','AssociatedPosition_000066'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8','XGCAHC_000008','CircularArcHC_000008'),('97c85f99-c081-4d1f-9d1d-48731a056fd6','LAssPs_000008_3D','AssociatedPosition_000008_3D'),('97d85633-a337-4890-b396-c24d0e9cd705','LAssPs_000007','AssociatedPosition_000007'),('98b22019-6332-47e8-9b02-4ee53b052583','LGeoPt_000046','GeoPoint_000046'),('98c32492-27fb-469f-a864-84502bb4fc02','LGeoPt_000048','GeoPoint_000048'),('98df0731-144c-4cbb-8f26-125cc7e4b795','LAsLoc_000075','AssociatedLocation_000075'),('993fd49f-ada9-44a9-8c8d-775605015284','LAssPs_000035_3D','AssociatedPosition_000035_3D'),('999596ab-4774-4d1d-8c05-d51787e24122','LAsLoc_000081','AssociatedLocation_000081'),('99d0d301-dff8-42b9-acd4-7ced58e511ff','LAsLoc_000070','AssociatedLocation_000070'),('9a010ba7-7c2d-42ce-9925-ffc97f988d71','LAsLoc_000061','AssociatedLocation_000061'),('9a1f4355-cf42-4821-a8d9-948ed71d73b4','LGeoPt_000023','GeoPoint_000023'),('9a67c071-1b66-4716-b1aa-f1a06fd7e057','LAssPs_000003_3D','AssociatedPosition_000003_3D'),('9b7958b1-92d5-4657-aeac-fd960ee6098f','XGPbVC_000001','ParabolaVC_000001'),('9b825acc-e081-4bcc-a3d1-993da20dc22e','LAsLoc_000065','AssociatedLocation_000065'),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8','LAsLoc_000054','AssociatedLocation_000054'),('9da483cb-9261-4fce-9b03-38d802585935','XPBlse_000001','Balise_000001'),('9ea0fdd8-8f7c-4182-a7bb-999035956d26','LAssSc_000008','AssociatedSection_000008'),('9eca42f9-c247-4dd9-810c-d09b69a96964','LGeoPt_000021','GeoPoint_000021'),('9f64a748-7af9-41fe-b5d6-81037c18ea57','XGClHC_000001','ClothoidHC_000001'),('a09f7b29-77ab-4a77-a803-053384327475','LAsLoc_000084','AssociatedLocation_000084'),('a0b8bbb1-2b7a-40d4-89b7-fcda854b58e5','LAssPs_000044_3D','AssociatedPosition_000044_3D'),('a2af9a5c-24c7-49db-b134-f53d013fe244','LAssPs_000077_3D','AssociatedPosition_000077_3D'),('a2f869ae-8e63-4d38-a3cc-8575e3da090f','LGeoPt_000015','GeoPoint_000015'),('a3be6484-6f78-436c-b82e-d6ed9c730cd8','LAssPs_000090_3D','AssociatedPosition_000090_3D'),('a47a3400-4286-41c7-9fc9-d7c378fbe838','LAsLoc_000059','AssociatedLocation_000059'),('a4fcc78c-7a5c-4829-868a-4636e194a11b','LAssPs_000089_3D','AssociatedPosition_000089_3D'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617','XPBlse_000016','Balise_000016'),('a596f918-2df5-419e-b9c9-032ce481b5f5','LGeoPt_000013','GeoPoint_000013'),('a670b4bf-f87c-4055-92f9-f86bda09e690','LAsLoc_000055','AssociatedLocation_000055'),('a6919436-9467-416c-a065-95d8e6aab4d3','LAssPs_000034_3D','AssociatedPosition_000034_3D'),('a6d5c9bf-91c5-49a7-9140-081fd57543f2','LAssPs_000071_3D','AssociatedPosition_000071_3D'),('a75b2734-30a3-45eb-bc21-dc328b7377f9','LAsLoc_000032','AssociatedLocation_000032'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014','XPBlse_000042','Balise_000042'),('a85b007e-f3a6-41d8-9f1e-990357683971','LAssPs_000073_3D','AssociatedPosition_000073_3D'),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf','LAsLoc_000060','AssociatedLocation_000060'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f','XPBlse_000028','Balise_000028'),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f','LAsLoc_000015','AssociatedLocation_000015'),('aab99697-56d1-40db-9588-b36739412118','LAssPs_000023','AssociatedPosition_000023'),('abf5000f-f2f4-45d5-94aa-325e8436db2b','LAsLoc_000050','AssociatedLocation_000050'),('ac1dd4fc-bd1f-46ec-a4e7-8c63177f9d28','LAssPs_000052_3D','AssociatedPosition_000052_3D'),('acd25e23-c017-425b-8474-b8a948a5d2b3','LAssPs_000061','AssociatedPosition_000061'),('ad3d80d0-67ec-40e7-ae78-2b09c5e8df4a','LAssPs_000035','AssociatedPosition_000035'),('ad8e224c-9472-4336-8c17-01afb6abac72','LAssPs_000091_3D','AssociatedPosition_000091_3D'),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add','LAsLoc_000085','AssociatedLocation_000085'),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d','LAsLoc_000099','AssociatedLocation_000099'),('b045c8a6-425d-45e5-9254-f9207728797f','XGStVC_000001','StraightVC_000001'),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e','LAsLoc_000087','AssociatedLocation_000087'),('b1cdc087-91b0-4c31-a290-e2e37e093822','LAsLoc_000068','AssociatedLocation_000068'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c','XPBlse_000040','Balise_000040'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af','XGCAHC_000007','CircularArcHC_000007'),('b58a4779-70c1-42a3-bc69-a0199cb673fe','LAssSc_000041','AssociatedSection_000041'),('b60d85e1-876e-4be4-a272-742312b08722','LAsLoc_000064','AssociatedLocation_000064'),('b6e5a3af-20bb-4b7a-b71c-2f34ed07ee05','LAssPs_000086_3D','AssociatedPosition_000086_3D'),('b72d3988-44e6-45b6-8bbf-9c34cc4158c0','LAssPs_000071','AssociatedPosition_000071'),('b78ed092-2ba8-43a7-a753-6063dd9c51b9','LGeoPt_000005','GeoPoint_000005'),('b790cecc-4c2b-42bb-9256-ee80369c04d2','LAssSc_000012','AssociatedSection_000012'),('b797f47e-a543-4bf4-979a-4083aba0000b','XPBlse_000009','Balise_000009'),('b7e84a87-f16f-4328-bb12-7bc289b26296','LAssPs_000027','AssociatedPosition_000027'),('b831b034-cc95-4147-b665-1e6294bd8d60','LAssPs_000073','AssociatedPosition_000073'),('b9c1002a-f334-4681-a689-143962e24899','XOSpSc_000006','SpeedSection_000006'),('ba3f9014-281e-4e0d-828e-e3020a96e551','LAssSc_000033','AssociatedSection_000033'),('ba41f5cc-e522-42cf-93b1-6dd5fddc7b70','LAssPs_000088','AssociatedPosition_000088'),('ba9e650f-7ffe-426d-b658-9689e18196eb','LAssPs_000040','AssociatedPosition_000040'),('bb02e0f9-fa84-49af-aff9-8761777ec907','LAsLoc_000034','AssociatedLocation_000034'),('bb0578b7-9d71-4681-b46c-ce934e5755aa','LAssPs_000091','AssociatedPosition_000091'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42','XGClHC_000006','ClothoidHC_000006'),('bc3aa2ba-bc3b-4a70-ab71-19dc36115aa0','LAssSc_000009','AssociatedSection_000009'),('bc53b872-a66c-4de9-afe2-e0b0d57f4eb6','LGeoPt_000007','GeoPoint_000007'),('bc6a6a38-72f0-4b18-aba9-edbd52852068','LAsLoc_000094','AssociatedLocation_000094'),('bddb0084-0ed2-4e64-aa02-a524c8ad303f','LAssPs_000064_3D','AssociatedPosition_000064_3D'),('be3faccb-b557-4c65-90f7-976c401b396a','XOSpSc_000001','SpeedSection_000001'),('bea3fc59-365d-4253-a5a1-3e225acf1106','LAsLoc_000089','AssociatedLocation_000089'),('beac405a-a4bd-490d-9335-9638e001f937','LAssPs_000065_3D','AssociatedPosition_000065_3D'),('bedcbb5b-c119-451d-ae3a-7204f0c7335a','LAsLoc_000022','AssociatedLocation_000022'),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9','LAsLoc_000040','AssociatedLocation_000040'),('c0959fcb-5b54-437f-8df5-a59e729a70b9','LGeoPt_000058','GeoPoint_000058'),('c13536c1-5744-48f4-9649-b9d3e1e475cb','XGPbVC_000003','ParabolaVC_000003'),('c19bffaf-a310-4000-9c1c-f6f9fc060334','LAsLoc_000091','AssociatedLocation_000091'),('c2304be5-282a-4a5a-9ec3-e1149284cd7a','LAssPs_000060','AssociatedPosition_000060'),('c23a4cdd-854d-43e1-aa03-3a208dbca255','LAssPs_000074','AssociatedPosition_000074'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18','XGStVC_000003','StraightVC_000003'),('c2c301b5-8404-42b6-a687-5e1b4880dffc','LAssSc_000019','AssociatedSection_000019'),('c2e508ab-139c-4601-84fe-6e534344ce92','XPBlse_000035','Balise_000035'),('c34b71c4-bc7a-4edc-8635-3ba6b6590875','LGeoPt_000053','GeoPoint_000053'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b','XGClHC_000004','ClothoidHC_000004'),('c501feb3-249e-4642-975c-4abf9c4693d1','LGeoPt_000026','GeoPoint_000026'),('c5393e9f-2c65-40bd-a2ac-32db50845885','LAsLoc_000045','AssociatedLocation_000045'),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1','LAsLoc_000001','AssociatedLocation_000001'),('c5b6fca1-d851-45b7-8f06-88ffb213388a','XCTSign_000012','TracksideSignal_000012'),('c6aac27c-8056-4c86-85ab-8983ab87362a','XGCAHC_000002','CircularArcHC_000002'),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57','LAsLoc_000044','AssociatedLocation_000044'),('c7acb121-5adc-40e7-9280-42b7d335df3b','LAssSc_000005','AssociatedSection_000005'),('c7b47338-c191-41d5-a057-4f358d40f168','LAsLoc_000067','AssociatedLocation_000067'),('c7e98354-6400-4724-bf19-138669b25993','LAsLoc_000041','AssociatedLocation_000041'),('c87e3e0c-01cc-4c2e-8eb4-ea64a0457540','LAssSc_000017','AssociatedSection_000017'),('c8b31340-41d9-4791-b28a-98fc1b0c6337','LAssSc_000021','AssociatedSection_000021'),('c8b4c85d-4aa2-4e18-8b58-8189cf51cf6e','LAssPs_000032_3D','AssociatedPosition_000032_3D'),('c92509fc-c7db-46ef-b784-b93a37d88c1c','LAssPs_000029','AssociatedPosition_000029'),('ca3911af-3dfb-40c8-9dd4-78d8041ec767','LAssPs_000053','AssociatedPosition_000053'),('caa8b599-c00d-49a8-80f2-de9563e30727','LAsLoc_000035','AssociatedLocation_000035'),('cd34c226-8b87-45bf-8e76-f88f1b2052b9','LAssPs_000034','AssociatedPosition_000034'),('cef21db7-8e06-4249-903d-414e105e393e','LAssPs_000092','AssociatedPosition_000092'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565','XGCoSu_000003','ConstantSuperelevation_000003'),('cf7623ee-79f2-41f3-8926-4be70c18b5bb','LGeoPt_000002','GeoPoint_000002'),('cfadce12-10c8-44aa-b8c8-33e8d42d4f0b','LAssSc_000002','AssociatedSection_000002'),('d0217043-d49e-4279-886c-ab5f133b266d','LAssPs_000036','AssociatedPosition_000036'),('d06314e2-9492-4926-8578-77c3ad030340','LAssSc_000031','AssociatedSection_000031'),('d0dbc14c-4fd6-4528-b9e3-44fa4bd9bd14','LAssPs_000057_3D','AssociatedPosition_000057_3D'),('d14d7867-359b-46d3-9f6b-be552cbd3eb8','LAssPs_000048_3D','AssociatedPosition_000048_3D'),('d3a35778-3749-4bf8-a780-2174e09c7ff2','LAsLoc_000051','AssociatedLocation_000051'),('d3ab2776-89d8-4851-b8d3-249b81d94841','LAssSc_000036','AssociatedSection_000036'),('d47b65e6-93f1-4110-9cd3-46b4bcd5e5ab','LAssSc_000024','AssociatedSection_000024'),('d4f493ce-1dd3-4e73-9981-2879b9d5f390','LAssPs_000079_3D','AssociatedPosition_000079_3D'),('d5d929fb-4c08-4721-9133-e8d72b64c258','LAssPs_000063_3D','AssociatedPosition_000063_3D'),('d6be8438-9759-4afa-a3bd-b5127e3a7f96','LAssPs_000084','AssociatedPosition_000084'),('d6d9797c-51b3-4b68-8694-42578996e395','LAssPs_000037','AssociatedPosition_000037'),('d79a04c2-984b-42fa-a37c-727a591d97c6','XGStHC_000003','StraightHC_000003'),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf','LAsLoc_000037','AssociatedLocation_000037'),('d88a4e1b-eda3-4498-a736-0f18327e28ed','LAsLoc_000053','AssociatedLocation_000053'),('d97a3c78-7217-4297-9646-c12650f31703','LAssPs_000011_3D','AssociatedPosition_000011_3D'),('da892d47-2ff7-46a5-9fa0-fb5ab98c0ddf','LAssPs_000058','AssociatedPosition_000058'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be','XPBlse_000044','Balise_000044'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa','XGCAHC_000005','CircularArcHC_000005'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c','XPBlse_000008','Balise_000008'),('dcd45e12-9a61-4481-b4b4-bb4595fe9d01','LAssPs_000069','AssociatedPosition_000069'),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7','LAsLoc_000046','AssociatedLocation_000046'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7','XGStVC_000005','StraightVC_000005'),('de6d550a-f7b8-4f0d-b81c-1f64bf7af9fc','LAssPs_000030','AssociatedPosition_000030'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5','XCTSign_000007','TracksideSignal_000007'),('ded1d00e-86cc-4215-a23f-3f19b849d44f','LAsLoc_000098','AssociatedLocation_000098'),('df82f85d-2287-4c4c-9a90-e3c5bba67472','LAsLoc_000042','AssociatedLocation_000042'),('df9be0f4-adcb-4f7e-aafd-456e4f88c309','LAssPs_000075','AssociatedPosition_000075'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a','XOSpSc_000007','SpeedSection_000007'),('e2099fd4-fd51-44cd-9075-223d1012a9f0','LAsLoc_000009','AssociatedLocation_000009'),('e2b25350-e7e3-4b7b-998b-b4652628f816','LAsLoc_000083','AssociatedLocation_000083'),('e2b45cd7-e832-4479-8f5f-d595f4749a9f','LAsLoc_000013','AssociatedLocation_000013'),('e31f9825-79e0-4962-b3ef-01f27a8e7306','LAssPs_000068_3D','AssociatedPosition_000068_3D'),('e35e08b2-a11c-494d-930a-2f79221ffb11','LAsLoc_000024','AssociatedLocation_000024'),('e41cc1aa-986a-489b-a7d0-5e1ed6ced26c','LAssPs_000088_3D','AssociatedPosition_000088_3D'),('e4b6cd75-0166-48f7-b2f6-41ce0f3eb5ea','LGeoPt_000055','GeoPoint_000055'),('e62251d5-657c-4f48-91c4-f31f14923a71','LAssPs_000025','AssociatedPosition_000025'),('e75558be-6134-4567-b4f9-8d1b5c7bc548','LAssSc_000039','AssociatedSection_000039'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498','XPBlse_000011','Balise_000011'),('e82add42-7c89-4649-af77-4ef4b207ad70','LAssPs_000042_3D','AssociatedPosition_000042_3D'),('e86b663a-44ee-4663-9318-cdf677b27e09','LAssPs_000005','AssociatedPosition_000005'),('e88c465d-1230-4048-9b9a-4c0c6b472ef1','LAssPs_000044','AssociatedPosition_000044'),('e92c7b50-ba87-4827-91f3-c2f18b549f4d','LAssSc_000013','AssociatedSection_000013'),('e9e0da43-7fa5-4047-8950-2fd7eb583a05','LAsLoc_000078','AssociatedLocation_000078'),('e9fcaa1d-cc58-4bdd-bea0-f974c2dc4a90','LAssPs_000002_3D','AssociatedPosition_000002_3D'),('ea29b33d-fda1-4486-935f-bd100ad73ffd','LAssPs_000089','AssociatedPosition_000089'),('ea7f117e-3360-48a5-91af-6020881e2c46','XGStHC_000004','StraightHC_000004'),('eab7199d-6752-4d03-bf26-09241d91aa4c','XPBlse_000019','Balise_000019'),('ecee46bf-489a-44ca-82ca-609505c0e0ef','LAsLoc_000020','AssociatedLocation_000020'),('edccb89e-efd0-4849-b0b3-489197784c5f','LAssPs_000013','AssociatedPosition_000013'),('edd50a61-b972-4d59-96ae-177971c5dda9','XGLiSR_000003','LinearSuperelevationRamp_000003'),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e','LAsLoc_000080','AssociatedLocation_000080'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b','XGLiSR_000004','LinearSuperelevationRamp_000004'),('ef76601b-831e-480b-adcc-aee620a5573f','XGStVC_000004','StraightVC_000004'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7','XGPbVC_000002','ParabolaVC_000002'),('f0f0f62b-20e7-433c-9822-4b45d0ace9ae','LAssSc_000014','AssociatedSection_000014'),('f1f1eeec-eb5d-4e07-8ec8-c89cdd9e29bd','LGeoPt_000061','GeoPoint_000061'),('f2b4e265-77ac-4719-8386-657a58fa6171','LAssPs_000087','AssociatedPosition_000087'),('f4f96fc0-ba93-4cf5-908c-647010a61011','LAsLoc_000031','AssociatedLocation_000031'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1','XPBlse_000007','Balise_000007'),('f6ccf006-01b3-4a85-9256-392d53ef6874','LAssPs_000086','AssociatedPosition_000086'),('f7197abd-a814-4258-888f-fb5359da5611','XGStHC_000005','StraightHC_000005'),('f75e1fec-93b8-4869-adb0-2f04ff90c42b','LAsLoc_000072','AssociatedLocation_000072'),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73','LAsLoc_000012','AssociatedLocation_000012'),('f7c3c234-51ee-4df5-9e7e-a31e89cef3e5','LAssPs_000083_3D','AssociatedPosition_000083_3D'),('f860871e-64fa-4ade-800f-46c299ecdf65','LAsLoc_000066','AssociatedLocation_000066'),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340','LAsLoc_000019','AssociatedLocation_000019'),('fb0401d8-3853-4eda-b9fd-f6d28dde228b','LAsLoc_000018','AssociatedLocation_000018'),('fb9a6ee2-d46f-4830-9680-7d5219a40a99','LAsLoc_000092','AssociatedLocation_000092'),('fc1601a1-454a-4e53-ae5f-7458fb31bdde','LAssPs_000054','AssociatedPosition_000054'),('fcbd2d31-d162-4306-93db-1ba4037998ff','LAssSc_000003','AssociatedSection_000003'),('fcc6268a-284f-4717-af93-0c3534205ba3','LAsLoc_000095','AssociatedLocation_000095'),('fcf5301c-baa5-47f4-b887-7c13c3c228e7','LAssPs_000026','AssociatedPosition_000026'),('fd8b9ab2-c638-494e-a4a2-8baea8bba478','LAssSc_000034','AssociatedSection_000034'),('fe5d9832-de82-498b-901a-042928d774c8','LAsLoc_000011','AssociatedLocation_000011'),('fec4df34-db16-43f4-867e-ed077dad202a','LAssPs_000060_3D','AssociatedPosition_000060_3D'),('fefe27fd-78c2-407c-8ed6-9b9a8b2cf53f','LAssPs_000054_3D','AssociatedPosition_000054_3D'),('ffafaa1c-1f6b-43e3-b862-758a52c04f35','LAsLoc_000038','AssociatedLocation_000038'),('fffea957-d9b4-4e33-804b-18d8b95ffd9e','LAssPs_000074_3D','AssociatedPosition_000074_3D');
/*!40000 ALTER TABLE `namedresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netelement`
--

DROP TABLE IF EXISTS `netelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netelement` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×TNetEl` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netelement`
--

LOCK TABLES `netelement` WRITE;
/*!40000 ALTER TABLE `netelement` DISABLE KEYS */;
INSERT INTO `netelement` VALUES ('5695c0f7-ceeb-4127-8c5c-2da3a5932225'),('910d1e73-4df6-4b15-9745-8c77e564c67a');
/*!40000 ALTER TABLE `netelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netentity`
--

DROP TABLE IF EXISTS `netentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netentity` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×ENetEt` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netentity`
--

LOCK TABLES `netentity` WRITE;
/*!40000 ALTER TABLE `netentity` DISABLE KEYS */;
INSERT INTO `netentity` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c'),('07be4875-623f-4b25-8e32-e79bbf929a08'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae'),('0c1aeac1-0e69-42f5-a787-a990d8561dab'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b'),('0cf67c3a-fae0-4139-97c0-828958395118'),('0e782fd6-80b9-4327-a748-bca404381449'),('10c7296b-cb20-40c9-9890-e10992e4d8b2'),('13974828-1903-4364-9f69-eb7fd8d0e838'),('18216b6b-d689-41d2-b7aa-e0d8fe262651'),('1985bab8-1465-4ac3-bfa5-800d7890028c'),('1e351385-524e-4fd5-b3e3-eab03383143f'),('1e74043e-3d84-4ab4-9466-580bc61511d3'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf'),('1e9a5717-0aa3-479a-8969-57e3af52b542'),('26e05d9a-5f77-4fc8-bab2-9910b373c083'),('2799d78e-8416-409b-8c09-80b21cf7d036'),('27f9d7c5-a439-47b4-9f38-1177586cbe19'),('29417886-5c69-4ef5-9daf-0842415935ec'),('2950249d-ad0f-434c-be25-fb94c9b87a11'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918'),('32617a21-0ae9-4486-9189-8463111e5ddc'),('32b72542-f146-44ed-ae59-0d0dd898339b'),('364e6b35-3705-4390-8bd7-9c4c069540a9'),('38069531-1026-4b46-a572-b128c18ec18c'),('390fa6af-7512-4ceb-a0fc-0b5728642d73'),('3ad1de23-c02e-41e1-bec6-c625933d14e9'),('3d13e88f-1c88-4ba9-893b-4eccca61e442'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62'),('40f2d16c-8dd0-4198-ac74-c260235c0e67'),('42db04f7-224d-4185-96bd-83ef78e295e9'),('43a66cb9-46bb-4934-a30d-fe6473785ce4'),('47529a09-a1cc-4ebf-8955-a16c39303eae'),('47c1ed7b-fa77-4c81-8eef-69845d4df868'),('4b096cf3-4b8f-4075-b049-33927c60cc0d'),('4db19623-8331-4c81-9b7c-e8aebc03033b'),('4e0651b8-8283-451e-bb70-2d42f89887e0'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0'),('4ecf7943-7873-434d-89b6-1a486f85b77a'),('50b05f70-ca53-4964-9a79-37222d7b275d'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9'),('588b9192-e349-4031-bd8e-49dc16f19ff9'),('5f32d8ef-5e29-4613-ab0e-c8d666704229'),('65d15f20-5245-422f-9d5b-82b147a4de25'),('667477b7-e08a-4abe-906e-86bebc26b3bb'),('68b433fb-af0f-439b-9cbc-4f434e7a120b'),('6ac2e221-044e-4727-813b-c91e96f1d59f'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3'),('6caa269f-85ba-4870-832e-781f5a9753da'),('6d43b482-4704-4243-9c8b-04de791a82ed'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd'),('767b79cf-a053-4a00-b820-d093d68fd8b6'),('76f9e8c6-023a-403e-842a-a5eeea4916da'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d'),('852f242d-cca6-4f21-b84b-9b9467ec7c65'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb'),('8877868b-e670-45be-9823-b9ea6a603763'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca'),('902dcdf8-7eb9-4444-af86-33193215bd88'),('9108bd03-6144-4693-ba6e-7174b11c6db6'),('93afbf8e-415c-43a3-9134-f89357902809'),('9736089b-e2b9-48db-bf62-9f8849c8f350'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8'),('9b7958b1-92d5-4657-aeac-fd960ee6098f'),('9da483cb-9261-4fce-9b03-38d802585935'),('9f64a748-7af9-41fe-b5d6-81037c18ea57'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f'),('b045c8a6-425d-45e5-9254-f9207728797f'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af'),('b797f47e-a543-4bf4-979a-4083aba0000b'),('b9c1002a-f334-4681-a689-143962e24899'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42'),('be3faccb-b557-4c65-90f7-976c401b396a'),('c13536c1-5744-48f4-9649-b9d3e1e475cb'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18'),('c2e508ab-139c-4601-84fe-6e534344ce92'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b'),('c5b6fca1-d851-45b7-8f06-88ffb213388a'),('c6aac27c-8056-4c86-85ab-8983ab87362a'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565'),('d79a04c2-984b-42fa-a37c-727a591d97c6'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498'),('ea7f117e-3360-48a5-91af-6020881e2c46'),('eab7199d-6752-4d03-bf26-09241d91aa4c'),('edd50a61-b972-4d59-96ae-177971c5dda9'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b'),('ef76601b-831e-480b-adcc-aee620a5573f'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1'),('f7197abd-a814-4258-888f-fb5359da5611');
/*!40000 ALTER TABLE `netentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netentityrelation`
--

DROP TABLE IF EXISTS `netentityrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netentityrelation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_NetEntity_A` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_NetEntity_B` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `relationType` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_ENetEtA×ENtEtA` (`id_NetEntity_A`),
  KEY `FK÷id_ENetEtB×ENtEtA_idx` (`id_NetEntity_B`),
  CONSTRAINT `FK÷id_BBaObj×ENtEtR` FOREIGN KEY (`id`) REFERENCES `baseobject` (`id`),
  CONSTRAINT `FK÷id_ENetEtA×ENtEtA` FOREIGN KEY (`id_NetEntity_A`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_ENetEtB×ENtEtA` FOREIGN KEY (`id_NetEntity_B`) REFERENCES `netentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netentityrelation`
--

LOCK TABLES `netentityrelation` WRITE;
/*!40000 ALTER TABLE `netentityrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `netentityrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×NNetwk` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('02916d74-c19b-4ec8-a202-765d79335dfa');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networklevelassignment`
--

DROP TABLE IF EXISTS `networklevelassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networklevelassignment` (
  `id_LevelNetwork` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_Network` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_LevelNetwork`,`id_Network`),
  KEY `SI÷id_NNetwk×NNwLvA` (`id_Network`),
  KEY `SI÷id_NLevNw×NNwLvA` (`id_LevelNetwork`),
  CONSTRAINT `FK÷id_NLevNw×NLvNwA` FOREIGN KEY (`id_LevelNetwork`) REFERENCES `levelnetwork` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNetwk×NLvNwA` FOREIGN KEY (`id_Network`) REFERENCES `network` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networklevelassignment`
--

LOCK TABLES `networklevelassignment` WRITE;
/*!40000 ALTER TABLE `networklevelassignment` DISABLE KEYS */;
INSERT INTO `networklevelassignment` VALUES ('40c7336f-927f-4370-8052-59b17324daff','02916d74-c19b-4ec8-a202-765d79335dfa'),('d6d8bd0e-7faa-499a-81b2-8aeb844efa42','02916d74-c19b-4ec8-a202-765d79335dfa');
/*!40000 ALTER TABLE `networklevelassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkresource`
--

DROP TABLE IF EXISTS `networkresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkresource` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×NNtwRs` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkresource`
--

LOCK TABLES `networkresource` WRITE;
/*!40000 ALTER TABLE `networkresource` DISABLE KEYS */;
INSERT INTO `networkresource` VALUES ('049e46b5-aa9d-419d-8fc2-de61cd56c90b'),('068efa91-3a50-410d-acdc-39be07eeff11'),('0755058c-99ca-4a02-8f95-5e2ae1bcb75c'),('07be4875-623f-4b25-8e32-e79bbf929a08'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae'),('0c1aeac1-0e69-42f5-a787-a990d8561dab'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b'),('0cf67c3a-fae0-4139-97c0-828958395118'),('0e782fd6-80b9-4327-a748-bca404381449'),('10c7296b-cb20-40c9-9890-e10992e4d8b2'),('10ecddbf-e69b-4c07-ac45-d3d2652d2a13'),('11044084-740c-4b7d-a3b1-93b73170a68a'),('13974828-1903-4364-9f69-eb7fd8d0e838'),('14cc5352-77a4-4f52-a159-1838c5b238aa'),('160f8bba-4e13-4d7c-9266-89d7cbb7e01f'),('18216b6b-d689-41d2-b7aa-e0d8fe262651'),('18e0b3f6-e59e-4297-b2fb-dca81fdc1b58'),('194e7c4c-91a2-45d7-a66c-ff9b1ac39ccd'),('1985bab8-1465-4ac3-bfa5-800d7890028c'),('1a4b96ee-da61-43e8-ac78-525a85b5ae36'),('1d88281c-80fd-4264-b243-b78d7cf230da'),('1e351385-524e-4fd5-b3e3-eab03383143f'),('1e74043e-3d84-4ab4-9466-580bc61511d3'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf'),('1e9a5717-0aa3-479a-8969-57e3af52b542'),('1edfd449-da6c-4780-af68-fa2bd5241689'),('1fc3a7d9-5b6e-464b-a3d1-9adb90600a57'),('25455e34-bfd1-4177-bc50-693cef286b76'),('26e05d9a-5f77-4fc8-bab2-9910b373c083'),('2799d78e-8416-409b-8c09-80b21cf7d036'),('27e1ccd9-c298-481c-b244-4f0f5c4edb10'),('27f9d7c5-a439-47b4-9f38-1177586cbe19'),('28bb66f2-f928-4370-b735-e822bd951df4'),('29417886-5c69-4ef5-9daf-0842415935ec'),('2950249d-ad0f-434c-be25-fb94c9b87a11'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918'),('2c6ee7b2-290b-401b-9dcf-f0b74190cec4'),('2d33f61b-4519-4f66-9351-ac6b766e619f'),('2f1afbbd-b20c-443f-b51b-a5cfe72a1751'),('32617a21-0ae9-4486-9189-8463111e5ddc'),('32b72542-f146-44ed-ae59-0d0dd898339b'),('333ae376-6658-4fbe-86d7-de80ebceeeef'),('364e6b35-3705-4390-8bd7-9c4c069540a9'),('3660591b-7979-4873-8566-6de58976950b'),('38069531-1026-4b46-a572-b128c18ec18c'),('390fa6af-7512-4ceb-a0fc-0b5728642d73'),('3a6660ea-f800-4917-86a1-75fee90d9a55'),('3ad1de23-c02e-41e1-bec6-c625933d14e9'),('3c9b6391-91ec-4453-8a30-87809d4f941f'),('3d13e88f-1c88-4ba9-893b-4eccca61e442'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62'),('40f2d16c-8dd0-4198-ac74-c260235c0e67'),('42db04f7-224d-4185-96bd-83ef78e295e9'),('43432693-5c55-426d-a5a7-f62bb0af67d1'),('43a66cb9-46bb-4934-a30d-fe6473785ce4'),('47529a09-a1cc-4ebf-8955-a16c39303eae'),('47c1ed7b-fa77-4c81-8eef-69845d4df868'),('47f2dcef-dc53-4ab3-9966-24205149f4db'),('48abe320-b800-4f48-adad-4dc503c54ff4'),('493b212a-c1e6-4303-a4fb-14f1dd6dc8b8'),('4b043639-bc5f-411d-a741-276ad262b786'),('4b096cf3-4b8f-4075-b049-33927c60cc0d'),('4c17ba4b-d54d-4077-908f-0d9e704fa72d'),('4db19623-8331-4c81-9b7c-e8aebc03033b'),('4e0651b8-8283-451e-bb70-2d42f89887e0'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0'),('4ecf7943-7873-434d-89b6-1a486f85b77a'),('4f64ca12-091c-4f47-9f40-ea0484f6355e'),('50b05f70-ca53-4964-9a79-37222d7b275d'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9'),('5695c0f7-ceeb-4127-8c5c-2da3a5932225'),('56a71c7d-430d-428a-92ac-44f0862e7290'),('56e7182e-8c69-458c-9fcb-f6058279ccc2'),('588b9192-e349-4031-bd8e-49dc16f19ff9'),('5a564a4a-e527-41a6-8d9f-d9a5bd5a3456'),('5f32d8ef-5e29-4613-ab0e-c8d666704229'),('60c63f89-bd12-40a7-aed6-998035edde3e'),('6268314a-6dcc-477e-bb20-6d821036e607'),('65c9da5e-9af7-4075-aca5-38083216f665'),('65d15f20-5245-422f-9d5b-82b147a4de25'),('667477b7-e08a-4abe-906e-86bebc26b3bb'),('68b433fb-af0f-439b-9cbc-4f434e7a120b'),('6ac2e221-044e-4727-813b-c91e96f1d59f'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3'),('6caa269f-85ba-4870-832e-781f5a9753da'),('6d43b482-4704-4243-9c8b-04de791a82ed'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f'),('705898a1-bda4-463b-b9d9-37b1e8dd3eff'),('709c7842-b7fd-4915-95bb-e4e57201d4ad'),('728a9d52-1579-4f8b-825a-83982608d9a1'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd'),('767b79cf-a053-4a00-b820-d093d68fd8b6'),('76f9e8c6-023a-403e-842a-a5eeea4916da'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e'),('7f804017-4582-4242-9943-a0e5a9600b88'),('7f88dee8-a634-4f41-8717-8e8befe6feab'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d'),('852f242d-cca6-4f21-b84b-9b9467ec7c65'),('86dae328-33e0-4a44-a287-3c8361521bf6'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb'),('8877868b-e670-45be-9823-b9ea6a603763'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230'),('8a5f326f-fbca-4519-ad9b-cf9991f5725f'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d'),('8df4c5a2-4b60-4baa-84aa-25f14fcb80ad'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca'),('8effeebb-7679-474b-b187-43f91542b714'),('902dcdf8-7eb9-4444-af86-33193215bd88'),('9108bd03-6144-4693-ba6e-7174b11c6db6'),('910d1e73-4df6-4b15-9745-8c77e564c67a'),('93afbf8e-415c-43a3-9134-f89357902809'),('94d0c4c9-3547-4c05-b5f7-f56de01e88b3'),('9520e575-0983-40f8-b0f0-2e8ecea6fe42'),('9736089b-e2b9-48db-bf62-9f8849c8f350'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8'),('98df0731-144c-4cbb-8f26-125cc7e4b795'),('999596ab-4774-4d1d-8c05-d51787e24122'),('99d0d301-dff8-42b9-acd4-7ced58e511ff'),('9a010ba7-7c2d-42ce-9925-ffc97f988d71'),('9b7958b1-92d5-4657-aeac-fd960ee6098f'),('9b825acc-e081-4bcc-a3d1-993da20dc22e'),('9c2de20d-27d9-492d-bc4e-1e66e62c1cf8'),('9da483cb-9261-4fce-9b03-38d802585935'),('9f64a748-7af9-41fe-b5d6-81037c18ea57'),('a09f7b29-77ab-4a77-a803-053384327475'),('a47a3400-4286-41c7-9fc9-d7c378fbe838'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617'),('a670b4bf-f87c-4055-92f9-f86bda09e690'),('a75b2734-30a3-45eb-bc21-dc328b7377f9'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014'),('a8be00a7-6cfa-468b-a331-cb1c0ffb76cf'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f'),('aa2ae174-ae5a-432f-bca6-23ef34c75b6f'),('abf5000f-f2f4-45d5-94aa-325e8436db2b'),('ae2bc3e0-9f4b-46a4-8cf0-8ba180c08add'),('ae2d1a5b-cc40-47b3-a37f-0608e2b7f77d'),('b045c8a6-425d-45e5-9254-f9207728797f'),('b1352282-59cb-44e6-a0d5-fe0a1f98c35e'),('b1cdc087-91b0-4c31-a290-e2e37e093822'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af'),('b60d85e1-876e-4be4-a272-742312b08722'),('b797f47e-a543-4bf4-979a-4083aba0000b'),('b9c1002a-f334-4681-a689-143962e24899'),('bb02e0f9-fa84-49af-aff9-8761777ec907'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42'),('bc6a6a38-72f0-4b18-aba9-edbd52852068'),('be3faccb-b557-4c65-90f7-976c401b396a'),('bea3fc59-365d-4253-a5a1-3e225acf1106'),('bedcbb5b-c119-451d-ae3a-7204f0c7335a'),('bf538d1c-27fc-4a9c-a0a2-9c8c4960b3d9'),('c13536c1-5744-48f4-9649-b9d3e1e475cb'),('c19bffaf-a310-4000-9c1c-f6f9fc060334'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18'),('c2e508ab-139c-4601-84fe-6e534344ce92'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b'),('c5393e9f-2c65-40bd-a2ac-32db50845885'),('c588dc73-ad9c-4c24-abb4-9b5e0ecba9b1'),('c5b6fca1-d851-45b7-8f06-88ffb213388a'),('c6aac27c-8056-4c86-85ab-8983ab87362a'),('c6bd374f-add0-4c4a-82e2-9dfaedac3b57'),('c7b47338-c191-41d5-a057-4f358d40f168'),('c7e98354-6400-4724-bf19-138669b25993'),('caa8b599-c00d-49a8-80f2-de9563e30727'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565'),('d3a35778-3749-4bf8-a780-2174e09c7ff2'),('d79a04c2-984b-42fa-a37c-727a591d97c6'),('d7b5cad3-f88e-4d00-9b07-d7793554c9cf'),('d88a4e1b-eda3-4498-a736-0f18327e28ed'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c'),('dcd539e0-fd9d-43c1-93c0-c944cffd4ea7'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5'),('ded1d00e-86cc-4215-a23f-3f19b849d44f'),('df82f85d-2287-4c4c-9a90-e3c5bba67472'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a'),('e2099fd4-fd51-44cd-9075-223d1012a9f0'),('e2b25350-e7e3-4b7b-998b-b4652628f816'),('e2b45cd7-e832-4479-8f5f-d595f4749a9f'),('e35e08b2-a11c-494d-930a-2f79221ffb11'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498'),('e9e0da43-7fa5-4047-8950-2fd7eb583a05'),('ea7f117e-3360-48a5-91af-6020881e2c46'),('eab7199d-6752-4d03-bf26-09241d91aa4c'),('ecee46bf-489a-44ca-82ca-609505c0e0ef'),('edd50a61-b972-4d59-96ae-177971c5dda9'),('ee198f75-0e64-4de6-a9a7-5f07f80e7e0e'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b'),('ef76601b-831e-480b-adcc-aee620a5573f'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7'),('f4f96fc0-ba93-4cf5-908c-647010a61011'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1'),('f7197abd-a814-4258-888f-fb5359da5611'),('f75e1fec-93b8-4869-adb0-2f04ff90c42b'),('f7b2bb31-aa67-4c2c-b142-ba64e0621d73'),('f860871e-64fa-4ade-800f-46c299ecdf65'),('f9e6be05-5d4c-4d8d-8bf7-e8b3faf0c340'),('fb0401d8-3853-4eda-b9fd-f6d28dde228b'),('fb9a6ee2-d46f-4830-9680-7d5219a40a99'),('fcc6268a-284f-4717-af93-0c3534205ba3'),('fe5d9832-de82-498b-901a-042928d774c8'),('ffafaa1c-1f6b-43e3-b862-758a52c04f35');
/*!40000 ALTER TABLE `networkresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkresourceassignment`
--

DROP TABLE IF EXISTS `networkresourceassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkresourceassignment` (
  `id_NetworkResource` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_Network` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetworkResource`,`id_Network`),
  KEY `SI÷id_NNetwk×NNwRsA` (`id_Network`),
  KEY `SI÷id_NNtwRs×NNwRsA` (`id_NetworkResource`),
  CONSTRAINT `FK÷id_NNetwk×NNwRsA` FOREIGN KEY (`id_Network`) REFERENCES `network` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_NNtwRs×NNwRsA` FOREIGN KEY (`id_NetworkResource`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkresourceassignment`
--

LOCK TABLES `networkresourceassignment` WRITE;
/*!40000 ALTER TABLE `networkresourceassignment` DISABLE KEYS */;
INSERT INTO `networkresourceassignment` VALUES ('0755058c-99ca-4a02-8f95-5e2ae1bcb75c','02916d74-c19b-4ec8-a202-765d79335dfa'),('07be4875-623f-4b25-8e32-e79bbf929a08','02916d74-c19b-4ec8-a202-765d79335dfa'),('0b021a04-9a2b-4850-86f2-d4d7124e76ae','02916d74-c19b-4ec8-a202-765d79335dfa'),('0c1aeac1-0e69-42f5-a787-a990d8561dab','02916d74-c19b-4ec8-a202-765d79335dfa'),('0cdbbfb5-c081-4dc5-a2ba-734c8123170b','02916d74-c19b-4ec8-a202-765d79335dfa'),('0cf67c3a-fae0-4139-97c0-828958395118','02916d74-c19b-4ec8-a202-765d79335dfa'),('0e782fd6-80b9-4327-a748-bca404381449','02916d74-c19b-4ec8-a202-765d79335dfa'),('10c7296b-cb20-40c9-9890-e10992e4d8b2','02916d74-c19b-4ec8-a202-765d79335dfa'),('13974828-1903-4364-9f69-eb7fd8d0e838','02916d74-c19b-4ec8-a202-765d79335dfa'),('18216b6b-d689-41d2-b7aa-e0d8fe262651','02916d74-c19b-4ec8-a202-765d79335dfa'),('1985bab8-1465-4ac3-bfa5-800d7890028c','02916d74-c19b-4ec8-a202-765d79335dfa'),('1e351385-524e-4fd5-b3e3-eab03383143f','02916d74-c19b-4ec8-a202-765d79335dfa'),('1e74043e-3d84-4ab4-9466-580bc61511d3','02916d74-c19b-4ec8-a202-765d79335dfa'),('1e81c9b2-c2f8-40e6-8bea-fd94fe3aeabf','02916d74-c19b-4ec8-a202-765d79335dfa'),('1e9a5717-0aa3-479a-8969-57e3af52b542','02916d74-c19b-4ec8-a202-765d79335dfa'),('26e05d9a-5f77-4fc8-bab2-9910b373c083','02916d74-c19b-4ec8-a202-765d79335dfa'),('2799d78e-8416-409b-8c09-80b21cf7d036','02916d74-c19b-4ec8-a202-765d79335dfa'),('27f9d7c5-a439-47b4-9f38-1177586cbe19','02916d74-c19b-4ec8-a202-765d79335dfa'),('29417886-5c69-4ef5-9daf-0842415935ec','02916d74-c19b-4ec8-a202-765d79335dfa'),('2950249d-ad0f-434c-be25-fb94c9b87a11','02916d74-c19b-4ec8-a202-765d79335dfa'),('2ae4be72-ebde-4fb3-8ac8-e743dc8e0918','02916d74-c19b-4ec8-a202-765d79335dfa'),('32617a21-0ae9-4486-9189-8463111e5ddc','02916d74-c19b-4ec8-a202-765d79335dfa'),('32b72542-f146-44ed-ae59-0d0dd898339b','02916d74-c19b-4ec8-a202-765d79335dfa'),('364e6b35-3705-4390-8bd7-9c4c069540a9','02916d74-c19b-4ec8-a202-765d79335dfa'),('38069531-1026-4b46-a572-b128c18ec18c','02916d74-c19b-4ec8-a202-765d79335dfa'),('390fa6af-7512-4ceb-a0fc-0b5728642d73','02916d74-c19b-4ec8-a202-765d79335dfa'),('3ad1de23-c02e-41e1-bec6-c625933d14e9','02916d74-c19b-4ec8-a202-765d79335dfa'),('3d13e88f-1c88-4ba9-893b-4eccca61e442','02916d74-c19b-4ec8-a202-765d79335dfa'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e','02916d74-c19b-4ec8-a202-765d79335dfa'),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62','02916d74-c19b-4ec8-a202-765d79335dfa'),('40f2d16c-8dd0-4198-ac74-c260235c0e67','02916d74-c19b-4ec8-a202-765d79335dfa'),('42db04f7-224d-4185-96bd-83ef78e295e9','02916d74-c19b-4ec8-a202-765d79335dfa'),('43a66cb9-46bb-4934-a30d-fe6473785ce4','02916d74-c19b-4ec8-a202-765d79335dfa'),('47529a09-a1cc-4ebf-8955-a16c39303eae','02916d74-c19b-4ec8-a202-765d79335dfa'),('47c1ed7b-fa77-4c81-8eef-69845d4df868','02916d74-c19b-4ec8-a202-765d79335dfa'),('4b096cf3-4b8f-4075-b049-33927c60cc0d','02916d74-c19b-4ec8-a202-765d79335dfa'),('4db19623-8331-4c81-9b7c-e8aebc03033b','02916d74-c19b-4ec8-a202-765d79335dfa'),('4e0651b8-8283-451e-bb70-2d42f89887e0','02916d74-c19b-4ec8-a202-765d79335dfa'),('4e0848bd-e5b3-4b67-bcc7-d0eaa666bfd0','02916d74-c19b-4ec8-a202-765d79335dfa'),('4ecf7943-7873-434d-89b6-1a486f85b77a','02916d74-c19b-4ec8-a202-765d79335dfa'),('50b05f70-ca53-4964-9a79-37222d7b275d','02916d74-c19b-4ec8-a202-765d79335dfa'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b','02916d74-c19b-4ec8-a202-765d79335dfa'),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9','02916d74-c19b-4ec8-a202-765d79335dfa'),('5695c0f7-ceeb-4127-8c5c-2da3a5932225','02916d74-c19b-4ec8-a202-765d79335dfa'),('588b9192-e349-4031-bd8e-49dc16f19ff9','02916d74-c19b-4ec8-a202-765d79335dfa'),('5f32d8ef-5e29-4613-ab0e-c8d666704229','02916d74-c19b-4ec8-a202-765d79335dfa'),('65d15f20-5245-422f-9d5b-82b147a4de25','02916d74-c19b-4ec8-a202-765d79335dfa'),('667477b7-e08a-4abe-906e-86bebc26b3bb','02916d74-c19b-4ec8-a202-765d79335dfa'),('68b433fb-af0f-439b-9cbc-4f434e7a120b','02916d74-c19b-4ec8-a202-765d79335dfa'),('6ac2e221-044e-4727-813b-c91e96f1d59f','02916d74-c19b-4ec8-a202-765d79335dfa'),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3','02916d74-c19b-4ec8-a202-765d79335dfa'),('6caa269f-85ba-4870-832e-781f5a9753da','02916d74-c19b-4ec8-a202-765d79335dfa'),('6d43b482-4704-4243-9c8b-04de791a82ed','02916d74-c19b-4ec8-a202-765d79335dfa'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f','02916d74-c19b-4ec8-a202-765d79335dfa'),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd','02916d74-c19b-4ec8-a202-765d79335dfa'),('767b79cf-a053-4a00-b820-d093d68fd8b6','02916d74-c19b-4ec8-a202-765d79335dfa'),('76f9e8c6-023a-403e-842a-a5eeea4916da','02916d74-c19b-4ec8-a202-765d79335dfa'),('7949c5ca-400b-48cc-88ed-ced6c24a63b5','02916d74-c19b-4ec8-a202-765d79335dfa'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a','02916d74-c19b-4ec8-a202-765d79335dfa'),('7c4accd2-c038-4d5e-a7f9-40daf277b9f8','02916d74-c19b-4ec8-a202-765d79335dfa'),('7e1a4ce7-0234-457e-b3c2-caea25bbc39e','02916d74-c19b-4ec8-a202-765d79335dfa'),('80147fbc-876f-43ae-8df5-fa3d3be8ecc5','02916d74-c19b-4ec8-a202-765d79335dfa'),('8102be24-f1cc-4eb6-a8cb-9b4d8cdc559d','02916d74-c19b-4ec8-a202-765d79335dfa'),('852f242d-cca6-4f21-b84b-9b9467ec7c65','02916d74-c19b-4ec8-a202-765d79335dfa'),('87cd6ce9-d444-4a1e-b213-c3bb711e469a','02916d74-c19b-4ec8-a202-765d79335dfa'),('887075e1-e3f7-4e5a-bea9-6f8ff03f6abb','02916d74-c19b-4ec8-a202-765d79335dfa'),('8877868b-e670-45be-9823-b9ea6a603763','02916d74-c19b-4ec8-a202-765d79335dfa'),('892f6eb3-b867-4ce8-9d27-d1e44b2b9230','02916d74-c19b-4ec8-a202-765d79335dfa'),('8b7dcd59-82a0-4f3f-b91c-276b96f8dd0d','02916d74-c19b-4ec8-a202-765d79335dfa'),('8e1f35a9-aab3-449e-8f30-a08e1174ae17','02916d74-c19b-4ec8-a202-765d79335dfa'),('8e41fcbf-aeae-4c9d-acc6-1e65f52ca7ca','02916d74-c19b-4ec8-a202-765d79335dfa'),('902dcdf8-7eb9-4444-af86-33193215bd88','02916d74-c19b-4ec8-a202-765d79335dfa'),('9108bd03-6144-4693-ba6e-7174b11c6db6','02916d74-c19b-4ec8-a202-765d79335dfa'),('910d1e73-4df6-4b15-9745-8c77e564c67a','02916d74-c19b-4ec8-a202-765d79335dfa'),('93afbf8e-415c-43a3-9134-f89357902809','02916d74-c19b-4ec8-a202-765d79335dfa'),('9736089b-e2b9-48db-bf62-9f8849c8f350','02916d74-c19b-4ec8-a202-765d79335dfa'),('97875f09-bfcc-4ee2-baf9-6bb54e4c51f8','02916d74-c19b-4ec8-a202-765d79335dfa'),('9b7958b1-92d5-4657-aeac-fd960ee6098f','02916d74-c19b-4ec8-a202-765d79335dfa'),('9da483cb-9261-4fce-9b03-38d802585935','02916d74-c19b-4ec8-a202-765d79335dfa'),('9f64a748-7af9-41fe-b5d6-81037c18ea57','02916d74-c19b-4ec8-a202-765d79335dfa'),('a516a241-330e-4da9-bb2f-9ddcb0a8a617','02916d74-c19b-4ec8-a202-765d79335dfa'),('a7e51ff3-0c30-4d95-86ca-e2998a41d014','02916d74-c19b-4ec8-a202-765d79335dfa'),('a9ad6b1b-5e11-4864-bc8b-794cc5d5df0f','02916d74-c19b-4ec8-a202-765d79335dfa'),('b045c8a6-425d-45e5-9254-f9207728797f','02916d74-c19b-4ec8-a202-765d79335dfa'),('b384513c-6bf6-4591-ba8f-3161ae1bba4c','02916d74-c19b-4ec8-a202-765d79335dfa'),('b50e3f6f-2bdf-4ce3-a076-70b1bb3cd4af','02916d74-c19b-4ec8-a202-765d79335dfa'),('b797f47e-a543-4bf4-979a-4083aba0000b','02916d74-c19b-4ec8-a202-765d79335dfa'),('b9c1002a-f334-4681-a689-143962e24899','02916d74-c19b-4ec8-a202-765d79335dfa'),('bbfa74eb-3006-4ac2-b8e1-cb6a6a22fc42','02916d74-c19b-4ec8-a202-765d79335dfa'),('be3faccb-b557-4c65-90f7-976c401b396a','02916d74-c19b-4ec8-a202-765d79335dfa'),('c13536c1-5744-48f4-9649-b9d3e1e475cb','02916d74-c19b-4ec8-a202-765d79335dfa'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18','02916d74-c19b-4ec8-a202-765d79335dfa'),('c2e508ab-139c-4601-84fe-6e534344ce92','02916d74-c19b-4ec8-a202-765d79335dfa'),('c456f0fc-8448-4fb9-b871-69f5cd7a9c7b','02916d74-c19b-4ec8-a202-765d79335dfa'),('c5b6fca1-d851-45b7-8f06-88ffb213388a','02916d74-c19b-4ec8-a202-765d79335dfa'),('c6aac27c-8056-4c86-85ab-8983ab87362a','02916d74-c19b-4ec8-a202-765d79335dfa'),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565','02916d74-c19b-4ec8-a202-765d79335dfa'),('d79a04c2-984b-42fa-a37c-727a591d97c6','02916d74-c19b-4ec8-a202-765d79335dfa'),('dad6ecbd-73e0-40ad-9fa4-4c61339f57be','02916d74-c19b-4ec8-a202-765d79335dfa'),('dae4b75a-3a4e-4fab-a2ea-2335c5928caa','02916d74-c19b-4ec8-a202-765d79335dfa'),('db5ffd82-7cc3-4969-a5a2-3171f46b120c','02916d74-c19b-4ec8-a202-765d79335dfa'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7','02916d74-c19b-4ec8-a202-765d79335dfa'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5','02916d74-c19b-4ec8-a202-765d79335dfa'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a','02916d74-c19b-4ec8-a202-765d79335dfa'),('e7e87dcd-3043-4c7a-ad8f-8d00fa537498','02916d74-c19b-4ec8-a202-765d79335dfa'),('ea7f117e-3360-48a5-91af-6020881e2c46','02916d74-c19b-4ec8-a202-765d79335dfa'),('eab7199d-6752-4d03-bf26-09241d91aa4c','02916d74-c19b-4ec8-a202-765d79335dfa'),('edd50a61-b972-4d59-96ae-177971c5dda9','02916d74-c19b-4ec8-a202-765d79335dfa'),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b','02916d74-c19b-4ec8-a202-765d79335dfa'),('ef76601b-831e-480b-adcc-aee620a5573f','02916d74-c19b-4ec8-a202-765d79335dfa'),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7','02916d74-c19b-4ec8-a202-765d79335dfa'),('f666ade4-0a4f-4c21-ba00-f7bf2860c1b1','02916d74-c19b-4ec8-a202-765d79335dfa'),('f7197abd-a814-4258-888f-fb5359da5611','02916d74-c19b-4ec8-a202-765d79335dfa');
/*!40000 ALTER TABLE `networkresourceassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonlinearelement`
--

DROP TABLE IF EXISTS `nonlinearelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonlinearelement` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TPNtEl×TNoLEl` FOREIGN KEY (`id`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonlinearelement`
--

LOCK TABLES `nonlinearelement` WRITE;
/*!40000 ALTER TABLE `nonlinearelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonlinearelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationalentity`
--

DROP TABLE IF EXISTS `operationalentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operationalentity` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XXMEnt×XOOpeE` FOREIGN KEY (`id`) REFERENCES `modularentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationalentity`
--

LOCK TABLES `operationalentity` WRITE;
/*!40000 ALTER TABLE `operationalentity` DISABLE KEYS */;
INSERT INTO `operationalentity` VALUES ('0c1aeac1-0e69-42f5-a787-a990d8561dab'),('2950249d-ad0f-434c-be25-fb94c9b87a11'),('4e0651b8-8283-451e-bb70-2d42f89887e0'),('65d15f20-5245-422f-9d5b-82b147a4de25'),('6ac2e221-044e-4727-813b-c91e96f1d59f'),('b9c1002a-f334-4681-a689-143962e24899'),('be3faccb-b557-4c65-90f7-976c401b396a'),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a');
/*!40000 ALTER TABLE `operationalentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderedcollection`
--

DROP TABLE IF EXISTS `orderedcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedcollection` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TElPaC×TOrCol` FOREIGN KEY (`id`) REFERENCES `elementpartcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id_OrderedCollection` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `sequence` int unsigned NOT NULL,
  `id_NetElement` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_OrderedCollection`,`sequence`),
  KEY `SI÷id_TOrCol×TOColE` (`id_OrderedCollection`),
  KEY `SI÷id_TNetEl×TOColE` (`id_NetElement`),
  CONSTRAINT `FK÷id_TNetEl×TOColE` FOREIGN KEY (`id_NetElement`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TOrCol×TOColE` FOREIGN KEY (`id_OrderedCollection`) REFERENCES `orderedcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `parabolaVertexRadius` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGVerC×XGPbVC` FOREIGN KEY (`id`) REFERENCES `verticalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parabolavc`
--

LOCK TABLES `parabolavc` WRITE;
/*!40000 ALTER TABLE `parabolavc` DISABLE KEYS */;
INSERT INTO `parabolavc` VALUES ('10c7296b-cb20-40c9-9890-e10992e4d8b2',-8000),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd',8000),('9b7958b1-92d5-4657-aeac-fd960ee6098f',8000),('c13536c1-5744-48f4-9649-b9d3e1e475cb',-8000),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7',-8000);
/*!40000 ALTER TABLE `parabolavc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionedrelation`
--

DROP TABLE IF EXISTS `positionedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionedrelation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_PositioningNetElement_A` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_PositioningNetElement_B` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `positionOnA` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `positionOnB` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `navigability` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_TPNtElB×TPosRt` (`id_PositioningNetElement_B`),
  KEY `FK÷id_TPNtElA×TPosRt_idx` (`id_PositioningNetElement_A`),
  CONSTRAINT `FK÷id_TPNtElA×TPosRt` FOREIGN KEY (`id_PositioningNetElement_A`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtElB×TPosRt` FOREIGN KEY (`id_PositioningNetElement_B`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TRelat×TPosRt` FOREIGN KEY (`id`) REFERENCES `relation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
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
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TCNtEl×TPNtEl` FOREIGN KEY (`id`) REFERENCES `compositionnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioningnetelement`
--

LOCK TABLES `positioningnetelement` WRITE;
/*!40000 ALTER TABLE `positioningnetelement` DISABLE KEYS */;
INSERT INTO `positioningnetelement` VALUES ('5695c0f7-ceeb-4127-8c5c-2da3a5932225'),('910d1e73-4df6-4b15-9745-8c77e564c67a');
/*!40000 ALTER TABLE `positioningnetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positioningsystem`
--

DROP TABLE IF EXISTS `positioningsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positioningsystem` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_BNmRes×PPoSys` FOREIGN KEY (`id`) REFERENCES `namedresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioningsystem`
--

LOCK TABLES `positioningsystem` WRITE;
/*!40000 ALTER TABLE `positioningsystem` DISABLE KEYS */;
INSERT INTO `positioningsystem` VALUES ('53eae429-bde8-4f96-81c9-db833b7f4c25');
/*!40000 ALTER TABLE `positioningsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positioningsystemnetelement`
--

DROP TABLE IF EXISTS `positioningsystemnetelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positioningsystemnetelement` (
  `id_PositioningNetElement` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_PositioningSystem` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `elementRoleWithinBase` int DEFAULT NULL,
  PRIMARY KEY (`id_PositioningNetElement`,`id_PositioningSystem`),
  KEY `SI÷id_PPoSys×PPSNEl` (`id_PositioningSystem`),
  KEY `SI÷id_TPNtEl×PPSNEl` (`id_PositioningNetElement`),
  CONSTRAINT `FK÷id_PPoSys×PPSNEl` FOREIGN KEY (`id_PositioningSystem`) REFERENCES `positioningsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TPNtEl×PPSNEl` FOREIGN KEY (`id_PositioningNetElement`) REFERENCES `positioningnetelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioningsystemnetelement`
--

LOCK TABLES `positioningsystemnetelement` WRITE;
/*!40000 ALTER TABLE `positioningsystemnetelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `positioningsystemnetelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_NNtwRs×TRelat` FOREIGN KEY (`id`) REFERENCES `networkresource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signaltype`
--

DROP TABLE IF EXISTS `signaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signaltype` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `signalCategory` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `signalConstructionType` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `defaultIndication` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XYMEtT×XYSigT` FOREIGN KEY (`id`) REFERENCES `modularentitytype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signaltype`
--

LOCK TABLES `signaltype` WRITE;
/*!40000 ALTER TABLE `signaltype` DISABLE KEYS */;
INSERT INTO `signaltype` VALUES ('3a13352d-376d-4a8e-aa0a-1db5621be935','absolute','light','-'),('7c77b497-f2dc-482c-a0bc-383a952a2da4','permissive','light','-');
/*!40000 ALTER TABLE `signaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedsection`
--

DROP TABLE IF EXISTS `speedsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedsection` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `defaultMaximalSpeed` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XOOpeE×XOStPl0` FOREIGN KEY (`id`) REFERENCES `operationalentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedsection`
--

LOCK TABLES `speedsection` WRITE;
/*!40000 ALTER TABLE `speedsection` DISABLE KEYS */;
INSERT INTO `speedsection` VALUES ('0c1aeac1-0e69-42f5-a787-a990d8561dab',120),('2950249d-ad0f-434c-be25-fb94c9b87a11',50),('4e0651b8-8283-451e-bb70-2d42f89887e0',120),('65d15f20-5245-422f-9d5b-82b147a4de25',120),('6ac2e221-044e-4727-813b-c91e96f1d59f',100),('b9c1002a-f334-4681-a689-143962e24899',120),('be3faccb-b557-4c65-90f7-976c401b396a',120),('e17f7ad1-9cf2-446c-8b72-fc8b3f3bb04a',80);
/*!40000 ALTER TABLE `speedsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `straighthc`
--

DROP TABLE IF EXISTS `straighthc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `straighthc` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `horizontalLength` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGHorC×XGStHC` FOREIGN KEY (`id`) REFERENCES `horizontalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `straighthc`
--

LOCK TABLES `straighthc` WRITE;
/*!40000 ALTER TABLE `straighthc` DISABLE KEYS */;
INSERT INTO `straighthc` VALUES ('390fa6af-7512-4ceb-a0fc-0b5728642d73',660),('6ae0b79b-73fa-408f-b1c6-4fd671817ba3',800),('87cd6ce9-d444-4a1e-b213-c3bb711e469a',920),('d79a04c2-984b-42fa-a37c-727a591d97c6',1230),('ea7f117e-3360-48a5-91af-6020881e2c46',480),('f7197abd-a814-4258-888f-fb5359da5611',250);
/*!40000 ALTER TABLE `straighthc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `straightvc`
--

DROP TABLE IF EXISTS `straightvc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `straightvc` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGVerC×XGStVC` FOREIGN KEY (`id`) REFERENCES `verticalcurve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `straightvc`
--

LOCK TABLES `straightvc` WRITE;
/*!40000 ALTER TABLE `straightvc` DISABLE KEYS */;
INSERT INTO `straightvc` VALUES ('29417886-5c69-4ef5-9daf-0842415935ec'),('3d9c1b8c-ca05-41fb-b296-caa475398f9e'),('b045c8a6-425d-45e5-9254-f9207728797f'),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18'),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7'),('ef76601b-831e-480b-adcc-aee620a5573f');
/*!40000 ALTER TABLE `straightvc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superelevation`
--

DROP TABLE IF EXISTS `superelevation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superelevation` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `anchoredAxisReference` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGSuEl` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superelevation`
--

LOCK TABLES `superelevation` WRITE;
/*!40000 ALTER TABLE `superelevation` DISABLE KEYS */;
INSERT INTO `superelevation` VALUES ('0cf67c3a-fae0-4139-97c0-828958395118',0),('13974828-1903-4364-9f69-eb7fd8d0e838',-1),('3f784df8-51d8-4fc5-bc5f-8b356e54fa62',1),('42db04f7-224d-4185-96bd-83ef78e295e9',1),('43a66cb9-46bb-4934-a30d-fe6473785ce4',-1),('4ecf7943-7873-434d-89b6-1a486f85b77a',-1),('55884cbf-b15b-46cf-b4e2-93d4706b6bc9',1),('9108bd03-6144-4693-ba6e-7174b11c6db6',0),('93afbf8e-415c-43a3-9134-f89357902809',0),('cf5cc7cf-cce1-4424-8ae2-2f1afbf29565',-1),('edd50a61-b972-4d59-96ae-177971c5dda9',-1),('eefcb991-205b-4776-aa75-1f6ab1e6cb3b',-1);
/*!40000 ALTER TABLE `superelevation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracksidesignal`
--

DROP TABLE IF EXISTS `tracksidesignal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracksidesignal` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_SignalType` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SI÷id_XYSigT×XCTSig` (`id_SignalType`),
  CONSTRAINT `FK÷id_XCConE×XCTSig` FOREIGN KEY (`id`) REFERENCES `controlentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_XYSigT×XCTSig` FOREIGN KEY (`id_SignalType`) REFERENCES `signaltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracksidesignal`
--

LOCK TABLES `tracksidesignal` WRITE;
/*!40000 ALTER TABLE `tracksidesignal` DISABLE KEYS */;
INSERT INTO `tracksidesignal` VALUES ('2799d78e-8416-409b-8c09-80b21cf7d036','3a13352d-376d-4a8e-aa0a-1db5621be935'),('32617a21-0ae9-4486-9189-8463111e5ddc','3a13352d-376d-4a8e-aa0a-1db5621be935'),('40f2d16c-8dd0-4198-ac74-c260235c0e67','3a13352d-376d-4a8e-aa0a-1db5621be935'),('47c1ed7b-fa77-4c81-8eef-69845d4df868','3a13352d-376d-4a8e-aa0a-1db5621be935'),('5102a15b-e264-478a-9ad2-ce99f9df2e4b','3a13352d-376d-4a8e-aa0a-1db5621be935'),('68b433fb-af0f-439b-9cbc-4f434e7a120b','3a13352d-376d-4a8e-aa0a-1db5621be935'),('76f9e8c6-023a-403e-842a-a5eeea4916da','3a13352d-376d-4a8e-aa0a-1db5621be935'),('8877868b-e670-45be-9823-b9ea6a603763','3a13352d-376d-4a8e-aa0a-1db5621be935'),('c5b6fca1-d851-45b7-8f06-88ffb213388a','3a13352d-376d-4a8e-aa0a-1db5621be935'),('3d13e88f-1c88-4ba9-893b-4eccca61e442','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('6caa269f-85ba-4870-832e-781f5a9753da','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('6d43b482-4704-4243-9c8b-04de791a82ed','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('6e9d7bc7-a632-4e1c-aed1-cc715bc0da8f','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('7b43bcbe-470e-484b-a30a-1ef7e412a01a','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('9736089b-e2b9-48db-bf62-9f8849c8f350','7c77b497-f2dc-482c-a0bc-383a952a2da4'),('de78f0c2-2a6f-4e55-a7eb-e28c3bc0ffa5','7c77b497-f2dc-482c-a0bc-383a952a2da4');
/*!40000 ALTER TABLE `tracksidesignal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unorderedcollection`
--

DROP TABLE IF EXISTS `unorderedcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unorderedcollection` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_TElPaC×TUoCol` FOREIGN KEY (`id`) REFERENCES `elementpartcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unorderedcollection`
--

LOCK TABLES `unorderedcollection` WRITE;
/*!40000 ALTER TABLE `unorderedcollection` DISABLE KEYS */;
INSERT INTO `unorderedcollection` VALUES ('e4d83c88-8d4c-4d49-9a44-aee678d348c7');
/*!40000 ALTER TABLE `unorderedcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unorderedcollectionelement`
--

DROP TABLE IF EXISTS `unorderedcollectionelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unorderedcollectionelement` (
  `id_NetElement` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `id_UnorderedCollection` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id_NetElement`,`id_UnorderedCollection`),
  KEY `SI÷id_TUoCol×TUColE` (`id_UnorderedCollection`),
  KEY `SI÷id_TNetEl×TUColE` (`id_NetElement`),
  CONSTRAINT `FK÷id_TNetEl×TUColE` FOREIGN KEY (`id_NetElement`) REFERENCES `netelement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK÷id_TUoCol×TUColE` FOREIGN KEY (`id_UnorderedCollection`) REFERENCES `unorderedcollection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unorderedcollectionelement`
--

LOCK TABLES `unorderedcollectionelement` WRITE;
/*!40000 ALTER TABLE `unorderedcollectionelement` DISABLE KEYS */;
INSERT INTO `unorderedcollectionelement` VALUES ('910d1e73-4df6-4b15-9745-8c77e564c67a','e4d83c88-8d4c-4d49-9a44-aee678d348c7');
/*!40000 ALTER TABLE `unorderedcollectionelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verticalcurve`
--

DROP TABLE IF EXISTS `verticalcurve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verticalcurve` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `horizontalLength` double DEFAULT NULL,
  `elevation0` double DEFAULT NULL,
  `deltaElevation` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK÷id_XGGeoE×XGVerC` FOREIGN KEY (`id`) REFERENCES `geometryentity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verticalcurve`
--

LOCK TABLES `verticalcurve` WRITE;
/*!40000 ALTER TABLE `verticalcurve` DISABLE KEYS */;
INSERT INTO `verticalcurve` VALUES ('10c7296b-cb20-40c9-9890-e10992e4d8b2',56,228.346,-0.588000000000001),('29417886-5c69-4ef5-9daf-0842415935ec',2256,201.296,40.608),('3d9c1b8c-ca05-41fb-b296-caa475398f9e',1577.8313339825,215.2,0),('75be8e4c-a82a-46c8-84ab-46c9ccd377fd',112,215.984,-0.784000000000001),('9b7958b1-92d5-4657-aeac-fd960ee6098f',144,200,1.296),('b045c8a6-425d-45e5-9254-f9207728797f',2128,200,0),('c13536c1-5744-48f4-9649-b9d3e1e475cb',56,243.2,-0.195999999999998),('c2a4f8a1-5e74-4c3c-81f9-ed2ee9c5ba18',600,243.2,0),('dcdb92d5-2f15-4d75-aae5-6b5a9e2ec4e7',841,227.758,-11.774),('ef76601b-831e-480b-adcc-aee620a5573f',2094,243.004,-14.658),('f0a8a16d-2c9b-471d-9bdc-142bea47acd7',144,241.904,1.296);
/*!40000 ALTER TABLE `verticalcurve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'infradb'
--

--
-- Dumping routines for database 'infradb'
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
/*!50001 VIEW `cv_associatedlocation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`entitylocation`.`numberOfFeatures` AS `numberOfFeatures`,`associatedlocation`.`associatedLocationType` AS `associatedLocationType` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) join `associatedlocation` on((`baseobject`.`id` = `associatedlocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_associatedlocationentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedlocationentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedlocationentity` AS select `associatedlocationentity`.`id_NetEntity` AS `id_NetEntity`,`associatedlocationentity`.`id_AssociatedLocation` AS `id_AssociatedLocation`,`associatedlocationentity`.`lateralSide` AS `lateralSide`,`associatedlocationentity`.`lateralDistance` AS `lateralDistance`,`associatedlocationentity`.`verticalSide` AS `verticalSide`,`associatedlocationentity`.`verticalDistance` AS `verticalDistance`,`associatedlocationentity`.`functionalLocationReference` AS `functionalLocationReference`,`associatedlocationentity`.`physicalLocationReference` AS `physicalLocationReference`,`associatedlocationentity`.`applicationDirection` AS `applicationDirection`,`associatedlocationentity`.`locationPriority` AS `locationPriority` from `associatedlocationentity` */;
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
/*!50001 VIEW `cv_associatedlocationfeature` AS select `associatedlocationfeature`.`id_AssociatedLocation` AS `id_AssociatedLocation`,`associatedlocationfeature`.`sequence` AS `sequence`,`associatedlocationfeature`.`id_AssociatedFeature` AS `id_AssociatedFeature`,`associatedlocationfeature`.`featureOrientation` AS `featureOrientation` from `associatedlocationfeature` */;
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
-- Final view structure for view `cv_associatedpositionassignment`
--

/*!50001 DROP VIEW IF EXISTS `cv_associatedpositionassignment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_associatedpositionassignment` AS select `associatedpositionassignment`.`id_AssociatedPosition_A` AS `id_AssociatedPosition_A`,`associatedpositionassignment`.`id_AssociatedPosition_B` AS `id_AssociatedPosition_B` from `associatedpositionassignment` */;
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
/*!50001 VIEW `cv_balise` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`balise`.`baliseType` AS `baliseType`,`balise`.`defaultTelegram` AS `defaultTelegram` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `controlentity` on((`baseobject`.`id` = `controlentity`.`id`))) join `balise` on((`baseobject`.`id` = `balise`.`id`))) */;
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
/*!50001 VIEW `cv_entitylocation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`entitylocation`.`numberOfFeatures` AS `numberOfFeatures` from (((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_entityorientation`
--

/*!50001 DROP VIEW IF EXISTS `cv_entityorientation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_entityorientation` AS select `entityorientation`.`id_NetEntity` AS `id_NetEntity`,`entityorientation`.`id_PositioningSystem` AS `id_PositioningSystem`,`entityorientation`.`deltaHorizontalRotation` AS `deltaHorizontalRotation`,`entityorientation`.`deltaVerticalRotation` AS `deltaVerticalRotation` from `entityorientation` */;
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
/*!50001 VIEW `cv_geolocation` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`entitylocation`.`numberOfFeatures` AS `numberOfFeatures`,`geolocation`.`geoLocationType` AS `geoLocationType` from ((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `entitylocation` on((`baseobject`.`id` = `entitylocation`.`id`))) join `geolocation` on((`baseobject`.`id` = `geolocation`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cv_geolocationentity`
--

/*!50001 DROP VIEW IF EXISTS `cv_geolocationentity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geolocationentity` AS select `geolocationentity`.`id_NetEntity` AS `id_NetEntity`,`geolocationentity`.`id_GeoLocation` AS `id_GeoLocation`,`geolocationentity`.`bufferDistance` AS `bufferDistance`,`geolocationentity`.`height` AS `height` from `geolocationentity` */;
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
/*!50001 VIEW `cv_geolocationfeature` AS select `geolocationfeature`.`id_GeoLocation` AS `id_GeoLocation`,`geolocationfeature`.`sequence` AS `sequence`,`geolocationfeature`.`id_GeoFeature` AS `id_GeoFeature` from `geolocationfeature` */;
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
-- Final view structure for view `cv_geopointassociatedposition`
--

/*!50001 DROP VIEW IF EXISTS `cv_geopointassociatedposition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_geopointassociatedposition` AS select `geopointassociatedposition`.`id_AssociatedPosition` AS `id_AssociatedPosition`,`geopointassociatedposition`.`id_GeoPoint` AS `id_GeoPoint` from `geopointassociatedposition` */;
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
/*!50001 VIEW `cv_geopointgeocoordinate` AS select `geopointgeocoordinate`.`id_GeoPoint` AS `id_GeoPoint`,`geopointgeocoordinate`.`id_GeoPositioningSystem` AS `id_GeoPositioningSystem`,`geopointgeocoordinate`.`x` AS `x`,`geopointgeocoordinate`.`y` AS `y`,`geopointgeocoordinate`.`z` AS `z` from `geopointgeocoordinate` */;
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
/*!50001 VIEW `cv_geopointlinearcoordinate` AS select `geopointlinearcoordinate`.`id_GeoPoint` AS `id_GeoPoint`,`geopointlinearcoordinate`.`id_LinearPositioningSystem` AS `id_LinearPositioningSystem`,`geopointlinearcoordinate`.`measure` AS `measure`,`geopointlinearcoordinate`.`lateralOffset` AS `lateralOffset`,`geopointlinearcoordinate`.`verticalOffset` AS `verticalOffset` from `geopointlinearcoordinate` */;
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
/*!50001 VIEW `cv_geopolygonalchaingeopoint` AS select `geopolygonalchaingeopoint`.`id_GeoPolygonalChain` AS `id_GeoPolygonalChain`,`geopolygonalchaingeopoint`.`sequence` AS `sequence`,`geopolygonalchaingeopoint`.`id_GeoPoint` AS `id_GeoPoint` from `geopolygonalchaingeopoint` */;
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
/*!50001 VIEW `cv_levelnetwork` AS select `baseobject`.`id` AS `id`,`levelnetwork`.`descriptionLevel` AS `descriptionLevel`,`levelnetwork`.`dimension` AS `dimension`,`levelnetwork`.`representation` AS `representation` from (`baseobject` join `levelnetwork` on((`baseobject`.`id` = `levelnetwork`.`id`))) */;
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
-- Final view structure for view `cv_netentityrelation`
--

/*!50001 DROP VIEW IF EXISTS `cv_netentityrelation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_netentityrelation` AS select `netentityrelation`.`id` AS `id`,`netentityrelation`.`id_NetEntity_A` AS `id_NetEntity_A`,`netentityrelation`.`id_NetEntity_B` AS `id_NetEntity_B`,`netentityrelation`.`relationType` AS `relationType` from `netentityrelation` */;
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
/*!50001 VIEW `cv_orderedcollectionelement` AS select `orderedcollectionelement`.`id_OrderedCollection` AS `id_OrderedCollection`,`orderedcollectionelement`.`sequence` AS `sequence`,`orderedcollectionelement`.`id_NetElement` AS `id_NetElement` from `orderedcollectionelement` */;
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
-- Final view structure for view `cv_positioningsystemnetelement`
--

/*!50001 DROP VIEW IF EXISTS `cv_positioningsystemnetelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Adam`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cv_positioningsystemnetelement` AS select `positioningsystemnetelement`.`id_PositioningNetElement` AS `id_PositioningNetElement`,`positioningsystemnetelement`.`id_PositioningSystem` AS `id_PositioningSystem`,`positioningsystemnetelement`.`elementRoleWithinBase` AS `elementRoleWithinBase` from `positioningsystemnetelement` */;
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
/*!50001 VIEW `cv_speedsection` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`speedsection`.`defaultMaximalSpeed` AS `defaultMaximalSpeed` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `operationalentity` on((`baseobject`.`id` = `operationalentity`.`id`))) join `speedsection` on((`baseobject`.`id` = `speedsection`.`id`))) */;
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
/*!50001 VIEW `cv_tracksidesignal` AS select `baseobject`.`id` AS `id`,`namedresource`.`name` AS `name`,`namedresource`.`longname` AS `longname`,`tracksidesignal`.`id_SignalType` AS `id_SignalType` from ((((((`baseobject` join `namedresource` on((`baseobject`.`id` = `namedresource`.`id`))) join `networkresource` on((`baseobject`.`id` = `networkresource`.`id`))) join `netentity` on((`baseobject`.`id` = `netentity`.`id`))) join `modularentity` on((`baseobject`.`id` = `modularentity`.`id`))) join `controlentity` on((`baseobject`.`id` = `controlentity`.`id`))) join `tracksidesignal` on((`baseobject`.`id` = `tracksidesignal`.`id`))) */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11  2:07:20
