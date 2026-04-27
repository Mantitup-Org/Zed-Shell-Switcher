## Commit message format

All commits in this PR must follow the convention below. The CI will reject any commit that does not match.

```
#<issue-number> <type>: <short description>
```

Valid types: `feat` `fix` `docs` `ci` `chore` `refactor` `test` `style` `perf` `revert`

Examples:
- `#3 feat: add Fish shell entry for Mac and Linux`
- `#12 fix: always show picker on Ctrl+Shift+R`
- `#7 docs: add troubleshooting section to README`

---

## What does this PR do?

<!-- A clear and concise description of the change. One paragraph is enough. -->

---

## Type of change

<!-- Check all that apply -->

- [ ] Bug fix
- [ ] New shell entry
- [ ] Installer / uninstaller improvement
- [ ] Documentation update
- [ ] CI / workflow change
- [ ] Other (describe below)

---

## Checklist

- [ ] All commit messages follow the `#<number> <type>: <description>` format
- [ ] An issue exists for this change (link it below under Related issues)
- [ ] I have tested this change locally
- [ ] `tasks.json` is valid JSON (all required keys present)
- [ ] `keymap.json` is valid JSON (if modified)
- [ ] Shell scripts pass `shellcheck` (if modified)
- [ ] PowerShell scripts have no parse errors (if modified)
- [ ] README is updated to reflect the change (if applicable)
- [ ] No emojis or terminal color codes have been introduced

---

## Testing done

<!-- Describe how you tested this. Which OS, which shell, what you ran. -->

| Step | Result |
|------|--------|
| Ran installer on ... | ... |
| Pressed Ctrl+Shift+R in Zed | Picker opened / did not open |
| Selected shell | Opened correctly / failed |

---

## Related issues

<!-- Link any related issues here. Use "Closes #123" to auto-close on merge. -->

Closes #