DROP TABLE `tecnicos`;

CREATE TABLE `tecnicos` (
  `dni` varchar(255),
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `description` TEXT default NULL,
  `points` mediumint default NULL,
  `address` varchar(255) default NULL,
  `country` varchar(100) default NULL,
  `province` varchar(50) default NULL,
  `city` varchar(255)
);

INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("75613492A","Adara Banks Dotson","410092047","vehicula.Pellentesque.tincidunt@sodalesMaurisblandit.co.uk","Lorem ipsum dolor sit",9669,"P.O. Box 640, 9252 Eleifend. Street","Sudan","CN","San Cristóbal de la Laguna"),("29425861R","Hedwig Chavez Skinner","986303875","est@nuncsed.co.uk","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",8642,"628-5798 Pharetra St.","Trinidad and Tobago","PV","Gasteiz"),("64161494J","Haley Pugh Cole","589781240","sagittis.felis@congueelit.co.uk","Lorem ipsum",2585,"Ap #428-8378 Ut Avenue","Niger","CM","Ciudad Real"),("11717791I","Nerea Webb Wilder","108652021","placerat.orci.lacus@Integermollis.co.uk","Lorem ipsum dolor",4908,"P.O. Box 796, 4835 Et St.","Estonia","Melilla","Melilla"),("45974969Y","Kiona Sampson Mckenzie","322308186","interdum.Sed.auctor@Sed.ca","Lorem ipsum dolor sit",8874,"9686 Consequat Avenue","Åland Islands","Madrid","Alcorcón"),("12816953X","Minerva Jackson Rich","247008284","felis.eget.varius@sedtortor.edu","Lorem ipsum dolor",4337,"Ap #660-5571 Cursus Rd.","Virgin Islands, British","Ceuta","Ceuta"),("51991675N","Hillary Barlow Pace","401052729","elit.erat.vitae@Namnulla.net","Lorem ipsum dolor sit amet,",2806,"Ap #777-104 Sit Ave","Jordan","MU","Murcia"),("32545973Z","Sophia Pratt Beck","109283624","vitae@dignissim.org","Lorem ipsum dolor sit",4000,"584-6536 Sed Rd.","Palestine, State of","AN","Granada"),("99963265K","Alana Roach Black","690878365","Curabitur.ut.odio@nonummyultriciesornare.com","Lorem",6427,"Ap #451-9399 Ad Rd.","Austria","Castilla y León","Burgos"),("94359928G","Brynne Hull Moss","513097417","ut.pharetra@acfeugiatnon.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",6854,"P.O. Box 570, 742 Ut Street","Japan","Murcia","Murcia");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("15163267V","Lila Coffey Roth","368447484","vel.est.tempor@nunc.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing",8555,"552-2483 Malesuada Road","Saudi Arabia","Illes Balears","Palma de Mallorca"),("84859726O","Natalie Jones Miranda","996137444","nisi.magna@Pellentesque.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",689,"Ap #701-2185 Eget Avenue","Algeria","AR","Huesca"),("47731416U","Olympia Crawford Mcconnell","564201781","dolor.dolor@Sedeu.edu","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",2792,"Ap #991-8143 Orci Ave","Montserrat","Catalunya","Reus"),("87218593D","Kyla Duran Long","911308623","volutpat.Nulla.dignissim@adipiscing.net","Lorem ipsum dolor sit amet, consectetuer",2491,"Ap #851-9668 In, St.","Zimbabwe","CM","Ciudad Real"),("33213856M","Ginger Wong Holder","478471694","blandit.at@egetvarius.org","Lorem ipsum dolor",1314,"P.O. Box 587, 1341 Magnis Av.","Bulgaria","Cantabria","Santander"),("43263756M","Lunea Sherman Mcintyre","994193545","ipsum.non.arcu@Nullamvelitdui.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",6576,"3213 Ante Av.","Hong Kong","Illes Balears","Palma de Mallorca"),("65675381N","Iris Stark Ellison","011708886","erat@faucibusMorbi.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",8026,"Ap #855-1419 Lobortis Rd.","Benin","AN","Jerez de la Frontera"),("52828885Y","Tanisha Barrett Benson","776647024","blandit.congue@Morbiaccumsan.co.uk","Lorem ipsum dolor sit amet,",9486,"1042 Ac, St.","Ghana","Extremadura","Cáceres"),("13424922E","Piper Barrera Malone","383208363","Nunc.lectus@Crasegetnisi.net","Lorem ipsum dolor sit amet, consectetuer adipiscing",829,"Ap #540-2672 Interdum Rd.","South Georgia and The South Sandwich Islands","CA","Mataró"),("54445423V","Carolyn Harrison Kane","286045319","in@facilisis.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",3823,"Ap #846-7342 Aenean Av.","Singapore","Extremadura","Cáceres");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("88645273K","Isabelle Jordan Sparks","590018607","Phasellus@egestasAliquamfringilla.edu","Lorem ipsum dolor sit amet,",8859,"2433 Cursus Street","Brazil","LR","Logroño"),("32365594Z","Ruby Hodges Brennan","186455623","In.tincidunt@quispedePraesent.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",5040,"610-5265 Nascetur St.","Myanmar","CV","Alacant"),("42649336T","Remedios Duncan Noble","160314167","tempus.risus@pedeSuspendisse.org","Lorem",411,"P.O. Box 799, 6325 At, Av.","Myanmar","Murcia","Cartagena"),("61567482H","Sandra Welch Mckee","768599680","venenatis@bibendumfermentummetus.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing",2785,"838-3766 Libero Road","Lebanon","CV","Valéncia"),("97339867V","Gillian Thompson Sherman","659849479","vel.convallis@afacilisisnon.edu","Lorem ipsum dolor sit amet,",5701,"Ap #383-5521 Dolor, St.","Norfolk Island","Catalunya","Girona"),("53527785G","Ella Landry Webster","686146017","consequat@dui.com","Lorem ipsum dolor sit amet, consectetuer adipiscing",2224,"9728 Hendrerit St.","Venezuela","Ceuta","Ceuta"),("74497127I","Susan Wooten Baker","927994897","Mauris.molestie@anteMaecenasmi.com","Lorem ipsum dolor",2435,"P.O. Box 289, 9485 Nulla Rd.","Guatemala","AR","Huesca"),("85465864D","Camilla Castillo Franks","145806750","nulla.Cras.eu@eratSed.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",5040,"1036 Vivamus St.","Timor-Leste","Navarra","Pamplona"),("26429459F","Sybill Rose Patterson","555656292","urna.et.arcu@nunc.edu","Lorem ipsum dolor sit amet, consectetuer",2285,"P.O. Box 554, 6291 Duis St.","Samoa","Galicia","Lugo"),("71491954X","Madison Durham Graham","724043268","facilisi.Sed@ornarelectusante.co.uk","Lorem ipsum dolor sit amet, consectetuer",5304,"4232 Eu St.","Pakistan","AR","Teruel");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("77174724P","Clare Kane Blackburn","994647931","Cum.sociis.natoque@vulputatedui.edu","Lorem ipsum dolor sit amet,",7977,"Ap #835-4881 Nonummy Av.","Mexico","Andalucía","Marbella"),("33583351T","Danielle Burton Cortez","620036205","Duis.sit@diameu.com","Lorem ipsum dolor sit amet,",2550,"627-833 Ipsum Av.","Qatar","Catalunya","Tarrasa"),("97949388F","Alika Bridges Mcpherson","161726072","neque.pellentesque.massa@Maurisvestibulumneque.org","Lorem ipsum dolor sit amet,",5539,"391-1720 Velit Av.","Saint Helena, Ascension and Tristan da Cunha","Castilla y León","Segovia"),("46366634Q","Jolie Franks Turner","853400310","eget@sollicitudinamalesuada.com","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",5924,"P.O. Box 645, 5892 Semper. Ave","India","Catalunya","Tarrasa"),("49132284H","Hedda Kidd Pena","250421273","tincidunt.dui.augue@Utsemperpretium.co.uk","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",4852,"404-6868 Mus. St.","Guam","Navarra","Pamplona"),("11532373E","Selma Potter Mcknight","124503744","luctus.et@dapibus.edu","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",2514,"143-4524 Enim Street","Antarctica","AR","Zaragoza"),("71957931P","Sybil Dillard Zamora","597048057","non.vestibulum@hendreritid.net","Lorem ipsum dolor sit amet,",2028,"6223 Cursus Ave","Russian Federation","Andalucía","Cádiz"),("12639688P","Leandra Conrad Booth","988171389","diam.lorem@acmi.ca","Lorem ipsum dolor sit amet,",8067,"8624 Nec Road","Jersey","CL","Burgos"),("25741962H","Avye Clemons Riggs","934162695","malesuada.fames.ac@sagittisDuis.co.uk","Lorem ipsum dolor sit amet,",5855,"993-2931 Et Avenue","China","LR","Logroño"),("46494439N","Marcia Raymond Shields","981467568","eget.odio.Aliquam@diam.co.uk","Lorem ipsum dolor sit amet,",217,"391-6898 Vel, Rd.","Estonia","Cantabria","Santander");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("12411481D","Cecilia Fisher Weeks","362703417","dis.parturient@sagittis.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",5561,"991-3709 Aliquam St.","Tonga","AN","Dos Hermanas"),("71913433U","Yeo Vinson Pate","532428265","massa.Quisque.porttitor@semmagna.ca","Lorem ipsum dolor",4396,"8622 A, Road","Gabon","La Rioja","Logroño"),("17374446P","Amber Coffey Gill","301536430","natoque.penatibus@mollis.co.uk","Lorem ipsum dolor sit amet, consectetuer",839,"7075 Tristique St.","Mongolia","CA","Santander"),("83171686Q","Alyssa Dunn Savage","542660295","dui@utquam.edu","Lorem ipsum dolor",225,"8624 At St.","Algeria","AR","Huesca"),("28688734T","Leandra Roberson Hines","218068445","leo@Nuncpulvinararcu.net","Lorem ipsum dolor sit amet, consectetuer adipiscing",6918,"Ap #638-5089 Malesuada Street","Denmark","PV","Bilbo"),("81879486Z","Rama Foley Irwin","112115850","cursus@egestas.org","Lorem ipsum dolor sit amet, consectetuer adipiscing",767,"P.O. Box 816, 339 Risus Street","Croatia","Galicia","Lugo"),("72174918W","Lani Mullins Bell","685274688","massa.rutrum@etultrices.org","Lorem ipsum dolor sit amet, consectetuer",4291,"Ap #448-2789 Sed Rd.","Trinidad and Tobago","CM","Cuenca"),("91522533G","Clementine Shelton Simpson","072782724","egestas.Aliquam@nislQuisque.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",9914,"782-9063 Non Road","Israel","AR","Teruel"),("69879157C","Amena Rodriguez Noble","199164049","consectetuer@eueleifend.org","Lorem ipsum dolor sit",8619,"Ap #856-3665 Nec Av.","Iran","CV","Castelló"),("11123196F","Gay Conner Rich","699939448","vulputate.eu.odio@Morbivehicula.com","Lorem ipsum dolor sit amet, consectetuer adipiscing",293,"5435 At St.","Dominica","Aragón","Huesca");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("91138385A","Libby Peck Monroe","575296534","lectus.Cum@mattisCraseget.com","Lorem ipsum dolor",6076,"Ap #206-5473 Ultricies Avenue","United States","MA","Torrejón de Ardoz"),("93892711T","Alexis Guy Burton","694456404","Proin@suscipit.ca","Lorem ipsum dolor",6783,"P.O. Box 117, 175 Duis Road","Slovenia","PV","Gasteiz"),("24273475N","Audrey Lawson Larsen","655668671","nonummy.ut@Curabitur.edu","Lorem ipsum dolor sit amet,",531,"Ap #375-8740 Nec St.","Greece","AS","Gijón"),("51483226R","Kylan Quinn Doyle","680730623","Aenean.sed@fringilla.com","Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",6826,"P.O. Box 697, 5310 Lectus Av.","Senegal","Comunitat Valenciana","Valéncia"),("92917498G","Quintessa Williams Roth","962496481","molestie.pharetra@pede.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",1241,"438-5430 Donec Rd.","Palestine, State of","Aragón","Huesca"),("42436662J","Haley Hogan Ochoa","673608771","quis.arcu.vel@convallisin.co.uk","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",2770,"494-2194 Nulla Ave","Chad","Comunitat Valenciana","Valéncia"),("96261899R","Cassandra Wells Mcclain","878494854","mollis@placeratorci.edu","Lorem",4774,"476-5994 Metus. Rd.","Christmas Island","CE","Ceuta"),("11457649R","Imogene Hartman Hopper","436867593","lectus@Inornaresagittis.co.uk","Lorem ipsum dolor sit amet, consectetuer",3857,"Ap #185-5922 Urna Ave","Faroe Islands","CE","Ceuta"),("19324177P","Sybil Contreras Emerson","801315768","viverra@vitaeorciPhasellus.co.uk","Lorem",9847,"Ap #291-9816 At Rd.","Samoa","MU","Murcia"),("86381458S","Zelda Mercado Vazquez","175096172","interdum.feugiat.Sed@interdumligulaeu.co.uk","Lorem",3862,"P.O. Box 215, 3688 Tellus Road","Cambodia","Ceuta","Ceuta");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("83966563F","Charity York Bush","168776803","ut@nunc.org","Lorem ipsum dolor",4456,"4150 Purus. Ave","Kenya","Canarias","Las Palmas"),("42682718T","Bethany Goodwin Wolfe","022167941","elementum@atpretiumaliquet.net","Lorem ipsum dolor sit",9888,"9921 Nulla Av.","Norfolk Island","CA","Santander"),("14861545Y","Shelley Maldonado Gomez","021282714","non@Fuscealiquet.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",6168,"886-9784 Lorem, St.","Samoa","Illes Balears","Palma de Mallorca"),("41348228R","Dahlia Hull Bartlett","680239013","nec@et.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",4467,"890-3369 Fames Ave","Guyana","CE","Ceuta"),("49527462E","Nora Farley Figueroa","005991390","risus.Duis@quistristiqueac.com","Lorem ipsum",9946,"Ap #169-6184 Maecenas Street","Jersey","Galicia","Ourense"),("43912493H","Germaine Dickerson Le","831868141","ultricies@Maurismagna.net","Lorem ipsum dolor sit",2547,"P.O. Box 726, 3631 Auctor Rd.","Martinique","PV","Baracaldo"),("47648475W","Ciara Mcguire Shields","601072906","lacus@consectetuerrhoncus.com","Lorem",7536,"Ap #476-8382 Gravida. Street","Martinique","ME","Melilla"),("72213367X","Lenore Massey Russell","090689251","orci.Phasellus@Fusce.edu","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",3794,"8351 Cras St.","Hong Kong","ME","Melilla"),("82173118O","May Duran Bender","632462474","Nullam@placerat.co.uk","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",2833,"P.O. Box 966, 2035 Elementum, Street","Sierra Leone","CA","Santander"),("51424632E","Alfreda Beard Sawyer","472987595","fringilla@etlaciniavitae.ca","Lorem ipsum dolor",1593,"2720 Auctor St.","El Salvador","PV","Bilbo");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("55297348S","Amena Hancock Guerra","346571891","euismod.mauris.eu@duiin.net","Lorem ipsum",1903,"3626 Sed Rd.","Nicaragua","CM","Cuenca"),("58342327E","Shea Beard Weaver","626785148","vestibulum@ornareliberoat.net","Lorem",3422,"Ap #602-9158 Arcu. Avenue","Slovakia","Euskadi","Gasteiz"),("95814865Q","Ruth Young Holland","328072079","eu.tellus@Vivamus.co.uk","Lorem ipsum dolor sit amet, consectetuer adipiscing",4140,"P.O. Box 554, 2157 Aliquam Avenue","Benin","Castilla y León","Ávila"),("98269679Y","Dominique Hewitt Dodson","032678996","eu@Nulla.org","Lorem ipsum dolor sit amet, consectetuer",4846,"8209 Sapien, St.","Maldives","CE","Ceuta"),("21617369U","Ila Bailey Bryant","510916183","sem@Aliquamultricesiaculis.com","Lorem ipsum",2434,"P.O. Box 252, 3547 Pellentesque Rd.","Jamaica","Castilla y León","Salamanca"),("69321512D","Kaitlin Mcmahon Gonzalez","891018954","accumsan.laoreet.ipsum@luctuset.edu","Lorem ipsum dolor sit amet, consectetuer adipiscing",228,"Ap #388-5007 Ligula Avenue","Bouvet Island","Murcia","Murcia"),("52228587Y","Francesca Mendoza Matthews","267710252","egestas.Aliquam@Nuncsollicitudincommodo.org","Lorem",8486,"9977 Amet, Ave","Libya","Ceuta","Ceuta"),("42426957A","Isadora Clark Dalton","499639719","purus@etmagnis.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",5772,"9475 Turpis. Street","Bouvet Island","BA","Palma de Mallorca"),("74899419N","Ila Cook Henderson","424196097","nibh.Phasellus.nulla@cursus.ca","Lorem ipsum dolor sit",956,"Ap #845-7500 At Rd.","Qatar","Extremadura","Badajoz"),("61129948R","Tatum Davenport Dunlap","831702912","orci.tincidunt.adipiscing@in.ca","Lorem ipsum dolor sit",7740,"670-957 Id, Rd.","China","BA","Palma de Mallorca");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("42295882V","Angela Conley Hawkins","690440787","lectus@sodales.edu","Lorem ipsum dolor sit",4551,"688-531 Auctor Avenue","Turkey","Principado de Asturias","Oviedo"),("76521576K","Zelda Dean Weaver","080482725","a@tempus.net","Lorem ipsum dolor sit amet,",7844,"453-5143 Adipiscing Avenue","Saint Barthélemy","Navarra","Pamplona"),("62462422V","Carolyn House Meyers","308738350","quam.elementum.at@sagittis.net","Lorem ipsum dolor sit amet, consectetuer adipiscing",9680,"P.O. Box 410, 1432 Eget Avenue","Palestine, State of","BA","Palma de Mallorca"),("74369543K","Isadora Austin Pearson","737181298","et.malesuada.fames@dignissim.edu","Lorem ipsum",4224,"756-9399 Fames Ave","Fiji","Melilla","Melilla"),("57469594W","Ursula Melton Buckley","335856616","tortor.Integer@eu.com","Lorem ipsum dolor sit amet, consectetuer adipiscing",8968,"334-1957 Non, Road","Samoa","Ceuta","Ceuta"),("33629687N","Ursa Daniel Blanchard","172519779","sit.amet@pedeet.ca","Lorem ipsum dolor sit",2744,"828-5779 Tempus Av.","Burkina Faso","BA","Palma de Mallorca"),("32937412J","Alfreda Stafford Fitzgerald","063317867","Mauris.magna@DonecnibhQuisque.edu","Lorem ipsum dolor sit amet,",7725,"6389 Consectetuer St.","Hungary","Canarias","San Cristóbal de la Laguna"),("34165174Y","Ingrid Ayala Becker","329204740","libero.Morbi@erat.com","Lorem ipsum",80,"803-2591 Interdum. Avenue","Paraguay","MA","Torrejón de Ardoz"),("46178573H","Meredith Castaneda Bonner","785496687","et.arcu@uterosnon.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing",1744,"193-7681 Etiam Street","Kenya","Illes Balears","Palma de Mallorca"),("39422484B","September Yates Garrison","561145863","adipiscing@Proinnisl.com","Lorem ipsum",9905,"672-9538 Sed St.","Malaysia","BA","Palma de Mallorca");
INSERT INTO `tecnicos` (`dni`,`name`,`phone`,`email`,`description`,`points`,`address`,`country`,`province`,`city`) VALUES ("34651333E","Xena Rosales Herrera","995304270","hendrerit.Donec@inlobortis.net","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",4097,"Ap #534-6384 Litora St.","France","CA","Santander"),("72912449E","Unity Valentine Puckett","062166159","Vivamus.sit@amet.ca","Lorem ipsum dolor sit amet, consectetuer adipiscing",6451,"Ap #977-8837 Lobortis. Rd.","Saint Pierre and Miquelon","Melilla","Melilla"),("39196619J","Indigo Russell Short","061169829","erat@Sednunc.co.uk","Lorem ipsum",6420,"6635 Eu Rd.","Kiribati","Catalunya","Mataró"),("97611679C","Lara Chase Larsen","192049927","pharetra.ut.pharetra@tincidunttempusrisus.com","Lorem ipsum dolor",1507,"592-1661 Luctus Road","Antigua and Barbuda","Andalucía","Cádiz"),("48972181T","Francesca Hancock Hoover","219831539","arcu.ac.orci@egetvariusultrices.edu","Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",1572,"Ap #148-6438 Ipsum St.","Iran","CA","Lleida"),("46561989Q","Galena Mclean Perry","286281294","ultrices.posuere@nulla.org","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",4735,"P.O. Box 511, 1142 Nullam St.","French Polynesia","La Rioja","Logroño"),("11288118K","Katell Ellis Cain","149995182","neque.et.nunc@nasceturridiculusmus.net","Lorem ipsum dolor",9459,"Ap #812-2822 Dui St.","Solomon Islands","AS","Gijón"),("66184844B","Jenette Barr Griffin","364994208","neque.sed@facilisis.edu","Lorem ipsum dolor sit",7822,"870-2425 Blandit St.","Montserrat","CA","Santander"),("36964585W","Summer Mcclure Herring","857520665","urna.suscipit@cursus.edu","Lorem ipsum dolor sit amet, consectetuer",8603,"P.O. Box 581, 1013 Purus, Street","Belize","BA","Palma de Mallorca"),("25112366I","Cailin Webster Leblanc","383315897","luctus.ipsum@Nunccommodoauctor.com","Lorem ipsum dolor sit amet, consectetuer adipiscing",1018,"P.O. Box 904, 268 Nunc St.","Bolivia","CM","Guadalajara");
