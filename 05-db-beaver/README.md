# Recap and Introduction to DBeaver

## Recap

Congratulations on completing the PostgreSQL, MySQL, and SQLite modules! By now, you should have a solid understanding of how to set up and interact with these databases using their respective command-line interfaces (CLI). You've seen the similarities between these SQL databases, such as creating tables, inserting data, and querying data using SQL commands. This experience has highlighted the importance of SQL as a universal language for managing and manipulating relational databases, regardless of the specific database system being used.

## Introduction to DBeaver Community

While working with the CLI is essential for building foundational knowledge, using a graphical database management tool can significantly improve your productivity and database management capabilities. DBeaver Community is a free and open-source database tool that supports multiple database systems, including PostgreSQL, MySQL, and SQLite. It provides a user-friendly interface for connecting to databases, running SQL queries, visualizing data, and managing database objects. In this next section, you will learn how to download, install, and configure DBeaver Community to connect to your databases and streamline your database management tasks.

### Download and Install DBeaver Community

1. Visit the [DBeaver Community website](https://dbeaver.io/download/) to download the installer for your operating system.
2. Follow the installation instructions for your specific OS.

### Connect to Your Databases

Once DBeaver is installed, follow these steps to connect to your PostgreSQL, MySQL, and SQLite databases:

1. **Open DBeaver.**
2. **Create a New Connection:**
    - Click on the "New Database Connection" button (a plug icon with a plus sign).
    - Choose the database type (PostgreSQL, MySQL, or SQLite) and click "Next".
3. **Configure Connection Settings:**
    - **PostgreSQL:**
        - Host: `localhost`
        - Port: `5433` (as specified in the Docker setup)
        - Database: `academydb`
        - User: `devuser`
        - Password: `devpassword`
    - **MySQL:**
        - Host: `localhost`
        - Port: `3306` (as specified in the Docker setup)
        - Database: `academydb`
        - User: `devuser`
        - Password: `devpassword`
    - **SQLite:**
        - Click on "Browse..." and select the `academydb.sqlite` file you created.
4. **Test Connection:**
    - Click on "Test Connection" to ensure your settings are correct and the connection is successful.
5. **Finish:**
    - Click "Finish" to save the connection.

Now you are ready to manage your PostgreSQL, MySQL, and SQLite databases using DBeaver Community. Enjoy the enhanced productivity and ease of use that DBeaver brings to your database management tasks!
