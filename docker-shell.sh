#!/bin/bash

# Build the Docker image
docker build -t hw3-api .

# Run the Docker container
docker run -p 9000:9000 hw3-api
