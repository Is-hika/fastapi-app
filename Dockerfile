# Use the official Python image
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy project files
COPY . .

# Create and activate a virtual environment
RUN python3 -m venv /app/venv
RUN /app/venv/bin/pip install --upgrade pip

# Install dependencies inside the virtual environment
RUN /app/venv/bin/pip install -r requirements.txt

# Expose the required port
EXPOSE 8000

# Run FastAPI server using the virtual environment
CMD ["/app/venv/bin/uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
