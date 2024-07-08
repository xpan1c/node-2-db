-- Insert departments
INSERT INTO departments (id, name) VALUES
(uuid_generate_v4(), 'Computer Science'),
(uuid_generate_v4(), 'Mathematics'),
(uuid_generate_v4(), 'Physics');

-- Insert instructors
INSERT INTO instructors (id, name, department_id) VALUES
(uuid_generate_v4(), 'Alice', (SELECT id FROM departments WHERE name='Computer Science')),
(uuid_generate_v4(), 'Bob', (SELECT id FROM departments WHERE name='Mathematics')),
(uuid_generate_v4(), 'Charlie', (SELECT id FROM departments WHERE name='Physics'));

-- Insert courses
INSERT INTO courses (id, name, instructor_id) VALUES
(uuid_generate_v4(), 'Algorithms', (SELECT id FROM instructors WHERE name='Alice')),
(uuid_generate_v4(), 'Calculus', (SELECT id FROM instructors WHERE name='Bob')),
(uuid_generate_v4(), 'Quantum Mechanics', (SELECT id FROM instructors WHERE name='Charlie'));

-- Insert students
INSERT INTO students (id, name) VALUES
(uuid_generate_v4(), 'John Doe'),
(uuid_generate_v4(), 'Jane Smith'),
(uuid_generate_v4(), 'Emily Davis');

-- Insert enrollments
INSERT INTO enrollments (id, student_id, course_id) VALUES
(uuid_generate_v4(), (SELECT id FROM students WHERE name='John Doe'), (SELECT id FROM courses WHERE name='Algorithms')),
(uuid_generate_v4(), (SELECT id FROM students WHERE name='Jane Smith'), (SELECT id FROM courses WHERE name='Calculus')),
(uuid_generate_v4(), (SELECT id FROM students WHERE name='Emily Davis'), (SELECT id FROM courses WHERE name='Quantum Mechanics'));
