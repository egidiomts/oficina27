#!/usr/bin/env bash
set -euo pipefail
sudo pm2 delete oficina27 || true

cd /var/www/html/oficina27/backend

# Inicia pelo PM2
sudo pm2 start server.js --name oficina27 --update-env
sudo pm2 save
