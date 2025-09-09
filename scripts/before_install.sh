#!/usr/bin/env bash
set -euo pipefail

# Criar diretórios de destino
sudo mkdir -p /var/www/oficina27/backend
sudo mkdir -p /var/www/html/oficina27

# Parar app antigo (se existir)
pm2 stop oficina27 || true

