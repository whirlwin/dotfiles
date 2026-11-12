# Agent instructions

My personal preferences for AI agents, wherever they work. The writing
conventions below apply to every reply and every file you produce. To apply
the whole file in every Claude Code session, `@`-import its absolute path from
`~/.claude/CLAUDE.md`; copying it there instead lets the two drift apart.
Conventions for this dotfiles repo itself live in `.claude/CLAUDE.md`.

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
- **Mark anything visual with 👁️.** When a change alters what someone sees
  (UI components, CSS or layout, theme or icons, CLI output, terminal
  formatting, rendered docs, generated images and diagrams), flag it with 👁️
  in plans, replies and PR descriptions, so I know to look at it rather than
  only read the diff.
- **Show every PR in a status table.** Whenever a session or skill mentions
  a pull request, show it as a row in a Markdown table, so I can see at a
  glance who has approved it and what it still needs. Use one table for all
  the PRs in a reply, with these columns:

  | PR | State | Approvers | Status |
  |----|-------|-----------|--------|
  | [owner/repo#42](url) | 🟢 open | ✅ alice · ⏳ bob | ⏳ waiting for approval · 💬 2 new comments · 🟡 checks running |

  - **PR**: the link, `[repo#123](url)`.
  - **State**: `🟢 open`, `📝 draft`, `🟣 merged`, `⚫ closed`.
  - **Approvers**: every reviewer by GitHub login without an `@`, marked
    `✅` approved, `✋` changes requested, `💬` commented only, or `⏳`
    requested and not yet reviewed (a team request shows the team name).
    Write `🙋 none requested` when nobody is, and `➖` when no review is
    required.
  - **Status**: the badges that apply, joined with ` · `. Review:
    `✅ approved`, `✋ changes requested`, `⏳ waiting for approval`,
    `🙋 needs reviewers`, `➖ no review required`. Activity:
    `💬 N new comments` (comments or unresolved threads from others since my
    last commit or reply), `🔄 behind main`, `⚠️ conflicts`. Checks:
    `🔴 checks failing`, `🟡 checks running`.

  Read it fresh rather than from memory:
  `gh pr view --json state,isDraft,reviewDecision,latestReviews,reviewRequests,mergeStateStatus,statusCheckRollup`,
  plus `reviewThreads` through `gh api graphql` for unresolved threads. This
  covers replies, plans and summaries. Where a table can't render (Slack,
  Teams, plain text, a commit body), fall back to one line per PR with the
  same emoji and words:
  `[owner/repo#42](url) 🟢 open · approvers ✅ alice ⏳ bob · ⏳ waiting for approval`.
  A cell you could not read is left as `?` and said so, never guessed.

## Technology choices

- Prefer CNCF and vendor-neutral technologies over cloud-provider-native
  services when both options exist (Prometheus over a hosted metrics service,
  Flux/Argo CD over a vendor's pipeline product, Kubernetes-native Ingress over
  a vendor load-balancer product).
- Prefer open standards and portable solutions; avoid vendor lock-in.
- Prefer shell scripting (bash/zsh) and CLI utilities over Python for scripting
  tasks.

## Scheduling

- **Book meetings between 09:30 and 15:00.** When booking a meeting, always
  try to place it between 09:30 and 15:00 (Oslo time) first, and only go
  outside that window if nothing fits there.

## How I like work done

- **Plan before implementing.** Present the plan and get approval before
  editing.
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
