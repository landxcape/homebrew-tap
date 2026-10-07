class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.1/rscan-macos-aarch64.tar.gz"
      sha256 "0893b0c812438dfdcff46169dd8a392f1f7863d25106543b281371f70554aaaf"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.1/rscan-macos-x86_64.tar.gz"
      sha256 "f77cf6da18a246989ac7589ebe457bf63ab8c2f26828b1c34c86fd947df137aa"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.1/rscan-linux-x86_64.tar.gz"
      sha256 "9e08b25469caaae9e8682fc14e9575ea1c0cb62eed4515d61e17261d6a9e8807"
    end
  end

  def install
    bin.install "rscan"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/rscan --version")
  end
end
