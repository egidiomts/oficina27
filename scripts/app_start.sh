#!/usr/bin/env bash
set -euo pipefail

# Vai para o diretório do backend
cd /var/www/html/oficina27/backend

# Inicia pelo PM2
sudo pm2 start --name oficina27 "sudo npm start" --update-env
