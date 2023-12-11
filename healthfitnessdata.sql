-- Inserting data into the Users table
INSERT INTO Users (UserID, Name, Age, Gender, ContactInformation, FitnessGoals, CurrentWeight, TargetWeight)
VALUES
(1, 'John Williams', 25, 'Male', 'john.williams@example.com', 'Build muscle and improve endurance', 170.5, 180.0),
(2, 'Jane Smith', 30, 'Female', 'jane.smith@example.com', 'Lose weight and tone muscles', 150.0, 140.0),
(3, 'Chris Johnson', 28, 'Male', 'chris.johnson@example.com', 'Increase strength and flexibility', 185.0, 195.0),
(4, 'Emily Davis', 22, 'Female', 'emily.davis@example.com', 'Stay fit and maintain overall health', 135.0, 130.0),
(5, 'Michael Brown', 35, 'Male', 'michael.brown@example.com', 'Build muscle mass and improve stamina', 200.0, 210.0),
(6, 'Sophia Martinez', 28, 'Female', 'sophia.martinez@example.com', 'Weight loss and increased energy', 160.0, 150.0),
(7, 'David Lee', 40, 'Male', 'david.lee@example.com', 'Maintain a healthy lifestyle', 180.0, 175.0),
(8, 'Olivia Wilson', 26, 'Female', 'olivia.wilson@example.com', 'Tone muscles and improve flexibility', 140.0, 135.0),
(9, 'Daniel Miller', 32, 'Male', 'daniel.miller@example.com', 'Weight loss and cardiovascular fitness', 175.0, 165.0),
(10, 'Ava Anderson', 29, 'Female', 'ava.anderson@example.com', 'Build strength and endurance', 155.0, 160.0),
(11, 'Ethan Thomas', 34, 'Male', 'ethan.thomas@example.com', 'Maintain overall health and wellness', 190.0, 185.0),
(12, 'Mia Garcia', 27, 'Female', 'mia.garcia@example.com', 'Weight management and muscle definition', 145.0, 150.0),
(13, 'Noah Rodriguez', 31, 'Male', 'noah.rodriguez@example.com', 'Increase muscle mass and strength', 205.0, 210.0),
(14, 'Isabella Martinez', 28, 'Female', 'isabella.martinez@example.com', 'Cardiovascular fitness and flexibility', 160.0, 155.0),
(15, 'Liam Taylor', 33, 'Male', 'liam.taylor@example.com', 'Enhance athletic performance', 180.0, 175.0),
(16, 'Avery Turner', 29, 'Female', 'avery.turner@example.com', 'Weight loss and muscle toning', 150.0, 145.0),
(17, 'Jackson Hernandez', 36, 'Male', 'jackson.hernandez@example.com', 'Maintain a healthy lifestyle', 195.0, 190.0),
(18, 'Ella Moore', 31, 'Female', 'ella.moore@example.com', 'Increase flexibility and energy levels', 140.0, 138.0),
(19, 'Logan Scott', 28, 'Male', 'logan.scott@example.com', 'Build lean muscle and improve endurance', 175.5, 185.0),
(20, 'Sophie Turner', 27, 'Female', 'sophie.turner@example.com', 'Tone muscles and enhance athletic performance', 155.0, 150.0),
(21, 'Henry Davis', 29, 'Male', 'henry.davis@example.com', 'Weight loss and cardiovascular health', 190.0, 180.0),
(22, 'Grace Smith', 32, 'Female', 'grace.smith@example.com', 'Improve strength and flexibility', 165.0, 160.0),
(23, 'Carter White', 26, 'Male', 'carter.white@example.com', 'Build muscle mass and endurance', 200.0, 210.0),
(24, 'Lily Johnson', 28, 'Female', 'lily.johnson@example.com', 'Weight loss and overall wellness', 145.0, 140.0),
(25, 'Owen Martinez', 30, 'Male', 'owen.martinez@example.com', 'Maintain a healthy and active lifestyle', 180.0, 175.0);

