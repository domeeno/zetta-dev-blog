#!/bin/bash

set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
SRC_PATH="domeenoblog"
CURRENT_THEME="themes/PaperMod"

cd "$ROOT/$SRC_PATH"

echo "Updating theme..."

git submodule update --init --recursive
git submodule update --remote --merge $CURRENT_THEME

cd $CURRENT_THEME

echo "✅ theme updated: "

git log -1 --oneline

cd "$ROOT/$SRC_PATH"

echo "Building parent direcotry ..."

hugo --gc


