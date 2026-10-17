#!/usr/bin/env bash
# sharp-runner-tool — Rewriting small tools for developers in my spare time
# 
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

cat > "$tmp"

sort "$tmp" | uniq -c | sort -rn
echo "---"
echo "$(sort -u "$tmp" | wc -l | tr -d ' ') unique"
