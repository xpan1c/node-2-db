-- Retrieve all courses with their students
SELECT courses.name AS course_name, students.name AS student_name
FROM courses
JOIN enrollments ON courses.id = enrollments.course_id
JOIN students ON enrollments.student_id = students.id;

-- Retrieve all courses with their instructor
SELECT courses.name AS course_name, instructors.name AS instructor_name
FROM courses
JOIN instructors ON courses.instructor_id = instructors.id;

-- Retrieve all departments with their instructors
SELECT departments.name AS department_name, instructors.name AS instructor_name
FROM departments
JOIN instructors ON departments.id = instructors.department_id;

-- Retrieve all departments with their courses
SELECT departments.name AS department_name, courses.name AS course_name
FROM departments
JOIN instructors ON departments.id = instructors.department_id
JOIN courses ON instructors.id = courses.instructor_id;
