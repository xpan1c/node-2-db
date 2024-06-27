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
