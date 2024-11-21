CREATE VIEW StudentGradesView AS 

# View 1
SELECT  
    hs.StudentID, 
    hs.CurrentHighSchool, 
    hs.GradYear, 
    hg.HighSchoolCourseName, 
    hg.HighSchoolGrade 
FROM  
    HighSchoolStudent hs 
JOIN  
    HighSchoolGrade hg ON hs.StudentID = hg.StudentID; 

# View 2
CREATE VIEW UniversityStudentProgramsView AS 
SELECT  
    us.StudentID, 
    us.UniversityName, 
    us.ProgramName, 
    p.degree, 
    p.tuition 
FROM  
    UniversityStudent us 
JOIN  
    Program p ON us.ProgramName = p.programName AND us.UniversityName = p.universityName; 