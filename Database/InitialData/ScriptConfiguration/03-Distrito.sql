﻿DROP TABLE IF EXISTS #DistritoTemp

SELECT 
IdCanton, IdDistrito, NombreDistrito INTO #DistritoTemp
FROM (
VALUES
(1,1,'CARMEN'),(1,2,'MERCED'),(1,3,'HOSPITAL'),(1,4,'CATEDRAL'),(1,5,'ZAPOTE'),(1,6,'SAN FRANCISCO DE DOS RIOS'),(1,7,'URUCA'),(1,8,'MATA REDONDA'),(1,9,'PAVAS'),(1,10,'HATILLO'),(1,11,'SAN SEBASTIAN'),(2,12,'ESCAZU'),(2,13,'SAN ANTONIO'),(2,14,'SAN RAFAEL'),(3,15,'DESAMPARADOS'),(3,16,'SAN MIGUEL'),(3,17,'SAN JUAN DE DIOS'),(3,18,'SAN RAFAEL ARRIBA'),(3,19,'SAN SAN ANTONIO'),(3,20,'FRAILES'),(3,21,'PATARRA'),(3,22,'SAN CRISTOBAL'),(3,23,'ROSARIO'),(3,24,'DAMAS'),(3,25,'SAN RAFAEL ABAJO'),(3,26,'GRAVILIAS'),(3,27,'LOS GUIDO'),(4,28,'SANTIAGO'),(4,29,'MERCEDES SUR'),(4,30,'BARBACOAS'),(4,31,'GRIFO ALTO'),(4,32,'SAN RAFAEL'),(4,33,'CANDELARITA'),(4,34,'DESAMPARIDITOS'),(4,35,'SAN ANTONIO'),(4,36,'CHIRES'),(5,37,'SAN MARCOS'),(5,38,'SAN LORENZO'),(5,39,'SAN CARLOS'),(6,40,'ASERRI'),(6,41,'TARBACA'),(6,42,'VUELTA DE JORCO'),(6,43,'SAN GABRIEL'),(6,44,'LA LEGUA'),(6,45,'MONTERRY'),(6,46,'SALITRILLOS'),(7,47,'COLON'),(7,48,'GUAYABO'),(7,49,'TABARCIA'),(7,50,'PIEDRAS NEGRAS'),(7,51,'PICAGRES'),(8,52,'GUADALUPE'),(8,53,'SAN FRANCISCO'),(8,54,'CALLE BLANCO'),(8,55,'MATA PLATANO'),(8,56,'IPIS'),(8,57,'RANCHO REDONDEO'),(8,58,'PURRAL'),(9,59,'SANTA ANA'),(9,60,'SALITRAL'),(9,61,'POZOS'),(9,62,'URUCA'),(9,63,'PIEDADES'),(9,64,'BRASIL'),(10,65,'ALAJUELITA'),(10,66,'SAN JOSECITO'),(10,67,'SAN ANTONIO'),(10,68,'CONCEPCION'),(10,69,'SAN FELIPE'),(11,70,'SAN ISIDRO'),(11,71,'SAN RAFAEL'),(11,72,'DULCE NOMBRE DE JESUS'),(11,73,'PATALILLO'),(11,74,'CASCAJAL'),(12,75,'SAN IGNACIO'),(12,76,'GUAITIL'),(12,77,'PALMICHAL'),(12,78,'CANGREJAL'),(12,79,'SABANILLAS'),(13,80,'SAN JUAN'),(13,81,'CINCO ESQUINAS'),(13,82,'ANSELMO LLORENTE'),(13,83,'LEON XIII'),(13,84,'COLIMA'),(14,85,'SAN VICENTE'),(14,86,'SAN JERONIMO'),(14,87,'LA TRINIDAD'),(15,88,'SAN PEDRO'),(15,89,'SABANILLA'),(15,90,'MERCEDES'),(15,91,'SAN RAFAEL'),(16,92,'SAN PABLO'),(16,93,'SAN PEDRO'),(16,94,'SAN JUAN DE MATA'),(16,95,'SAN LUIS'),(16,96,'CARARA'),(17,97,'SANTA MARIA'),(17,98,'JARDIN'),(17,99,'COPEY'),(18,100,'CURRIDABAT'),(18,101,'GRANADILLA'),(18,102,'SANCHEZ'),(18,103,'TIRRASES'),(19,104,'SAN ISIDRO DE EL GENERAL'),(19,105,'GENERAL'),(19,106,'DANIEL FLORES'),(19,107,'RIVAS'),(19,108,'SAN PEDRO'),(19,109,'PLATANARES'),(19,110,'PEJIBAYE'),(19,111,'CAJON'),(19,112,'BARU'),(19,113,'RIO NUEVO'),(19,114,'PARAMO'),(20,115,'SAN PABLO'),(20,116,'SAN ANDRES'),(20,117,'LLANO BONITO'),(20,118,'SAN ISIDRO'),(20,119,'SANTA CRUZ'),(20,120,'SAN ANTONIO'),(21,121,'ALAJUELA'),(21,122,'SAN JOSE'),(21,123,'CARRIZAL'),(21,124,'SAN ANTONIO'),(21,125,'GUACIMA'),(21,126,'SAN ISIDRO'),(21,127,'SABANILLA'),(21,128,'SAN RAFAEL'),(21,129,'RIO SEGUNDO'),(21,130,'DESAMPARADOS'),(21,131,'TURRUCARES'),(21,132,'TAMBOR'),(21,133,'LA GARITA'),(21,134,'SARAPIQUI'),(22,135,'SAN RAMON'),(22,136,'SANTIAGO'),(22,137,'SAN JUAN'),(22,138,'PIEDADES NORTE'),(22,139,'PIEDADES SUR'),(22,140,'SAN RAFAEL'),(22,141,'SAN ISIDRO'),(22,142,'ANGELES'),(22,143,'ALFARO'),(22,144,'VOLIO'),(22,145,'CONCEPCION'),(22,146,'ZAPOTAL'),(22,147,'PEÑAS BLANCAS'),(23,148,'GRECIA'),(23,149,'SAN ISIDRO'),(23,150,'SAN JOSE'),(23,151,'SAN ROQUE'),(23,152,'TACARES'),(23,153,'RIO CUARTO'),(23,154,'PUENTE DE PIEDRA'),(23,155,'BOLIVAR'),(24,156,'SAN MATEO'),(24,157,'DESMONTE'),(24,158,'JESUS MARIA'),(25,159,'ATENAS'),(25,160,'JESUS'),(25,161,'MERCEDES'),(25,162,'SAN ISIDRO'),(25,163,'CONCEPCION'),(25,164,'SAN JOSE'),(25,165,'SANTA EULALIA'),(25,166,'ESCOBAL'),(26,167,'NARANJO'),(26,168,'SAN MIGUEL'),(26,169,'SAN JOSE'),(26,170,'CIRRI SUR'),(26,171,'SAN JERONIMO'),(26,172,'SAN JUAN'),(26,173,'ROSARIO'),(27,174,'PALMARES'),(27,175,'ZARAGOZA'),(27,176,'BUENOS AIRES'),(27,177,'SANTIAGO'),(27,178,'CANDELARIA'),(27,179,'ESQUIPULAS'),(27,180,'GRANJA'),(28,181,'SAN PEDRO'),(28,182,'SAN JUAN'),(28,183,'SAN RAFAEL'),(28,184,'CARRILLOS'),(28,185,'SABANA REDONDA'),(29,186,'OROTINA'),(29,187,'MASTATE'),(29,188,'HACIENDA VIEJA'),(29,189,'COYOLAR'),(29,190,'CEIBA'),(30,191,'QUESADA'),(30,192,'FLORENCIA'),(30,193,'BUENAVISTA'),(30,194,'AGUAS ZARCAS'),(30,195,'VENECIA'),(30,196,'PITAL'),(30,197,'FORTUNA'),(30,198,'TIGRA'),(30,199,'PALMERA'),(30,200,'VENADO'),(30,201,'CUTRIS'),(30,202,'MONTERREY'),(30,203,'POCOSOL'),(31,204,'ZARCERO'),(31,205,'LAGUNA'),(31,206,'TAPEZCO'),(31,207,'GUADALUPE'),(31,208,'PALMIRA'),(31,209,'ZAPOTE'),(31,210,'BRISAS'),(32,211,'SARCHI NORTE'),(32,212,'SARCHI SUR'),(32,213,'TORO AMARILLO'),(32,214,'SAN PEDRO'),(32,215,'RODRIGUEZ'),(33,216,'UPALA'),(33,217,'AGUAS CLARAS'),(33,218,'SAN JOSE (PIZOTE)'),(33,219,'BIJAGUA'),(33,220,'DELICIAS'),(33,221,'DOS RIOS'),(33,222,'YOLILLAL'),(34,223,'LOS CHILES'),(34,224,'CANO NEGRO'),(34,225,'EL AMPARO'),(34,226,'SAN JORGE'),(35,227,'SAN RAFAEL'),(35,228,'BUENAVISTA'),(35,229,'COTE'),(36,230,'ORIENTAL'),(36,231,'OCCIDENTAL'),(36,232,'CARMEN'),(36,233,'SAN NICOLAS'),(36,234,'SAN FRANCISCO'),(36,235,'GUADALUPE'),(36,236,'CORRALILLO'),(36,237,'TIERRA BLANCA'),(36,238,'DULCE NOMBRE'),(36,239,'LLANO GRANDE'),(36,240,'QUEBRADILLA'),(37,241,'PARAISO'),(37,242,'SANTIAGO'),(37,243,'OROSI'),(37,244,'CACHI'),(37,245,'LLANOS DE SANTA LUCIA'),(38,246,'TRES RIOS'),(38,247,'SAN DIEGO'),(38,248,'SAN JUAN'),(38,249,'SAN RAFAEL'),(38,250,'CONCEPCION'),(38,251,'DULCE NOMBRE'),(38,252,'SAN RAMON'),(38,253,'RIO AZUL'),(39,254,'JUAN VINAS'),(39,255,'TUCURRIQUE'),(39,256,'PEJIBAYE'),(40,257,'TURRIALBA'),(40,258,'LA SUIZA'),(40,259,'PERALTA'),(40,260,'SANTA CRUZ'),(40,261,'SANTA TERESITA'),(40,262,'PAVONES'),(40,263,'TUIS'),(40,264,'TAYUTIC'),(40,265,'SANTA ROSA'),(40,266,'TRES EQUIS'),(40,267,'LA ISABEL'),(40,268,'EL CHIRRIPO'),(41,269,'PACAYAS'),(41,270,'CERVANTES'),(41,271,'CAPELLADES'),(42,272,'SAN RAFAEL'),(42,273,'COT'),(42,274,'POTRERO CERRADO'),(42,275,'CIPRESES'),(42,276,'SANTA ROSA'),(43,277,'EL TEJAR'),(43,278,'SAN ISIDRO'),(43,279,'TOBOSI'),(43,280,'PATIO DE AGUA'),(44,281,'HEREDIA'),(44,282,'MERCEDES'),(44,283,'SAN FRANCISCO'),(44,284,'ULLOA'),(44,285,'VARABLANCA'),(45,286,'BARVA'),(45,287,'SAN PEDRO'),(45,288,'SAN PABLO'),(45,289,'SAN ROQUE'),(45,290,'SANTA LUCIA'),(45,291,'SAN JOSE DE LA MONTAÑA'),(46,292,'SANTO DOMINGO'),(46,293,'SAN VICENTE'),(46,294,'SAN MIGUEL'),(46,295,'PARACITO'),(46,296,'SANTO TOMAS'),(46,297,'SANTA ROSA'),(46,298,'TURES'),(46,299,'PARA'),(47,300,'SANTA BARBARA'),(47,301,'SAN PEDRO'),(47,302,'SAN JUAN'),(47,303,'JESUS'),(47,304,'SANTO DOMINGO'),(47,305,'PURABA'),(48,306,'SAN RAFAEL'),(48,307,'SAN JOSECITO'),(48,308,'SANTIAGO'),(48,309,'LOS ANGELES'),(48,310,'CONCEPCION'),(49,311,'SAN ISIDRO'),(49,312,'SAN JOSE'),(49,313,'CONCEPCION'),(49,314,'SAN FRANCISCO'),(50,315,'SAN ANTONIO'),(50,316,'LA RIBERA'),(50,317,'ASUNCION'),(51,318,'SAN JOAQUIN'),(51,319,'BARRANTES'),(51,320,'LLORENTE'),(52,321,'SAN PABLO'),(53,322,'PUERTO VIEJO'),(53,323,'LA VIRGEN'),(53,324,'HORQUETAS'),(53,325,'LLANURAS DEL GASPAR'),(53,326,'CUREÑA'),(54,327,'LIBERIA'),(54,328,'CAÑAS DULCES'),(54,329,'MAYORGA'),(54,330,'NACASCOLO'),(54,331,'CURUBANDE'),(55,332,'NICOYA'),(55,333,'MANSION'),(55,334,'SAN ANTONIO'),(55,335,'QUEBRADA HONDA'),(55,336,'SAMARA'),(55,337,'NOSARA'),(55,338,'BELEN DE NOSARITA'),(56,339,'SANTA CRUZ'),(56,340,'BOLSON'),(56,341,'VEINTISIETE ABRIL'),(56,342,'TEMPATE'),(56,343,'CARTAGENA'),(56,344,'CUAJINIQUIL'),(56,345,'DIRIA'),(56,346,'CABO VELAS'),(56,347,'TAMARINDO'),(57,348,'BAGACES'),(57,349,'FORTUNA'),(57,350,'MOGOTE'),(57,351,'RIO NARANJO'),(58,352,'FILADELFIA'),(58,353,'PALMIRA'),(58,354,'SARDINAL'),(58,355,'BELEN'),(59,356,'CAÑAS'),(59,357,'PALMIRA'),(59,358,'SAN MIGUEL'),(59,359,'BEBEDERO'),(59,360,'POROSAL'),(60,361,'LAS JUNTAS'),(60,362,'SIERRA'),(60,363,'SAN JUAN'),(60,364,'COLORADO'),(61,365,'TILARAN'),(61,366,'QUEBRADA GRANDE'),(61,367,'TRONADORA'),(61,368,'SANTA ROSA'),(61,369,'LIBANO'),(61,370,'TIERRAS MORENAS'),(61,371,'ARENAL'),(62,372,'CARMONA'),(62,373,'SANTA RITA'),
(62,374,'ZAPOTAL'),(62,375,'SAN PABLO'),(62,376,'PORVENIR'),(62,377,'BEJUCO'),(63,378,'LA CRUZ'),(63,379,'SANTA CECILIA'),(63,380,'LA GARITA'),(63,381,'SANTA ELENA'),(64,382,'HOJANCHA'),(64,383,'MONTE ROMO'),(64,384,'PUERTO CARRILLO'),(64,385,'HUACAS'),(65,386,'PUNTARENAS'),(65,387,'PITAHAYA'),(65,388,'CHOMES'),(65,389,'LEPANTO'),(65,390,'PAQUERA'),(65,391,'MANZANILLO'),(65,392,'GUACIMAL'),(65,393,'BARRANCA'),(65,394,'MONTE VERDE'),(65,395,'ISLA DEL COCO'),(65,396,'COBANO'),(65,397,'CHACARITA'),(65,398,'CHIRA'),(65,399,'ACAPULCO'),(65,400,'EL ROBLE'),(65,401,'ARANCIBIA'),(66,402,'ESPIRITU SANTO'),(66,403,'SAN JUAN GRANDE'),(66,404,'MACACOMA'),(66,405,'SAN RAFAEL'),(66,406,'SAN JERONIMO'),(67,407,'BUENOS AIRES'),(67,408,'VOLCAN'),(67,409,'POTRERO  GRANDE'),(67,410,'BORUCA'),(67,411,'PILAS'),(67,412,'COLINAS'),(67,413,'CHANGUENA'),(67,414,'BIOLLEY'),(67,415,'BRUNKA'),(68,416,'MIRAMAR'),(68,417,'UNION'),(68,418,'SAN ISIDRO'),(69,419,'CORTES'),(69,420,'PALMAR'),(69,421,'SIERPE'),(69,422,'BAHIA BALLENA'),(69,423,'PIEDRAS BLANCAS'),(70,424,'QUEPOS'),(70,425,'SAVEGRE'),(70,426,'NARANJITO'),(71,427,'GOLFITO'),(71,428,'JIMENEZ'),(71,429,'GUAYCARA'),(71,430,'PAVON'),(72,431,'SAN VITO'),(72,432,'SABALITO'),(72,433,'AGUA BUENA'),(72,434,'LIMONCITO'),(72,435,'PITTIER'),(73,436,'PARRITA'),(74,437,'CORREDORES'),(74,438,'LA CUESTA'),(74,439,'CANOAS'),(74,440,'LAUREL'),(75,441,'JACO'),(75,442,'TARCOLES'),(76,443,'LIMON'),(76,444,'VALLE LA ESTRELLA'),(76,445,'RIO BLANCO'),(76,446,'MATAMA'),(77,447,'GUAPILES'),(77,448,'JIMENEZ'),(77,449,'RITA'),(77,450,'ROXANA'),(77,451,'CARIARI'),(77,452,'COLORADO'),(78,453,'SIQUIRRES'),(78,454,'PACUARITO'),(78,455,'FLORIDA'),(78,456,'GERMANIA'),(78,457,'CAIRO'),(78,458,'ALEGRIA'),(79,459,'BRATSI'),(79,460,'SIXAOLA'),(79,461,'CAHUITA'),(79,462,'TELIRE'),(80,463,'MATINA'),(80,464,'BATAN'),(80,465,'CARRANDI'),(81,466,'GUACIMO'),(81,467,'MERECEDES'),(81,468,'POCORA'),(81,469,'RIO JIMENEZ'),(81,470,'DUACARI'),(4,471,'MERCEDES NORTE'),(100,472,'RIO CUARTO'),(77,475,'LA COLONIA'),(52,476,'RINCON DE SABANILLA'),(35,477,'KATIRA'))AS TEMP (IdCanton, IdDistrito, NombreDistrito)


----ACTUALIZAR DATOS---
UPDATE P SET
  P.IdCanton=TM.IdCanton,
  P.NombreDistrito= TM.NombreDistrito
FROM Dbo.Distrito P
INNER JOIN #DistritoTemp TM
    ON P.IdDistrito= TM.IdDistrito


----INSERTAR DATOS---

SET IDENTITY_INSERT dbo.Distrito ON

INSERT INTO dbo.Distrito(
IdCanton, IdDistrito, NombreDistrito)
SELECT
IdCanton, IdDistrito, NombreDistrito
FROM #DistritoTemp


EXCEPT
SELECT
IdCanton, IdDistrito, NombreDistrito
FROM dbo.Distrito


SET IDENTITY_INSERT dbo.Distrito OFF

GO