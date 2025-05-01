#!/bin/bash

echo "🛑 Stopping NGINX server..."

if systemctl list-units --type=service | grep -q nginx; then
    sudo systemctl stop nginx
    echo "✅ NGINX stopped."
else
    echo "⚠️ NGINX is not installed or not running. Skipping stop."
fi
