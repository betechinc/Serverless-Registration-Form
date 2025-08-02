#!/bin/bash

# Deployment script for Serverless Registration Frontend

echo "🚀 Deploying Serverless Registration Frontend..."

# Stop and remove existing container if it exists
if [ "$(docker ps -aq -f name=serverless-registration-frontend)" ]; then
    echo "🛑 Stopping existing container..."
    docker stop serverless-registration-frontend
    docker rm serverless-registration-frontend
fi

# Build the image
echo "🔨 Building Docker image..."
docker build -t serverless-registration-frontend .

if [ $? -ne 0 ]; then
    echo "❌ Docker build failed!"
    exit 1
fi

# Run the container
echo "🏃 Starting container..."
docker run -d -p 8080:80 --name serverless-registration-frontend serverless-registration-frontend

if [ $? -eq 0 ]; then
    echo "✅ Container started successfully!"
    echo "🌐 Application is available at: http://localhost:8080"
    echo "📊 Container status:"
    docker ps -f name=serverless-registration-frontend
else
    echo "❌ Failed to start container!"
    exit 1
fi
