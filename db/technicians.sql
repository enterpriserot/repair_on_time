DROP TABLE IF EXISTS `technicians`;

CREATE TABLE `technicians` (
  `id` int(11) NOT NULL,
  `id_card` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname1` varchar(100),
  `surname2` varchar(100),
  `street` varchar(100) NOT NULL,
  `street_number` varchar(20),
  `city` varchar(100) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `email` varchar(100),
  `points` float NOT NULL,
  `val_qty` float NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `technicians`
VALUES (1,'00000000A','Jose','Dominguez','Llanos','Pio XII','50','Ontinyent','46870','jose@test.com',100,1,'8:30:00','19:30:00',38.820352,-0.599243),
(2,'00000000B','Francisco','Gomis','Gandia','Fra Lluis Galiana','15','Ontinyent','46870','fco@test.com',100,1,'8:30:00','19:30:00',38.825272,-0.600362),
(3,'00000000C','Antonio','Lopez','Sanches','Pare Fullana','29','Ontinyent','46870','antonio@test.com',100,1,'8:30:00','19:30:00',38.824219,-0.613326),
(4,'00000000D','Intered, S.L.','','','Salvador Tormo','37','Ontinyent','46870','intered@test.com',100,1,'9:30:00','19:30:00',38.823642,-0.599889);
