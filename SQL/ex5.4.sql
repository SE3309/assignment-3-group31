## Query Number 4 finds the average grade that current students had while in High School. 

## We then find the average grade average of all students at a school to see what marks are needed to get into the university 

 

WITH AvgGradeOfStudents AS ( 

    SELECT us.UniversityName, 

           AVG(hg.HighSchoolGrade) AS AvgUniversityHighSchoolGrade 

    FROM UniversityStudent us 

    JOIN HighSchoolGrade hg ON us.StudentID = hg.StudentID 

    GROUP BY us.UniversityName 

) 

 

## Query number 5 takes the highSchool Entrance average from each university and calculates the difference between a highschool students average and the school. 

## the Query the returns a list of students and the university that had the smallest average differnece. 

## this shows students what school best fits their acedemic record. 

SELECT hs.StudentID, 

       ag.UniversityName, 

       MIN(ABS(sg.AvgStudentGrade - ag.AvgUniversityHighSchoolGrade)) AS ClosestAvgDifference 

FROM HighSchoolStudent hs 

JOIN ( 

    SELECT StudentID, AVG(HighSchoolGrade) AS AvgStudentGrade 

    FROM HighSchoolGrade 

    GROUP BY StudentID 

) sg ON hs.StudentID = sg.StudentID 

JOIN UniversityStudent us ON hs.StudentID = us.StudentID  -- Linking to UniversityStudent 

JOIN AvgGradeOfStudents ag ON ag.UniversityName = us.UniversityName 

GROUP BY hs.StudentID, ag.UniversityName 

ORDER BY hs.StudentID; 