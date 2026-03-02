class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  url "https://github.com/landxcape/camgylph/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "796062b2e6f7c6e040893a5d51e699dbc2c430f272b19275ee4affab68c461a3"
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
