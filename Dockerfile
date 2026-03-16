FROM python:3.11-slim

WORKDIR /app

# Install build deps (if needed) then Python deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your source
COPY . .

# Document the port FastAPI/uvicorn will listen on
EXPOSE 8000

# Start FastAPI via uvicorn, listening on all interfaces
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
