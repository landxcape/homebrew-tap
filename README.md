# homebrew-tap

Homebrew tap for CLI tools and developer utilities by [@landxcape](https://github.com/landxcape).

---

## 📦 Available Formulas & Casks

### CLI Formulas

| Formula | Description | Links |
| :--- | :--- | :--- |
| **[`rscan`](Formula/rscan.rb)** | Layer 2 ARP and TCP port network scanner with vendor lookup and subnet auto-discovery. | [GitHub](https://github.com/landxcape/rscan) |
| **[`mso`](Formula/mso.rb)** | Safely offload macOS developer caches (Xcode, Android, Gradle, CocoaPods) to external APFS drives. | [GitHub](https://github.com/landxcape/mac-sym-offload) |
| **[`camgylph`](Formula/camgylph.rb)** | Real-time CLI camera renderer that converts webcam frames into colored ASCII art in your terminal. | [GitHub](https://github.com/landxcape/camgylph) |
| **[`synkrophase`](Formula/synkrophase.rb)** | Local network media controller synchronizer (CLI / TUI engine). | [GitHub](https://github.com/landxcape/synkrophase) |

### macOS Casks

| Cask | Description | Links |
| :--- | :--- | :--- |
| **[`synkrophase`](Casks/synkrophase.rb)** | Native menu bar controller synchronizer for local networks (macOS GUI App). | [GitHub](https://github.com/landxcape/synkrophase-gui) |

---

## 🚀 Installation

### 1. Tap the repository

```bash
brew tap landxcape/tap
```

### 2. Install any tool

```bash
# Synkrophase — Native macOS Menu Bar App (Cask)
# Installs BOTH the GUI App (/Applications/Synkrophase.app) AND the CLI daemon (synkro):
brew install --cask landxcape/tap/synkrophase

# Synkrophase — CLI & TUI Engine ONLY (Formula)
# Installs ONLY the command-line binary and background daemon (/opt/homebrew/bin/synkro):
brew install landxcape/tap/synkrophase

# Layer 2 ARP & TCP Port Network Scanner
brew install landxcape/tap/rscan

# macOS Developer Cache Offloader
brew install landxcape/tap/mso

# Terminal Real-Time ASCII Webcam Renderer
brew install landxcape/tap/camgylph
```

---

## 🔄 Updates

To update all installed tools from this tap to their latest versions:

```bash
brew update
brew upgrade
```

Or upgrade a specific tool:

```bash
brew upgrade rscan
```

---

## 📄 License

All formulas and associated source code are distributed under the [MIT License](LICENSE).

