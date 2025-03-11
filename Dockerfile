# Base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app
# RUN git clone https://github.com/dev-vivekkumarverma/Django_dummy_application.git
# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Run application
CMD ["python", "manage.py", "runserver"]
