-- University Table
CREATE TABLE University (
    universityName VARCHAR(50) PRIMARY KEY,
    city VARCHAR(50),
    numOfStudents INT
);

-- Program Table
CREATE TABLE Program (
    programName VARCHAR(50),
    universityName VARCHAR(50),
    degree VARCHAR(50),
    programLength INT,
    tuition DECIMAL(10, 2),
    PRIMARY KEY (programName, universityName),
    FOREIGN KEY (universityName) REFERENCES University(universityName)
);

-- Course Table
CREATE TABLE Course (
    courseCode VARCHAR(25),
    programName VARCHAR(50),
    courseName VARCHAR(50),
    credits INT,
    description TEXT,
    PRIMARY KEY (courseCode, programName),
    FOREIGN KEY (programName) REFERENCES Program(programName)
);

-- StudentExperience Table
CREATE TABLE StudentExperience (
    programName VARCHAR(50),
    universityName VARCHAR(50),
    careerRating INT,
    facilitiesRating INT,
    learningEnviroRating INT,
    scholarshipsRating INT,
    studentSatisfactionRating INT,
    PRIMARY KEY (programName, universityName),
    FOREIGN KEY (programName, universityName) REFERENCES Program(programName, universityName)
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Biography VARCHAR(50) NOT NULL
);

-- HighSchoolStudent Table
CREATE TABLE HighSchoolStudent (
    StudentID INT PRIMARY KEY,
    CurrentHighSchool VARCHAR(50) NOT NULL,
    GradYear VARCHAR(50) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- UniversityStudent Table
CREATE TABLE UniversityStudent (
    StudentID INT PRIMARY KEY,
    UniversityName VARCHAR(100),
    ProgramName VARCHAR(100),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ProgramName, UniversityName) REFERENCES Program(ProgramName, UniversityName)
);

-- HighSchoolGrade Table
CREATE TABLE HighSchoolGrade (
    StudentID INT,
    HighSchoolCourseName VARCHAR(100),
    HighSchoolGrade INT NOT NULL,
    PRIMARY KEY (StudentID, HighSchoolCourseName),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- StudentExperienceWeightings Table
CREATE TABLE StudentExperienceWeightings (
    StudentID INT,
    StudentExperienceFactor ENUM('CareerRating', 'FacilitiesRating', 'LearningEnviroRating', 'ScholarshipRating', 'StudentSatisfactionRating') NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    PRIMARY KEY (StudentID, StudentExperienceFactor),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
