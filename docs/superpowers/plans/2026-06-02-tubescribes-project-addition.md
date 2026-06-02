# TubeScribes Project Addition Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add TubeScribes as a current WavelyLabs product with real app screenshots, consistent copy, and passing static site checks.

**Architecture:** Keep the static HTML/CSS structure unchanged. Add TubeScribes content beside the existing SlidesLab and Tube2Web sections, reuse the existing `product-card`, `proof-card`, and lightbox patterns, and update the content test to lock in the new product proof.

**Tech Stack:** Static HTML, CSS, shell content tests, WebP screenshot assets, GitHub PR workflow, bd issue `wavelylabs-j1z`.

---

### Task 1: Finalize TubeScribes Assets

**Files:**
- Create: `assets/tubescribes-transcription.webp`
- Create: `assets/tubescribes-import.webp`
- Create: `assets/tubescribes-library.webp`
- Create: `assets/tubescribes-folder-chat.webp`
- Create: `assets/tubescribes-bots.webp`
- Remove before commit: `assets/tubescribes-*.png`
- Modify: `assets/README.md`

- [ ] **Step 1: Convert captured PNG screenshots to WebP**

Run:

```bash
cwebp -quiet -q 82 assets/tubescribes-transcription.png -o assets/tubescribes-transcription.webp
cwebp -quiet -q 82 assets/tubescribes-import.png -o assets/tubescribes-import.webp
cwebp -quiet -q 82 assets/tubescribes-library.png -o assets/tubescribes-library.webp
cwebp -quiet -q 82 assets/tubescribes-folder-chat.png -o assets/tubescribes-folder-chat.webp
cwebp -quiet -q 82 assets/tubescribes-bots.png -o assets/tubescribes-bots.webp
```

Expected: five `.webp` files are created and visually match the captured app screens.

- [ ] **Step 2: Remove temporary PNG captures**

Run:

```bash
rm assets/tubescribes-*.png
```

Expected: only WebP TubeScribes assets remain.

- [ ] **Step 3: Update asset documentation**

Add a `TubeScribes` section to `assets/README.md` listing the five final WebP filenames and noting they render on the homepage examples section.

### Task 2: Update Site Content

**Files:**
- Modify: `index.html`
- Modify: `about.html`
- Modify: `privacy.html`
- Modify: `terms.html`

- [ ] **Step 1: Update shared product labels**

Update page descriptions, brand subtitles, hero alt text, and captions that currently say `SlidesLab + Tube2Web` so they include `TubeScribes` where product lists are shown.

- [ ] **Step 2: Add TubeScribes product card**

In `index.html`, add a third `.product-card` using `assets/tubescribes-folder-chat.webp` as the product shot, with copy focused on converting videos, documents, websites, and folders into searchable transcript libraries with cited AI chat. Include both `Try TubeScribes` and `Watch welcome video` actions.

- [ ] **Step 3: Update workflow copy**

Adjust the Input to Output workflow so it includes TubeScribes transcript libraries and folder chat without weakening the existing SlidesLab and Tube2Web positioning.

- [ ] **Step 4: Add TubeScribes examples**

Add a `TubeScribes Examples` subsection in `index.html` with proof cards for transcription, import, library, folder chat, and Telegram bots. Use the existing lightbox pattern and concrete alt/caption text.

- [ ] **Step 5: Update About and legal product references**

Add TubeScribes to `about.html` current products. Update legal page metadata and product-specific references so WavelyLabs clearly operates SlidesLab, Tube2Web, and TubeScribes.

### Task 3: Update Tests and Verify

**Files:**
- Modify: `tests/site-content.sh`

- [ ] **Step 1: Extend static content assertions**

Add required strings for TubeScribes product card copy, welcome video link, example headings/captions, new asset filenames, and About/legal product references.

- [ ] **Step 2: Run static checks**

Run:

```bash
bash tests/site-content.sh
```

Expected: `site content checks passed`.

- [ ] **Step 3: Run browser smoke**

Serve the static site locally and inspect desktop/mobile renders:

```bash
python3 -m http.server 4173
```

Open `http://127.0.0.1:4173/`, verify the homepage renders, TubeScribes cards/images load, the lightbox still works, and mobile layout does not overlap.

### Task 4: Delivery

**Files:**
- Modify: `.beads/*` via `bd sync`

- [ ] **Step 1: Self-review implementation**

Run:

```bash
git diff --check
git diff --stat
git diff
```

Expected: no whitespace errors, only intended static content/assets/test/issue changes.

- [ ] **Step 2: Commit and push**

Run:

```bash
git add index.html about.html privacy.html terms.html styles.css assets/README.md assets/tubescribes-*.webp tests/site-content.sh docs/superpowers/plans/2026-06-02-tubescribes-project-addition.md .beads
git commit -m "Add TubeScribes to WavelyLabs site"
git pull --rebase
bd sync
git push -u origin codex/add-tubescribes-project
git status --short --branch
```

Expected: branch is pushed and status shows it is up to date with origin.

- [ ] **Step 3: Open and monitor PR**

Open a PR against `main` with summary and test evidence. Monitor GitHub checks and reviews until the PR is merged, addressing any feedback through the same investigate-plan-fix-review loop.
