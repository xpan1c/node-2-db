# Introduction to Prisma

## Why Prisma?

Prisma is a modern database toolkit for Node.js and TypeScript that makes working with databases easier and more intuitive. It provides an ORM (Object-Relational Mapping) layer that helps you interact with your database in a type-safe and declarative way. With Prisma, you can define your database schema using a simple schema definition language, manage migrations, seed your database with initial data, and perform queries with an auto-generated, type-safe query builder.

### Features of Prisma

- **Type Safety:** Prisma generates TypeScript types from your database schema, ensuring type safety in your queries.
- **Migrations:** Easily manage your database schema changes with a powerful migration tool.
- **Seeds:** Populate your database with initial data using seeds.
- **Intuitive API:** Prisma provides a clear and declarative API for database operations, improving developer productivity.

## Setting Up the Database with Prisma

### 1. Define the Schema

Prisma uses a schema file to define your database structure. Here is the schema you will create for this exercise:

- **Student:** Contains information about students.
  - `id`: Primary key, auto-incremented.
  - `firstName`: First name of the student.
  - `lastName`: Last name of the student.

- **Course:** Contains information about courses.
  - `id`: Primary key, auto-incremented.
  - `title`: Title of the course.
  - `instructor`: Instructor of the course.

- **Enrollment:** Join table that records which students are enrolled in which courses.
  - `studentId`: References `id` in `Student` model.
  - `courseId`: References `id` in `Course` model.

Define this schema in your `schema.prisma` file.

### 2. Migrate the Database

Prisma's migration tool helps you apply your schema changes to the database. Create and apply migrations to set up your database tables according to the schema defined.

### 3. Seed the Database

Seeding is a way to populate your database with initial data. You will create a seed script to insert sample data into your tables. Here is the sample data:

- **Student:**
  - Alice Smith
  - Bob Johnson

- **Course:**
  - Mathematics (Dr. Brown)
  - History (Prof. Davis)

- **Enrollment:**
  - Alice is enrolled in Mathematics and History.
  - Bob is enrolled in Mathematics.

Create a seed script to insert this data into your tables.

### 4. Query the Database

Once your database is set up and seeded with data, you can perform various queries using Prisma's auto-generated client. Here are some example queries you might run:

- Retrieve all students.
- Retrieve all courses.
- Retrieve all enrollments.
- Get students enrolled in each course.

Use Prisma's query API to perform these queries and log the results.

## Summary

Prisma streamlines working with databases in a Node.js and TypeScript environment by providing a modern ORM with type safety, an intuitive API, and powerful tools for managing schemas and seeding data. By using Prisma, you can leverage the power of a type-safe ORM while enjoying the simplicity and productivity it brings.

Start by defining your database schema, migrate the database, seed it with initial data, and then run some queries to see the power of Prisma in action.

## Derivable

Create a folder called prisma-intro, initiate a new Node.js project and install the required dependencies. Don't forget to use prettier, eslint and typescript. Combine it with docker-compose to setup the database. For this exercise you will use mysql as your database.