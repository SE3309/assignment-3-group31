## For Query Number 6 we look to find the top 3 Universities by numbers of students 

SELECT UniversityName, NumberOfStudents 

FROM ( 

    SELECT UniversityName, COUNT(*) AS NumberOfStudents 

    FROM UniversityStudent 

    GROUP BY UniversityName 

    ORDER BY NumberOfStudents DESC 

    LIMIT 3 

) AS TopUniversities; 