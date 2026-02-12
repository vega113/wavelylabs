#!/usr/bin/env bash
set -euo pipefail

FILE="index.html"
[ -f "$FILE" ] || { echo "missing $FILE"; exit 1; }

required=(
  "WavelyLabs"
  "AI tools for creators"
  "We build software products focused on visual communication and content automation."
  "Entity behind SlidesLab & Tube2Web"
  "Public beta"
  "Contact: hello@wavelylabs.com"
  "SlidesLab"
  "AI slide generation"
  "https://slideslab.ai"
  "See SlidesLab in action"
  "Screenshot placeholder: SlidesLab main editor showing generated slide deck with AI prompt panel."
  "Tube2Web"
  "Turn YouTube playlists into AI websites"
  "https://tube2web.ai"
  "Try Tube2Web demo"
  "Screenshot placeholder: Tube2Web dashboard showing playlist import and generated website preview."
  "Demo examples"
  "Slides generated in 30s"
  "Placeholder: before/after sample slides from a single prompt."
  "AI chat session example"
  "Placeholder: chat transcript where AI refines slide structure and visuals."
  "Our products are in public beta with pricing visible. Billing will be enabled at launch."
  "hello@wavelylabs.com"
  "Tel Aviv"
  "Privacy Policy"
  "Terms of Service"
  "aria-label=\"Visit SlidesLab website\""
  "aria-label=\"Open SlidesLab demo\""
  "aria-label=\"Visit Tube2Web website\""
  "aria-label=\"Open Tube2Web demo\""
)

for text in "${required[@]}"; do
  grep -Fq "$text" "$FILE" || { echo "missing required text: $text"; exit 1; }
done

for page in privacy.html terms.html; do
  [ -f "$page" ] || { echo "missing required legal page: $page"; exit 1; }
done

grep -Fq "Last updated: February 12, 2026" privacy.html || { echo "privacy page missing last updated date"; exit 1; }
grep -Fq "Data We Collect" privacy.html || { echo "privacy page missing data policy section"; exit 1; }
grep -Fq "Last updated: February 12, 2026" terms.html || { echo "terms page missing last updated date"; exit 1; }
grep -Fq "Limitation of Liability" terms.html || { echo "terms page missing limitation section"; exit 1; }

echo "site content checks passed"
