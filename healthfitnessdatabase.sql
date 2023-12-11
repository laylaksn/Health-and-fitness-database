CREATE DATABASE IF NOT EXISTS health_and_fitness_tracker;

USE health_and_fitness_tracker;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(255),
    FitnessGoals VARCHAR(255),
    CurrentWeight DECIMAL(5,2),
    TargetWeight DECIMAL(5,2)
);

ALTER TABLE Users
ADD COLUMN Height DECIMAL(5,2);
-- Alter the Users table to add the LastModified column
ALTER TABLE Users
ADD COLUMN LastModified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

CREATE TABLE NutritionPlans (
    PlanID INT PRIMARY KEY,
    UserID INT,
    MealNumber VARCHAR(20),
    MealDescription VARCHAR(255),
    Calories DECIMAL(6,2),
    Proteins DECIMAL(6,2),
    Carbohydrates DECIMAL(6,2),
    Fats DECIMAL(6,2),
    Date DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Exercises (
    ExerciseID INT PRIMARY KEY,
    ExerciseName VARCHAR(255),
    BodyCategory VARCHAR(50),
    Description TEXT,
    DemonstrationVideoURL VARCHAR(255)
);

CREATE TABLE WorkoutPlan (
    WorkoutPlanID INT,
    ExerciseID INT,
    ExerciseOrder INT,
    PRIMARY KEY (WorkoutPlanID, ExerciseID),
    FOREIGN KEY (ExerciseID) REFERENCES Exercises(ExerciseID)
);

CREATE TABLE UserWorkouts (
    UserWorkoutID INT PRIMARY KEY,
    UserID INT,
    WorkoutPlanID INT,
    WorkoutDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (WorkoutPlanID) REFERENCES WorkoutPlan(WorkoutPlanID)
);

CREATE TABLE DailyActivity (
    ActivityID INT PRIMARY KEY,
    UserID INT,
    ActivityDate DATE,
    StepsCount INT,
    KilometersWalked DECIMAL(6, 2),
    WorkoutDone BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE HealthAssessment (
    AssessmentID INT PRIMARY KEY,
    UserID INT,
    AssessmentDate DATE,
    BloodPressure VARCHAR(15),
    CholesterolLevel DECIMAL(5, 2),
    Notes TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


