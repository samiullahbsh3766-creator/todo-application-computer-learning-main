

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


LOCK TABLES `todos` WRITE;

INSERT INTO `todos` VALUES
(8,'BUY PC',0,'2025-12-15',2),
(9,'Do anything',1,'2025-12-15',2),
(10,'Boxing',0,'2025-12-15',1),
(11,'teaching',0,'2025-12-15',1),
(12,'Hello',0,'2025-12-15',3);

UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES
(1,'ahmad@gmail.com','$2b$12$ChUxa4TKW2p6.ctDrhDHlOOad1HkNXr7h1ABpppGp1y0OoJ2qIZWe','admin','Ahmad'),
(2,'john@test.com','$2b$12$MXfSa6h8.4f6rl5HA2chXeTCOdWwo9qwqMnYei0q5RrSl/pt/jaVO','user','John Doe'),
(3,'k@gmail.com','$2b$12$KkgL9m2YuYSJRh87g6/iI.szvjT6/7JtgVGkGMWIW.9kdqdOtjwg2','user','Khalil');

UNLOCK TABLES;