-- Update the Height data for each user. We did this so we can calculate BMI
UPDATE Users SET Height = 175.0 WHERE UserID = 1;
UPDATE Users SET Height = 162.0 WHERE UserID = 2;
UPDATE Users SET Height = 180.0 WHERE UserID = 3;
UPDATE Users SET Height = 155.0 WHERE UserID = 4;
UPDATE Users SET Height = 175.0 WHERE UserID = 5;
UPDATE Users SET Height = 163.0 WHERE UserID = 6;
UPDATE Users SET Height = 178.0 WHERE UserID = 7;
UPDATE Users SET Height = 160.0 WHERE UserID = 8;
UPDATE Users SET Height = 172.0 WHERE UserID = 9;
UPDATE Users SET Height = 155.0 WHERE UserID = 10;
UPDATE Users SET Height = 180.0 WHERE UserID = 11;
UPDATE Users SET Height = 165.0 WHERE UserID = 12;
UPDATE Users SET Height = 188.0 WHERE UserID = 13;
UPDATE Users SET Height = 162.0 WHERE UserID = 14;
UPDATE Users SET Height = 175.0 WHERE UserID = 15;
UPDATE Users SET Height = 158.0 WHERE UserID = 16;
UPDATE Users SET Height = 185.0 WHERE UserID = 17;
UPDATE Users SET Height = 160.0 WHERE UserID = 18;
UPDATE Users SET Height = 170.0 WHERE UserID = 19;
UPDATE Users SET Height = 162.0 WHERE UserID = 20;
UPDATE Users SET Height = 178.0 WHERE UserID = 21;
UPDATE Users SET Height = 168.0 WHERE UserID = 22;
UPDATE Users SET Height = 182.0 WHERE UserID = 23;
UPDATE Users SET Height = 163.0 WHERE UserID = 24;
UPDATE Users SET Height = 175.0 WHERE UserID = 25;

-- Update the LastModified column for all users
UPDATE Users
SET LastModified = CURRENT_TIMESTAMP
WHERE UserID > 0;

-- Inserting data into the NutritionPlans table
INSERT INTO NutritionPlans (PlanID, UserID, MealNumber, MealDescription, Calories, Proteins, Carbohydrates, Fats, Date)
VALUES
(1, 1, 'Breakfast', 'Oatmeal with berries', 300.5, 10.0, 50.2, 5.5, '2023-01-01'),
(2, 1, 'Lunch', 'Grilled chicken salad', 450.2, 30.5, 20.0, 15.8, '2023-01-01'),
(3, 2, 'Dinner', 'Salmon with quinoa', 550.0, 35.0, 30.2, 20.0, '2023-01-02'),
(4, 3, 'Snack', 'Greek yogurt with almonds', 200.8, 15.0, 10.5, 12.0, '2023-01-03'),
(5, 2, 'Breakfast', 'Avocado toast', 400.3, 12.5, 30.0, 25.2, '2023-01-04'),
(6, 3, 'Lunch', 'Vegetarian stir-fry', 320.7, 18.2, 25.5, 15.0, '2023-01-05'),
(7, 4, 'Dinner', 'Beef and broccoli', 600.1, 40.0, 35.8, 28.5, '2023-01-06'),
(8, 5, 'Snack', 'Protein smoothie', 250.0, 25.5, 15.0, 10.2, '2023-01-07'),
(9, 4, 'Breakfast', 'Scrambled eggs with spinach', 350.8, 20.0, 15.5, 22.0, '2023-01-08'),
(10, 5, 'Lunch', 'Turkey and avocado wrap', 420.4, 30.5, 25.0, 18.5, '2023-01-09'),
(11, 6, 'Dinner', 'Shrimp pasta', 500.2, 28.0, 40.0, 20.2, '2023-01-10'),
(12, 6, 'Snack', 'Cottage cheese with pineapple', 180.5, 15.5, 10.2, 8.0, '2023-01-11'),
(13, 7, 'Breakfast', 'Pancakes with maple syrup', 450.0, 12.5, 60.2, 18.0, '2023-01-12'),
(14, 8, 'Lunch', 'Quinoa and black bean bowl', 380.2, 22.0, 30.5, 16.8, '2023-01-13'),
(15, 9, 'Dinner', 'Chicken curry with rice', 550.8, 35.5, 45.0, 22.0, '2023-01-14'),
(16, 10, 'Snack', 'Apple slices with peanut butter', 220.0, 8.5, 30.2, 10.0, '2023-01-15'),
(17, 8, 'Breakfast', 'Yogurt parfait with granola', 320.5, 15.0, 40.0, 12.5, '2023-01-16'),
(18, 9, 'Lunch', 'Tuna salad sandwich', 400.2, 25.2, 30.0, 20.5, '2023-01-17'),
(19, 10, 'Dinner', 'Vegetable lasagna', 480.0, 22.5, 35.8, 25.0, '2023-01-18'),
(20, 7, 'Snack', 'Almond and cranberry trail mix', 180.8, 10.0, 20.0, 12.2, '2023-01-19'),
(21, 11, 'Breakfast', 'Smoothie with spinach and berries', 300.0, 10.5, 40.0, 8.0, '2023-01-20'),
(22, 12, 'Lunch', 'Grilled salmon salad', 450.5, 30.0, 25.5, 18.0, '2023-01-21'),
(23, 13, 'Dinner', 'Beef stir-fry with brown rice', 520.2, 35.0, 30.2, 20.5, '2023-01-22'),
(24, 14, 'Snack', 'Protein bar', 200.0, 15.5, 20.0, 10.2, '2023-01-23'),
(25, 15, 'Breakfast', 'Avocado and egg toast', 380.0, 18.0, 30.5, 22.0, '2023-01-24');

