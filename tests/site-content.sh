#!/usr/bin/env bash
set -euo pipefail

FILE="index.html"
[ -f "$FILE" ] || { echo "missing $FILE"; exit 1; }

required=(
  "WavelyLabs"
  "AI tools for creators"
  "Currently in public beta. Pricing is visible. Billing will be enabled at launch."
  "SlidesLab"
  "Generate structured presentation slides using AI."
  "Structured prompts"
  "Slide variants"
  "Export-ready output"
  "https://slideslab.ai"
  "Try SlidesLab"
  "Screenshot placeholder: SlidesLab main editor showing generated slide deck with AI prompt panel."
  "Tube2Web"
  "Turn YouTube playlists into searchable AI-powered websites."
  "Auto-import videos"
  "AI chat"
  "Semantic search"
  "https://tube2web.ai"
  "Explore Tube2Web"
  "Screenshot placeholder: Tube2Web dashboard showing playlist import and generated website preview."
  "Product Examples"
  "SlidesLab Final Selection"
  "Generation Status (variants view)"
  "SlidesLab generation workflow with multiple image variants and export options."
  "Recent Generations Dashboard"
  "Saved presentations and credit-based generation history."
  "Pricing Page"
  "Transparent credit-based pricing model. Currently in public beta."
  "assets/slideslab-generation-status.webp"
  "assets/slideslab-recent-generations-dashboard.webp"
  "assets/slideslab-pricing-page.webp"
  "Tube2Web Final Selection"
  "Import Content Modal"
  "Tube2Web content import workflow. YouTube channel or playlist ingestion with AI enhancements."
  "Creator Dashboard (Video Grid View)"
  "Creator dashboard with imported videos and AI processing status."
  "Public Generated Site View"
  "Example AI-powered website generated from a YouTube channel."
  "Pricing Page (Optional)"
  "Tube2Web transparent subscription pricing (currently in public beta)."
  "assets/tube2web-import-content-modal.webp"
  "assets/tube2web-creator-dashboard-grid.webp"
  "assets/tube2web-public-generated-site.webp"
  "assets/tube2web-pricing-page.webp"
  "WavelyLabs builds and maintains software products focused on visual communication and content automation."
  "Contact:"
  "Location: Tel Aviv"
  "hello@wavelylabs.com"
  "mailto:hello@wavelylabs.com"
  "&copy; 2026 WavelyLabs"
  "Privacy Policy"
  "Terms of Service"
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
