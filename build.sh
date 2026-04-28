#!/bin/bash
# Gera os arquivos .skill (ZIP) para distribuição a partir das pastas em skills/
mkdir -p dist
for dir in skills/*/; do
  name=$(basename "$dir")
  rm -f "dist/$name.skill"
  (cd skills && zip -r "../dist/$name.skill" "$name" > /dev/null)
  echo "Built dist/$name.skill"
done
