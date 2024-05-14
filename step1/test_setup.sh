#!/bin/bash

# Check if PostgreSQL is listening on the correct port
if nc -z localhost 5433; then
    echo "PostgreSQL is correctly listening on port 5433."
else
    echo "PostgreSQL is not listening on the expected port 5433."
fi

