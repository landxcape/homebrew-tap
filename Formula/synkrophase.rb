class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "478cd77cd13cb6f9b2e24f17e8420bba1e17fefec1221db0d69f879404e4a78a"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "9af589a4917f4044307250755a86c5175b8fc1769b5eedd5094faaa297b496ae"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "f33a1e4d1ff98c88e6916c50c86f14d0b4b047be7de9536920a27eaf5a9f0af4"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.8.2", shell_output("#{bin}/synkro --version")
  end
end
