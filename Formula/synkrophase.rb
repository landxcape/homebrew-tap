class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "73c14d02a059db4f5f6ef74ada34bb5a49e0cd5b2d5d92cbae59ee05628b7fc8"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "784f678a8a4c7e6e4aa63621925c5a0c2fb5e99ccd0ad7035dc3a275466c4ead"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "33bd1c7db599a60cffca20631cbb5b814bc10d450481bec4d184412a2fcb43c7"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/synkro --version")
  end
end
