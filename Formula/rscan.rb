class Rscan < Formula
  desc "High-performance Layer 2 ARP & TCP port network scanner"
  homepage "https://github.com/landxcape/rscan"
  version "0.2.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.2/rscan-macos-aarch64.tar.gz"
      sha256 "3cf1ea71c874175c86d2f9d087aa5506f32e331d6d259ffbb1c0ccdeccedcc0c"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.2/rscan-macos-x86_64.tar.gz"
      sha256 "e2d66ccc3e16000008fb496988592365ee465c6c2b9a361f5dc3b82cdf65bbcb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/rscan/releases/download/v0.2.2/rscan-linux-x86_64.tar.gz"
      sha256 "7dba4b1575e6ad4cfaa1f70a818191d2b5d79cd517f269d68cf3c3402f13545c"
    end
  end

  def install
    bin.install "rscan"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/rscan --version")
  end
end
