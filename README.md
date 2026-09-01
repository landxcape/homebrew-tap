# homebrew-tap

Official [Homebrew](https://brew.sh) tap for developer tools and CLI utilities by [@landxcape](https://github.com/landxcape).

---

## 📦 Available Formulas

| Formula | Description | Links |
| :--- | :--- | :--- |
| **[`rscan`](Formula/rscan.rb)** | High-performance Layer 2 ARP & TCP port network scanner with vendor lookup and subnet auto-discovery. | [GitHub](https://github.com/landxcape/rscan) |
| **[`mso`](Formula/mso.rb)** | Safely offload bloated macOS developer caches (Xcode, Android, Gradle, CocoaPods, Docker) to external APFS drives. | [GitHub](https://github.com/landxcape/mac-sym-offload) |
| **[`camgylph`](Formula/camgylph.rb)** | Real-time CLI camera renderer that converts webcam frames into colored ASCII art in your terminal. | [GitHub](https://github.com/landxcape/camgylph) |

---

## 🚀 Installation

### 1. Tap the repository

```bash
brew tap landxcape/tap
```

### 2. Install any tool

```bash
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

