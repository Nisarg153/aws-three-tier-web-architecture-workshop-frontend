#!/bin/bash

echo "🧹 Cleaning up previous frontend deployment..."

# Stop NGINX if running
sudo systemctl stop nginx || true

# Remove previous files
sudo rm -rf /home/ec2-user/web
