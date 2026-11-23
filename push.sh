#!/bin/bash
set -e

MSG="${1:-Update junkyard tycoon files}"
BRANCH="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo main)"

git add .
if git diff --cached --quiet; then
  echo "변경된 파일이 없습니다."
  exit 0
fi

git commit -m "$MSG"
git push origin "$BRANCH"
