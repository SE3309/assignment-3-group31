WITH WeightedScores AS ( 

    SELECT 

        se.programName, 

        se.universityName, 

        sew.StudentID, 

        SUM( 

            CASE sew.StudentExperienceFactor 

                WHEN 'careerRating' THEN sew.Rating * se.careerRating 

                WHEN 'facilitiesRating' THEN sew.Rating * se.facilitiesRating 

                WHEN 'learningEnviroRating' THEN sew.Rating * se.learningEnviroRating 

                WHEN 'scholarshipsRating' THEN sew.Rating * se.scholarshipsRating 

                WHEN 'studentSatisfactionRating' THEN sew.Rating * se.studentSatisfactionRating 

                ELSE 0 

            END 

        ) AS WeightedScore 

    FROM 

        StudentExperienceWeightings sew 

    JOIN 

        StudentExperience se 

        ON sew.StudentExperienceFactor IN ( 

            'careerRating', 'facilitiesRating', 'learningEnviroRating', 'scholarshipsRating', 'studentSatisfactionRating' 

        ) 

    GROUP BY 

        sew.StudentID, se.programName, se.universityName 

), 

##Query Number 2: We rank the scores so that we can select the university + program that best matches a students preferences 

## By then selecting the first row we find the best match for that student 

RankedScores AS ( 

    SELECT 

        *, 

        ROW_NUMBER() OVER ( 

            PARTITION BY StudentID 

            ORDER BY WeightedScore DESC 

        ) AS RowNum 

    FROM 

        WeightedScores 

) 

SELECT 

    StudentID, 

    programName, 

    universityName, 

    WeightedScore AS MaxScore 

FROM 

    RankedScores 

WHERE 

    RowNum = 1; 