#!/bin/bash

set -euo pipefail

# checks
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"commit message\""
  exit 1
fi

# vars
ROOT="$(git rev-parse --show-toplevel)"
SRC_PATH="domeenoblog"
COMMIT_MESSAGE="$1"

### 

cd "$ROOT/$SRC_PATH"

echo "Updating submodules..."

git submodule update --init --recursive

echo "✅ Submodules updated."

echo "Building Hugo site..."

hugo --gc --logLevel info 

echo "✅ Hugo Build complete!"

echo "Committing static generated site (public)"

cd public

if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "Build site"
  git push
else
  echo "🛠️ nothing to commit."
  echo "Publish stopped."
  exit 1
fi

cd "$ROOT"

echo "Committing parent directory"


if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push
else
  echo "🛠️ nothing to commit."
  echo "Publish stopped."
  exit 1
fi

echo "✅ Published"

