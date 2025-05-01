#!/bin/bash

echo "🚀 Starting NGINX server..."

# Copy NGINX config
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak || true
sudo cp nginx.conf /etc/nginx/nginx.conf

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx
