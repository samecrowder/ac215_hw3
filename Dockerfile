FROM python:3.9-slim

WORKDIR /app

# Install pipenv
RUN pip install pipenv

# Copy Pipfile and Pipfile.lock
COPY Pipfile* ./

# Install dependencies
RUN pipenv install --system --deploy

# Copy the rest of the application
COPY . .

# Make the entrypoint script executable
RUN chmod +x docker-entrypoint.sh

# Expose port 9000
EXPOSE 9000

# Set the entrypoint
ENTRYPOINT ["./docker-entrypoint.sh"]
