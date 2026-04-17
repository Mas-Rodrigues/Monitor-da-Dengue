#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
EXPECTED_VERSION="$(tr -d '[:space:]' < "$ROOT_DIR/.quarto-version")"

if ! command -v quarto >/dev/null 2>&1; then
  echo "Quarto não encontrado no PATH." >&2
  exit 1
fi

CURRENT_VERSION="$(quarto --version | head -n 1 | tr -d '[:space:]')"

if [[ "$CURRENT_VERSION" != "$EXPECTED_VERSION" ]]; then
  echo "Versão do Quarto incompatível." >&2
  echo "Esperada: $EXPECTED_VERSION" >&2
  echo "Atual:    $CURRENT_VERSION" >&2
  echo "Atualize o Quarto ou revise o impacto da nova renderização antes de publicar." >&2
  exit 1
fi

cd "$ROOT_DIR"

COMMAND="${1:-render}"
if [[ $# -gt 0 ]]; then
  shift
fi

case "$COMMAND" in
  check)
    echo "Quarto $CURRENT_VERSION OK"
    ;;
  render)
    exec quarto render index.qmd "$@"
    ;;
  preview)
    exec quarto preview index.qmd "$@"
    ;;
  *)
    exec quarto "$COMMAND" "$@"
    ;;
esac