# Serverless Registration Form - Frontend Container

This directory contains the containerized version of the frontend application for the Serverless Registration Form.

## Files

- `index.html` - Main HTML file
- `script.js` - JavaScript functionality for form submission
- `style.css` - CSS styling
- `Dockerfile` - Docker configuration for containerizing the app
- `docker-compose.yml` - Docker Compose configuration for easy deployment
- `.dockerignore` - Files to exclude from Docker build context

## Building and Running

### Option 1: Using Docker directly

1. Build the Docker image:
   ```bash
   docker build -t serverless-registration-frontend .
   ```

2. Run the container:
   ```bash
   docker run -d -p 8080:80 --name serverless-registration-frontend serverless-registration-frontend
   ```

3. Access the application at `http://localhost:8080`

### Option 2: Using Docker Compose (Recommended)

1. Build and run the container:
   ```bash
   docker-compose up --build -d
   ```

2. Access the application at `http://localhost:8080`

3. To stop the container:
   ```bash
   docker-compose down
   ```

## Container Details

- **Base Image**: nginx:alpine (lightweight nginx server)
- **Port**: 80 (mapped to 8080 on host)
- **Static Files**: Served directly by nginx
- **Health Check**: Included to monitor container health

## API Endpoint

The frontend application is configured to send registration requests to:
`https://524x4f0mu5.execute-api.us-west-2.amazonaws.com/prod/register`

Make sure this AWS Lambda endpoint is accessible and properly configured.

## Development

For development purposes, you can mount the source files as volumes:

```bash
docker run -d -p 8080:80 \
  -v $(pwd)/index.html:/usr/share/nginx/html/index.html \
  -v $(pwd)/script.js:/usr/share/nginx/html/script.js \
  -v $(pwd)/style.css:/usr/share/nginx/html/style.css \
  serverless-registration-frontend
```

This allows you to make changes to the files without rebuilding the container.
