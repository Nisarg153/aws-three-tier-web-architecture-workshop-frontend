#!/bin/bash
echo "📦 Setting up frontend files..."

# Make sure target directory exists
sudo mkdir -p /home/ec2-user/web

# Deployment archive should already be in place by CodeDeploy
echo "✅ Frontend files ready."
