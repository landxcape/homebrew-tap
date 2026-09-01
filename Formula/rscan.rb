class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  url "https://github.com/landxcape/rscan/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rscan", shell_output("#{bin}/rscan --help")
  end
end
