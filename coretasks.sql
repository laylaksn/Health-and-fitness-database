-- Tasks ------------------

-- 3
-- Create a view that combines information from Users, HealthAssessment, and DailyActivity
CREATE VIEW HealthOverview AS
SELECT
    U.UserID,
    U.Name,
    U.Age,
    U.Gender,
    U.ContactInformation,
    U.FitnessGoals,
    U.CurrentWeight,
    U.TargetWeight,
    U.Height,
    U.LastModified,
    HA.AssessmentID,
    HA.AssessmentDate,
    HA.BloodPressure,
    HA.CholesterolLevel,
    HA.Notes,
    DA.ActivityID,
    DA.ActivityDate,
    DA.StepsCount,
    DA.KilometersWalked
FROM Users U
LEFT JOIN HealthAssessment HA ON U.UserID = HA.UserID
LEFT JOIN DailyActivity DA ON U.UserID = DA.UserID;

-- Query the HealthOverview view
SELECT * FROM HealthOverview;

-- Create a view for user workouts and daily activity overview
CREATE VIEW UserWorkoutsAndDailyActivity AS
SELECT
    u.UserID,
    u.Name,
    u.Age,
    u.Gender,
    u.ContactInformation,
    u.FitnessGoals,
    u.CurrentWeight,
    u.TargetWeight,
    u.Height,
    u.LastModified,
    uw.WorkoutDate,
    da.ActivityDate,
    da.StepsCount,
    da.KilometersWalked
FROM Users u
LEFT JOIN UserWorkouts uw ON u.UserID = uw.UserID
LEFT JOIN DailyActivity da ON u.UserID = da.UserID;

-- Query view
SELECT * FROM UserWorkoutsAndDailyActivity;

-- 4
-- Create a stored function to calculate BMI
DELIMITER //
CREATE FUNCTION CalculateBMI(weight DECIMAL(5,2), height DECIMAL(5,2))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE bmi DECIMAL(5,2);
    
    -- Convert weight from pounds to kilograms
    SET weight = weight * 0.453592;

    -- Convert height from centimeters to meters
    SET height = height / 100.0;
    
    SET bmi = weight / (height * height);
    
    RETURN bmi;
END //
DELIMITER ;

-- Example using the CalculateBMI functionusers
SELECT Name, CalculateBMI(CurrentWeight, Height) AS BMI
FROM Users;

-- 5
-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis 
-- Find users with BMI greater than 25
SELECT UserID, Name, CalculateBMI(CurrentWeight, Height) AS BMI
FROM Users
WHERE CalculateBMI(CurrentWeight, Height) > 25;
