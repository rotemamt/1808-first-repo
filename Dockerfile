FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app uses (Flask default 5000)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
