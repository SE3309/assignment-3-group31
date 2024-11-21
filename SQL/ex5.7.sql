SELECT  

    s.StudentID,  

    s.firstName,  

    s.lastName,  

    us.UniversityName,  

    us.ProgramName 

FROM  

    Student s 

JOIN  

    UniversityStudent us ON s.StudentID = us.StudentID 

WHERE EXISTS ( 

    SELECT 1 

    FROM HighSchoolGrade hg 

    WHERE hg.StudentID = s.StudentID 

    GROUP BY us.UniversityName, us.ProgramName 

    HAVING AVG(hg.HighSchoolGrade) > 90 

); 