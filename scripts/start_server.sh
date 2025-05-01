#!/bin/bash

echo "🚀 Starting NGINX server..."

# Use full deployment path to avoid "file not found" errors
DEPLOY_DIR=$(find /opt/codedeploy-agent/deployment-root -type d -name deployment-archive | head -n 1)

# Backup old config if needed
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak || true

# Deploy new config
sudo cp $DEPLOY_DIR/nginx.conf /etc/nginx/nginx.conf

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx
