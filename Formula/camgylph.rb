class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  version "1.5.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.6/camgylph-macos-aarch64.tar.gz"
      sha256 "25303a9699d774eb773e38502892bf73da8f2269ee4d9558be1eca745895339b"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.6/camgylph-macos-x86_64.tar.gz"
      sha256 "af3105305bfa928da5236e130e0834160069e7f26241d8222a53dd8f3824d57a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.6/camgylph-linux-x86_64.tar.gz"
      sha256 "9452af6d50b06539fa75bb668f96f16811261772ec343a94b05d208212d740d8"
    end
  end

  depends_on "ffmpeg"

  def install
    bin.install "camgylph"
  end

  test do
    assert_match "camgylph", shell_output("#{bin}/camgylph --help")
  end
end