-- Inserting data into the Exercises table
INSERT INTO Exercises (ExerciseID, ExerciseName, BodyCategory, Description, DemonstrationVideoURL)
VALUES
(1, 'Bench Press', 'Upper Body', 'Lying on a bench and pressing a weight upwards from the chest.', 'https://example.com/bench_press_video'),
(2, 'Squat', 'Lower Body', 'Lowering the body into a seated position and then returning to a standing position with a weight on the shoulders.', 'https://example.com/squat_video'),
(3, 'Deadlift', 'Full Body', 'Lifting a loaded barbell from the ground to the hips, then lowering it back to the ground.', 'https://example.com/deadlift_video'),
(4, 'Bicep Curl', 'Arms', 'Lifting a weight with the hands towards the shoulders, contracting the biceps.', 'https://example.com/bicep_curl_video'),
(5, 'Hip Thrust', 'Lower Body', 'Lying on the back and thrusting the hips upwards with added resistance on the pelvis.', 'https://example.com/hip_thrust_video'),
(6, 'Lateral Dumbbell Raise', 'Shoulders', 'Lifting dumbbells to the sides with a slight bend in the elbows, targeting the lateral deltoids.', 'https://example.com/lateral_raise_video'),
(7, 'Upright Row', 'Shoulders', 'Lifting a barbell or dumbbells vertically to the collarbone with the elbows leading.', 'https://example.com/upright_row_video'),
(8, 'Bent Over Row', 'Upper Body', 'Bending at the hips and knees and pulling a weight towards the lower chest or abdomen.', 'https://example.com/bent_over_row_video'),
(9, 'Seated Dumbbell Press', 'Shoulders', 'Sitting and pressing dumbbells overhead, targeting the shoulder muscles.', 'https://example.com/seated_press_video'),
(10, 'Tricep Dip', 'Arms', 'Dipping the body down and back up using the triceps, often using parallel bars.', 'https://example.com/tricep_dip_video'),
(11, 'Romanian Deadlift', 'Lower Body', 'Hinging at the hips with a slight bend in the knees while holding a barbell, targeting the hamstrings.', 'https://example.com/romanian_deadlift_video'),
(12, 'Front Squat', 'Lower Body', 'Holding a barbell in front of the shoulders and squatting down, targeting the quadriceps.', 'https://example.com/front_squat_video'),
(13, 'Pull-up', 'Upper Body', 'Lifting the body upwards by pulling on an overhead bar, targeting the back and biceps.', 'https://example.com/pull_up_video'),
(14, 'Push-up', 'Upper Body', 'Lowering and raising the body using the arms, targeting the chest, shoulders, and triceps.', 'https://example.com/push_up_video'),
(15, 'Russian Twist', 'Core', 'Seated on the ground, twisting the torso from side to side with or without added resistance.', 'https://example.com/russian_twist_video'),
(16, 'Plank', 'Core', 'Holding a position similar to a push-up but with the body in a straight line, targeting the core muscles.', 'https://example.com/plank_video'),
(17, 'Lunges', 'Lower Body', 'Stepping forward or backward and lowering the body into a lunge position with added resistance.', 'https://example.com/lunges_video'),
(18, 'Lat Pulldown', 'Upper Body', 'Pulling a bar down towards the upper chest while seated, targeting the back and biceps.', 'https://example.com/lat_pulldown_video'),
(19, 'Hammer Curl', 'Arms', 'Curling dumbbells with a neutral grip (palms facing each other), targeting the biceps and forearms.', 'https://example.com/hammer_curl_video'),
(20, 'Calf Raise', 'Lower Body', 'Raising the heels to work the muscles in the back of the lower leg, often done with added resistance.', 'https://example.com/calf_raise_video');

