# 01 - Docker

## Introduction

Welcome to the Docker module of the Database Sprint Bootcamp! In this module, you will learn how to set up Docker Desktop, which is essential for managing containerized applications. Docker will enable you to run different database systems in isolated environments, making it easier to switch between databases and manage dependencies.

## Learning Objectives

By the end of this module, you will be able to:

- Install Docker Desktop on your machine.
- Understand basic Docker concepts and commands.
- Run and manage Docker containers.
- Set up containerized databases.

## Prerequisites

- Basic understanding of command-line interface (CLI).
- Administrative access to your computer for software installation.

## Steps

### 1. Install Docker Desktop

Follow the instructions for your specific distribution on the [Docker website](https://www.docker.com/products/docker-desktop/).

### 2. Verify Docker Installation

Open a terminal (Command Prompt on Windows, Terminal on macOS/Linux) and run the following command:

```bash
docker --version
```

You should see output similar to:
```bash
Docker version 20.10.7, build f0df350
```

### 3. Basic Docker Commands

- `docker --version`: Check the Docker version.
- `docker info`: Display system-wide information about Docker.
- `docker run hello-world`: Run a test container to verify that Docker is working.
- `docker ps`: List all running containers.
- `docker ps -a`: List all containers (including stopped ones).
- `docker images`: List all images available on your system.
- `docker pull <image-name>`: Download an image from Docker Hub.
- `docker rmi <image-id>`: Remove an image from your system.
- `docker rm <container-id>`: Remove a container from your system.
- `docker stop <container-id>`: Stop a running container.
- `docker start <container-id>`: Start a stopped container.
- `docker exec -it <container-id> /bin/bash`: Access the shell of a running container.
- `docker logs <container-id>`: View the logs of a container.
- `docker-compose --version`: Check the Docker Compose version.

### 4. Watch the following tutorial(s) to learn how to use Docker Desktop:

- [Docker Desktop Complete Setup Guide](https://www.youtube.com/watch?v=7y50rZItKCQ)