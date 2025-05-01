#!/bin/bash

echo "🚀 Starting NGINX server..."

# Use full deployment path to avoid "file not found" errors


# Deploy new config
chmod -R 755 /home/ec2-user
chkconfig nginx on
# Start and enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx
