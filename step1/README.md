# Step 1: Introduction to Docker, .env Files, and PostgreSQL/pgAdmin Setup

## Objective
Learn the basics of Docker configuration for setting up PostgreSQL with pgAdmin.

## Tasks
1. Review the `.env`, and `docker-compose.yml` files.
2. Modify the `docker-compose.yml` to change the default ports.
3. Launch the services using Docker Compose and verify the configuration.

## Basic Docker Commands
- `docker-compose up`: Starts the Docker containers as defined in the `docker-compose.yml`.
- `docker-compose down`: Stops and removes the containers and networks.
- `docker ps`: Shows running containers.
- `docker logs <container>`: Fetches the logs of a specific container.

## Instructions
1. Install Docker and Docker Compose if not already installed.
2. Clone this repository and navigate to the `step1` folder.
3. Make the required changes to the `docker-compose.yml`.
4. Run `docker-compose up` to start your services.
5. Use the script `./test_setup.sh` to check if PostgreSQL is running on the new port.
6. Access pgAdmin at `http://localhost:<modified_port>` and connect using the credentials provided in the `.env` file.

## Resources
- [Docker Documentation](https://docs.docker.com)
- [PostgreSQL Docker Official Image](https://hub.docker.com/_/postgres)
- [pgAdmin Docker Deployment](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html)
