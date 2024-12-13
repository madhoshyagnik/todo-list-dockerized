FROM python:3.8-alpine

# Install dependencies (if needed for build)
RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev && \
    pip install --no-cache-dir django==3.2 && \
    # Clean up build dependencies after installation
    apk del .build-deps

# Set the working directory and copy your app files
WORKDIR /app
COPY . .

# Run migrations
RUN python manage.py migrate

# Expose port 8000
EXPOSE 8000

# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
