#!/bin/bash

echo "🚀 Deploying application..."
docker compose down
docker compose up -d

if [ $? -eq 0 ]; then
    echo "✅ Deployment successful! App running at http://localhost:80"
else
    echo "❌ Deployment failed!"
    exit 1
fi
