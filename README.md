<h1 align="center">
  <br>
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
  👻 dotfiles
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
  <br>
</h1>

<p align="center">
  <a href="#-ghostty"><img src="https://img.shields.io/badge/Ghostty-1e1e2e?style=for-the-badge&logo=ghost&logoColor=cba6f7" alt="Ghostty"/></a>
  <a href="#-starship"><img src="https://img.shields.io/badge/Starship-1e1e2e?style=for-the-badge&logo=starship&logoColor=f9e2af" alt="Starship"/></a>
  <a href="#-zsh"><img src="https://img.shields.io/badge/Zsh-1e1e2e?style=for-the-badge&logo=gnubash&logoColor=a6e3a1" alt="Zsh"/></a>
</p>

<p align="center">
  <i>My macOS terminal setup — minimal, fast, keyboard-driven.</i>
</p>

---

## 📁 Structure

```
dotfiles/
├── ghostty/       → terminal emulator
├── starship/      → cross-shell prompt
└── zshrc/         → shell config + aliases
```

---

## 👻 Ghostty

> Aura theme · Inconsolata font · display-p3 color · 92% opacity w/ blur

<details>
<summary><b>⌨️ Keybindings</b></summary>

| Keys | Action |
|:-----|:-------|
| <kbd>⌘</kbd> <kbd>D</kbd> | Split right |
| <kbd>⌘</kbd> <kbd>⇧</kbd> <kbd>D</kbd> | Split down |
| <kbd>⌘</kbd> <kbd>←</kbd> / <kbd>→</kbd> | Navigate splits |
| <kbd>⌘</kbd> <kbd>⌥</kbd> <kbd>←</kbd> / <kbd>→</kbd> | Switch tabs |
| <kbd>⌘</kbd> <kbd>`</kbd> | Quick terminal |
| <kbd>⌘</kbd> <kbd>S</kbd> | `:w` in Vim |

</details>

<details>
<summary><b>✨ Features</b></summary>

- Window padding (8pt, balanced)
- Click-to-move cursor at prompts
- Background blur + transparency
- Clipboard paste protection
- Minimum contrast (no invisible text)
- Link previews on hover
- Option key treated as Alt

</details>

---

## 🚀 Starship

> Bracketed module format · git status indicators · language-aware

Minimal prompt that auto-detects your project context (Node, Python, Rust, Go, Docker, etc.) with a clean bracketed style.

---

## ⚡ Zsh

> Autosuggestions · syntax highlighting · fuzzy everything

### Plugins

| Plugin | What it does |
|:-------|:-------------|
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Ghost text completions from history |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Real-time command coloring |

### Tools

| Tool | Replaces | Purpose |
|:-----|:---------|:--------|
| [starship](https://starship.rs) | bash prompt | Cross-shell prompt |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | `cd` | Smart directory jumping |
| [fzf](https://github.com/junegunn/fzf) | — | Fuzzy finder for everything |
| [eza](https://github.com/eza-community/eza) | `ls` | Modern file listing with icons |
| [bat](https://github.com/sharkdp/bat) | `cat` | Syntax-highlighted file viewing |

### Key Bindings

| Binding | Action |
|:--------|:-------|
| <kbd>Ctrl</kbd> <kbd>W</kbd> | Execute autosuggestion |
| <kbd>Ctrl</kbd> <kbd>E</kbd> | Accept autosuggestion |

### Aliases

<details>
<summary><b>📂 General</b></summary>

| Alias | Command |
|:------|:--------|
| `ls` | `eza --icons` |
| `ll` | `eza -lah --icons` |
| `lt` | `eza --tree --level=2 --long --icons --git` |
| `cat` | `bat` |
| `cl` | `clear` |
| `..` `...` `....` `.....` | Navigate up 1–4 directories |

</details>

<details>
<summary><b>🔀 Git</b></summary>

| Alias | Command |
|:------|:--------|
| `gst` | `git status` |
| `gc` | `git commit -m` |
| `gca` | `git commit -a -m` |
| `gp` | `git push origin HEAD` |
| `gpu` | `git pull origin` |
| `gdiff` | `git diff` |
| `gco` | `git checkout` |
| `glog` | Pretty graph log |

</details>

<details>
<summary><b>🧭 Navigation</b></summary>

| Function | What it does |
|:---------|:-------------|
| `cx <dir>` | `cd` + list contents |
| `fcd` | Fuzzy-find a directory and jump into it |
| `fv` | Fuzzy-find a file and open in nvim |

</details>

---

## 📦 Install

```sh
# dependencies
brew install starship zoxide fzf eza bat zsh-autosuggestions zsh-syntax-highlighting
```

```sh
# symlinks
ln -sf ~/Desktop/dotfiles/ghostty/config   ~/.config/ghostty/config
ln -sf ~/Desktop/dotfiles/starship/starship.toml ~/.config/starship/starship.toml
ln -sf ~/Desktop/dotfiles/zshrc/.zshrc      ~/.zshrc
```

---

<p align="center">
  <sub>macOS · Ghostty · Starship · Zsh</sub>
</p>
