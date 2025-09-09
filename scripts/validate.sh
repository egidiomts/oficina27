#!/usr/bin/env bash
set -euo pipefail

echo ">>> Validando backend..."
# Ajuste a porta/rota se necessário
if ! curl -fsS http://localhost:3000/; then
  echo "Backend não respondeu na porta 3000"
  exit 1
fi

echo ">>> Validando frontend..."
# Ajuste o caminho de acordo com o DocumentRoot do Apache
if ! curl -fsS http://localhost/oficina27/frontend/index.html; then
  echo "Frontend não encontrado em /oficina27/frontend/index.html"
  exit 1
fi

echo ">>> Validação concluída com sucesso!"
