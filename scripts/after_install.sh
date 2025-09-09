#!/usr/bin/env bash
set -euo pipefail

cd /var/www/html/oficina27/backend

pm2 start --name app-oficina27 "npm start" --update-env

