# Use a base Python image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies if any
RUN pip install -r requirements.txt

# Default command
CMD ["python", "app.py"]
