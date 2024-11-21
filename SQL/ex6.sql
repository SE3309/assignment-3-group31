#Modification 1
UPDATE Program 
SET tuition = tuition * 1.10 
WHERE universityName IN ( 
    SELECT universityName 
    FROM University 
    WHERE city = 'Cambridge, MA' 
); 

# Modification 2
DELETE hs, hg
FROM highSchoolStudent hs, highSchoolGrade hg
WHERE hs.studentID = hg.studentID
AND hs.currentHighSchool = 'Martin-Day'
AND (hg.highSchoolCourseName = 'Math' AND hg.HighSchoolGrade <= 65);

# Modification 3
SET @max_id = (SELECT MAX(StudentID) FROM Student);
INSERT INTO Student (StudentID, FirstName, LastName, Address, Biography)
VALUES (@max_id + 1, 'Jane', 'Doe', '123 Elite Street', 'Aspiring student at Elite High School');

INSERT INTO HighSchoolStudent (StudentID, CurrentHighSchool, GradYear)
VALUES (
    (SELECT MAX(StudentID) FROM Student),  -- Use the most recently added StudentID
    'Elite High School',
    2026
);

INSERT INTO HighSchoolGrade (StudentID, HighSchoolCourseName, HighSchoolGrade)
VALUES
    ((SELECT MAX(StudentID) FROM Student), 'Math', 85),
    ((SELECT MAX(StudentID) FROM Student), 'Physics', 78),
    ((SELECT MAX(StudentID) FROM Student), 'Chemistry', 92),
    ((SELECT MAX(StudentID) FROM Student), 'English', 88),
    ((SELECT MAX(StudentID) FROM Student), 'Biology', 80);
