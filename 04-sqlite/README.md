# 02 - SQLite

## Introduction

Welcome to the SQLite module of the Database Sprint! In this module, you will learn how to set up an SQLite database and perform basic SQL operations such as creating tables, inserting data, and querying the database.

## Learning Objectives

By the end of this module, you will be able to:

- Set up an SQLite database.
- Create tables with relationships.
- Insert data into tables.
- Query the database to retrieve data.

## Prerequisites

- Completion of the 01-docker module.
- Basic understanding of SQL.

## Steps

### 1. Setup SQLite

SQLite is a serverless, self-contained, and zero-configuration database engine. You don't need to install a server to use it. 

Ensure you have SQLite installed on your machine. You can download it from the [official SQLite website](https://www.sqlite.org/download.html).

### 2. Create the SQLite Database

To create an SQLite database, you can use the SQLite command-line tool. Create a new database file by running the following command in your terminal or command prompt:

```bash
sqlite3 academydb.sqlite
```

### 3. Create Tables

We will create a simple database schema with three tables: students, courses, and enrollments.

- *students*: Contains information about students.
- *courses*: Contains information about courses.
- *enrollments*: A join table that records which students are enrolled in which courses.

Run the following SQL commands to create the tables:

```sql
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    instructor TEXT NOT NULL
);

CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
```

You can execute these commands in the SQLite command-line tool by pasting them after connecting to your database.

### 4. Insert Data

Insert sample data into the tables using the following SQL commands:

```sql
INSERT INTO students (first_name, last_name) VALUES ('Alice', 'Smith');
INSERT INTO students (first_name, last_name) VALUES ('Bob', 'Johnson');

INSERT INTO courses (title, instructor) VALUES ('Mathematics', 'Dr. Brown');
INSERT INTO courses (title, instructor) VALUES ('History', 'Prof. Davis');

INSERT INTO enrollments (student_id, course_id) VALUES (1, 1);
INSERT INTO enrollments (student_id, course_id) VALUES (1, 2);
INSERT INTO enrollments (student_id, course_id) VALUES (2, 1);
```

### 5. Query the Database

You can query the database to retrieve data using SQL SELECT statements. For example, to retrieve all students and the courses they are enrolled in, you can run:


```sql
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
```

**Get students enrolled in each course:**

```sql
SELECT 
  students.first_name AS student_name,
  courses.title AS course_name
FROM 
  enrollments
JOIN 
  students ON enrollments.student_id = students.student_id
JOIN 
  courses ON enrollments.course_id = courses.course_id;
```

### 6. Exit SQLite

To exit the SQLite command-line tool, type `.exit` and press Enter.

## Summary

In this module, you learned how to set up an SQLite database, create tables with relationships, insert data into tables, and query the database to retrieve data. SQLite is a lightweight and easy-to-use database engine that is suitable for small-scale applications and prototyping. 