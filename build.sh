#!/bin/bash

echo "🔨 Building Docker image..."
docker build -t devops-build:latest .

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
else
    echo "❌ Build failed!"
    exit 1
fi
