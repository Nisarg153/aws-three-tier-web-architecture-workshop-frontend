#!/bin/bash
echo "🧼 Cleaning up previous frontend deployment..."

# Install NGINX if not installed
if ! command -v nginx &> /dev/null; then
    echo "🔧 Installing NGINX..."
    sudo amazon-linux-extras enable nginx1
    sudo yum clean metadata
    sudo yum install -y nginx
fi

# Stop NGINX if already running
sudo systemctl stop nginx || true

# Remove previous frontend build
sudo rm -rf /home/ec2-user/web
