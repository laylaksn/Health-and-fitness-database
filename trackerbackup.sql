-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: health_and_fitness_tracker
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `dailyactivity`
--

DROP TABLE IF EXISTS `dailyactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dailyactivity` (
  `ActivityID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `ActivityDate` date DEFAULT NULL,
  `StepsCount` int DEFAULT NULL,
  `KilometersWalked` decimal(6,2) DEFAULT NULL,
  `WorkoutDone` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ActivityID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `dailyactivity_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailyactivity`
--

LOCK TABLES `dailyactivity` WRITE;
/*!40000 ALTER TABLE `dailyactivity` DISABLE KEYS */;
INSERT INTO `dailyactivity` VALUES (1,4,'2023-11-04',12000,10.00,1),(2,5,'2023-11-05',9000,7.00,0),(3,6,'2023-11-06',15000,12.00,1),(4,7,'2023-11-07',8000,5.00,0),(5,8,'2023-11-08',11000,9.00,1),(6,9,'2023-11-09',7500,6.00,0),(7,10,'2023-11-10',10000,8.00,1);
/*!40000 ALTER TABLE `dailyactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercises` (
  `ExerciseID` int NOT NULL,
  `ExerciseName` varchar(255) DEFAULT NULL,
  `BodyCategory` varchar(50) DEFAULT NULL,
  `Description` text,
  `DemonstrationVideoURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ExerciseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'Bench Press','Upper Body','Lying on a bench and pressing a weight upwards from the chest.','https://example.com/bench_press_video'),(2,'Squat','Lower Body','Lowering the body into a seated position and then returning to a standing position with a weight on the shoulders.','https://example.com/squat_video'),(3,'Deadlift','Full Body','Lifting a loaded barbell from the ground to the hips, then lowering it back to the ground.','https://example.com/deadlift_video'),(4,'Bicep Curl','Arms','Lifting a weight with the hands towards the shoulders, contracting the biceps.','https://example.com/bicep_curl_video'),(5,'Hip Thrust','Lower Body','Lying on the back and thrusting the hips upwards with added resistance on the pelvis.','https://example.com/hip_thrust_video'),(6,'Lateral Dumbbell Raise','Shoulders','Lifting dumbbells to the sides with a slight bend in the elbows, targeting the lateral deltoids.','https://example.com/lateral_raise_video'),(7,'Upright Row','Shoulders','Lifting a barbell or dumbbells vertically to the collarbone with the elbows leading.','https://example.com/upright_row_video'),(8,'Bent Over Row','Upper Body','Bending at the hips and knees and pulling a weight towards the lower chest or abdomen.','https://example.com/bent_over_row_video'),(9,'Seated Dumbbell Press','Shoulders','Sitting and pressing dumbbells overhead, targeting the shoulder muscles.','https://example.com/seated_press_video'),(10,'Tricep Dip','Arms','Dipping the body down and back up using the triceps, often using parallel bars.','https://example.com/tricep_dip_video'),(11,'Romanian Deadlift','Lower Body','Hinging at the hips with a slight bend in the knees while holding a barbell, targeting the hamstrings.','https://example.com/romanian_deadlift_video'),(12,'Front Squat','Lower Body','Holding a barbell in front of the shoulders and squatting down, targeting the quadriceps.','https://example.com/front_squat_video'),(13,'Pull-up','Upper Body','Lifting the body upwards by pulling on an overhead bar, targeting the back and biceps.','https://example.com/pull_up_video'),(14,'Push-up','Upper Body','Lowering and raising the body using the arms, targeting the chest, shoulders, and triceps.','https://example.com/push_up_video'),(15,'Russian Twist','Core','Seated on the ground, twisting the torso from side to side with or without added resistance.','https://example.com/russian_twist_video'),(16,'Plank','Core','Holding a position similar to a push-up but with the body in a straight line, targeting the core muscles.','https://example.com/plank_video'),(17,'Lunges','Lower Body','Stepping forward or backward and lowering the body into a lunge position with added resistance.','https://example.com/lunges_video'),(18,'Lat Pulldown','Upper Body','Pulling a bar down towards the upper chest while seated, targeting the back and biceps.','https://example.com/lat_pulldown_video'),(19,'Hammer Curl','Arms','Curling dumbbells with a neutral grip (palms facing each other), targeting the biceps and forearms.','https://example.com/hammer_curl_video'),(20,'Calf Raise','Lower Body','Raising the heels to work the muscles in the back of the lower leg, often done with added resistance.','https://example.com/calf_raise_video');
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `healthandfitnessoverview`
--

