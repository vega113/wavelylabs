#!/usr/bin/env bash
set -euo pipefail

FILE="index.html"
[ -f "$FILE" ] || { echo "missing $FILE"; exit 1; }

required=(
  "WavelyLabs"
  "AI tools for creators"
  "We build software products focused on visual communication and content automation."
  "SlidesLab"
  "AI slide generation"
  "https://slideslab.ai"
  "Tube2Web"
  "Turn YouTube playlists into AI websites"
  "https://tube2web.ai"
  "Our products are currently in public beta."
  "hello@wavelylabs.com"
  "Tel Aviv"
)

for text in "${required[@]}"; do
  grep -Fq "$text" "$FILE" || { echo "missing required text: $text"; exit 1; }
done

echo "site content checks passed"
