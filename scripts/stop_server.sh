#!/bin/bash

echo "🛑 Stopping NGINX server..."

# Check if the nginx service is installed (unit file exists)
if systemctl list-unit-files | grep -q '^nginx.service'; then
    echo "✅ NGINX service found. Attempting to stop..."
    sudo systemctl stop nginx || echo "⚠️ NGINX was not running."
else
    echo "⚠️ NGINX is not installed. Skipping stop."
fi
