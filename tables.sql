CREATE DATABASE `platzi_analysis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;


CREATE TABLE `students_platzi` (
  `id_students` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `course` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `twitter_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_students`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `tweets_users` (
  `twitter_user` int NOT NULL,
  `text` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `location` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`twitter_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `students_sentiment` (
  `id_sudent` int NOT NULL,
  `twitter_user` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `avg_sentiment` decimal(8,0) DEFAULT NULL,
  `prob_positive` decimal(8,0) DEFAULT NULL,
  `prob_neutral` decimal(8,0) DEFAULT NULL,
  `prob_negat` decimal(8,0) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_sudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
