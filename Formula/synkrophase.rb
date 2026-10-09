class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.3"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.3/synkrophase-macos-aarch64.tar.gz"
      sha256 "abd38243f3adbdc9766e010b639f15bca63056bc37590c8d929310094f87ec52"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.3/synkrophase-macos-x86_64.tar.gz"
      sha256 "69c7532168b4e39b9d12360f8fc34aba35fe6189341b0d6afbd1d17884106f7c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.3/synkrophase-linux-x86_64.tar.gz"
      sha256 "f7f20712217ca145fb7c695750991ada1aaccd159ec2418d719e930ed20183da"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.3", shell_output("#{bin}/synkro --version")
  end
end
