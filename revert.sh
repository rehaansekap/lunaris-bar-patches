#!/bin/bash
# Lunaris Bar Unified Patch Reverter
# Author: rehanseekap
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REVERT_FILE="$SCRIPT_DIR/lunaris_bar_unified_revert.patch"

if [ ! -f "$REVERT_FILE" ]; then
    echo "Error: $REVERT_FILE not found!"
    exit 1
fi

echo "--> Checking Lunaris Bar revert patch..."
git apply --check "$REVERT_FILE"
echo "--> Reverting Lunaris Bar unified patch..."
git apply "$REVERT_FILE"
echo "==> Lunaris Bar reverted successfully!"
