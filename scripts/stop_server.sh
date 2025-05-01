#!/bin/bash
echo "🛑 Stopping NGINX server..."

# Only stop if NGINX is installed
if systemctl list-unit-files | grep -q '^nginx.service'; then
    sudo systemctl stop nginx || echo "⚠️ NGINX was not running."
else
    echo "⚠️ NGINX is not installed. Skipping stop."
fi
