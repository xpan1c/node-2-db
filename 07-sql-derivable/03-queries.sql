-- Retrieve all students
SELECT * FROM students;

-- Retrieve all courses
SELECT * FROM courses;

-- Retrieve all enrollments
SELECT * FROM enrollments;

-- Retrieve all instructors
SELECT * FROM instructors;

-- Retrieve all departments
SELECT * FROM departments;

-- Retrieve all students enrolled in a specific course
SELECT students.* FROM students
JOIN enrollments ON students.id = enrollments.student_id
WHERE enrollments.course_id = (SELECT id FROM courses WHERE name = 'Algorithms');

-- Retrieve all courses taught by a specific instructor
SELECT courses.* FROM courses
WHERE instructor_id = (SELECT id FROM instructors WHERE name = 'Alice');

-- Retrieve all instructors in a specific department
SELECT instructors.* FROM instructors
WHERE department_id = (SELECT id FROM departments WHERE name = 'Computer Science');
