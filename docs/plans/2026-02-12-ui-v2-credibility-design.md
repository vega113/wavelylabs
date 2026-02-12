# WavelyLabs Website UI v2 — Credibility + Brand Design Plan

Date: 2026-02-12
Owner: WavelyLabs
Status: Revised after external review (Round 1)

## 1. Objective

Upgrade `wavelylabs.com` from a functional brochure into a polished AI product-studio site that is:

- Credible for merchant/compliance review.
- Clear in the first viewport (who we are, what we build, where to go).
- Distinctive but restrained (professional, not trendy-noisy).
- Safe against legal/compliance content regressions.

## 2. Audit Inputs and Constraints

### 2.1 Inputs

- Live audit via `agent-browser` on:
  - `https://wavelylabs.com/`
  - `https://wavelylabs.com/about`
  - `https://wavelylabs.com/privacy`
  - `https://wavelylabs.com/terms`
- Desktop/mobile captures in `.review/` used as baseline evidence.

### 2.2 Constraints

- Keep the same page set (`/`, `/about`, `/privacy`, `/terms`).
- Keep stack static: HTML + CSS + vanilla JS.
- Keep existing truthful compliance copy (beta status, billing readiness, operator/jurisdiction, support channels).
- Preserve real screenshot proof for SlidesLab and Tube2Web.

## 3. Current UX Findings

### 3.1 What already works

- Real product proof is visible.
- Legal/company trust content exists.
- Static architecture is fast and simple.

### 3.2 High-value gaps

- Visual hierarchy is flat; most sections have equal weight.
- Typography scale feels generic and underpowered for brand positioning.
- Hero reads as a banner + repeated text, not a narrative.
- Product proof section is long and not guided as a story.
- Mobile header/nav chips are tight; scanning is dense.
- Legal pages are complete but look like raw text documents.

## 4. Visual Direction Options

### Option A — Editorial Tech (recommended)

- Light, premium editorial base with deep-ink typography.
- Cyan/teal used as a controlled accent system: one solid accent + one gradient treatment.
- Spacious composition and strong information hierarchy.

### Option B — Dark AI Console

- Dark glassmorphism + luminous accents + stronger motion.
- Visually dramatic, but higher risk for trust/compliance tone and legal readability.

### Option C — Split-mode marketing

- Light shell with dark product showcase modules.
- Potentially strong, but complexity and style inconsistency risk.

### Recommendation

Use **Option A (Editorial Tech)** for strongest trust-to-distinction ratio with low implementation risk.

## 5. Information Architecture (no page expansion)

### 5.1 Home

1. Hero: value statement + trust chips + primary actions.
2. Products: two high-clarity product cards.
3. Product narrative rail: Input -> Processing -> Output.
4. Product examples: curated visual evidence, grouped and digestible.
5. Company + Billing Readiness block.
6. Footer: legal + social.

### 5.2 About

1. Studio positioning.
2. Current products.
3. In-development initiatives.
4. Legal entity/support and founder block.

### 5.3 Privacy and Terms

- Keep legal text breadth.
- Improve readability with section index, typographic rhythm, and consistent spacing.

## 6. Design System v2 (implementable tokens)

### 6.1 Typography tokens

- `--font-display`: `"Sora", "Segoe UI", sans-serif`
- `--font-body`: `"Plus Jakarta Sans", "Segoe UI", sans-serif`
- `--font-accent`: `"Instrument Serif", "Times New Roman", serif`

- `--fs-hero`: `clamp(2.6rem, 5vw, 4.4rem)`
- `--fs-h1`: `clamp(2.2rem, 4vw, 3.4rem)`
- `--fs-h2`: `clamp(1.25rem, 2vw, 1.65rem)`
- `--fs-h3`: `1.2rem`
- `--fs-body`: `1rem`
- `--fs-meta`: `0.87rem`

- `--lh-tight`: `1.1`
- `--lh-heading`: `1.2`
- `--lh-body`: `1.62`

- `--fw-display`: `700`
- `--fw-heading`: `700`
- `--fw-body`: `500`
- `--fw-meta`: `600`

Font role mapping:

- Display/headings: `--font-display`
- Body + meta: `--font-body`
- Accent italic phrase only: `--font-accent`

### 6.2 Color tokens

- `--bg`: `#e9eff3`
- `--surface-1`: `#f8fbfd`
- `--surface-2`: `#ffffff`
- `--surface-3`: `#eef4f8`
- `--ink-1`: `#0d1b2a`
- `--ink-2`: `#233a4b`
- `--ink-muted`: `#4d6476`
- `--line`: `#c9d7e2`
- `--accent-solid`: `#0d7ea8`
- `--accent-strong`: `#0c5f95`
- `--accent-gradient`: `linear-gradient(135deg, #0c5f95 0%, #1ea7b8 100%)`
- `--success-soft`: `#e6f5ef`
- `--success-ink`: `#176048`
- `--warning-soft`: `#fff5df`
- `--warning-ink`: `#805b16`

### Contrast targets (AA)

- Body text on `--surface-*`: >= 7:1 (`--ink-1`, `--ink-2`).
- Meta text on `--surface-*`: >= 4.5:1 (`--ink-muted`).
- CTA text on accent backgrounds: >= 4.5:1.

### 6.3 Shape and elevation tokens

- `--radius-sm`: `10px`
- `--radius-md`: `16px`
- `--radius-lg`: `22px`
- `--shadow-card`: `0 8px 24px rgba(16, 36, 56, 0.08)`
- `--shadow-soft`: `0 2px 8px rgba(16, 36, 56, 0.06)`

## 7. Component Specifications

### 7.1 Header

