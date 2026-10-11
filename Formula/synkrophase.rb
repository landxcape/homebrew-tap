class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.6"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.6/synkrophase-macos-aarch64.tar.gz"
      sha256 "9b55ea338e50ef0a4e9a8a5f8def329a38f83b967c8b78440de6fbe214635ac1"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.6/synkrophase-macos-x86_64.tar.gz"
      sha256 "6a256ed81381d14533974ef7a028ab88d8fff0d369fca255ec775f07208f4ecb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.6/synkrophase-linux-x86_64.tar.gz"
      sha256 "cb120c99396d5ea332da796771d5a066fc7247efebc1e8f25946c8a643961ebd"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.6", shell_output("#{bin}/synkro --version")
  end
end
