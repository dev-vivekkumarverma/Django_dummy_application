# Base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app
# RUN git clone https://github.com/dev-vivekkumarverma/Django_dummy_application.git
# Install dependencies
# COPY requirements.txt .
# RUN apt-get install tree

COPY . .
RUN pip install --no-cache-dir -r requirements.txt
# Run application
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
