#!/bin/bash
echo "🚀 Starting NGINX server..."

# Locate deployment artifact path
DEPLOY_DIR=$(find /opt/codedeploy-agent/deployment-root -type d -name deployment-archive | head -n 1)

# Backup old config if exists
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak || true

# Copy new config from artifact
sudo cp $DEPLOY_DIR/nginx.conf /etc/nginx/nginx.conf

# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx
