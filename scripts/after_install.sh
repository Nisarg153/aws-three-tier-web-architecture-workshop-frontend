#!/bin/bash

echo "📦 Setting up frontend environment..."

# Install nginx if not already installed
if ! command -v nginx &> /dev/null; then
    echo "🔧 Installing Nginx..."
    sudo yum install -y nginx
else
    echo "✅ Nginx is already installed."
fi

# Prepare the /home/ec2-user/web directory
echo "📂 Preparing /home/ec2-user/web directory..."
sudo mkdir -p /home/ec2-user/web

# Copy built React files to /home/ec2-user/web
echo "🚚 Copying build files to /home/ec2-user/web..."
sudo cp -r /home/ec2-user/web-tier/build/* /home/ec2-user/web/

# Set proper ownership & permissions
echo "🔒 Setting permissions for web files..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/web
sudo chmod -R 755 /home/ec2-user/web

# Deploy nginx.conf to /etc/nginx
echo "⚙️ Deploying nginx.conf to /etc/nginx..."
sudo cp /home/ec2-user/nginx/nginx.conf /etc/nginx/nginx.conf

echo "✅ After-install steps completed successfully."
