# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app ./app
COPY app/tests ./app/tests

# Expose port
EXPOSE 5000

# Default command
CMD ["python", "app/app.py"]
