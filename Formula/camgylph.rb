class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  url "https://github.com/landxcape/camgylph/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "e12ed0bbcbb07c86bf448f21f9dfd01cc6e2b79c7b97b0f12b3c53df9c4ea980"
  license "MIT"

  depends_on "rust" => :build
  depends_on "ffmpeg"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "camgylph", shell_output("#{bin}/camgylph --help")
  end
end
