#!/usr/bin/env bash
set -euo pipefail

# Verifica backend (ajuste a porta/rota conforme seu server.js)
curl -fsS http://localhost:3000/ || exit 1

# Verifica frontend servido pelo httpd
curl -fsS http://localhost/index.html || exit 1
