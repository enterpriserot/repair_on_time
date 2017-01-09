CREATE DATABASE  IF NOT EXISTS `rot` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rot`;
-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: 51.255.168.116    Database: rot
-- ------------------------------------------------------
-- Server version	5.5.52-0+deb8u1

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
-- Table structure for table `technicians`
--

DROP TABLE IF EXISTS `technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technicians` (
  `id` int(11) NOT NULL,
  `id_card` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname1` varchar(100) DEFAULT NULL,
  `surname2` varchar(100) DEFAULT NULL,
  `street` varchar(100) NOT NULL,
  `street_number` varchar(20) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `points` float NOT NULL,
  `val_qty` float NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technicians`
--

LOCK TABLES `technicians` WRITE;
/*!40000 ALTER TABLE `technicians` DISABLE KEYS */;
INSERT INTO `technicians` VALUES (1,'00000000A','José','Dominguez','Llanos','Pio XII','50','Ontinyent','46870','jose@test.com',100,1,'08:30:00','19:30:00',38.8204,-0.599243),(2,'00000000B','Francisco','Gomis','Gandia','Fra Lluis Galiana','15','Ontinyent','46870','fco@test.com',100,2,'08:30:00','19:30:00',38.8253,-0.600362),(3,'00000000C','Toño','Lopez','Sanches','Pare Fullana','29','Ontinyent','46870','antonio@test.com',100,1,'08:30:00','19:30:00',38.8242,-0.613326),(4,'00000000D','Intered, S.L.','','','Salvador Tormo','37','Ontinyent','46870','intered@test.com',100,1,'09:30:00','19:30:00',38.8236,-0.599889),(5,'00000000E','Tio','Pepe','Madrid','Pedro Leal','44','Albacete','46870','tio@test.com',100,1,'08:30:00','19:30:00',38.8707,-1.09971);
/*!40000 ALTER TABLE `technicians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicos`
--

DROP TABLE IF EXISTS `tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecnicos` (
  `dni` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `points` mediumint(9) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES ('11123196F','Gay Conner Rich','699939448','vulputate.eu.odio@Morbivehicula.com','Lorem ipsum dolor sit amet, consectetuer adipiscing',293,'5435 At St.','Dominica','Aragón','Huesca'),('11288118K','Katell Ellis Cain','149995182','neque.et.nunc@nasceturridiculusmus.net','Lorem ipsum dolor',9459,'Ap #812-2822 Dui St.','Solomon Islands','AS','Gijón'),('11457649R','Imogene Hartman Hopper','436867593','lectus@Inornaresagittis.co.uk','Lorem ipsum dolor sit amet, consectetuer',3857,'Ap #185-5922 Urna Ave','Faroe Islands','CE','Ceuta'),('11532373E','Selma Potter Mcknight','124503744','luctus.et@dapibus.edu','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',2514,'143-4524 Enim Street','Antarctica','AR','Zaragoza'),('11717791I','Nerea Webb Wilder','108652021','placerat.orci.lacus@Integermollis.co.uk','Lorem ipsum dolor',4908,'P.O. Box 796, 4835 Et St.','Estonia','Melilla','Melilla'),('12411481D','Cecilia Fisher Weeks','362703417','dis.parturient@sagittis.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',5561,'991-3709 Aliquam St.','Tonga','AN','Dos Hermanas'),('12639688P','Leandra Conrad Booth','988171389','diam.lorem@acmi.ca','Lorem ipsum dolor sit amet,',8067,'8624 Nec Road','Jersey','CL','Burgos'),('12816953X','Minerva Jackson Rich','247008284','felis.eget.varius@sedtortor.edu','Lorem ipsum dolor',4337,'Ap #660-5571 Cursus Rd.','Virgin Islands, British','Ceuta','Ceuta'),('13424922E','Piper Barrera Malone','383208363','Nunc.lectus@Crasegetnisi.net','Lorem ipsum dolor sit amet, consectetuer adipiscing',829,'Ap #540-2672 Interdum Rd.','South Georgia and The South Sandwich Islands','CA','Mataró'),('14861545Y','Shelley Maldonado Gomez','021282714','non@Fuscealiquet.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',6168,'886-9784 Lorem, St.','Samoa','Illes Balears','Palma de Mallorca'),('15163267V','Lila Coffey Roth','368447484','vel.est.tempor@nunc.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing',8555,'552-2483 Malesuada Road','Saudi Arabia','Illes Balears','Palma de Mallorca'),('17374446P','Amber Coffey Gill','301536430','natoque.penatibus@mollis.co.uk','Lorem ipsum dolor sit amet, consectetuer',839,'7075 Tristique St.','Mongolia','CA','Santander'),('19324177P','Sybil Contreras Emerson','801315768','viverra@vitaeorciPhasellus.co.uk','Lorem',9847,'Ap #291-9816 At Rd.','Samoa','MU','Murcia'),('21617369U','Ila Bailey Bryant','510916183','sem@Aliquamultricesiaculis.com','Lorem ipsum',2434,'P.O. Box 252, 3547 Pellentesque Rd.','Jamaica','Castilla y León','Salamanca'),('24273475N','Audrey Lawson Larsen','655668671','nonummy.ut@Curabitur.edu','Lorem ipsum dolor sit amet,',531,'Ap #375-8740 Nec St.','Greece','AS','Gijón'),('25112366I','Cailin Webster Leblanc','383315897','luctus.ipsum@Nunccommodoauctor.com','Lorem ipsum dolor sit amet, consectetuer adipiscing',1018,'P.O. Box 904, 268 Nunc St.','Bolivia','CM','Guadalajara'),('25741962H','Avye Clemons Riggs','934162695','malesuada.fames.ac@sagittisDuis.co.uk','Lorem ipsum dolor sit amet,',5855,'993-2931 Et Avenue','China','LR','Logroño'),('26429459F','Sybill Rose Patterson','555656292','urna.et.arcu@nunc.edu','Lorem ipsum dolor sit amet, consectetuer',2285,'P.O. Box 554, 6291 Duis St.','Samoa','Galicia','Lugo'),('28688734T','Leandra Roberson Hines','218068445','leo@Nuncpulvinararcu.net','Lorem ipsum dolor sit amet, consectetuer adipiscing',6918,'Ap #638-5089 Malesuada Street','Denmark','PV','Bilbo'),('29425861R','Hedwig Chavez Skinner','986303875','est@nuncsed.co.uk','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',8642,'628-5798 Pharetra St.','Trinidad and Tobago','PV','Gasteiz'),('32365594Z','Ruby Hodges Brennan','186455623','In.tincidunt@quispedePraesent.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',5040,'610-5265 Nascetur St.','Myanmar','CV','Alacant'),('32545973Z','Sophia Pratt Beck','109283624','vitae@dignissim.org','Lorem ipsum dolor sit',4000,'584-6536 Sed Rd.','Palestine, State of','AN','Granada'),('32937412J','Alfreda Stafford Fitzgerald','063317867','Mauris.magna@DonecnibhQuisque.edu','Lorem ipsum dolor sit amet,',7725,'6389 Consectetuer St.','Hungary','Canarias','San Cristóbal de la Laguna'),('33213856M','Ginger Wong Holder','478471694','blandit.at@egetvarius.org','Lorem ipsum dolor',1314,'P.O. Box 587, 1341 Magnis Av.','Bulgaria','Cantabria','Santander'),('33583351T','Danielle Burton Cortez','620036205','Duis.sit@diameu.com','Lorem ipsum dolor sit amet,',2550,'627-833 Ipsum Av.','Qatar','Catalunya','Tarrasa'),('33629687N','Ursa Daniel Blanchard','172519779','sit.amet@pedeet.ca','Lorem ipsum dolor sit',2744,'828-5779 Tempus Av.','Burkina Faso','BA','Palma de Mallorca'),('34165174Y','Ingrid Ayala Becker','329204740','libero.Morbi@erat.com','Lorem ipsum',80,'803-2591 Interdum. Avenue','Paraguay','MA','Torrejón de Ardoz'),('34651333E','Xena Rosales Herrera','995304270','hendrerit.Donec@inlobortis.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',4097,'Ap #534-6384 Litora St.','France','CA','Santander'),('36964585W','Summer Mcclure Herring','857520665','urna.suscipit@cursus.edu','Lorem ipsum dolor sit amet, consectetuer',8603,'P.O. Box 581, 1013 Purus, Street','Belize','BA','Palma de Mallorca'),('39196619J','Indigo Russell Short','061169829','erat@Sednunc.co.uk','Lorem ipsum',6420,'6635 Eu Rd.','Kiribati','Catalunya','Mataró'),('39422484B','September Yates Garrison','561145863','adipiscing@Proinnisl.com','Lorem ipsum',9905,'672-9538 Sed St.','Malaysia','BA','Palma de Mallorca'),('41348228R','Dahlia Hull Bartlett','680239013','nec@et.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',4467,'890-3369 Fames Ave','Guyana','CE','Ceuta'),('42295882V','Angela Conley Hawkins','690440787','lectus@sodales.edu','Lorem ipsum dolor sit',4551,'688-531 Auctor Avenue','Turkey','Principado de Asturias','Oviedo'),('42426957A','Isadora Clark Dalton','499639719','purus@etmagnis.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',5772,'9475 Turpis. Street','Bouvet Island','BA','Palma de Mallorca'),('42436662J','Haley Hogan Ochoa','673608771','quis.arcu.vel@convallisin.co.uk','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',2770,'494-2194 Nulla Ave','Chad','Comunitat Valenciana','Valéncia'),('42649336T','Remedios Duncan Noble','160314167','tempus.risus@pedeSuspendisse.org','Lorem',411,'P.O. Box 799, 6325 At, Av.','Myanmar','Murcia','Cartagena'),('42682718T','Bethany Goodwin Wolfe','022167941','elementum@atpretiumaliquet.net','Lorem ipsum dolor sit',9888,'9921 Nulla Av.','Norfolk Island','CA','Santander'),('43263756M','Lunea Sherman Mcintyre','994193545','ipsum.non.arcu@Nullamvelitdui.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',6576,'3213 Ante Av.','Hong Kong','Illes Balears','Palma de Mallorca'),('43912493H','Germaine Dickerson Le','831868141','ultricies@Maurismagna.net','Lorem ipsum dolor sit',2547,'P.O. Box 726, 3631 Auctor Rd.','Martinique','PV','Baracaldo'),('45974969Y','Kiona Sampson Mckenzie','322308186','interdum.Sed.auctor@Sed.ca','Lorem ipsum dolor sit',8874,'9686 Consequat Avenue','Åland Islands','Madrid','Alcorcón'),('46178573H','Meredith Castaneda Bonner','785496687','et.arcu@uterosnon.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing',1744,'193-7681 Etiam Street','Kenya','Illes Balears','Palma de Mallorca'),('46366634Q','Jolie Franks Turner','853400310','eget@sollicitudinamalesuada.com','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',5924,'P.O. Box 645, 5892 Semper. Ave','India','Catalunya','Tarrasa'),('46494439N','Marcia Raymond Shields','981467568','eget.odio.Aliquam@diam.co.uk','Lorem ipsum dolor sit amet,',217,'391-6898 Vel, Rd.','Estonia','Cantabria','Santander'),('46561989Q','Galena Mclean Perry','286281294','ultrices.posuere@nulla.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',4735,'P.O. Box 511, 1142 Nullam St.','French Polynesia','La Rioja','Logroño'),('47648475W','Ciara Mcguire Shields','601072906','lacus@consectetuerrhoncus.com','Lorem',7536,'Ap #476-8382 Gravida. Street','Martinique','ME','Melilla'),('47731416U','Olympia Crawford Mcconnell','564201781','dolor.dolor@Sedeu.edu','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',2792,'Ap #991-8143 Orci Ave','Montserrat','Catalunya','Reus'),('48972181T','Francesca Hancock Hoover','219831539','arcu.ac.orci@egetvariusultrices.edu','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',1572,'Ap #148-6438 Ipsum St.','Iran','CA','Lleida'),('49132284H','Hedda Kidd Pena','250421273','tincidunt.dui.augue@Utsemperpretium.co.uk','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',4852,'404-6868 Mus. St.','Guam','Navarra','Pamplona'),('49527462E','Nora Farley Figueroa','005991390','risus.Duis@quistristiqueac.com','Lorem ipsum',9946,'Ap #169-6184 Maecenas Street','Jersey','Galicia','Ourense'),('51424632E','Alfreda Beard Sawyer','472987595','fringilla@etlaciniavitae.ca','Lorem ipsum dolor',1593,'2720 Auctor St.','El Salvador','PV','Bilbo'),('51483226R','Kylan Quinn Doyle','680730623','Aenean.sed@fringilla.com','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',6826,'P.O. Box 697, 5310 Lectus Av.','Senegal','Comunitat Valenciana','Valéncia'),('51991675N','Hillary Barlow Pace','401052729','elit.erat.vitae@Namnulla.net','Lorem ipsum dolor sit amet,',2806,'Ap #777-104 Sit Ave','Jordan','MU','Murcia'),('52228587Y','Francesca Mendoza Matthews','267710252','egestas.Aliquam@Nuncsollicitudincommodo.org','Lorem',8486,'9977 Amet, Ave','Libya','Ceuta','Ceuta'),('52828885Y','Tanisha Barrett Benson','776647024','blandit.congue@Morbiaccumsan.co.uk','Lorem ipsum dolor sit amet,',9486,'1042 Ac, St.','Ghana','Extremadura','Cáceres'),('53527785G','Ella Landry Webster','686146017','consequat@dui.com','Lorem ipsum dolor sit amet, consectetuer adipiscing',2224,'9728 Hendrerit St.','Venezuela','Ceuta','Ceuta'),('54445423V','Carolyn Harrison Kane','286045319','in@facilisis.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',3823,'Ap #846-7342 Aenean Av.','Singapore','Extremadura','Cáceres'),('55297348S','Amena Hancock Guerra','346571891','euismod.mauris.eu@duiin.net','Lorem ipsum',1903,'3626 Sed Rd.','Nicaragua','CM','Cuenca'),('57469594W','Ursula Melton Buckley','335856616','tortor.Integer@eu.com','Lorem ipsum dolor sit amet, consectetuer adipiscing',8968,'334-1957 Non, Road','Samoa','Ceuta','Ceuta'),('58342327E','Shea Beard Weaver','626785148','vestibulum@ornareliberoat.net','Lorem',3422,'Ap #602-9158 Arcu. Avenue','Slovakia','Euskadi','Gasteiz'),('61129948R','Tatum Davenport Dunlap','831702912','orci.tincidunt.adipiscing@in.ca','Lorem ipsum dolor sit',7740,'670-957 Id, Rd.','China','BA','Palma de Mallorca'),('61567482H','Sandra Welch Mckee','768599680','venenatis@bibendumfermentummetus.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing',2785,'838-3766 Libero Road','Lebanon','CV','Valéncia'),('62462422V','Carolyn House Meyers','308738350','quam.elementum.at@sagittis.net','Lorem ipsum dolor sit amet, consectetuer adipiscing',9680,'P.O. Box 410, 1432 Eget Avenue','Palestine, State of','BA','Palma de Mallorca'),('64161494J','Haley Pugh Cole','589781240','sagittis.felis@congueelit.co.uk','Lorem ipsum',2585,'Ap #428-8378 Ut Avenue','Niger','CM','Ciudad Real'),('65675381N','Iris Stark Ellison','011708886','erat@faucibusMorbi.net','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',8026,'Ap #855-1419 Lobortis Rd.','Benin','AN','Jerez de la Frontera'),('66184844B','Jenette Barr Griffin','364994208','neque.sed@facilisis.edu','Lorem ipsum dolor sit',7822,'870-2425 Blandit St.','Montserrat','CA','Santander'),('69321512D','Kaitlin Mcmahon Gonzalez','891018954','accumsan.laoreet.ipsum@luctuset.edu','Lorem ipsum dolor sit amet, consectetuer adipiscing',228,'Ap #388-5007 Ligula Avenue','Bouvet Island','Murcia','Murcia'),('69879157C','Amena Rodriguez Noble','199164049','consectetuer@eueleifend.org','Lorem ipsum dolor sit',8619,'Ap #856-3665 Nec Av.','Iran','CV','Castelló'),('71491954X','Madison Durham Graham','724043268','facilisi.Sed@ornarelectusante.co.uk','Lorem ipsum dolor sit amet, consectetuer',5304,'4232 Eu St.','Pakistan','AR','Teruel'),('71913433U','Yeo Vinson Pate','532428265','massa.Quisque.porttitor@semmagna.ca','Lorem ipsum dolor',4396,'8622 A, Road','Gabon','La Rioja','Logroño'),('71957931P','Sybil Dillard Zamora','597048057','non.vestibulum@hendreritid.net','Lorem ipsum dolor sit amet,',2028,'6223 Cursus Ave','Russian Federation','Andalucía','Cádiz'),('72174918W','Lani Mullins Bell','685274688','massa.rutrum@etultrices.org','Lorem ipsum dolor sit amet, consectetuer',4291,'Ap #448-2789 Sed Rd.','Trinidad and Tobago','CM','Cuenca'),('72213367X','Lenore Massey Russell','090689251','orci.Phasellus@Fusce.edu','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',3794,'8351 Cras St.','Hong Kong','ME','Melilla'),('72912449E','Unity Valentine Puckett','062166159','Vivamus.sit@amet.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing',6451,'Ap #977-8837 Lobortis. Rd.','Saint Pierre and Miquelon','Melilla','Melilla'),('74369543K','Isadora Austin Pearson','737181298','et.malesuada.fames@dignissim.edu','Lorem ipsum',4224,'756-9399 Fames Ave','Fiji','Melilla','Melilla'),('74497127I','Susan Wooten Baker','927994897','Mauris.molestie@anteMaecenasmi.com','Lorem ipsum dolor',2435,'P.O. Box 289, 9485 Nulla Rd.','Guatemala','AR','Huesca'),('74899419N','Ila Cook Henderson','424196097','nibh.Phasellus.nulla@cursus.ca','Lorem ipsum dolor sit',956,'Ap #845-7500 At Rd.','Qatar','Extremadura','Badajoz'),('75613492A','Adara Banks Dotson','410092047','vehicula.Pellentesque.tincidunt@sodalesMaurisblandit.co.uk','Lorem ipsum dolor sit',9669,'P.O. Box 640, 9252 Eleifend. Street','Sudan','CN','San Cristóbal de la Laguna'),('76521576K','Zelda Dean Weaver','080482725','a@tempus.net','Lorem ipsum dolor sit amet,',7844,'453-5143 Adipiscing Avenue','Saint Barthélemy','Navarra','Pamplona'),('77174724P','Clare Kane Blackburn','994647931','Cum.sociis.natoque@vulputatedui.edu','Lorem ipsum dolor sit amet,',7977,'Ap #835-4881 Nonummy Av.','Mexico','Andalucía','Marbella'),('81879486Z','Rama Foley Irwin','112115850','cursus@egestas.org','Lorem ipsum dolor sit amet, consectetuer adipiscing',767,'P.O. Box 816, 339 Risus Street','Croatia','Galicia','Lugo'),('82173118O','May Duran Bender','632462474','Nullam@placerat.co.uk','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',2833,'P.O. Box 966, 2035 Elementum, Street','Sierra Leone','CA','Santander'),('83171686Q','Alyssa Dunn Savage','542660295','dui@utquam.edu','Lorem ipsum dolor',225,'8624 At St.','Algeria','AR','Huesca'),('83966563F','Charity York Bush','168776803','ut@nunc.org','Lorem ipsum dolor',4456,'4150 Purus. Ave','Kenya','Canarias','Las Palmas'),('84859726O','Natalie Jones Miranda','996137444','nisi.magna@Pellentesque.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',689,'Ap #701-2185 Eget Avenue','Algeria','AR','Huesca'),('85465864D','Camilla Castillo Franks','145806750','nulla.Cras.eu@eratSed.ca','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',5040,'1036 Vivamus St.','Timor-Leste','Navarra','Pamplona'),('86381458S','Zelda Mercado Vazquez','175096172','interdum.feugiat.Sed@interdumligulaeu.co.uk','Lorem',3862,'P.O. Box 215, 3688 Tellus Road','Cambodia','Ceuta','Ceuta'),('87218593D','Kyla Duran Long','911308623','volutpat.Nulla.dignissim@adipiscing.net','Lorem ipsum dolor sit amet, consectetuer',2491,'Ap #851-9668 In, St.','Zimbabwe','CM','Ciudad Real'),('88645273K','Isabelle Jordan Sparks','590018607','Phasellus@egestasAliquamfringilla.edu','Lorem ipsum dolor sit amet,',8859,'2433 Cursus Street','Brazil','LR','Logroño'),('91138385A','Libby Peck Monroe','575296534','lectus.Cum@mattisCraseget.com','Lorem ipsum dolor',6076,'Ap #206-5473 Ultricies Avenue','United States','MA','Torrejón de Ardoz'),('91522533G','Clementine Shelton Simpson','072782724','egestas.Aliquam@nislQuisque.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',9914,'782-9063 Non Road','Israel','AR','Teruel'),('92917498G','Quintessa Williams Roth','962496481','molestie.pharetra@pede.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',1241,'438-5430 Donec Rd.','Palestine, State of','Aragón','Huesca'),('93892711T','Alexis Guy Burton','694456404','Proin@suscipit.ca','Lorem ipsum dolor',6783,'P.O. Box 117, 175 Duis Road','Slovenia','PV','Gasteiz'),('94359928G','Brynne Hull Moss','513097417','ut.pharetra@acfeugiatnon.org','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',6854,'P.O. Box 570, 742 Ut Street','Japan','Murcia','Murcia'),('95814865Q','Ruth Young Holland','328072079','eu.tellus@Vivamus.co.uk','Lorem ipsum dolor sit amet, consectetuer adipiscing',4140,'P.O. Box 554, 2157 Aliquam Avenue','Benin','Castilla y León','Ávila'),('96261899R','Cassandra Wells Mcclain','878494854','mollis@placeratorci.edu','Lorem',4774,'476-5994 Metus. Rd.','Christmas Island','CE','Ceuta'),('97339867V','Gillian Thompson Sherman','659849479','vel.convallis@afacilisisnon.edu','Lorem ipsum dolor sit amet,',5701,'Ap #383-5521 Dolor, St.','Norfolk Island','Catalunya','Girona'),('97611679C','Lara Chase Larsen','192049927','pharetra.ut.pharetra@tincidunttempusrisus.com','Lorem ipsum dolor',1507,'592-1661 Luctus Road','Antigua and Barbuda','Andalucía','Cádiz'),('97949388F','Alika Bridges Mcpherson','161726072','neque.pellentesque.massa@Maurisvestibulumneque.org','Lorem ipsum dolor sit amet,',5539,'391-1720 Velit Av.','Saint Helena, Ascension and Tristan da Cunha','Castilla y León','Segovia'),('98269679Y','Dominique Hewitt Dodson','032678996','eu@Nulla.org','Lorem ipsum dolor sit amet, consectetuer',4846,'8209 Sapien, St.','Maldives','CE','Ceuta'),('99963265K','Alana Roach Black','690878365','Curabitur.ut.odio@nonummyultriciesornare.com','Lorem',6427,'Ap #451-9399 Ad Rd.','Austria','Castilla y León','Burgos');
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `dni` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surnames` varchar(250) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `date_birthday` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','Antonio','Re','','10211593565181681','$2y$10$dMKVPfShC5xbkiL.0f8QouyjMwBna7OovfCotmHd.dgeTHwH8nhsa','','client','','','','','https://graph.facebook.com/10211593565181681/picture',''),(1,'','David','User','','108531849638577','$2y$10$dMKVPfShC5xbkiL.0f8QouyjMwBna7OovfCotmHd.dgeTHwH8nhsa','','client','','','','','https://graph.facebook.com/108531849638577/picture',''),(1,'','David','Ureña Gil','','1322941711112925','$2y$10$dMKVPfShC5xbkiL.0f8QouyjMwBna7OovfCotmHd.dgeTHwH8nhsa','','client','','','','','https://graph.facebook.com/1322941711112925/picture',''),(1,'','Yolanda','Monerris','','667744430066259','$2y$10$dMKVPfShC5xbkiL.0f8QouyjMwBna7OovfCotmHd.dgeTHwH8nhsa','','client','','','','','https://graph.facebook.com/667744430066259/picture',''),(1,'','David','','','daurgil@gmail.com','$2y$10$0.hPN8qK6p.zs6626B4l3umXhMRs.7Yi5GIW7HSoLcL1JyYBYtJy6','','client','','','','','https://www.gravatar.com/avatar/aebdd39e38493d4ea687b30c174270e6aebdd39e38493d4ea687b30c174270e6?s=400&d=identicon&r=g','Cha6bafd0d63b28d7b45cac7962a834fa1b'),(1,'48292470Z','Antonio','Revert Hinojosa','','megathorin@gmail.com','$2y$10$XRDXgCa58dcyCR0atJlB5O2d1SgV5dSmvf3MKSHJ2Vh1Mrt8qAQWy','24/05/1981','client','ES','46','Ontinyent','Furs, 36','https://www.gravatar.com/avatar/d1e3df991c49cea3e92bb8c7d0b6987ed1e3df991c49cea3e92bb8c7d0b6987e?s=400&d=identicon&r=g','Chafdc75d5e8708dffd88ad49976dd4d8f8'),(1,'470Z','Toni','Revert','612789456','test@test.com','$2y$10$A2C4tI75JCHc6b7atpohSe9UXQBaNesy0zFF6emzYJhcCEXUF5sXe','05/05/1981','client','AT','default_province','default_city','Calle','./media/default-avatar.png','14a40272b4c4a9f052d3f72fc00d2f8a'),(1,'','Yomogan','','','yomogan@gmail.com','$2y$10$HwiRZwFUHrU3p91seaXxd.yt0RR4tTvxOSSN5tKbeY4SFPIBA15gm','','client','','','','','https://www.gravatar.com/avatar/9154526c03ad3e327b28e3f1f7582e3a9154526c03ad3e327b28e3f1f7582e3a?s=400&d=identicon&r=g','Chaae0284f208f3010acc326f97dc7e482e');
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

-- Dump completed on 2017-01-09 20:22:51
