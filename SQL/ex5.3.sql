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

) 

##Query Number 3 

###We want to display the university-program matches for each student where their score is above average 

##This shows a larger variety of potential matches for their dream school 

SELECT ws.* 

FROM WeightedScores ws 

JOIN ( 

    SELECT programName, universityName, AVG(WeightedScore) AS avgWeightedScore 

    FROM WeightedScores 

    GROUP BY programName, universityName 

) AS avg_scores 

    ON ws.programName = avg_scores.programName 

    AND ws.universityName = avg_scores.universityName 

WHERE ws.WeightedScore > avg_scores.avgWeightedScore; 