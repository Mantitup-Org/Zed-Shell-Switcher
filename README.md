<div align="center">

# Zed Shell Switcher

**Pick your shell on the fly inside Zed editor — without touching your default terminal.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Mac%20%7C%20Linux-lightgrey.svg)]()
[![Editor](https://img.shields.io/badge/Editor-Zed-blueviolet.svg)](https://zed.dev)
[![Repo](https://img.shields.io/badge/GitHub-Mantitup--Org%2FZed--Shell--Switcher-black?logo=github)](https://github.com/Mantitup-Org/Zed-Shell-Switcher)

</div>

---

## The Problem

VS Code has a built-in shell picker — you can switch between Bash, PowerShell, Git Bash, WSL, and more with a single click from the terminal toolbar. It is a small but genuinely useful feature that many developers rely on daily.

**Zed does not have this.** Zed is a fast, modern editor, but its terminal is tied to a single shell configured globally in settings. If you want to open a different shell, your only option today is to change your default shell setting, restart the terminal, do your work, and change it back. For developers who regularly jump between environments — say, PowerShell for a .NET project and WSL for a Linux build — this friction adds up fast.

This is not a criticism of Zed. It is a young, actively developed editor and this is a known, minor limitation. But until the Zed team ships a native solution, **Zed Shell Switcher fills that gap** — giving you an on-demand shell picker that feels native, requires no extension API, and does not touch your default configuration.

---

## Overview

Zed Shell Switcher adds an on-demand shell picker to [Zed editor](https://zed.dev) via the built-in task system.  
Press **Ctrl+Shift+R**, choose a shell, and it opens in a new terminal tab — your default terminal is never changed.

---

## Supported Shells

| Shell            | Platform          |
|------------------|-------------------|
| Git Bash         | Windows           |
| PowerShell       | Windows           |
| CMD              | Windows           |
| WSL (Ubuntu)     | Windows           |
| Zsh              | macOS             |
| Bash             | macOS / Linux     |

---

## Install

### Windows — PowerShell

```powershell
irm https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/main/install.ps1 | iex
```

### macOS / Linux — Bash

```bash
curl -fsSL https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/main/install.sh | bash
```

---

## How to Use

1. Open **any** project in Zed
2. Press **Ctrl+Shift+R** to open the shell picker
3. Type a shell name or navigate with arrow keys
4. Press **Enter**

The selected shell opens in a **new terminal tab** alongside your existing shell.

> **Why does it re-run instead of showing the picker?**  
> Zed's default `Ctrl+Shift+R` binding maps to `task::Rerun`, which silently re-runs the last used task.  
> The installer automatically writes a `keymap.json` that rebinds it to `task::Spawn` — which **always** opens the picker. This is handled for you during install.

---

## Uninstall

### Windows — PowerShell

```powershell
irm https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/main/uninstall.ps1 | iex
```

### macOS / Linux — Bash

```bash
curl -fsSL https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/main/uninstall.sh | bash
```

---

## Manual Install (No Scripts)

1. Download [`tasks.json`](./tasks.json) and [`keymap.json`](./keymap.json) from this repository
2. Copy each file to the correct location for your OS:

   | File           | OS      | Path                                                    |
   |----------------|---------|---------------------------------------------------------|
   | `tasks.json`   | Windows | `%APPDATA%\Zed\tasks.json`                              |
   | `tasks.json`   | macOS   | `~/Library/Application Support/Zed/tasks.json`          |
   | `tasks.json`   | Linux   | `~/.config/zed/tasks.json`                              |
   | `keymap.json`  | Windows | `%APPDATA%\Zed\keymap.json`                             |
   | `keymap.json`  | macOS   | `~/Library/Application Support/Zed/keymap.json`         |
   | `keymap.json`  | Linux   | `~/.config/zed/keymap.json`                             |

3. Open Zed, press **Ctrl+Shift+R** — done.

> **Note:** If you already have a `tasks.json` or `keymap.json`, the installer backs each one up as `.bak` before overwriting. Uninstalling restores them automatically.

---

## Why Not a Zed Extension?

The Zed extension API does not yet support injecting entries into the task picker or modifying keybindings programmatically.  
Using `tasks.json` + `keymap.json` is the most reliable and maintainable approach until that API becomes available.

---

## Contributing

Contributions are welcome!

- To add a new shell entry, edit [`tasks.json`](./tasks.json) and open a pull request.
- To report a bug or request a feature, open an [issue](https://github.com/Mantitup-Org/Zed-Shell-Switcher/issues).

```bash
git clone https://github.com/Mantitup-Org/Zed-Shell-Switcher.git
cd Zed-Shell-Switcher
```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<div align="center">

Built by **Ankan Dalui** ❤️ **Team Mantitup**

</div>