FROM python:3.9

# Set working directory
WORKDIR /app/backend

# Copy requirements first (for better caching)
COPY requirements.txt /app/backend/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . /app/backend/

# Expose Django port
EXPOSE 8000

# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
