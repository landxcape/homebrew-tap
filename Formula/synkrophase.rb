class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "6b05d190d4f0758d44274fb0b4952a8f4d67e4f2c3f1e7cd2d6a1ed22dfaa572"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "e0ffcf3e4e5f0a2d3cf8fc6c15a22f773895a701cfc44ef7b1198e01d379e63d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "6be488aa969e7ee0b52bd1f31eec2291e93a59216c1734c7641a092104d9ee31"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/synkro --version")
  end
end
