# Zed Shell Switcher

> Pick your shell on the fly inside [Zed editor](https://zed.dev) — without changing your default terminal.

![Zed Shell Switcher Demo](https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/main/assets/demo.gif)

---

## What it does

Press **Ctrl+Shift+R** in any Zed project and choose:

| Option | Shell |
|---|---|
| 🐚 Shell → Git Bash | Git Bash (Windows) |
| 💙 Shell → PowerShell | PowerShell (Windows) |
| ⬛ Shell → CMD | Command Prompt (Windows) |
| 🐧 Shell → WSL (Ubuntu) | WSL (Windows) |
| 🍎 Shell → Zsh | Zsh (Mac) |
| 🐚 Shell → Bash | Bash (Mac/Linux) |

Your **default terminal is never changed** — this only adds on-demand choice.

---

## Install

### Windows (PowerShell)

```powershell
irm https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/main/install.ps1 | iex
```

### Mac / Linux (Bash)

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/main/install.sh | bash
```

---

## How to use

1. Open **any** project in Zed
2. Press **Ctrl+Shift+R**
3. Type the shell name or use arrow keys
4. Press **Enter** — done!

The selected shell opens in a **new terminal tab** alongside your default shell.

---

## Uninstall

### Windows

```powershell
irm https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/main/uninstall.ps1 | iex
```

### Mac / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/main/uninstall.sh | bash
```

---

## Manual install (no scripts)

1. Download [`tasks.json`](./tasks.json)
2. Copy it to:
   - **Windows:** `%APPDATA%\Zed\tasks.json`
   - **Mac:** `~/Library/Application Support/Zed/tasks.json`
   - **Linux:** `~/.config/zed/tasks.json`
3. Press **Ctrl+Shift+R** in Zed — done!

---

## Why not a Zed extension?

The Zed extension API (v0.7.0) does not yet support injecting tasks into the task picker.
This installer is the most reliable approach until that API is available.

---

## Contributing

PRs welcome! To add a new shell, edit `tasks.json` and open a pull request.

---

## License

MIT