DROP TABLE IF EXISTS `healthandfitnessoverview`;
/*!50001 DROP VIEW IF EXISTS `healthandfitnessoverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `healthandfitnessoverview` AS SELECT 
 1 AS `UserID`,
 1 AS `Name`,
 1 AS `Age`,
 1 AS `Gender`,
 1 AS `ContactInformation`,
 1 AS `FitnessGoals`,
 1 AS `CurrentWeight`,
 1 AS `TargetWeight`,
 1 AS `Height`,
 1 AS `LastModified`,
 1 AS `MealNumber`,
 1 AS `MealDescription`,
 1 AS `Calories`,
 1 AS `Proteins`,
 1 AS `Carbohydrates`,
 1 AS `Fats`,
 1 AS `WorkoutDate`,
 1 AS `ActivityDate`,
 1 AS `StepsCount`,
 1 AS `KilometersWalked`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `healthassessment`
--

DROP TABLE IF EXISTS `healthassessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthassessment` (
  `AssessmentID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `AssessmentDate` date DEFAULT NULL,
  `BloodPressure` varchar(15) DEFAULT NULL,
  `CholesterolLevel` decimal(5,2) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`AssessmentID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `healthassessment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthassessment`
--

LOCK TABLES `healthassessment` WRITE;
/*!40000 ALTER TABLE `healthassessment` DISABLE KEYS */;
INSERT INTO `healthassessment` VALUES (1,1,'2023-01-05','120/80',150.50,'Normal blood pressure, cholesterol within healthy range.'),(2,2,'2023-01-05','130/85',165.00,'Slightly elevated blood pressure, cholesterol level needs monitoring.'),(3,3,'2023-01-05','118/78',140.20,'Optimal blood pressure, normal cholesterol levels.'),(4,1,'2023-01-12','122/82',155.80,'Stable blood pressure, cholesterol levels showing improvement.'),(5,2,'2023-01-12','128/84',170.50,'Blood pressure and cholesterol levels slightly elevated.'),(6,3,'2023-01-12','115/75',138.00,'Excellent blood pressure and cholesterol levels.'),(7,1,'2023-01-19','125/80',160.20,'Blood pressure slightly elevated, cholesterol within acceptable range.'),(8,2,'2023-01-19','132/88',175.00,'Elevated blood pressure, cholesterol level needs attention.'),(9,3,'2023-01-19','120/76',145.50,'Optimal blood pressure, normal cholesterol levels.');
/*!40000 ALTER TABLE `healthassessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `healthoverview`
--

DROP TABLE IF EXISTS `healthoverview`;
/*!50001 DROP VIEW IF EXISTS `healthoverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `healthoverview` AS SELECT 
 1 AS `UserID`,
 1 AS `Name`,
 1 AS `Age`,
 1 AS `Gender`,
 1 AS `ContactInformation`,
 1 AS `FitnessGoals`,
 1 AS `CurrentWeight`,
 1 AS `TargetWeight`,
 1 AS `Height`,
 1 AS `LastModified`,
 1 AS `AssessmentDate`,
 1 AS `BloodPressure`,
 1 AS `CholesterolLevel`,
 1 AS `Notes`,
 1 AS `ActivityDate`,
 1 AS `StepsCount`,
 1 AS `KilometersWalked`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nutritionplans`
--

DROP TABLE IF EXISTS `nutritionplans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutritionplans` (
  `PlanID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `MealNumber` varchar(20) DEFAULT NULL,
  `MealDescription` varchar(255) DEFAULT NULL,
  `Calories` decimal(6,2) DEFAULT NULL,
  `Proteins` decimal(6,2) DEFAULT NULL,
  `Carbohydrates` decimal(6,2) DEFAULT NULL,
  `Fats` decimal(6,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`PlanID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `nutritionplans_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutritionplans`
--

LOCK TABLES `nutritionplans` WRITE;
/*!40000 ALTER TABLE `nutritionplans` DISABLE KEYS */;
INSERT INTO `nutritionplans` VALUES (1,1,'Breakfast','Oatmeal with berries',300.50,10.00,50.20,5.50,'2023-01-01'),(2,1,'Lunch','Grilled chicken salad',450.20,30.50,20.00,15.80,'2023-01-01'),(3,2,'Dinner','Salmon with quinoa',550.00,35.00,30.20,20.00,'2023-01-02'),(4,3,'Snack','Greek yogurt with almonds',200.80,15.00,10.50,12.00,'2023-01-03'),(5,2,'Breakfast','Avocado toast',400.30,12.50,30.00,25.20,'2023-01-04'),(6,3,'Lunch','Vegetarian stir-fry',320.70,18.20,25.50,15.00,'2023-01-05'),(7,4,'Dinner','Beef and broccoli',600.10,40.00,35.80,28.50,'2023-01-06'),(8,5,'Snack','Protein smoothie',250.00,25.50,15.00,10.20,'2023-01-07'),(9,4,'Breakfast','Scrambled eggs with spinach',350.80,20.00,15.50,22.00,'2023-01-08'),(10,5,'Lunch','Turkey and avocado wrap',420.40,30.50,25.00,18.50,'2023-01-09'),(11,6,'Dinner','Shrimp pasta',500.20,28.00,40.00,20.20,'2023-01-10'),(12,6,'Snack','Cottage cheese with pineapple',180.50,15.50,10.20,8.00,'2023-01-11'),(13,7,'Breakfast','Pancakes with maple syrup',450.00,12.50,60.20,18.00,'2023-01-12'),(14,8,'Lunch','Quinoa and black bean bowl',380.20,22.00,30.50,16.80,'2023-01-13'),(15,9,'Dinner','Chicken curry with rice',550.80,35.50,45.00,22.00,'2023-01-14'),(16,10,'Snack','Apple slices with peanut butter',220.00,8.50,30.20,10.00,'2023-01-15'),(17,8,'Breakfast','Yogurt parfait with granola',320.50,15.00,40.00,12.50,'2023-01-16'),(18,9,'Lunch','Tuna salad sandwich',400.20,25.20,30.00,20.50,'2023-01-17'),(19,10,'Dinner','Vegetable lasagna',480.00,22.50,35.80,25.00,'2023-01-18'),(20,7,'Snack','Almond and cranberry trail mix',180.80,10.00,20.00,12.20,'2023-01-19'),(21,11,'Breakfast','Smoothie with spinach and berries',300.00,10.50,40.00,8.00,'2023-01-20'),(22,12,'Lunch','Grilled salmon salad',450.50,30.00,25.50,18.00,'2023-01-21'),(23,13,'Dinner','Beef stir-fry with brown rice',520.20,35.00,30.20,20.50,'2023-01-22'),(24,14,'Snack','Protein bar',200.00,15.50,20.00,10.20,'2023-01-23'),(25,15,'Breakfast','Avocado and egg toast',380.00,18.00,30.50,22.00,'2023-01-24');
/*!40000 ALTER TABLE `nutritionplans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactInformation` varchar(255) DEFAULT NULL,
  `FitnessGoals` varchar(255) DEFAULT NULL,
  `CurrentWeight` decimal(5,2) DEFAULT NULL,
  `TargetWeight` decimal(5,2) DEFAULT NULL,
  `Height` decimal(5,2) DEFAULT NULL,
  `LastModified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Williams',25,'Male','john.williams@example.com','Gain muscle',170.50,180.00,175.00,'2023-12-10 18:57:04'),(2,'Jane Smith',30,'Female','jane.smith@example.com','Lose weight and tone muscles',150.00,140.00,162.00,'2023-12-10 18:27:39'),(3,'Chris Johnson',28,'Male','chris.johnson@example.com','Increase strength and flexibility',185.00,195.00,180.00,'2023-12-10 18:27:50'),(4,'Emily Davis',22,'Female','emily.davis@example.com','Stay fit and maintain overall health',135.00,130.00,155.00,'2023-12-10 18:28:04'),(5,'Michael Brown',35,'Male','michael.brown@example.com','Build muscle mass and improve stamina',200.00,210.00,175.00,'2023-12-10 18:28:16'),(6,'Sophia Martinez',28,'Female','sophia.martinez@example.com','Weight loss and increased energy',160.00,150.00,163.00,'2023-12-10 18:28:28'),(7,'David Lee',40,'Male','david.lee@example.com','Maintain a healthy lifestyle',180.00,175.00,178.00,'2023-12-10 18:28:38'),(8,'Olivia Wilson',26,'Female','olivia.wilson@example.com','Tone muscles and improve flexibility',140.00,135.00,160.00,'2023-12-10 18:28:49'),(9,'Daniel Miller',32,'Male','daniel.miller@example.com','Weight loss and cardiovascular fitness',175.00,165.00,172.00,'2023-12-10 18:28:59'),(10,'Ava Anderson',29,'Female','ava.anderson@example.com','Build strength and endurance',155.00,160.00,155.00,'2023-12-10 18:29:17'),(11,'Ethan Thomas',34,'Male','ethan.thomas@example.com','Maintain overall health and wellness',190.00,NULL,180.00,'2023-12-10 18:12:26'),(12,'Mia Garcia',27,'Female','mia.garcia@example.com','Weight management and muscle definition',145.00,NULL,165.00,'2023-12-10 18:12:26'),(13,'Noah Rodriguez',31,'Male','noah.rodriguez@example.com','Increase muscle mass and strength',205.00,NULL,188.00,'2023-12-10 18:12:26'),(14,'Isabella Martinez',28,'Female','isabella.martinez@example.com','Cardiovascular fitness and flexibility',160.00,NULL,162.00,'2023-12-10 18:12:26'),(15,'Liam Taylor',33,'Male','liam.taylor@example.com','Enhance athletic performance',180.00,NULL,175.00,'2023-12-10 18:12:26'),(16,'Avery Turner',29,'Female','avery.turner@example.com','Weight loss and muscle toning',150.00,NULL,158.00,'2023-12-10 18:12:26'),(17,'Jackson Hernandez',36,'Male','jackson.hernandez@example.com','Maintain a healthy lifestyle',195.00,NULL,185.00,'2023-12-10 18:12:26'),(18,'Ella Moore',31,'Female','ella.moore@example.com','Increase flexibility and energy levels',140.00,NULL,160.00,'2023-12-10 18:12:26'),(19,'Logan Scott',28,'Male','logan.scott@example.com','Build lean muscle and improve endurance',175.50,NULL,170.00,'2023-12-10 18:12:26'),(20,'Sophie Turner',27,'Female','sophie.turner@example.com','Tone muscles and enhance athletic performance',155.00,NULL,162.00,'2023-12-10 18:12:26'),(21,'Henry Davis',29,'Male','henry.davis@example.com','Weight loss and cardiovascular health',190.00,NULL,178.00,'2023-12-10 18:12:26'),(22,'Grace Smith',32,'Female','grace.smith@example.com','Improve strength and flexibility',165.00,NULL,168.00,'2023-12-10 18:12:26'),(23,'Carter White',26,'Male','carter.white@example.com','Build muscle mass and endurance',200.00,NULL,182.00,'2023-12-10 18:12:26'),(24,'Lily Johnson',28,'Female','lily.johnson@example.com','Weight loss and overall wellness',145.00,NULL,163.00,'2023-12-10 18:12:26'),(25,'Owen Martinez',30,'Male','owen.martinez@example.com','Maintain a healthy and active lifestyle',180.00,NULL,175.00,'2023-12-10 18:12:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userworkouts`
--

DROP TABLE IF EXISTS `userworkouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userworkouts` (
  `UserWorkoutID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `WorkoutPlanID` int DEFAULT NULL,
  `WorkoutDate` date DEFAULT NULL,
  PRIMARY KEY (`UserWorkoutID`),
  KEY `UserID` (`UserID`),
  KEY `WorkoutPlanID` (`WorkoutPlanID`),
  CONSTRAINT `userworkouts_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `userworkouts_ibfk_2` FOREIGN KEY (`WorkoutPlanID`) REFERENCES `workoutplan` (`WorkoutPlanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userworkouts`
--

LOCK TABLES `userworkouts` WRITE;
/*!40000 ALTER TABLE `userworkouts` DISABLE KEYS */;
INSERT INTO `userworkouts` VALUES (1,1,1,'2023-11-01'),(2,1,2,'2023-11-02'),(3,1,3,'2023-11-03'),(4,2,2,'2023-11-01'),(5,2,3,'2023-11-02'),(6,2,1,'2023-11-03'),(7,3,3,'2023-11-01'),(8,3,1,'2023-11-02'),(9,3,2,'2023-11-03');
/*!40000 ALTER TABLE `userworkouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `userworkoutsanddailyactivity`
--

DROP TABLE IF EXISTS `userworkoutsanddailyactivity`;
/*!50001 DROP VIEW IF EXISTS `userworkoutsanddailyactivity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `userworkoutsanddailyactivity` AS SELECT 
 1 AS `UserID`,
 1 AS `Name`,
 1 AS `Age`,
 1 AS `Gender`,
 1 AS `ContactInformation`,
 1 AS `FitnessGoals`,
 1 AS `CurrentWeight`,
 1 AS `TargetWeight`,
 1 AS `Height`,
 1 AS `LastModified`,
 1 AS `WorkoutDate`,
 1 AS `ActivityDate`,
 1 AS `StepsCount`,
 1 AS `KilometersWalked`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `workoutplan`
--

DROP TABLE IF EXISTS `workoutplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workoutplan` (
  `WorkoutPlanID` int NOT NULL,
  `ExerciseID` int NOT NULL,
  `ExerciseOrder` int DEFAULT NULL,
  PRIMARY KEY (`WorkoutPlanID`,`ExerciseID`),
  KEY `ExerciseID` (`ExerciseID`),
  CONSTRAINT `workoutplan_ibfk_1` FOREIGN KEY (`ExerciseID`) REFERENCES `exercises` (`ExerciseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workoutplan`
--

LOCK TABLES `workoutplan` WRITE;
/*!40000 ALTER TABLE `workoutplan` DISABLE KEYS */;
INSERT INTO `workoutplan` VALUES (1,1,1),(1,7,2),(1,14,3),(2,2,2),(2,3,3),(2,11,1),(3,4,1),(3,8,2),(3,10,3),(4,5,1),(4,13,2),(4,20,3),(5,13,2),(5,18,3),(5,19,1),(6,7,2),(6,9,1),(6,17,3);
/*!40000 ALTER TABLE `workoutplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `healthandfitnessoverview`
--

/*!50001 DROP VIEW IF EXISTS `healthandfitnessoverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `healthandfitnessoverview` AS select `u`.`UserID` AS `UserID`,`u`.`Name` AS `Name`,`u`.`Age` AS `Age`,`u`.`Gender` AS `Gender`,`u`.`ContactInformation` AS `ContactInformation`,`u`.`FitnessGoals` AS `FitnessGoals`,`u`.`CurrentWeight` AS `CurrentWeight`,`u`.`TargetWeight` AS `TargetWeight`,`u`.`Height` AS `Height`,`u`.`LastModified` AS `LastModified`,`np`.`MealNumber` AS `MealNumber`,`np`.`MealDescription` AS `MealDescription`,`np`.`Calories` AS `Calories`,`np`.`Proteins` AS `Proteins`,`np`.`Carbohydrates` AS `Carbohydrates`,`np`.`Fats` AS `Fats`,`uw`.`WorkoutDate` AS `WorkoutDate`,`da`.`ActivityDate` AS `ActivityDate`,`da`.`StepsCount` AS `StepsCount`,`da`.`KilometersWalked` AS `KilometersWalked` from (((`users` `u` left join `nutritionplans` `np` on((`u`.`UserID` = `np`.`UserID`))) left join `userworkouts` `uw` on((`u`.`UserID` = `uw`.`UserID`))) left join `dailyactivity` `da` on((`u`.`UserID` = `da`.`UserID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `healthoverview`
--

/*!50001 DROP VIEW IF EXISTS `healthoverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `healthoverview` AS select `u`.`UserID` AS `UserID`,`u`.`Name` AS `Name`,`u`.`Age` AS `Age`,`u`.`Gender` AS `Gender`,`u`.`ContactInformation` AS `ContactInformation`,`u`.`FitnessGoals` AS `FitnessGoals`,`u`.`CurrentWeight` AS `CurrentWeight`,`u`.`TargetWeight` AS `TargetWeight`,`u`.`Height` AS `Height`,`u`.`LastModified` AS `LastModified`,`ha`.`AssessmentDate` AS `AssessmentDate`,`ha`.`BloodPressure` AS `BloodPressure`,`ha`.`CholesterolLevel` AS `CholesterolLevel`,`ha`.`Notes` AS `Notes`,`da`.`ActivityDate` AS `ActivityDate`,`da`.`StepsCount` AS `StepsCount`,`da`.`KilometersWalked` AS `KilometersWalked` from ((`users` `u` left join `healthassessment` `ha` on((`u`.`UserID` = `ha`.`UserID`))) left join `dailyactivity` `da` on((`u`.`UserID` = `da`.`UserID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userworkoutsanddailyactivity`
--

/*!50001 DROP VIEW IF EXISTS `userworkoutsanddailyactivity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userworkoutsanddailyactivity` AS select `u`.`UserID` AS `UserID`,`u`.`Name` AS `Name`,`u`.`Age` AS `Age`,`u`.`Gender` AS `Gender`,`u`.`ContactInformation` AS `ContactInformation`,`u`.`FitnessGoals` AS `FitnessGoals`,`u`.`CurrentWeight` AS `CurrentWeight`,`u`.`TargetWeight` AS `TargetWeight`,`u`.`Height` AS `Height`,`u`.`LastModified` AS `LastModified`,`uw`.`WorkoutDate` AS `WorkoutDate`,`da`.`ActivityDate` AS `ActivityDate`,`da`.`StepsCount` AS `StepsCount`,`da`.`KilometersWalked` AS `KilometersWalked` from ((`users` `u` left join `userworkouts` `uw` on((`u`.`UserID` = `uw`.`UserID`))) left join `dailyactivity` `da` on((`u`.`UserID` = `da`.`UserID`))) */;
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

-- Dump completed on 2023-12-11 20:46:54
