class Camgylph < Formula
  desc "Real-time CLI camera renderer that converts webcam frames into colored ASCII"
  homepage "https://github.com/landxcape/camgylph"
  version "1.5.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.5/camgylph-macos-aarch64.tar.gz"
      sha256 "098ef98c5ea16dc645a2ca0b4170c1b5eb82096c307c406e49229df1fc1ff6c3"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.5/camgylph-macos-x86_64.tar.gz"
      sha256 "f7609fcf06e70324a471b7dc931856d12a7d230e2de72cf7dd102e9fc196dddb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/camgylph/releases/download/v1.5.5/camgylph-linux-x86_64.tar.gz"
      sha256 "5e106e76bbd773410ae2866eaa8d716f514af04fe97e62a3028e24b004c253a5"
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
