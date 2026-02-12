# wavelylabs.com

Minimal public company website for WavelyLabs.

## Local preview

```bash
python3 -m http.server 8080
# open http://localhost:8080
```

## Content check

```bash
./tests/site-content.sh
```

## Issue tracking (Beads)

This repo uses Beads (`bd`). See `docs/beads.md`.

## Deploy to Cloudflare Pages

```bash
npx wrangler pages deploy . --project-name wavelylabs --branch main
```
