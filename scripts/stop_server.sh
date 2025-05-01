#!/bin/bash

echo "🛑 Stopping NGINX server..."
sudo systemctl stop nginx

rm -rf /home/ec2-user/web-tier/*
rm -rf /etc/nginx/nginx.conf
