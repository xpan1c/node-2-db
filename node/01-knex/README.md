# Introduction to Knex

## Why Knex?

Knex.js is a powerful SQL query builder for Node.js that supports multiple database systems including PostgreSQL, MySQL, and SQLite. It provides a flexible and intuitive API for building and executing SQL queries, making it easier to work with different databases. With Knex, you can manage database schemas using migrations, seed your database with initial data, and write queries using a syntax that is close to raw SQL, offering both convenience and control.

### Features of Knex

- **Multiple Database Support:** Knex supports a variety of databases, allowing you to switch between different database systems with minimal changes to your code.
- **Migrations:** Easily manage your database schema changes with a powerful migration tool.
- **Seeds:** Populate your database with initial data using seeds.
- **Close to SQL Syntax:** Write queries that are very close to raw SQL, providing clarity and familiarity for those who know SQL.

## Setting Up the Database with Knex

### 1. Create Tables (Schema) with Migrations

Knex provides a migration tool to manage your database schema. You will define the structure of your tables in migration files. Here is the schema you will create for this exercise:

- **students:** Contains information about students.
  - `student_id`: Primary key, auto-incremented.
  - `first_name`: First name of the student.
  - `last_name`: Last name of the student.

- **courses:** Contains information about courses.
  - `course_id`: Primary key, auto-incremented.
  - `title`: Title of the course.
  - `instructor`: Instructor of the course.

- **enrollments:** Join table that records which students are enrolled in which courses.
  - `student_id`: References `student_id` in `students` table.
  - `course_id`: References `course_id` in `courses` table.

Create a migration file and define this schema.

### 2. Seed the Database

Seeding is a way to populate your database with initial data. You will create a seed file to insert sample data into your tables. Here is the sample data:

- **students:**
  - Alice Smith
  - Bob Johnson

- **courses:**
  - Mathematics (Dr. Brown)
  - History (Prof. Davis)

- **enrollments:**
  - Alice is enrolled in Mathematics and History.
  - Bob is enrolled in Mathematics.

Create a seed file and insert this data into your tables.

### 3. Query the Database

Once your database is set up and seeded with data, you can perform various queries. Here are some example queries you might run:

- Retrieve all students.
- Retrieve all courses.
- Retrieve all enrollments.
- Get students enrolled in each course.

Use Knex to perform these queries and log the results.

## Summary

Knex simplifies working with SQL databases in a Node.js environment by providing a consistent API for building queries, managing schemas, and seeding data. By using Knex, you can leverage the power of SQL while enjoying the flexibility and control offered by a query builder that supports multiple database systems.

Start by setting up your database schema with migrations, seed it with initial data, and then run some queries to see the power of Knex in action.


## Derivable

Create a folder called knex-intro, initiate a new Node.js project and install the required dependencies. Don't forget to use prettier, eslint and typescript. Combine it with docker-compose to setup the database. For this exercise you will use postgres as your database.