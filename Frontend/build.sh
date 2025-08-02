#!/bin/bash

# Build script for Serverless Registration Frontend

echo "Building Docker image for Serverless Registration Frontend..."

# Build the Docker image
docker build -t serverless-registration-frontend .

if [ $? -eq 0 ]; then
    echo "✅ Docker image built successfully!"
    echo "📋 Image name: serverless-registration-frontend"
    echo ""
    echo "🚀 To run the container:"
    echo "   docker run -d -p 8080:80 --name frontend serverless-registration-frontend"
    echo ""
    echo "🐳 Or use Docker Compose:"
    echo "   docker-compose up -d"
    echo ""
    echo "🌐 Access the application at: http://localhost:8080"
else
    echo "❌ Docker build failed!"
    exit 1
fi
