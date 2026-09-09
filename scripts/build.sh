#!/usr/bin/env bash
set -euo pipefail

# Simple helper to build Oozy Linux ISO

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROFILE="${ROOT_DIR}/archiso"
WORK_DIR="${ROOT_DIR}/work"
OUT_DIR="${ROOT_DIR}/out"

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (or with sudo)."
  exit 1
fi

if ! command -v mkarchiso >/dev/null 2>&1; then
  echo "mkarchiso not found. Install archiso first:"
  echo "  sudo pacman -S --needed archiso"
  exit 1
fi

echo "==> Cleaning previous build (if any)..."
rm -rf "${WORK_DIR}" "${OUT_DIR}"

echo "==> Building Oozy Linux ISO..."
mkarchiso -v -w "${WORK_DIR}" -o "${OUT_DIR}" "${PROFILE}"

echo
echo "==> Done!"
echo "ISO should be in: ${OUT_DIR}/"
ls -lh "${OUT_DIR}"/*.iso 2>/dev/null || true
