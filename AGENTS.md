# Agent instructions for this repo

Personal preferences and conventions for AI agents working in this repository.
The writing conventions below apply to every reply and every file you produce,
not only to the files that live here.

## How I want you to write

- **Never use em-dashes or en-dashes.** This covers replies, plans, commit
  messages, PR descriptions, code comments and documentation. Use a comma, a
  colon, a semicolon or parentheses instead, or split the sentence in two. A
  spaced hyphen is the same construct wearing a hat, so don't reach for that
  either.
- **Flag anything that needs me with 👉.** Close every reply with the actions
  left for me, one per line, each line ending with 👉: an interactive login, a
  secret to add, a decision to make, a review to approve, a dirty file to deal
  with. If there is nothing for me to do, leave the 👉 lines out entirely
  rather than inventing busywork.
- **Mark anything destructive with ❌.** Breaking changes, deletions, renames
  that break callers, data loss, force pushes, resource teardown: prefix them
  with ❌ in plans, replies and PR descriptions so they can't be skimmed past.
  If your change removes or weakens an existing rule or behaviour, say so with
  ❌ rather than letting it disappear quietly in a diff.

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
  development**, a fresh subagent per task with a spec and a quality review,
  unless I say otherwise.
- **Carry work through to shipping.** When I ask for a change, "done" means
  committed and pushed (and deployed or published, where the project has such a
  step), not a dirty working tree waiting on me.
- **Keep unrelated changes out of my commits.** Stage the files your change
  touches, never `git commit -a`. If the tree holds work I started, leave it
  alone and flag it with 👉.
- **Run the commands yourself.** Don't hand me a command to paste unless it
  genuinely needs my terminal (interactive logins, MFA prompts).
- **Stay in the current session.** Don't quit and start a fresh Claude session
  to pick up a skill or reset context; continue where we are.

## Repo conventions

This repo is a declarative macOS workstation setup. Keep the three layers
distinct:

- **`mise.toml`**: language runtimes and CLI tools mise manages.
- **`Brewfile`**: GUI apps, fonts, and system/daemon tools mise can't install.
- **`mise-tasks/setup/*`**: individual, idempotent, re-runnable setup steps,
  orchestrated by `mise run setup`.

Every setup step must be safe to re-run. Keep `README.md` in step with changes
to any of the three.

Commit subjects: short, imperative, sentence case, no conventional-commit
prefix, matching existing history ("Add adb via mise and make mise.toml the
global config").
