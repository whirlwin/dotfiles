@../AGENTS.md

## Repo conventions

This repo is a declarative macOS workstation setup, and Claude Code defaults to
plan mode in it (`.claude/settings.json`). Keep the three layers distinct:

- **`mise.toml`**: language runtimes and CLI tools mise manages.
- **`Brewfile`**: GUI apps, fonts, and system/daemon tools mise can't install.
- **`mise-tasks/setup/*`**: individual, idempotent, re-runnable setup steps,
  orchestrated by `mise run setup`.

Every setup step must be safe to re-run. Keep `README.md` in step with changes
to any of the three.

Commit subjects: short, imperative, sentence case, no conventional-commit
prefix, matching existing history ("Add adb via mise and make mise.toml the
global config").
