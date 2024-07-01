# 02 - MySQL

## Introduction

Welcome to the MySQL module of the Database Sprint! In this module, you will learn how to set up a MySQL database using Docker Compose, and perform basic SQL operations such as creating tables, inserting data, and querying the database.

## Learning Objectives

By the end of this module, you will be able to:

- Set up a MySQL database using Docker Compose.
- Connect to the MySQL database.
- Create tables with relationships.
- Insert data into tables.
- Query the database to retrieve data.

## Prerequisites

- Completion of the 01-docker module.
- Basic understanding of SQL.

## Steps

### 1. Setup Docker Compose

We will use Docker Compose to set up a MySQL database. Ensure you have Docker and Docker Compose installed on your machine.

#### Docker Compose File

Create a `docker-compose.yml` file with the following content:

```yaml
version: '3.8'

services:
  db:
    image: mysql:8.0
    environment:
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
    ports:
      - "3306:3306" 
    volumes:
      - db-data:/var/lib/mysql

volumes:
  db-data:
```

#### Environment Variables

Create a .env file with the following content:

```plaintext
MYSQL_USER=devuser
MYSQL_PASSWORD=devpassword
MYSQL_ROOT_PASSWORD=rootpassword
MYSQL_DATABASE=academydb
```

### 2. Start the MySQL Database

To start the MySQL database, navigate to the directory containing the `docker-compose.yml` and `.env` files and run:

```bash
docker-compose up -d
```

### 3. Connect to the MySQL Database

You can connect to the MySQL database using any MySQL client, such as MySQL Workbench, HeidiSQL, or DBeaver. For simplicity, we will use the MySQL command-line tool. Later on we will use DBeaver.

To connect using `mysql`, run:

```bash
docker exec -it <container_id> mysql -u devuser -p academydb
```

Replace `<container_id>` with the container ID of the MySQL database. You can find the container ID by running docker ps.

### 4. Create Tables

We will create a simple database schema with three tables: students, courses, and enrollments.

- *students*: Contains information about students.
- *courses*: Contains information about courses.
- *enrollments*: A join table that records which students are enrolled in which courses.

Create the tables using the following SQL commands:

```sql
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    instructor VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
```

### 5. Insert Data

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

### 6. Query the Database

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

## Summary

In this module, you learned how to set up a MySQL database using Docker Compose, create tables with relationships, insert data into tables, and query the database to retrieve data. You can now practice writing SQL queries and performing operations on a MySQL database.
