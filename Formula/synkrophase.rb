class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "2c83ab8891d5ed01142a64ffb46c8115f9295bce2961afc8ba6717ef55322a79"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "709ac37d8e4150fb83d07e8ac9f175b030f73ca6b8bea698d25f98b6f2d9f2bf"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "9362c3965b1823c042f67457a7a25e78b83b6653c37618591b614fc5548c47e8"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.7.1", shell_output("#{bin}/synkro --version")
  end
end
