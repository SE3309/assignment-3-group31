INSERT INTO University (universityName, city, numOfStudents) 
VALUES ('University of Toronto', 'Toronto', 60000); 

INSERT INTO University SET 
universityName = 'McGill University', 
city = 'Montreal', 
numOfStudents = 40000; 

INSERT INTO University (universityName, city, numOfStudents) 
SELECT 'University of Waterloo', 'Waterloo', 36000 
WHERE NOT EXISTS (SELECT 1 FROM University WHERE universityName = 'University of Waterloo'); 