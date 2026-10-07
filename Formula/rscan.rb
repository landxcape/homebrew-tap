class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.0/rscan-macos-aarch64.tar.gz"
      sha256 "93ab56f3d654b4ea21840b1b88875a008eb8232b93d58332a4e3d9497b740dcc"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.0/rscan-macos-x86_64.tar.gz"
      sha256 "629d2424449c01a1ce3b0aac1c874b505d2588a3a49397d49692f6640bcdb85b"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.0/rscan-linux-x86_64.tar.gz"
      sha256 "8db3af09a1aedd0af50a97a9a43120347d9638bc427b571bd8130243e90a5d17"
    end
  end

  def install
    bin.install "rscan"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/rscan --version")
  end
end