- Larger brand lockup and active nav state.
- Nav chip min-height `44px` (touch comfort target).
- Desktop: horizontal nav right.
- Mobile: wrapped chips with bigger spacing and reduced crowding.

### 7.2 Hero (desktop/mobile defined)

- Desktop (`> 820px`): split layout
  - Left: H1 + one-line positioning + trust chips + primary CTA cluster.
  - Right: branded header visual with subtle frame/elevation.
- Tablet (`481-820px`): stacked layout with compact trust chip row and two-column CTA arrangement when space allows.
- Mobile (`<= 820px`): stacked layout
  - Title, short proof line, then visual, then CTA row.
  - Trust chips wrap to 2 lines max; no overflow.

### 7.3 Product cards

- Card anatomy: image -> title -> 1-sentence value -> 3 bullets -> one CTA.
- Image framing consistent (`object-fit: cover` unless portrait utility applies).
- Add micro-metadata chip row (e.g., `Public beta`, `Pricing visible`).

### 7.4 Narrative rail (new)

- Three-step strip with icons + one sentence each:
  - Input: YouTube URL / prompt.
  - Processing: AI enrichment pipeline.
  - Output: public website / slide deck output.

### 7.5 Legal page template

- Sticky mini-TOC for section anchors on desktop.
- Compact TOC block on mobile (top of content).
- Better paragraph width and heading spacing.

### 7.6 Image lightbox accessibility spec

- `role="dialog"`, `aria-modal="true"`, labelled close control.
- Focus trap while open.
- Set background content to `inert` while modal is open.
- `Escape` closes modal.
- Return focus to opener when closed.

## 8. Motion and Interaction

- Entry animation: low-amplitude fade-up + blur-off for major sections.
- Hover interactions: subtle lift and border emphasis.
- Duration targets: `120-220ms` for hover/focus states.
- Respect `prefers-reduced-motion: reduce` by disabling non-essential transitions.

## 9. Responsive Rules

- Breakpoints:
  - `<= 480px`
  - `481-820px`
  - `> 820px`
- Grid behavior:
  - Home products: `2 col` desktop, `1 col` tablet/mobile.
  - Example cards: `3 col` desktop, `2 col` tablet, `1 col` mobile.
- Section padding:
  - Desktop `28-36px`, mobile `16-20px`.

## 10. Accessibility Baseline

- Keyboard-visible focus ring on all interactives.
- Skip link to main content.
- Semantic landmarks (`header`, `nav`, `main`, `footer`).
- Touch target standard:
  - Minimum functional target `24x24px` for secondary controls only.
  - Preferred for primary nav/CTAs `44x44px`.
- Contrast checks documented for token pairs.

## 11. Performance Budget and Delivery

- Keep static/no-framework architecture.
- Keep current optimized `.webp` image approach and explicit dimensions.
- First viewport media `loading="eager"` + `fetchpriority="high"`; all below-fold lazy.

### Font loading strategy

- Use only selected weights:
  - Sora: `700`
  - Plus Jakarta Sans: `500, 600, 700`
- Use `font-display: swap`.
- Default delivery: self-host subsetted WOFF2 files from the site origin.
- Development fallback: Google Fonts with preconnect during design iteration.

### Performance targets (Phase 4 gate)

- LCP < `1.8s` (mobile, throttled)
- CLS < `0.1`
- TBT < `200ms`
- Total blocking custom JS for UI polish < `8KB` gzipped
- Measurement method: Lighthouse mobile profile (simulated 4G + CPU slowdown), run on each page and record Home as primary gate.

## 12. Compliance Regression Safeguards

Before Phase 1:

1. Snapshot current legal/compliance-critical copy blocks from all pages.
2. Record canonical strings:
   - Operator identity and jurisdiction
   - Beta and billing readiness statements
   - Primary support and product alias emails
   - Legal page headers and section anchors

During implementation:

- After each phase, diff content snapshots.
- Re-run `./tests/site-content.sh` and extend checks for any new compliance-critical strings.
- If `./tests/site-content.sh` is missing, create it before visual implementation starts.

## 13. Execution Plan with DoD

### Phase 1 — Tokens + Header/Hero foundation

Dependencies: none

Definition of done:

- New token system implemented in `styles.css`.
- Header and hero rebuilt with desktop/mobile behavior.
- No regressions in nav routing and hero copy.
- Compliance baseline snapshot captured.
- `./tests/site-content.sh` confirmed and extended (or created if missing).

### Phase 2 — Products, narrative rail, examples

Dependencies: Phase 1 tokens/layout complete

Definition of done:

- Product cards updated to v2 anatomy.
- Narrative rail added and responsive.
- Example section visually simplified and clearer.

### Phase 3 — About + Legal visual refactor

Dependencies: Phase 1 typography/spacing complete

Definition of done:

- About page aligned to v2 design system.
- Privacy and Terms gain TOC/readability upgrades.
- Legal text unchanged except formatting/structure enhancements.

### Phase 4 — QA, performance, compliance verification

Dependencies: Phases 1-3 complete

Definition of done:

- Mobile/tablet/desktop visual pass complete.
- Keyboard and modal accessibility pass complete.
- Performance targets met.
- Compliance snapshot diff confirms no copy regressions.

## 14. Final Acceptance Criteria

- First viewport communicates company + products + trust signals without scrolling.
- Header/navigation touch targets and spacing are comfortable on mobile (`44px` preferred).
- Design system is fully tokenized with concrete values.
- Legal pages are readable/scannable while preserving legal meaning.
- Performance thresholds in section 11 are met.
- Compliance-critical copy is unchanged from baseline (except intentional improvements reviewed and approved).

## 15. Out of Scope

- New page types (blog/careers/investors/press).
- Checkout activation or payment flow changes.
- Product-domain legal policy rewrites.
- Backend architecture changes.