-- Inserting data into the WorkoutPlan table
INSERT INTO WorkoutPlan (WorkoutPlanID, ExerciseID, ExerciseOrder)
VALUES
(1, 1, 1),  
(1, 7, 2),  
(1, 14, 3), 
(2, 11, 1), 
(2, 2, 2),  
(2, 3, 3), 
(3, 4, 1), 
(3, 8, 2),  
(3, 10, 3);
INSERT INTO WorkoutPlan (WorkoutPlanID, ExerciseID, ExerciseOrder)
VALUES
(4, 5, 1),  
(4, 13, 2),  
(4, 20, 3), 
(5, 19, 1),  
(5, 13, 2),  
(5, 18, 3), 
(6, 9, 1),  
(6, 7, 2),  
(6, 17, 3);

-- Inserting data into the UserWorkouts table
INSERT INTO UserWorkouts (UserWorkoutID, UserID, WorkoutPlanID, WorkoutDate)
VALUES
(1, 1, 1, '2023-11-01'),  -- John Williams did Workout Plan 1 on Nov 1, 2023
(2, 1, 2, '2023-11-02'),  -- John Williams did Workout Plan 2 on Nov 2, 2023
(3, 1, 3, '2023-11-03'),  -- John Williams did Workout Plan 3 on Nov 3, 2023
(4, 2, 2, '2023-11-01'),  -- Jane Smith did Workout Plan 2 on Nov 1, 2023
(5, 2, 3, '2023-11-02'),  -- Jane Smith did Workout Plan 3 on Nov 2, 2023
(6, 2, 1, '2023-11-03'),  -- Jane Smith did Workout Plan 1 on Nov 3, 2023
(7, 3, 3, '2023-11-01'),  
(8, 3, 1, '2023-11-02'),  
(9, 3, 2, '2023-11-03');
INSERT INTO UserWorkouts (UserWorkoutID, UserID, WorkoutPlanID, WorkoutDate)
VALUES
(10, 4, 3, '2023-11-01'),  
(11, 4, 6, '2023-11-02'),  
(12, 4, 2, '2023-11-03'),
(13, 5, 3, '2023-11-01'),  
(14, 5, 4, '2023-11-02'),  
(15, 5, 2, '2023-11-03'),
(16, 6, 3, '2023-11-01'),  
(17, 6, 1, '2023-11-02'),  
(18, 6, 6, '2023-11-03'),
(19, 7, 6, '2023-11-01'),  
(20, 7, 4, '2023-11-02'),  
(21, 7, 5, '2023-11-03');

-- Insert additional sample data into the DailyActivity table
INSERT INTO DailyActivity (ActivityID, UserID, ActivityDate, StepsCount, KilometersWalked, WorkoutDone)
VALUES
(1, 4, '2023-11-04', 12000, 10.0, TRUE),   
(2, 5, '2023-11-05', 9000, 7.0, FALSE),    
(3, 6, '2023-11-06', 15000, 12.0, TRUE),   
(4, 7, '2023-11-07', 8000, 5.0, FALSE),   
(5, 8, '2023-11-08', 11000, 9.0, TRUE),   
(6, 9, '2023-11-09', 7500, 6.0, FALSE),   
(7, 10, '2023-11-10', 10000, 8.0, TRUE);  


-- Inserting data into the HealthAssessment table
INSERT INTO HealthAssessment (AssessmentID, UserID, AssessmentDate, BloodPressure, CholesterolLevel, Notes)
VALUES
(1, 1, '2023-01-05', '120/80', 150.5, 'Normal blood pressure, cholesterol within healthy range.'),
(2, 2, '2023-01-05', '130/85', 165.0, 'Slightly elevated blood pressure, cholesterol level needs monitoring.'),
(3, 3, '2023-01-05', '118/78', 140.2, 'Optimal blood pressure, normal cholesterol levels.'),
(4, 1, '2023-01-12', '122/82', 155.8, 'Stable blood pressure, cholesterol levels showing improvement.'),
(5, 2, '2023-01-12', '128/84', 170.5, 'Blood pressure and cholesterol levels slightly elevated.'),
(6, 3, '2023-01-12', '115/75', 138.0, 'Excellent blood pressure and cholesterol levels.'),
(7, 1, '2023-01-19', '125/80', 160.2, 'Blood pressure slightly elevated, cholesterol within acceptable range.'),
(8, 2, '2023-01-19', '132/88', 175.0, 'Elevated blood pressure, cholesterol level needs attention.'),
(9, 3, '2023-01-19', '120/76', 145.5, 'Optimal blood pressure, normal cholesterol levels.');
