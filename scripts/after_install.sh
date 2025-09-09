#!/usr/bin/env bash
set -euo pipefail

cd /var/www/oficina27/backend

# Se não veio node_modules no artefato, instala em produção
if [ ! -d "node_modules" ]; then
  npm ci --omit=dev
fi

# Opcional: rodar migrações/seed aqui, se houver
# npm run migrate
