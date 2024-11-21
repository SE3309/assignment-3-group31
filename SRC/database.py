from faker import Faker
import mysql.connector
import random


# Initialize Faker
fake = Faker()


# Database connection configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'mypw',  # Replace with your MySQL root password
    'database': 'mydb'  # Replace with your database name
}


# Establish database connection
try:
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()


    # Insert sample data for University table
    universities = [
        ('Harvard University', 'Cambridge, MA',4123),
        ('Stanford University', 'Stanford, CA',1313),
        ('University of Cambridge', 'Cambridge, UK',65644),
        ('Massachusetts Institute of Technology', 'Cambridge, MA',4000),
        ('University of Oxford', 'Oxford, UK',2000)
    ]
    cursor.executemany("INSERT INTO University (universityName, city,numOfStudents) VALUES (%s, %s,%s)", universities)
    # Insert sample data for Program table
    programs = [
        ('Computer Science', "Harvard University",'compsci',4,100000),
        ('Mechanical Engineering', "Stanford University",'Hr',4,5000),
        ('Business Administration', "University of Cambridge","hr",4,4000),
        ('Medicine', "Massachusetts Institute of Technology",'Dermatology',4,3000),
        ('Law',"University of Oxford" ,"MD",3,2000)
    ]
    cursor.executemany("INSERT INTO Program (programName, universityName,degree,programLength,tuition ) VALUES (%s, %s,%s,%s,%s)", programs)


 
    valid_programs = [
    ("Computer Science", "Harvard University"),
    ("Mechanical Engineering", "Stanford University"),
    ("Business Administration", "University of Cambridge"),
    ("Medicine", "Massachusetts Institute of Technology"),
    ("Law", "University of Oxford")
]
    student_experiences = []
    for program, university in valid_programs:
        student_experiences.append((
            program,
            university,
            random.randint(1, 5),  # Career Rating
            random.randint(1, 5),  # Facilities Rating
            random.randint(1, 5),  # Learning Environment Rating
            random.randint(1, 5),  # Scholarship Rating
            random.randint(1, 5)   # Student Satisfaction Rating
    ))
    cursor.executemany("""
        INSERT INTO StudentExperience (programName, universityName, careerRating, facilitiesRating, learningEnviroRating,scholarshipsRating, studentSatisfactionRating)
        VALUES (%s, %s, %s, %s, %s, %s,%s)
    """, student_experiences)
   
    # Insert sample data for Course table
    courses = [
        ('Programming Fundamentals', 'CS101', 1,"Computer Science","2"),
        ('Data Structures', 'CS102', 1,"Mechanical Engineering","2"),
        ('Engineering Mechanics', 'ME101', 2,"Mechanical Engineering","3"),
        ('Microeconomics', 'BA101', 3,"Business Administration","1"),
        ('Anatomy Basics', 'MD101', 4,"Business Administration","1")
    ]
    cursor.executemany("INSERT INTO Course (courseName,courseCode, credits, programName,description) VALUES (%s, %s, %s,%s,%s)", courses)
   
    # Insert sample data for Student table
    students = []
    count = 0
    for _ in range(1000):
        count=count+1
        students.append((
    count,
    fake.first_name(),
    fake.last_name(),
    fake.email(),
    random.randint(1, 5)  # Random program_id
))
    cursor.executemany("INSERT INTO Student (StudentID,FirstName, LastName, Address, Biography) VALUES (%s, %s, %s, %s,%s)", students)
   


    # Generate sample data for HighSchoolStudent table
    highschool_students = []
    student_ids = list(range(1, 1001))
    for student_id in student_ids:
        highschool_students.append((
            student_id,
            fake.company(),  # Current High School
            random.randint(2024, 2026)  # Graduation Year
        ))
    cursor.executemany("""
        INSERT INTO HighSchoolStudent (StudentID, CurrentHighSchool, GradYear)
        VALUES (%s, %s, %s)
    """, highschool_students)


    # Generate sample data for HighSchoolGrade table
    highschool_grades = []
    courses = ["Math", "Physics", "Chemistry", "English", "Biology"]
    for student_id in student_ids:
        for course in courses:
            highschool_grades.append((
                student_id,
                course,
                random.randint(60, 100)  # Grade
            ))
    cursor.executemany("""
        INSERT INTO HighSchoolGrade (StudentID, HighSchoolCourseName, HighSchoolGrade)
        VALUES (%s, %s, %s)
    """, highschool_grades)


    # Insert sample data for Enrollment table
    experience_weightings = []
    factors = ["CareerRating", "FacilitiesRating", "LearningEnviroRating", "ScholarshipRating","StudentSatisfactionRating"]
    for student_id in student_ids:
        for factor in factors:
            experience_weightings.append((
                student_id,
                factor,
                random.randint(1, 5)  # Rating
            ))
    cursor.executemany("""
        INSERT INTO StudentExperienceWeightings (StudentID, StudentExperienceFactor, Rating)
        VALUES (%s, %s, %s)
    """, experience_weightings)


    # Generate sample data for UniversityStudent table
    university_students = []
    for student_id in random.sample(student_ids, 800):
        (program,university)= random.choice(valid_programs)
        university_students.append((
            student_id,
            university,
            program
        ))
    cursor.executemany("""
        INSERT INTO UniversityStudent (StudentID, UniversityName, ProgramName)
        VALUES (%s, %s, %s)
    """, university_students)


    # Commit all changes to the database
    connection.commit()
    print("Sample data inserted successfully.")


   


except mysql.connector.Error as err:
    print(f"Error: {err}")
finally:
    # Close the database connection
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("Database connection closed.")
