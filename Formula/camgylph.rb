class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  url "https://github.com/landxcape/camgylph/archive/refs/tags/v1.5.4.tar.gz"
  sha256 "7587a88f661a5da3dbda9ac1e757631d635df674911dbc416ba958e1e460e10d"
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
