#!/usr/bin/env bash

set -euo pipefail

if ! command -v npm >/dev/null 2>&1; then
  echo "Error: npm is not installed or is not available in PATH." >&2
  exit 1
fi

if ! command -v md-to-pdf >/dev/null 2>&1; then
  echo "Error: md-to-pdf is installed globally, but its command is not in PATH." >&2
  exit 1
fi

cd "$(dirname "${BASH_SOURCE[0]}")"
md-to-pdf CV.md
