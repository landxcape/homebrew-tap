class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  url "https://github.com/landxcape/rscan/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "be9e2ee5e50ce3022e864c66b0f1206116e664e1b65b62c364b0921b22175cbc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rscan", shell_output("#{bin}/rscan --help")
  end
end
