# Use the official Python image from the Docker Hub
FROM python:3.12.5-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV POETRY_VERSION=1.8.0  

# Set the working directory
WORKDIR /app

# Install Poetry
RUN pip install poetry==$POETRY_VERSION

# Copy pyproject.toml and poetry.lock to the container
COPY pyproject.toml poetry.lock* /app/

# Install dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev

# Copy the rest of the application code to the container
COPY . /app

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "practice.main:app", "--host=0.0.0.0", "--port=8000", "--reload"]

