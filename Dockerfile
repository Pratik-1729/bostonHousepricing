# Use official Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy everything into the image
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port used by Flask
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
