class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  url "https://github.com/landxcape/rscan/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7b993a86a1b464246b9c0e80a95468ca61c3c6d14703d9457d1a730474b9efb3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rscan", shell_output("#{bin}/rscan --help")
  end
end
