#!/usr/bin/env bash
set -euo pipefail

# Definir HOME para PM2
export HOME=/home/ec2-user

# Deleta a instância antiga, se existir
pm2 delete oficina27 || true

# Vai para o diretório do backend
cd /var/www/html/oficina27/backend

# Inicia pelo PM2
pm2 start server.js --name oficina27 --update-env

# Salva processo PM2
pm2 save
