# SQL Derivable

In this exercise, you will have to design a database following some instructions, run PostgreSQL version `16.3` using Docker Compose, seed the database with initial data, and write SQL queries to retrieve data. There will be a github action to help you check your queries and the database structure and relationships.

## Instructions

The database consists of the following tables:

- `students`
- `courses`
- `enrollments`
- `instructors`
- `departments`

### Relationships

- Each student can enroll in multiple courses.
- Each course can have multiple students.
- Each course has one instructor.
- Each instructor belongs to one department.

### Design considerations

1. The database must follow `snake_case` convention for table and column names.
2. The database must have a primary key for each table, it must be called `id`. The primary key must be a valid UUID. There are many pros and cons for using UUID versus a SERIAL INT or BIGSERIAL INT. The purpose of using UUIDs in this exercise is to familiarize yourself with them. Here more information about this topic. [1](https://www.baeldung.com/uuid-vs-sequential-id-as-primary-key), [2](https://medium.com/@selieshjksofficial/leveraging-uuids-as-primary-keys-in-your-applications-85efcd0163bb).
3. The database must have a name for each table. The name must be a string with a maximum of 255 characters. It must be called `name`.
4. The relationships must be enforced using foreign keys. The naming convention for foreign keys is `table_name_id`. For example, the foreign key for the `students` table is `student_id`.

### Derivables

1. Create a database diagram using [diagrams.net](https://app.diagrams.net/). The diagram must include the tables and relationships described above. Save the diagram as an image file called `erd.png` and include it in this folder.
2. Create a `docker-compose.yml` file to run PostgreSQL. 
3. The database must be called `it_academy`.
4. The database must be created with the following environment variables:
   - `POSTGRES_USER`: `it_academy`
   - `POSTGRES_PASSWORD`: `it_academy`
   - `POSTGRES_DB`: `it_academy`
5. Create a `01-schema.sql` file to create the database schema. It must include the tables and relationships described above.
6. Create a `02-seed.sql` file to seed the database with initial data. The data must include at least three records for each table.
7. Create a `03-queries.sql` file to write the following queries:
   - Retrieve all students.
   - Retrieve all courses.
   - Retrieve all enrollments.
   - Retrieve all instructors.
   - Retrieve all departments.
   - Retrieve all students enrolled in a specific course.
   - Retrieve all courses taught by a specific instructor.
   - Retrieve all instructors in a specific department.
8. Create a `04-relationships.sql` file to write the following queries:
   - Retrieve all courses with their students.
   - Retrieve all courses with their instructor.
   - Retrieve all departments with their instructors.
   - Retrieve all departments with their courses.

### Submission

Create a repository on GitHub and push your code. Submit the repository link on moodle. Notify your mentor.