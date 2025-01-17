# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set an environment variable to run the Flask app
ENV FLASK_APP=app.py

EXPOSE 80

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
