class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  url "https://github.com/landxcape/camgylph/archive/refs/tags/v1.5.3.tar.gz"
  sha256 "45ec78c4f934712bd075a5417306fbae1ac0cb8462fa6b70c3b01804d641b1ae"
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
