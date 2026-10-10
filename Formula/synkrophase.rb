class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "b5bdcc0ae93ea621d5f20e6a916241411c9b0ac2d6f6b4b7025773fdf3a0c813"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "7ece8378bcb2d85d74fbcc3eeb3c9cae4d35eeafa8bec73fb5cead3199420041"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "30d35579e65dbe0426ac7d3d976d7c5256a02d5ed6fa6ad461a46e662deb4adb"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/synkro --version")
  end
end
