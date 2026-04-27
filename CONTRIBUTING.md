# Contributing to Zed Shell Switcher

Thank you for taking the time to contribute. This document covers everything you need to know before opening a pull request.

---

## Table of Contents

- [Getting Started](#getting-started)
- [Commit Message Convention](#commit-message-convention)
- [Branch Workflow](#branch-workflow)
- [Pull Request Guidelines](#pull-request-guidelines)
- [What You Can Contribute](#what-you-can-contribute)
- [Code Style](#code-style)

---

## Getting Started

1. Fork the repository
2. Clone your fork locally

```bash
git clone https://github.com/<your-username>/Zed-Shell-Switcher.git
cd Zed-Shell-Switcher
```

3. Create a new branch for your change (never work directly on `main`)

```bash
git checkout -b feat/add-fish-shell
```

4. Make your changes, commit using the convention below, and push to your fork
5. Open a pull request against `main`

---

## Commit Message Convention

Every commit **must** follow this format:

```
#<issue-number> <type>: <short description>
```

### Format rules

- Start with `#` followed by the issue number (open an issue first if one does not exist)
- One space after the issue number
- Followed by a valid type (see table below)
- A colon and a single space
- A short, lowercase description of what changed
- No period at the end
- Keep the subject line under 72 characters

### Valid types

| Type       | When to use                                          |
|------------|------------------------------------------------------|
| `feat`     | Adding a new shell entry or new installer feature    |
| `fix`      | Fixing a bug in scripts, JSON, or behaviour          |
| `docs`     | Changes to README, CONTRIBUTING, or other docs only  |
| `ci`       | Changes to GitHub Actions workflows                  |
| `chore`    | Maintenance, cleanup, config, dependency updates     |
| `refactor` | Code restructure with no behaviour change            |
| `test`     | Adding or updating tests or validation logic         |
| `style`    | Whitespace, formatting, no logic change              |
| `perf`     | Performance improvement                              |
| `revert`   | Reverting a previous commit                          |

### Valid examples

```
#3 feat: add Fish shell entry for Mac and Linux
#12 fix: always show picker on Ctrl+Shift+R
#7 docs: add troubleshooting section to README
#9 ci: add shellcheck step for install.sh
#5 chore: remove trailing whitespace from tasks.json
#14 refactor: simplify backup logic in install.ps1
```

### Invalid examples

```
done
fixed it
update
WIP
#3 added fish shell
feat: add fish shell        <- missing issue number
#3 feat - add fish shell    <- wrong separator, use colon not dash
```

Commits that do not follow this format will be **automatically rejected** by the CI pipeline when you open a pull request. Fix them with `git rebase -i` before pushing.

---

## Branch Workflow

| Branch | Purpose |
|--------|---------|
| `main` | Stable, production branch. Direct pushes are blocked. |
| `feat/*` | New shell entries or new features |
| `fix/*` | Bug fixes |
| `docs/*` | Documentation-only changes |
| `ci/*` | CI and workflow changes |
| `chore/*` | Maintenance and cleanup |

Name your branch after the type of change, for example:

```
feat/add-fish-shell
fix/keymap-not-installing
docs/update-manual-install-table
ci/add-commit-lint-workflow
```

---

## Pull Request Guidelines

- Open an issue before starting significant work so we can discuss it first
- One PR per feature or fix — do not bundle unrelated changes
- Fill in the PR template completely — incomplete PRs may be closed
- All CI checks must pass before a PR can be merged
- At least one approval from a maintainer is required
- All review comments must be resolved before merging
- Squash your commits if you have noisy fixup commits before requesting review

---

## What You Can Contribute

- **New shell entry** — add a new shell to `tasks.json` (e.g. Fish, Nushell, Elvish)
- **Installer improvement** — better error handling, edge case coverage
- **Platform support** — improve Mac or Linux detection logic
- **Documentation** — fix typos, clarify instructions, improve examples
- **Bug reports** — open an issue with your OS, Zed version, and the exact error

If you are unsure whether your idea fits the project, open a discussion issue first.

---

## Code Style

- **No emojis** in any file — scripts, JSON, or documentation
- **No terminal color codes** (`-ForegroundColor`, ANSI escapes) in output
- Shell scripts must pass `shellcheck` with zero warnings
- PowerShell scripts must parse cleanly with no syntax errors
- JSON files must be valid and properly formatted with 2-space indentation
- Keep output messages consistent: use `[OK]`, `[ERROR]`, `[INFO]`, `[..]` prefixes

---

Built by **Ankan Dalui** ❤️ **Team Mantitup**