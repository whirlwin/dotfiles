# Agent instructions for this repo

Personal preferences and conventions for AI agents working in this repository —
and, where noted, for how I like work carried out generally.

## Technology choices

- Prefer CNCF and vendor-neutral technologies over cloud-provider-native
  services when both options exist (Prometheus over a hosted metrics service,
  Flux/Argo CD over a vendor's pipeline product, Kubernetes-native Ingress over
  a vendor load-balancer product).
- Prefer open standards and portable solutions; avoid vendor lock-in.
- Prefer shell scripting (bash/zsh) and CLI utilities over Python for scripting
  tasks.

## How I like work done

- **Plan before implementing.** This repo defaults to plan mode
  (`.claude/settings.json`). Present the plan and get approval before editing.
- **When executing an approved implementation plan, use subagent-driven
  development** — a fresh subagent per task, with a spec and a quality review —
  unless I say otherwise.
- **Carry work through to shipping.** When I ask for a change, "done" means
  committed and pushed (and deployed/published, where the project has such a
  step) — not a dirty working tree waiting on me.
- **Run the commands yourself.** Don't hand me a command to paste unless it
  genuinely needs my terminal (interactive logins, MFA prompts).
- **Stay in the current session.** Don't quit and start a fresh Claude session
  to pick up a skill or reset context; continue where we are.

## Repo conventions

This repo is a declarative macOS workstation setup. Keep the three layers
distinct:

- **`mise.toml`** — language runtimes and CLI tools mise manages.
- **`Brewfile`** — GUI apps, fonts, and system/daemon tools mise can't install.
- **`mise-tasks/setup/*`** — individual, idempotent, re-runnable setup steps,
  orchestrated by `mise run setup`.

Every setup step must be safe to re-run. Keep `README.md` in step with changes
to any of the three.

Commit subjects: short, imperative, sentence case, no conventional-commit
prefix — matching existing history ("Add adb via mise and make mise.toml the
global config").
