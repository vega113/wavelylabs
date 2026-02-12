# Beads Workflow (wavelylabs)

This repository uses Beads (`bd`) for local issue tracking.

## Initialization status

- Initialized on February 12, 2026 via `bd init`
- Backend: `sqlite`
- Database path: `.beads/beads.db`
- Issue prefix: `wavelylabs-*`

## Core commands

```bash
bd ready
bd list
bd create "Title of task"
bd show <issue-id>
bd update <issue-id> --status in_progress
bd close <issue-id>
bd comments add <issue-id> "note"
```

## Sync and collaboration

```bash
bd sync
```

Use `bd sync` before pushing when issue changes must be shared.

## Notes

- `.beads/beads.db` is intentionally gitignored.
- Repository-level integration files were added by Beads init (`AGENTS.md`, `.gitattributes`).
