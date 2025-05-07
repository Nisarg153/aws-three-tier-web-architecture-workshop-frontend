#!/bin/bash

echo "📦 Setting up frontend files..."

# Create the web directory if it doesn't exist
sudo mkdir -p /home/ec2-user/web

# Change ownership to ec2-user (if needed)
sudo chown -R ec2-user:ec2-user /home/ec2-user/web

echo "✅ Frontend files are ready in /home/ec2-user/web"

echo "🛠️ Configuring NGINX..."

# Move the nginx.conf into place (assuming it's in the artifact under scripts/ or root)
sudo mv /home/ec2-user/nginx/nginx.conf /etc/nginx/nginx.conf

# Test the NGINX config
if sudo nginx -t; then
    echo "✅ NGINX config is valid."
    sudo systemctl restart nginx
    echo "🚀 NGINX restarted successfully."
else
    echo "❌ NGINX config test failed! Check your nginx.conf."
    exit 1
fi
