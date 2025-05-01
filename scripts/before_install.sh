#!/bin/bash

echo "🧼 Cleaning up previous frontend deployment..."

# Install NGINX if not installed
if ! command -v nginx &> /dev/null
then
    echo "🔧 Installing NGINX..."
    sudo yum update -y
    sudo amazon-linux-extras enable nginx1
    sudo yum install -y nginx
else
    echo "✅ NGINX is already installed."
fi

# Stop NGINX if running
sudo systemctl stop nginx || true

# Remove old frontend files
sudo rm -rf /home/ec2-user/web
