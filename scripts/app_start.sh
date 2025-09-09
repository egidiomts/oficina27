#!/usr/bin/env bash
set -euo pipefail
pm2 delete oficina27 || true

cd /var/www/html/oficina27/backend

# Inicia pelo PM2
pm2 start server.js --name oficina27 --update-env
pm2 save
