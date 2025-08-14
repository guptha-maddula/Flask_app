# Using Python as Base Image
FROM python:3.11-slim

# Set up Working Directory
WORKDIR /app

# Install Dependencies
COPY requirements.txt .
RUN pip Install --no-cache-dir -r requirements.txt

# Copy Source Code
COPY . . 

# Expose Flask port 
EXPOSE 5000

#Running the Flask App
CMD [ "python", "app.py" ]

