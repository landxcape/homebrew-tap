class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.7"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.7/synkrophase-macos-aarch64.tar.gz"
      sha256 "8903858fe81de13867df5e14d7d7b3ffbf82c75ec11096b3515fdbc8856cf1a5"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.7/synkrophase-macos-x86_64.tar.gz"
      sha256 "229602ef21168778f0c3ca923cbbc47d0b240608ad7f72addecc2dd7ae65fa2e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.7/synkrophase-linux-x86_64.tar.gz"
      sha256 "62605352065c5b5326df38684bd7d6b7d3aef8748a0b45a69299a2ab3352c73f"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.7", shell_output("#{bin}/synkro --version")
  end
end
