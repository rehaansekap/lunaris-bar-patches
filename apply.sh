#!/bin/bash
# Lunaris Bar Unified Patch Applicator
# Author: rehanseekap
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCH_FILE="$SCRIPT_DIR/lunaris_bar_unified.patch"

if [ ! -f "$PATCH_FILE" ]; then
    echo "Error: $PATCH_FILE not found!"
    exit 1
fi

echo "--> Checking Lunaris Bar unified patch..."
git apply --check "$PATCH_FILE"
echo "--> Applying Lunaris Bar unified patch..."
git apply "$PATCH_FILE"
echo "==> Lunaris Bar applied successfully!"
