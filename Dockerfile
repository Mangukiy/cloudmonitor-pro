# Step 1: Use an official Python base image
FROM python:3.11-slim

# Step 2: Set working directory in the container
WORKDIR /app

# Step 3: Copy all project files into container
COPY . /app

# Step 4: Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port Flask will run on
EXPOSE 5000

# Step 6: Run your Flask app
CMD ["python", "app.py"]
