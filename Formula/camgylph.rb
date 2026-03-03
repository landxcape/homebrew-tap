class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  url "https://github.com/landxcape/camgylph/archive/refs/tags/v1.5.2.tar.gz"
  sha256 "65cf3509d9d9f16f11be550c79f177d950b2ff3d461e018553590af58a86709a"
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
