-- 1
-- In your database, create a stored procedure and demonstrate how it runs
-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE GetUserInformation(IN p_UserID INT)
BEGIN
    SELECT Name, Age, FitnessGoals
    FROM Users
    WHERE UserID = p_UserID;
END //

DELIMITER ;

-- Call the stored procedure for a specific user (e.g., UserID = 1)
CALL GetUserInformation(5);

-- 2
-- Create the trigger
DELIMITER //

CREATE TRIGGER UpdateLastModified
BEFORE UPDATE ON Users
FOR EACH ROW
SET NEW.LastModified = CURRENT_TIMESTAMP;

DELIMITER ;

-- Update a user's information
UPDATE Users SET FitnessGoals = 'Weight loss and increased energy' WHERE UserID = 6;

-- Check the updated data
SELECT * FROM Users;


-- 3 
-- Create a view for health and fitness overview
CREATE VIEW HealthAndFitnessOverview AS
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
    np.MealNumber,
    np.MealDescription,
    np.Calories,
    np.Proteins,
    np.Carbohydrates,
    np.Fats,
    uw.WorkoutDate,
    da.ActivityDate,
    da.StepsCount,
    da.KilometersWalked
FROM Users u
LEFT JOIN NutritionPlans np ON u.UserID = np.UserID
LEFT JOIN UserWorkouts uw ON u.UserID = uw.UserID
LEFT JOIN DailyActivity da ON u.UserID = da.UserID;

-- Query using the HealthAndFitnessOverview view
SELECT *
FROM HealthAndFitnessOverview
WHERE Age > 25 AND CurrentWeight > 150;


-- 5
-- Example query with GROUP BY and HAVING
SELECT
    u.UserID,
    u.Name,
    u.FitnessGoals,
    AVG(da.StepsCount) AS AverageSteps
FROM Users u
JOIN DailyActivity da ON u.UserID = da.UserID
WHERE u.FitnessGoals = 'Weight loss and cardiovascular fitness'
GROUP BY u.UserID, u.Name, u.FitnessGoals
HAVING AVG(da.StepsCount) > 7000;
