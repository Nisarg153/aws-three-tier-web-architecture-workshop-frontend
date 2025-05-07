#!/bin/bash

echo "🚀 Starting NGINX server..."

# Test Nginx config
echo "🔍 Testing Nginx configuration..."
sudo nginx -t

# Start & enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx

echo "✅ Nginx server started and enabled."
