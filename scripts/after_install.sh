#!/bin/bash

echo "📦 Installing Nginx and setting up frontend..."

# Install nginx if it's not already installed
if ! command -v nginx &> /dev/null; then
    echo "🔧 Installing Nginx..."
    sudo yum install -y nginx
fi

# Create the web directory if it doesn't exist
sudo mkdir -p /home/ec2-user/web

# Copy built React app to /home/ec2-user/web
echo "🚚 Copying frontend build files..."
sudo cp -r /home/ec2-user/web-tier/build/* /home/ec2-user/web/

# Replace nginx.conf
echo "⚙️ Updating Nginx configuration..."
sudo cp nginx.conf /etc/nginx/nginx.conf

echo "✅ After-install steps completed."
