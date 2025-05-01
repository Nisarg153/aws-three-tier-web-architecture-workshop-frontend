#!/bin/bash

echo "📦 Setting up frontend files..."

# Create the web directory
sudo mkdir -p /home/ec2-user/web

# Copy files from build artifact (already done by CodeDeploy)
echo "✅ Frontend files placed in /home/ec2-user/web"
