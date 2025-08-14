# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY app/ ./app

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app/app.py"]

