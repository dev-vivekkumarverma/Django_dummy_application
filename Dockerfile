# User root
# Use official Python image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy the application code
# RUN git clone https://github.com/dev-vivekkumarverma/Django_dummy_application.git

COPY . .

# WORKDIR /app/Django_dummy_application
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


RUN ls 
# Expose Django port
EXPOSE 8000

# Run the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
